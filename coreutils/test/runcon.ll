; ModuleID = 'coreutils-8.30/src/runcon.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
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
@.str.1 = private unnamed_addr constant [107 x i8] c"Usage: %s CONTEXT COMMAND [args]\0A  or:  %s [ -c ] [-u USER] [-r ROLE] [-t TYPE] [-l RANGE] COMMAND [args]\0A\00", align 1
@.str.2 = private unnamed_addr constant [126 x i8] c"Run a program in a different SELinux security context.\0AWith neither CONTEXT nor COMMAND, print the current security context.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [267 x i8] c"  CONTEXT            Complete security context\0A  -c, --compute      compute process transition context before modifying\0A  -t, --type=TYPE    type (for same role as parent)\0A  -u, --user=USER    user identity\0A  -r, --role=ROLE    role\0A  -l, --range=RANGE  levelrange\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"runcon\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"+r:t:u:l:c\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 1, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [15 x i8] c"multiple roles\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [15 x i8] c"multiple types\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"multiple users\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"multiple levelranges\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Russell Coker\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"failed to get current context\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"you must specify -c, -t, -u, -l, -r, or context\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"no command specified\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"%s may be used only on a SELinux kernel\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"compute\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), align 8, !dbg !26
@.str.44 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !31
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !36
@.str.47 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.48 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.49 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !40
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !47
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !54
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !100
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !107
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !117
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !124
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !131
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !119
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !133
@.str.78 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.79 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.80 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.81 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.99 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !139
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.125 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !585 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !590, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.value(metadata i32 %0, metadata !589, metadata !DIExpression()), !dbg !613
  %3 = icmp eq i32 %0, 0, !dbg !614
  br i1 %3, label %9, label %4, !dbg !615

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !616, !tbaa !618
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !616
  %7 = load i8*, i8** @program_name, align 8, !dbg !616, !tbaa !618
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !616
  br label %63, !dbg !616

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !622
  %11 = load i8*, i8** @program_name, align 8, !dbg !622, !tbaa !618
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #10, !dbg !622
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !623
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !623, !tbaa !618
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !623
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !624
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !618
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #10, !dbg !624
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([267 x i8], [267 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !629
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !618
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !629
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !630
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !618
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !630
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !631
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !618
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !631
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !632
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #10, !dbg !632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !609
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !633
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !598, metadata !DIExpression()) #10, !dbg !634
  br label %30, !dbg !635

; <label>:30:                                     ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !598, metadata !DIExpression()) #10, !dbg !634
  %33 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %31) #14, !dbg !635
  %34 = icmp eq i32 %33, 0, !dbg !635
  br i1 %34, label %40, label %35, !dbg !636

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !637
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !598, metadata !DIExpression()) #10, !dbg !634
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !638
  %38 = load i8*, i8** %37, align 8, !dbg !638, !tbaa !639
  %39 = icmp eq i8* %38, null, !dbg !641
  br i1 %39, label %40, label %30, !dbg !642, !llvm.loop !643

; <label>:40:                                     ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !598, metadata !DIExpression()) #10, !dbg !634
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !598, metadata !DIExpression()) #10, !dbg !634
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !646
  %43 = load i8*, i8** %42, align 8, !dbg !646, !tbaa !648
  %44 = icmp eq i8* %43, null, !dbg !649
  %45 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %43, !dbg !650
  call void @llvm.dbg.value(metadata i8* %45, metadata !597, metadata !DIExpression()) #10, !dbg !651
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !652
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !652
  %48 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !653
  call void @llvm.dbg.value(metadata i8* %48, metadata !605, metadata !DIExpression()) #10, !dbg !654
  %49 = icmp eq i8* %48, null, !dbg !655
  br i1 %49, label %56, label %50, !dbg !657

; <label>:50:                                     ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #14, !dbg !658
  %52 = icmp eq i32 %51, 0, !dbg !658
  br i1 %52, label %56, label %53, !dbg !659

; <label>:53:                                     ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !660
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !660
  br label %56, !dbg !662

; <label>:56:                                     ; preds = %40, %50, %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !663
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !663
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !664
  %60 = icmp eq i8* %45, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), !dbg !664
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !664
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %45, i8* %61) #10, !dbg !664
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #10, !dbg !665
  br label %63

; <label>:63:                                     ; preds = %56, %4
  tail call void @exit(i32 %0) #15, !dbg !666
  unreachable, !dbg !666
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !667 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !672, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata i8** %1, metadata !673, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8* null, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* null, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* null, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* null, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* null, metadata !678, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata i8* null, metadata !679, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i8* null, metadata !680, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8* null, metadata !681, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.value(metadata i8 0, metadata !682, metadata !DIExpression()), !dbg !699
  %4 = load i8*, i8** %1, align 8, !dbg !700, !tbaa !618
  tail call void @set_program_name(i8* %4) #10, !dbg !701
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !702
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !703
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !704
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !705
  %9 = bitcast i32* %3 to i8*
  br label %10, !dbg !706

; <label>:10:                                     ; preds = %46, %2
  %11 = phi i8* [ null, %2 ], [ %47, %46 ], !dbg !694
  %12 = phi i8* [ null, %2 ], [ %48, %46 ], !dbg !693
  %13 = phi i8* [ null, %2 ], [ %49, %46 ], !dbg !692
  %14 = phi i8 [ 0, %2 ], [ %50, %46 ], !dbg !699
  %15 = phi i8* [ null, %2 ], [ %51, %46 ], !dbg !691
  call void @llvm.dbg.value(metadata i8* %15, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8 %14, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %13, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* %12, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %11, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #10, !dbg !707
  call void @llvm.dbg.value(metadata i32 0, metadata !686, metadata !DIExpression()), !dbg !708
  store i32 0, i32* %3, align 4, !dbg !708, !tbaa !709
  call void @llvm.dbg.value(metadata i32* %3, metadata !686, metadata !DIExpression(DW_OP_deref)), !dbg !708
  %16 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %3) #10, !dbg !711
  call void @llvm.dbg.value(metadata i32 %16, metadata !688, metadata !DIExpression()), !dbg !712
  switch i32 %16, label %45 [
    i32 -1, label %52
    i32 114, label %17
    i32 116, label %23
    i32 117, label %29
    i32 108, label %35
    i32 99, label %46
    i32 -130, label %41
    i32 -131, label %42
  ], !dbg !713

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %15, null, !dbg !714
  br i1 %18, label %21, label %19, !dbg !717

; <label>:19:                                     ; preds = %17
  %20 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !718
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %20) #10, !dbg !718
  unreachable, !dbg !718

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** @optarg, align 8, !dbg !719, !tbaa !618
  call void @llvm.dbg.value(metadata i8* %22, metadata !674, metadata !DIExpression()), !dbg !691
  br label %46, !dbg !720

; <label>:23:                                     ; preds = %10
  %24 = icmp eq i8* %11, null, !dbg !721
  br i1 %24, label %27, label %25, !dbg !723

; <label>:25:                                     ; preds = %23
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !724
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !724
  unreachable, !dbg !724

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** @optarg, align 8, !dbg !725, !tbaa !618
  call void @llvm.dbg.value(metadata i8* %28, metadata !677, metadata !DIExpression()), !dbg !694
  br label %46, !dbg !726

; <label>:29:                                     ; preds = %10
  %30 = icmp eq i8* %12, null, !dbg !727
  br i1 %30, label %33, label %31, !dbg !729

; <label>:31:                                     ; preds = %29
  %32 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !730
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %32) #10, !dbg !730
  unreachable, !dbg !730

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** @optarg, align 8, !dbg !731, !tbaa !618
  call void @llvm.dbg.value(metadata i8* %34, metadata !676, metadata !DIExpression()), !dbg !693
  br label %46, !dbg !732

; <label>:35:                                     ; preds = %10
  %36 = icmp eq i8* %13, null, !dbg !733
  br i1 %36, label %39, label %37, !dbg !735

; <label>:37:                                     ; preds = %35
  %38 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !736
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %38) #10, !dbg !736
  unreachable, !dbg !736

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** @optarg, align 8, !dbg !737, !tbaa !618
  call void @llvm.dbg.value(metadata i8* %40, metadata !675, metadata !DIExpression()), !dbg !692
  br label %46, !dbg !738

; <label>:41:                                     ; preds = %10
  call void @usage(i32 0) #16, !dbg !739
  unreachable, !dbg !739

; <label>:42:                                     ; preds = %10
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !618
  %44 = load i8*, i8** @Version, align 8, !dbg !740, !tbaa !618
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* null) #10, !dbg !740
  call void @exit(i32 0) #15, !dbg !740
  unreachable, !dbg !740

; <label>:45:                                     ; preds = %10
  call void @usage(i32 1) #16, !dbg !741
  unreachable, !dbg !741

; <label>:46:                                     ; preds = %21, %27, %33, %39, %10
  %47 = phi i8* [ %11, %39 ], [ %11, %33 ], [ %28, %27 ], [ %11, %21 ], [ %11, %10 ], !dbg !742
  %48 = phi i8* [ %12, %39 ], [ %34, %33 ], [ %12, %27 ], [ %12, %21 ], [ %12, %10 ], !dbg !742
  %49 = phi i8* [ %40, %39 ], [ %13, %33 ], [ %13, %27 ], [ %13, %21 ], [ %13, %10 ], !dbg !742
  %50 = phi i8 [ %14, %39 ], [ %14, %33 ], [ %14, %27 ], [ %14, %21 ], [ 1, %10 ], !dbg !742
  %51 = phi i8* [ %15, %39 ], [ %15, %33 ], [ %15, %27 ], [ %22, %21 ], [ %15, %10 ], !dbg !743
  call void @llvm.dbg.value(metadata i8* %51, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8 %50, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %49, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* %48, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %47, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %51, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8 %50, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %49, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* %48, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %47, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #10, !dbg !744
  br label %10

; <label>:52:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i8* %11, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %12, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %13, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 %14, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %15, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %11, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %12, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %13, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 %14, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %15, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %11, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %12, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %13, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 %14, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %15, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %11, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %12, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %13, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 %14, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %15, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %11, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %12, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %13, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 %14, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %15, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %11, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8* %12, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %13, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8 %14, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %15, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8* %51, metadata !674, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata i8 %50, metadata !682, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata i8* %49, metadata !675, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata i8* %48, metadata !676, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8* %47, metadata !677, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #10, !dbg !744
  %53 = load i32, i32* @optind, align 4, !dbg !745, !tbaa !709
  %54 = icmp eq i32 %53, %0, !dbg !747
  br i1 %54, label %55, label %58, !dbg !748

; <label>:55:                                     ; preds = %52
  %56 = tail call i32* @__errno_location() #17, !dbg !749
  store i32 95, i32* %56, align 4, !dbg !761, !tbaa !709
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 5) #10, !dbg !762
  call void (i32, i32, i8*, ...) @error(i32 1, i32 95, i8* %57) #10, !dbg !762
  unreachable, !dbg !762

; <label>:58:                                     ; preds = %52
  %59 = icmp ne i8* %12, null, !dbg !763
  %60 = icmp ne i8* %15, null, !dbg !765
  %61 = or i1 %59, %60, !dbg !766
  %62 = icmp ne i8* %11, null, !dbg !767
  %63 = or i1 %62, %61, !dbg !766
  %64 = icmp ne i8* %13, null, !dbg !768
  %65 = or i1 %64, %63, !dbg !766
  %66 = xor i1 %65, true, !dbg !766
  %67 = and i8 %14, 1, !dbg !769
  %68 = icmp eq i8 %67, 0, !dbg !769
  %69 = and i1 %68, %66, !dbg !766
  br i1 %69, label %70, label %76, !dbg !766

; <label>:70:                                     ; preds = %58
  %71 = icmp slt i32 %53, %0, !dbg !770
  br i1 %71, label %74, label %72, !dbg !773

; <label>:72:                                     ; preds = %70
  %73 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !774
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %73) #10, !dbg !776
  call void @usage(i32 1) #16, !dbg !777
  unreachable, !dbg !777

; <label>:74:                                     ; preds = %70
  %75 = add nsw i32 %53, 1, !dbg !778
  store i32 %75, i32* @optind, align 4, !dbg !778, !tbaa !709
  br label %76, !dbg !779

; <label>:76:                                     ; preds = %58, %74
  %77 = phi i32 [ %53, %58 ], [ %75, %74 ], !dbg !780
  %78 = icmp slt i32 %77, %0, !dbg !782
  br i1 %78, label %81, label %79, !dbg !783

; <label>:79:                                     ; preds = %76
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !784
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !786
  call void @usage(i32 1) #16, !dbg !787
  unreachable, !dbg !787

; <label>:81:                                     ; preds = %76
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !788
  %83 = load i8*, i8** @program_name, align 8, !dbg !788, !tbaa !618
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %82, i8* %83) #10, !dbg !788
  unreachable, !dbg !788
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !790 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !792, metadata !DIExpression()), !dbg !793
  store i8* %0, i8** @file_name, align 8, !dbg !794, !tbaa !618
  ret void, !dbg !795
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !796 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !800, metadata !DIExpression()), !dbg !801
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !802, !tbaa !803
  ret void, !dbg !805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !806 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !811, !tbaa !618
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !812
  %3 = icmp eq i32 %2, 0, !dbg !813
  br i1 %3, label %22, label %4, !dbg !814

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !815, !tbaa !803, !range !816
  %6 = icmp eq i8 %5, 0, !dbg !815
  br i1 %6, label %11, label %7, !dbg !817

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !818
  %9 = load i32, i32* %8, align 4, !dbg !818, !tbaa !709
  %10 = icmp eq i32 %9, 32, !dbg !819
  br i1 %10, label %22, label %11, !dbg !820

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 5) #10, !dbg !821
  call void @llvm.dbg.value(metadata i8* %12, metadata !808, metadata !DIExpression()), !dbg !822
  %13 = load i8*, i8** @file_name, align 8, !dbg !823, !tbaa !618
  %14 = icmp eq i8* %13, null, !dbg !823
  %15 = tail call i32* @__errno_location() #17, !dbg !825
  %16 = load i32, i32* %15, align 4, !dbg !825, !tbaa !709
  br i1 %14, label %19, label %17, !dbg !826

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !827
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.48, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !828
  br label %20, !dbg !828

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.49, i64 0, i64 0), i8* %12) #10, !dbg !829
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !830, !tbaa !709
  tail call void @_exit(i32 %21) #15, !dbg !831
  unreachable, !dbg !831

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !832, !tbaa !618
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !834
  %25 = icmp eq i32 %24, 0, !dbg !835
  br i1 %25, label %28, label %26, !dbg !836

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !837, !tbaa !709
  tail call void @_exit(i32 %27) #15, !dbg !838
  unreachable, !dbg !838

; <label>:28:                                     ; preds = %22
  ret void, !dbg !839
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !840 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !842, metadata !DIExpression()), !dbg !845
  %2 = icmp eq i8* %0, null, !dbg !846
  br i1 %2, label %3, label %6, !dbg !848

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !849, !tbaa !618
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !851
  tail call void @abort() #15, !dbg !852
  unreachable, !dbg !852

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !853
  call void @llvm.dbg.value(metadata i8* %7, metadata !843, metadata !DIExpression()), !dbg !854
  %8 = icmp eq i8* %7, null, !dbg !855
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !856
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !857
  call void @llvm.dbg.value(metadata i8* %10, metadata !844, metadata !DIExpression()), !dbg !858
  %11 = ptrtoint i8* %10 to i64, !dbg !859
  %12 = ptrtoint i8* %0 to i64, !dbg !859
  %13 = sub i64 %11, %12, !dbg !859
  %14 = icmp sgt i64 %13, 6, !dbg !861
  br i1 %14, label %15, label %24, !dbg !862

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !863
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #14, !dbg !864
  %18 = icmp eq i32 %17, 0, !dbg !865
  br i1 %18, label %19, label %24, !dbg !866

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !842, metadata !DIExpression()), !dbg !845
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #14, !dbg !867
  %21 = icmp eq i32 %20, 0, !dbg !870
  br i1 %21, label %22, label %24, !dbg !871

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !872
  call void @llvm.dbg.value(metadata i8* %23, metadata !842, metadata !DIExpression()), !dbg !845
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !874, !tbaa !618
  br label %24, !dbg !875

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !842, metadata !DIExpression()), !dbg !845
  store i8* %25, i8** @program_name, align 8, !dbg !876, !tbaa !618
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !877, !tbaa !618
  ret void, !dbg !878
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !879 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !884, metadata !DIExpression()), !dbg !887
  %2 = tail call i32* @__errno_location() #17, !dbg !888
  %3 = load i32, i32* %2, align 4, !dbg !888, !tbaa !709
  call void @llvm.dbg.value(metadata i32 %3, metadata !885, metadata !DIExpression()), !dbg !889
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !890
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !890
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !890
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !891
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !891
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !886, metadata !DIExpression()), !dbg !892
  store i32 %3, i32* %2, align 4, !dbg !893, !tbaa !709
  ret %struct.quoting_options* %8, !dbg !894
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !895 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !901, metadata !DIExpression()), !dbg !902
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !903
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !903
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !904
  %5 = load i32, i32* %4, align 8, !dbg !904, !tbaa !905
  ret i32 %5, !dbg !907
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !908 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !912, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i32 %1, metadata !913, metadata !DIExpression()), !dbg !915
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !916
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !916
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !917
  store i32 %1, i32* %5, align 8, !dbg !918, !tbaa !905
  ret void, !dbg !919
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !920 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !924, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i8 %1, metadata !925, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i32 %2, metadata !926, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8 %1, metadata !927, metadata !DIExpression()), !dbg !935
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !936
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !936
  %6 = lshr i8 %1, 5, !dbg !937
  %7 = zext i8 %6 to i64, !dbg !937
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !938
  call void @llvm.dbg.value(metadata i32* %8, metadata !928, metadata !DIExpression()), !dbg !939
  %9 = and i8 %1, 31, !dbg !940
  %10 = zext i8 %9 to i32, !dbg !940
  call void @llvm.dbg.value(metadata i32 %10, metadata !930, metadata !DIExpression()), !dbg !941
  %11 = load i32, i32* %8, align 4, !dbg !942, !tbaa !709
  %12 = lshr i32 %11, %10, !dbg !943
  %13 = and i32 %12, 1, !dbg !944
  call void @llvm.dbg.value(metadata i32 %13, metadata !931, metadata !DIExpression()), !dbg !945
  %14 = and i32 %2, 1, !dbg !946
  %15 = xor i32 %13, %14, !dbg !947
  %16 = shl i32 %15, %10, !dbg !948
  %17 = xor i32 %16, %11, !dbg !949
  store i32 %17, i32* %8, align 4, !dbg !949, !tbaa !709
  ret i32 %13, !dbg !950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !951 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !955, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %1, metadata !956, metadata !DIExpression()), !dbg !959
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !960
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !962
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !955, metadata !DIExpression()), !dbg !958
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !963
  %6 = load i32, i32* %5, align 4, !dbg !963, !tbaa !964
  call void @llvm.dbg.value(metadata i32 %6, metadata !957, metadata !DIExpression()), !dbg !965
  store i32 %1, i32* %5, align 4, !dbg !966, !tbaa !964
  ret i32 %6, !dbg !967
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !968 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !972, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i8* %1, metadata !973, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i8* %2, metadata !974, metadata !DIExpression()), !dbg !977
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !978
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()), !dbg !975
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !981
  store i32 10, i32* %6, align 8, !dbg !982, !tbaa !905
  %7 = icmp ne i8* %1, null, !dbg !983
  %8 = icmp ne i8* %2, null, !dbg !985
  %9 = and i1 %7, %8, !dbg !986
  br i1 %9, label %11, label %10, !dbg !986

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !987
  unreachable, !dbg !987

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !988
  store i8* %1, i8** %12, align 8, !dbg !989, !tbaa !990
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !991
  store i8* %2, i8** %13, align 8, !dbg !992, !tbaa !993
  ret void, !dbg !994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !995 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !999, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 %1, metadata !1000, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata i8* %2, metadata !1001, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i64 %3, metadata !1002, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1003, metadata !DIExpression()), !dbg !1011
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1012
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1012
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1004, metadata !DIExpression()), !dbg !1013
  %8 = tail call i32* @__errno_location() #17, !dbg !1014
  %9 = load i32, i32* %8, align 4, !dbg !1014, !tbaa !709
  call void @llvm.dbg.value(metadata i32 %9, metadata !1005, metadata !DIExpression()), !dbg !1015
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1016
  %11 = load i32, i32* %10, align 8, !dbg !1016, !tbaa !905
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1017
  %13 = load i32, i32* %12, align 4, !dbg !1017, !tbaa !964
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1018
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1019
  %16 = load i8*, i8** %15, align 8, !dbg !1019, !tbaa !990
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1020
  %18 = load i8*, i8** %17, align 8, !dbg !1020, !tbaa !993
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1021
  call void @llvm.dbg.value(metadata i64 %19, metadata !1006, metadata !DIExpression()), !dbg !1022
  store i32 %9, i32* %8, align 4, !dbg !1023, !tbaa !709
  ret i64 %19, !dbg !1024
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1025 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1031, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %1, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %2, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %3, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i32 %4, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %5, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32* %6, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %7, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %8, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8* null, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i8 0, metadata !1045, metadata !DIExpression()), !dbg !1108
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1109
  %14 = icmp eq i64 %13, 1, !dbg !1110
  %15 = lshr i32 %5, 1, !dbg !1111
  %16 = trunc i32 %15 to i8, !dbg !1111
  %17 = and i8 %16, 1, !dbg !1111
  call void @llvm.dbg.value(metadata i8 %17, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 0, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, metadata !1050, metadata !DIExpression()), !dbg !1114
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1115

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1105
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1106
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1107
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1108
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1116
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1112
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1113
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1114
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %39, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %38, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %37, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %36, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %35, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %34, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %33, metadata !1044, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i8* %32, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %31, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %30, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %29, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i32 %28, metadata !1035, metadata !DIExpression()), !dbg !1099
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1118

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %36, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 5, metadata !1035, metadata !DIExpression()), !dbg !1099
  br label %93, !dbg !1119

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 5, metadata !1035, metadata !DIExpression()), !dbg !1099
  %43 = and i8 %36, 1, !dbg !1120
  %44 = icmp eq i8 %43, 0, !dbg !1120
  br i1 %44, label %45, label %93, !dbg !1119

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1122
  br i1 %46, label %93, label %47, !dbg !1125

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1122, !tbaa !1126
  br label %93, !dbg !1122

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %28), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %49, metadata !1038, metadata !DIExpression()), !dbg !1102
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %28), !dbg !1131
  call void @llvm.dbg.value(metadata i8* %50, metadata !1039, metadata !DIExpression()), !dbg !1103
  br label %51, !dbg !1132

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %52, metadata !1038, metadata !DIExpression()), !dbg !1102
  %54 = and i8 %36, 1, !dbg !1133
  %55 = icmp eq i8 %54, 0, !dbg !1133
  br i1 %55, label %56, label %71, !dbg !1135

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1104
  %57 = load i8, i8* %52, align 1, !dbg !1136, !tbaa !1126
  %58 = icmp eq i8 %57, 0, !dbg !1139
  br i1 %58, label %71, label %59, !dbg !1139

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %62, metadata !1041, metadata !DIExpression()), !dbg !1104
  %63 = icmp ult i64 %62, %40, !dbg !1140
  br i1 %63, label %64, label %66, !dbg !1143

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1140
  store i8 %60, i8* %65, align 1, !dbg !1140, !tbaa !1126
  br label %66, !dbg !1140

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1143
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %68, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %67, metadata !1041, metadata !DIExpression()), !dbg !1104
  %69 = load i8, i8* %68, align 1, !dbg !1136, !tbaa !1126
  %70 = icmp eq i8 %69, 0, !dbg !1139
  br i1 %70, label %71, label %59, !dbg !1139, !llvm.loop !1145

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1104
  call void @llvm.dbg.value(metadata i64 %72, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %53, metadata !1043, metadata !DIExpression()), !dbg !1106
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %73, metadata !1044, metadata !DIExpression()), !dbg !1107
  br label %93, !dbg !1148

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1045, metadata !DIExpression()), !dbg !1108
  br label %75, !dbg !1149

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1116
  call void @llvm.dbg.value(metadata i8 %76, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1111
  br label %77, !dbg !1150

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1108
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1116
  call void @llvm.dbg.value(metadata i8 %79, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %78, metadata !1045, metadata !DIExpression()), !dbg !1108
  %80 = and i8 %79, 1, !dbg !1151
  %81 = icmp eq i8 %80, 0, !dbg !1151
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1153
  br label %83, !dbg !1153

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1154
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1111
  call void @llvm.dbg.value(metadata i8 %85, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %84, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1099
  %86 = and i8 %85, 1, !dbg !1155
  %87 = icmp eq i8 %86, 0, !dbg !1155
  br i1 %87, label %88, label %93, !dbg !1157

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1158
  br i1 %89, label %93, label %90, !dbg !1161

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1158, !tbaa !1126
  br label %93, !dbg !1158

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1047, metadata !DIExpression()), !dbg !1111
  br label %93, !dbg !1162

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1163
  unreachable, !dbg !1163

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1104
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], !dbg !1116
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1116
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1116
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8 %101, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %99, metadata !1044, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %97, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 0, metadata !1040, metadata !DIExpression()), !dbg !1165
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !1166

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1167
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1104
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1105
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1112
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1113
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1114
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %125, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %122, metadata !1040, metadata !DIExpression()), !dbg !1165
  %130 = icmp eq i64 %125, -1, !dbg !1168
  br i1 %130, label %131, label %135, !dbg !1169

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1170
  %133 = load i8, i8* %132, align 1, !dbg !1170, !tbaa !1126
  %134 = icmp eq i8 %133, 0, !dbg !1171
  br i1 %134, label %617, label %137, !dbg !1172

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1173
  br i1 %136, label %617, label %137, !dbg !1172

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 0, metadata !1057, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()), !dbg !1176
  br i1 %107, label %138, label %153, !dbg !1177

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1179
  %140 = and i1 %108, %130, !dbg !1180
  br i1 %140, label %141, label %143, !dbg !1180

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %142, metadata !1034, metadata !DIExpression()), !dbg !1098
  br label %143, !dbg !1182

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1034, metadata !DIExpression()), !dbg !1098
  %145 = icmp ugt i64 %139, %144, !dbg !1183
  br i1 %145, label %153, label %146, !dbg !1184

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1185
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1186
  %149 = icmp ne i32 %148, 0, !dbg !1187
  %150 = or i1 %149, %110, !dbg !1188
  %151 = xor i1 %149, true, !dbg !1188
  %152 = zext i1 %151 to i8, !dbg !1188
  br i1 %150, label %153, label %661, !dbg !1188

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1189
  call void @llvm.dbg.value(metadata i8 %155, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %154, metadata !1034, metadata !DIExpression()), !dbg !1098
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1190
  %157 = load i8, i8* %156, align 1, !dbg !1190, !tbaa !1126
  call void @llvm.dbg.value(metadata i8 %157, metadata !1051, metadata !DIExpression()), !dbg !1191
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !1192

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1193

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1194

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1057, metadata !DIExpression()), !dbg !1175
  %161 = and i8 %126, 1, !dbg !1198
  %162 = icmp eq i8 %161, 0, !dbg !1198
  %163 = and i1 %114, %162, !dbg !1198
  br i1 %163, label %164, label %180, !dbg !1198

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1200
  br i1 %165, label %166, label %168, !dbg !1204

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1200
  store i8 39, i8* %167, align 1, !dbg !1200, !tbaa !1126
  br label %168, !dbg !1200

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1204
  call void @llvm.dbg.value(metadata i64 %169, metadata !1041, metadata !DIExpression()), !dbg !1104
  %170 = icmp ult i64 %169, %129, !dbg !1205
  br i1 %170, label %171, label %173, !dbg !1208

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1205
  store i8 36, i8* %172, align 1, !dbg !1205, !tbaa !1126
  br label %173, !dbg !1205

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %174, metadata !1041, metadata !DIExpression()), !dbg !1104
  %175 = icmp ult i64 %174, %129, !dbg !1209
  br i1 %175, label %176, label %178, !dbg !1212

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1209
  store i8 39, i8* %177, align 1, !dbg !1209, !tbaa !1126
  br label %178, !dbg !1209

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %179, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1112
  br label %180, !dbg !1213

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1164
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8 %182, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %181, metadata !1041, metadata !DIExpression()), !dbg !1104
  %183 = icmp ult i64 %181, %129, !dbg !1214
  br i1 %183, label %184, label %186, !dbg !1217

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1214
  store i8 92, i8* %185, align 1, !dbg !1214, !tbaa !1126
  br label %186, !dbg !1214

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %187, metadata !1041, metadata !DIExpression()), !dbg !1104
  br i1 %104, label %188, label %478, !dbg !1218

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1220
  %190 = icmp ult i64 %189, %154, !dbg !1221
  br i1 %190, label %191, label %467, !dbg !1222

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1223
  %193 = load i8, i8* %192, align 1, !dbg !1223, !tbaa !1126
  %194 = add i8 %193, -48, !dbg !1224
  %195 = icmp ult i8 %194, 10, !dbg !1224
  br i1 %195, label %196, label %467, !dbg !1224

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1225
  br i1 %197, label %198, label %200, !dbg !1229

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1225
  store i8 48, i8* %199, align 1, !dbg !1225, !tbaa !1126
  br label %200, !dbg !1225

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %201, metadata !1041, metadata !DIExpression()), !dbg !1104
  %202 = icmp ult i64 %201, %129, !dbg !1230
  br i1 %202, label %203, label %205, !dbg !1233

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1230
  store i8 48, i8* %204, align 1, !dbg !1230, !tbaa !1126
  br label %205, !dbg !1230

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %206, metadata !1041, metadata !DIExpression()), !dbg !1104
  br label %467, !dbg !1234

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1235

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1236

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1237

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1239

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1241
  %213 = icmp ult i64 %212, %154, !dbg !1242
  br i1 %213, label %214, label %467, !dbg !1243

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1244
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1245
  %217 = load i8, i8* %216, align 1, !dbg !1245, !tbaa !1126
  %218 = icmp eq i8 %217, 63, !dbg !1246
  br i1 %218, label %219, label %467, !dbg !1247

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1248
  %221 = load i8, i8* %220, align 1, !dbg !1248, !tbaa !1126
  %222 = sext i8 %221 to i32, !dbg !1248
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !1249

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1250

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1051, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %212, metadata !1040, metadata !DIExpression()), !dbg !1165
  %225 = icmp ult i64 %123, %129, !dbg !1252
  br i1 %225, label %226, label %228, !dbg !1255

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1252
  store i8 63, i8* %227, align 1, !dbg !1252, !tbaa !1126
  br label %228, !dbg !1252

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %229, metadata !1041, metadata !DIExpression()), !dbg !1104
  %230 = icmp ult i64 %229, %129, !dbg !1256
  br i1 %230, label %231, label %233, !dbg !1259

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1256
  store i8 34, i8* %232, align 1, !dbg !1256, !tbaa !1126
  br label %233, !dbg !1256

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %234, metadata !1041, metadata !DIExpression()), !dbg !1104
  %235 = icmp ult i64 %234, %129, !dbg !1260
  br i1 %235, label %236, label %238, !dbg !1263

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1260
  store i8 34, i8* %237, align 1, !dbg !1260, !tbaa !1126
  br label %238, !dbg !1260

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %239, metadata !1041, metadata !DIExpression()), !dbg !1104
  %240 = icmp ult i64 %239, %129, !dbg !1264
  br i1 %240, label %241, label %243, !dbg !1267

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1264
  store i8 63, i8* %242, align 1, !dbg !1264, !tbaa !1126
  br label %243, !dbg !1264

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %244, metadata !1041, metadata !DIExpression()), !dbg !1104
  br label %467, !dbg !1268

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1055, metadata !DIExpression()), !dbg !1269
  br label %255, !dbg !1270

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1055, metadata !DIExpression()), !dbg !1269
  br label %255, !dbg !1271

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1055, metadata !DIExpression()), !dbg !1269
  br label %253, !dbg !1272

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1055, metadata !DIExpression()), !dbg !1269
  br label %253, !dbg !1273

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1055, metadata !DIExpression()), !dbg !1269
  br label %255, !dbg !1274

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1055, metadata !DIExpression()), !dbg !1269
  br i1 %114, label %251, label %252, !dbg !1275

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1276

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1279

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1281
  call void @llvm.dbg.value(metadata i8 %254, metadata !1055, metadata !DIExpression()), !dbg !1269
  br i1 %113, label %255, label %661, !dbg !1282

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1281
  call void @llvm.dbg.value(metadata i8 %256, metadata !1055, metadata !DIExpression()), !dbg !1269
  br i1 %103, label %524, label %478, !dbg !1284

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1285
  br i1 %258, label %259, label %264, !dbg !1287

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1288, !tbaa !1126
  %261 = icmp ne i8 %260, 0, !dbg !1289
  %262 = icmp ne i64 %122, 0, !dbg !1290
  %263 = or i1 %262, %261, !dbg !1292
  br i1 %263, label %467, label %270, !dbg !1292

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1293
  %266 = icmp ne i64 %122, 0, !dbg !1290
  %267 = or i1 %266, %265, !dbg !1287
  br i1 %267, label %467, label %270, !dbg !1287

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1290
  br i1 %269, label %270, label %467, !dbg !1294

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1176
  br label %271, !dbg !1295

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1281
  call void @llvm.dbg.value(metadata i8 %272, metadata !1058, metadata !DIExpression()), !dbg !1176
  br i1 %113, label %467, label %661, !dbg !1296

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1176
  br i1 %114, label %274, label %467, !dbg !1298

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1299

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1302
  %277 = icmp ne i64 %124, 0, !dbg !1304
  %278 = or i1 %277, %276, !dbg !1305
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1305
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %280, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %279, metadata !1042, metadata !DIExpression()), !dbg !1105
  %281 = icmp ult i64 %123, %280, !dbg !1306
  br i1 %281, label %282, label %284, !dbg !1309

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1306
  store i8 39, i8* %283, align 1, !dbg !1306, !tbaa !1126
  br label %284, !dbg !1306

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %285, metadata !1041, metadata !DIExpression()), !dbg !1104
  %286 = icmp ult i64 %285, %280, !dbg !1310
  br i1 %286, label %287, label %289, !dbg !1313

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1310
  store i8 92, i8* %288, align 1, !dbg !1310, !tbaa !1126
  br label %289, !dbg !1310

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %290, metadata !1041, metadata !DIExpression()), !dbg !1104
  %291 = icmp ult i64 %290, %280, !dbg !1314
  br i1 %291, label %292, label %294, !dbg !1317

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1314
  store i8 39, i8* %293, align 1, !dbg !1314, !tbaa !1126
  br label %294, !dbg !1314

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %295, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1112
  br label %467, !dbg !1318

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1319

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1059, metadata !DIExpression()), !dbg !1320
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1321
  %299 = load i16*, i16** %298, align 8, !dbg !1321, !tbaa !618
  %300 = zext i8 %157 to i64, !dbg !1321
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1321
  %302 = load i16, i16* %301, align 2, !dbg !1321, !tbaa !1323
  %303 = lshr i16 %302, 14, !dbg !1325
  %304 = trunc i16 %303 to i8, !dbg !1325
  %305 = and i8 %304, 1, !dbg !1325
  call void @llvm.dbg.value(metadata i8 %305, metadata !1062, metadata !DIExpression()), !dbg !1326
  br label %359, !dbg !1327

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1328
  store i64 0, i64* %10, align 8, !dbg !1329
  call void @llvm.dbg.value(metadata i64 0, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 1, metadata !1062, metadata !DIExpression()), !dbg !1326
  %307 = icmp eq i64 %154, -1, !dbg !1330
  br i1 %307, label %308, label %310, !dbg !1332

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %309, metadata !1034, metadata !DIExpression()), !dbg !1098
  br label %310, !dbg !1334

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1335
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  br label %312, !dbg !1336

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1337
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1338
  call void @llvm.dbg.value(metadata i8 %314, metadata !1062, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1339
  %315 = add i64 %313, %122, !dbg !1340
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1341
  %317 = sub i64 %311, %315, !dbg !1342
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1063, metadata !DIExpression(DW_OP_deref)), !dbg !1343
  call void @llvm.dbg.value(metadata i32* %12, metadata !1081, metadata !DIExpression(DW_OP_deref)), !dbg !1344
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %318, metadata !1084, metadata !DIExpression()), !dbg !1346
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1347

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  %320 = icmp ugt i64 %311, %315, !dbg !1348
  br i1 %320, label %321, label %344, !dbg !1350

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1059, metadata !DIExpression()), !dbg !1320
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1351
  %325 = load i8, i8* %324, align 1, !dbg !1351, !tbaa !1126
  %326 = icmp eq i8 %325, 0, !dbg !1350
  br i1 %326, label %344, label %327, !dbg !1352

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %328, metadata !1059, metadata !DIExpression()), !dbg !1320
  %329 = add i64 %328, %122, !dbg !1354
  %330 = icmp ult i64 %329, %311, !dbg !1348
  br i1 %330, label %321, label %344, !dbg !1350, !llvm.loop !1355

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1356
  %333 = and i1 %116, %332, !dbg !1359
  call void @llvm.dbg.value(metadata i64 1, metadata !1085, metadata !DIExpression()), !dbg !1360
  br i1 %333, label %334, label %347, !dbg !1359

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1085, metadata !DIExpression()), !dbg !1360
  %336 = add i64 %335, %315, !dbg !1361
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1362
  %338 = load i8, i8* %337, align 1, !dbg !1362, !tbaa !1126
  %339 = sext i8 %338 to i32, !dbg !1362
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1363

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i64 %341, metadata !1085, metadata !DIExpression()), !dbg !1360
  %342 = icmp ult i64 %341, %318, !dbg !1356
  br i1 %342, label %334, label %347, !dbg !1365, !llvm.loop !1366

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %314, metadata !1062, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %313, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %314, metadata !1062, metadata !DIExpression()), !dbg !1326
  br label %344, !dbg !1368

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1062, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %352, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1368
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1369, !tbaa !709
  call void @llvm.dbg.value(metadata i32 %348, metadata !1081, metadata !DIExpression()), !dbg !1344
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1371
  %350 = icmp eq i32 %349, 0, !dbg !1371
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1372
  call void @llvm.dbg.value(metadata i8 %351, metadata !1062, metadata !DIExpression()), !dbg !1326
  %352 = add i64 %318, %313, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %352, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i8 %351, metadata !1062, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %352, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1368
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1063, metadata !DIExpression(DW_OP_deref)), !dbg !1343
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1374
  %354 = icmp eq i32 %353, 0, !dbg !1375
  br i1 %354, label %312, label %355, !dbg !1376, !llvm.loop !1377

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1379
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 2, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %94, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8 %100, metadata !1045, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %311, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %351, metadata !1062, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %352, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1368
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1379
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1380
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1381
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1381
  call void @llvm.dbg.value(metadata i8 %362, metadata !1062, metadata !DIExpression()), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %361, metadata !1059, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata i64 %360, metadata !1034, metadata !DIExpression()), !dbg !1098
  %363 = and i8 %362, 1, !dbg !1382
  %364 = icmp ne i8 %363, 0, !dbg !1382
  call void @llvm.dbg.value(metadata i8 %363, metadata !1058, metadata !DIExpression()), !dbg !1176
  %365 = icmp ult i64 %361, 2, !dbg !1383
  %366 = or i1 %364, %115, !dbg !1384
  %367 = and i1 %365, %366, !dbg !1385
  br i1 %367, label %467, label %368, !dbg !1385

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1386
  call void @llvm.dbg.value(metadata i64 %369, metadata !1092, metadata !DIExpression()), !dbg !1387
  br label %370, !dbg !1388

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1389
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1393
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1112
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1389
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1395
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1175
  call void @llvm.dbg.value(metadata i8 %376, metadata !1057, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %375, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %374, metadata !1051, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %373, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %372, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %371, metadata !1040, metadata !DIExpression()), !dbg !1165
  br i1 %366, label %423, label %377, !dbg !1399

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1400

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1057, metadata !DIExpression()), !dbg !1175
  %379 = and i8 %373, 1, !dbg !1403
  %380 = icmp eq i8 %379, 0, !dbg !1403
  %381 = and i1 %114, %380, !dbg !1403
  br i1 %381, label %382, label %398, !dbg !1403

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1405
  br i1 %383, label %384, label %386, !dbg !1409

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1405
  store i8 39, i8* %385, align 1, !dbg !1405, !tbaa !1126
  br label %386, !dbg !1405

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %387, metadata !1041, metadata !DIExpression()), !dbg !1104
  %388 = icmp ult i64 %387, %129, !dbg !1410
  br i1 %388, label %389, label %391, !dbg !1413

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1410
  store i8 36, i8* %390, align 1, !dbg !1410, !tbaa !1126
  br label %391, !dbg !1410

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %392, metadata !1041, metadata !DIExpression()), !dbg !1104
  %393 = icmp ult i64 %392, %129, !dbg !1414
  br i1 %393, label %394, label %396, !dbg !1417

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1414
  store i8 39, i8* %395, align 1, !dbg !1414, !tbaa !1126
  br label %396, !dbg !1414

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %397, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1112
  br label %398, !dbg !1418

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1164
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8 %400, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %399, metadata !1041, metadata !DIExpression()), !dbg !1104
  %401 = icmp ult i64 %399, %129, !dbg !1419
  br i1 %401, label %402, label %404, !dbg !1422

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1419
  store i8 92, i8* %403, align 1, !dbg !1419, !tbaa !1126
  br label %404, !dbg !1419

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %405, metadata !1041, metadata !DIExpression()), !dbg !1104
  %406 = icmp ult i64 %405, %129, !dbg !1423
  br i1 %406, label %407, label %411, !dbg !1426

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1423
  %409 = or i8 %408, 48, !dbg !1423
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1423
  store i8 %409, i8* %410, align 1, !dbg !1423, !tbaa !1126
  br label %411, !dbg !1423

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1426
  call void @llvm.dbg.value(metadata i64 %412, metadata !1041, metadata !DIExpression()), !dbg !1104
  %413 = icmp ult i64 %412, %129, !dbg !1427
  br i1 %413, label %414, label %419, !dbg !1430

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1427
  %416 = and i8 %415, 7, !dbg !1427
  %417 = or i8 %416, 48, !dbg !1427
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1427
  store i8 %417, i8* %418, align 1, !dbg !1427, !tbaa !1126
  br label %419, !dbg !1427

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %420, metadata !1041, metadata !DIExpression()), !dbg !1104
  %421 = and i8 %374, 7, !dbg !1431
  %422 = or i8 %421, 48, !dbg !1432
  call void @llvm.dbg.value(metadata i8 %422, metadata !1051, metadata !DIExpression()), !dbg !1191
  br label %432, !dbg !1433

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1434
  %425 = icmp eq i8 %424, 0, !dbg !1434
  br i1 %425, label %432, label %426, !dbg !1435

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1436
  br i1 %427, label %428, label %430, !dbg !1439

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1436
  store i8 92, i8* %429, align 1, !dbg !1436, !tbaa !1126
  br label %430, !dbg !1436

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %431, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1174
  br label %432, !dbg !1440

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1441
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1112
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1442
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1443
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1445
  call void @llvm.dbg.value(metadata i8 %437, metadata !1057, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %436, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %435, metadata !1051, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %434, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %433, metadata !1041, metadata !DIExpression()), !dbg !1104
  %438 = add i64 %371, 1, !dbg !1446
  %439 = icmp ugt i64 %369, %438, !dbg !1448
  br i1 %439, label %440, label %562, !dbg !1449

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1450
  %442 = icmp ne i8 %441, 0, !dbg !1450
  %443 = and i8 %437, 1, !dbg !1450
  %444 = icmp eq i8 %443, 0, !dbg !1450
  %445 = and i1 %442, %444, !dbg !1450
  br i1 %445, label %446, label %457, !dbg !1450

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1453
  br i1 %447, label %448, label %450, !dbg !1457

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1453
  store i8 39, i8* %449, align 1, !dbg !1453, !tbaa !1126
  br label %450, !dbg !1453

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %451, metadata !1041, metadata !DIExpression()), !dbg !1104
  %452 = icmp ult i64 %451, %129, !dbg !1458
  br i1 %452, label %453, label %455, !dbg !1461

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1458
  store i8 39, i8* %454, align 1, !dbg !1458, !tbaa !1126
  br label %455, !dbg !1458

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %456, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1112
  br label %457, !dbg !1462

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1463
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8 %459, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %458, metadata !1041, metadata !DIExpression()), !dbg !1104
  %460 = icmp ult i64 %458, %129, !dbg !1464
  br i1 %460, label %461, label %463, !dbg !1466

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1464
  store i8 %435, i8* %462, align 1, !dbg !1464, !tbaa !1126
  br label %463, !dbg !1464

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1466
  call void @llvm.dbg.value(metadata i64 %464, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %438, metadata !1040, metadata !DIExpression()), !dbg !1165
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1467
  %466 = load i8, i8* %465, align 1, !dbg !1467, !tbaa !1126
  call void @llvm.dbg.value(metadata i8 %466, metadata !1051, metadata !DIExpression()), !dbg !1191
  br label %370, !dbg !1468, !llvm.loop !1469

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1472
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1164
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1105
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1473
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1164
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1164
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1189
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1189
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1189
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %476, metadata !1058, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %475, metadata !1057, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %155, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %474, metadata !1051, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %473, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %472, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %471, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %470, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %469, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %468, metadata !1040, metadata !DIExpression()), !dbg !1165
  br i1 %105, label %489, label %478, !dbg !1474

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !1476

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1477

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !1478
  %502 = zext i8 %501 to i64, !dbg !1478
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1479
  %504 = load i32, i32* %503, align 4, !dbg !1479, !tbaa !709
  %505 = and i8 %494, 31, !dbg !1480
  %506 = zext i8 %505 to i32, !dbg !1480
  %507 = shl i32 1, %506, !dbg !1481
  %508 = and i32 %504, %507, !dbg !1481
  %509 = icmp eq i32 %508, 0, !dbg !1481
  %510 = icmp eq i8 %155, 0, !dbg !1482
  %511 = and i1 %510, %509, !dbg !1483
  br i1 %511, label %562, label %524, !dbg !1483

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !1482
  br i1 %523, label %562, label %524, !dbg !1484

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1485
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1164
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1105
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1473
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1112
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1113
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1486
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1189
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %532, metadata !1058, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %531, metadata !1051, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %530, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %529, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %528, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %527, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %526, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %525, metadata !1040, metadata !DIExpression()), !dbg !1165
  br i1 %110, label %534, label %661, !dbg !1489

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1057, metadata !DIExpression()), !dbg !1175
  %535 = and i8 %529, 1, !dbg !1491
  %536 = icmp eq i8 %535, 0, !dbg !1491
  %537 = and i1 %114, %536, !dbg !1491
  br i1 %537, label %538, label %554, !dbg !1491

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1493
  br i1 %539, label %540, label %542, !dbg !1497

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1493
  store i8 39, i8* %541, align 1, !dbg !1493, !tbaa !1126
  br label %542, !dbg !1493

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %543, metadata !1041, metadata !DIExpression()), !dbg !1104
  %544 = icmp ult i64 %543, %533, !dbg !1498
  br i1 %544, label %545, label %547, !dbg !1501

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1498
  store i8 36, i8* %546, align 1, !dbg !1498, !tbaa !1126
  br label %547, !dbg !1498

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %548, metadata !1041, metadata !DIExpression()), !dbg !1104
  %549 = icmp ult i64 %548, %533, !dbg !1502
  br i1 %549, label %550, label %552, !dbg !1505

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1502
  store i8 39, i8* %551, align 1, !dbg !1502, !tbaa !1126
  br label %552, !dbg !1502

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %553, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1112
  br label %554, !dbg !1506

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1463
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8 %556, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %555, metadata !1041, metadata !DIExpression()), !dbg !1104
  %557 = icmp ult i64 %555, %533, !dbg !1507
  br i1 %557, label %558, label %560, !dbg !1510

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1507
  store i8 92, i8* %559, align 1, !dbg !1507, !tbaa !1126
  br label %560, !dbg !1507

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %561, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %572, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %571, metadata !1058, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %570, metadata !1057, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %569, metadata !1051, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %568, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %567, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %566, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %565, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %564, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %563, metadata !1040, metadata !DIExpression()), !dbg !1165
  br label %589, !dbg !1511

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1485
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1164
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1105
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1473
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1112
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1113
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1514
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1189
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1189
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %571, metadata !1058, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %570, metadata !1057, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8 %569, metadata !1051, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i8 %568, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %567, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %566, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %565, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %564, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %563, metadata !1040, metadata !DIExpression()), !dbg !1165
  %573 = and i8 %567, 1, !dbg !1511
  %574 = icmp ne i8 %573, 0, !dbg !1511
  %575 = and i8 %570, 1, !dbg !1511
  %576 = icmp eq i8 %575, 0, !dbg !1511
  %577 = and i1 %574, %576, !dbg !1511
  br i1 %577, label %578, label %589, !dbg !1511

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1515
  br i1 %579, label %580, label %582, !dbg !1519

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1515
  store i8 39, i8* %581, align 1, !dbg !1515, !tbaa !1126
  br label %582, !dbg !1515

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %583, metadata !1041, metadata !DIExpression()), !dbg !1104
  %584 = icmp ult i64 %583, %572, !dbg !1520
  br i1 %584, label %585, label %587, !dbg !1523

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1520
  store i8 39, i8* %586, align 1, !dbg !1520, !tbaa !1126
  br label %587, !dbg !1520

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %588, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1112
  br label %589, !dbg !1524

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1463
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1164
  call void @llvm.dbg.value(metadata i8 %598, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %597, metadata !1041, metadata !DIExpression()), !dbg !1104
  %599 = icmp ult i64 %597, %590, !dbg !1525
  br i1 %599, label %600, label %602, !dbg !1528

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1525
  store i8 %592, i8* %601, align 1, !dbg !1525, !tbaa !1126
  br label %602, !dbg !1525

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %603, metadata !1041, metadata !DIExpression()), !dbg !1104
  %604 = and i8 %591, 1, !dbg !1529
  %605 = icmp eq i8 %604, 0, !dbg !1529
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1531
  call void @llvm.dbg.value(metadata i8 %606, metadata !1050, metadata !DIExpression()), !dbg !1114
  br label %607, !dbg !1532

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1485
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1164
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1105
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1473
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1112
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1164
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1114
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %614, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %613, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %612, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %611, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %610, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %609, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %608, metadata !1040, metadata !DIExpression()), !dbg !1165
  %616 = add i64 %608, 1, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %616, metadata !1040, metadata !DIExpression()), !dbg !1165
  br label %121, !dbg !1534, !llvm.loop !1535

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %125, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %125, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %126, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %127, metadata !1049, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8 %128, metadata !1050, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  %619 = icmp eq i64 %123, 0, !dbg !1537
  %620 = and i1 %114, %619, !dbg !1539
  %621 = xor i1 %620, true, !dbg !1539
  %622 = or i1 %110, %621, !dbg !1539
  br i1 %622, label %623, label %661, !dbg !1539

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1540
  %625 = xor i1 %624, true, !dbg !1540
  %626 = and i8 %127, 1, !dbg !1542
  %627 = icmp eq i8 %626, 0, !dbg !1542
  %628 = or i1 %627, %625, !dbg !1540
  br i1 %628, label %638, label %629, !dbg !1540

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1543
  %631 = icmp eq i8 %630, 0, !dbg !1543
  br i1 %631, label %634, label %632, !dbg !1546

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %618, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %95, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %125, metadata !1034, metadata !DIExpression()), !dbg !1098
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1547
  br label %671, !dbg !1548

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1549
  %636 = icmp ne i64 %124, 0, !dbg !1551
  %637 = and i1 %636, %635, !dbg !1552
  br i1 %637, label %27, label %638, !dbg !1552

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %129, metadata !1032, metadata !DIExpression()), !dbg !1096
  %639 = icmp ne i8* %98, null, !dbg !1553
  %640 = and i1 %639, %110, !dbg !1555
  br i1 %640, label %641, label %656, !dbg !1555

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %123, metadata !1041, metadata !DIExpression()), !dbg !1104
  %642 = load i8, i8* %98, align 1, !dbg !1556, !tbaa !1126
  %643 = icmp eq i8 %642, 0, !dbg !1559
  br i1 %643, label %656, label %644, !dbg !1559

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %647, metadata !1041, metadata !DIExpression()), !dbg !1104
  %648 = icmp ult i64 %647, %129, !dbg !1560
  br i1 %648, label %649, label %651, !dbg !1563

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1560
  store i8 %645, i8* %650, align 1, !dbg !1560, !tbaa !1126
  br label %651, !dbg !1560

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1563
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1564
  call void @llvm.dbg.value(metadata i8* %653, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %652, metadata !1041, metadata !DIExpression()), !dbg !1104
  %654 = load i8, i8* %653, align 1, !dbg !1556, !tbaa !1126
  %655 = icmp eq i8 %654, 0, !dbg !1559
  br i1 %655, label %656, label %644, !dbg !1559, !llvm.loop !1565

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1104
  call void @llvm.dbg.value(metadata i64 %657, metadata !1041, metadata !DIExpression()), !dbg !1104
  %658 = icmp ult i64 %657, %129, !dbg !1567
  br i1 %658, label %659, label %671, !dbg !1569

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1570
  store i8 0, i8* %660, align 1, !dbg !1571, !tbaa !1126
  br label %671, !dbg !1570

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %663, metadata !1034, metadata !DIExpression()), !dbg !1098
  %665 = icmp ne i32 %662, 2, !dbg !1572
  %666 = icmp eq i8 %102, 0, !dbg !1574
  %667 = or i1 %665, %666, !dbg !1575
  call void @llvm.dbg.value(metadata i32 4, metadata !1035, metadata !DIExpression()), !dbg !1099
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %668, metadata !1035, metadata !DIExpression()), !dbg !1099
  %669 = and i32 %5, -3, !dbg !1576
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1577
  br label %671, !dbg !1578

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1579
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1580 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1584, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.value(metadata i32 %1, metadata !1585, metadata !DIExpression()), !dbg !1589
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1590
  call void @llvm.dbg.value(metadata i8* %3, metadata !1586, metadata !DIExpression()), !dbg !1591
  %4 = icmp eq i8* %3, %0, !dbg !1592
  br i1 %4, label %5, label %71, !dbg !1594

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1595
  call void @llvm.dbg.value(metadata i8* %6, metadata !1587, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i8* %6, metadata !1597, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8* null, metadata !1603, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 85, metadata !1604, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i8 84, metadata !1605, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 70, metadata !1606, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 45, metadata !1607, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 56, metadata !1608, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1625
  %7 = load i8, i8* %6, align 1, !dbg !1626, !tbaa !1126
  %8 = and i8 %7, -33, !dbg !1626
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1626

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1628, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8* null, metadata !1633, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8 84, metadata !1634, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 70, metadata !1635, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 45, metadata !1636, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 56, metadata !1637, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 0, metadata !1639, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8 0, metadata !1640, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8 0, metadata !1641, metadata !DIExpression()), !dbg !1654
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1655
  %11 = load i8, i8* %10, align 1, !dbg !1655, !tbaa !1126
  %12 = and i8 %11, -33, !dbg !1655
  %13 = icmp eq i8 %12, 84, !dbg !1655
  br i1 %13, label %14, label %68, !dbg !1655

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1657, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8* null, metadata !1662, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8 70, metadata !1663, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 45, metadata !1664, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 56, metadata !1665, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i8 0, metadata !1667, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i8 0, metadata !1668, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i8 0, metadata !1669, metadata !DIExpression()), !dbg !1681
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1682
  %16 = load i8, i8* %15, align 1, !dbg !1682, !tbaa !1126
  %17 = and i8 %16, -33, !dbg !1682
  %18 = icmp eq i8 %17, 70, !dbg !1682
  br i1 %18, label %19, label %68, !dbg !1682

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1684, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8* null, metadata !1689, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 45, metadata !1690, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 56, metadata !1691, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 0, metadata !1692, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1693, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8 0, metadata !1694, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i8 0, metadata !1695, metadata !DIExpression()), !dbg !1706
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1707
  %21 = load i8, i8* %20, align 1, !dbg !1707, !tbaa !1126
  %22 = icmp eq i8 %21, 45, !dbg !1707
  br i1 %22, label %23, label %68, !dbg !1709

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* null, metadata !1715, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 56, metadata !1716, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 0, metadata !1719, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1730
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1731
  %25 = load i8, i8* %24, align 1, !dbg !1731, !tbaa !1126
  %26 = icmp eq i8 %25, 56, !dbg !1731
  br i1 %26, label %27, label %68, !dbg !1733

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1734, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* null, metadata !1739, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1752
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1753
  %29 = load i8, i8* %28, align 1, !dbg !1753, !tbaa !1126
  %30 = icmp eq i8 %29, 0, !dbg !1753
  br i1 %30, label %31, label %68, !dbg !1755

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1756, !tbaa !1126
  %33 = icmp eq i8 %32, 96, !dbg !1757
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !1756
  br label %71, !dbg !1758

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1628, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8* null, metadata !1633, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 66, metadata !1634, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 49, metadata !1635, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 56, metadata !1636, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 48, metadata !1637, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 51, metadata !1638, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 48, metadata !1639, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1640, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8 0, metadata !1641, metadata !DIExpression()), !dbg !1771
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1772
  %37 = load i8, i8* %36, align 1, !dbg !1772, !tbaa !1126
  %38 = and i8 %37, -33, !dbg !1772
  %39 = icmp eq i8 %38, 66, !dbg !1772
  br i1 %39, label %40, label %68, !dbg !1772

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1657, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* null, metadata !1662, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 49, metadata !1663, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8 56, metadata !1664, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 48, metadata !1665, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 51, metadata !1666, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 48, metadata !1667, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 0, metadata !1668, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 0, metadata !1669, metadata !DIExpression()), !dbg !1782
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1783
  %42 = load i8, i8* %41, align 1, !dbg !1783, !tbaa !1126
  %43 = icmp eq i8 %42, 49, !dbg !1783
  br i1 %43, label %44, label %68, !dbg !1784

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1684, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8* null, metadata !1689, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 56, metadata !1690, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 48, metadata !1691, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 51, metadata !1692, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 48, metadata !1693, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8 0, metadata !1694, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8 0, metadata !1695, metadata !DIExpression()), !dbg !1793
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1794
  %46 = load i8, i8* %45, align 1, !dbg !1794, !tbaa !1126
  %47 = icmp eq i8 %46, 56, !dbg !1794
  br i1 %47, label %48, label %68, !dbg !1795

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1710, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8* null, metadata !1715, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 48, metadata !1716, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 51, metadata !1717, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 48, metadata !1718, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8 0, metadata !1719, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1803
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1804
  %50 = load i8, i8* %49, align 1, !dbg !1804, !tbaa !1126
  %51 = icmp eq i8 %50, 48, !dbg !1804
  br i1 %51, label %52, label %68, !dbg !1805

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1734, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8* null, metadata !1739, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 51, metadata !1740, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 48, metadata !1741, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1812
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1813
  %54 = load i8, i8* %53, align 1, !dbg !1813, !tbaa !1126
  %55 = icmp eq i8 %54, 51, !dbg !1813
  br i1 %55, label %56, label %68, !dbg !1814

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1815, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8* null, metadata !1820, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 48, metadata !1821, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 0, metadata !1823, metadata !DIExpression()), !dbg !1831
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1832
  %58 = load i8, i8* %57, align 1, !dbg !1832, !tbaa !1126
  %59 = icmp eq i8 %58, 48, !dbg !1832
  br i1 %59, label %60, label %68, !dbg !1834

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1835, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8* null, metadata !1840, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1841, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1849
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1850
  %62 = load i8, i8* %61, align 1, !dbg !1850, !tbaa !1126
  %63 = icmp eq i8 %62, 0, !dbg !1850
  br i1 %63, label %64, label %68, !dbg !1852

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1853, !tbaa !1126
  %66 = icmp eq i8 %65, 96, !dbg !1854
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !1853
  br label %71, !dbg !1855

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1856
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !1857
  br label %71, !dbg !1858

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1859
  ret i8* %72, !dbg !1860
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1865, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i64 %1, metadata !1866, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1867, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %0, metadata !1871, metadata !DIExpression()) #10, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %1, metadata !1876, metadata !DIExpression()) #10, !dbg !1886
  call void @llvm.dbg.value(metadata i64* null, metadata !1877, metadata !DIExpression()) #10, !dbg !1887
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1878, metadata !DIExpression()) #10, !dbg !1888
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1889
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1879, metadata !DIExpression()) #10, !dbg !1890
  %6 = tail call i32* @__errno_location() #17, !dbg !1891
  %7 = load i32, i32* %6, align 4, !dbg !1891, !tbaa !709
  call void @llvm.dbg.value(metadata i32 %7, metadata !1880, metadata !DIExpression()) #10, !dbg !1892
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1893
  %9 = load i32, i32* %8, align 4, !dbg !1893, !tbaa !964
  %10 = or i32 %9, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %10, metadata !1881, metadata !DIExpression()) #10, !dbg !1895
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1896
  %12 = load i32, i32* %11, align 8, !dbg !1896, !tbaa !905
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1897
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1898
  %15 = load i8*, i8** %14, align 8, !dbg !1898, !tbaa !990
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1899
  %17 = load i8*, i8** %16, align 8, !dbg !1899, !tbaa !993
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1900
  %19 = add i64 %18, 1, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %19, metadata !1882, metadata !DIExpression()) #10, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %19, metadata !1903, metadata !DIExpression()) #10, !dbg !1908
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1910
  call void @llvm.dbg.value(metadata i8* %20, metadata !1883, metadata !DIExpression()) #10, !dbg !1911
  %21 = load i32, i32* %11, align 8, !dbg !1912, !tbaa !905
  %22 = load i8*, i8** %14, align 8, !dbg !1913, !tbaa !990
  %23 = load i8*, i8** %16, align 8, !dbg !1914, !tbaa !993
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1915
  store i32 %7, i32* %6, align 4, !dbg !1916, !tbaa !709
  ret i8* %20, !dbg !1917
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1872 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1871, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 %1, metadata !1876, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i64* %2, metadata !1877, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1878, metadata !DIExpression()), !dbg !1921
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1922
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1922
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1879, metadata !DIExpression()), !dbg !1923
  %7 = tail call i32* @__errno_location() #17, !dbg !1924
  %8 = load i32, i32* %7, align 4, !dbg !1924, !tbaa !709
  call void @llvm.dbg.value(metadata i32 %8, metadata !1880, metadata !DIExpression()), !dbg !1925
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1926
  %10 = load i32, i32* %9, align 4, !dbg !1926, !tbaa !964
  %11 = icmp ne i64* %2, null, !dbg !1927
  %12 = xor i1 %11, true, !dbg !1927
  %13 = zext i1 %12 to i32, !dbg !1927
  %14 = or i32 %10, %13, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %14, metadata !1881, metadata !DIExpression()), !dbg !1929
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1930
  %16 = load i32, i32* %15, align 8, !dbg !1930, !tbaa !905
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1931
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1932
  %19 = load i8*, i8** %18, align 8, !dbg !1932, !tbaa !990
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1933
  %21 = load i8*, i8** %20, align 8, !dbg !1933, !tbaa !993
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1934
  %23 = add i64 %22, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %23, metadata !1882, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 %23, metadata !1903, metadata !DIExpression()) #10, !dbg !1937
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1939
  call void @llvm.dbg.value(metadata i8* %24, metadata !1883, metadata !DIExpression()), !dbg !1940
  %25 = load i32, i32* %15, align 8, !dbg !1941, !tbaa !905
  %26 = load i8*, i8** %18, align 8, !dbg !1942, !tbaa !990
  %27 = load i8*, i8** %20, align 8, !dbg !1943, !tbaa !993
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1944
  store i32 %8, i32* %7, align 4, !dbg !1945, !tbaa !709
  br i1 %11, label %29, label %30, !dbg !1946

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1947, !tbaa !1949
  br label %30, !dbg !1951

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1952
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !1953 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1957, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1955, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i32 1, metadata !1956, metadata !DIExpression()), !dbg !1959
  %2 = load i32, i32* @nslots, align 4, !dbg !1960, !tbaa !709
  %3 = icmp sgt i32 %2, 1, !dbg !1963
  br i1 %3, label %4, label %12, !dbg !1964

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1956, metadata !DIExpression()), !dbg !1959
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1965
  %7 = load i8*, i8** %6, align 8, !dbg !1965, !tbaa !1966
  tail call void @free(i8* %7) #10, !dbg !1968
  %8 = add nuw nsw i64 %5, 1, !dbg !1969
  call void @llvm.dbg.value(metadata i32 undef, metadata !1956, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1959
  %9 = load i32, i32* @nslots, align 4, !dbg !1960, !tbaa !709
  %10 = sext i32 %9 to i64, !dbg !1963
  %11 = icmp slt i64 %8, %10, !dbg !1963
  br i1 %11, label %4, label %12, !dbg !1964, !llvm.loop !1970

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1972
  %14 = load i8*, i8** %13, align 8, !dbg !1972, !tbaa !1966
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1974
  br i1 %15, label %17, label %16, !dbg !1975

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !1976
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1978, !tbaa !1979
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1980, !tbaa !1966
  br label %17, !dbg !1981

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1982
  br i1 %18, label %21, label %19, !dbg !1984

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1985
  tail call void @free(i8* %20) #10, !dbg !1987
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1988, !tbaa !618
  br label %21, !dbg !1989

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1990, !tbaa !709
  ret void, !dbg !1991
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !1992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* %1, metadata !1997, metadata !DIExpression()), !dbg !1999
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2000
  ret i8* %3, !dbg !2001
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2002 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2006, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8* %1, metadata !2007, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i64 %2, metadata !2008, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2009, metadata !DIExpression()), !dbg !2024
  %5 = tail call i32* @__errno_location() #17, !dbg !2025
  %6 = load i32, i32* %5, align 4, !dbg !2025, !tbaa !709
  call void @llvm.dbg.value(metadata i32 %6, metadata !2010, metadata !DIExpression()), !dbg !2026
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2027, !tbaa !618
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2011, metadata !DIExpression()), !dbg !2028
  %8 = icmp slt i32 %0, 0, !dbg !2029
  br i1 %8, label %9, label %10, !dbg !2031

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2032
  unreachable, !dbg !2032

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2033, !tbaa !709
  %12 = icmp sgt i32 %11, %0, !dbg !2034
  br i1 %12, label %34, label %13, !dbg !2035

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2036
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2015, metadata !DIExpression()), !dbg !2037
  %15 = icmp eq i32 %0, 2147483647, !dbg !2038
  br i1 %15, label %16, label %17, !dbg !2040

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2041
  unreachable, !dbg !2041

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2042
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2042
  %20 = add nsw i32 %0, 1, !dbg !2043
  %21 = sext i32 %20 to i64, !dbg !2044
  %22 = shl nsw i64 %21, 4, !dbg !2045
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2046
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2046
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2011, metadata !DIExpression()), !dbg !2028
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2047, !tbaa !618
  br i1 %14, label %25, label %26, !dbg !2048

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2049, !tbaa.struct !2051
  br label %26, !dbg !2052

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2053, !tbaa !709
  %28 = sext i32 %27 to i64, !dbg !2054
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2054
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2055
  %31 = sub nsw i32 %20, %27, !dbg !2056
  %32 = sext i32 %31 to i64, !dbg !2057
  %33 = shl nsw i64 %32, 4, !dbg !2058
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2055
  store i32 %20, i32* @nslots, align 4, !dbg !2059, !tbaa !709
  br label %34, !dbg !2060

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2061
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2011, metadata !DIExpression()), !dbg !2028
  %36 = sext i32 %0 to i64, !dbg !2062
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2063
  %38 = load i64, i64* %37, align 8, !dbg !2063, !tbaa !1979
  call void @llvm.dbg.value(metadata i64 %38, metadata !2016, metadata !DIExpression()), !dbg !2064
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2065
  %40 = load i8*, i8** %39, align 8, !dbg !2065, !tbaa !1966
  call void @llvm.dbg.value(metadata i8* %40, metadata !2018, metadata !DIExpression()), !dbg !2066
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2067
  %42 = load i32, i32* %41, align 4, !dbg !2067, !tbaa !964
  %43 = or i32 %42, 1, !dbg !2068
  call void @llvm.dbg.value(metadata i32 %43, metadata !2019, metadata !DIExpression()), !dbg !2069
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2070
  %45 = load i32, i32* %44, align 8, !dbg !2070, !tbaa !905
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2071
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2072
  %48 = load i8*, i8** %47, align 8, !dbg !2072, !tbaa !990
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2073
  %50 = load i8*, i8** %49, align 8, !dbg !2073, !tbaa !993
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2074
  call void @llvm.dbg.value(metadata i64 %51, metadata !2020, metadata !DIExpression()), !dbg !2075
  %52 = icmp ugt i64 %38, %51, !dbg !2076
  br i1 %52, label %63, label %53, !dbg !2078

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %54, metadata !2016, metadata !DIExpression()), !dbg !2064
  store i64 %54, i64* %37, align 8, !dbg !2081, !tbaa !1979
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2082
  br i1 %55, label %57, label %56, !dbg !2084

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2085
  br label %57, !dbg !2085

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1903, metadata !DIExpression()) #10, !dbg !2086
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2088
  call void @llvm.dbg.value(metadata i8* %58, metadata !2018, metadata !DIExpression()), !dbg !2066
  store i8* %58, i8** %39, align 8, !dbg !2089, !tbaa !1966
  %59 = load i32, i32* %44, align 8, !dbg !2090, !tbaa !905
  %60 = load i8*, i8** %47, align 8, !dbg !2091, !tbaa !990
  %61 = load i8*, i8** %49, align 8, !dbg !2092, !tbaa !993
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2093
  br label %63, !dbg !2094

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2095
  call void @llvm.dbg.value(metadata i8* %64, metadata !2018, metadata !DIExpression()), !dbg !2066
  store i32 %6, i32* %5, align 4, !dbg !2096, !tbaa !709
  ret i8* %64, !dbg !2097
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2098 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2102, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %1, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i64 %2, metadata !2104, metadata !DIExpression()), !dbg !2107
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2108
  ret i8* %4, !dbg !2109
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2110 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2114, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i32 0, metadata !1996, metadata !DIExpression()) #10, !dbg !2116
  call void @llvm.dbg.value(metadata i8* %0, metadata !1997, metadata !DIExpression()) #10, !dbg !2118
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2119
  ret i8* %2, !dbg !2120
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2121 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i64 %1, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 0, metadata !2102, metadata !DIExpression()) #10, !dbg !2129
  call void @llvm.dbg.value(metadata i8* %0, metadata !2103, metadata !DIExpression()) #10, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %1, metadata !2104, metadata !DIExpression()) #10, !dbg !2132
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2133
  ret i8* %3, !dbg !2134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2135 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2139, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i32 %1, metadata !2140, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %2, metadata !2141, metadata !DIExpression()), !dbg !2145
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2146
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2146
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2142, metadata !DIExpression(DW_OP_deref)), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %1, metadata !2148, metadata !DIExpression()) #10, !dbg !2154
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2156, !alias.scope !2157
  %6 = icmp eq i32 %1, 10, !dbg !2160
  br i1 %6, label %7, label %8, !dbg !2162

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2163, !noalias !2157
  unreachable, !dbg !2163

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2164
  store i32 %1, i32* %9, align 8, !dbg !2165, !tbaa !905, !alias.scope !2157
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2142, metadata !DIExpression(DW_OP_deref)), !dbg !2147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2153, metadata !DIExpression(DW_OP_deref)), !dbg !2156
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2166
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2167
  ret i8* %10, !dbg !2168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2169 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2173, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 %1, metadata !2174, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i8* %2, metadata !2175, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %3, metadata !2176, metadata !DIExpression()), !dbg !2181
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2182
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2182
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2177, metadata !DIExpression(DW_OP_deref)), !dbg !2183
  call void @llvm.dbg.value(metadata i32 %1, metadata !2148, metadata !DIExpression()) #10, !dbg !2184
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2186, !alias.scope !2187
  %7 = icmp eq i32 %1, 10, !dbg !2190
  br i1 %7, label %8, label %9, !dbg !2191

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2192, !noalias !2187
  unreachable, !dbg !2192

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2193
  store i32 %1, i32* %10, align 8, !dbg !2194, !tbaa !905, !alias.scope !2187
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2177, metadata !DIExpression(DW_OP_deref)), !dbg !2183
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2153, metadata !DIExpression(DW_OP_deref)), !dbg !2186
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2195
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2196
  ret i8* %11, !dbg !2197
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2198 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8* %1, metadata !2203, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 0, metadata !2139, metadata !DIExpression()) #10, !dbg !2206
  call void @llvm.dbg.value(metadata i32 %0, metadata !2140, metadata !DIExpression()) #10, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %1, metadata !2141, metadata !DIExpression()) #10, !dbg !2209
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2210
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2142, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %0, metadata !2148, metadata !DIExpression()) #10, !dbg !2212
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2214, !alias.scope !2215
  %5 = icmp eq i32 %0, 10, !dbg !2218
  br i1 %5, label %6, label %7, !dbg !2219

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2220, !noalias !2215
  unreachable, !dbg !2220

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2221
  store i32 %0, i32* %8, align 8, !dbg !2222, !tbaa !905, !alias.scope !2215
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2142, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2211
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2153, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2214
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2223
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2224
  ret i8* %9, !dbg !2225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2226 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2230, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8* %1, metadata !2231, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %2, metadata !2232, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 0, metadata !2173, metadata !DIExpression()) #10, !dbg !2236
  call void @llvm.dbg.value(metadata i32 %0, metadata !2174, metadata !DIExpression()) #10, !dbg !2238
  call void @llvm.dbg.value(metadata i8* %1, metadata !2175, metadata !DIExpression()) #10, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %2, metadata !2176, metadata !DIExpression()) #10, !dbg !2240
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2241
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2177, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %0, metadata !2148, metadata !DIExpression()) #10, !dbg !2243
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2245, !alias.scope !2246
  %6 = icmp eq i32 %0, 10, !dbg !2249
  br i1 %6, label %7, label %8, !dbg !2250

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2251, !noalias !2246
  unreachable, !dbg !2251

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2252
  store i32 %0, i32* %9, align 8, !dbg !2253, !tbaa !905, !alias.scope !2246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2177, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2242
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2153, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2245
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2255
  ret i8* %10, !dbg !2256
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2257 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i64 %1, metadata !2262, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 %2, metadata !2263, metadata !DIExpression()), !dbg !2267
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2268
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2268
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2269, !tbaa.struct !2270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2264, metadata !DIExpression(DW_OP_deref)), !dbg !2271
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !924, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 %2, metadata !925, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8 %2, metadata !927, metadata !DIExpression()), !dbg !2276
  %6 = lshr i8 %2, 5, !dbg !2277
  %7 = zext i8 %6 to i64, !dbg !2277
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2278
  call void @llvm.dbg.value(metadata i32* %8, metadata !928, metadata !DIExpression()), !dbg !2279
  %9 = and i8 %2, 31, !dbg !2280
  %10 = zext i8 %9 to i32, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %10, metadata !930, metadata !DIExpression()), !dbg !2281
  %11 = load i32, i32* %8, align 4, !dbg !2282, !tbaa !709
  %12 = lshr i32 %11, %10, !dbg !2283
  %13 = and i32 %12, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %13, metadata !931, metadata !DIExpression()), !dbg !2285
  %14 = xor i32 %13, 1, !dbg !2286
  %15 = shl i32 %14, %10, !dbg !2287
  %16 = xor i32 %15, %11, !dbg !2288
  store i32 %16, i32* %8, align 4, !dbg !2288, !tbaa !709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2264, metadata !DIExpression(DW_OP_deref)), !dbg !2271
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2290
  ret i8* %17, !dbg !2291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2292 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %1, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()) #10, !dbg !2300
  call void @llvm.dbg.value(metadata i64 -1, metadata !2262, metadata !DIExpression()) #10, !dbg !2302
  call void @llvm.dbg.value(metadata i8 %1, metadata !2263, metadata !DIExpression()) #10, !dbg !2303
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2304
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2305, !tbaa.struct !2270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2264, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2306
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !924, metadata !DIExpression()) #10, !dbg !2307
  call void @llvm.dbg.value(metadata i8 %1, metadata !925, metadata !DIExpression()) #10, !dbg !2309
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()) #10, !dbg !2310
  call void @llvm.dbg.value(metadata i8 %1, metadata !927, metadata !DIExpression()) #10, !dbg !2311
  %5 = lshr i8 %1, 5, !dbg !2312
  %6 = zext i8 %5 to i64, !dbg !2312
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2313
  call void @llvm.dbg.value(metadata i32* %7, metadata !928, metadata !DIExpression()) #10, !dbg !2314
  %8 = and i8 %1, 31, !dbg !2315
  %9 = zext i8 %8 to i32, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %9, metadata !930, metadata !DIExpression()) #10, !dbg !2316
  %10 = load i32, i32* %7, align 4, !dbg !2317, !tbaa !709
  %11 = lshr i32 %10, %9, !dbg !2318
  %12 = and i32 %11, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %12, metadata !931, metadata !DIExpression()) #10, !dbg !2320
  %13 = xor i32 %12, 1, !dbg !2321
  %14 = shl i32 %13, %9, !dbg !2322
  %15 = xor i32 %14, %10, !dbg !2323
  store i32 %15, i32* %7, align 4, !dbg !2323, !tbaa !709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2264, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2306
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2324
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2325
  ret i8* %16, !dbg !2326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2327 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2329, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()) #10, !dbg !2331
  call void @llvm.dbg.value(metadata i8 58, metadata !2297, metadata !DIExpression()) #10, !dbg !2333
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()) #10, !dbg !2334
  call void @llvm.dbg.value(metadata i64 -1, metadata !2262, metadata !DIExpression()) #10, !dbg !2336
  call void @llvm.dbg.value(metadata i8 58, metadata !2263, metadata !DIExpression()) #10, !dbg !2337
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2338
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2339, !tbaa.struct !2270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2264, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !924, metadata !DIExpression()) #10, !dbg !2341
  call void @llvm.dbg.value(metadata i8 58, metadata !925, metadata !DIExpression()) #10, !dbg !2343
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()) #10, !dbg !2344
  call void @llvm.dbg.value(metadata i8 58, metadata !927, metadata !DIExpression()) #10, !dbg !2345
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2346
  call void @llvm.dbg.value(metadata i32* %4, metadata !928, metadata !DIExpression()) #10, !dbg !2347
  call void @llvm.dbg.value(metadata i32 26, metadata !930, metadata !DIExpression()) #10, !dbg !2348
  %5 = load i32, i32* %4, align 4, !dbg !2349, !tbaa !709
  %6 = or i32 %5, 67108864, !dbg !2350
  store i32 %6, i32* %4, align 4, !dbg !2350, !tbaa !709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2264, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2340
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2351
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2352
  ret i8* %7, !dbg !2353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2354 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %1, metadata !2357, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i8* %0, metadata !2261, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %1, metadata !2262, metadata !DIExpression()) #10, !dbg !2362
  call void @llvm.dbg.value(metadata i8 58, metadata !2263, metadata !DIExpression()) #10, !dbg !2363
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2364
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2365, !tbaa.struct !2270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2264, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2366
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !924, metadata !DIExpression()) #10, !dbg !2367
  call void @llvm.dbg.value(metadata i8 58, metadata !925, metadata !DIExpression()) #10, !dbg !2369
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()) #10, !dbg !2370
  call void @llvm.dbg.value(metadata i8 58, metadata !927, metadata !DIExpression()) #10, !dbg !2371
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2372
  call void @llvm.dbg.value(metadata i32* %5, metadata !928, metadata !DIExpression()) #10, !dbg !2373
  call void @llvm.dbg.value(metadata i32 26, metadata !930, metadata !DIExpression()) #10, !dbg !2374
  %6 = load i32, i32* %5, align 4, !dbg !2375, !tbaa !709
  %7 = or i32 %6, 67108864, !dbg !2376
  store i32 %7, i32* %5, align 4, !dbg !2376, !tbaa !709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2264, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2366
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2378
  ret i8* %8, !dbg !2379
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2380 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2153, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %0, metadata !2382, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 %1, metadata !2383, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %2, metadata !2384, metadata !DIExpression()), !dbg !2390
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2391
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2391
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2392
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %1, metadata !2148, metadata !DIExpression()) #10, !dbg !2393
  call void @llvm.dbg.value(metadata i32 0, metadata !2153, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2386
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2386, !alias.scope !2394
  %8 = icmp eq i32 %1, 10, !dbg !2397
  br i1 %8, label %9, label %10, !dbg !2398

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2399, !noalias !2394
  unreachable, !dbg !2399

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2153, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2386
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2392
  store i32 %1, i32* %11, align 8, !dbg !2392
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2392
  %13 = bitcast i32* %12 to i8*, !dbg !2392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2392
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2385, metadata !DIExpression(DW_OP_deref)), !dbg !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !924, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 58, metadata !925, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 1, metadata !926, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8 58, metadata !927, metadata !DIExpression()), !dbg !2405
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2406
  call void @llvm.dbg.value(metadata i32* %14, metadata !928, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 26, metadata !930, metadata !DIExpression()), !dbg !2408
  %15 = load i32, i32* %14, align 4, !dbg !2409, !tbaa !709
  %16 = or i32 %15, 67108864, !dbg !2410
  store i32 %16, i32* %14, align 4, !dbg !2410, !tbaa !709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2385, metadata !DIExpression(DW_OP_deref)), !dbg !2400
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2412
  ret i8* %17, !dbg !2413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2414 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %1, metadata !2419, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i8* %2, metadata !2420, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %3, metadata !2421, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()) #10, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %1, metadata !2431, metadata !DIExpression()) #10, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %2, metadata !2432, metadata !DIExpression()) #10, !dbg !2439
  call void @llvm.dbg.value(metadata i8* %3, metadata !2433, metadata !DIExpression()) #10, !dbg !2440
  call void @llvm.dbg.value(metadata i64 -1, metadata !2434, metadata !DIExpression()) #10, !dbg !2441
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2442
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2442
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2443, !tbaa.struct !2270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2435, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2444
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()) #10, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %1, metadata !973, metadata !DIExpression()) #10, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %2, metadata !974, metadata !DIExpression()) #10, !dbg !2448
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()) #10, !dbg !2445
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2449
  store i32 10, i32* %7, align 8, !dbg !2450, !tbaa !905
  %8 = icmp ne i8* %1, null, !dbg !2451
  %9 = icmp ne i8* %2, null, !dbg !2452
  %10 = and i1 %8, %9, !dbg !2453
  br i1 %10, label %12, label %11, !dbg !2453

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2454
  unreachable, !dbg !2454

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2455
  store i8* %1, i8** %13, align 8, !dbg !2456, !tbaa !990
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2457
  store i8* %2, i8** %14, align 8, !dbg !2458, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2435, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2444
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2459
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2460
  ret i8* %15, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2427 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8* %1, metadata !2431, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* %2, metadata !2432, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i8* %3, metadata !2433, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %4, metadata !2434, metadata !DIExpression()), !dbg !2466
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2467
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2468, !tbaa.struct !2270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2435, metadata !DIExpression(DW_OP_deref)), !dbg !2469
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !972, metadata !DIExpression()) #10, !dbg !2470
  call void @llvm.dbg.value(metadata i8* %1, metadata !973, metadata !DIExpression()) #10, !dbg !2472
  call void @llvm.dbg.value(metadata i8* %2, metadata !974, metadata !DIExpression()) #10, !dbg !2473
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !972, metadata !DIExpression()) #10, !dbg !2470
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2474
  store i32 10, i32* %8, align 8, !dbg !2475, !tbaa !905
  %9 = icmp ne i8* %1, null, !dbg !2476
  %10 = icmp ne i8* %2, null, !dbg !2477
  %11 = and i1 %9, %10, !dbg !2478
  br i1 %11, label %13, label %12, !dbg !2478

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2479
  unreachable, !dbg !2479

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2480
  store i8* %1, i8** %14, align 8, !dbg !2481, !tbaa !990
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2482
  store i8* %2, i8** %15, align 8, !dbg !2483, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2435, metadata !DIExpression(DW_OP_deref)), !dbg !2469
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2484
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2485
  ret i8* %16, !dbg !2486
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2487 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8* %1, metadata !2492, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %2, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()) #10, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %0, metadata !2419, metadata !DIExpression()) #10, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %1, metadata !2420, metadata !DIExpression()) #10, !dbg !2500
  call void @llvm.dbg.value(metadata i8* %2, metadata !2421, metadata !DIExpression()) #10, !dbg !2501
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()) #10, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %0, metadata !2431, metadata !DIExpression()) #10, !dbg !2504
  call void @llvm.dbg.value(metadata i8* %1, metadata !2432, metadata !DIExpression()) #10, !dbg !2505
  call void @llvm.dbg.value(metadata i8* %2, metadata !2433, metadata !DIExpression()) #10, !dbg !2506
  call void @llvm.dbg.value(metadata i64 -1, metadata !2434, metadata !DIExpression()) #10, !dbg !2507
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2508
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2509, !tbaa.struct !2270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2435, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2510
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !972, metadata !DIExpression()) #10, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %0, metadata !973, metadata !DIExpression()) #10, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %1, metadata !974, metadata !DIExpression()) #10, !dbg !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !972, metadata !DIExpression()) #10, !dbg !2511
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2515
  store i32 10, i32* %6, align 8, !dbg !2516, !tbaa !905
  %7 = icmp ne i8* %0, null, !dbg !2517
  %8 = icmp ne i8* %1, null, !dbg !2518
  %9 = and i1 %7, %8, !dbg !2519
  br i1 %9, label %11, label %10, !dbg !2519

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2520
  unreachable, !dbg !2520

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2521
  store i8* %0, i8** %12, align 8, !dbg !2522, !tbaa !990
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2523
  store i8* %1, i8** %13, align 8, !dbg !2524, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2435, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2510
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2525
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2526
  ret i8* %14, !dbg !2527
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2528 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8* %1, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* %2, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i64 %3, metadata !2535, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()) #10, !dbg !2540
  call void @llvm.dbg.value(metadata i8* %0, metadata !2431, metadata !DIExpression()) #10, !dbg !2542
  call void @llvm.dbg.value(metadata i8* %1, metadata !2432, metadata !DIExpression()) #10, !dbg !2543
  call void @llvm.dbg.value(metadata i8* %2, metadata !2433, metadata !DIExpression()) #10, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %3, metadata !2434, metadata !DIExpression()) #10, !dbg !2545
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2546
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2547, !tbaa.struct !2270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2435, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2548
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()) #10, !dbg !2549
  call void @llvm.dbg.value(metadata i8* %0, metadata !973, metadata !DIExpression()) #10, !dbg !2551
  call void @llvm.dbg.value(metadata i8* %1, metadata !974, metadata !DIExpression()) #10, !dbg !2552
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !972, metadata !DIExpression()) #10, !dbg !2549
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2553
  store i32 10, i32* %7, align 8, !dbg !2554, !tbaa !905
  %8 = icmp ne i8* %0, null, !dbg !2555
  %9 = icmp ne i8* %1, null, !dbg !2556
  %10 = and i1 %8, %9, !dbg !2557
  br i1 %10, label %12, label %11, !dbg !2557

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2558
  unreachable, !dbg !2558

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2559
  store i8* %0, i8** %13, align 8, !dbg !2560, !tbaa !990
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2561
  store i8* %1, i8** %14, align 8, !dbg !2562, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2435, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2548
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2563
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2564
  ret i8* %15, !dbg !2565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2566 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2570, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8* %1, metadata !2571, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %2, metadata !2572, metadata !DIExpression()), !dbg !2575
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2576
  ret i8* %4, !dbg !2577
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %1, metadata !2583, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 0, metadata !2570, metadata !DIExpression()) #10, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %0, metadata !2571, metadata !DIExpression()) #10, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %1, metadata !2572, metadata !DIExpression()) #10, !dbg !2589
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2590
  ret i8* %3, !dbg !2591
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2592 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8* %1, metadata !2597, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i32 %0, metadata !2570, metadata !DIExpression()) #10, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %1, metadata !2571, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.dbg.value(metadata i64 -1, metadata !2572, metadata !DIExpression()) #10, !dbg !2603
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2604
  ret i8* %3, !dbg !2605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2606 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %0, metadata !2597, metadata !DIExpression()) #10, !dbg !2614
  call void @llvm.dbg.value(metadata i32 0, metadata !2570, metadata !DIExpression()) #10, !dbg !2615
  call void @llvm.dbg.value(metadata i8* %0, metadata !2571, metadata !DIExpression()) #10, !dbg !2617
  call void @llvm.dbg.value(metadata i64 -1, metadata !2572, metadata !DIExpression()) #10, !dbg !2618
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2619
  ret i8* %2, !dbg !2620
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2621 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2681, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %1, metadata !2682, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i8* %2, metadata !2683, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata i8* %3, metadata !2684, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8** %4, metadata !2685, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %5, metadata !2686, metadata !DIExpression()), !dbg !2692
  %7 = icmp eq i8* %1, null, !dbg !2693
  br i1 %7, label %10, label %8, !dbg !2695

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2696
  br label %12, !dbg !2696

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.79, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2697
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.80, i64 0, i64 0), i32 5) #10, !dbg !2698
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2698
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.81, i64 0, i64 0), i32 5) #10, !dbg !2699
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2699
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ], !dbg !2700

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2701
  unreachable, !dbg !2701

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.82, i64 0, i64 0), i32 5) #10, !dbg !2703
  %20 = load i8*, i8** %4, align 8, !dbg !2703, !tbaa !618
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2703
  br label %146, !dbg !2704

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.83, i64 0, i64 0), i32 5) #10, !dbg !2705
  %24 = load i8*, i8** %4, align 8, !dbg !2705, !tbaa !618
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2705
  %26 = load i8*, i8** %25, align 8, !dbg !2705, !tbaa !618
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2705
  br label %146, !dbg !2706

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.84, i64 0, i64 0), i32 5) #10, !dbg !2707
  %30 = load i8*, i8** %4, align 8, !dbg !2707, !tbaa !618
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2707
  %32 = load i8*, i8** %31, align 8, !dbg !2707, !tbaa !618
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2707
  %34 = load i8*, i8** %33, align 8, !dbg !2707, !tbaa !618
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2707
  br label %146, !dbg !2708

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.85, i64 0, i64 0), i32 5) #10, !dbg !2709
  %38 = load i8*, i8** %4, align 8, !dbg !2709, !tbaa !618
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2709
  %40 = load i8*, i8** %39, align 8, !dbg !2709, !tbaa !618
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2709
  %42 = load i8*, i8** %41, align 8, !dbg !2709, !tbaa !618
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2709
  %44 = load i8*, i8** %43, align 8, !dbg !2709, !tbaa !618
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2709
  br label %146, !dbg !2710

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.86, i64 0, i64 0), i32 5) #10, !dbg !2711
  %48 = load i8*, i8** %4, align 8, !dbg !2711, !tbaa !618
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2711
  %50 = load i8*, i8** %49, align 8, !dbg !2711, !tbaa !618
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2711
  %52 = load i8*, i8** %51, align 8, !dbg !2711, !tbaa !618
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2711
  %54 = load i8*, i8** %53, align 8, !dbg !2711, !tbaa !618
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2711
  %56 = load i8*, i8** %55, align 8, !dbg !2711, !tbaa !618
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2711
  br label %146, !dbg !2712

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.87, i64 0, i64 0), i32 5) #10, !dbg !2713
  %60 = load i8*, i8** %4, align 8, !dbg !2713, !tbaa !618
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2713
  %62 = load i8*, i8** %61, align 8, !dbg !2713, !tbaa !618
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2713
  %64 = load i8*, i8** %63, align 8, !dbg !2713, !tbaa !618
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2713
  %66 = load i8*, i8** %65, align 8, !dbg !2713, !tbaa !618
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2713
  %68 = load i8*, i8** %67, align 8, !dbg !2713, !tbaa !618
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2713
  %70 = load i8*, i8** %69, align 8, !dbg !2713, !tbaa !618
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2713
  br label %146, !dbg !2714

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.88, i64 0, i64 0), i32 5) #10, !dbg !2715
  %74 = load i8*, i8** %4, align 8, !dbg !2715, !tbaa !618
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2715
  %76 = load i8*, i8** %75, align 8, !dbg !2715, !tbaa !618
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2715
  %78 = load i8*, i8** %77, align 8, !dbg !2715, !tbaa !618
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2715
  %80 = load i8*, i8** %79, align 8, !dbg !2715, !tbaa !618
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2715
  %82 = load i8*, i8** %81, align 8, !dbg !2715, !tbaa !618
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2715
  %84 = load i8*, i8** %83, align 8, !dbg !2715, !tbaa !618
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2715
  %86 = load i8*, i8** %85, align 8, !dbg !2715, !tbaa !618
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2715
  br label %146, !dbg !2716

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.89, i64 0, i64 0), i32 5) #10, !dbg !2717
  %90 = load i8*, i8** %4, align 8, !dbg !2717, !tbaa !618
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2717
  %92 = load i8*, i8** %91, align 8, !dbg !2717, !tbaa !618
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2717
  %94 = load i8*, i8** %93, align 8, !dbg !2717, !tbaa !618
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2717
  %96 = load i8*, i8** %95, align 8, !dbg !2717, !tbaa !618
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2717
  %98 = load i8*, i8** %97, align 8, !dbg !2717, !tbaa !618
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2717
  %100 = load i8*, i8** %99, align 8, !dbg !2717, !tbaa !618
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2717
  %102 = load i8*, i8** %101, align 8, !dbg !2717, !tbaa !618
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2717
  %104 = load i8*, i8** %103, align 8, !dbg !2717, !tbaa !618
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2717
  br label %146, !dbg !2718

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.90, i64 0, i64 0), i32 5) #10, !dbg !2719
  %108 = load i8*, i8** %4, align 8, !dbg !2719, !tbaa !618
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2719
  %110 = load i8*, i8** %109, align 8, !dbg !2719, !tbaa !618
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2719
  %112 = load i8*, i8** %111, align 8, !dbg !2719, !tbaa !618
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2719
  %114 = load i8*, i8** %113, align 8, !dbg !2719, !tbaa !618
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2719
  %116 = load i8*, i8** %115, align 8, !dbg !2719, !tbaa !618
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2719
  %118 = load i8*, i8** %117, align 8, !dbg !2719, !tbaa !618
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2719
  %120 = load i8*, i8** %119, align 8, !dbg !2719, !tbaa !618
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2719
  %122 = load i8*, i8** %121, align 8, !dbg !2719, !tbaa !618
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2719
  %124 = load i8*, i8** %123, align 8, !dbg !2719, !tbaa !618
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2719
  br label %146, !dbg !2720

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.91, i64 0, i64 0), i32 5) #10, !dbg !2721
  %128 = load i8*, i8** %4, align 8, !dbg !2721, !tbaa !618
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2721
  %130 = load i8*, i8** %129, align 8, !dbg !2721, !tbaa !618
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2721
  %132 = load i8*, i8** %131, align 8, !dbg !2721, !tbaa !618
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2721
  %134 = load i8*, i8** %133, align 8, !dbg !2721, !tbaa !618
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2721
  %136 = load i8*, i8** %135, align 8, !dbg !2721, !tbaa !618
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2721
  %138 = load i8*, i8** %137, align 8, !dbg !2721, !tbaa !618
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2721
  %140 = load i8*, i8** %139, align 8, !dbg !2721, !tbaa !618
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2721
  %142 = load i8*, i8** %141, align 8, !dbg !2721, !tbaa !618
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2721
  %144 = load i8*, i8** %143, align 8, !dbg !2721, !tbaa !618
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2721
  br label %146, !dbg !2722

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2724 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2728, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8* %2, metadata !2730, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* %3, metadata !2731, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8** %4, metadata !2732, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 0, metadata !2733, metadata !DIExpression()), !dbg !2739
  br label %6, !dbg !2740

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2742
  call void @llvm.dbg.value(metadata i64 %7, metadata !2733, metadata !DIExpression()), !dbg !2739
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2744
  %9 = load i8*, i8** %8, align 8, !dbg !2744, !tbaa !618
  %10 = icmp eq i8* %9, null, !dbg !2745
  %11 = add i64 %7, 1, !dbg !2746
  call void @llvm.dbg.value(metadata i64 %11, metadata !2733, metadata !DIExpression()), !dbg !2739
  br i1 %10, label %12, label %6, !dbg !2745, !llvm.loop !2747

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2733, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %7, metadata !2733, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %7, metadata !2733, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %7, metadata !2733, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %7, metadata !2733, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %7, metadata !2733, metadata !DIExpression()), !dbg !2739
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2749
  ret void, !dbg !2750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2751 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2762, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i8* %1, metadata !2763, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %2, metadata !2764, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %3, metadata !2765, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2766, metadata !DIExpression()), !dbg !2774
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2775
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2775
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2768, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 0, metadata !2767, metadata !DIExpression()), !dbg !2777
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2767, metadata !DIExpression()), !dbg !2777
  %11 = load i32, i32* %8, align 8, !dbg !2778
  %12 = icmp ult i32 %11, 41, !dbg !2778
  br i1 %12, label %13, label %18, !dbg !2778

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2778
  %15 = sext i32 %11 to i64, !dbg !2778
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2778
  %17 = add i32 %11, 8, !dbg !2778
  store i32 %17, i32* %8, align 8, !dbg !2778
  br label %21, !dbg !2778

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2778
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2778
  store i8* %20, i8** %10, align 8, !dbg !2778
  br label %21, !dbg !2778

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2778
  %25 = load i8*, i8** %24, align 8, !dbg !2778
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2781
  store i8* %25, i8** %26, align 16, !dbg !2782, !tbaa !618
  %27 = icmp eq i8* %25, null, !dbg !2783
  br i1 %27, label %30, label %28, !dbg !2784

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 1, metadata !2767, metadata !DIExpression()), !dbg !2777
  %29 = icmp ult i32 %22, 41, !dbg !2778
  br i1 %29, label %35, label %32, !dbg !2778

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2785
  call void @llvm.dbg.value(metadata i64 %31, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 %31, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2786
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2787
  ret void, !dbg !2787

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2778
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2778
  store i8* %34, i8** %10, align 8, !dbg !2778
  br label %40, !dbg !2778

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2778
  %37 = sext i32 %22 to i64, !dbg !2778
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2778
  %39 = add i32 %22, 8, !dbg !2778
  store i32 %39, i32* %8, align 8, !dbg !2778
  br label %40, !dbg !2778

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2778
  %44 = load i8*, i8** %43, align 8, !dbg !2778
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2781
  store i8* %44, i8** %45, align 8, !dbg !2782, !tbaa !618
  %46 = icmp eq i8* %44, null, !dbg !2783
  br i1 %46, label %30, label %47, !dbg !2784

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 2, metadata !2767, metadata !DIExpression()), !dbg !2777
  %48 = icmp ult i32 %41, 41, !dbg !2778
  br i1 %48, label %52, label %49, !dbg !2778

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2778
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2778
  store i8* %51, i8** %10, align 8, !dbg !2778
  br label %57, !dbg !2778

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2778
  %54 = sext i32 %41 to i64, !dbg !2778
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2778
  %56 = add i32 %41, 8, !dbg !2778
  store i32 %56, i32* %8, align 8, !dbg !2778
  br label %57, !dbg !2778

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2778
  %61 = load i8*, i8** %60, align 8, !dbg !2778
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2781
  store i8* %61, i8** %62, align 16, !dbg !2782, !tbaa !618
  %63 = icmp eq i8* %61, null, !dbg !2783
  br i1 %63, label %30, label %64, !dbg !2784

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 3, metadata !2767, metadata !DIExpression()), !dbg !2777
  %65 = icmp ult i32 %58, 41, !dbg !2778
  br i1 %65, label %69, label %66, !dbg !2778

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2778
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2778
  store i8* %68, i8** %10, align 8, !dbg !2778
  br label %74, !dbg !2778

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2778
  %71 = sext i32 %58 to i64, !dbg !2778
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2778
  %73 = add i32 %58, 8, !dbg !2778
  store i32 %73, i32* %8, align 8, !dbg !2778
  br label %74, !dbg !2778

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2778
  %78 = load i8*, i8** %77, align 8, !dbg !2778
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2781
  store i8* %78, i8** %79, align 8, !dbg !2782, !tbaa !618
  %80 = icmp eq i8* %78, null, !dbg !2783
  br i1 %80, label %30, label %81, !dbg !2784

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 4, metadata !2767, metadata !DIExpression()), !dbg !2777
  %82 = icmp ult i32 %75, 41, !dbg !2778
  br i1 %82, label %86, label %83, !dbg !2778

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2778
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2778
  store i8* %85, i8** %10, align 8, !dbg !2778
  br label %91, !dbg !2778

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2778
  %88 = sext i32 %75 to i64, !dbg !2778
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2778
  %90 = add i32 %75, 8, !dbg !2778
  store i32 %90, i32* %8, align 8, !dbg !2778
  br label %91, !dbg !2778

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2778
  %95 = load i8*, i8** %94, align 8, !dbg !2778
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2781
  store i8* %95, i8** %96, align 16, !dbg !2782, !tbaa !618
  %97 = icmp eq i8* %95, null, !dbg !2783
  br i1 %97, label %30, label %98, !dbg !2784

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 5, metadata !2767, metadata !DIExpression()), !dbg !2777
  %99 = icmp ult i32 %92, 41, !dbg !2778
  br i1 %99, label %103, label %100, !dbg !2778

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2778
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2778
  store i8* %102, i8** %10, align 8, !dbg !2778
  br label %108, !dbg !2778

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2778
  %105 = sext i32 %92 to i64, !dbg !2778
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2778
  %107 = add i32 %92, 8, !dbg !2778
  store i32 %107, i32* %8, align 8, !dbg !2778
  br label %108, !dbg !2778

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2778
  %111 = load i8*, i8** %110, align 8, !dbg !2778
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2781
  store i8* %111, i8** %112, align 8, !dbg !2782, !tbaa !618
  %113 = icmp eq i8* %111, null, !dbg !2783
  br i1 %113, label %30, label %114, !dbg !2784

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 6, metadata !2767, metadata !DIExpression()), !dbg !2777
  %115 = load i8*, i8** %10, align 8, !dbg !2778
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2778
  store i8* %116, i8** %10, align 8, !dbg !2778
  %117 = bitcast i8* %115 to i8**, !dbg !2778
  %118 = load i8*, i8** %117, align 8, !dbg !2778
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2781
  store i8* %118, i8** %119, align 16, !dbg !2782, !tbaa !618
  %120 = icmp eq i8* %118, null, !dbg !2783
  br i1 %120, label %30, label %121, !dbg !2784

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 7, metadata !2767, metadata !DIExpression()), !dbg !2777
  %122 = load i8*, i8** %10, align 8, !dbg !2778
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2778
  store i8* %123, i8** %10, align 8, !dbg !2778
  %124 = bitcast i8* %122 to i8**, !dbg !2778
  %125 = load i8*, i8** %124, align 8, !dbg !2778
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2781
  store i8* %125, i8** %126, align 8, !dbg !2782, !tbaa !618
  %127 = icmp eq i8* %125, null, !dbg !2783
  br i1 %127, label %30, label %128, !dbg !2784

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 8, metadata !2767, metadata !DIExpression()), !dbg !2777
  %129 = load i8*, i8** %10, align 8, !dbg !2778
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2778
  store i8* %130, i8** %10, align 8, !dbg !2778
  %131 = bitcast i8* %129 to i8**, !dbg !2778
  %132 = load i8*, i8** %131, align 8, !dbg !2778
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2781
  store i8* %132, i8** %133, align 16, !dbg !2782, !tbaa !618
  %134 = icmp eq i8* %132, null, !dbg !2783
  br i1 %134, label %30, label %135, !dbg !2784

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2767, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 9, metadata !2767, metadata !DIExpression()), !dbg !2777
  %136 = load i8*, i8** %10, align 8, !dbg !2778
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2778
  store i8* %137, i8** %10, align 8, !dbg !2778
  %138 = bitcast i8* %136 to i8**, !dbg !2778
  %139 = load i8*, i8** %138, align 8, !dbg !2778
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2781
  store i8* %139, i8** %140, align 8, !dbg !2782, !tbaa !618
  %141 = icmp eq i8* %139, null, !dbg !2783
  %142 = select i1 %141, i64 9, i64 10, !dbg !2784
  br label %30, !dbg !2784
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2788 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2792, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8* %1, metadata !2793, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i8* %2, metadata !2794, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8* %3, metadata !2795, metadata !DIExpression()), !dbg !2806
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2807
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2796, metadata !DIExpression()), !dbg !2808
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2809
  call void @llvm.va_start(i8* nonnull %6), !dbg !2809
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2810
  call void @llvm.va_end(i8* nonnull %6), !dbg !2811
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2812
  ret void, !dbg !2812
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2813 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #10, !dbg !2814
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.95, i64 0, i64 0)) #10, !dbg !2814
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.96, i64 0, i64 0), i32 5) #10, !dbg !2815
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.98, i64 0, i64 0)) #10, !dbg !2815
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.99, i64 0, i64 0), i32 5) #10, !dbg !2816
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2816, !tbaa !618
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2816
  ret void, !dbg !2817
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2818 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2822, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %1, metadata !2823, metadata !DIExpression()), !dbg !2825
  %3 = udiv i64 9223372036854775807, %1, !dbg !2826
  %4 = icmp ult i64 %3, %0, !dbg !2826
  br i1 %4, label %5, label %6, !dbg !2828

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2829
  unreachable, !dbg !2829

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %7, metadata !2831, metadata !DIExpression()) #10, !dbg !2838
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2840
  call void @llvm.dbg.value(metadata i8* %8, metadata !2837, metadata !DIExpression()) #10, !dbg !2841
  %9 = icmp eq i8* %8, null, !dbg !2842
  %10 = icmp ne i64 %7, 0, !dbg !2844
  %11 = and i1 %10, %9, !dbg !2845
  br i1 %11, label %12, label %13, !dbg !2845

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2846
  unreachable, !dbg !2846

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2847
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2832 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2831, metadata !DIExpression()), !dbg !2848
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %2, metadata !2837, metadata !DIExpression()), !dbg !2850
  %3 = icmp eq i8* %2, null, !dbg !2851
  %4 = icmp ne i64 %0, 0, !dbg !2852
  %5 = and i1 %4, %3, !dbg !2853
  br i1 %5, label %6, label %7, !dbg !2853

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2854
  unreachable, !dbg !2854

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2855
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2856 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 %1, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %2, metadata !2862, metadata !DIExpression()), !dbg !2865
  %4 = udiv i64 9223372036854775807, %2, !dbg !2866
  %5 = icmp ult i64 %4, %1, !dbg !2866
  br i1 %5, label %6, label %7, !dbg !2868

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2869
  unreachable, !dbg !2869

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #10, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %8, metadata !2876, metadata !DIExpression()) #10, !dbg !2879
  %9 = icmp eq i64 %8, 0, !dbg !2880
  %10 = icmp ne i8* %0, null, !dbg !2882
  %11 = and i1 %10, %9, !dbg !2883
  br i1 %11, label %12, label %13, !dbg !2883

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2884
  br label %19, !dbg !2886

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2887
  call void @llvm.dbg.value(metadata i8* %14, metadata !2871, metadata !DIExpression()) #10, !dbg !2877
  %15 = icmp eq i8* %14, null, !dbg !2888
  %16 = icmp ne i64 %8, 0, !dbg !2890
  %17 = and i1 %16, %15, !dbg !2891
  br i1 %17, label %18, label %19, !dbg !2891

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2892
  unreachable, !dbg !2892

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2893
  ret i8* %20, !dbg !2894
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2872 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1, metadata !2876, metadata !DIExpression()), !dbg !2896
  %3 = icmp eq i64 %1, 0, !dbg !2897
  %4 = icmp ne i8* %0, null, !dbg !2898
  %5 = and i1 %4, %3, !dbg !2899
  br i1 %5, label %6, label %7, !dbg !2899

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2900
  br label %13, !dbg !2901

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %8, metadata !2871, metadata !DIExpression()), !dbg !2895
  %9 = icmp eq i8* %8, null, !dbg !2903
  %10 = icmp ne i64 %1, 0, !dbg !2904
  %11 = and i1 %10, %9, !dbg !2905
  br i1 %11, label %12, label %13, !dbg !2905

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2906
  unreachable, !dbg !2906

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2907
  ret i8* %14, !dbg !2908
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !166, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64* %1, metadata !167, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %2, metadata !168, metadata !DIExpression()), !dbg !2911
  %4 = load i64, i64* %1, align 8, !dbg !2912, !tbaa !1949
  call void @llvm.dbg.value(metadata i64 %4, metadata !169, metadata !DIExpression()), !dbg !2913
  %5 = icmp eq i8* %0, null, !dbg !2914
  br i1 %5, label %6, label %20, !dbg !2916

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2917
  br i1 %7, label %8, label %13, !dbg !2920

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %9, metadata !169, metadata !DIExpression()), !dbg !2913
  %10 = icmp ugt i64 %2, 128, !dbg !2923
  %11 = zext i1 %10 to i64, !dbg !2923
  %12 = add nuw nsw i64 %9, %11, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %12, metadata !169, metadata !DIExpression()), !dbg !2913
  br label %13, !dbg !2925

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2926
  call void @llvm.dbg.value(metadata i64 %14, metadata !169, metadata !DIExpression()), !dbg !2913
  %15 = udiv i64 9223372036854775807, %2, !dbg !2927
  %16 = icmp ult i64 %15, %14, !dbg !2927
  br i1 %16, label %19, label %17, !dbg !2929

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !169, metadata !DIExpression()), !dbg !2913
  store i64 %14, i64* %1, align 8, !dbg !2930, !tbaa !1949
  %18 = mul i64 %14, %2, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #10, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %28, metadata !2876, metadata !DIExpression()) #10, !dbg !2934
  br label %31, !dbg !2935

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2936
  unreachable, !dbg !2936

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2937
  %22 = icmp ugt i64 %21, %4, !dbg !2940
  br i1 %22, label %24, label %23, !dbg !2941

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !2942
  unreachable, !dbg !2942

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2943
  %26 = add i64 %4, 1, !dbg !2944
  %27 = add i64 %26, %25, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %27, metadata !169, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %27, metadata !169, metadata !DIExpression()), !dbg !2913
  store i64 %27, i64* %1, align 8, !dbg !2930, !tbaa !1949
  %28 = mul i64 %27, %2, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #10, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %28, metadata !2876, metadata !DIExpression()) #10, !dbg !2934
  %29 = icmp eq i64 %28, 0, !dbg !2946
  br i1 %29, label %30, label %31, !dbg !2935

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !2947
  br label %38, !dbg !2948

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %33, metadata !2871, metadata !DIExpression()) #10, !dbg !2932
  %34 = icmp eq i8* %33, null, !dbg !2950
  %35 = icmp ne i64 %32, 0, !dbg !2951
  %36 = and i1 %35, %34, !dbg !2952
  br i1 %36, label %37, label %38, !dbg !2952

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !2953
  unreachable, !dbg !2953

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2954
  ret i8* %39, !dbg !2955
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2958, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %0, metadata !2831, metadata !DIExpression()) #10, !dbg !2960
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %2, metadata !2837, metadata !DIExpression()) #10, !dbg !2963
  %3 = icmp eq i8* %2, null, !dbg !2964
  %4 = icmp ne i64 %0, 0, !dbg !2965
  %5 = and i1 %4, %3, !dbg !2966
  br i1 %5, label %6, label %7, !dbg !2966

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2967
  unreachable, !dbg !2967

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2968
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !2969 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64* %1, metadata !2974, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8* %0, metadata !166, metadata !DIExpression()) #10, !dbg !2977
  call void @llvm.dbg.value(metadata i64* %1, metadata !167, metadata !DIExpression()) #10, !dbg !2979
  call void @llvm.dbg.value(metadata i64 1, metadata !168, metadata !DIExpression()) #10, !dbg !2980
  %3 = load i64, i64* %1, align 8, !dbg !2981, !tbaa !1949
  call void @llvm.dbg.value(metadata i64 %3, metadata !169, metadata !DIExpression()) #10, !dbg !2982
  %4 = icmp eq i8* %0, null, !dbg !2983
  br i1 %4, label %5, label %12, !dbg !2984

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2985
  br i1 %6, label %9, label %7, !dbg !2986

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !169, metadata !DIExpression()) #10, !dbg !2982
  %8 = icmp slt i64 %3, 0, !dbg !2987
  br i1 %8, label %11, label %9, !dbg !2988

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !169, metadata !DIExpression()) #10, !dbg !2982
  store i64 %10, i64* %1, align 8, !dbg !2989, !tbaa !1949
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #10, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %18, metadata !2876, metadata !DIExpression()) #10, !dbg !2992
  br label %21, !dbg !2993

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2994
  unreachable, !dbg !2994

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2995
  br i1 %13, label %15, label %14, !dbg !2996

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !2997
  unreachable, !dbg !2997

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2998
  %17 = add i64 %3, 1, !dbg !2999
  %18 = add i64 %17, %16, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %18, metadata !169, metadata !DIExpression()) #10, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %18, metadata !169, metadata !DIExpression()) #10, !dbg !2982
  store i64 %18, i64* %1, align 8, !dbg !2989, !tbaa !1949
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #10, !dbg !2990
  call void @llvm.dbg.value(metadata i64 %18, metadata !2876, metadata !DIExpression()) #10, !dbg !2992
  %19 = icmp eq i64 %18, 0, !dbg !3001
  br i1 %19, label %20, label %21, !dbg !2993

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3002
  br label %28, !dbg !3003

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3004
  call void @llvm.dbg.value(metadata i8* %23, metadata !2871, metadata !DIExpression()) #10, !dbg !2990
  %24 = icmp eq i8* %23, null, !dbg !3005
  %25 = icmp ne i64 %22, 0, !dbg !3006
  %26 = and i1 %25, %24, !dbg !3007
  br i1 %26, label %27, label %28, !dbg !3007

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3008
  unreachable, !dbg !3008

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3009
  ret i8* %29, !dbg !3010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3011 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3013, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %0, metadata !2831, metadata !DIExpression()) #10, !dbg !3015
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %2, metadata !2837, metadata !DIExpression()) #10, !dbg !3018
  %3 = icmp eq i8* %2, null, !dbg !3019
  %4 = icmp ne i64 %0, 0, !dbg !3020
  %5 = and i1 %4, %3, !dbg !3021
  br i1 %5, label %6, label %7, !dbg !3021

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3022
  unreachable, !dbg !3022

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3023
  ret i8* %2, !dbg !3024
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3025 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3031
  %3 = udiv i64 9223372036854775807, %1, !dbg !3032
  %4 = icmp ult i64 %3, %0, !dbg !3032
  br i1 %4, label %8, label %5, !dbg !3034

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3035
  call void @llvm.dbg.value(metadata i8* %6, metadata !3029, metadata !DIExpression()), !dbg !3036
  %7 = icmp eq i8* %6, null, !dbg !3037
  br i1 %7, label %8, label %9, !dbg !3038

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3039
  unreachable, !dbg !3039

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3047, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()) #10, !dbg !3051
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %3, metadata !2837, metadata !DIExpression()) #10, !dbg !3054
  %4 = icmp eq i8* %3, null, !dbg !3055
  %5 = icmp ne i64 %1, 0, !dbg !3056
  %6 = and i1 %5, %4, !dbg !3057
  br i1 %6, label %7, label %8, !dbg !3057

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3058
  unreachable, !dbg !3058

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3059
  ret i8* %3, !dbg !3060
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3061 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()), !dbg !3064
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3065
  %3 = add i64 %2, 1, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %0, metadata !3047, metadata !DIExpression()) #10, !dbg !3067
  call void @llvm.dbg.value(metadata i64 %3, metadata !3048, metadata !DIExpression()) #10, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %3, metadata !2831, metadata !DIExpression()) #10, !dbg !3070
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3072
  call void @llvm.dbg.value(metadata i8* %4, metadata !2837, metadata !DIExpression()) #10, !dbg !3073
  %5 = icmp eq i8* %4, null, !dbg !3074
  %6 = icmp ne i64 %3, 0, !dbg !3075
  %7 = and i1 %6, %5, !dbg !3076
  br i1 %7, label %8, label %9, !dbg !3076

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3077
  unreachable, !dbg !3077

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3078
  ret i8* %4, !dbg !3079
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3080 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3082, !tbaa !709
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #10, !dbg !3083
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #10, !dbg !3084
  tail call void @abort() #15, !dbg !3085
  unreachable, !dbg !3085
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3086 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3089, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3096
  %3 = icmp eq i64 %0, 0, !dbg !3097
  %4 = icmp eq i64 %1, 0, !dbg !3098
  %5 = or i1 %3, %4, !dbg !3099
  br i1 %5, label %12, label %6, !dbg !3099

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %7, metadata !3092, metadata !DIExpression()), !dbg !3101
  %8 = udiv i64 %7, %1, !dbg !3102
  %9 = icmp eq i64 %8, %0, !dbg !3104
  br i1 %9, label %12, label %10, !dbg !3105

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3106
  store i32 12, i32* %11, align 4, !dbg !3108, !tbaa !709
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3089, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %13, metadata !3090, metadata !DIExpression()), !dbg !3096
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %15, metadata !3091, metadata !DIExpression()), !dbg !3110
  br label %16, !dbg !3111

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3112
  ret i8* %17, !dbg !3113
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3114 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3131, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* %1, metadata !3132, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %2, metadata !3133, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3134, metadata !DIExpression()), !dbg !3143
  %6 = bitcast i32* %5 to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3144
  %7 = icmp eq i32* %0, null, !dbg !3145
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3147
  call void @llvm.dbg.value(metadata i32* %8, metadata !3131, metadata !DIExpression()), !dbg !3140
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %9, metadata !3135, metadata !DIExpression()), !dbg !3149
  %10 = icmp ugt i64 %9, -3, !dbg !3150
  %11 = icmp ne i64 %2, 0, !dbg !3151
  %12 = and i1 %11, %10, !dbg !3152
  br i1 %12, label %13, label %18, !dbg !3152

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3153
  br i1 %14, label %18, label %15, !dbg !3154

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3155, !tbaa !1126
  call void @llvm.dbg.value(metadata i8 %16, metadata !3137, metadata !DIExpression()), !dbg !3156
  %17 = zext i8 %16 to i32, !dbg !3157
  store i32 %17, i32* %8, align 4, !dbg !3158, !tbaa !709
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3159
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3160
  ret i64 %19, !dbg !3160
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3161 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3200, metadata !DIExpression()), !dbg !3205
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3206
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3207, metadata !DIExpression()), !dbg !3211
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3213
  %4 = load i32, i32* %3, align 8, !dbg !3213, !tbaa !3214
  %5 = and i32 %4, 32, !dbg !3213
  %6 = icmp eq i32 %5, 0, !dbg !3216
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3217
  %8 = icmp ne i32 %7, 0, !dbg !3218
  br i1 %6, label %9, label %19, !dbg !3219

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3221
  %11 = xor i1 %8, true, !dbg !3222
  %12 = or i1 %10, %11, !dbg !3222
  %13 = sext i1 %8 to i32, !dbg !3222
  br i1 %12, label %22, label %14, !dbg !3222

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3223
  %16 = load i32, i32* %15, align 4, !dbg !3223, !tbaa !709
  %17 = icmp ne i32 %16, 9, !dbg !3224
  %18 = sext i1 %17 to i32, !dbg !3225
  br label %22, !dbg !3225

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3226

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3228
  store i32 0, i32* %21, align 4, !dbg !3230, !tbaa !709
  br label %22, !dbg !3228

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3231
  ret i32 %23, !dbg !3232
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3233 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3238, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8 1, metadata !3239, metadata !DIExpression()), !dbg !3242
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3243
  call void @llvm.dbg.value(metadata i8* %2, metadata !3240, metadata !DIExpression()), !dbg !3244
  %3 = icmp eq i8* %2, null, !dbg !3245
  br i1 %3, label %11, label %4, !dbg !3247

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.120, i64 0, i64 0)) #14, !dbg !3248
  %6 = icmp eq i32 %5, 0, !dbg !3253
  br i1 %6, label %10, label %7, !dbg !3254

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0)) #14, !dbg !3255
  %9 = icmp eq i32 %8, 0, !dbg !3256
  br i1 %9, label %10, label %11, !dbg !3257

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3239, metadata !DIExpression()), !dbg !3242
  br label %11, !dbg !3258

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3259
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3260 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %1, metadata !3265, metadata !DIExpression()), !dbg !3267
  %2 = icmp eq i8* %1, null, !dbg !3268
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.124, i64 0, i64 0), i8* %1, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %3, metadata !3265, metadata !DIExpression()), !dbg !3267
  %4 = load i8, i8* %3, align 1, !dbg !3271, !tbaa !1126
  %5 = icmp eq i8 %4, 0, !dbg !3275
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.125, i64 0, i64 0), i8* %3, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %6, metadata !3265, metadata !DIExpression()), !dbg !3267
  ret i8* %6, !dbg !3277
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3278 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3317, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i32 0, metadata !3318, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 0, metadata !3320, metadata !DIExpression()), !dbg !3323
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %2, metadata !3319, metadata !DIExpression()), !dbg !3325
  %3 = icmp slt i32 %2, 0, !dbg !3326
  br i1 %3, label %4, label %6, !dbg !3328

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3329
  br label %24, !dbg !3330

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3331
  %8 = icmp eq i32 %7, 0, !dbg !3331
  br i1 %8, label %13, label %9, !dbg !3333

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3334
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3335
  %12 = icmp eq i64 %11, -1, !dbg !3336
  br i1 %12, label %16, label %13, !dbg !3337

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3338
  %15 = icmp eq i32 %14, 0, !dbg !3338
  br i1 %15, label %16, label %18, !dbg !3339

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3318, metadata !DIExpression()), !dbg !3322
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3340
  call void @llvm.dbg.value(metadata i32 %21, metadata !3320, metadata !DIExpression()), !dbg !3323
  br label %24, !dbg !3341

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3342
  %20 = load i32, i32* %19, align 4, !dbg !3342, !tbaa !709
  call void @llvm.dbg.value(metadata i32 %20, metadata !3318, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 %20, metadata !3318, metadata !DIExpression()), !dbg !3322
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3340
  call void @llvm.dbg.value(metadata i32 %21, metadata !3320, metadata !DIExpression()), !dbg !3323
  %22 = icmp eq i32 %20, 0, !dbg !3343
  br i1 %22, label %24, label %23, !dbg !3341

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3345, !tbaa !709
  call void @llvm.dbg.value(metadata i32 -1, metadata !3320, metadata !DIExpression()), !dbg !3323
  br label %24, !dbg !3347

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3348
  ret i32 %25, !dbg !3349
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3350 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3389, metadata !DIExpression()), !dbg !3390
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3391
  br i1 %2, label %6, label %3, !dbg !3393

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3394
  %5 = icmp eq i32 %4, 0, !dbg !3394
  br i1 %5, label %6, label %8, !dbg !3395

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3396
  br label %17, !dbg !3397

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3398, metadata !DIExpression()) #10, !dbg !3403
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3405
  %10 = load i32, i32* %9, align 8, !dbg !3405, !tbaa !3214
  %11 = and i32 %10, 256, !dbg !3407
  %12 = icmp eq i32 %11, 0, !dbg !3407
  br i1 %12, label %15, label %13, !dbg !3408

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3409
  br label %15, !dbg !3409

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3410
  br label %17, !dbg !3411

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3412
  ret i32 %18, !dbg !3413
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3414 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3454, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 %1, metadata !3455, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %2, metadata !3456, metadata !DIExpression()), !dbg !3462
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3463
  %5 = load i8*, i8** %4, align 8, !dbg !3463, !tbaa !3464
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3465
  %7 = load i8*, i8** %6, align 8, !dbg !3465, !tbaa !3466
  %8 = icmp eq i8* %5, %7, !dbg !3467
  br i1 %8, label %9, label %28, !dbg !3468

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3469
  %11 = load i8*, i8** %10, align 8, !dbg !3469, !tbaa !3470
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3471
  %13 = load i8*, i8** %12, align 8, !dbg !3471, !tbaa !3472
  %14 = icmp eq i8* %11, %13, !dbg !3473
  br i1 %14, label %15, label %28, !dbg !3474

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3475
  %17 = load i8*, i8** %16, align 8, !dbg !3475, !tbaa !3476
  %18 = icmp eq i8* %17, null, !dbg !3477
  br i1 %18, label %19, label %28, !dbg !3478

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3479
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3480
  call void @llvm.dbg.value(metadata i64 %21, metadata !3457, metadata !DIExpression()), !dbg !3481
  %22 = icmp eq i64 %21, -1, !dbg !3482
  br i1 %22, label %30, label %23, !dbg !3484

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3485
  %25 = load i32, i32* %24, align 8, !dbg !3486, !tbaa !3214
  %26 = and i32 %25, -17, !dbg !3486
  store i32 %26, i32* %24, align 8, !dbg !3486, !tbaa !3214
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3487
  store i64 %21, i64* %27, align 8, !dbg !3488, !tbaa !3489
  br label %30, !dbg !3490

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3491
  br label %30, !dbg !3492

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3493
  ret i32 %31, !dbg !3494
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !28, !33, !42, !49, !56, !148, !141, !156, !173, !175, !177, !180, !182, !184, !573, !575, !577}
!llvm.ident = !{!579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579, !579}
!llvm.module.flags = !{!580, !581, !582, !583, !584}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 59, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/runcon.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 2048, elements: !24)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!25 = !DISubrange(count: 8)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "Version", scope: !28, file: !29, line: 2, type: !17, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !30)
!29 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!30 = !{!26}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "file_name", scope: !33, file: !38, line: 46, type: !17, isLocal: true, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !35)
!34 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!35 = !{!31, !36}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !33, file: !38, line: 56, type: !39, isLocal: true, isDefinition: true)
!38 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!39 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "exit_failure", scope: !42, file: !45, line: 24, type: !46, isLocal: false, isDefinition: true)
!42 = distinct !DICompileUnit(language: DW_LANG_C99, file: !43, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !44)
!43 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!44 = !{!40}
!45 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!46 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "program_name", scope: !49, file: !53, line: 33, type: !17, isLocal: false, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !51, globals: !52)
!50 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!51 = !{!8, !6}
!52 = !{!47}
!53 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !56, file: !102, line: 85, type: !135, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !58, retainedTypes: !94, globals: !99)
!57 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!58 = !{!59, !74, !79}
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !60, line: 32, baseType: !61, size: 32, elements: !62)
!60 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!61 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!63 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!66 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!67 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!68 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!69 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!70 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!71 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!72 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!73 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !60, line: 242, baseType: !61, size: 32, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 46, baseType: !61, size: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!83 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!94 = !{!20, !95, !96, !6}
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 62, baseType: !98)
!97 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !{!54, !100, !107, !117, !119, !124, !131, !133}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !56, file: !102, line: 101, type: !103, isLocal: false, isDefinition: true)
!102 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 320, elements: !105)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!105 = !{!106}
!106 = !DISubrange(count: 10)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !56, file: !102, line: 1052, type: !109, isLocal: false, isDefinition: true)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !102, line: 65, size: 448, elements: !110)
!110 = !{!111, !112, !113, !115, !116}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !109, file: !102, line: 68, baseType: !59, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !102, line: 71, baseType: !20, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !109, file: !102, line: 75, baseType: !114, size: 256, offset: 64)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 256, elements: !24)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !109, file: !102, line: 78, baseType: !17, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !109, file: !102, line: 81, baseType: !17, size: 64, offset: 384)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !56, file: !102, line: 116, type: !109, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "slot0", scope: !56, file: !102, line: 842, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 256)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "slotvec", scope: !56, file: !102, line: 845, type: !126, isLocal: true, isDefinition: true)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !102, line: 834, size: 128, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !127, file: !102, line: 836, baseType: !96, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !127, file: !102, line: 837, baseType: !6, size: 64, offset: 64)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "nslots", scope: !56, file: !102, line: 843, type: !20, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "slotvec0", scope: !56, file: !102, line: 844, type: !127, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 704, elements: !137)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!137 = !{!138}
!138 = !DISubrange(count: 11)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !141, file: !144, line: 26, type: !145, isLocal: false, isDefinition: true)
!141 = distinct !DICompileUnit(language: DW_LANG_C99, file: !142, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !143)
!142 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!143 = !{!139}
!144 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 47)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !150, retainedTypes: !155)
!149 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!150 = !{!151}
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !152, line: 41, baseType: !61, size: 32, elements: !153)
!152 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!153 = !{!154}
!154 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!155 = !{!8}
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158, retainedTypes: !172)
!157 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!158 = !{!159}
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !161, file: !160, line: 186, baseType: !61, size: 32, elements: !170)
!160 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!161 = distinct !DISubprogram(name: "x2nrealloc", scope: !160, file: !160, line: 174, type: !162, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !165)
!162 = !DISubroutineType(types: !163)
!163 = !{!8, !8, !164, !96}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!165 = !{!166, !167, !168, !169}
!166 = !DILocalVariable(name: "p", arg: 1, scope: !161, file: !160, line: 174, type: !8)
!167 = !DILocalVariable(name: "pn", arg: 2, scope: !161, file: !160, line: 174, type: !164)
!168 = !DILocalVariable(name: "s", arg: 3, scope: !161, file: !160, line: 174, type: !96)
!169 = !DILocalVariable(name: "n", scope: !161, file: !160, line: 176, type: !96)
!170 = !{!171}
!171 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!172 = !{!96, !6, !8}
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!174 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !155)
!176 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !179)
!178 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!179 = !{!96}
!180 = distinct !DICompileUnit(language: DW_LANG_C99, file: !181, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!181 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!183 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186, retainedTypes: !155)
!185 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!186 = !{!187}
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !188, line: 41, baseType: !61, size: 32, elements: !189)
!188 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!190 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!191 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!192 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!193 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!194 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!195 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!196 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!197 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!198 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!199 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!200 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!201 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!202 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!203 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!204 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!205 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!206 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!207 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!208 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!209 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!210 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!211 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!212 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!213 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!216 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!217 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!218 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!219 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!220 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!221 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!222 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!223 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!224 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!225 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!228 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!229 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!230 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!231 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!232 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!233 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!234 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!235 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!236 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!237 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!238 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!239 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!298 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!301 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!302 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!303 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!304 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!305 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!306 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!307 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!308 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!309 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!310 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!385 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!458 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!459 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!460 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!461 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!462 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!463 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!464 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!465 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!466 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!467 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!468 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!469 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!470 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!471 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!472 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!474 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!476 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!477 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!478 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!479 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!505 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!506 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!507 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!508 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!509 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!514 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!515 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!516 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!517 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!574 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!575 = distinct !DICompileUnit(language: DW_LANG_C99, file: !576, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !155)
!576 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!577 = distinct !DICompileUnit(language: DW_LANG_C99, file: !578, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !155)
!578 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!579 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!580 = !{i32 2, !"Dwarf Version", i32 4}
!581 = !{i32 2, !"Debug Info Version", i32 3}
!582 = !{i32 1, !"wchar_size", i32 4}
!583 = !{i32 7, !"PIC Level", i32 2}
!584 = !{i32 7, !"PIE Level", i32 2}
!585 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 72, type: !586, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !20}
!588 = !{!589}
!589 = !DILocalVariable(name: "status", arg: 1, scope: !585, file: !3, line: 72, type: !20)
!590 = !DILocalVariable(name: "infomap", scope: !591, file: !592, line: 632, type: !606)
!591 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !592, file: !592, line: 630, type: !593, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !595)
!592 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!593 = !DISubroutineType(types: !594)
!594 = !{null, !17}
!595 = !{!596, !590, !597, !598, !605}
!596 = !DILocalVariable(name: "program", arg: 1, scope: !591, file: !592, line: 630, type: !17)
!597 = !DILocalVariable(name: "node", scope: !591, file: !592, line: 642, type: !17)
!598 = !DILocalVariable(name: "map_prog", scope: !591, file: !592, line: 643, type: !599)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !591, file: !592, line: 632, size: 128, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !601, file: !592, line: 632, baseType: !17, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !592, line: 632, baseType: !17, size: 64, offset: 64)
!605 = !DILocalVariable(name: "lc_messages", scope: !591, file: !592, line: 655, type: !17)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 896, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 7)
!609 = !DILocation(line: 632, column: 67, scope: !591, inlinedAt: !610)
!610 = distinct !DILocation(line: 100, column: 7, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 77, column: 5)
!612 = distinct !DILexicalBlock(scope: !585, file: !3, line: 74, column: 7)
!613 = !DILocation(line: 72, column: 12, scope: !585)
!614 = !DILocation(line: 74, column: 14, scope: !612)
!615 = !DILocation(line: 74, column: 7, scope: !585)
!616 = !DILocation(line: 75, column: 5, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !3, line: 75, column: 5)
!618 = !{!619, !619, i64 0}
!619 = !{!"any pointer", !620, i64 0}
!620 = !{!"omnipotent char", !621, i64 0}
!621 = !{!"Simple C/C++ TBAA"}
!622 = !DILocation(line: 78, column: 7, scope: !611)
!623 = !DILocation(line: 82, column: 7, scope: !611)
!624 = !DILocation(line: 587, column: 3, scope: !625, inlinedAt: !628)
!625 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !592, file: !592, line: 585, type: !626, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!626 = !DISubroutineType(types: !627)
!627 = !{null}
!628 = distinct !DILocation(line: 87, column: 7, scope: !611)
!629 = !DILocation(line: 89, column: 7, scope: !611)
!630 = !DILocation(line: 98, column: 7, scope: !611)
!631 = !DILocation(line: 99, column: 7, scope: !611)
!632 = !DILocation(line: 632, column: 3, scope: !591, inlinedAt: !610)
!633 = !DILocation(line: 643, column: 36, scope: !591, inlinedAt: !610)
!634 = !DILocation(line: 643, column: 25, scope: !591, inlinedAt: !610)
!635 = !DILocation(line: 645, column: 33, scope: !591, inlinedAt: !610)
!636 = !DILocation(line: 645, column: 3, scope: !591, inlinedAt: !610)
!637 = !DILocation(line: 646, column: 13, scope: !591, inlinedAt: !610)
!638 = !DILocation(line: 645, column: 20, scope: !591, inlinedAt: !610)
!639 = !{!640, !619, i64 0}
!640 = !{!"infomap", !619, i64 0, !619, i64 8}
!641 = !DILocation(line: 645, column: 10, scope: !591, inlinedAt: !610)
!642 = !DILocation(line: 645, column: 28, scope: !591, inlinedAt: !610)
!643 = distinct !{!643, !644, !645}
!644 = !DILocation(line: 645, column: 3, scope: !591)
!645 = !DILocation(line: 646, column: 13, scope: !591)
!646 = !DILocation(line: 648, column: 17, scope: !647, inlinedAt: !610)
!647 = distinct !DILexicalBlock(scope: !591, file: !592, line: 648, column: 7)
!648 = !{!640, !619, i64 8}
!649 = !DILocation(line: 648, column: 7, scope: !647, inlinedAt: !610)
!650 = !DILocation(line: 648, column: 7, scope: !591, inlinedAt: !610)
!651 = !DILocation(line: 642, column: 15, scope: !591, inlinedAt: !610)
!652 = !DILocation(line: 651, column: 3, scope: !591, inlinedAt: !610)
!653 = !DILocation(line: 655, column: 29, scope: !591, inlinedAt: !610)
!654 = !DILocation(line: 655, column: 15, scope: !591, inlinedAt: !610)
!655 = !DILocation(line: 656, column: 7, scope: !656, inlinedAt: !610)
!656 = distinct !DILexicalBlock(scope: !591, file: !592, line: 656, column: 7)
!657 = !DILocation(line: 656, column: 19, scope: !656, inlinedAt: !610)
!658 = !DILocation(line: 656, column: 22, scope: !656, inlinedAt: !610)
!659 = !DILocation(line: 656, column: 7, scope: !591, inlinedAt: !610)
!660 = !DILocation(line: 662, column: 7, scope: !661, inlinedAt: !610)
!661 = distinct !DILexicalBlock(scope: !656, file: !592, line: 657, column: 5)
!662 = !DILocation(line: 664, column: 5, scope: !661, inlinedAt: !610)
!663 = !DILocation(line: 665, column: 3, scope: !591, inlinedAt: !610)
!664 = !DILocation(line: 667, column: 3, scope: !591, inlinedAt: !610)
!665 = !DILocation(line: 669, column: 1, scope: !591, inlinedAt: !610)
!666 = !DILocation(line: 102, column: 3, scope: !585)
!667 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 106, type: !668, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !671)
!668 = !DISubroutineType(types: !669)
!669 = !{!20, !20, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !686, !688}
!672 = !DILocalVariable(name: "argc", arg: 1, scope: !667, file: !3, line: 106, type: !20)
!673 = !DILocalVariable(name: "argv", arg: 2, scope: !667, file: !3, line: 106, type: !670)
!674 = !DILocalVariable(name: "role", scope: !667, file: !3, line: 108, type: !6)
!675 = !DILocalVariable(name: "range", scope: !667, file: !3, line: 109, type: !6)
!676 = !DILocalVariable(name: "user", scope: !667, file: !3, line: 110, type: !6)
!677 = !DILocalVariable(name: "type", scope: !667, file: !3, line: 111, type: !6)
!678 = !DILocalVariable(name: "context", scope: !667, file: !3, line: 112, type: !6)
!679 = !DILocalVariable(name: "cur_context", scope: !667, file: !3, line: 113, type: !6)
!680 = !DILocalVariable(name: "file_context", scope: !667, file: !3, line: 114, type: !6)
!681 = !DILocalVariable(name: "new_context", scope: !667, file: !3, line: 115, type: !6)
!682 = !DILocalVariable(name: "compute_trans", scope: !667, file: !3, line: 116, type: !39)
!683 = !DILocalVariable(name: "con", scope: !667, file: !3, line: 118, type: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !685, line: 53, baseType: !20)
!685 = !DIFile(filename: "./lib/selinux/context.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!686 = !DILocalVariable(name: "option_index", scope: !687, file: !3, line: 130, type: !20)
!687 = distinct !DILexicalBlock(scope: !667, file: !3, line: 129, column: 5)
!688 = !DILocalVariable(name: "c", scope: !687, file: !3, line: 131, type: !20)
!689 = !DILocation(line: 106, column: 11, scope: !667)
!690 = !DILocation(line: 106, column: 24, scope: !667)
!691 = !DILocation(line: 108, column: 9, scope: !667)
!692 = !DILocation(line: 109, column: 9, scope: !667)
!693 = !DILocation(line: 110, column: 9, scope: !667)
!694 = !DILocation(line: 111, column: 9, scope: !667)
!695 = !DILocation(line: 112, column: 9, scope: !667)
!696 = !DILocation(line: 113, column: 9, scope: !667)
!697 = !DILocation(line: 114, column: 9, scope: !667)
!698 = !DILocation(line: 115, column: 9, scope: !667)
!699 = !DILocation(line: 116, column: 8, scope: !667)
!700 = !DILocation(line: 121, column: 21, scope: !667)
!701 = !DILocation(line: 121, column: 3, scope: !667)
!702 = !DILocation(line: 122, column: 3, scope: !667)
!703 = !DILocation(line: 123, column: 3, scope: !667)
!704 = !DILocation(line: 124, column: 3, scope: !667)
!705 = !DILocation(line: 126, column: 3, scope: !667)
!706 = !DILocation(line: 128, column: 3, scope: !667)
!707 = !DILocation(line: 130, column: 7, scope: !687)
!708 = !DILocation(line: 130, column: 11, scope: !687)
!709 = !{!710, !710, i64 0}
!710 = !{!"int", !620, i64 0}
!711 = !DILocation(line: 131, column: 15, scope: !687)
!712 = !DILocation(line: 131, column: 11, scope: !687)
!713 = !DILocation(line: 133, column: 11, scope: !687)
!714 = !DILocation(line: 138, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 138, column: 15)
!716 = distinct !DILexicalBlock(scope: !687, file: !3, line: 136, column: 9)
!717 = !DILocation(line: 138, column: 15, scope: !716)
!718 = !DILocation(line: 139, column: 13, scope: !715)
!719 = !DILocation(line: 140, column: 18, scope: !716)
!720 = !DILocation(line: 141, column: 11, scope: !716)
!721 = !DILocation(line: 143, column: 15, scope: !722)
!722 = distinct !DILexicalBlock(scope: !716, file: !3, line: 143, column: 15)
!723 = !DILocation(line: 143, column: 15, scope: !716)
!724 = !DILocation(line: 144, column: 13, scope: !722)
!725 = !DILocation(line: 145, column: 18, scope: !716)
!726 = !DILocation(line: 146, column: 11, scope: !716)
!727 = !DILocation(line: 148, column: 15, scope: !728)
!728 = distinct !DILexicalBlock(scope: !716, file: !3, line: 148, column: 15)
!729 = !DILocation(line: 148, column: 15, scope: !716)
!730 = !DILocation(line: 149, column: 13, scope: !728)
!731 = !DILocation(line: 150, column: 18, scope: !716)
!732 = !DILocation(line: 151, column: 11, scope: !716)
!733 = !DILocation(line: 153, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !716, file: !3, line: 153, column: 15)
!735 = !DILocation(line: 153, column: 15, scope: !716)
!736 = !DILocation(line: 154, column: 13, scope: !734)
!737 = !DILocation(line: 155, column: 19, scope: !716)
!738 = !DILocation(line: 156, column: 11, scope: !716)
!739 = !DILocation(line: 161, column: 9, scope: !716)
!740 = !DILocation(line: 162, column: 9, scope: !716)
!741 = !DILocation(line: 164, column: 11, scope: !716)
!742 = !DILocation(line: 0, scope: !667)
!743 = !DILocation(line: 0, scope: !716)
!744 = !DILocation(line: 167, column: 5, scope: !667)
!745 = !DILocation(line: 169, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !667, file: !3, line: 169, column: 7)
!747 = !DILocation(line: 169, column: 21, scope: !746)
!748 = !DILocation(line: 169, column: 7, scope: !667)
!749 = !DILocation(line: 88, column: 5, scope: !750, inlinedAt: !758)
!750 = distinct !DISubprogram(name: "getcon", scope: !751, file: !751, line: 87, type: !752, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !756)
!751 = !DIFile(filename: "./lib/selinux/selinux.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!752 = !DISubroutineType(types: !753)
!753 = !{!20, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "security_context_t", file: !751, line: 83, baseType: !6)
!756 = !{!757}
!757 = !DILocalVariable(name: "con", arg: 1, scope: !750, file: !751, line: 87, type: !754)
!758 = distinct !DILocation(line: 171, column: 11, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 171, column: 11)
!760 = distinct !DILexicalBlock(scope: !746, file: !3, line: 170, column: 5)
!761 = !DILocation(line: 88, column: 11, scope: !750, inlinedAt: !758)
!762 = !DILocation(line: 172, column: 9, scope: !759)
!763 = !DILocation(line: 178, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !667, file: !3, line: 178, column: 7)
!765 = !DILocation(line: 178, column: 17, scope: !764)
!766 = !DILocation(line: 178, column: 14, scope: !764)
!767 = !DILocation(line: 178, column: 25, scope: !764)
!768 = !DILocation(line: 178, column: 33, scope: !764)
!769 = !DILocation(line: 178, column: 42, scope: !764)
!770 = !DILocation(line: 180, column: 18, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 180, column: 11)
!772 = distinct !DILexicalBlock(scope: !764, file: !3, line: 179, column: 5)
!773 = !DILocation(line: 180, column: 11, scope: !772)
!774 = !DILocation(line: 182, column: 24, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !3, line: 181, column: 9)
!776 = !DILocation(line: 182, column: 11, scope: !775)
!777 = !DILocation(line: 183, column: 11, scope: !775)
!778 = !DILocation(line: 185, column: 28, scope: !772)
!779 = !DILocation(line: 186, column: 5, scope: !772)
!780 = !DILocation(line: 188, column: 7, scope: !781)
!781 = distinct !DILexicalBlock(scope: !667, file: !3, line: 188, column: 7)
!782 = !DILocation(line: 188, column: 14, scope: !781)
!783 = !DILocation(line: 188, column: 7, scope: !667)
!784 = !DILocation(line: 190, column: 20, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !3, line: 189, column: 5)
!786 = !DILocation(line: 190, column: 7, scope: !785)
!787 = !DILocation(line: 191, column: 7, scope: !785)
!788 = !DILocation(line: 195, column: 5, scope: !789)
!789 = distinct !DILexicalBlock(scope: !667, file: !3, line: 194, column: 7)
!790 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !38, file: !38, line: 51, type: !593, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !33, retainedNodes: !791)
!791 = !{!792}
!792 = !DILocalVariable(name: "file", arg: 1, scope: !790, file: !38, line: 51, type: !17)
!793 = !DILocation(line: 51, column: 41, scope: !790)
!794 = !DILocation(line: 53, column: 13, scope: !790)
!795 = !DILocation(line: 54, column: 1, scope: !790)
!796 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !38, file: !38, line: 88, type: !797, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !33, retainedNodes: !799)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !39}
!799 = !{!800}
!800 = !DILocalVariable(name: "ignore", arg: 1, scope: !796, file: !38, line: 88, type: !39)
!801 = !DILocation(line: 88, column: 37, scope: !796)
!802 = !DILocation(line: 90, column: 16, scope: !796)
!803 = !{!804, !804, i64 0}
!804 = !{!"_Bool", !620, i64 0}
!805 = !DILocation(line: 91, column: 1, scope: !796)
!806 = distinct !DISubprogram(name: "close_stdout", scope: !38, file: !38, line: 117, type: !626, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !33, retainedNodes: !807)
!807 = !{!808}
!808 = !DILocalVariable(name: "write_error", scope: !809, file: !38, line: 122, type: !17)
!809 = distinct !DILexicalBlock(scope: !810, file: !38, line: 121, column: 5)
!810 = distinct !DILexicalBlock(scope: !806, file: !38, line: 119, column: 7)
!811 = !DILocation(line: 119, column: 21, scope: !810)
!812 = !DILocation(line: 119, column: 7, scope: !810)
!813 = !DILocation(line: 119, column: 29, scope: !810)
!814 = !DILocation(line: 120, column: 7, scope: !810)
!815 = !DILocation(line: 120, column: 12, scope: !810)
!816 = !{i8 0, i8 2}
!817 = !DILocation(line: 120, column: 25, scope: !810)
!818 = !DILocation(line: 120, column: 28, scope: !810)
!819 = !DILocation(line: 120, column: 34, scope: !810)
!820 = !DILocation(line: 119, column: 7, scope: !806)
!821 = !DILocation(line: 122, column: 33, scope: !809)
!822 = !DILocation(line: 122, column: 19, scope: !809)
!823 = !DILocation(line: 123, column: 11, scope: !824)
!824 = distinct !DILexicalBlock(scope: !809, file: !38, line: 123, column: 11)
!825 = !DILocation(line: 0, scope: !824)
!826 = !DILocation(line: 123, column: 11, scope: !809)
!827 = !DILocation(line: 124, column: 36, scope: !824)
!828 = !DILocation(line: 124, column: 9, scope: !824)
!829 = !DILocation(line: 127, column: 9, scope: !824)
!830 = !DILocation(line: 129, column: 14, scope: !809)
!831 = !DILocation(line: 129, column: 7, scope: !809)
!832 = !DILocation(line: 134, column: 42, scope: !833)
!833 = distinct !DILexicalBlock(scope: !806, file: !38, line: 134, column: 7)
!834 = !DILocation(line: 134, column: 28, scope: !833)
!835 = !DILocation(line: 134, column: 50, scope: !833)
!836 = !DILocation(line: 134, column: 7, scope: !806)
!837 = !DILocation(line: 135, column: 12, scope: !833)
!838 = !DILocation(line: 135, column: 5, scope: !833)
!839 = !DILocation(line: 136, column: 1, scope: !806)
!840 = distinct !DISubprogram(name: "set_program_name", scope: !53, file: !53, line: 39, type: !593, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !49, retainedNodes: !841)
!841 = !{!842, !843, !844}
!842 = !DILocalVariable(name: "argv0", arg: 1, scope: !840, file: !53, line: 39, type: !17)
!843 = !DILocalVariable(name: "slash", scope: !840, file: !53, line: 46, type: !17)
!844 = !DILocalVariable(name: "base", scope: !840, file: !53, line: 47, type: !17)
!845 = !DILocation(line: 39, column: 31, scope: !840)
!846 = !DILocation(line: 51, column: 13, scope: !847)
!847 = distinct !DILexicalBlock(scope: !840, file: !53, line: 51, column: 7)
!848 = !DILocation(line: 51, column: 7, scope: !840)
!849 = !DILocation(line: 55, column: 14, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !53, line: 52, column: 5)
!851 = !DILocation(line: 54, column: 7, scope: !850)
!852 = !DILocation(line: 56, column: 7, scope: !850)
!853 = !DILocation(line: 59, column: 11, scope: !840)
!854 = !DILocation(line: 46, column: 15, scope: !840)
!855 = !DILocation(line: 60, column: 17, scope: !840)
!856 = !DILocation(line: 60, column: 33, scope: !840)
!857 = !DILocation(line: 60, column: 11, scope: !840)
!858 = !DILocation(line: 47, column: 15, scope: !840)
!859 = !DILocation(line: 61, column: 12, scope: !860)
!860 = distinct !DILexicalBlock(scope: !840, file: !53, line: 61, column: 7)
!861 = !DILocation(line: 61, column: 20, scope: !860)
!862 = !DILocation(line: 61, column: 25, scope: !860)
!863 = !DILocation(line: 61, column: 42, scope: !860)
!864 = !DILocation(line: 61, column: 28, scope: !860)
!865 = !DILocation(line: 61, column: 61, scope: !860)
!866 = !DILocation(line: 61, column: 7, scope: !840)
!867 = !DILocation(line: 64, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !53, line: 64, column: 11)
!869 = distinct !DILexicalBlock(scope: !860, file: !53, line: 62, column: 5)
!870 = !DILocation(line: 64, column: 36, scope: !868)
!871 = !DILocation(line: 64, column: 11, scope: !869)
!872 = !DILocation(line: 66, column: 24, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !53, line: 65, column: 9)
!874 = !DILocation(line: 70, column: 41, scope: !873)
!875 = !DILocation(line: 72, column: 9, scope: !873)
!876 = !DILocation(line: 84, column: 16, scope: !840)
!877 = !DILocation(line: 90, column: 27, scope: !840)
!878 = !DILocation(line: 92, column: 1, scope: !840)
!879 = distinct !DISubprogram(name: "clone_quoting_options", scope: !102, file: !102, line: 122, type: !880, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !883)
!880 = !DISubroutineType(types: !881)
!881 = !{!882, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!883 = !{!884, !885, !886}
!884 = !DILocalVariable(name: "o", arg: 1, scope: !879, file: !102, line: 122, type: !882)
!885 = !DILocalVariable(name: "e", scope: !879, file: !102, line: 124, type: !20)
!886 = !DILocalVariable(name: "p", scope: !879, file: !102, line: 125, type: !882)
!887 = !DILocation(line: 122, column: 48, scope: !879)
!888 = !DILocation(line: 124, column: 11, scope: !879)
!889 = !DILocation(line: 124, column: 7, scope: !879)
!890 = !DILocation(line: 125, column: 40, scope: !879)
!891 = !DILocation(line: 125, column: 31, scope: !879)
!892 = !DILocation(line: 125, column: 27, scope: !879)
!893 = !DILocation(line: 127, column: 9, scope: !879)
!894 = !DILocation(line: 128, column: 3, scope: !879)
!895 = distinct !DISubprogram(name: "get_quoting_style", scope: !102, file: !102, line: 133, type: !896, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !900)
!896 = !DISubroutineType(types: !897)
!897 = !{!59, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!900 = !{!901}
!901 = !DILocalVariable(name: "o", arg: 1, scope: !895, file: !102, line: 133, type: !898)
!902 = !DILocation(line: 133, column: 50, scope: !895)
!903 = !DILocation(line: 135, column: 11, scope: !895)
!904 = !DILocation(line: 135, column: 46, scope: !895)
!905 = !{!906, !620, i64 0}
!906 = !{!"quoting_options", !620, i64 0, !710, i64 4, !620, i64 8, !619, i64 40, !619, i64 48}
!907 = !DILocation(line: 135, column: 3, scope: !895)
!908 = distinct !DISubprogram(name: "set_quoting_style", scope: !102, file: !102, line: 141, type: !909, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !911)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !882, !59}
!911 = !{!912, !913}
!912 = !DILocalVariable(name: "o", arg: 1, scope: !908, file: !102, line: 141, type: !882)
!913 = !DILocalVariable(name: "s", arg: 2, scope: !908, file: !102, line: 141, type: !59)
!914 = !DILocation(line: 141, column: 44, scope: !908)
!915 = !DILocation(line: 141, column: 66, scope: !908)
!916 = !DILocation(line: 143, column: 4, scope: !908)
!917 = !DILocation(line: 143, column: 39, scope: !908)
!918 = !DILocation(line: 143, column: 45, scope: !908)
!919 = !DILocation(line: 144, column: 1, scope: !908)
!920 = distinct !DISubprogram(name: "set_char_quoting", scope: !102, file: !102, line: 152, type: !921, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{!20, !882, !7, !20}
!923 = !{!924, !925, !926, !927, !928, !930, !931}
!924 = !DILocalVariable(name: "o", arg: 1, scope: !920, file: !102, line: 152, type: !882)
!925 = !DILocalVariable(name: "c", arg: 2, scope: !920, file: !102, line: 152, type: !7)
!926 = !DILocalVariable(name: "i", arg: 3, scope: !920, file: !102, line: 152, type: !20)
!927 = !DILocalVariable(name: "uc", scope: !920, file: !102, line: 154, type: !9)
!928 = !DILocalVariable(name: "p", scope: !920, file: !102, line: 155, type: !929)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!930 = !DILocalVariable(name: "shift", scope: !920, file: !102, line: 157, type: !20)
!931 = !DILocalVariable(name: "r", scope: !920, file: !102, line: 158, type: !20)
!932 = !DILocation(line: 152, column: 43, scope: !920)
!933 = !DILocation(line: 152, column: 51, scope: !920)
!934 = !DILocation(line: 152, column: 58, scope: !920)
!935 = !DILocation(line: 154, column: 17, scope: !920)
!936 = !DILocation(line: 156, column: 6, scope: !920)
!937 = !DILocation(line: 156, column: 62, scope: !920)
!938 = !DILocation(line: 156, column: 57, scope: !920)
!939 = !DILocation(line: 155, column: 17, scope: !920)
!940 = !DILocation(line: 157, column: 15, scope: !920)
!941 = !DILocation(line: 157, column: 7, scope: !920)
!942 = !DILocation(line: 158, column: 12, scope: !920)
!943 = !DILocation(line: 158, column: 15, scope: !920)
!944 = !DILocation(line: 158, column: 25, scope: !920)
!945 = !DILocation(line: 158, column: 7, scope: !920)
!946 = !DILocation(line: 159, column: 13, scope: !920)
!947 = !DILocation(line: 159, column: 18, scope: !920)
!948 = !DILocation(line: 159, column: 23, scope: !920)
!949 = !DILocation(line: 159, column: 6, scope: !920)
!950 = !DILocation(line: 160, column: 3, scope: !920)
!951 = distinct !DISubprogram(name: "set_quoting_flags", scope: !102, file: !102, line: 168, type: !952, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !954)
!952 = !DISubroutineType(types: !953)
!953 = !{!20, !882, !20}
!954 = !{!955, !956, !957}
!955 = !DILocalVariable(name: "o", arg: 1, scope: !951, file: !102, line: 168, type: !882)
!956 = !DILocalVariable(name: "i", arg: 2, scope: !951, file: !102, line: 168, type: !20)
!957 = !DILocalVariable(name: "r", scope: !951, file: !102, line: 170, type: !20)
!958 = !DILocation(line: 168, column: 44, scope: !951)
!959 = !DILocation(line: 168, column: 51, scope: !951)
!960 = !DILocation(line: 171, column: 8, scope: !961)
!961 = distinct !DILexicalBlock(scope: !951, file: !102, line: 171, column: 7)
!962 = !DILocation(line: 171, column: 7, scope: !951)
!963 = !DILocation(line: 173, column: 10, scope: !951)
!964 = !{!906, !710, i64 4}
!965 = !DILocation(line: 170, column: 7, scope: !951)
!966 = !DILocation(line: 174, column: 12, scope: !951)
!967 = !DILocation(line: 175, column: 3, scope: !951)
!968 = distinct !DISubprogram(name: "set_custom_quoting", scope: !102, file: !102, line: 179, type: !969, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !971)
!969 = !DISubroutineType(types: !970)
!970 = !{null, !882, !17, !17}
!971 = !{!972, !973, !974}
!972 = !DILocalVariable(name: "o", arg: 1, scope: !968, file: !102, line: 179, type: !882)
!973 = !DILocalVariable(name: "left_quote", arg: 2, scope: !968, file: !102, line: 180, type: !17)
!974 = !DILocalVariable(name: "right_quote", arg: 3, scope: !968, file: !102, line: 180, type: !17)
!975 = !DILocation(line: 179, column: 45, scope: !968)
!976 = !DILocation(line: 180, column: 33, scope: !968)
!977 = !DILocation(line: 180, column: 57, scope: !968)
!978 = !DILocation(line: 182, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !968, file: !102, line: 182, column: 7)
!980 = !DILocation(line: 182, column: 7, scope: !968)
!981 = !DILocation(line: 184, column: 6, scope: !968)
!982 = !DILocation(line: 184, column: 12, scope: !968)
!983 = !DILocation(line: 185, column: 8, scope: !984)
!984 = distinct !DILexicalBlock(scope: !968, file: !102, line: 185, column: 7)
!985 = !DILocation(line: 185, column: 23, scope: !984)
!986 = !DILocation(line: 185, column: 19, scope: !984)
!987 = !DILocation(line: 186, column: 5, scope: !984)
!988 = !DILocation(line: 187, column: 6, scope: !968)
!989 = !DILocation(line: 187, column: 17, scope: !968)
!990 = !{!906, !619, i64 40}
!991 = !DILocation(line: 188, column: 6, scope: !968)
!992 = !DILocation(line: 188, column: 18, scope: !968)
!993 = !{!906, !619, i64 48}
!994 = !DILocation(line: 189, column: 1, scope: !968)
!995 = distinct !DISubprogram(name: "quotearg_buffer", scope: !102, file: !102, line: 784, type: !996, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!96, !6, !96, !17, !96, !898}
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!999 = !DILocalVariable(name: "buffer", arg: 1, scope: !995, file: !102, line: 784, type: !6)
!1000 = !DILocalVariable(name: "buffersize", arg: 2, scope: !995, file: !102, line: 784, type: !96)
!1001 = !DILocalVariable(name: "arg", arg: 3, scope: !995, file: !102, line: 785, type: !17)
!1002 = !DILocalVariable(name: "argsize", arg: 4, scope: !995, file: !102, line: 785, type: !96)
!1003 = !DILocalVariable(name: "o", arg: 5, scope: !995, file: !102, line: 786, type: !898)
!1004 = !DILocalVariable(name: "p", scope: !995, file: !102, line: 788, type: !898)
!1005 = !DILocalVariable(name: "e", scope: !995, file: !102, line: 789, type: !20)
!1006 = !DILocalVariable(name: "r", scope: !995, file: !102, line: 790, type: !96)
!1007 = !DILocation(line: 784, column: 24, scope: !995)
!1008 = !DILocation(line: 784, column: 39, scope: !995)
!1009 = !DILocation(line: 785, column: 30, scope: !995)
!1010 = !DILocation(line: 785, column: 42, scope: !995)
!1011 = !DILocation(line: 786, column: 48, scope: !995)
!1012 = !DILocation(line: 788, column: 37, scope: !995)
!1013 = !DILocation(line: 788, column: 33, scope: !995)
!1014 = !DILocation(line: 789, column: 11, scope: !995)
!1015 = !DILocation(line: 789, column: 7, scope: !995)
!1016 = !DILocation(line: 791, column: 43, scope: !995)
!1017 = !DILocation(line: 791, column: 53, scope: !995)
!1018 = !DILocation(line: 791, column: 60, scope: !995)
!1019 = !DILocation(line: 792, column: 43, scope: !995)
!1020 = !DILocation(line: 792, column: 58, scope: !995)
!1021 = !DILocation(line: 790, column: 14, scope: !995)
!1022 = !DILocation(line: 790, column: 10, scope: !995)
!1023 = !DILocation(line: 793, column: 9, scope: !995)
!1024 = !DILocation(line: 794, column: 3, scope: !995)
!1025 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !102, file: !102, line: 256, type: !1026, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1030)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!96, !6, !96, !17, !96, !59, !20, !1028, !17, !17}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1055, !1056, !1057, !1058, !1059, !1062, !1063, !1081, !1084, !1085, !1092}
!1031 = !DILocalVariable(name: "buffer", arg: 1, scope: !1025, file: !102, line: 256, type: !6)
!1032 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1025, file: !102, line: 256, type: !96)
!1033 = !DILocalVariable(name: "arg", arg: 3, scope: !1025, file: !102, line: 257, type: !17)
!1034 = !DILocalVariable(name: "argsize", arg: 4, scope: !1025, file: !102, line: 257, type: !96)
!1035 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1025, file: !102, line: 258, type: !59)
!1036 = !DILocalVariable(name: "flags", arg: 6, scope: !1025, file: !102, line: 258, type: !20)
!1037 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1025, file: !102, line: 259, type: !1028)
!1038 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1025, file: !102, line: 260, type: !17)
!1039 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1025, file: !102, line: 261, type: !17)
!1040 = !DILocalVariable(name: "i", scope: !1025, file: !102, line: 263, type: !96)
!1041 = !DILocalVariable(name: "len", scope: !1025, file: !102, line: 264, type: !96)
!1042 = !DILocalVariable(name: "orig_buffersize", scope: !1025, file: !102, line: 265, type: !96)
!1043 = !DILocalVariable(name: "quote_string", scope: !1025, file: !102, line: 266, type: !17)
!1044 = !DILocalVariable(name: "quote_string_len", scope: !1025, file: !102, line: 267, type: !96)
!1045 = !DILocalVariable(name: "backslash_escapes", scope: !1025, file: !102, line: 268, type: !39)
!1046 = !DILocalVariable(name: "unibyte_locale", scope: !1025, file: !102, line: 269, type: !39)
!1047 = !DILocalVariable(name: "elide_outer_quotes", scope: !1025, file: !102, line: 270, type: !39)
!1048 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1025, file: !102, line: 271, type: !39)
!1049 = !DILocalVariable(name: "encountered_single_quote", scope: !1025, file: !102, line: 272, type: !39)
!1050 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1025, file: !102, line: 273, type: !39)
!1051 = !DILocalVariable(name: "c", scope: !1052, file: !102, line: 402, type: !9)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !102, line: 401, column: 5)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !102, line: 400, column: 3)
!1054 = distinct !DILexicalBlock(scope: !1025, file: !102, line: 400, column: 3)
!1055 = !DILocalVariable(name: "esc", scope: !1052, file: !102, line: 403, type: !9)
!1056 = !DILocalVariable(name: "is_right_quote", scope: !1052, file: !102, line: 404, type: !39)
!1057 = !DILocalVariable(name: "escaping", scope: !1052, file: !102, line: 405, type: !39)
!1058 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1052, file: !102, line: 406, type: !39)
!1059 = !DILocalVariable(name: "m", scope: !1060, file: !102, line: 610, type: !96)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 608, column: 11)
!1061 = distinct !DILexicalBlock(scope: !1052, file: !102, line: 426, column: 9)
!1062 = !DILocalVariable(name: "printable", scope: !1060, file: !102, line: 612, type: !39)
!1063 = !DILocalVariable(name: "mbstate", scope: !1064, file: !102, line: 621, type: !1066)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !102, line: 620, column: 15)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !102, line: 614, column: 17)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1067, line: 6, baseType: !1068)
!1067 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1069, line: 21, baseType: !1070)
!1069 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1069, line: 13, size: 64, elements: !1071)
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1070, file: !1069, line: 15, baseType: !20, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1070, file: !1069, line: 20, baseType: !1074, size: 32, offset: 32)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1070, file: !1069, line: 16, size: 32, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1074, file: !1069, line: 18, baseType: !61, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1074, file: !1069, line: 19, baseType: !1078, size: 32)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1079)
!1079 = !{!1080}
!1080 = !DISubrange(count: 4)
!1081 = !DILocalVariable(name: "w", scope: !1082, file: !102, line: 631, type: !1083)
!1082 = distinct !DILexicalBlock(scope: !1064, file: !102, line: 630, column: 19)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !97, line: 90, baseType: !20)
!1084 = !DILocalVariable(name: "bytes", scope: !1082, file: !102, line: 632, type: !96)
!1085 = !DILocalVariable(name: "j", scope: !1086, file: !102, line: 657, type: !96)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !102, line: 656, column: 27)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !102, line: 654, column: 29)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !102, line: 649, column: 23)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !102, line: 641, column: 30)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !102, line: 636, column: 30)
!1091 = distinct !DILexicalBlock(scope: !1082, file: !102, line: 634, column: 25)
!1092 = !DILocalVariable(name: "ilim", scope: !1093, file: !102, line: 684, type: !96)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !102, line: 681, column: 15)
!1094 = distinct !DILexicalBlock(scope: !1060, file: !102, line: 680, column: 17)
!1095 = !DILocation(line: 256, column: 33, scope: !1025)
!1096 = !DILocation(line: 256, column: 48, scope: !1025)
!1097 = !DILocation(line: 257, column: 39, scope: !1025)
!1098 = !DILocation(line: 257, column: 51, scope: !1025)
!1099 = !DILocation(line: 258, column: 46, scope: !1025)
!1100 = !DILocation(line: 258, column: 65, scope: !1025)
!1101 = !DILocation(line: 259, column: 47, scope: !1025)
!1102 = !DILocation(line: 260, column: 39, scope: !1025)
!1103 = !DILocation(line: 261, column: 39, scope: !1025)
!1104 = !DILocation(line: 264, column: 10, scope: !1025)
!1105 = !DILocation(line: 265, column: 10, scope: !1025)
!1106 = !DILocation(line: 266, column: 15, scope: !1025)
!1107 = !DILocation(line: 267, column: 10, scope: !1025)
!1108 = !DILocation(line: 268, column: 8, scope: !1025)
!1109 = !DILocation(line: 269, column: 25, scope: !1025)
!1110 = !DILocation(line: 269, column: 36, scope: !1025)
!1111 = !DILocation(line: 270, column: 8, scope: !1025)
!1112 = !DILocation(line: 271, column: 8, scope: !1025)
!1113 = !DILocation(line: 272, column: 8, scope: !1025)
!1114 = !DILocation(line: 273, column: 8, scope: !1025)
!1115 = !DILocation(line: 273, column: 3, scope: !1025)
!1116 = !DILocation(line: 0, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1025, file: !102, line: 317, column: 5)
!1118 = !DILocation(line: 316, column: 3, scope: !1025)
!1119 = !DILocation(line: 323, column: 11, scope: !1117)
!1120 = !DILocation(line: 323, column: 12, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1117, file: !102, line: 323, column: 11)
!1122 = !DILocation(line: 324, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !102, line: 324, column: 9)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !102, line: 324, column: 9)
!1125 = !DILocation(line: 324, column: 9, scope: !1124)
!1126 = !{!620, !620, i64 0}
!1127 = !DILocation(line: 362, column: 26, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !102, line: 340, column: 11)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !102, line: 339, column: 13)
!1130 = distinct !DILexicalBlock(scope: !1117, file: !102, line: 338, column: 7)
!1131 = !DILocation(line: 363, column: 27, scope: !1128)
!1132 = !DILocation(line: 364, column: 11, scope: !1128)
!1133 = !DILocation(line: 365, column: 14, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !102, line: 365, column: 13)
!1135 = !DILocation(line: 365, column: 13, scope: !1130)
!1136 = !DILocation(line: 366, column: 43, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !102, line: 366, column: 11)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !102, line: 366, column: 11)
!1139 = !DILocation(line: 366, column: 11, scope: !1138)
!1140 = !DILocation(line: 367, column: 13, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !102, line: 367, column: 13)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !102, line: 367, column: 13)
!1143 = !DILocation(line: 367, column: 13, scope: !1142)
!1144 = !DILocation(line: 366, column: 70, scope: !1137)
!1145 = distinct !{!1145, !1139, !1146}
!1146 = !DILocation(line: 367, column: 13, scope: !1138)
!1147 = !DILocation(line: 370, column: 28, scope: !1130)
!1148 = !DILocation(line: 372, column: 7, scope: !1117)
!1149 = !DILocation(line: 376, column: 7, scope: !1117)
!1150 = !DILocation(line: 379, column: 7, scope: !1117)
!1151 = !DILocation(line: 381, column: 12, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1117, file: !102, line: 381, column: 11)
!1153 = !DILocation(line: 381, column: 11, scope: !1117)
!1154 = !DILocation(line: 0, scope: !1152)
!1155 = !DILocation(line: 386, column: 12, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1117, file: !102, line: 386, column: 11)
!1157 = !DILocation(line: 386, column: 11, scope: !1117)
!1158 = !DILocation(line: 387, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !102, line: 387, column: 9)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !102, line: 387, column: 9)
!1161 = !DILocation(line: 387, column: 9, scope: !1160)
!1162 = !DILocation(line: 394, column: 7, scope: !1117)
!1163 = !DILocation(line: 397, column: 7, scope: !1117)
!1164 = !DILocation(line: 0, scope: !1025)
!1165 = !DILocation(line: 263, column: 10, scope: !1025)
!1166 = !DILocation(line: 400, column: 8, scope: !1054)
!1167 = !DILocation(line: 0, scope: !1053)
!1168 = !DILocation(line: 400, column: 27, scope: !1053)
!1169 = !DILocation(line: 400, column: 19, scope: !1053)
!1170 = !DILocation(line: 400, column: 41, scope: !1053)
!1171 = !DILocation(line: 400, column: 48, scope: !1053)
!1172 = !DILocation(line: 400, column: 3, scope: !1054)
!1173 = !DILocation(line: 400, column: 60, scope: !1053)
!1174 = !DILocation(line: 404, column: 12, scope: !1052)
!1175 = !DILocation(line: 405, column: 12, scope: !1052)
!1176 = !DILocation(line: 406, column: 12, scope: !1052)
!1177 = !DILocation(line: 409, column: 11, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1052, file: !102, line: 408, column: 11)
!1179 = !DILocation(line: 411, column: 17, scope: !1178)
!1180 = !DILocation(line: 412, column: 39, scope: !1178)
!1181 = !DILocation(line: 416, column: 32, scope: !1178)
!1182 = !DILocation(line: 412, column: 19, scope: !1178)
!1183 = !DILocation(line: 412, column: 15, scope: !1178)
!1184 = !DILocation(line: 417, column: 11, scope: !1178)
!1185 = !DILocation(line: 417, column: 26, scope: !1178)
!1186 = !DILocation(line: 417, column: 14, scope: !1178)
!1187 = !DILocation(line: 417, column: 63, scope: !1178)
!1188 = !DILocation(line: 408, column: 11, scope: !1052)
!1189 = !DILocation(line: 0, scope: !1052)
!1190 = !DILocation(line: 424, column: 11, scope: !1052)
!1191 = !DILocation(line: 402, column: 21, scope: !1052)
!1192 = !DILocation(line: 425, column: 7, scope: !1052)
!1193 = !DILocation(line: 428, column: 15, scope: !1061)
!1194 = !DILocation(line: 430, column: 15, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !102, line: 430, column: 15)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !102, line: 429, column: 13)
!1197 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 428, column: 15)
!1198 = !DILocation(line: 430, column: 15, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !102, line: 430, column: 15)
!1200 = !DILocation(line: 430, column: 15, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !102, line: 430, column: 15)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 430, column: 15)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !102, line: 430, column: 15)
!1204 = !DILocation(line: 430, column: 15, scope: !1202)
!1205 = !DILocation(line: 430, column: 15, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !102, line: 430, column: 15)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 430, column: 15)
!1208 = !DILocation(line: 430, column: 15, scope: !1207)
!1209 = !DILocation(line: 430, column: 15, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !102, line: 430, column: 15)
!1211 = distinct !DILexicalBlock(scope: !1203, file: !102, line: 430, column: 15)
!1212 = !DILocation(line: 430, column: 15, scope: !1211)
!1213 = !DILocation(line: 430, column: 15, scope: !1203)
!1214 = !DILocation(line: 430, column: 15, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !102, line: 430, column: 15)
!1216 = distinct !DILexicalBlock(scope: !1195, file: !102, line: 430, column: 15)
!1217 = !DILocation(line: 430, column: 15, scope: !1216)
!1218 = !DILocation(line: 438, column: 19, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1196, file: !102, line: 437, column: 19)
!1220 = !DILocation(line: 438, column: 24, scope: !1219)
!1221 = !DILocation(line: 438, column: 28, scope: !1219)
!1222 = !DILocation(line: 438, column: 38, scope: !1219)
!1223 = !DILocation(line: 438, column: 48, scope: !1219)
!1224 = !DILocation(line: 438, column: 59, scope: !1219)
!1225 = !DILocation(line: 440, column: 19, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !102, line: 440, column: 19)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !102, line: 440, column: 19)
!1228 = distinct !DILexicalBlock(scope: !1219, file: !102, line: 439, column: 17)
!1229 = !DILocation(line: 440, column: 19, scope: !1227)
!1230 = !DILocation(line: 441, column: 19, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !102, line: 441, column: 19)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !102, line: 441, column: 19)
!1233 = !DILocation(line: 441, column: 19, scope: !1232)
!1234 = !DILocation(line: 442, column: 17, scope: !1228)
!1235 = !DILocation(line: 449, column: 20, scope: !1197)
!1236 = !DILocation(line: 454, column: 11, scope: !1061)
!1237 = !DILocation(line: 457, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 455, column: 13)
!1239 = !DILocation(line: 463, column: 19, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1238, file: !102, line: 462, column: 19)
!1241 = !DILocation(line: 463, column: 24, scope: !1240)
!1242 = !DILocation(line: 463, column: 28, scope: !1240)
!1243 = !DILocation(line: 463, column: 38, scope: !1240)
!1244 = !DILocation(line: 463, column: 47, scope: !1240)
!1245 = !DILocation(line: 463, column: 41, scope: !1240)
!1246 = !DILocation(line: 463, column: 52, scope: !1240)
!1247 = !DILocation(line: 462, column: 19, scope: !1238)
!1248 = !DILocation(line: 464, column: 25, scope: !1240)
!1249 = !DILocation(line: 464, column: 17, scope: !1240)
!1250 = !DILocation(line: 471, column: 25, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1240, file: !102, line: 465, column: 19)
!1252 = !DILocation(line: 475, column: 21, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !102, line: 475, column: 21)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !102, line: 475, column: 21)
!1255 = !DILocation(line: 475, column: 21, scope: !1254)
!1256 = !DILocation(line: 476, column: 21, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !102, line: 476, column: 21)
!1258 = distinct !DILexicalBlock(scope: !1251, file: !102, line: 476, column: 21)
!1259 = !DILocation(line: 476, column: 21, scope: !1258)
!1260 = !DILocation(line: 477, column: 21, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !102, line: 477, column: 21)
!1262 = distinct !DILexicalBlock(scope: !1251, file: !102, line: 477, column: 21)
!1263 = !DILocation(line: 477, column: 21, scope: !1262)
!1264 = !DILocation(line: 478, column: 21, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !102, line: 478, column: 21)
!1266 = distinct !DILexicalBlock(scope: !1251, file: !102, line: 478, column: 21)
!1267 = !DILocation(line: 478, column: 21, scope: !1266)
!1268 = !DILocation(line: 479, column: 21, scope: !1251)
!1269 = !DILocation(line: 403, column: 21, scope: !1052)
!1270 = !DILocation(line: 492, column: 31, scope: !1061)
!1271 = !DILocation(line: 493, column: 31, scope: !1061)
!1272 = !DILocation(line: 495, column: 31, scope: !1061)
!1273 = !DILocation(line: 496, column: 31, scope: !1061)
!1274 = !DILocation(line: 497, column: 31, scope: !1061)
!1275 = !DILocation(line: 500, column: 15, scope: !1061)
!1276 = !DILocation(line: 502, column: 19, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !102, line: 501, column: 13)
!1278 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 500, column: 15)
!1279 = !DILocation(line: 509, column: 33, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 509, column: 15)
!1281 = !DILocation(line: 0, scope: !1061)
!1282 = !DILocation(line: 514, column: 15, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 513, column: 15)
!1284 = !DILocation(line: 518, column: 15, scope: !1061)
!1285 = !DILocation(line: 526, column: 26, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 526, column: 15)
!1287 = !DILocation(line: 526, column: 15, scope: !1061)
!1288 = !DILocation(line: 526, column: 40, scope: !1286)
!1289 = !DILocation(line: 526, column: 47, scope: !1286)
!1290 = !DILocation(line: 530, column: 17, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 530, column: 15)
!1292 = !DILocation(line: 526, column: 18, scope: !1286)
!1293 = !DILocation(line: 526, column: 65, scope: !1286)
!1294 = !DILocation(line: 530, column: 15, scope: !1061)
!1295 = !DILocation(line: 535, column: 11, scope: !1061)
!1296 = !DILocation(line: 549, column: 15, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 548, column: 15)
!1298 = !DILocation(line: 556, column: 15, scope: !1061)
!1299 = !DILocation(line: 558, column: 19, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !102, line: 557, column: 13)
!1301 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 556, column: 15)
!1302 = !DILocation(line: 561, column: 19, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !102, line: 561, column: 19)
!1304 = !DILocation(line: 561, column: 35, scope: !1303)
!1305 = !DILocation(line: 561, column: 30, scope: !1303)
!1306 = !DILocation(line: 570, column: 15, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !102, line: 570, column: 15)
!1308 = distinct !DILexicalBlock(scope: !1300, file: !102, line: 570, column: 15)
!1309 = !DILocation(line: 570, column: 15, scope: !1308)
!1310 = !DILocation(line: 571, column: 15, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !102, line: 571, column: 15)
!1312 = distinct !DILexicalBlock(scope: !1300, file: !102, line: 571, column: 15)
!1313 = !DILocation(line: 571, column: 15, scope: !1312)
!1314 = !DILocation(line: 572, column: 15, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !102, line: 572, column: 15)
!1316 = distinct !DILexicalBlock(scope: !1300, file: !102, line: 572, column: 15)
!1317 = !DILocation(line: 572, column: 15, scope: !1316)
!1318 = !DILocation(line: 574, column: 13, scope: !1300)
!1319 = !DILocation(line: 614, column: 17, scope: !1060)
!1320 = !DILocation(line: 610, column: 20, scope: !1060)
!1321 = !DILocation(line: 617, column: 29, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1065, file: !102, line: 615, column: 15)
!1323 = !{!1324, !1324, i64 0}
!1324 = !{!"short", !620, i64 0}
!1325 = !DILocation(line: 617, column: 27, scope: !1322)
!1326 = !DILocation(line: 612, column: 18, scope: !1060)
!1327 = !DILocation(line: 618, column: 15, scope: !1322)
!1328 = !DILocation(line: 621, column: 17, scope: !1064)
!1329 = !DILocation(line: 622, column: 17, scope: !1064)
!1330 = !DILocation(line: 626, column: 29, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1064, file: !102, line: 626, column: 21)
!1332 = !DILocation(line: 626, column: 21, scope: !1064)
!1333 = !DILocation(line: 627, column: 29, scope: !1331)
!1334 = !DILocation(line: 627, column: 19, scope: !1331)
!1335 = !DILocation(line: 0, scope: !1178)
!1336 = !DILocation(line: 629, column: 17, scope: !1064)
!1337 = !DILocation(line: 624, column: 19, scope: !1064)
!1338 = !DILocation(line: 625, column: 27, scope: !1064)
!1339 = !DILocation(line: 631, column: 21, scope: !1082)
!1340 = !DILocation(line: 632, column: 56, scope: !1082)
!1341 = !DILocation(line: 632, column: 50, scope: !1082)
!1342 = !DILocation(line: 633, column: 53, scope: !1082)
!1343 = !DILocation(line: 621, column: 27, scope: !1064)
!1344 = !DILocation(line: 631, column: 29, scope: !1082)
!1345 = !DILocation(line: 632, column: 36, scope: !1082)
!1346 = !DILocation(line: 632, column: 28, scope: !1082)
!1347 = !DILocation(line: 634, column: 25, scope: !1082)
!1348 = !DILocation(line: 644, column: 38, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1089, file: !102, line: 642, column: 23)
!1350 = !DILocation(line: 644, column: 48, scope: !1349)
!1351 = !DILocation(line: 644, column: 51, scope: !1349)
!1352 = !DILocation(line: 644, column: 25, scope: !1349)
!1353 = !DILocation(line: 645, column: 28, scope: !1349)
!1354 = !DILocation(line: 644, column: 34, scope: !1349)
!1355 = distinct !{!1355, !1352, !1353}
!1356 = !DILocation(line: 658, column: 43, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !102, line: 658, column: 29)
!1358 = distinct !DILexicalBlock(scope: !1086, file: !102, line: 658, column: 29)
!1359 = !DILocation(line: 655, column: 29, scope: !1087)
!1360 = !DILocation(line: 657, column: 36, scope: !1086)
!1361 = !DILocation(line: 659, column: 49, scope: !1357)
!1362 = !DILocation(line: 659, column: 39, scope: !1357)
!1363 = !DILocation(line: 659, column: 31, scope: !1357)
!1364 = !DILocation(line: 658, column: 53, scope: !1357)
!1365 = !DILocation(line: 658, column: 29, scope: !1358)
!1366 = distinct !{!1366, !1365, !1367}
!1367 = !DILocation(line: 667, column: 33, scope: !1358)
!1368 = !DILocation(line: 674, column: 19, scope: !1064)
!1369 = !DILocation(line: 670, column: 41, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1088, file: !102, line: 670, column: 29)
!1371 = !DILocation(line: 670, column: 31, scope: !1370)
!1372 = !DILocation(line: 670, column: 29, scope: !1088)
!1373 = !DILocation(line: 672, column: 27, scope: !1088)
!1374 = !DILocation(line: 675, column: 26, scope: !1064)
!1375 = !DILocation(line: 675, column: 24, scope: !1064)
!1376 = !DILocation(line: 674, column: 19, scope: !1082)
!1377 = distinct !{!1377, !1336, !1378}
!1378 = !DILocation(line: 675, column: 44, scope: !1064)
!1379 = !DILocation(line: 676, column: 15, scope: !1065)
!1380 = !DILocation(line: 0, scope: !1331)
!1381 = !DILocation(line: 0, scope: !1064)
!1382 = !DILocation(line: 678, column: 40, scope: !1060)
!1383 = !DILocation(line: 680, column: 19, scope: !1094)
!1384 = !DILocation(line: 680, column: 45, scope: !1094)
!1385 = !DILocation(line: 680, column: 23, scope: !1094)
!1386 = !DILocation(line: 684, column: 33, scope: !1093)
!1387 = !DILocation(line: 684, column: 24, scope: !1093)
!1388 = !DILocation(line: 686, column: 17, scope: !1093)
!1389 = !DILocation(line: 0, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !102, line: 687, column: 19)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !102, line: 686, column: 17)
!1392 = distinct !DILexicalBlock(scope: !1093, file: !102, line: 686, column: 17)
!1393 = !DILocation(line: 0, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !102, line: 703, column: 21)
!1395 = !DILocation(line: 0, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !102, line: 696, column: 23)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !102, line: 695, column: 30)
!1398 = distinct !DILexicalBlock(scope: !1390, file: !102, line: 688, column: 25)
!1399 = !DILocation(line: 688, column: 43, scope: !1398)
!1400 = !DILocation(line: 690, column: 25, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !102, line: 690, column: 25)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !102, line: 689, column: 23)
!1403 = !DILocation(line: 690, column: 25, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !102, line: 690, column: 25)
!1405 = !DILocation(line: 690, column: 25, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !102, line: 690, column: 25)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !102, line: 690, column: 25)
!1408 = distinct !DILexicalBlock(scope: !1404, file: !102, line: 690, column: 25)
!1409 = !DILocation(line: 690, column: 25, scope: !1407)
!1410 = !DILocation(line: 690, column: 25, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !102, line: 690, column: 25)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !102, line: 690, column: 25)
!1413 = !DILocation(line: 690, column: 25, scope: !1412)
!1414 = !DILocation(line: 690, column: 25, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !102, line: 690, column: 25)
!1416 = distinct !DILexicalBlock(scope: !1408, file: !102, line: 690, column: 25)
!1417 = !DILocation(line: 690, column: 25, scope: !1416)
!1418 = !DILocation(line: 690, column: 25, scope: !1408)
!1419 = !DILocation(line: 690, column: 25, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !102, line: 690, column: 25)
!1421 = distinct !DILexicalBlock(scope: !1401, file: !102, line: 690, column: 25)
!1422 = !DILocation(line: 690, column: 25, scope: !1421)
!1423 = !DILocation(line: 691, column: 25, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !102, line: 691, column: 25)
!1425 = distinct !DILexicalBlock(scope: !1402, file: !102, line: 691, column: 25)
!1426 = !DILocation(line: 691, column: 25, scope: !1425)
!1427 = !DILocation(line: 692, column: 25, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !102, line: 692, column: 25)
!1429 = distinct !DILexicalBlock(scope: !1402, file: !102, line: 692, column: 25)
!1430 = !DILocation(line: 692, column: 25, scope: !1429)
!1431 = !DILocation(line: 693, column: 38, scope: !1402)
!1432 = !DILocation(line: 693, column: 33, scope: !1402)
!1433 = !DILocation(line: 694, column: 23, scope: !1402)
!1434 = !DILocation(line: 695, column: 30, scope: !1397)
!1435 = !DILocation(line: 695, column: 30, scope: !1398)
!1436 = !DILocation(line: 697, column: 25, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !102, line: 697, column: 25)
!1438 = distinct !DILexicalBlock(scope: !1396, file: !102, line: 697, column: 25)
!1439 = !DILocation(line: 697, column: 25, scope: !1438)
!1440 = !DILocation(line: 699, column: 23, scope: !1396)
!1441 = !DILocation(line: 0, scope: !1429)
!1442 = !DILocation(line: 0, scope: !1402)
!1443 = !DILocation(line: 0, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1178, file: !102, line: 418, column: 9)
!1445 = !DILocation(line: 0, scope: !1401)
!1446 = !DILocation(line: 700, column: 35, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1390, file: !102, line: 700, column: 25)
!1448 = !DILocation(line: 700, column: 30, scope: !1447)
!1449 = !DILocation(line: 700, column: 25, scope: !1390)
!1450 = !DILocation(line: 702, column: 21, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !102, line: 702, column: 21)
!1452 = distinct !DILexicalBlock(scope: !1390, file: !102, line: 702, column: 21)
!1453 = !DILocation(line: 702, column: 21, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !102, line: 702, column: 21)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !102, line: 702, column: 21)
!1456 = distinct !DILexicalBlock(scope: !1451, file: !102, line: 702, column: 21)
!1457 = !DILocation(line: 702, column: 21, scope: !1455)
!1458 = !DILocation(line: 702, column: 21, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !102, line: 702, column: 21)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !102, line: 702, column: 21)
!1461 = !DILocation(line: 702, column: 21, scope: !1460)
!1462 = !DILocation(line: 702, column: 21, scope: !1456)
!1463 = !DILocation(line: 0, scope: !1438)
!1464 = !DILocation(line: 703, column: 21, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1394, file: !102, line: 703, column: 21)
!1466 = !DILocation(line: 703, column: 21, scope: !1394)
!1467 = !DILocation(line: 704, column: 25, scope: !1390)
!1468 = !DILocation(line: 686, column: 17, scope: !1391)
!1469 = distinct !{!1469, !1470, !1471}
!1470 = !DILocation(line: 686, column: 17, scope: !1392)
!1471 = !DILocation(line: 705, column: 19, scope: !1392)
!1472 = !DILocation(line: 0, scope: !1054)
!1473 = !DILocation(line: 416, column: 30, scope: !1178)
!1474 = !DILocation(line: 712, column: 34, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1052, file: !102, line: 712, column: 11)
!1476 = !DILocation(line: 714, column: 14, scope: !1475)
!1477 = !DILocation(line: 715, column: 14, scope: !1475)
!1478 = !DILocation(line: 715, column: 35, scope: !1475)
!1479 = !DILocation(line: 715, column: 17, scope: !1475)
!1480 = !DILocation(line: 715, column: 47, scope: !1475)
!1481 = !DILocation(line: 715, column: 65, scope: !1475)
!1482 = !DILocation(line: 716, column: 15, scope: !1475)
!1483 = !DILocation(line: 716, column: 11, scope: !1475)
!1484 = !DILocation(line: 712, column: 11, scope: !1052)
!1485 = !DILocation(line: 400, column: 10, scope: !1054)
!1486 = !DILocation(line: 0, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !102, line: 519, column: 13)
!1488 = distinct !DILexicalBlock(scope: !1061, file: !102, line: 518, column: 15)
!1489 = !DILocation(line: 720, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1052, file: !102, line: 720, column: 7)
!1491 = !DILocation(line: 720, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1490, file: !102, line: 720, column: 7)
!1493 = !DILocation(line: 720, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !102, line: 720, column: 7)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !102, line: 720, column: 7)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !102, line: 720, column: 7)
!1497 = !DILocation(line: 720, column: 7, scope: !1495)
!1498 = !DILocation(line: 720, column: 7, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !102, line: 720, column: 7)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !102, line: 720, column: 7)
!1501 = !DILocation(line: 720, column: 7, scope: !1500)
!1502 = !DILocation(line: 720, column: 7, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !102, line: 720, column: 7)
!1504 = distinct !DILexicalBlock(scope: !1496, file: !102, line: 720, column: 7)
!1505 = !DILocation(line: 720, column: 7, scope: !1504)
!1506 = !DILocation(line: 720, column: 7, scope: !1496)
!1507 = !DILocation(line: 720, column: 7, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !102, line: 720, column: 7)
!1509 = distinct !DILexicalBlock(scope: !1490, file: !102, line: 720, column: 7)
!1510 = !DILocation(line: 720, column: 7, scope: !1509)
!1511 = !DILocation(line: 723, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !102, line: 723, column: 7)
!1513 = distinct !DILexicalBlock(scope: !1052, file: !102, line: 723, column: 7)
!1514 = !DILocation(line: 424, column: 9, scope: !1052)
!1515 = !DILocation(line: 723, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !102, line: 723, column: 7)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !102, line: 723, column: 7)
!1518 = distinct !DILexicalBlock(scope: !1512, file: !102, line: 723, column: 7)
!1519 = !DILocation(line: 723, column: 7, scope: !1517)
!1520 = !DILocation(line: 723, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !102, line: 723, column: 7)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !102, line: 723, column: 7)
!1523 = !DILocation(line: 723, column: 7, scope: !1522)
!1524 = !DILocation(line: 723, column: 7, scope: !1518)
!1525 = !DILocation(line: 724, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !102, line: 724, column: 7)
!1527 = distinct !DILexicalBlock(scope: !1052, file: !102, line: 724, column: 7)
!1528 = !DILocation(line: 724, column: 7, scope: !1527)
!1529 = !DILocation(line: 726, column: 13, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1052, file: !102, line: 726, column: 11)
!1531 = !DILocation(line: 726, column: 11, scope: !1052)
!1532 = !DILocation(line: 728, column: 5, scope: !1053)
!1533 = !DILocation(line: 400, column: 75, scope: !1053)
!1534 = !DILocation(line: 400, column: 3, scope: !1053)
!1535 = distinct !{!1535, !1172, !1536}
!1536 = !DILocation(line: 728, column: 5, scope: !1054)
!1537 = !DILocation(line: 730, column: 11, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1025, file: !102, line: 730, column: 7)
!1539 = !DILocation(line: 730, column: 16, scope: !1538)
!1540 = !DILocation(line: 738, column: 51, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1025, file: !102, line: 738, column: 7)
!1542 = !DILocation(line: 739, column: 10, scope: !1541)
!1543 = !DILocation(line: 741, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !102, line: 741, column: 11)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !102, line: 740, column: 5)
!1546 = !DILocation(line: 741, column: 11, scope: !1545)
!1547 = !DILocation(line: 742, column: 16, scope: !1544)
!1548 = !DILocation(line: 742, column: 9, scope: !1544)
!1549 = !DILocation(line: 746, column: 18, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1544, file: !102, line: 746, column: 16)
!1551 = !DILocation(line: 746, column: 32, scope: !1550)
!1552 = !DILocation(line: 746, column: 29, scope: !1550)
!1553 = !DILocation(line: 755, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1025, file: !102, line: 755, column: 7)
!1555 = !DILocation(line: 755, column: 20, scope: !1554)
!1556 = !DILocation(line: 756, column: 12, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !102, line: 756, column: 5)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !102, line: 756, column: 5)
!1559 = !DILocation(line: 756, column: 5, scope: !1558)
!1560 = !DILocation(line: 757, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !102, line: 757, column: 7)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !102, line: 757, column: 7)
!1563 = !DILocation(line: 757, column: 7, scope: !1562)
!1564 = !DILocation(line: 756, column: 39, scope: !1557)
!1565 = distinct !{!1565, !1559, !1566}
!1566 = !DILocation(line: 757, column: 7, scope: !1558)
!1567 = !DILocation(line: 759, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1025, file: !102, line: 759, column: 7)
!1569 = !DILocation(line: 759, column: 7, scope: !1025)
!1570 = !DILocation(line: 760, column: 5, scope: !1568)
!1571 = !DILocation(line: 760, column: 17, scope: !1568)
!1572 = !DILocation(line: 766, column: 21, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1025, file: !102, line: 766, column: 7)
!1574 = !DILocation(line: 766, column: 54, scope: !1573)
!1575 = !DILocation(line: 766, column: 51, scope: !1573)
!1576 = !DILocation(line: 770, column: 42, scope: !1025)
!1577 = !DILocation(line: 768, column: 10, scope: !1025)
!1578 = !DILocation(line: 768, column: 3, scope: !1025)
!1579 = !DILocation(line: 772, column: 1, scope: !1025)
!1580 = distinct !DISubprogram(name: "gettext_quote", scope: !102, file: !102, line: 207, type: !1581, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!17, !17, !59}
!1583 = !{!1584, !1585, !1586, !1587}
!1584 = !DILocalVariable(name: "msgid", arg: 1, scope: !1580, file: !102, line: 207, type: !17)
!1585 = !DILocalVariable(name: "s", arg: 2, scope: !1580, file: !102, line: 207, type: !59)
!1586 = !DILocalVariable(name: "translation", scope: !1580, file: !102, line: 209, type: !17)
!1587 = !DILocalVariable(name: "locale_code", scope: !1580, file: !102, line: 210, type: !17)
!1588 = !DILocation(line: 207, column: 28, scope: !1580)
!1589 = !DILocation(line: 207, column: 54, scope: !1580)
!1590 = !DILocation(line: 209, column: 29, scope: !1580)
!1591 = !DILocation(line: 209, column: 15, scope: !1580)
!1592 = !DILocation(line: 212, column: 19, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1580, file: !102, line: 212, column: 7)
!1594 = !DILocation(line: 212, column: 7, scope: !1580)
!1595 = !DILocation(line: 233, column: 17, scope: !1580)
!1596 = !DILocation(line: 210, column: 15, scope: !1580)
!1597 = !DILocalVariable(name: "s1", arg: 1, scope: !1598, file: !1599, line: 160, type: !17)
!1598 = distinct !DISubprogram(name: "strcaseeq0", scope: !1599, file: !1599, line: 160, type: !1600, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1602)
!1599 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1602 = !{!1597, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612}
!1603 = !DILocalVariable(name: "s2", arg: 2, scope: !1598, file: !1599, line: 160, type: !17)
!1604 = !DILocalVariable(name: "s20", arg: 3, scope: !1598, file: !1599, line: 160, type: !7)
!1605 = !DILocalVariable(name: "s21", arg: 4, scope: !1598, file: !1599, line: 160, type: !7)
!1606 = !DILocalVariable(name: "s22", arg: 5, scope: !1598, file: !1599, line: 160, type: !7)
!1607 = !DILocalVariable(name: "s23", arg: 6, scope: !1598, file: !1599, line: 160, type: !7)
!1608 = !DILocalVariable(name: "s24", arg: 7, scope: !1598, file: !1599, line: 160, type: !7)
!1609 = !DILocalVariable(name: "s25", arg: 8, scope: !1598, file: !1599, line: 160, type: !7)
!1610 = !DILocalVariable(name: "s26", arg: 9, scope: !1598, file: !1599, line: 160, type: !7)
!1611 = !DILocalVariable(name: "s27", arg: 10, scope: !1598, file: !1599, line: 160, type: !7)
!1612 = !DILocalVariable(name: "s28", arg: 11, scope: !1598, file: !1599, line: 160, type: !7)
!1613 = !DILocation(line: 160, column: 25, scope: !1598, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 234, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1580, file: !102, line: 234, column: 7)
!1616 = !DILocation(line: 160, column: 41, scope: !1598, inlinedAt: !1614)
!1617 = !DILocation(line: 160, column: 50, scope: !1598, inlinedAt: !1614)
!1618 = !DILocation(line: 160, column: 60, scope: !1598, inlinedAt: !1614)
!1619 = !DILocation(line: 160, column: 70, scope: !1598, inlinedAt: !1614)
!1620 = !DILocation(line: 160, column: 80, scope: !1598, inlinedAt: !1614)
!1621 = !DILocation(line: 160, column: 90, scope: !1598, inlinedAt: !1614)
!1622 = !DILocation(line: 160, column: 100, scope: !1598, inlinedAt: !1614)
!1623 = !DILocation(line: 160, column: 110, scope: !1598, inlinedAt: !1614)
!1624 = !DILocation(line: 160, column: 120, scope: !1598, inlinedAt: !1614)
!1625 = !DILocation(line: 160, column: 130, scope: !1598, inlinedAt: !1614)
!1626 = !DILocation(line: 162, column: 7, scope: !1627, inlinedAt: !1614)
!1627 = distinct !DILexicalBlock(scope: !1598, file: !1599, line: 162, column: 7)
!1628 = !DILocalVariable(name: "s1", arg: 1, scope: !1629, file: !1599, line: 146, type: !17)
!1629 = distinct !DISubprogram(name: "strcaseeq1", scope: !1599, file: !1599, line: 146, type: !1630, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1632)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1632 = !{!1628, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1633 = !DILocalVariable(name: "s2", arg: 2, scope: !1629, file: !1599, line: 146, type: !17)
!1634 = !DILocalVariable(name: "s21", arg: 3, scope: !1629, file: !1599, line: 146, type: !7)
!1635 = !DILocalVariable(name: "s22", arg: 4, scope: !1629, file: !1599, line: 146, type: !7)
!1636 = !DILocalVariable(name: "s23", arg: 5, scope: !1629, file: !1599, line: 146, type: !7)
!1637 = !DILocalVariable(name: "s24", arg: 6, scope: !1629, file: !1599, line: 146, type: !7)
!1638 = !DILocalVariable(name: "s25", arg: 7, scope: !1629, file: !1599, line: 146, type: !7)
!1639 = !DILocalVariable(name: "s26", arg: 8, scope: !1629, file: !1599, line: 146, type: !7)
!1640 = !DILocalVariable(name: "s27", arg: 9, scope: !1629, file: !1599, line: 146, type: !7)
!1641 = !DILocalVariable(name: "s28", arg: 10, scope: !1629, file: !1599, line: 146, type: !7)
!1642 = !DILocation(line: 146, column: 25, scope: !1629, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 167, column: 16, scope: !1644, inlinedAt: !1614)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !1599, line: 164, column: 11)
!1645 = distinct !DILexicalBlock(scope: !1627, file: !1599, line: 163, column: 5)
!1646 = !DILocation(line: 146, column: 41, scope: !1629, inlinedAt: !1643)
!1647 = !DILocation(line: 146, column: 50, scope: !1629, inlinedAt: !1643)
!1648 = !DILocation(line: 146, column: 60, scope: !1629, inlinedAt: !1643)
!1649 = !DILocation(line: 146, column: 70, scope: !1629, inlinedAt: !1643)
!1650 = !DILocation(line: 146, column: 80, scope: !1629, inlinedAt: !1643)
!1651 = !DILocation(line: 146, column: 90, scope: !1629, inlinedAt: !1643)
!1652 = !DILocation(line: 146, column: 100, scope: !1629, inlinedAt: !1643)
!1653 = !DILocation(line: 146, column: 110, scope: !1629, inlinedAt: !1643)
!1654 = !DILocation(line: 146, column: 120, scope: !1629, inlinedAt: !1643)
!1655 = !DILocation(line: 148, column: 7, scope: !1656, inlinedAt: !1643)
!1656 = distinct !DILexicalBlock(scope: !1629, file: !1599, line: 148, column: 7)
!1657 = !DILocalVariable(name: "s1", arg: 1, scope: !1658, file: !1599, line: 132, type: !17)
!1658 = distinct !DISubprogram(name: "strcaseeq2", scope: !1599, file: !1599, line: 132, type: !1659, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1661)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1661 = !{!1657, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1662 = !DILocalVariable(name: "s2", arg: 2, scope: !1658, file: !1599, line: 132, type: !17)
!1663 = !DILocalVariable(name: "s22", arg: 3, scope: !1658, file: !1599, line: 132, type: !7)
!1664 = !DILocalVariable(name: "s23", arg: 4, scope: !1658, file: !1599, line: 132, type: !7)
!1665 = !DILocalVariable(name: "s24", arg: 5, scope: !1658, file: !1599, line: 132, type: !7)
!1666 = !DILocalVariable(name: "s25", arg: 6, scope: !1658, file: !1599, line: 132, type: !7)
!1667 = !DILocalVariable(name: "s26", arg: 7, scope: !1658, file: !1599, line: 132, type: !7)
!1668 = !DILocalVariable(name: "s27", arg: 8, scope: !1658, file: !1599, line: 132, type: !7)
!1669 = !DILocalVariable(name: "s28", arg: 9, scope: !1658, file: !1599, line: 132, type: !7)
!1670 = !DILocation(line: 132, column: 25, scope: !1658, inlinedAt: !1671)
!1671 = distinct !DILocation(line: 153, column: 16, scope: !1672, inlinedAt: !1643)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !1599, line: 150, column: 11)
!1673 = distinct !DILexicalBlock(scope: !1656, file: !1599, line: 149, column: 5)
!1674 = !DILocation(line: 132, column: 41, scope: !1658, inlinedAt: !1671)
!1675 = !DILocation(line: 132, column: 50, scope: !1658, inlinedAt: !1671)
!1676 = !DILocation(line: 132, column: 60, scope: !1658, inlinedAt: !1671)
!1677 = !DILocation(line: 132, column: 70, scope: !1658, inlinedAt: !1671)
!1678 = !DILocation(line: 132, column: 80, scope: !1658, inlinedAt: !1671)
!1679 = !DILocation(line: 132, column: 90, scope: !1658, inlinedAt: !1671)
!1680 = !DILocation(line: 132, column: 100, scope: !1658, inlinedAt: !1671)
!1681 = !DILocation(line: 132, column: 110, scope: !1658, inlinedAt: !1671)
!1682 = !DILocation(line: 134, column: 7, scope: !1683, inlinedAt: !1671)
!1683 = distinct !DILexicalBlock(scope: !1658, file: !1599, line: 134, column: 7)
!1684 = !DILocalVariable(name: "s1", arg: 1, scope: !1685, file: !1599, line: 118, type: !17)
!1685 = distinct !DISubprogram(name: "strcaseeq3", scope: !1599, file: !1599, line: 118, type: !1686, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7}
!1688 = !{!1684, !1689, !1690, !1691, !1692, !1693, !1694, !1695}
!1689 = !DILocalVariable(name: "s2", arg: 2, scope: !1685, file: !1599, line: 118, type: !17)
!1690 = !DILocalVariable(name: "s23", arg: 3, scope: !1685, file: !1599, line: 118, type: !7)
!1691 = !DILocalVariable(name: "s24", arg: 4, scope: !1685, file: !1599, line: 118, type: !7)
!1692 = !DILocalVariable(name: "s25", arg: 5, scope: !1685, file: !1599, line: 118, type: !7)
!1693 = !DILocalVariable(name: "s26", arg: 6, scope: !1685, file: !1599, line: 118, type: !7)
!1694 = !DILocalVariable(name: "s27", arg: 7, scope: !1685, file: !1599, line: 118, type: !7)
!1695 = !DILocalVariable(name: "s28", arg: 8, scope: !1685, file: !1599, line: 118, type: !7)
!1696 = !DILocation(line: 118, column: 25, scope: !1685, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 139, column: 16, scope: !1698, inlinedAt: !1671)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !1599, line: 136, column: 11)
!1699 = distinct !DILexicalBlock(scope: !1683, file: !1599, line: 135, column: 5)
!1700 = !DILocation(line: 118, column: 41, scope: !1685, inlinedAt: !1697)
!1701 = !DILocation(line: 118, column: 50, scope: !1685, inlinedAt: !1697)
!1702 = !DILocation(line: 118, column: 60, scope: !1685, inlinedAt: !1697)
!1703 = !DILocation(line: 118, column: 70, scope: !1685, inlinedAt: !1697)
!1704 = !DILocation(line: 118, column: 80, scope: !1685, inlinedAt: !1697)
!1705 = !DILocation(line: 118, column: 90, scope: !1685, inlinedAt: !1697)
!1706 = !DILocation(line: 118, column: 100, scope: !1685, inlinedAt: !1697)
!1707 = !DILocation(line: 120, column: 7, scope: !1708, inlinedAt: !1697)
!1708 = distinct !DILexicalBlock(scope: !1685, file: !1599, line: 120, column: 7)
!1709 = !DILocation(line: 120, column: 7, scope: !1685, inlinedAt: !1697)
!1710 = !DILocalVariable(name: "s1", arg: 1, scope: !1711, file: !1599, line: 104, type: !17)
!1711 = distinct !DISubprogram(name: "strcaseeq4", scope: !1599, file: !1599, line: 104, type: !1712, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!20, !17, !17, !7, !7, !7, !7, !7}
!1714 = !{!1710, !1715, !1716, !1717, !1718, !1719, !1720}
!1715 = !DILocalVariable(name: "s2", arg: 2, scope: !1711, file: !1599, line: 104, type: !17)
!1716 = !DILocalVariable(name: "s24", arg: 3, scope: !1711, file: !1599, line: 104, type: !7)
!1717 = !DILocalVariable(name: "s25", arg: 4, scope: !1711, file: !1599, line: 104, type: !7)
!1718 = !DILocalVariable(name: "s26", arg: 5, scope: !1711, file: !1599, line: 104, type: !7)
!1719 = !DILocalVariable(name: "s27", arg: 6, scope: !1711, file: !1599, line: 104, type: !7)
!1720 = !DILocalVariable(name: "s28", arg: 7, scope: !1711, file: !1599, line: 104, type: !7)
!1721 = !DILocation(line: 104, column: 25, scope: !1711, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 125, column: 16, scope: !1723, inlinedAt: !1697)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !1599, line: 122, column: 11)
!1724 = distinct !DILexicalBlock(scope: !1708, file: !1599, line: 121, column: 5)
!1725 = !DILocation(line: 104, column: 41, scope: !1711, inlinedAt: !1722)
!1726 = !DILocation(line: 104, column: 50, scope: !1711, inlinedAt: !1722)
!1727 = !DILocation(line: 104, column: 60, scope: !1711, inlinedAt: !1722)
!1728 = !DILocation(line: 104, column: 70, scope: !1711, inlinedAt: !1722)
!1729 = !DILocation(line: 104, column: 80, scope: !1711, inlinedAt: !1722)
!1730 = !DILocation(line: 104, column: 90, scope: !1711, inlinedAt: !1722)
!1731 = !DILocation(line: 106, column: 7, scope: !1732, inlinedAt: !1722)
!1732 = distinct !DILexicalBlock(scope: !1711, file: !1599, line: 106, column: 7)
!1733 = !DILocation(line: 106, column: 7, scope: !1711, inlinedAt: !1722)
!1734 = !DILocalVariable(name: "s1", arg: 1, scope: !1735, file: !1599, line: 90, type: !17)
!1735 = distinct !DISubprogram(name: "strcaseeq5", scope: !1599, file: !1599, line: 90, type: !1736, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1738)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!20, !17, !17, !7, !7, !7, !7}
!1738 = !{!1734, !1739, !1740, !1741, !1742, !1743}
!1739 = !DILocalVariable(name: "s2", arg: 2, scope: !1735, file: !1599, line: 90, type: !17)
!1740 = !DILocalVariable(name: "s25", arg: 3, scope: !1735, file: !1599, line: 90, type: !7)
!1741 = !DILocalVariable(name: "s26", arg: 4, scope: !1735, file: !1599, line: 90, type: !7)
!1742 = !DILocalVariable(name: "s27", arg: 5, scope: !1735, file: !1599, line: 90, type: !7)
!1743 = !DILocalVariable(name: "s28", arg: 6, scope: !1735, file: !1599, line: 90, type: !7)
!1744 = !DILocation(line: 90, column: 25, scope: !1735, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 111, column: 16, scope: !1746, inlinedAt: !1722)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !1599, line: 108, column: 11)
!1747 = distinct !DILexicalBlock(scope: !1732, file: !1599, line: 107, column: 5)
!1748 = !DILocation(line: 90, column: 41, scope: !1735, inlinedAt: !1745)
!1749 = !DILocation(line: 90, column: 50, scope: !1735, inlinedAt: !1745)
!1750 = !DILocation(line: 90, column: 60, scope: !1735, inlinedAt: !1745)
!1751 = !DILocation(line: 90, column: 70, scope: !1735, inlinedAt: !1745)
!1752 = !DILocation(line: 90, column: 80, scope: !1735, inlinedAt: !1745)
!1753 = !DILocation(line: 92, column: 7, scope: !1754, inlinedAt: !1745)
!1754 = distinct !DILexicalBlock(scope: !1735, file: !1599, line: 92, column: 7)
!1755 = !DILocation(line: 92, column: 7, scope: !1735, inlinedAt: !1745)
!1756 = !DILocation(line: 235, column: 12, scope: !1615)
!1757 = !DILocation(line: 235, column: 21, scope: !1615)
!1758 = !DILocation(line: 235, column: 5, scope: !1615)
!1759 = !DILocation(line: 146, column: 25, scope: !1629, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 167, column: 16, scope: !1644, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 236, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1580, file: !102, line: 236, column: 7)
!1763 = !DILocation(line: 146, column: 41, scope: !1629, inlinedAt: !1760)
!1764 = !DILocation(line: 146, column: 50, scope: !1629, inlinedAt: !1760)
!1765 = !DILocation(line: 146, column: 60, scope: !1629, inlinedAt: !1760)
!1766 = !DILocation(line: 146, column: 70, scope: !1629, inlinedAt: !1760)
!1767 = !DILocation(line: 146, column: 80, scope: !1629, inlinedAt: !1760)
!1768 = !DILocation(line: 146, column: 90, scope: !1629, inlinedAt: !1760)
!1769 = !DILocation(line: 146, column: 100, scope: !1629, inlinedAt: !1760)
!1770 = !DILocation(line: 146, column: 110, scope: !1629, inlinedAt: !1760)
!1771 = !DILocation(line: 146, column: 120, scope: !1629, inlinedAt: !1760)
!1772 = !DILocation(line: 148, column: 7, scope: !1656, inlinedAt: !1760)
!1773 = !DILocation(line: 132, column: 25, scope: !1658, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 153, column: 16, scope: !1672, inlinedAt: !1760)
!1775 = !DILocation(line: 132, column: 41, scope: !1658, inlinedAt: !1774)
!1776 = !DILocation(line: 132, column: 50, scope: !1658, inlinedAt: !1774)
!1777 = !DILocation(line: 132, column: 60, scope: !1658, inlinedAt: !1774)
!1778 = !DILocation(line: 132, column: 70, scope: !1658, inlinedAt: !1774)
!1779 = !DILocation(line: 132, column: 80, scope: !1658, inlinedAt: !1774)
!1780 = !DILocation(line: 132, column: 90, scope: !1658, inlinedAt: !1774)
!1781 = !DILocation(line: 132, column: 100, scope: !1658, inlinedAt: !1774)
!1782 = !DILocation(line: 132, column: 110, scope: !1658, inlinedAt: !1774)
!1783 = !DILocation(line: 134, column: 7, scope: !1683, inlinedAt: !1774)
!1784 = !DILocation(line: 134, column: 7, scope: !1658, inlinedAt: !1774)
!1785 = !DILocation(line: 118, column: 25, scope: !1685, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 139, column: 16, scope: !1698, inlinedAt: !1774)
!1787 = !DILocation(line: 118, column: 41, scope: !1685, inlinedAt: !1786)
!1788 = !DILocation(line: 118, column: 50, scope: !1685, inlinedAt: !1786)
!1789 = !DILocation(line: 118, column: 60, scope: !1685, inlinedAt: !1786)
!1790 = !DILocation(line: 118, column: 70, scope: !1685, inlinedAt: !1786)
!1791 = !DILocation(line: 118, column: 80, scope: !1685, inlinedAt: !1786)
!1792 = !DILocation(line: 118, column: 90, scope: !1685, inlinedAt: !1786)
!1793 = !DILocation(line: 118, column: 100, scope: !1685, inlinedAt: !1786)
!1794 = !DILocation(line: 120, column: 7, scope: !1708, inlinedAt: !1786)
!1795 = !DILocation(line: 120, column: 7, scope: !1685, inlinedAt: !1786)
!1796 = !DILocation(line: 104, column: 25, scope: !1711, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 125, column: 16, scope: !1723, inlinedAt: !1786)
!1798 = !DILocation(line: 104, column: 41, scope: !1711, inlinedAt: !1797)
!1799 = !DILocation(line: 104, column: 50, scope: !1711, inlinedAt: !1797)
!1800 = !DILocation(line: 104, column: 60, scope: !1711, inlinedAt: !1797)
!1801 = !DILocation(line: 104, column: 70, scope: !1711, inlinedAt: !1797)
!1802 = !DILocation(line: 104, column: 80, scope: !1711, inlinedAt: !1797)
!1803 = !DILocation(line: 104, column: 90, scope: !1711, inlinedAt: !1797)
!1804 = !DILocation(line: 106, column: 7, scope: !1732, inlinedAt: !1797)
!1805 = !DILocation(line: 106, column: 7, scope: !1711, inlinedAt: !1797)
!1806 = !DILocation(line: 90, column: 25, scope: !1735, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 111, column: 16, scope: !1746, inlinedAt: !1797)
!1808 = !DILocation(line: 90, column: 41, scope: !1735, inlinedAt: !1807)
!1809 = !DILocation(line: 90, column: 50, scope: !1735, inlinedAt: !1807)
!1810 = !DILocation(line: 90, column: 60, scope: !1735, inlinedAt: !1807)
!1811 = !DILocation(line: 90, column: 70, scope: !1735, inlinedAt: !1807)
!1812 = !DILocation(line: 90, column: 80, scope: !1735, inlinedAt: !1807)
!1813 = !DILocation(line: 92, column: 7, scope: !1754, inlinedAt: !1807)
!1814 = !DILocation(line: 92, column: 7, scope: !1735, inlinedAt: !1807)
!1815 = !DILocalVariable(name: "s1", arg: 1, scope: !1816, file: !1599, line: 76, type: !17)
!1816 = distinct !DISubprogram(name: "strcaseeq6", scope: !1599, file: !1599, line: 76, type: !1817, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!20, !17, !17, !7, !7, !7}
!1819 = !{!1815, !1820, !1821, !1822, !1823}
!1820 = !DILocalVariable(name: "s2", arg: 2, scope: !1816, file: !1599, line: 76, type: !17)
!1821 = !DILocalVariable(name: "s26", arg: 3, scope: !1816, file: !1599, line: 76, type: !7)
!1822 = !DILocalVariable(name: "s27", arg: 4, scope: !1816, file: !1599, line: 76, type: !7)
!1823 = !DILocalVariable(name: "s28", arg: 5, scope: !1816, file: !1599, line: 76, type: !7)
!1824 = !DILocation(line: 76, column: 25, scope: !1816, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 97, column: 16, scope: !1826, inlinedAt: !1807)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !1599, line: 94, column: 11)
!1827 = distinct !DILexicalBlock(scope: !1754, file: !1599, line: 93, column: 5)
!1828 = !DILocation(line: 76, column: 41, scope: !1816, inlinedAt: !1825)
!1829 = !DILocation(line: 76, column: 50, scope: !1816, inlinedAt: !1825)
!1830 = !DILocation(line: 76, column: 60, scope: !1816, inlinedAt: !1825)
!1831 = !DILocation(line: 76, column: 70, scope: !1816, inlinedAt: !1825)
!1832 = !DILocation(line: 78, column: 7, scope: !1833, inlinedAt: !1825)
!1833 = distinct !DILexicalBlock(scope: !1816, file: !1599, line: 78, column: 7)
!1834 = !DILocation(line: 78, column: 7, scope: !1816, inlinedAt: !1825)
!1835 = !DILocalVariable(name: "s1", arg: 1, scope: !1836, file: !1599, line: 62, type: !17)
!1836 = distinct !DISubprogram(name: "strcaseeq7", scope: !1599, file: !1599, line: 62, type: !1837, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!20, !17, !17, !7, !7}
!1839 = !{!1835, !1840, !1841, !1842}
!1840 = !DILocalVariable(name: "s2", arg: 2, scope: !1836, file: !1599, line: 62, type: !17)
!1841 = !DILocalVariable(name: "s27", arg: 3, scope: !1836, file: !1599, line: 62, type: !7)
!1842 = !DILocalVariable(name: "s28", arg: 4, scope: !1836, file: !1599, line: 62, type: !7)
!1843 = !DILocation(line: 62, column: 25, scope: !1836, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 83, column: 16, scope: !1845, inlinedAt: !1825)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !1599, line: 80, column: 11)
!1846 = distinct !DILexicalBlock(scope: !1833, file: !1599, line: 79, column: 5)
!1847 = !DILocation(line: 62, column: 41, scope: !1836, inlinedAt: !1844)
!1848 = !DILocation(line: 62, column: 50, scope: !1836, inlinedAt: !1844)
!1849 = !DILocation(line: 62, column: 60, scope: !1836, inlinedAt: !1844)
!1850 = !DILocation(line: 64, column: 7, scope: !1851, inlinedAt: !1844)
!1851 = distinct !DILexicalBlock(scope: !1836, file: !1599, line: 64, column: 7)
!1852 = !DILocation(line: 236, column: 7, scope: !1580)
!1853 = !DILocation(line: 237, column: 12, scope: !1762)
!1854 = !DILocation(line: 237, column: 21, scope: !1762)
!1855 = !DILocation(line: 237, column: 5, scope: !1762)
!1856 = !DILocation(line: 239, column: 13, scope: !1580)
!1857 = !DILocation(line: 239, column: 11, scope: !1580)
!1858 = !DILocation(line: 239, column: 3, scope: !1580)
!1859 = !DILocation(line: 0, scope: !1580)
!1860 = !DILocation(line: 240, column: 1, scope: !1580)
!1861 = distinct !DISubprogram(name: "quotearg_alloc", scope: !102, file: !102, line: 799, type: !1862, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!6, !17, !96, !898}
!1864 = !{!1865, !1866, !1867}
!1865 = !DILocalVariable(name: "arg", arg: 1, scope: !1861, file: !102, line: 799, type: !17)
!1866 = !DILocalVariable(name: "argsize", arg: 2, scope: !1861, file: !102, line: 799, type: !96)
!1867 = !DILocalVariable(name: "o", arg: 3, scope: !1861, file: !102, line: 800, type: !898)
!1868 = !DILocation(line: 799, column: 29, scope: !1861)
!1869 = !DILocation(line: 799, column: 41, scope: !1861)
!1870 = !DILocation(line: 800, column: 47, scope: !1861)
!1871 = !DILocalVariable(name: "arg", arg: 1, scope: !1872, file: !102, line: 812, type: !17)
!1872 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !102, file: !102, line: 812, type: !1873, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1875)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!6, !17, !96, !164, !898}
!1875 = !{!1871, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883}
!1876 = !DILocalVariable(name: "argsize", arg: 2, scope: !1872, file: !102, line: 812, type: !96)
!1877 = !DILocalVariable(name: "size", arg: 3, scope: !1872, file: !102, line: 812, type: !164)
!1878 = !DILocalVariable(name: "o", arg: 4, scope: !1872, file: !102, line: 813, type: !898)
!1879 = !DILocalVariable(name: "p", scope: !1872, file: !102, line: 815, type: !898)
!1880 = !DILocalVariable(name: "e", scope: !1872, file: !102, line: 816, type: !20)
!1881 = !DILocalVariable(name: "flags", scope: !1872, file: !102, line: 818, type: !20)
!1882 = !DILocalVariable(name: "bufsize", scope: !1872, file: !102, line: 819, type: !96)
!1883 = !DILocalVariable(name: "buf", scope: !1872, file: !102, line: 823, type: !6)
!1884 = !DILocation(line: 812, column: 33, scope: !1872, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 802, column: 10, scope: !1861)
!1886 = !DILocation(line: 812, column: 45, scope: !1872, inlinedAt: !1885)
!1887 = !DILocation(line: 812, column: 62, scope: !1872, inlinedAt: !1885)
!1888 = !DILocation(line: 813, column: 51, scope: !1872, inlinedAt: !1885)
!1889 = !DILocation(line: 815, column: 37, scope: !1872, inlinedAt: !1885)
!1890 = !DILocation(line: 815, column: 33, scope: !1872, inlinedAt: !1885)
!1891 = !DILocation(line: 816, column: 11, scope: !1872, inlinedAt: !1885)
!1892 = !DILocation(line: 816, column: 7, scope: !1872, inlinedAt: !1885)
!1893 = !DILocation(line: 818, column: 18, scope: !1872, inlinedAt: !1885)
!1894 = !DILocation(line: 818, column: 24, scope: !1872, inlinedAt: !1885)
!1895 = !DILocation(line: 818, column: 7, scope: !1872, inlinedAt: !1885)
!1896 = !DILocation(line: 819, column: 69, scope: !1872, inlinedAt: !1885)
!1897 = !DILocation(line: 820, column: 53, scope: !1872, inlinedAt: !1885)
!1898 = !DILocation(line: 821, column: 49, scope: !1872, inlinedAt: !1885)
!1899 = !DILocation(line: 822, column: 49, scope: !1872, inlinedAt: !1885)
!1900 = !DILocation(line: 819, column: 20, scope: !1872, inlinedAt: !1885)
!1901 = !DILocation(line: 822, column: 62, scope: !1872, inlinedAt: !1885)
!1902 = !DILocation(line: 819, column: 10, scope: !1872, inlinedAt: !1885)
!1903 = !DILocalVariable(name: "n", arg: 1, scope: !1904, file: !160, line: 216, type: !96)
!1904 = distinct !DISubprogram(name: "xcharalloc", scope: !160, file: !160, line: 216, type: !1905, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!6, !96}
!1907 = !{!1903}
!1908 = !DILocation(line: 216, column: 20, scope: !1904, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 823, column: 15, scope: !1872, inlinedAt: !1885)
!1910 = !DILocation(line: 218, column: 10, scope: !1904, inlinedAt: !1909)
!1911 = !DILocation(line: 823, column: 9, scope: !1872, inlinedAt: !1885)
!1912 = !DILocation(line: 824, column: 60, scope: !1872, inlinedAt: !1885)
!1913 = !DILocation(line: 826, column: 32, scope: !1872, inlinedAt: !1885)
!1914 = !DILocation(line: 826, column: 47, scope: !1872, inlinedAt: !1885)
!1915 = !DILocation(line: 824, column: 3, scope: !1872, inlinedAt: !1885)
!1916 = !DILocation(line: 827, column: 9, scope: !1872, inlinedAt: !1885)
!1917 = !DILocation(line: 802, column: 3, scope: !1861)
!1918 = !DILocation(line: 812, column: 33, scope: !1872)
!1919 = !DILocation(line: 812, column: 45, scope: !1872)
!1920 = !DILocation(line: 812, column: 62, scope: !1872)
!1921 = !DILocation(line: 813, column: 51, scope: !1872)
!1922 = !DILocation(line: 815, column: 37, scope: !1872)
!1923 = !DILocation(line: 815, column: 33, scope: !1872)
!1924 = !DILocation(line: 816, column: 11, scope: !1872)
!1925 = !DILocation(line: 816, column: 7, scope: !1872)
!1926 = !DILocation(line: 818, column: 18, scope: !1872)
!1927 = !DILocation(line: 818, column: 27, scope: !1872)
!1928 = !DILocation(line: 818, column: 24, scope: !1872)
!1929 = !DILocation(line: 818, column: 7, scope: !1872)
!1930 = !DILocation(line: 819, column: 69, scope: !1872)
!1931 = !DILocation(line: 820, column: 53, scope: !1872)
!1932 = !DILocation(line: 821, column: 49, scope: !1872)
!1933 = !DILocation(line: 822, column: 49, scope: !1872)
!1934 = !DILocation(line: 819, column: 20, scope: !1872)
!1935 = !DILocation(line: 822, column: 62, scope: !1872)
!1936 = !DILocation(line: 819, column: 10, scope: !1872)
!1937 = !DILocation(line: 216, column: 20, scope: !1904, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 823, column: 15, scope: !1872)
!1939 = !DILocation(line: 218, column: 10, scope: !1904, inlinedAt: !1938)
!1940 = !DILocation(line: 823, column: 9, scope: !1872)
!1941 = !DILocation(line: 824, column: 60, scope: !1872)
!1942 = !DILocation(line: 826, column: 32, scope: !1872)
!1943 = !DILocation(line: 826, column: 47, scope: !1872)
!1944 = !DILocation(line: 824, column: 3, scope: !1872)
!1945 = !DILocation(line: 827, column: 9, scope: !1872)
!1946 = !DILocation(line: 828, column: 7, scope: !1872)
!1947 = !DILocation(line: 829, column: 11, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1872, file: !102, line: 828, column: 7)
!1949 = !{!1950, !1950, i64 0}
!1950 = !{!"long", !620, i64 0}
!1951 = !DILocation(line: 829, column: 5, scope: !1948)
!1952 = !DILocation(line: 830, column: 3, scope: !1872)
!1953 = distinct !DISubprogram(name: "quotearg_free", scope: !102, file: !102, line: 848, type: !626, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1954)
!1954 = !{!1955, !1956}
!1955 = !DILocalVariable(name: "sv", scope: !1953, file: !102, line: 850, type: !126)
!1956 = !DILocalVariable(name: "i", scope: !1953, file: !102, line: 851, type: !20)
!1957 = !DILocation(line: 850, column: 24, scope: !1953)
!1958 = !DILocation(line: 850, column: 19, scope: !1953)
!1959 = !DILocation(line: 851, column: 7, scope: !1953)
!1960 = !DILocation(line: 852, column: 19, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !102, line: 852, column: 3)
!1962 = distinct !DILexicalBlock(scope: !1953, file: !102, line: 852, column: 3)
!1963 = !DILocation(line: 852, column: 17, scope: !1961)
!1964 = !DILocation(line: 852, column: 3, scope: !1962)
!1965 = !DILocation(line: 853, column: 17, scope: !1961)
!1966 = !{!1967, !619, i64 8}
!1967 = !{!"slotvec", !1950, i64 0, !619, i64 8}
!1968 = !DILocation(line: 853, column: 5, scope: !1961)
!1969 = !DILocation(line: 852, column: 28, scope: !1961)
!1970 = distinct !{!1970, !1964, !1971}
!1971 = !DILocation(line: 853, column: 20, scope: !1962)
!1972 = !DILocation(line: 854, column: 13, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1953, file: !102, line: 854, column: 7)
!1974 = !DILocation(line: 854, column: 17, scope: !1973)
!1975 = !DILocation(line: 854, column: 7, scope: !1953)
!1976 = !DILocation(line: 856, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1973, file: !102, line: 855, column: 5)
!1978 = !DILocation(line: 857, column: 21, scope: !1977)
!1979 = !{!1967, !1950, i64 0}
!1980 = !DILocation(line: 858, column: 20, scope: !1977)
!1981 = !DILocation(line: 859, column: 5, scope: !1977)
!1982 = !DILocation(line: 860, column: 10, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1953, file: !102, line: 860, column: 7)
!1984 = !DILocation(line: 860, column: 7, scope: !1953)
!1985 = !DILocation(line: 862, column: 13, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !102, line: 861, column: 5)
!1987 = !DILocation(line: 862, column: 7, scope: !1986)
!1988 = !DILocation(line: 863, column: 15, scope: !1986)
!1989 = !DILocation(line: 864, column: 5, scope: !1986)
!1990 = !DILocation(line: 865, column: 10, scope: !1953)
!1991 = !DILocation(line: 866, column: 1, scope: !1953)
!1992 = distinct !DISubprogram(name: "quotearg_n", scope: !102, file: !102, line: 931, type: !1993, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!6, !20, !17}
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "n", arg: 1, scope: !1992, file: !102, line: 931, type: !20)
!1997 = !DILocalVariable(name: "arg", arg: 2, scope: !1992, file: !102, line: 931, type: !17)
!1998 = !DILocation(line: 931, column: 17, scope: !1992)
!1999 = !DILocation(line: 931, column: 32, scope: !1992)
!2000 = !DILocation(line: 933, column: 10, scope: !1992)
!2001 = !DILocation(line: 933, column: 3, scope: !1992)
!2002 = distinct !DISubprogram(name: "quotearg_n_options", scope: !102, file: !102, line: 877, type: !2003, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!6, !20, !17, !96, !898}
!2005 = !{!2006, !2007, !2008, !2009, !2010, !2011, !2012, !2015, !2016, !2018, !2019, !2020}
!2006 = !DILocalVariable(name: "n", arg: 1, scope: !2002, file: !102, line: 877, type: !20)
!2007 = !DILocalVariable(name: "arg", arg: 2, scope: !2002, file: !102, line: 877, type: !17)
!2008 = !DILocalVariable(name: "argsize", arg: 3, scope: !2002, file: !102, line: 877, type: !96)
!2009 = !DILocalVariable(name: "options", arg: 4, scope: !2002, file: !102, line: 878, type: !898)
!2010 = !DILocalVariable(name: "e", scope: !2002, file: !102, line: 880, type: !20)
!2011 = !DILocalVariable(name: "sv", scope: !2002, file: !102, line: 882, type: !126)
!2012 = !DILocalVariable(name: "preallocated", scope: !2013, file: !102, line: 889, type: !39)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !102, line: 888, column: 5)
!2014 = distinct !DILexicalBlock(scope: !2002, file: !102, line: 887, column: 7)
!2015 = !DILocalVariable(name: "nmax", scope: !2013, file: !102, line: 890, type: !20)
!2016 = !DILocalVariable(name: "size", scope: !2017, file: !102, line: 903, type: !96)
!2017 = distinct !DILexicalBlock(scope: !2002, file: !102, line: 902, column: 3)
!2018 = !DILocalVariable(name: "val", scope: !2017, file: !102, line: 904, type: !6)
!2019 = !DILocalVariable(name: "flags", scope: !2017, file: !102, line: 906, type: !20)
!2020 = !DILocalVariable(name: "qsize", scope: !2017, file: !102, line: 907, type: !96)
!2021 = !DILocation(line: 877, column: 25, scope: !2002)
!2022 = !DILocation(line: 877, column: 40, scope: !2002)
!2023 = !DILocation(line: 877, column: 52, scope: !2002)
!2024 = !DILocation(line: 878, column: 51, scope: !2002)
!2025 = !DILocation(line: 880, column: 11, scope: !2002)
!2026 = !DILocation(line: 880, column: 7, scope: !2002)
!2027 = !DILocation(line: 882, column: 24, scope: !2002)
!2028 = !DILocation(line: 882, column: 19, scope: !2002)
!2029 = !DILocation(line: 884, column: 9, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2002, file: !102, line: 884, column: 7)
!2031 = !DILocation(line: 884, column: 7, scope: !2002)
!2032 = !DILocation(line: 885, column: 5, scope: !2030)
!2033 = !DILocation(line: 887, column: 7, scope: !2014)
!2034 = !DILocation(line: 887, column: 14, scope: !2014)
!2035 = !DILocation(line: 887, column: 7, scope: !2002)
!2036 = !DILocation(line: 889, column: 31, scope: !2013)
!2037 = !DILocation(line: 890, column: 11, scope: !2013)
!2038 = !DILocation(line: 892, column: 16, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2013, file: !102, line: 892, column: 11)
!2040 = !DILocation(line: 892, column: 11, scope: !2013)
!2041 = !DILocation(line: 893, column: 9, scope: !2039)
!2042 = !DILocation(line: 895, column: 32, scope: !2013)
!2043 = !DILocation(line: 895, column: 61, scope: !2013)
!2044 = !DILocation(line: 895, column: 58, scope: !2013)
!2045 = !DILocation(line: 895, column: 66, scope: !2013)
!2046 = !DILocation(line: 895, column: 22, scope: !2013)
!2047 = !DILocation(line: 895, column: 15, scope: !2013)
!2048 = !DILocation(line: 896, column: 11, scope: !2013)
!2049 = !DILocation(line: 897, column: 15, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2013, file: !102, line: 896, column: 11)
!2051 = !{i64 0, i64 8, !1949, i64 8, i64 8, !618}
!2052 = !DILocation(line: 897, column: 9, scope: !2050)
!2053 = !DILocation(line: 898, column: 20, scope: !2013)
!2054 = !DILocation(line: 898, column: 18, scope: !2013)
!2055 = !DILocation(line: 898, column: 7, scope: !2013)
!2056 = !DILocation(line: 898, column: 38, scope: !2013)
!2057 = !DILocation(line: 898, column: 31, scope: !2013)
!2058 = !DILocation(line: 898, column: 48, scope: !2013)
!2059 = !DILocation(line: 899, column: 14, scope: !2013)
!2060 = !DILocation(line: 900, column: 5, scope: !2013)
!2061 = !DILocation(line: 0, scope: !2002)
!2062 = !DILocation(line: 903, column: 19, scope: !2017)
!2063 = !DILocation(line: 903, column: 25, scope: !2017)
!2064 = !DILocation(line: 903, column: 12, scope: !2017)
!2065 = !DILocation(line: 904, column: 23, scope: !2017)
!2066 = !DILocation(line: 904, column: 11, scope: !2017)
!2067 = !DILocation(line: 906, column: 26, scope: !2017)
!2068 = !DILocation(line: 906, column: 32, scope: !2017)
!2069 = !DILocation(line: 906, column: 9, scope: !2017)
!2070 = !DILocation(line: 908, column: 55, scope: !2017)
!2071 = !DILocation(line: 909, column: 46, scope: !2017)
!2072 = !DILocation(line: 910, column: 55, scope: !2017)
!2073 = !DILocation(line: 911, column: 55, scope: !2017)
!2074 = !DILocation(line: 907, column: 20, scope: !2017)
!2075 = !DILocation(line: 907, column: 12, scope: !2017)
!2076 = !DILocation(line: 913, column: 14, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2017, file: !102, line: 913, column: 9)
!2078 = !DILocation(line: 913, column: 9, scope: !2017)
!2079 = !DILocation(line: 915, column: 35, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !102, line: 914, column: 7)
!2081 = !DILocation(line: 915, column: 20, scope: !2080)
!2082 = !DILocation(line: 916, column: 17, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !102, line: 916, column: 13)
!2084 = !DILocation(line: 916, column: 13, scope: !2080)
!2085 = !DILocation(line: 917, column: 11, scope: !2083)
!2086 = !DILocation(line: 216, column: 20, scope: !1904, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 918, column: 27, scope: !2080)
!2088 = !DILocation(line: 218, column: 10, scope: !1904, inlinedAt: !2087)
!2089 = !DILocation(line: 918, column: 19, scope: !2080)
!2090 = !DILocation(line: 919, column: 69, scope: !2080)
!2091 = !DILocation(line: 921, column: 44, scope: !2080)
!2092 = !DILocation(line: 922, column: 44, scope: !2080)
!2093 = !DILocation(line: 919, column: 9, scope: !2080)
!2094 = !DILocation(line: 923, column: 7, scope: !2080)
!2095 = !DILocation(line: 0, scope: !2017)
!2096 = !DILocation(line: 925, column: 11, scope: !2017)
!2097 = !DILocation(line: 926, column: 5, scope: !2017)
!2098 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !102, file: !102, line: 937, type: !2099, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2101)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!6, !20, !17, !96}
!2101 = !{!2102, !2103, !2104}
!2102 = !DILocalVariable(name: "n", arg: 1, scope: !2098, file: !102, line: 937, type: !20)
!2103 = !DILocalVariable(name: "arg", arg: 2, scope: !2098, file: !102, line: 937, type: !17)
!2104 = !DILocalVariable(name: "argsize", arg: 3, scope: !2098, file: !102, line: 937, type: !96)
!2105 = !DILocation(line: 937, column: 21, scope: !2098)
!2106 = !DILocation(line: 937, column: 36, scope: !2098)
!2107 = !DILocation(line: 937, column: 48, scope: !2098)
!2108 = !DILocation(line: 939, column: 10, scope: !2098)
!2109 = !DILocation(line: 939, column: 3, scope: !2098)
!2110 = distinct !DISubprogram(name: "quotearg", scope: !102, file: !102, line: 943, type: !2111, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!6, !17}
!2113 = !{!2114}
!2114 = !DILocalVariable(name: "arg", arg: 1, scope: !2110, file: !102, line: 943, type: !17)
!2115 = !DILocation(line: 943, column: 23, scope: !2110)
!2116 = !DILocation(line: 931, column: 17, scope: !1992, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 945, column: 10, scope: !2110)
!2118 = !DILocation(line: 931, column: 32, scope: !1992, inlinedAt: !2117)
!2119 = !DILocation(line: 933, column: 10, scope: !1992, inlinedAt: !2117)
!2120 = !DILocation(line: 945, column: 3, scope: !2110)
!2121 = distinct !DISubprogram(name: "quotearg_mem", scope: !102, file: !102, line: 949, type: !2122, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!6, !17, !96}
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "arg", arg: 1, scope: !2121, file: !102, line: 949, type: !17)
!2126 = !DILocalVariable(name: "argsize", arg: 2, scope: !2121, file: !102, line: 949, type: !96)
!2127 = !DILocation(line: 949, column: 27, scope: !2121)
!2128 = !DILocation(line: 949, column: 39, scope: !2121)
!2129 = !DILocation(line: 937, column: 21, scope: !2098, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 951, column: 10, scope: !2121)
!2131 = !DILocation(line: 937, column: 36, scope: !2098, inlinedAt: !2130)
!2132 = !DILocation(line: 937, column: 48, scope: !2098, inlinedAt: !2130)
!2133 = !DILocation(line: 939, column: 10, scope: !2098, inlinedAt: !2130)
!2134 = !DILocation(line: 951, column: 3, scope: !2121)
!2135 = distinct !DISubprogram(name: "quotearg_n_style", scope: !102, file: !102, line: 955, type: !2136, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2138)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!6, !20, !59, !17}
!2138 = !{!2139, !2140, !2141, !2142}
!2139 = !DILocalVariable(name: "n", arg: 1, scope: !2135, file: !102, line: 955, type: !20)
!2140 = !DILocalVariable(name: "s", arg: 2, scope: !2135, file: !102, line: 955, type: !59)
!2141 = !DILocalVariable(name: "arg", arg: 3, scope: !2135, file: !102, line: 955, type: !17)
!2142 = !DILocalVariable(name: "o", scope: !2135, file: !102, line: 957, type: !899)
!2143 = !DILocation(line: 955, column: 23, scope: !2135)
!2144 = !DILocation(line: 955, column: 45, scope: !2135)
!2145 = !DILocation(line: 955, column: 60, scope: !2135)
!2146 = !DILocation(line: 957, column: 3, scope: !2135)
!2147 = !DILocation(line: 957, column: 32, scope: !2135)
!2148 = !DILocalVariable(name: "style", arg: 1, scope: !2149, file: !102, line: 193, type: !59)
!2149 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !102, file: !102, line: 193, type: !2150, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!109, !59}
!2152 = !{!2148, !2153}
!2153 = !DILocalVariable(name: "o", scope: !2149, file: !102, line: 195, type: !109)
!2154 = !DILocation(line: 193, column: 48, scope: !2149, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 957, column: 36, scope: !2135)
!2156 = !DILocation(line: 195, column: 26, scope: !2149, inlinedAt: !2155)
!2157 = !{!2158}
!2158 = distinct !{!2158, !2159, !"quoting_options_from_style: argument 0"}
!2159 = distinct !{!2159, !"quoting_options_from_style"}
!2160 = !DILocation(line: 196, column: 13, scope: !2161, inlinedAt: !2155)
!2161 = distinct !DILexicalBlock(scope: !2149, file: !102, line: 196, column: 7)
!2162 = !DILocation(line: 196, column: 7, scope: !2149, inlinedAt: !2155)
!2163 = !DILocation(line: 197, column: 5, scope: !2161, inlinedAt: !2155)
!2164 = !DILocation(line: 198, column: 5, scope: !2149, inlinedAt: !2155)
!2165 = !DILocation(line: 198, column: 11, scope: !2149, inlinedAt: !2155)
!2166 = !DILocation(line: 958, column: 10, scope: !2135)
!2167 = !DILocation(line: 959, column: 1, scope: !2135)
!2168 = !DILocation(line: 958, column: 3, scope: !2135)
!2169 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !102, file: !102, line: 962, type: !2170, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!6, !20, !59, !17, !96}
!2172 = !{!2173, !2174, !2175, !2176, !2177}
!2173 = !DILocalVariable(name: "n", arg: 1, scope: !2169, file: !102, line: 962, type: !20)
!2174 = !DILocalVariable(name: "s", arg: 2, scope: !2169, file: !102, line: 962, type: !59)
!2175 = !DILocalVariable(name: "arg", arg: 3, scope: !2169, file: !102, line: 963, type: !17)
!2176 = !DILocalVariable(name: "argsize", arg: 4, scope: !2169, file: !102, line: 963, type: !96)
!2177 = !DILocalVariable(name: "o", scope: !2169, file: !102, line: 965, type: !899)
!2178 = !DILocation(line: 962, column: 27, scope: !2169)
!2179 = !DILocation(line: 962, column: 49, scope: !2169)
!2180 = !DILocation(line: 963, column: 35, scope: !2169)
!2181 = !DILocation(line: 963, column: 47, scope: !2169)
!2182 = !DILocation(line: 965, column: 3, scope: !2169)
!2183 = !DILocation(line: 965, column: 32, scope: !2169)
!2184 = !DILocation(line: 193, column: 48, scope: !2149, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 965, column: 36, scope: !2169)
!2186 = !DILocation(line: 195, column: 26, scope: !2149, inlinedAt: !2185)
!2187 = !{!2188}
!2188 = distinct !{!2188, !2189, !"quoting_options_from_style: argument 0"}
!2189 = distinct !{!2189, !"quoting_options_from_style"}
!2190 = !DILocation(line: 196, column: 13, scope: !2161, inlinedAt: !2185)
!2191 = !DILocation(line: 196, column: 7, scope: !2149, inlinedAt: !2185)
!2192 = !DILocation(line: 197, column: 5, scope: !2161, inlinedAt: !2185)
!2193 = !DILocation(line: 198, column: 5, scope: !2149, inlinedAt: !2185)
!2194 = !DILocation(line: 198, column: 11, scope: !2149, inlinedAt: !2185)
!2195 = !DILocation(line: 966, column: 10, scope: !2169)
!2196 = !DILocation(line: 967, column: 1, scope: !2169)
!2197 = !DILocation(line: 966, column: 3, scope: !2169)
!2198 = distinct !DISubprogram(name: "quotearg_style", scope: !102, file: !102, line: 970, type: !2199, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!6, !59, !17}
!2201 = !{!2202, !2203}
!2202 = !DILocalVariable(name: "s", arg: 1, scope: !2198, file: !102, line: 970, type: !59)
!2203 = !DILocalVariable(name: "arg", arg: 2, scope: !2198, file: !102, line: 970, type: !17)
!2204 = !DILocation(line: 970, column: 36, scope: !2198)
!2205 = !DILocation(line: 970, column: 51, scope: !2198)
!2206 = !DILocation(line: 955, column: 23, scope: !2135, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 972, column: 10, scope: !2198)
!2208 = !DILocation(line: 955, column: 45, scope: !2135, inlinedAt: !2207)
!2209 = !DILocation(line: 955, column: 60, scope: !2135, inlinedAt: !2207)
!2210 = !DILocation(line: 957, column: 3, scope: !2135, inlinedAt: !2207)
!2211 = !DILocation(line: 957, column: 32, scope: !2135, inlinedAt: !2207)
!2212 = !DILocation(line: 193, column: 48, scope: !2149, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 957, column: 36, scope: !2135, inlinedAt: !2207)
!2214 = !DILocation(line: 195, column: 26, scope: !2149, inlinedAt: !2213)
!2215 = !{!2216}
!2216 = distinct !{!2216, !2217, !"quoting_options_from_style: argument 0"}
!2217 = distinct !{!2217, !"quoting_options_from_style"}
!2218 = !DILocation(line: 196, column: 13, scope: !2161, inlinedAt: !2213)
!2219 = !DILocation(line: 196, column: 7, scope: !2149, inlinedAt: !2213)
!2220 = !DILocation(line: 197, column: 5, scope: !2161, inlinedAt: !2213)
!2221 = !DILocation(line: 198, column: 5, scope: !2149, inlinedAt: !2213)
!2222 = !DILocation(line: 198, column: 11, scope: !2149, inlinedAt: !2213)
!2223 = !DILocation(line: 958, column: 10, scope: !2135, inlinedAt: !2207)
!2224 = !DILocation(line: 959, column: 1, scope: !2135, inlinedAt: !2207)
!2225 = !DILocation(line: 972, column: 3, scope: !2198)
!2226 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !102, file: !102, line: 976, type: !2227, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!6, !59, !17, !96}
!2229 = !{!2230, !2231, !2232}
!2230 = !DILocalVariable(name: "s", arg: 1, scope: !2226, file: !102, line: 976, type: !59)
!2231 = !DILocalVariable(name: "arg", arg: 2, scope: !2226, file: !102, line: 976, type: !17)
!2232 = !DILocalVariable(name: "argsize", arg: 3, scope: !2226, file: !102, line: 976, type: !96)
!2233 = !DILocation(line: 976, column: 40, scope: !2226)
!2234 = !DILocation(line: 976, column: 55, scope: !2226)
!2235 = !DILocation(line: 976, column: 67, scope: !2226)
!2236 = !DILocation(line: 962, column: 27, scope: !2169, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 978, column: 10, scope: !2226)
!2238 = !DILocation(line: 962, column: 49, scope: !2169, inlinedAt: !2237)
!2239 = !DILocation(line: 963, column: 35, scope: !2169, inlinedAt: !2237)
!2240 = !DILocation(line: 963, column: 47, scope: !2169, inlinedAt: !2237)
!2241 = !DILocation(line: 965, column: 3, scope: !2169, inlinedAt: !2237)
!2242 = !DILocation(line: 965, column: 32, scope: !2169, inlinedAt: !2237)
!2243 = !DILocation(line: 193, column: 48, scope: !2149, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 965, column: 36, scope: !2169, inlinedAt: !2237)
!2245 = !DILocation(line: 195, column: 26, scope: !2149, inlinedAt: !2244)
!2246 = !{!2247}
!2247 = distinct !{!2247, !2248, !"quoting_options_from_style: argument 0"}
!2248 = distinct !{!2248, !"quoting_options_from_style"}
!2249 = !DILocation(line: 196, column: 13, scope: !2161, inlinedAt: !2244)
!2250 = !DILocation(line: 196, column: 7, scope: !2149, inlinedAt: !2244)
!2251 = !DILocation(line: 197, column: 5, scope: !2161, inlinedAt: !2244)
!2252 = !DILocation(line: 198, column: 5, scope: !2149, inlinedAt: !2244)
!2253 = !DILocation(line: 198, column: 11, scope: !2149, inlinedAt: !2244)
!2254 = !DILocation(line: 966, column: 10, scope: !2169, inlinedAt: !2237)
!2255 = !DILocation(line: 967, column: 1, scope: !2169, inlinedAt: !2237)
!2256 = !DILocation(line: 978, column: 3, scope: !2226)
!2257 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !102, file: !102, line: 982, type: !2258, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!6, !17, !96, !7}
!2260 = !{!2261, !2262, !2263, !2264}
!2261 = !DILocalVariable(name: "arg", arg: 1, scope: !2257, file: !102, line: 982, type: !17)
!2262 = !DILocalVariable(name: "argsize", arg: 2, scope: !2257, file: !102, line: 982, type: !96)
!2263 = !DILocalVariable(name: "ch", arg: 3, scope: !2257, file: !102, line: 982, type: !7)
!2264 = !DILocalVariable(name: "options", scope: !2257, file: !102, line: 984, type: !109)
!2265 = !DILocation(line: 982, column: 32, scope: !2257)
!2266 = !DILocation(line: 982, column: 44, scope: !2257)
!2267 = !DILocation(line: 982, column: 58, scope: !2257)
!2268 = !DILocation(line: 984, column: 3, scope: !2257)
!2269 = !DILocation(line: 985, column: 13, scope: !2257)
!2270 = !{i64 0, i64 4, !1126, i64 4, i64 4, !709, i64 8, i64 32, !1126, i64 40, i64 8, !618, i64 48, i64 8, !618}
!2271 = !DILocation(line: 984, column: 26, scope: !2257)
!2272 = !DILocation(line: 152, column: 43, scope: !920, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 986, column: 3, scope: !2257)
!2274 = !DILocation(line: 152, column: 51, scope: !920, inlinedAt: !2273)
!2275 = !DILocation(line: 152, column: 58, scope: !920, inlinedAt: !2273)
!2276 = !DILocation(line: 154, column: 17, scope: !920, inlinedAt: !2273)
!2277 = !DILocation(line: 156, column: 62, scope: !920, inlinedAt: !2273)
!2278 = !DILocation(line: 156, column: 57, scope: !920, inlinedAt: !2273)
!2279 = !DILocation(line: 155, column: 17, scope: !920, inlinedAt: !2273)
!2280 = !DILocation(line: 157, column: 15, scope: !920, inlinedAt: !2273)
!2281 = !DILocation(line: 157, column: 7, scope: !920, inlinedAt: !2273)
!2282 = !DILocation(line: 158, column: 12, scope: !920, inlinedAt: !2273)
!2283 = !DILocation(line: 158, column: 15, scope: !920, inlinedAt: !2273)
!2284 = !DILocation(line: 158, column: 25, scope: !920, inlinedAt: !2273)
!2285 = !DILocation(line: 158, column: 7, scope: !920, inlinedAt: !2273)
!2286 = !DILocation(line: 159, column: 18, scope: !920, inlinedAt: !2273)
!2287 = !DILocation(line: 159, column: 23, scope: !920, inlinedAt: !2273)
!2288 = !DILocation(line: 159, column: 6, scope: !920, inlinedAt: !2273)
!2289 = !DILocation(line: 987, column: 10, scope: !2257)
!2290 = !DILocation(line: 988, column: 1, scope: !2257)
!2291 = !DILocation(line: 987, column: 3, scope: !2257)
!2292 = distinct !DISubprogram(name: "quotearg_char", scope: !102, file: !102, line: 991, type: !2293, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!6, !17, !7}
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "arg", arg: 1, scope: !2292, file: !102, line: 991, type: !17)
!2297 = !DILocalVariable(name: "ch", arg: 2, scope: !2292, file: !102, line: 991, type: !7)
!2298 = !DILocation(line: 991, column: 28, scope: !2292)
!2299 = !DILocation(line: 991, column: 38, scope: !2292)
!2300 = !DILocation(line: 982, column: 32, scope: !2257, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 993, column: 10, scope: !2292)
!2302 = !DILocation(line: 982, column: 44, scope: !2257, inlinedAt: !2301)
!2303 = !DILocation(line: 982, column: 58, scope: !2257, inlinedAt: !2301)
!2304 = !DILocation(line: 984, column: 3, scope: !2257, inlinedAt: !2301)
!2305 = !DILocation(line: 985, column: 13, scope: !2257, inlinedAt: !2301)
!2306 = !DILocation(line: 984, column: 26, scope: !2257, inlinedAt: !2301)
!2307 = !DILocation(line: 152, column: 43, scope: !920, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 986, column: 3, scope: !2257, inlinedAt: !2301)
!2309 = !DILocation(line: 152, column: 51, scope: !920, inlinedAt: !2308)
!2310 = !DILocation(line: 152, column: 58, scope: !920, inlinedAt: !2308)
!2311 = !DILocation(line: 154, column: 17, scope: !920, inlinedAt: !2308)
!2312 = !DILocation(line: 156, column: 62, scope: !920, inlinedAt: !2308)
!2313 = !DILocation(line: 156, column: 57, scope: !920, inlinedAt: !2308)
!2314 = !DILocation(line: 155, column: 17, scope: !920, inlinedAt: !2308)
!2315 = !DILocation(line: 157, column: 15, scope: !920, inlinedAt: !2308)
!2316 = !DILocation(line: 157, column: 7, scope: !920, inlinedAt: !2308)
!2317 = !DILocation(line: 158, column: 12, scope: !920, inlinedAt: !2308)
!2318 = !DILocation(line: 158, column: 15, scope: !920, inlinedAt: !2308)
!2319 = !DILocation(line: 158, column: 25, scope: !920, inlinedAt: !2308)
!2320 = !DILocation(line: 158, column: 7, scope: !920, inlinedAt: !2308)
!2321 = !DILocation(line: 159, column: 18, scope: !920, inlinedAt: !2308)
!2322 = !DILocation(line: 159, column: 23, scope: !920, inlinedAt: !2308)
!2323 = !DILocation(line: 159, column: 6, scope: !920, inlinedAt: !2308)
!2324 = !DILocation(line: 987, column: 10, scope: !2257, inlinedAt: !2301)
!2325 = !DILocation(line: 988, column: 1, scope: !2257, inlinedAt: !2301)
!2326 = !DILocation(line: 993, column: 3, scope: !2292)
!2327 = distinct !DISubprogram(name: "quotearg_colon", scope: !102, file: !102, line: 997, type: !2111, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2328)
!2328 = !{!2329}
!2329 = !DILocalVariable(name: "arg", arg: 1, scope: !2327, file: !102, line: 997, type: !17)
!2330 = !DILocation(line: 997, column: 29, scope: !2327)
!2331 = !DILocation(line: 991, column: 28, scope: !2292, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 999, column: 10, scope: !2327)
!2333 = !DILocation(line: 991, column: 38, scope: !2292, inlinedAt: !2332)
!2334 = !DILocation(line: 982, column: 32, scope: !2257, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 993, column: 10, scope: !2292, inlinedAt: !2332)
!2336 = !DILocation(line: 982, column: 44, scope: !2257, inlinedAt: !2335)
!2337 = !DILocation(line: 982, column: 58, scope: !2257, inlinedAt: !2335)
!2338 = !DILocation(line: 984, column: 3, scope: !2257, inlinedAt: !2335)
!2339 = !DILocation(line: 985, column: 13, scope: !2257, inlinedAt: !2335)
!2340 = !DILocation(line: 984, column: 26, scope: !2257, inlinedAt: !2335)
!2341 = !DILocation(line: 152, column: 43, scope: !920, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 986, column: 3, scope: !2257, inlinedAt: !2335)
!2343 = !DILocation(line: 152, column: 51, scope: !920, inlinedAt: !2342)
!2344 = !DILocation(line: 152, column: 58, scope: !920, inlinedAt: !2342)
!2345 = !DILocation(line: 154, column: 17, scope: !920, inlinedAt: !2342)
!2346 = !DILocation(line: 156, column: 57, scope: !920, inlinedAt: !2342)
!2347 = !DILocation(line: 155, column: 17, scope: !920, inlinedAt: !2342)
!2348 = !DILocation(line: 157, column: 7, scope: !920, inlinedAt: !2342)
!2349 = !DILocation(line: 158, column: 12, scope: !920, inlinedAt: !2342)
!2350 = !DILocation(line: 159, column: 6, scope: !920, inlinedAt: !2342)
!2351 = !DILocation(line: 987, column: 10, scope: !2257, inlinedAt: !2335)
!2352 = !DILocation(line: 988, column: 1, scope: !2257, inlinedAt: !2335)
!2353 = !DILocation(line: 999, column: 3, scope: !2327)
!2354 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !102, file: !102, line: 1003, type: !2122, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2355)
!2355 = !{!2356, !2357}
!2356 = !DILocalVariable(name: "arg", arg: 1, scope: !2354, file: !102, line: 1003, type: !17)
!2357 = !DILocalVariable(name: "argsize", arg: 2, scope: !2354, file: !102, line: 1003, type: !96)
!2358 = !DILocation(line: 1003, column: 33, scope: !2354)
!2359 = !DILocation(line: 1003, column: 45, scope: !2354)
!2360 = !DILocation(line: 982, column: 32, scope: !2257, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 1005, column: 10, scope: !2354)
!2362 = !DILocation(line: 982, column: 44, scope: !2257, inlinedAt: !2361)
!2363 = !DILocation(line: 982, column: 58, scope: !2257, inlinedAt: !2361)
!2364 = !DILocation(line: 984, column: 3, scope: !2257, inlinedAt: !2361)
!2365 = !DILocation(line: 985, column: 13, scope: !2257, inlinedAt: !2361)
!2366 = !DILocation(line: 984, column: 26, scope: !2257, inlinedAt: !2361)
!2367 = !DILocation(line: 152, column: 43, scope: !920, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 986, column: 3, scope: !2257, inlinedAt: !2361)
!2369 = !DILocation(line: 152, column: 51, scope: !920, inlinedAt: !2368)
!2370 = !DILocation(line: 152, column: 58, scope: !920, inlinedAt: !2368)
!2371 = !DILocation(line: 154, column: 17, scope: !920, inlinedAt: !2368)
!2372 = !DILocation(line: 156, column: 57, scope: !920, inlinedAt: !2368)
!2373 = !DILocation(line: 155, column: 17, scope: !920, inlinedAt: !2368)
!2374 = !DILocation(line: 157, column: 7, scope: !920, inlinedAt: !2368)
!2375 = !DILocation(line: 158, column: 12, scope: !920, inlinedAt: !2368)
!2376 = !DILocation(line: 159, column: 6, scope: !920, inlinedAt: !2368)
!2377 = !DILocation(line: 987, column: 10, scope: !2257, inlinedAt: !2361)
!2378 = !DILocation(line: 988, column: 1, scope: !2257, inlinedAt: !2361)
!2379 = !DILocation(line: 1005, column: 3, scope: !2354)
!2380 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !102, file: !102, line: 1009, type: !2136, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2381)
!2381 = !{!2382, !2383, !2384, !2385}
!2382 = !DILocalVariable(name: "n", arg: 1, scope: !2380, file: !102, line: 1009, type: !20)
!2383 = !DILocalVariable(name: "s", arg: 2, scope: !2380, file: !102, line: 1009, type: !59)
!2384 = !DILocalVariable(name: "arg", arg: 3, scope: !2380, file: !102, line: 1009, type: !17)
!2385 = !DILocalVariable(name: "options", scope: !2380, file: !102, line: 1011, type: !109)
!2386 = !DILocation(line: 195, column: 26, scope: !2149, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 1012, column: 13, scope: !2380)
!2388 = !DILocation(line: 1009, column: 29, scope: !2380)
!2389 = !DILocation(line: 1009, column: 51, scope: !2380)
!2390 = !DILocation(line: 1009, column: 66, scope: !2380)
!2391 = !DILocation(line: 1011, column: 3, scope: !2380)
!2392 = !DILocation(line: 1012, column: 13, scope: !2380)
!2393 = !DILocation(line: 193, column: 48, scope: !2149, inlinedAt: !2387)
!2394 = !{!2395}
!2395 = distinct !{!2395, !2396, !"quoting_options_from_style: argument 0"}
!2396 = distinct !{!2396, !"quoting_options_from_style"}
!2397 = !DILocation(line: 196, column: 13, scope: !2161, inlinedAt: !2387)
!2398 = !DILocation(line: 196, column: 7, scope: !2149, inlinedAt: !2387)
!2399 = !DILocation(line: 197, column: 5, scope: !2161, inlinedAt: !2387)
!2400 = !DILocation(line: 1011, column: 26, scope: !2380)
!2401 = !DILocation(line: 152, column: 43, scope: !920, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 1013, column: 3, scope: !2380)
!2403 = !DILocation(line: 152, column: 51, scope: !920, inlinedAt: !2402)
!2404 = !DILocation(line: 152, column: 58, scope: !920, inlinedAt: !2402)
!2405 = !DILocation(line: 154, column: 17, scope: !920, inlinedAt: !2402)
!2406 = !DILocation(line: 156, column: 57, scope: !920, inlinedAt: !2402)
!2407 = !DILocation(line: 155, column: 17, scope: !920, inlinedAt: !2402)
!2408 = !DILocation(line: 157, column: 7, scope: !920, inlinedAt: !2402)
!2409 = !DILocation(line: 158, column: 12, scope: !920, inlinedAt: !2402)
!2410 = !DILocation(line: 159, column: 6, scope: !920, inlinedAt: !2402)
!2411 = !DILocation(line: 1014, column: 10, scope: !2380)
!2412 = !DILocation(line: 1015, column: 1, scope: !2380)
!2413 = !DILocation(line: 1014, column: 3, scope: !2380)
!2414 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !102, file: !102, line: 1018, type: !2415, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!6, !20, !17, !17, !17}
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "n", arg: 1, scope: !2414, file: !102, line: 1018, type: !20)
!2419 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2414, file: !102, line: 1018, type: !17)
!2420 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2414, file: !102, line: 1019, type: !17)
!2421 = !DILocalVariable(name: "arg", arg: 4, scope: !2414, file: !102, line: 1019, type: !17)
!2422 = !DILocation(line: 1018, column: 24, scope: !2414)
!2423 = !DILocation(line: 1018, column: 39, scope: !2414)
!2424 = !DILocation(line: 1019, column: 32, scope: !2414)
!2425 = !DILocation(line: 1019, column: 57, scope: !2414)
!2426 = !DILocalVariable(name: "n", arg: 1, scope: !2427, file: !102, line: 1026, type: !20)
!2427 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !102, file: !102, line: 1026, type: !2428, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!6, !20, !17, !17, !17, !96}
!2430 = !{!2426, !2431, !2432, !2433, !2434, !2435}
!2431 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2427, file: !102, line: 1026, type: !17)
!2432 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2427, file: !102, line: 1027, type: !17)
!2433 = !DILocalVariable(name: "arg", arg: 4, scope: !2427, file: !102, line: 1028, type: !17)
!2434 = !DILocalVariable(name: "argsize", arg: 5, scope: !2427, file: !102, line: 1028, type: !96)
!2435 = !DILocalVariable(name: "o", scope: !2427, file: !102, line: 1030, type: !109)
!2436 = !DILocation(line: 1026, column: 28, scope: !2427, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 1021, column: 10, scope: !2414)
!2438 = !DILocation(line: 1026, column: 43, scope: !2427, inlinedAt: !2437)
!2439 = !DILocation(line: 1027, column: 36, scope: !2427, inlinedAt: !2437)
!2440 = !DILocation(line: 1028, column: 36, scope: !2427, inlinedAt: !2437)
!2441 = !DILocation(line: 1028, column: 48, scope: !2427, inlinedAt: !2437)
!2442 = !DILocation(line: 1030, column: 3, scope: !2427, inlinedAt: !2437)
!2443 = !DILocation(line: 1030, column: 30, scope: !2427, inlinedAt: !2437)
!2444 = !DILocation(line: 1030, column: 26, scope: !2427, inlinedAt: !2437)
!2445 = !DILocation(line: 179, column: 45, scope: !968, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 1031, column: 3, scope: !2427, inlinedAt: !2437)
!2447 = !DILocation(line: 180, column: 33, scope: !968, inlinedAt: !2446)
!2448 = !DILocation(line: 180, column: 57, scope: !968, inlinedAt: !2446)
!2449 = !DILocation(line: 184, column: 6, scope: !968, inlinedAt: !2446)
!2450 = !DILocation(line: 184, column: 12, scope: !968, inlinedAt: !2446)
!2451 = !DILocation(line: 185, column: 8, scope: !984, inlinedAt: !2446)
!2452 = !DILocation(line: 185, column: 23, scope: !984, inlinedAt: !2446)
!2453 = !DILocation(line: 185, column: 19, scope: !984, inlinedAt: !2446)
!2454 = !DILocation(line: 186, column: 5, scope: !984, inlinedAt: !2446)
!2455 = !DILocation(line: 187, column: 6, scope: !968, inlinedAt: !2446)
!2456 = !DILocation(line: 187, column: 17, scope: !968, inlinedAt: !2446)
!2457 = !DILocation(line: 188, column: 6, scope: !968, inlinedAt: !2446)
!2458 = !DILocation(line: 188, column: 18, scope: !968, inlinedAt: !2446)
!2459 = !DILocation(line: 1032, column: 10, scope: !2427, inlinedAt: !2437)
!2460 = !DILocation(line: 1033, column: 1, scope: !2427, inlinedAt: !2437)
!2461 = !DILocation(line: 1021, column: 3, scope: !2414)
!2462 = !DILocation(line: 1026, column: 28, scope: !2427)
!2463 = !DILocation(line: 1026, column: 43, scope: !2427)
!2464 = !DILocation(line: 1027, column: 36, scope: !2427)
!2465 = !DILocation(line: 1028, column: 36, scope: !2427)
!2466 = !DILocation(line: 1028, column: 48, scope: !2427)
!2467 = !DILocation(line: 1030, column: 3, scope: !2427)
!2468 = !DILocation(line: 1030, column: 30, scope: !2427)
!2469 = !DILocation(line: 1030, column: 26, scope: !2427)
!2470 = !DILocation(line: 179, column: 45, scope: !968, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 1031, column: 3, scope: !2427)
!2472 = !DILocation(line: 180, column: 33, scope: !968, inlinedAt: !2471)
!2473 = !DILocation(line: 180, column: 57, scope: !968, inlinedAt: !2471)
!2474 = !DILocation(line: 184, column: 6, scope: !968, inlinedAt: !2471)
!2475 = !DILocation(line: 184, column: 12, scope: !968, inlinedAt: !2471)
!2476 = !DILocation(line: 185, column: 8, scope: !984, inlinedAt: !2471)
!2477 = !DILocation(line: 185, column: 23, scope: !984, inlinedAt: !2471)
!2478 = !DILocation(line: 185, column: 19, scope: !984, inlinedAt: !2471)
!2479 = !DILocation(line: 186, column: 5, scope: !984, inlinedAt: !2471)
!2480 = !DILocation(line: 187, column: 6, scope: !968, inlinedAt: !2471)
!2481 = !DILocation(line: 187, column: 17, scope: !968, inlinedAt: !2471)
!2482 = !DILocation(line: 188, column: 6, scope: !968, inlinedAt: !2471)
!2483 = !DILocation(line: 188, column: 18, scope: !968, inlinedAt: !2471)
!2484 = !DILocation(line: 1032, column: 10, scope: !2427)
!2485 = !DILocation(line: 1033, column: 1, scope: !2427)
!2486 = !DILocation(line: 1032, column: 3, scope: !2427)
!2487 = distinct !DISubprogram(name: "quotearg_custom", scope: !102, file: !102, line: 1036, type: !2488, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!6, !17, !17, !17}
!2490 = !{!2491, !2492, !2493}
!2491 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2487, file: !102, line: 1036, type: !17)
!2492 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2487, file: !102, line: 1036, type: !17)
!2493 = !DILocalVariable(name: "arg", arg: 3, scope: !2487, file: !102, line: 1037, type: !17)
!2494 = !DILocation(line: 1036, column: 30, scope: !2487)
!2495 = !DILocation(line: 1036, column: 54, scope: !2487)
!2496 = !DILocation(line: 1037, column: 30, scope: !2487)
!2497 = !DILocation(line: 1018, column: 24, scope: !2414, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 1039, column: 10, scope: !2487)
!2499 = !DILocation(line: 1018, column: 39, scope: !2414, inlinedAt: !2498)
!2500 = !DILocation(line: 1019, column: 32, scope: !2414, inlinedAt: !2498)
!2501 = !DILocation(line: 1019, column: 57, scope: !2414, inlinedAt: !2498)
!2502 = !DILocation(line: 1026, column: 28, scope: !2427, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 1021, column: 10, scope: !2414, inlinedAt: !2498)
!2504 = !DILocation(line: 1026, column: 43, scope: !2427, inlinedAt: !2503)
!2505 = !DILocation(line: 1027, column: 36, scope: !2427, inlinedAt: !2503)
!2506 = !DILocation(line: 1028, column: 36, scope: !2427, inlinedAt: !2503)
!2507 = !DILocation(line: 1028, column: 48, scope: !2427, inlinedAt: !2503)
!2508 = !DILocation(line: 1030, column: 3, scope: !2427, inlinedAt: !2503)
!2509 = !DILocation(line: 1030, column: 30, scope: !2427, inlinedAt: !2503)
!2510 = !DILocation(line: 1030, column: 26, scope: !2427, inlinedAt: !2503)
!2511 = !DILocation(line: 179, column: 45, scope: !968, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 1031, column: 3, scope: !2427, inlinedAt: !2503)
!2513 = !DILocation(line: 180, column: 33, scope: !968, inlinedAt: !2512)
!2514 = !DILocation(line: 180, column: 57, scope: !968, inlinedAt: !2512)
!2515 = !DILocation(line: 184, column: 6, scope: !968, inlinedAt: !2512)
!2516 = !DILocation(line: 184, column: 12, scope: !968, inlinedAt: !2512)
!2517 = !DILocation(line: 185, column: 8, scope: !984, inlinedAt: !2512)
!2518 = !DILocation(line: 185, column: 23, scope: !984, inlinedAt: !2512)
!2519 = !DILocation(line: 185, column: 19, scope: !984, inlinedAt: !2512)
!2520 = !DILocation(line: 186, column: 5, scope: !984, inlinedAt: !2512)
!2521 = !DILocation(line: 187, column: 6, scope: !968, inlinedAt: !2512)
!2522 = !DILocation(line: 187, column: 17, scope: !968, inlinedAt: !2512)
!2523 = !DILocation(line: 188, column: 6, scope: !968, inlinedAt: !2512)
!2524 = !DILocation(line: 188, column: 18, scope: !968, inlinedAt: !2512)
!2525 = !DILocation(line: 1032, column: 10, scope: !2427, inlinedAt: !2503)
!2526 = !DILocation(line: 1033, column: 1, scope: !2427, inlinedAt: !2503)
!2527 = !DILocation(line: 1039, column: 3, scope: !2487)
!2528 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !102, file: !102, line: 1043, type: !2529, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!6, !17, !17, !17, !96}
!2531 = !{!2532, !2533, !2534, !2535}
!2532 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2528, file: !102, line: 1043, type: !17)
!2533 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2528, file: !102, line: 1043, type: !17)
!2534 = !DILocalVariable(name: "arg", arg: 3, scope: !2528, file: !102, line: 1044, type: !17)
!2535 = !DILocalVariable(name: "argsize", arg: 4, scope: !2528, file: !102, line: 1044, type: !96)
!2536 = !DILocation(line: 1043, column: 34, scope: !2528)
!2537 = !DILocation(line: 1043, column: 58, scope: !2528)
!2538 = !DILocation(line: 1044, column: 34, scope: !2528)
!2539 = !DILocation(line: 1044, column: 46, scope: !2528)
!2540 = !DILocation(line: 1026, column: 28, scope: !2427, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 1046, column: 10, scope: !2528)
!2542 = !DILocation(line: 1026, column: 43, scope: !2427, inlinedAt: !2541)
!2543 = !DILocation(line: 1027, column: 36, scope: !2427, inlinedAt: !2541)
!2544 = !DILocation(line: 1028, column: 36, scope: !2427, inlinedAt: !2541)
!2545 = !DILocation(line: 1028, column: 48, scope: !2427, inlinedAt: !2541)
!2546 = !DILocation(line: 1030, column: 3, scope: !2427, inlinedAt: !2541)
!2547 = !DILocation(line: 1030, column: 30, scope: !2427, inlinedAt: !2541)
!2548 = !DILocation(line: 1030, column: 26, scope: !2427, inlinedAt: !2541)
!2549 = !DILocation(line: 179, column: 45, scope: !968, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 1031, column: 3, scope: !2427, inlinedAt: !2541)
!2551 = !DILocation(line: 180, column: 33, scope: !968, inlinedAt: !2550)
!2552 = !DILocation(line: 180, column: 57, scope: !968, inlinedAt: !2550)
!2553 = !DILocation(line: 184, column: 6, scope: !968, inlinedAt: !2550)
!2554 = !DILocation(line: 184, column: 12, scope: !968, inlinedAt: !2550)
!2555 = !DILocation(line: 185, column: 8, scope: !984, inlinedAt: !2550)
!2556 = !DILocation(line: 185, column: 23, scope: !984, inlinedAt: !2550)
!2557 = !DILocation(line: 185, column: 19, scope: !984, inlinedAt: !2550)
!2558 = !DILocation(line: 186, column: 5, scope: !984, inlinedAt: !2550)
!2559 = !DILocation(line: 187, column: 6, scope: !968, inlinedAt: !2550)
!2560 = !DILocation(line: 187, column: 17, scope: !968, inlinedAt: !2550)
!2561 = !DILocation(line: 188, column: 6, scope: !968, inlinedAt: !2550)
!2562 = !DILocation(line: 188, column: 18, scope: !968, inlinedAt: !2550)
!2563 = !DILocation(line: 1032, column: 10, scope: !2427, inlinedAt: !2541)
!2564 = !DILocation(line: 1033, column: 1, scope: !2427, inlinedAt: !2541)
!2565 = !DILocation(line: 1046, column: 3, scope: !2528)
!2566 = distinct !DISubprogram(name: "quote_n_mem", scope: !102, file: !102, line: 1061, type: !2567, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!17, !20, !17, !96}
!2569 = !{!2570, !2571, !2572}
!2570 = !DILocalVariable(name: "n", arg: 1, scope: !2566, file: !102, line: 1061, type: !20)
!2571 = !DILocalVariable(name: "arg", arg: 2, scope: !2566, file: !102, line: 1061, type: !17)
!2572 = !DILocalVariable(name: "argsize", arg: 3, scope: !2566, file: !102, line: 1061, type: !96)
!2573 = !DILocation(line: 1061, column: 18, scope: !2566)
!2574 = !DILocation(line: 1061, column: 33, scope: !2566)
!2575 = !DILocation(line: 1061, column: 45, scope: !2566)
!2576 = !DILocation(line: 1063, column: 10, scope: !2566)
!2577 = !DILocation(line: 1063, column: 3, scope: !2566)
!2578 = distinct !DISubprogram(name: "quote_mem", scope: !102, file: !102, line: 1067, type: !2579, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!17, !17, !96}
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "arg", arg: 1, scope: !2578, file: !102, line: 1067, type: !17)
!2583 = !DILocalVariable(name: "argsize", arg: 2, scope: !2578, file: !102, line: 1067, type: !96)
!2584 = !DILocation(line: 1067, column: 24, scope: !2578)
!2585 = !DILocation(line: 1067, column: 36, scope: !2578)
!2586 = !DILocation(line: 1061, column: 18, scope: !2566, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 1069, column: 10, scope: !2578)
!2588 = !DILocation(line: 1061, column: 33, scope: !2566, inlinedAt: !2587)
!2589 = !DILocation(line: 1061, column: 45, scope: !2566, inlinedAt: !2587)
!2590 = !DILocation(line: 1063, column: 10, scope: !2566, inlinedAt: !2587)
!2591 = !DILocation(line: 1069, column: 3, scope: !2578)
!2592 = distinct !DISubprogram(name: "quote_n", scope: !102, file: !102, line: 1073, type: !2593, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!17, !20, !17}
!2595 = !{!2596, !2597}
!2596 = !DILocalVariable(name: "n", arg: 1, scope: !2592, file: !102, line: 1073, type: !20)
!2597 = !DILocalVariable(name: "arg", arg: 2, scope: !2592, file: !102, line: 1073, type: !17)
!2598 = !DILocation(line: 1073, column: 14, scope: !2592)
!2599 = !DILocation(line: 1073, column: 29, scope: !2592)
!2600 = !DILocation(line: 1061, column: 18, scope: !2566, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1075, column: 10, scope: !2592)
!2602 = !DILocation(line: 1061, column: 33, scope: !2566, inlinedAt: !2601)
!2603 = !DILocation(line: 1061, column: 45, scope: !2566, inlinedAt: !2601)
!2604 = !DILocation(line: 1063, column: 10, scope: !2566, inlinedAt: !2601)
!2605 = !DILocation(line: 1075, column: 3, scope: !2592)
!2606 = distinct !DISubprogram(name: "quote", scope: !102, file: !102, line: 1079, type: !2607, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !56, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!17, !17}
!2609 = !{!2610}
!2610 = !DILocalVariable(name: "arg", arg: 1, scope: !2606, file: !102, line: 1079, type: !17)
!2611 = !DILocation(line: 1079, column: 20, scope: !2606)
!2612 = !DILocation(line: 1073, column: 14, scope: !2592, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 1081, column: 10, scope: !2606)
!2614 = !DILocation(line: 1073, column: 29, scope: !2592, inlinedAt: !2613)
!2615 = !DILocation(line: 1061, column: 18, scope: !2566, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1075, column: 10, scope: !2592, inlinedAt: !2613)
!2617 = !DILocation(line: 1061, column: 33, scope: !2566, inlinedAt: !2616)
!2618 = !DILocation(line: 1061, column: 45, scope: !2566, inlinedAt: !2616)
!2619 = !DILocation(line: 1063, column: 10, scope: !2566, inlinedAt: !2616)
!2620 = !DILocation(line: 1081, column: 3, scope: !2606)
!2621 = distinct !DISubprogram(name: "version_etc_arn", scope: !152, file: !152, line: 62, type: !2622, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !148, retainedNodes: !2680)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !2624, !17, !17, !17, !2679, !96}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2626, line: 7, baseType: !2627)
!2626 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2628, line: 49, size: 1728, elements: !2629)
!2628 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2629 = !{!2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2645, !2647, !2648, !2649, !2653, !2654, !2656, !2660, !2663, !2665, !2668, !2671, !2672, !2673, !2674, !2675}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2627, file: !2628, line: 51, baseType: !20, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2627, file: !2628, line: 54, baseType: !6, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2627, file: !2628, line: 55, baseType: !6, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2627, file: !2628, line: 56, baseType: !6, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2627, file: !2628, line: 57, baseType: !6, size: 64, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2627, file: !2628, line: 58, baseType: !6, size: 64, offset: 320)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2627, file: !2628, line: 59, baseType: !6, size: 64, offset: 384)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2627, file: !2628, line: 60, baseType: !6, size: 64, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2627, file: !2628, line: 61, baseType: !6, size: 64, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2627, file: !2628, line: 64, baseType: !6, size: 64, offset: 576)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2627, file: !2628, line: 65, baseType: !6, size: 64, offset: 640)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2627, file: !2628, line: 66, baseType: !6, size: 64, offset: 704)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2627, file: !2628, line: 68, baseType: !2643, size: 64, offset: 768)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2628, line: 36, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2627, file: !2628, line: 70, baseType: !2646, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2627, file: !2628, line: 72, baseType: !20, size: 32, offset: 896)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2627, file: !2628, line: 73, baseType: !20, size: 32, offset: 928)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2627, file: !2628, line: 74, baseType: !2650, size: 64, offset: 960)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2651, line: 150, baseType: !2652)
!2651 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2652 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2627, file: !2628, line: 77, baseType: !95, size: 16, offset: 1024)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2627, file: !2628, line: 78, baseType: !2655, size: 8, offset: 1040)
!2655 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2627, file: !2628, line: 79, baseType: !2657, size: 8, offset: 1048)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2658)
!2658 = !{!2659}
!2659 = !DISubrange(count: 1)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2627, file: !2628, line: 81, baseType: !2661, size: 64, offset: 1088)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2628, line: 43, baseType: null)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2627, file: !2628, line: 89, baseType: !2664, size: 64, offset: 1152)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2651, line: 151, baseType: !2652)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2627, file: !2628, line: 91, baseType: !2666, size: 64, offset: 1216)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2628, line: 37, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2627, file: !2628, line: 92, baseType: !2669, size: 64, offset: 1280)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2628, line: 38, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2627, file: !2628, line: 93, baseType: !2646, size: 64, offset: 1344)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2627, file: !2628, line: 94, baseType: !8, size: 64, offset: 1408)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2627, file: !2628, line: 95, baseType: !96, size: 64, offset: 1472)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2627, file: !2628, line: 96, baseType: !20, size: 32, offset: 1536)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2627, file: !2628, line: 98, baseType: !2676, size: 160, offset: 1568)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2677)
!2677 = !{!2678}
!2678 = !DISubrange(count: 20)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2680 = !{!2681, !2682, !2683, !2684, !2685, !2686}
!2681 = !DILocalVariable(name: "stream", arg: 1, scope: !2621, file: !152, line: 62, type: !2624)
!2682 = !DILocalVariable(name: "command_name", arg: 2, scope: !2621, file: !152, line: 63, type: !17)
!2683 = !DILocalVariable(name: "package", arg: 3, scope: !2621, file: !152, line: 63, type: !17)
!2684 = !DILocalVariable(name: "version", arg: 4, scope: !2621, file: !152, line: 64, type: !17)
!2685 = !DILocalVariable(name: "authors", arg: 5, scope: !2621, file: !152, line: 65, type: !2679)
!2686 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2621, file: !152, line: 65, type: !96)
!2687 = !DILocation(line: 62, column: 24, scope: !2621)
!2688 = !DILocation(line: 63, column: 30, scope: !2621)
!2689 = !DILocation(line: 63, column: 56, scope: !2621)
!2690 = !DILocation(line: 64, column: 30, scope: !2621)
!2691 = !DILocation(line: 65, column: 39, scope: !2621)
!2692 = !DILocation(line: 65, column: 55, scope: !2621)
!2693 = !DILocation(line: 67, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2621, file: !152, line: 67, column: 7)
!2695 = !DILocation(line: 67, column: 7, scope: !2621)
!2696 = !DILocation(line: 68, column: 5, scope: !2694)
!2697 = !DILocation(line: 70, column: 5, scope: !2694)
!2698 = !DILocation(line: 84, column: 3, scope: !2621)
!2699 = !DILocation(line: 86, column: 3, scope: !2621)
!2700 = !DILocation(line: 95, column: 3, scope: !2621)
!2701 = !DILocation(line: 99, column: 7, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2621, file: !152, line: 96, column: 5)
!2703 = !DILocation(line: 102, column: 7, scope: !2702)
!2704 = !DILocation(line: 103, column: 7, scope: !2702)
!2705 = !DILocation(line: 106, column: 7, scope: !2702)
!2706 = !DILocation(line: 107, column: 7, scope: !2702)
!2707 = !DILocation(line: 110, column: 7, scope: !2702)
!2708 = !DILocation(line: 112, column: 7, scope: !2702)
!2709 = !DILocation(line: 117, column: 7, scope: !2702)
!2710 = !DILocation(line: 119, column: 7, scope: !2702)
!2711 = !DILocation(line: 124, column: 7, scope: !2702)
!2712 = !DILocation(line: 126, column: 7, scope: !2702)
!2713 = !DILocation(line: 131, column: 7, scope: !2702)
!2714 = !DILocation(line: 134, column: 7, scope: !2702)
!2715 = !DILocation(line: 139, column: 7, scope: !2702)
!2716 = !DILocation(line: 142, column: 7, scope: !2702)
!2717 = !DILocation(line: 147, column: 7, scope: !2702)
!2718 = !DILocation(line: 151, column: 7, scope: !2702)
!2719 = !DILocation(line: 156, column: 7, scope: !2702)
!2720 = !DILocation(line: 160, column: 7, scope: !2702)
!2721 = !DILocation(line: 167, column: 7, scope: !2702)
!2722 = !DILocation(line: 171, column: 7, scope: !2702)
!2723 = !DILocation(line: 173, column: 1, scope: !2621)
!2724 = distinct !DISubprogram(name: "version_etc_ar", scope: !152, file: !152, line: 180, type: !2725, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !148, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{null, !2624, !17, !17, !17, !2679}
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733}
!2728 = !DILocalVariable(name: "stream", arg: 1, scope: !2724, file: !152, line: 180, type: !2624)
!2729 = !DILocalVariable(name: "command_name", arg: 2, scope: !2724, file: !152, line: 181, type: !17)
!2730 = !DILocalVariable(name: "package", arg: 3, scope: !2724, file: !152, line: 181, type: !17)
!2731 = !DILocalVariable(name: "version", arg: 4, scope: !2724, file: !152, line: 182, type: !17)
!2732 = !DILocalVariable(name: "authors", arg: 5, scope: !2724, file: !152, line: 182, type: !2679)
!2733 = !DILocalVariable(name: "n_authors", scope: !2724, file: !152, line: 184, type: !96)
!2734 = !DILocation(line: 180, column: 23, scope: !2724)
!2735 = !DILocation(line: 181, column: 29, scope: !2724)
!2736 = !DILocation(line: 181, column: 55, scope: !2724)
!2737 = !DILocation(line: 182, column: 29, scope: !2724)
!2738 = !DILocation(line: 182, column: 59, scope: !2724)
!2739 = !DILocation(line: 184, column: 10, scope: !2724)
!2740 = !DILocation(line: 186, column: 8, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2724, file: !152, line: 186, column: 3)
!2742 = !DILocation(line: 0, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2741, file: !152, line: 186, column: 3)
!2744 = !DILocation(line: 186, column: 23, scope: !2743)
!2745 = !DILocation(line: 186, column: 3, scope: !2741)
!2746 = !DILocation(line: 186, column: 52, scope: !2743)
!2747 = distinct !{!2747, !2745, !2748}
!2748 = !DILocation(line: 187, column: 5, scope: !2741)
!2749 = !DILocation(line: 188, column: 3, scope: !2724)
!2750 = !DILocation(line: 189, column: 1, scope: !2724)
!2751 = distinct !DISubprogram(name: "version_etc_va", scope: !152, file: !152, line: 196, type: !2752, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !148, retainedNodes: !2761)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{null, !2624, !17, !17, !17, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !149, line: 189, size: 192, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2755, file: !149, line: 189, baseType: !61, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2755, file: !149, line: 189, baseType: !61, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2755, file: !149, line: 189, baseType: !8, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2755, file: !149, line: 189, baseType: !8, size: 64, offset: 128)
!2761 = !{!2762, !2763, !2764, !2765, !2766, !2767, !2768}
!2762 = !DILocalVariable(name: "stream", arg: 1, scope: !2751, file: !152, line: 196, type: !2624)
!2763 = !DILocalVariable(name: "command_name", arg: 2, scope: !2751, file: !152, line: 197, type: !17)
!2764 = !DILocalVariable(name: "package", arg: 3, scope: !2751, file: !152, line: 197, type: !17)
!2765 = !DILocalVariable(name: "version", arg: 4, scope: !2751, file: !152, line: 198, type: !17)
!2766 = !DILocalVariable(name: "authors", arg: 5, scope: !2751, file: !152, line: 198, type: !2754)
!2767 = !DILocalVariable(name: "n_authors", scope: !2751, file: !152, line: 200, type: !96)
!2768 = !DILocalVariable(name: "authtab", scope: !2751, file: !152, line: 201, type: !2769)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !105)
!2770 = !DILocation(line: 196, column: 23, scope: !2751)
!2771 = !DILocation(line: 197, column: 29, scope: !2751)
!2772 = !DILocation(line: 197, column: 55, scope: !2751)
!2773 = !DILocation(line: 198, column: 29, scope: !2751)
!2774 = !DILocation(line: 198, column: 46, scope: !2751)
!2775 = !DILocation(line: 201, column: 3, scope: !2751)
!2776 = !DILocation(line: 201, column: 15, scope: !2751)
!2777 = !DILocation(line: 200, column: 10, scope: !2751)
!2778 = !DILocation(line: 205, column: 35, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !152, line: 203, column: 3)
!2780 = distinct !DILexicalBlock(scope: !2751, file: !152, line: 203, column: 3)
!2781 = !DILocation(line: 205, column: 14, scope: !2779)
!2782 = !DILocation(line: 205, column: 33, scope: !2779)
!2783 = !DILocation(line: 205, column: 67, scope: !2779)
!2784 = !DILocation(line: 203, column: 3, scope: !2780)
!2785 = !DILocation(line: 0, scope: !2779)
!2786 = !DILocation(line: 208, column: 3, scope: !2751)
!2787 = !DILocation(line: 210, column: 1, scope: !2751)
!2788 = distinct !DISubprogram(name: "version_etc", scope: !152, file: !152, line: 227, type: !2789, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !148, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !2624, !17, !17, !17, null}
!2791 = !{!2792, !2793, !2794, !2795, !2796}
!2792 = !DILocalVariable(name: "stream", arg: 1, scope: !2788, file: !152, line: 227, type: !2624)
!2793 = !DILocalVariable(name: "command_name", arg: 2, scope: !2788, file: !152, line: 228, type: !17)
!2794 = !DILocalVariable(name: "package", arg: 3, scope: !2788, file: !152, line: 228, type: !17)
!2795 = !DILocalVariable(name: "version", arg: 4, scope: !2788, file: !152, line: 229, type: !17)
!2796 = !DILocalVariable(name: "authors", scope: !2788, file: !152, line: 231, type: !2797)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2798, line: 52, baseType: !2799)
!2798 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2800, line: 48, baseType: !2801)
!2800 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !149, line: 231, baseType: !2802)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2755, size: 192, elements: !2658)
!2803 = !DILocation(line: 227, column: 20, scope: !2788)
!2804 = !DILocation(line: 228, column: 26, scope: !2788)
!2805 = !DILocation(line: 228, column: 52, scope: !2788)
!2806 = !DILocation(line: 229, column: 26, scope: !2788)
!2807 = !DILocation(line: 231, column: 3, scope: !2788)
!2808 = !DILocation(line: 231, column: 11, scope: !2788)
!2809 = !DILocation(line: 233, column: 3, scope: !2788)
!2810 = !DILocation(line: 234, column: 3, scope: !2788)
!2811 = !DILocation(line: 235, column: 3, scope: !2788)
!2812 = !DILocation(line: 236, column: 1, scope: !2788)
!2813 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !152, file: !152, line: 239, type: !626, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !148, retainedNodes: !4)
!2814 = !DILocation(line: 245, column: 3, scope: !2813)
!2815 = !DILocation(line: 251, column: 3, scope: !2813)
!2816 = !DILocation(line: 256, column: 3, scope: !2813)
!2817 = !DILocation(line: 258, column: 1, scope: !2813)
!2818 = distinct !DISubprogram(name: "xnmalloc", scope: !160, file: !160, line: 99, type: !2819, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!8, !96, !96}
!2821 = !{!2822, !2823}
!2822 = !DILocalVariable(name: "n", arg: 1, scope: !2818, file: !160, line: 99, type: !96)
!2823 = !DILocalVariable(name: "s", arg: 2, scope: !2818, file: !160, line: 99, type: !96)
!2824 = !DILocation(line: 99, column: 18, scope: !2818)
!2825 = !DILocation(line: 99, column: 28, scope: !2818)
!2826 = !DILocation(line: 101, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2818, file: !160, line: 101, column: 7)
!2828 = !DILocation(line: 101, column: 7, scope: !2818)
!2829 = !DILocation(line: 102, column: 5, scope: !2827)
!2830 = !DILocation(line: 103, column: 21, scope: !2818)
!2831 = !DILocalVariable(name: "n", arg: 1, scope: !2832, file: !2833, line: 39, type: !96)
!2832 = distinct !DISubprogram(name: "xmalloc", scope: !2833, file: !2833, line: 39, type: !2834, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !2836)
!2833 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!8, !96}
!2836 = !{!2831, !2837}
!2837 = !DILocalVariable(name: "p", scope: !2832, file: !2833, line: 41, type: !8)
!2838 = !DILocation(line: 39, column: 17, scope: !2832, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 103, column: 10, scope: !2818)
!2840 = !DILocation(line: 41, column: 13, scope: !2832, inlinedAt: !2839)
!2841 = !DILocation(line: 41, column: 9, scope: !2832, inlinedAt: !2839)
!2842 = !DILocation(line: 42, column: 8, scope: !2843, inlinedAt: !2839)
!2843 = distinct !DILexicalBlock(scope: !2832, file: !2833, line: 42, column: 7)
!2844 = !DILocation(line: 42, column: 15, scope: !2843, inlinedAt: !2839)
!2845 = !DILocation(line: 42, column: 10, scope: !2843, inlinedAt: !2839)
!2846 = !DILocation(line: 43, column: 5, scope: !2843, inlinedAt: !2839)
!2847 = !DILocation(line: 103, column: 3, scope: !2818)
!2848 = !DILocation(line: 39, column: 17, scope: !2832)
!2849 = !DILocation(line: 41, column: 13, scope: !2832)
!2850 = !DILocation(line: 41, column: 9, scope: !2832)
!2851 = !DILocation(line: 42, column: 8, scope: !2843)
!2852 = !DILocation(line: 42, column: 15, scope: !2843)
!2853 = !DILocation(line: 42, column: 10, scope: !2843)
!2854 = !DILocation(line: 43, column: 5, scope: !2843)
!2855 = !DILocation(line: 44, column: 3, scope: !2832)
!2856 = distinct !DISubprogram(name: "xnrealloc", scope: !160, file: !160, line: 112, type: !2857, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!8, !8, !96, !96}
!2859 = !{!2860, !2861, !2862}
!2860 = !DILocalVariable(name: "p", arg: 1, scope: !2856, file: !160, line: 112, type: !8)
!2861 = !DILocalVariable(name: "n", arg: 2, scope: !2856, file: !160, line: 112, type: !96)
!2862 = !DILocalVariable(name: "s", arg: 3, scope: !2856, file: !160, line: 112, type: !96)
!2863 = !DILocation(line: 112, column: 18, scope: !2856)
!2864 = !DILocation(line: 112, column: 28, scope: !2856)
!2865 = !DILocation(line: 112, column: 38, scope: !2856)
!2866 = !DILocation(line: 114, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2856, file: !160, line: 114, column: 7)
!2868 = !DILocation(line: 114, column: 7, scope: !2856)
!2869 = !DILocation(line: 115, column: 5, scope: !2867)
!2870 = !DILocation(line: 116, column: 25, scope: !2856)
!2871 = !DILocalVariable(name: "p", arg: 1, scope: !2872, file: !2833, line: 51, type: !8)
!2872 = distinct !DISubprogram(name: "xrealloc", scope: !2833, file: !2833, line: 51, type: !2873, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!8, !8, !96}
!2875 = !{!2871, !2876}
!2876 = !DILocalVariable(name: "n", arg: 2, scope: !2872, file: !2833, line: 51, type: !96)
!2877 = !DILocation(line: 51, column: 17, scope: !2872, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 116, column: 10, scope: !2856)
!2879 = !DILocation(line: 51, column: 27, scope: !2872, inlinedAt: !2878)
!2880 = !DILocation(line: 53, column: 8, scope: !2881, inlinedAt: !2878)
!2881 = distinct !DILexicalBlock(scope: !2872, file: !2833, line: 53, column: 7)
!2882 = !DILocation(line: 53, column: 13, scope: !2881, inlinedAt: !2878)
!2883 = !DILocation(line: 53, column: 10, scope: !2881, inlinedAt: !2878)
!2884 = !DILocation(line: 57, column: 7, scope: !2885, inlinedAt: !2878)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !2833, line: 54, column: 5)
!2886 = !DILocation(line: 58, column: 7, scope: !2885, inlinedAt: !2878)
!2887 = !DILocation(line: 61, column: 7, scope: !2872, inlinedAt: !2878)
!2888 = !DILocation(line: 62, column: 8, scope: !2889, inlinedAt: !2878)
!2889 = distinct !DILexicalBlock(scope: !2872, file: !2833, line: 62, column: 7)
!2890 = !DILocation(line: 62, column: 13, scope: !2889, inlinedAt: !2878)
!2891 = !DILocation(line: 62, column: 10, scope: !2889, inlinedAt: !2878)
!2892 = !DILocation(line: 63, column: 5, scope: !2889, inlinedAt: !2878)
!2893 = !DILocation(line: 0, scope: !2872, inlinedAt: !2878)
!2894 = !DILocation(line: 116, column: 3, scope: !2856)
!2895 = !DILocation(line: 51, column: 17, scope: !2872)
!2896 = !DILocation(line: 51, column: 27, scope: !2872)
!2897 = !DILocation(line: 53, column: 8, scope: !2881)
!2898 = !DILocation(line: 53, column: 13, scope: !2881)
!2899 = !DILocation(line: 53, column: 10, scope: !2881)
!2900 = !DILocation(line: 57, column: 7, scope: !2885)
!2901 = !DILocation(line: 58, column: 7, scope: !2885)
!2902 = !DILocation(line: 61, column: 7, scope: !2872)
!2903 = !DILocation(line: 62, column: 8, scope: !2889)
!2904 = !DILocation(line: 62, column: 13, scope: !2889)
!2905 = !DILocation(line: 62, column: 10, scope: !2889)
!2906 = !DILocation(line: 63, column: 5, scope: !2889)
!2907 = !DILocation(line: 0, scope: !2872)
!2908 = !DILocation(line: 65, column: 1, scope: !2872)
!2909 = !DILocation(line: 174, column: 19, scope: !161)
!2910 = !DILocation(line: 174, column: 30, scope: !161)
!2911 = !DILocation(line: 174, column: 41, scope: !161)
!2912 = !DILocation(line: 176, column: 14, scope: !161)
!2913 = !DILocation(line: 176, column: 10, scope: !161)
!2914 = !DILocation(line: 178, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !161, file: !160, line: 178, column: 7)
!2916 = !DILocation(line: 178, column: 7, scope: !161)
!2917 = !DILocation(line: 180, column: 13, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !160, line: 180, column: 11)
!2919 = distinct !DILexicalBlock(scope: !2915, file: !160, line: 179, column: 5)
!2920 = !DILocation(line: 180, column: 11, scope: !2919)
!2921 = !DILocation(line: 188, column: 30, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2918, file: !160, line: 181, column: 9)
!2923 = !DILocation(line: 189, column: 16, scope: !2922)
!2924 = !DILocation(line: 189, column: 13, scope: !2922)
!2925 = !DILocation(line: 190, column: 9, scope: !2922)
!2926 = !DILocation(line: 0, scope: !2922)
!2927 = !DILocation(line: 191, column: 11, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2919, file: !160, line: 191, column: 11)
!2929 = !DILocation(line: 191, column: 11, scope: !2919)
!2930 = !DILocation(line: 206, column: 7, scope: !161)
!2931 = !DILocation(line: 207, column: 25, scope: !161)
!2932 = !DILocation(line: 51, column: 17, scope: !2872, inlinedAt: !2933)
!2933 = distinct !DILocation(line: 207, column: 10, scope: !161)
!2934 = !DILocation(line: 51, column: 27, scope: !2872, inlinedAt: !2933)
!2935 = !DILocation(line: 53, column: 10, scope: !2881, inlinedAt: !2933)
!2936 = !DILocation(line: 192, column: 9, scope: !2928)
!2937 = !DILocation(line: 200, column: 69, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !160, line: 200, column: 11)
!2939 = distinct !DILexicalBlock(scope: !2915, file: !160, line: 195, column: 5)
!2940 = !DILocation(line: 201, column: 11, scope: !2938)
!2941 = !DILocation(line: 200, column: 11, scope: !2939)
!2942 = !DILocation(line: 202, column: 9, scope: !2938)
!2943 = !DILocation(line: 203, column: 14, scope: !2939)
!2944 = !DILocation(line: 203, column: 18, scope: !2939)
!2945 = !DILocation(line: 203, column: 9, scope: !2939)
!2946 = !DILocation(line: 53, column: 8, scope: !2881, inlinedAt: !2933)
!2947 = !DILocation(line: 57, column: 7, scope: !2885, inlinedAt: !2933)
!2948 = !DILocation(line: 58, column: 7, scope: !2885, inlinedAt: !2933)
!2949 = !DILocation(line: 61, column: 7, scope: !2872, inlinedAt: !2933)
!2950 = !DILocation(line: 62, column: 8, scope: !2889, inlinedAt: !2933)
!2951 = !DILocation(line: 62, column: 13, scope: !2889, inlinedAt: !2933)
!2952 = !DILocation(line: 62, column: 10, scope: !2889, inlinedAt: !2933)
!2953 = !DILocation(line: 63, column: 5, scope: !2889, inlinedAt: !2933)
!2954 = !DILocation(line: 0, scope: !2872, inlinedAt: !2933)
!2955 = !DILocation(line: 207, column: 3, scope: !161)
!2956 = distinct !DISubprogram(name: "xcharalloc", scope: !160, file: !160, line: 216, type: !1905, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !2957)
!2957 = !{!2958}
!2958 = !DILocalVariable(name: "n", arg: 1, scope: !2956, file: !160, line: 216, type: !96)
!2959 = !DILocation(line: 216, column: 20, scope: !2956)
!2960 = !DILocation(line: 39, column: 17, scope: !2832, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 218, column: 10, scope: !2956)
!2962 = !DILocation(line: 41, column: 13, scope: !2832, inlinedAt: !2961)
!2963 = !DILocation(line: 41, column: 9, scope: !2832, inlinedAt: !2961)
!2964 = !DILocation(line: 42, column: 8, scope: !2843, inlinedAt: !2961)
!2965 = !DILocation(line: 42, column: 15, scope: !2843, inlinedAt: !2961)
!2966 = !DILocation(line: 42, column: 10, scope: !2843, inlinedAt: !2961)
!2967 = !DILocation(line: 43, column: 5, scope: !2843, inlinedAt: !2961)
!2968 = !DILocation(line: 218, column: 3, scope: !2956)
!2969 = distinct !DISubprogram(name: "x2realloc", scope: !2833, file: !2833, line: 74, type: !2970, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!8, !8, !164}
!2972 = !{!2973, !2974}
!2973 = !DILocalVariable(name: "p", arg: 1, scope: !2969, file: !2833, line: 74, type: !8)
!2974 = !DILocalVariable(name: "pn", arg: 2, scope: !2969, file: !2833, line: 74, type: !164)
!2975 = !DILocation(line: 74, column: 18, scope: !2969)
!2976 = !DILocation(line: 74, column: 29, scope: !2969)
!2977 = !DILocation(line: 174, column: 19, scope: !161, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 76, column: 10, scope: !2969)
!2979 = !DILocation(line: 174, column: 30, scope: !161, inlinedAt: !2978)
!2980 = !DILocation(line: 174, column: 41, scope: !161, inlinedAt: !2978)
!2981 = !DILocation(line: 176, column: 14, scope: !161, inlinedAt: !2978)
!2982 = !DILocation(line: 176, column: 10, scope: !161, inlinedAt: !2978)
!2983 = !DILocation(line: 178, column: 9, scope: !2915, inlinedAt: !2978)
!2984 = !DILocation(line: 178, column: 7, scope: !161, inlinedAt: !2978)
!2985 = !DILocation(line: 180, column: 13, scope: !2918, inlinedAt: !2978)
!2986 = !DILocation(line: 180, column: 11, scope: !2919, inlinedAt: !2978)
!2987 = !DILocation(line: 191, column: 11, scope: !2928, inlinedAt: !2978)
!2988 = !DILocation(line: 191, column: 11, scope: !2919, inlinedAt: !2978)
!2989 = !DILocation(line: 206, column: 7, scope: !161, inlinedAt: !2978)
!2990 = !DILocation(line: 51, column: 17, scope: !2872, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 207, column: 10, scope: !161, inlinedAt: !2978)
!2992 = !DILocation(line: 51, column: 27, scope: !2872, inlinedAt: !2991)
!2993 = !DILocation(line: 53, column: 10, scope: !2881, inlinedAt: !2991)
!2994 = !DILocation(line: 192, column: 9, scope: !2928, inlinedAt: !2978)
!2995 = !DILocation(line: 201, column: 11, scope: !2938, inlinedAt: !2978)
!2996 = !DILocation(line: 200, column: 11, scope: !2939, inlinedAt: !2978)
!2997 = !DILocation(line: 202, column: 9, scope: !2938, inlinedAt: !2978)
!2998 = !DILocation(line: 203, column: 14, scope: !2939, inlinedAt: !2978)
!2999 = !DILocation(line: 203, column: 18, scope: !2939, inlinedAt: !2978)
!3000 = !DILocation(line: 203, column: 9, scope: !2939, inlinedAt: !2978)
!3001 = !DILocation(line: 53, column: 8, scope: !2881, inlinedAt: !2991)
!3002 = !DILocation(line: 57, column: 7, scope: !2885, inlinedAt: !2991)
!3003 = !DILocation(line: 58, column: 7, scope: !2885, inlinedAt: !2991)
!3004 = !DILocation(line: 61, column: 7, scope: !2872, inlinedAt: !2991)
!3005 = !DILocation(line: 62, column: 8, scope: !2889, inlinedAt: !2991)
!3006 = !DILocation(line: 62, column: 13, scope: !2889, inlinedAt: !2991)
!3007 = !DILocation(line: 62, column: 10, scope: !2889, inlinedAt: !2991)
!3008 = !DILocation(line: 63, column: 5, scope: !2889, inlinedAt: !2991)
!3009 = !DILocation(line: 0, scope: !2872, inlinedAt: !2991)
!3010 = !DILocation(line: 76, column: 3, scope: !2969)
!3011 = distinct !DISubprogram(name: "xzalloc", scope: !2833, file: !2833, line: 84, type: !2834, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3012)
!3012 = !{!3013}
!3013 = !DILocalVariable(name: "s", arg: 1, scope: !3011, file: !2833, line: 84, type: !96)
!3014 = !DILocation(line: 84, column: 17, scope: !3011)
!3015 = !DILocation(line: 39, column: 17, scope: !2832, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 86, column: 18, scope: !3011)
!3017 = !DILocation(line: 41, column: 13, scope: !2832, inlinedAt: !3016)
!3018 = !DILocation(line: 41, column: 9, scope: !2832, inlinedAt: !3016)
!3019 = !DILocation(line: 42, column: 8, scope: !2843, inlinedAt: !3016)
!3020 = !DILocation(line: 42, column: 15, scope: !2843, inlinedAt: !3016)
!3021 = !DILocation(line: 42, column: 10, scope: !2843, inlinedAt: !3016)
!3022 = !DILocation(line: 43, column: 5, scope: !2843, inlinedAt: !3016)
!3023 = !DILocation(line: 86, column: 10, scope: !3011)
!3024 = !DILocation(line: 86, column: 3, scope: !3011)
!3025 = distinct !DISubprogram(name: "xcalloc", scope: !2833, file: !2833, line: 93, type: !2819, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3026)
!3026 = !{!3027, !3028, !3029}
!3027 = !DILocalVariable(name: "n", arg: 1, scope: !3025, file: !2833, line: 93, type: !96)
!3028 = !DILocalVariable(name: "s", arg: 2, scope: !3025, file: !2833, line: 93, type: !96)
!3029 = !DILocalVariable(name: "p", scope: !3025, file: !2833, line: 95, type: !8)
!3030 = !DILocation(line: 93, column: 17, scope: !3025)
!3031 = !DILocation(line: 93, column: 27, scope: !3025)
!3032 = !DILocation(line: 100, column: 7, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3025, file: !2833, line: 100, column: 7)
!3034 = !DILocation(line: 101, column: 7, scope: !3033)
!3035 = !DILocation(line: 101, column: 18, scope: !3033)
!3036 = !DILocation(line: 95, column: 9, scope: !3025)
!3037 = !DILocation(line: 101, column: 16, scope: !3033)
!3038 = !DILocation(line: 100, column: 7, scope: !3025)
!3039 = !DILocation(line: 102, column: 5, scope: !3033)
!3040 = !DILocation(line: 103, column: 3, scope: !3025)
!3041 = distinct !DISubprogram(name: "xmemdup", scope: !2833, file: !2833, line: 111, type: !3042, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3046)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!8, !3044, !96}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3046 = !{!3047, !3048}
!3047 = !DILocalVariable(name: "p", arg: 1, scope: !3041, file: !2833, line: 111, type: !3044)
!3048 = !DILocalVariable(name: "s", arg: 2, scope: !3041, file: !2833, line: 111, type: !96)
!3049 = !DILocation(line: 111, column: 22, scope: !3041)
!3050 = !DILocation(line: 111, column: 32, scope: !3041)
!3051 = !DILocation(line: 39, column: 17, scope: !2832, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 113, column: 18, scope: !3041)
!3053 = !DILocation(line: 41, column: 13, scope: !2832, inlinedAt: !3052)
!3054 = !DILocation(line: 41, column: 9, scope: !2832, inlinedAt: !3052)
!3055 = !DILocation(line: 42, column: 8, scope: !2843, inlinedAt: !3052)
!3056 = !DILocation(line: 42, column: 15, scope: !2843, inlinedAt: !3052)
!3057 = !DILocation(line: 42, column: 10, scope: !2843, inlinedAt: !3052)
!3058 = !DILocation(line: 43, column: 5, scope: !2843, inlinedAt: !3052)
!3059 = !DILocation(line: 113, column: 10, scope: !3041)
!3060 = !DILocation(line: 113, column: 3, scope: !3041)
!3061 = distinct !DISubprogram(name: "xstrdup", scope: !2833, file: !2833, line: 119, type: !2111, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3062)
!3062 = !{!3063}
!3063 = !DILocalVariable(name: "string", arg: 1, scope: !3061, file: !2833, line: 119, type: !17)
!3064 = !DILocation(line: 119, column: 22, scope: !3061)
!3065 = !DILocation(line: 121, column: 27, scope: !3061)
!3066 = !DILocation(line: 121, column: 43, scope: !3061)
!3067 = !DILocation(line: 111, column: 22, scope: !3041, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 121, column: 10, scope: !3061)
!3069 = !DILocation(line: 111, column: 32, scope: !3041, inlinedAt: !3068)
!3070 = !DILocation(line: 39, column: 17, scope: !2832, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 113, column: 18, scope: !3041, inlinedAt: !3068)
!3072 = !DILocation(line: 41, column: 13, scope: !2832, inlinedAt: !3071)
!3073 = !DILocation(line: 41, column: 9, scope: !2832, inlinedAt: !3071)
!3074 = !DILocation(line: 42, column: 8, scope: !2843, inlinedAt: !3071)
!3075 = !DILocation(line: 42, column: 15, scope: !2843, inlinedAt: !3071)
!3076 = !DILocation(line: 42, column: 10, scope: !2843, inlinedAt: !3071)
!3077 = !DILocation(line: 43, column: 5, scope: !2843, inlinedAt: !3071)
!3078 = !DILocation(line: 113, column: 10, scope: !3041, inlinedAt: !3068)
!3079 = !DILocation(line: 121, column: 3, scope: !3061)
!3080 = distinct !DISubprogram(name: "xalloc_die", scope: !3081, file: !3081, line: 32, type: !626, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !173, retainedNodes: !4)
!3081 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3082 = !DILocation(line: 34, column: 10, scope: !3080)
!3083 = !DILocation(line: 34, column: 33, scope: !3080)
!3084 = !DILocation(line: 34, column: 3, scope: !3080)
!3085 = !DILocation(line: 40, column: 3, scope: !3080)
!3086 = distinct !DISubprogram(name: "rpl_calloc", scope: !3087, file: !3087, line: 42, type: !2819, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !3088)
!3087 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3088 = !{!3089, !3090, !3091, !3092}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3086, file: !3087, line: 42, type: !96)
!3090 = !DILocalVariable(name: "s", arg: 2, scope: !3086, file: !3087, line: 42, type: !96)
!3091 = !DILocalVariable(name: "result", scope: !3086, file: !3087, line: 44, type: !8)
!3092 = !DILocalVariable(name: "bytes", scope: !3093, file: !3087, line: 56, type: !96)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3087, line: 53, column: 5)
!3094 = distinct !DILexicalBlock(scope: !3086, file: !3087, line: 47, column: 7)
!3095 = !DILocation(line: 42, column: 20, scope: !3086)
!3096 = !DILocation(line: 42, column: 30, scope: !3086)
!3097 = !DILocation(line: 47, column: 9, scope: !3094)
!3098 = !DILocation(line: 47, column: 19, scope: !3094)
!3099 = !DILocation(line: 47, column: 14, scope: !3094)
!3100 = !DILocation(line: 56, column: 24, scope: !3093)
!3101 = !DILocation(line: 56, column: 14, scope: !3093)
!3102 = !DILocation(line: 57, column: 17, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3093, file: !3087, line: 57, column: 11)
!3104 = !DILocation(line: 57, column: 21, scope: !3103)
!3105 = !DILocation(line: 57, column: 11, scope: !3093)
!3106 = !DILocation(line: 59, column: 11, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3103, file: !3087, line: 58, column: 9)
!3108 = !DILocation(line: 59, column: 17, scope: !3107)
!3109 = !DILocation(line: 65, column: 12, scope: !3086)
!3110 = !DILocation(line: 44, column: 9, scope: !3086)
!3111 = !DILocation(line: 72, column: 3, scope: !3086)
!3112 = !DILocation(line: 0, scope: !3107)
!3113 = !DILocation(line: 73, column: 1, scope: !3086)
!3114 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3115, file: !3115, line: 385, type: !3116, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3130)
!3115 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!96, !3118, !17, !96, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1067, line: 6, baseType: !3121)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1069, line: 21, baseType: !3122)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1069, line: 13, size: 64, elements: !3123)
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3122, file: !1069, line: 15, baseType: !20, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3122, file: !1069, line: 20, baseType: !3126, size: 32, offset: 32)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3122, file: !1069, line: 16, size: 32, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3126, file: !1069, line: 18, baseType: !61, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3126, file: !1069, line: 19, baseType: !1078, size: 32)
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137}
!3131 = !DILocalVariable(name: "pwc", arg: 1, scope: !3114, file: !3115, line: 385, type: !3118)
!3132 = !DILocalVariable(name: "s", arg: 2, scope: !3114, file: !3115, line: 385, type: !17)
!3133 = !DILocalVariable(name: "n", arg: 3, scope: !3114, file: !3115, line: 385, type: !96)
!3134 = !DILocalVariable(name: "ps", arg: 4, scope: !3114, file: !3115, line: 385, type: !3119)
!3135 = !DILocalVariable(name: "ret", scope: !3114, file: !3115, line: 387, type: !96)
!3136 = !DILocalVariable(name: "wc", scope: !3114, file: !3115, line: 388, type: !1083)
!3137 = !DILocalVariable(name: "uc", scope: !3138, file: !3115, line: 449, type: !9)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !3115, line: 448, column: 5)
!3139 = distinct !DILexicalBlock(scope: !3114, file: !3115, line: 447, column: 7)
!3140 = !DILocation(line: 385, column: 23, scope: !3114)
!3141 = !DILocation(line: 385, column: 40, scope: !3114)
!3142 = !DILocation(line: 385, column: 50, scope: !3114)
!3143 = !DILocation(line: 385, column: 64, scope: !3114)
!3144 = !DILocation(line: 388, column: 3, scope: !3114)
!3145 = !DILocation(line: 404, column: 9, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3114, file: !3115, line: 404, column: 7)
!3147 = !DILocation(line: 404, column: 7, scope: !3114)
!3148 = !DILocation(line: 439, column: 9, scope: !3114)
!3149 = !DILocation(line: 387, column: 10, scope: !3114)
!3150 = !DILocation(line: 447, column: 19, scope: !3139)
!3151 = !DILocation(line: 447, column: 31, scope: !3139)
!3152 = !DILocation(line: 447, column: 26, scope: !3139)
!3153 = !DILocation(line: 447, column: 41, scope: !3139)
!3154 = !DILocation(line: 447, column: 7, scope: !3114)
!3155 = !DILocation(line: 449, column: 26, scope: !3138)
!3156 = !DILocation(line: 449, column: 21, scope: !3138)
!3157 = !DILocation(line: 450, column: 14, scope: !3138)
!3158 = !DILocation(line: 450, column: 12, scope: !3138)
!3159 = !DILocation(line: 0, scope: !3138)
!3160 = !DILocation(line: 456, column: 1, scope: !3114)
!3161 = distinct !DISubprogram(name: "close_stream", scope: !3162, file: !3162, line: 56, type: !3163, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !180, retainedNodes: !3199)
!3162 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!20, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2626, line: 7, baseType: !3167)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2628, line: 49, size: 1728, elements: !3168)
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3167, file: !2628, line: 51, baseType: !20, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3167, file: !2628, line: 54, baseType: !6, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3167, file: !2628, line: 55, baseType: !6, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3167, file: !2628, line: 56, baseType: !6, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3167, file: !2628, line: 57, baseType: !6, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3167, file: !2628, line: 58, baseType: !6, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3167, file: !2628, line: 59, baseType: !6, size: 64, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3167, file: !2628, line: 60, baseType: !6, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3167, file: !2628, line: 61, baseType: !6, size: 64, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3167, file: !2628, line: 64, baseType: !6, size: 64, offset: 576)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3167, file: !2628, line: 65, baseType: !6, size: 64, offset: 640)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3167, file: !2628, line: 66, baseType: !6, size: 64, offset: 704)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3167, file: !2628, line: 68, baseType: !2643, size: 64, offset: 768)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3167, file: !2628, line: 70, baseType: !3183, size: 64, offset: 832)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3167, file: !2628, line: 72, baseType: !20, size: 32, offset: 896)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3167, file: !2628, line: 73, baseType: !20, size: 32, offset: 928)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3167, file: !2628, line: 74, baseType: !2650, size: 64, offset: 960)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3167, file: !2628, line: 77, baseType: !95, size: 16, offset: 1024)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3167, file: !2628, line: 78, baseType: !2655, size: 8, offset: 1040)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3167, file: !2628, line: 79, baseType: !2657, size: 8, offset: 1048)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3167, file: !2628, line: 81, baseType: !2661, size: 64, offset: 1088)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3167, file: !2628, line: 89, baseType: !2664, size: 64, offset: 1152)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3167, file: !2628, line: 91, baseType: !2666, size: 64, offset: 1216)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3167, file: !2628, line: 92, baseType: !2669, size: 64, offset: 1280)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3167, file: !2628, line: 93, baseType: !3183, size: 64, offset: 1344)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3167, file: !2628, line: 94, baseType: !8, size: 64, offset: 1408)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3167, file: !2628, line: 95, baseType: !96, size: 64, offset: 1472)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3167, file: !2628, line: 96, baseType: !20, size: 32, offset: 1536)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3167, file: !2628, line: 98, baseType: !2676, size: 160, offset: 1568)
!3199 = !{!3200, !3201, !3203, !3204}
!3200 = !DILocalVariable(name: "stream", arg: 1, scope: !3161, file: !3162, line: 56, type: !3165)
!3201 = !DILocalVariable(name: "some_pending", scope: !3161, file: !3162, line: 58, type: !3202)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!3203 = !DILocalVariable(name: "prev_fail", scope: !3161, file: !3162, line: 59, type: !3202)
!3204 = !DILocalVariable(name: "fclose_fail", scope: !3161, file: !3162, line: 60, type: !3202)
!3205 = !DILocation(line: 56, column: 21, scope: !3161)
!3206 = !DILocation(line: 58, column: 30, scope: !3161)
!3207 = !DILocalVariable(name: "__stream", arg: 1, scope: !3208, file: !3209, line: 135, type: !3165)
!3208 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3209, file: !3209, line: 135, type: !3163, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !180, retainedNodes: !3210)
!3209 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3210 = !{!3207}
!3211 = !DILocation(line: 135, column: 1, scope: !3208, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 59, column: 27, scope: !3161)
!3213 = !DILocation(line: 137, column: 10, scope: !3208, inlinedAt: !3212)
!3214 = !{!3215, !710, i64 0}
!3215 = !{!"_IO_FILE", !710, i64 0, !619, i64 8, !619, i64 16, !619, i64 24, !619, i64 32, !619, i64 40, !619, i64 48, !619, i64 56, !619, i64 64, !619, i64 72, !619, i64 80, !619, i64 88, !619, i64 96, !619, i64 104, !710, i64 112, !710, i64 116, !1950, i64 120, !1324, i64 128, !620, i64 130, !620, i64 131, !619, i64 136, !1950, i64 144, !619, i64 152, !619, i64 160, !619, i64 168, !619, i64 176, !1950, i64 184, !710, i64 192, !620, i64 196}
!3216 = !DILocation(line: 59, column: 43, scope: !3161)
!3217 = !DILocation(line: 60, column: 29, scope: !3161)
!3218 = !DILocation(line: 60, column: 45, scope: !3161)
!3219 = !DILocation(line: 70, column: 17, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3161, file: !3162, line: 70, column: 7)
!3221 = !DILocation(line: 58, column: 50, scope: !3161)
!3222 = !DILocation(line: 70, column: 33, scope: !3220)
!3223 = !DILocation(line: 70, column: 53, scope: !3220)
!3224 = !DILocation(line: 70, column: 59, scope: !3220)
!3225 = !DILocation(line: 70, column: 7, scope: !3161)
!3226 = !DILocation(line: 72, column: 11, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3220, file: !3162, line: 71, column: 5)
!3228 = !DILocation(line: 73, column: 9, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3227, file: !3162, line: 72, column: 11)
!3230 = !DILocation(line: 73, column: 15, scope: !3229)
!3231 = !DILocation(line: 0, scope: !3161)
!3232 = !DILocation(line: 78, column: 1, scope: !3161)
!3233 = distinct !DISubprogram(name: "hard_locale", scope: !3234, file: !3234, line: 38, type: !3235, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !182, retainedNodes: !3237)
!3234 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!39, !20}
!3237 = !{!3238, !3239, !3240}
!3238 = !DILocalVariable(name: "category", arg: 1, scope: !3233, file: !3234, line: 38, type: !20)
!3239 = !DILocalVariable(name: "hard", scope: !3233, file: !3234, line: 40, type: !39)
!3240 = !DILocalVariable(name: "p", scope: !3233, file: !3234, line: 41, type: !17)
!3241 = !DILocation(line: 38, column: 18, scope: !3233)
!3242 = !DILocation(line: 40, column: 8, scope: !3233)
!3243 = !DILocation(line: 41, column: 19, scope: !3233)
!3244 = !DILocation(line: 41, column: 15, scope: !3233)
!3245 = !DILocation(line: 43, column: 7, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3233, file: !3234, line: 43, column: 7)
!3247 = !DILocation(line: 43, column: 7, scope: !3233)
!3248 = !DILocation(line: 47, column: 15, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !3234, line: 47, column: 15)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !3234, line: 46, column: 9)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !3234, line: 45, column: 11)
!3252 = distinct !DILexicalBlock(scope: !3246, file: !3234, line: 44, column: 5)
!3253 = !DILocation(line: 47, column: 31, scope: !3249)
!3254 = !DILocation(line: 47, column: 36, scope: !3249)
!3255 = !DILocation(line: 47, column: 39, scope: !3249)
!3256 = !DILocation(line: 47, column: 59, scope: !3249)
!3257 = !DILocation(line: 47, column: 15, scope: !3250)
!3258 = !DILocation(line: 48, column: 13, scope: !3249)
!3259 = !DILocation(line: 71, column: 3, scope: !3233)
!3260 = distinct !DISubprogram(name: "locale_charset", scope: !3261, file: !3261, line: 687, type: !3262, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !3264)
!3261 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!17}
!3264 = !{!3265}
!3265 = !DILocalVariable(name: "codeset", scope: !3260, file: !3261, line: 689, type: !17)
!3266 = !DILocation(line: 696, column: 13, scope: !3260)
!3267 = !DILocation(line: 689, column: 15, scope: !3260)
!3268 = !DILocation(line: 754, column: 15, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 754, column: 7)
!3270 = !DILocation(line: 754, column: 7, scope: !3260)
!3271 = !DILocation(line: 907, column: 13, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3261, line: 907, column: 13)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !3261, line: 897, column: 7)
!3274 = distinct !DILexicalBlock(scope: !3260, file: !3261, line: 856, column: 3)
!3275 = !DILocation(line: 907, column: 24, scope: !3272)
!3276 = !DILocation(line: 907, column: 13, scope: !3273)
!3277 = !DILocation(line: 995, column: 3, scope: !3260)
!3278 = distinct !DISubprogram(name: "rpl_fclose", scope: !3279, file: !3279, line: 58, type: !3280, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !573, retainedNodes: !3316)
!3279 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!20, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2626, line: 7, baseType: !3284)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2628, line: 49, size: 1728, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3284, file: !2628, line: 51, baseType: !20, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3284, file: !2628, line: 54, baseType: !6, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3284, file: !2628, line: 55, baseType: !6, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3284, file: !2628, line: 56, baseType: !6, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3284, file: !2628, line: 57, baseType: !6, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3284, file: !2628, line: 58, baseType: !6, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3284, file: !2628, line: 59, baseType: !6, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3284, file: !2628, line: 60, baseType: !6, size: 64, offset: 448)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3284, file: !2628, line: 61, baseType: !6, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3284, file: !2628, line: 64, baseType: !6, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3284, file: !2628, line: 65, baseType: !6, size: 64, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3284, file: !2628, line: 66, baseType: !6, size: 64, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3284, file: !2628, line: 68, baseType: !2643, size: 64, offset: 768)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3284, file: !2628, line: 70, baseType: !3300, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3284, file: !2628, line: 72, baseType: !20, size: 32, offset: 896)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3284, file: !2628, line: 73, baseType: !20, size: 32, offset: 928)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3284, file: !2628, line: 74, baseType: !2650, size: 64, offset: 960)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3284, file: !2628, line: 77, baseType: !95, size: 16, offset: 1024)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3284, file: !2628, line: 78, baseType: !2655, size: 8, offset: 1040)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3284, file: !2628, line: 79, baseType: !2657, size: 8, offset: 1048)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3284, file: !2628, line: 81, baseType: !2661, size: 64, offset: 1088)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3284, file: !2628, line: 89, baseType: !2664, size: 64, offset: 1152)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3284, file: !2628, line: 91, baseType: !2666, size: 64, offset: 1216)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3284, file: !2628, line: 92, baseType: !2669, size: 64, offset: 1280)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3284, file: !2628, line: 93, baseType: !3300, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3284, file: !2628, line: 94, baseType: !8, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3284, file: !2628, line: 95, baseType: !96, size: 64, offset: 1472)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3284, file: !2628, line: 96, baseType: !20, size: 32, offset: 1536)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3284, file: !2628, line: 98, baseType: !2676, size: 160, offset: 1568)
!3316 = !{!3317, !3318, !3319, !3320}
!3317 = !DILocalVariable(name: "fp", arg: 1, scope: !3278, file: !3279, line: 58, type: !3282)
!3318 = !DILocalVariable(name: "saved_errno", scope: !3278, file: !3279, line: 60, type: !20)
!3319 = !DILocalVariable(name: "fd", scope: !3278, file: !3279, line: 61, type: !20)
!3320 = !DILocalVariable(name: "result", scope: !3278, file: !3279, line: 62, type: !20)
!3321 = !DILocation(line: 58, column: 19, scope: !3278)
!3322 = !DILocation(line: 60, column: 7, scope: !3278)
!3323 = !DILocation(line: 62, column: 7, scope: !3278)
!3324 = !DILocation(line: 65, column: 8, scope: !3278)
!3325 = !DILocation(line: 61, column: 7, scope: !3278)
!3326 = !DILocation(line: 66, column: 10, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3278, file: !3279, line: 66, column: 7)
!3328 = !DILocation(line: 66, column: 7, scope: !3278)
!3329 = !DILocation(line: 67, column: 12, scope: !3327)
!3330 = !DILocation(line: 67, column: 5, scope: !3327)
!3331 = !DILocation(line: 72, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3278, file: !3279, line: 72, column: 7)
!3333 = !DILocation(line: 72, column: 23, scope: !3332)
!3334 = !DILocation(line: 72, column: 33, scope: !3332)
!3335 = !DILocation(line: 72, column: 26, scope: !3332)
!3336 = !DILocation(line: 72, column: 59, scope: !3332)
!3337 = !DILocation(line: 73, column: 7, scope: !3332)
!3338 = !DILocation(line: 73, column: 10, scope: !3332)
!3339 = !DILocation(line: 72, column: 7, scope: !3278)
!3340 = !DILocation(line: 100, column: 12, scope: !3278)
!3341 = !DILocation(line: 105, column: 7, scope: !3278)
!3342 = !DILocation(line: 74, column: 19, scope: !3332)
!3343 = !DILocation(line: 105, column: 19, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3278, file: !3279, line: 105, column: 7)
!3345 = !DILocation(line: 107, column: 13, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3344, file: !3279, line: 106, column: 5)
!3347 = !DILocation(line: 109, column: 5, scope: !3346)
!3348 = !DILocation(line: 0, scope: !3278)
!3349 = !DILocation(line: 112, column: 1, scope: !3278)
!3350 = distinct !DISubprogram(name: "rpl_fflush", scope: !3351, file: !3351, line: 129, type: !3352, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !575, retainedNodes: !3388)
!3351 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!20, !3354}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2626, line: 7, baseType: !3356)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2628, line: 49, size: 1728, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3356, file: !2628, line: 51, baseType: !20, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3356, file: !2628, line: 54, baseType: !6, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3356, file: !2628, line: 55, baseType: !6, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3356, file: !2628, line: 56, baseType: !6, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3356, file: !2628, line: 57, baseType: !6, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3356, file: !2628, line: 58, baseType: !6, size: 64, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3356, file: !2628, line: 59, baseType: !6, size: 64, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3356, file: !2628, line: 60, baseType: !6, size: 64, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3356, file: !2628, line: 61, baseType: !6, size: 64, offset: 512)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3356, file: !2628, line: 64, baseType: !6, size: 64, offset: 576)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3356, file: !2628, line: 65, baseType: !6, size: 64, offset: 640)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3356, file: !2628, line: 66, baseType: !6, size: 64, offset: 704)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3356, file: !2628, line: 68, baseType: !2643, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3356, file: !2628, line: 70, baseType: !3372, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3356, file: !2628, line: 72, baseType: !20, size: 32, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3356, file: !2628, line: 73, baseType: !20, size: 32, offset: 928)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3356, file: !2628, line: 74, baseType: !2650, size: 64, offset: 960)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3356, file: !2628, line: 77, baseType: !95, size: 16, offset: 1024)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3356, file: !2628, line: 78, baseType: !2655, size: 8, offset: 1040)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3356, file: !2628, line: 79, baseType: !2657, size: 8, offset: 1048)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3356, file: !2628, line: 81, baseType: !2661, size: 64, offset: 1088)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3356, file: !2628, line: 89, baseType: !2664, size: 64, offset: 1152)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3356, file: !2628, line: 91, baseType: !2666, size: 64, offset: 1216)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3356, file: !2628, line: 92, baseType: !2669, size: 64, offset: 1280)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3356, file: !2628, line: 93, baseType: !3372, size: 64, offset: 1344)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3356, file: !2628, line: 94, baseType: !8, size: 64, offset: 1408)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3356, file: !2628, line: 95, baseType: !96, size: 64, offset: 1472)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3356, file: !2628, line: 96, baseType: !20, size: 32, offset: 1536)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3356, file: !2628, line: 98, baseType: !2676, size: 160, offset: 1568)
!3388 = !{!3389}
!3389 = !DILocalVariable(name: "stream", arg: 1, scope: !3350, file: !3351, line: 129, type: !3354)
!3390 = !DILocation(line: 129, column: 19, scope: !3350)
!3391 = !DILocation(line: 150, column: 14, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3350, file: !3351, line: 150, column: 7)
!3393 = !DILocation(line: 150, column: 22, scope: !3392)
!3394 = !DILocation(line: 150, column: 27, scope: !3392)
!3395 = !DILocation(line: 150, column: 7, scope: !3350)
!3396 = !DILocation(line: 151, column: 12, scope: !3392)
!3397 = !DILocation(line: 151, column: 5, scope: !3392)
!3398 = !DILocalVariable(name: "fp", arg: 1, scope: !3399, file: !3351, line: 41, type: !3354)
!3399 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3351, file: !3351, line: 41, type: !3400, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !575, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !3354}
!3402 = !{!3398}
!3403 = !DILocation(line: 41, column: 48, scope: !3399, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 156, column: 3, scope: !3350)
!3405 = !DILocation(line: 43, column: 11, scope: !3406, inlinedAt: !3404)
!3406 = distinct !DILexicalBlock(scope: !3399, file: !3351, line: 43, column: 7)
!3407 = !DILocation(line: 43, column: 18, scope: !3406, inlinedAt: !3404)
!3408 = !DILocation(line: 43, column: 7, scope: !3399, inlinedAt: !3404)
!3409 = !DILocation(line: 45, column: 5, scope: !3406, inlinedAt: !3404)
!3410 = !DILocation(line: 158, column: 10, scope: !3350)
!3411 = !DILocation(line: 158, column: 3, scope: !3350)
!3412 = !DILocation(line: 0, scope: !3350)
!3413 = !DILocation(line: 232, column: 1, scope: !3350)
!3414 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3415, file: !3415, line: 28, type: !3416, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !577, retainedNodes: !3453)
!3415 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!20, !3418, !3452, !20}
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2626, line: 7, baseType: !3420)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2628, line: 49, size: 1728, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3420, file: !2628, line: 51, baseType: !20, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3420, file: !2628, line: 54, baseType: !6, size: 64, offset: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3420, file: !2628, line: 55, baseType: !6, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3420, file: !2628, line: 56, baseType: !6, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3420, file: !2628, line: 57, baseType: !6, size: 64, offset: 256)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3420, file: !2628, line: 58, baseType: !6, size: 64, offset: 320)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3420, file: !2628, line: 59, baseType: !6, size: 64, offset: 384)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3420, file: !2628, line: 60, baseType: !6, size: 64, offset: 448)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3420, file: !2628, line: 61, baseType: !6, size: 64, offset: 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3420, file: !2628, line: 64, baseType: !6, size: 64, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3420, file: !2628, line: 65, baseType: !6, size: 64, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3420, file: !2628, line: 66, baseType: !6, size: 64, offset: 704)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3420, file: !2628, line: 68, baseType: !2643, size: 64, offset: 768)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3420, file: !2628, line: 70, baseType: !3436, size: 64, offset: 832)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3420, file: !2628, line: 72, baseType: !20, size: 32, offset: 896)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3420, file: !2628, line: 73, baseType: !20, size: 32, offset: 928)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3420, file: !2628, line: 74, baseType: !2650, size: 64, offset: 960)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3420, file: !2628, line: 77, baseType: !95, size: 16, offset: 1024)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3420, file: !2628, line: 78, baseType: !2655, size: 8, offset: 1040)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3420, file: !2628, line: 79, baseType: !2657, size: 8, offset: 1048)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3420, file: !2628, line: 81, baseType: !2661, size: 64, offset: 1088)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3420, file: !2628, line: 89, baseType: !2664, size: 64, offset: 1152)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3420, file: !2628, line: 91, baseType: !2666, size: 64, offset: 1216)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3420, file: !2628, line: 92, baseType: !2669, size: 64, offset: 1280)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3420, file: !2628, line: 93, baseType: !3436, size: 64, offset: 1344)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3420, file: !2628, line: 94, baseType: !8, size: 64, offset: 1408)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3420, file: !2628, line: 95, baseType: !96, size: 64, offset: 1472)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3420, file: !2628, line: 96, baseType: !20, size: 32, offset: 1536)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3420, file: !2628, line: 98, baseType: !2676, size: 160, offset: 1568)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2798, line: 63, baseType: !2650)
!3453 = !{!3454, !3455, !3456, !3457}
!3454 = !DILocalVariable(name: "fp", arg: 1, scope: !3414, file: !3415, line: 28, type: !3418)
!3455 = !DILocalVariable(name: "offset", arg: 2, scope: !3414, file: !3415, line: 28, type: !3452)
!3456 = !DILocalVariable(name: "whence", arg: 3, scope: !3414, file: !3415, line: 28, type: !20)
!3457 = !DILocalVariable(name: "pos", scope: !3458, file: !3415, line: 117, type: !3452)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3415, line: 113, column: 5)
!3459 = distinct !DILexicalBlock(scope: !3414, file: !3415, line: 52, column: 7)
!3460 = !DILocation(line: 28, column: 15, scope: !3414)
!3461 = !DILocation(line: 28, column: 25, scope: !3414)
!3462 = !DILocation(line: 28, column: 37, scope: !3414)
!3463 = !DILocation(line: 52, column: 11, scope: !3459)
!3464 = !{!3215, !619, i64 16}
!3465 = !DILocation(line: 52, column: 31, scope: !3459)
!3466 = !{!3215, !619, i64 8}
!3467 = !DILocation(line: 52, column: 24, scope: !3459)
!3468 = !DILocation(line: 53, column: 7, scope: !3459)
!3469 = !DILocation(line: 53, column: 14, scope: !3459)
!3470 = !{!3215, !619, i64 40}
!3471 = !DILocation(line: 53, column: 35, scope: !3459)
!3472 = !{!3215, !619, i64 32}
!3473 = !DILocation(line: 53, column: 28, scope: !3459)
!3474 = !DILocation(line: 54, column: 7, scope: !3459)
!3475 = !DILocation(line: 54, column: 14, scope: !3459)
!3476 = !{!3215, !619, i64 72}
!3477 = !DILocation(line: 54, column: 28, scope: !3459)
!3478 = !DILocation(line: 52, column: 7, scope: !3414)
!3479 = !DILocation(line: 117, column: 26, scope: !3458)
!3480 = !DILocation(line: 117, column: 19, scope: !3458)
!3481 = !DILocation(line: 117, column: 13, scope: !3458)
!3482 = !DILocation(line: 118, column: 15, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3458, file: !3415, line: 118, column: 11)
!3484 = !DILocation(line: 118, column: 11, scope: !3458)
!3485 = !DILocation(line: 129, column: 11, scope: !3458)
!3486 = !DILocation(line: 129, column: 18, scope: !3458)
!3487 = !DILocation(line: 130, column: 11, scope: !3458)
!3488 = !DILocation(line: 130, column: 19, scope: !3458)
!3489 = !{!3215, !1950, i64 144}
!3490 = !DILocation(line: 161, column: 7, scope: !3458)
!3491 = !DILocation(line: 163, column: 10, scope: !3414)
!3492 = !DILocation(line: 163, column: 3, scope: !3414)
!3493 = !DILocation(line: 0, scope: !3414)
!3494 = !DILocation(line: 164, column: 1, scope: !3414)
