; ModuleID = 'coreutils-8.32/src/paste.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [119 x i8] c"Write lines consisting of the sequentially corresponding lines from\0Aeach FILE, separated by TABs, to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [144 x i8] c"  -d, --delimiters=LIST   reuse characters from LIST instead of TABs\0A  -s, --serial            paste one file at a time instead of in parallel\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"paste\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@serial_merge = internal unnamed_addr global i1 false, align 1, !dbg !66
@.str.12 = private unnamed_addr constant [5 x i8] c"d:sz\00", align 1
@longopts = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !47
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !67
@.str.15 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@delims = internal unnamed_addr global i8* null, align 8, !dbg !45
@delim_end = internal unnamed_addr global i8* null, align 8, !dbg !64
@.str.18 = private unnamed_addr constant [52 x i8] c"delimiter list ends with an unescaped backslash: %s\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"standard input is closed\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"delimiters\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), align 8, !dbg !68
@.str.45 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !74
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !79
@.str.48 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.49 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.50 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !81
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !87
@.str.59 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !93
@.str.62 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.63 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.64 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.65 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.66 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.67 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.68 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.69 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.70 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.71 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !121
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !127
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !139
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !146
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !153
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !141
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !155
@.str.83 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.101 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.102 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.103 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.105 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.106 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.107 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !161
@.str.1.120 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.140 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !610 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !614, metadata !DIExpression()), !dbg !615
  %3 = icmp eq i32 %0, 0, !dbg !616
  br i1 %3, label %9, label %4, !dbg !618

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !619, !tbaa !621
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !619
  %7 = load i8*, i8** @program_name, align 8, !dbg !619, !tbaa !621
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !619
  br label %70, !dbg !619

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !625
  %11 = load i8*, i8** @program_name, align 8, !dbg !625, !tbaa !621
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !625
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !627
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !621
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !627
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i32 5) #24, !dbg !628
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !621
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #24, !dbg !628
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #24, !dbg !634
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !621
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #24, !dbg !634
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.3, i64 0, i64 0), i32 5) #24, !dbg !637
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !621
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !637
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 5) #24, !dbg !638
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !621
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !638
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #24, !dbg !639
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639, !tbaa !621
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !639
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #24, !dbg !640
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !621
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !641, metadata !DIExpression()) #24, !dbg !659
  %34 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !661
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %34) #24, !dbg !661
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !646, metadata !DIExpression()) #24, !dbg !662
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %34, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !655, metadata !DIExpression()) #24, !dbg !659
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !656, metadata !DIExpression()) #24, !dbg !659
  %35 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !663
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !656, metadata !DIExpression()) #24, !dbg !659
  br label %36, !dbg !664

36:                                               ; preds = %41, %9
  %37 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %38 = phi %struct.infomap* [ %42, %41 ], [ %35, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !656, metadata !DIExpression()) #24, !dbg !659
  %39 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %37) #25, !dbg !665
  %40 = icmp eq i32 %39, 0, !dbg !665
  br i1 %40, label %46, label %41, !dbg !664

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 1, !dbg !666
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !656, metadata !DIExpression()) #24, !dbg !659
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 0, !dbg !667
  %44 = load i8*, i8** %43, align 8, !dbg !667, !tbaa !668
  %45 = icmp eq i8* %44, null, !dbg !670
  br i1 %45, label %46, label %36, !dbg !671, !llvm.loop !672

46:                                               ; preds = %41, %36
  %47 = phi %struct.infomap* [ %38, %36 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.infomap, %struct.infomap* %47, i64 0, i32 1, !dbg !674
  %49 = load i8*, i8** %48, align 8, !dbg !674, !tbaa !676
  %50 = icmp eq i8* %49, null, !dbg !677
  %51 = select i1 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %49, !dbg !678
  call void @llvm.dbg.value(metadata i8* %51, metadata !655, metadata !DIExpression()) #24, !dbg !659
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #24, !dbg !679
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #24, !dbg !679
  %54 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !680
  call void @llvm.dbg.value(metadata i8* %54, metadata !658, metadata !DIExpression()) #24, !dbg !659
  %55 = icmp eq i8* %54, null, !dbg !681
  br i1 %55, label %63, label %56, !dbg !683

56:                                               ; preds = %46
  %57 = tail call i32 @strncmp(i8* nonnull %54, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #25, !dbg !684
  %58 = icmp eq i32 %57, 0, !dbg !684
  br i1 %58, label %63, label %59, !dbg !685

59:                                               ; preds = %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.32, i64 0, i64 0), i32 5) #24, !dbg !686
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !621
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #24, !dbg !686
  br label %63, !dbg !688

63:                                               ; preds = %46, %56, %59
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i32 5) #24, !dbg !689
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #24, !dbg !689
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #24, !dbg !690
  %67 = icmp eq i8* %51, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !690
  %68 = select i1 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !690
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %66, i8* %51, i8* %68) #24, !dbg !690
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %34) #24, !dbg !691
  br label %70

70:                                               ; preds = %63, %4
  tail call void @exit(i32 %0) #26, !dbg !692
  unreachable, !dbg !692
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !693 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !697 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !753 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !757 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !762, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i8** %1, metadata !763, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), metadata !765, metadata !DIExpression()), !dbg !768
  %3 = load i8*, i8** %1, align 8, !dbg !769, !tbaa !621
  tail call void @set_program_name(i8* %3) #24, !dbg !770
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #24, !dbg !771
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #24, !dbg !772
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #24, !dbg !773
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !774
  store i1 false, i1* @have_read_stdin, align 1, !dbg !775
  store i1 false, i1* @serial_merge, align 1, !dbg !776
  br label %8, !dbg !777

8:                                                ; preds = %12, %2
  %9 = phi i8* [ %16, %12 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %2 ]
  br label %10, !dbg !777

10:                                               ; preds = %19, %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !765, metadata !DIExpression()), !dbg !768
  %11 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #24, !dbg !778
  call void @llvm.dbg.value(metadata i32 %11, metadata !764, metadata !DIExpression()), !dbg !768
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 100, label %12
    i32 115, label %17
    i32 122, label %18
    i32 -130, label %20
    i32 -131, label %21
  ], !dbg !777

12:                                               ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !779, !tbaa !621
  %14 = load i8, i8* %13, align 1, !dbg !779, !tbaa !782
  %15 = icmp eq i8 %14, 0, !dbg !783
  %16 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %13, !dbg !779
  call void @llvm.dbg.value(metadata i8* %16, metadata !765, metadata !DIExpression()), !dbg !768
  br label %8, !dbg !784, !llvm.loop !785

17:                                               ; preds = %10
  store i1 true, i1* @serial_merge, align 1, !dbg !787
  br label %19, !dbg !788

18:                                               ; preds = %10
  store i1 true, i1* @line_delim, align 1, !dbg !789
  br label %19, !dbg !790

19:                                               ; preds = %18, %17
  br label %10, !dbg !768, !llvm.loop !785

20:                                               ; preds = %10
  tail call void @usage(i32 0) #27, !dbg !791
  unreachable, !dbg !791

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !792, !tbaa !621
  %23 = load i8*, i8** @Version, align 8, !dbg !792, !tbaa !621
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* null) #24, !dbg !792
  tail call void @exit(i32 0) #26, !dbg !792
  unreachable, !dbg !792

24:                                               ; preds = %10
  tail call void @usage(i32 1) #27, !dbg !793
  unreachable, !dbg !793

25:                                               ; preds = %10
  %26 = load i32, i32* @optind, align 4, !dbg !794, !tbaa !795
  %27 = sub nsw i32 %0, %26, !dbg !797
  call void @llvm.dbg.value(metadata i32 %27, metadata !766, metadata !DIExpression()), !dbg !768
  %28 = icmp eq i32 %27, 0, !dbg !798
  br i1 %28, label %29, label %32, !dbg !800

29:                                               ; preds = %25
  %30 = sext i32 %26 to i64, !dbg !801
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30, !dbg !801
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8** %31, align 8, !dbg !803, !tbaa !621
  call void @llvm.dbg.value(metadata i32 1, metadata !766, metadata !DIExpression()), !dbg !768
  br label %32, !dbg !804

32:                                               ; preds = %29, %25
  %33 = phi i32 [ 1, %29 ], [ %27, %25 ], !dbg !768
  call void @llvm.dbg.value(metadata i32 %33, metadata !766, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i8* %9, metadata !805, metadata !DIExpression()) #24, !dbg !813
  %34 = tail call noalias i8* @xstrdup(i8* %9) #24, !dbg !816
  call void @llvm.dbg.value(metadata i8* %34, metadata !810, metadata !DIExpression()) #24, !dbg !813
  call void @llvm.dbg.value(metadata i8 0, metadata !811, metadata !DIExpression()) #24, !dbg !813
  store i8* %34, i8** @delims, align 8, !dbg !817, !tbaa !621
  call void @llvm.dbg.value(metadata i8* %34, metadata !810, metadata !DIExpression()) #24, !dbg !813
  call void @llvm.dbg.value(metadata i8* %9, metadata !805, metadata !DIExpression()) #24, !dbg !813
  %35 = load i8, i8* %9, align 1, !dbg !818, !tbaa !782
  %36 = icmp eq i8 %35, 0, !dbg !819
  br i1 %36, label %66, label %37, !dbg !819

37:                                               ; preds = %32, %58
  %38 = phi i8 [ %61, %58 ], [ %35, %32 ]
  %39 = phi i8* [ %60, %58 ], [ %34, %32 ]
  %40 = phi i8* [ %59, %58 ], [ %9, %32 ]
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression()) #24, !dbg !813
  call void @llvm.dbg.value(metadata i8* %40, metadata !805, metadata !DIExpression()) #24, !dbg !813
  %41 = icmp eq i8 %38, 92, !dbg !820
  %42 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !823
  call void @llvm.dbg.value(metadata i8* %42, metadata !805, metadata !DIExpression()) #24, !dbg !813
  call void @llvm.dbg.value(metadata i8* %42, metadata !805, metadata !DIExpression()) #24, !dbg !813
  br i1 %41, label %44, label %43, !dbg !824

43:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  store i8 %38, i8* %39, align 1, !dbg !825, !tbaa !782
  br label %58, !dbg !826

44:                                               ; preds = %37
  %45 = load i8, i8* %42, align 1, !dbg !827, !tbaa !782
  %46 = sext i8 %45 to i32, !dbg !827
  switch i32 %46, label %54 [
    i32 48, label %55
    i32 98, label %47
    i32 102, label %48
    i32 110, label %49
    i32 114, label %50
    i32 116, label %51
    i32 118, label %52
    i32 92, label %53
    i32 0, label %63
  ], !dbg !829

47:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  br label %55, !dbg !830

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  br label %55, !dbg !832

49:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  br label %55, !dbg !833

50:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  br label %55, !dbg !834

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  br label %55, !dbg !835

52:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  br label %55, !dbg !836

53:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  br label %55, !dbg !837

54:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  br label %55, !dbg !838

55:                                               ; preds = %44, %54, %53, %52, %51, %50, %49, %48, %47
  %56 = phi i8 [ %45, %54 ], [ 92, %53 ], [ 11, %52 ], [ 9, %51 ], [ 13, %50 ], [ 10, %49 ], [ 12, %48 ], [ 8, %47 ], [ 0, %44 ]
  store i8 %56, i8* %39, align 1, !dbg !839, !tbaa !782
  call void @llvm.dbg.value(metadata i8* %39, metadata !810, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #24, !dbg !813
  %57 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !840
  call void @llvm.dbg.value(metadata i8* %57, metadata !805, metadata !DIExpression()) #24, !dbg !813
  br label %58

58:                                               ; preds = %55, %43
  %59 = phi i8* [ %42, %43 ], [ %57, %55 ], !dbg !823
  %60 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !823
  call void @llvm.dbg.value(metadata i8* %60, metadata !810, metadata !DIExpression()) #24, !dbg !813
  call void @llvm.dbg.value(metadata i8* %59, metadata !805, metadata !DIExpression()) #24, !dbg !813
  %61 = load i8, i8* %59, align 1, !dbg !818, !tbaa !782
  %62 = icmp eq i8 %61, 0, !dbg !819
  br i1 %62, label %66, label %37, !dbg !819, !llvm.loop !841

63:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8 undef, metadata !811, metadata !DIExpression()) #24, !dbg !813
  call void @llvm.dbg.label(metadata !812) #24, !dbg !843
  store i8* %39, i8** @delim_end, align 8, !dbg !844, !tbaa !621
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i32 5) #24, !dbg !845
  %65 = tail call i8* @quotearg_n_style_colon(i32 0, i32 6, i8* nonnull %9) #24, !dbg !845
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %64, i8* %65) #24, !dbg !845
  unreachable, !dbg !845

66:                                               ; preds = %58, %32
  %67 = phi i8* [ %34, %32 ], [ %60, %58 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !811, metadata !DIExpression()) #24, !dbg !813
  call void @llvm.dbg.label(metadata !812) #24, !dbg !843
  store i8* %67, i8** @delim_end, align 8, !dbg !844, !tbaa !621
  %68 = load i1, i1* @serial_merge, align 1, !dbg !847
  %69 = select i1 %68, i1 (i64, i8**)* @paste_serial, i1 (i64, i8**)* @paste_parallel, !dbg !847
  %70 = sext i32 %33 to i64, !dbg !848
  %71 = load i32, i32* @optind, align 4, !dbg !849, !tbaa !795
  %72 = sext i32 %71 to i64, !dbg !850
  %73 = getelementptr inbounds i8*, i8** %1, i64 %72, !dbg !850
  %74 = tail call zeroext i1 %69(i64 %70, i8** nonnull %73) #24, !dbg !851, !callees !852
  call void @llvm.dbg.value(metadata i1 %74, metadata !767, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !768
  %75 = load i8*, i8** @delims, align 8, !dbg !853, !tbaa !621
  tail call void @free(i8* %75) #24, !dbg !854
  %76 = load i1, i1* @have_read_stdin, align 1, !dbg !855
  br i1 %76, label %77, label %84, !dbg !857

77:                                               ; preds = %66
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !858, !tbaa !621
  %79 = tail call i32 @rpl_fclose(%struct._IO_FILE* %78) #24, !dbg !859
  %80 = icmp eq i32 %79, -1, !dbg !860
  br i1 %80, label %81, label %84, !dbg !861

81:                                               ; preds = %77
  %82 = tail call i32* @__errno_location() #28, !dbg !862
  %83 = load i32, i32* %82, align 4, !dbg !862, !tbaa !795
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #24, !dbg !862
  unreachable, !dbg !862

84:                                               ; preds = %77, %66
  %85 = xor i1 %74, true, !dbg !863
  %86 = zext i1 %85 to i32, !dbg !863
  ret i32 %86, !dbg !864
}

; Function Attrs: nounwind
declare !dbg !865 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !868 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !871 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !876 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !882 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_serial(i64 %0, i8** nocapture readonly %1) unnamed_addr #8 !dbg !886 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !890, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i8** %1, metadata !891, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i8 1, metadata !892, metadata !DIExpression()), !dbg !905
  %3 = icmp eq i64 %0, 0, !dbg !906
  br i1 %3, label %169, label %4, !dbg !906

4:                                                ; preds = %2, %164
  %5 = phi i64 [ %166, %164 ], [ %0, %2 ]
  %6 = phi i8** [ %167, %164 ], [ %1, %2 ]
  %7 = phi i8 [ %165, %164 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !890, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i8** %6, metadata !891, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i8 %7, metadata !892, metadata !DIExpression()), !dbg !905
  %8 = load i8*, i8** %6, align 8, !dbg !907, !tbaa !621
  %9 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %8, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #25, !dbg !907
  %10 = icmp eq i32 %9, 0, !dbg !907
  call void @llvm.dbg.value(metadata i1 %10, metadata !904, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !908
  br i1 %10, label %11, label %13, !dbg !909

11:                                               ; preds = %4
  store i1 true, i1* @have_read_stdin, align 1, !dbg !910
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !913, !tbaa !621
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !896, metadata !DIExpression()), !dbg !905
  br label %22, !dbg !914

13:                                               ; preds = %4
  %14 = tail call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !915
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !896, metadata !DIExpression()), !dbg !905
  %15 = icmp eq %struct._IO_FILE* %14, null, !dbg !917
  br i1 %15, label %16, label %21, !dbg !919

16:                                               ; preds = %13
  %17 = tail call i32* @__errno_location() #28, !dbg !920
  %18 = load i32, i32* %17, align 4, !dbg !920, !tbaa !795
  %19 = load i8*, i8** %6, align 8, !dbg !922, !tbaa !621
  %20 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %19) #24, !dbg !922
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %20) #24, !dbg !923
  call void @llvm.dbg.value(metadata i8 0, metadata !892, metadata !DIExpression()), !dbg !905
  br label %164, !dbg !924

21:                                               ; preds = %13
  tail call void @fadvise(%struct._IO_FILE* nonnull %14, i32 2) #24, !dbg !925
  br label %22

22:                                               ; preds = %21, %11
  %23 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %21 ], !dbg !926
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !896, metadata !DIExpression()), !dbg !905
  %24 = load i8*, i8** @delims, align 8, !dbg !927, !tbaa !621
  call void @llvm.dbg.value(metadata i8* %24, metadata !895, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !928, metadata !DIExpression()) #24, !dbg !934
  %25 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 1, !dbg !936
  %26 = load i8*, i8** %25, align 8, !dbg !936, !tbaa !937
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 2, !dbg !936
  %28 = load i8*, i8** %27, align 8, !dbg !936, !tbaa !941
  %29 = icmp ult i8* %26, %28, !dbg !936
  br i1 %29, label %30, label %35, !dbg !936, !prof !942

30:                                               ; preds = %22
  %31 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !936
  store i8* %31, i8** %25, align 8, !dbg !936, !tbaa !937
  %32 = load i8, i8* %26, align 1, !dbg !936, !tbaa !782
  %33 = zext i8 %32 to i32, !dbg !936
  call void @llvm.dbg.value(metadata i32 %36, metadata !894, metadata !DIExpression()), !dbg !905
  %34 = tail call i32* @__errno_location() #28, !dbg !943
  call void @llvm.dbg.value(metadata i32 undef, metadata !900, metadata !DIExpression()), !dbg !908
  br label %39, !dbg !944

35:                                               ; preds = %22
  %36 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %23) #24, !dbg !936
  call void @llvm.dbg.value(metadata i32 %36, metadata !894, metadata !DIExpression()), !dbg !905
  %37 = tail call i32* @__errno_location() #28, !dbg !943
  call void @llvm.dbg.value(metadata i32 undef, metadata !900, metadata !DIExpression()), !dbg !908
  %38 = icmp eq i32 %36, -1, !dbg !945
  br i1 %38, label %42, label %39, !dbg !944

39:                                               ; preds = %30, %35
  %40 = phi i32* [ %34, %30 ], [ %37, %35 ]
  %41 = phi i32 [ %33, %30 ], [ %36, %35 ]
  br label %87, !dbg !947

42:                                               ; preds = %35
  %43 = load i32, i32* %37, align 4, !dbg !943, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %107, metadata !900, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 %48, metadata !894, metadata !DIExpression()), !dbg !905
  %44 = load i1, i1* @line_delim, align 1, !dbg !949
  %45 = select i1 %44, i8 0, i8 10, !dbg !949
  %46 = zext i8 %45 to i32, !dbg !949
  br label %127, !dbg !951

47:                                               ; preds = %104, %87
  %48 = phi i32 [ %88, %87 ], [ %60, %104 ], !dbg !908
  call void @llvm.dbg.value(metadata i8* %89, metadata !895, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata i32 %48, metadata !894, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !928, metadata !DIExpression()) #24, !dbg !952
  %49 = load i8*, i8** %25, align 8, !dbg !954, !tbaa !937
  %50 = load i8*, i8** %27, align 8, !dbg !954, !tbaa !941
  %51 = icmp ult i8* %49, %50, !dbg !954
  br i1 %51, label %52, label %56, !dbg !954, !prof !942

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !954
  store i8* %53, i8** %25, align 8, !dbg !954, !tbaa !937
  %54 = load i8, i8* %49, align 1, !dbg !954, !tbaa !782
  %55 = zext i8 %54 to i32, !dbg !954
  call void @llvm.dbg.value(metadata i32 %57, metadata !893, metadata !DIExpression()), !dbg !905
  br label %59, !dbg !947

56:                                               ; preds = %47
  %57 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %23) #24, !dbg !954
  call void @llvm.dbg.value(metadata i32 %57, metadata !893, metadata !DIExpression()), !dbg !905
  %58 = icmp eq i32 %57, -1, !dbg !955
  br i1 %58, label %106, label %59, !dbg !947

59:                                               ; preds = %52, %56
  %60 = phi i32 [ %55, %52 ], [ %57, %56 ]
  %61 = load i1, i1* @line_delim, align 1, !dbg !956
  %62 = select i1 %61, i32 0, i32 10, !dbg !956
  %63 = icmp eq i32 %48, %62, !dbg !959
  br i1 %63, label %64, label %90, !dbg !960

64:                                               ; preds = %59
  %65 = load i8, i8* %89, align 1, !dbg !961, !tbaa !782
  %66 = icmp eq i8 %65, 0, !dbg !964
  br i1 %66, label %81, label %67, !dbg !965

67:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i8 %65, metadata !966, metadata !DIExpression()) #24, !dbg !971
  call void @llvm.dbg.value(metadata i8 %65, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !978
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !981, !tbaa !621
  %69 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 5, !dbg !981
  %70 = load i8*, i8** %69, align 8, !dbg !981, !tbaa !982
  %71 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 6, !dbg !981
  %72 = load i8*, i8** %71, align 8, !dbg !981, !tbaa !983
  %73 = icmp ult i8* %70, %72, !dbg !981
  br i1 %73, label %74, label %76, !dbg !981, !prof !942

74:                                               ; preds = %67
  %75 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !981
  store i8* %75, i8** %69, align 8, !dbg !981, !tbaa !982
  store i8 %65, i8* %70, align 1, !dbg !981, !tbaa !782
  br label %81, !dbg !984

76:                                               ; preds = %67
  %77 = zext i8 %65 to i32, !dbg !985
  call void @llvm.dbg.value(metadata i8 %65, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !978
  %78 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %68, i32 %77) #24, !dbg !981
  %79 = icmp slt i32 %78, 0, !dbg !986
  br i1 %79, label %80, label %81, !dbg !984

80:                                               ; preds = %76
  tail call fastcc void @write_error() #26, !dbg !987
  unreachable, !dbg !987

81:                                               ; preds = %76, %74, %64
  %82 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !988
  call void @llvm.dbg.value(metadata i8* %82, metadata !895, metadata !DIExpression()), !dbg !905
  %83 = load i8*, i8** @delim_end, align 8, !dbg !990, !tbaa !621
  %84 = icmp eq i8* %82, %83, !dbg !991
  %85 = load i8*, i8** @delims, align 8
  %86 = select i1 %84, i8* %85, i8* %82, !dbg !992
  br label %87, !dbg !992, !llvm.loop !993

87:                                               ; preds = %81, %39
  %88 = phi i32 [ %60, %81 ], [ %41, %39 ]
  %89 = phi i8* [ %86, %81 ], [ %24, %39 ]
  br label %47, !dbg !947

90:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 %48, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !995
  call void @llvm.dbg.value(metadata i32 %48, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !997
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !999, !tbaa !621
  %92 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 5, !dbg !999
  %93 = load i8*, i8** %92, align 8, !dbg !999, !tbaa !982
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %91, i64 0, i32 6, !dbg !999
  %95 = load i8*, i8** %94, align 8, !dbg !999, !tbaa !983
  %96 = icmp ult i8* %93, %95, !dbg !999
  br i1 %96, label %97, label %100, !dbg !999, !prof !942

97:                                               ; preds = %90
  %98 = trunc i32 %48 to i8, !dbg !1000
  call void @llvm.dbg.value(metadata i8 %98, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !997
  call void @llvm.dbg.value(metadata i8 %98, metadata !966, metadata !DIExpression()) #24, !dbg !995
  %99 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !999
  store i8* %99, i8** %92, align 8, !dbg !999, !tbaa !982
  store i8 %98, i8* %93, align 1, !dbg !999, !tbaa !782
  br label %104, !dbg !1001

100:                                              ; preds = %90
  %101 = and i32 %48, 255, !dbg !1002
  call void @llvm.dbg.value(metadata i32 %48, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !997
  %102 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %91, i32 %101) #24, !dbg !999
  %103 = icmp slt i32 %102, 0, !dbg !1003
  br i1 %103, label %105, label %104, !dbg !1001

104:                                              ; preds = %100, %97
  br label %47, !dbg !905, !llvm.loop !993

105:                                              ; preds = %100
  tail call fastcc void @write_error() #26, !dbg !1004
  unreachable, !dbg !1004

106:                                              ; preds = %56
  %107 = load i32, i32* %40, align 4, !dbg !1005, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %107, metadata !900, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 %48, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !1006
  call void @llvm.dbg.value(metadata i32 %48, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1008
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1010, !tbaa !621
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 5, !dbg !1010
  %110 = load i8*, i8** %109, align 8, !dbg !1010, !tbaa !982
  %111 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 6, !dbg !1010
  %112 = load i8*, i8** %111, align 8, !dbg !1010, !tbaa !983
  %113 = icmp ult i8* %110, %112, !dbg !1010
  br i1 %113, label %114, label %117, !dbg !1010, !prof !942

114:                                              ; preds = %106
  %115 = trunc i32 %48 to i8, !dbg !1011
  call void @llvm.dbg.value(metadata i8 %115, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1008
  call void @llvm.dbg.value(metadata i8 %115, metadata !966, metadata !DIExpression()) #24, !dbg !1006
  %116 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !1010
  store i8* %116, i8** %109, align 8, !dbg !1010, !tbaa !982
  store i8 %115, i8* %110, align 1, !dbg !1010, !tbaa !782
  br label %122, !dbg !1012

117:                                              ; preds = %106
  %118 = and i32 %48, 255, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %48, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1008
  %119 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %108, i32 %118) #24, !dbg !1010
  %120 = icmp slt i32 %119, 0, !dbg !1014
  br i1 %120, label %121, label %122, !dbg !1012

121:                                              ; preds = %117
  tail call fastcc void @write_error() #26, !dbg !1015
  unreachable, !dbg !1015

122:                                              ; preds = %117, %114
  call void @llvm.dbg.value(metadata i32 %107, metadata !900, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata i32 %48, metadata !894, metadata !DIExpression()), !dbg !905
  %123 = load i1, i1* @line_delim, align 1, !dbg !949
  %124 = select i1 %123, i8 0, i8 10, !dbg !949
  %125 = zext i8 %124 to i32, !dbg !949
  %126 = icmp eq i32 %48, %125, !dbg !1016
  br i1 %126, label %144, label %127, !dbg !951

127:                                              ; preds = %42, %122
  %128 = phi i32* [ %37, %42 ], [ %40, %122 ]
  %129 = phi i32 [ %46, %42 ], [ %125, %122 ]
  %130 = phi i8 [ %45, %42 ], [ %124, %122 ]
  %131 = phi i32 [ %43, %42 ], [ %107, %122 ]
  call void @llvm.dbg.value(metadata i8 %124, metadata !966, metadata !DIExpression()) #24, !dbg !1017
  call void @llvm.dbg.value(metadata i8 %124, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1019
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1021, !tbaa !621
  %133 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %132, i64 0, i32 5, !dbg !1021
  %134 = load i8*, i8** %133, align 8, !dbg !1021, !tbaa !982
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %132, i64 0, i32 6, !dbg !1021
  %136 = load i8*, i8** %135, align 8, !dbg !1021, !tbaa !983
  %137 = icmp ult i8* %134, %136, !dbg !1021
  br i1 %137, label %138, label %140, !dbg !1021, !prof !942

138:                                              ; preds = %127
  %139 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !1021
  store i8* %139, i8** %133, align 8, !dbg !1021, !tbaa !982
  store i8 %130, i8* %134, align 1, !dbg !1021, !tbaa !782
  br label %144, !dbg !1022

140:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8 %124, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1019
  %141 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %132, i32 %129) #24, !dbg !1021
  %142 = icmp slt i32 %141, 0, !dbg !1023
  br i1 %142, label %143, label %144, !dbg !1022

143:                                              ; preds = %140
  tail call fastcc void @write_error() #26, !dbg !1024
  unreachable, !dbg !1024

144:                                              ; preds = %140, %138, %122
  %145 = phi i32* [ %40, %122 ], [ %128, %138 ], [ %128, %140 ]
  %146 = phi i32 [ %107, %122 ], [ %131, %138 ], [ %131, %140 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %23, metadata !1025, metadata !DIExpression()), !dbg !1028
  %147 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %23, i64 0, i32 0, !dbg !1031
  %148 = load i32, i32* %147, align 8, !dbg !1031, !tbaa !1032
  %149 = and i32 %148, 32, !dbg !1033
  %150 = icmp eq i32 %149, 0, !dbg !1033
  br i1 %150, label %154, label %151, !dbg !1034

151:                                              ; preds = %144
  %152 = load i8*, i8** %6, align 8, !dbg !1035, !tbaa !621
  %153 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %152) #24, !dbg !1035
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %153) #24, !dbg !1037
  call void @llvm.dbg.value(metadata i8 0, metadata !892, metadata !DIExpression()), !dbg !905
  br label %154, !dbg !1038

154:                                              ; preds = %151, %144
  %155 = phi i8 [ 0, %151 ], [ %7, %144 ], !dbg !905
  call void @llvm.dbg.value(metadata i8 %155, metadata !892, metadata !DIExpression()), !dbg !905
  br i1 %10, label %156, label %157, !dbg !1039

156:                                              ; preds = %154
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %23) #24, !dbg !1040
  br label %164, !dbg !1040

157:                                              ; preds = %154
  %158 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %23) #24, !dbg !1042
  %159 = icmp eq i32 %158, -1, !dbg !1044
  br i1 %159, label %160, label %164, !dbg !1045

160:                                              ; preds = %157
  %161 = load i32, i32* %145, align 4, !dbg !1046, !tbaa !795
  %162 = load i8*, i8** %6, align 8, !dbg !1048, !tbaa !621
  %163 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %162) #24, !dbg !1048
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %161, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %163) #24, !dbg !1049
  call void @llvm.dbg.value(metadata i8 0, metadata !892, metadata !DIExpression()), !dbg !905
  br label %164, !dbg !1050

164:                                              ; preds = %156, %160, %157, %16
  %165 = phi i8 [ 0, %16 ], [ %155, %156 ], [ 0, %160 ], [ %155, %157 ], !dbg !908
  call void @llvm.dbg.value(metadata i8 %165, metadata !892, metadata !DIExpression()), !dbg !905
  %166 = add i64 %5, -1, !dbg !1051
  call void @llvm.dbg.value(metadata i64 %166, metadata !890, metadata !DIExpression()), !dbg !905
  %167 = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !1052
  call void @llvm.dbg.value(metadata i8** %167, metadata !891, metadata !DIExpression()), !dbg !905
  %168 = icmp eq i64 %166, 0, !dbg !906
  br i1 %168, label %169, label %4, !dbg !906, !llvm.loop !1053

169:                                              ; preds = %164, %2
  %170 = phi i8 [ 1, %2 ], [ %165, %164 ], !dbg !905
  %171 = and i8 %170, 1, !dbg !1055
  %172 = icmp ne i8 %171, 0, !dbg !1055
  ret i1 %172, !dbg !1056
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @paste_parallel(i64 %0, i8** nocapture readonly %1) unnamed_addr #8 !dbg !1057 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1059, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8** %1, metadata !1060, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, metadata !1061, metadata !DIExpression()), !dbg !1104
  %3 = add i64 %0, 2, !dbg !1105
  %4 = tail call noalias i8* @xmalloc(i64 %3) #24, !dbg !1106
  call void @llvm.dbg.value(metadata i8* %4, metadata !1062, metadata !DIExpression()), !dbg !1104
  %5 = add i64 %0, 1, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %5, metadata !1108, metadata !DIExpression()) #24, !dbg !1114
  call void @llvm.dbg.value(metadata i64 8, metadata !1113, metadata !DIExpression()) #24, !dbg !1114
  %6 = icmp ugt i64 %5, 1152921504606846975, !dbg !1116
  br i1 %6, label %7, label %8, !dbg !1118

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !1119
  unreachable, !dbg !1119

8:                                                ; preds = %2
  %9 = shl nuw nsw i64 %5, 3, !dbg !1120
  %10 = tail call noalias i8* @xmalloc(i64 %9) #24, !dbg !1121
  %11 = bitcast i8* %10 to %struct._IO_FILE**, !dbg !1122
  call void @llvm.dbg.value(metadata %struct._IO_FILE** %11, metadata !1063, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !1066, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, metadata !1065, metadata !DIExpression()), !dbg !1104
  %12 = icmp eq i64 %0, 0, !dbg !1123
  br i1 %12, label %277, label %13, !dbg !1126

13:                                               ; preds = %8, %37
  %14 = phi i64 [ %39, %37 ], [ 0, %8 ]
  %15 = phi i8 [ %38, %37 ], [ 0, %8 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !1065, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %15, metadata !1066, metadata !DIExpression()), !dbg !1104
  %16 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !1127
  %17 = load i8*, i8** %16, align 8, !dbg !1127, !tbaa !621
  %18 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %17, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #25, !dbg !1127
  %19 = icmp eq i32 %18, 0, !dbg !1127
  br i1 %19, label %20, label %23, !dbg !1130

20:                                               ; preds = %13
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1131
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1133, !tbaa !621
  %22 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %14, !dbg !1134
  store %struct._IO_FILE* %21, %struct._IO_FILE** %22, align 8, !dbg !1135, !tbaa !621
  br label %37, !dbg !1136

23:                                               ; preds = %13
  %24 = tail call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)), !dbg !1137
  %25 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %14, !dbg !1139
  store %struct._IO_FILE* %24, %struct._IO_FILE** %25, align 8, !dbg !1140, !tbaa !621
  %26 = icmp eq %struct._IO_FILE* %24, null, !dbg !1141
  br i1 %26, label %27, label %33, !dbg !1143

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !1127
  %29 = tail call i32* @__errno_location() #28, !dbg !1144
  %30 = load i32, i32* %29, align 4, !dbg !1144, !tbaa !795
  %31 = load i8*, i8** %28, align 8, !dbg !1144, !tbaa !621
  %32 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %31) #24, !dbg !1144
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %32) #24, !dbg !1144
  unreachable, !dbg !1144

33:                                               ; preds = %23
  %34 = tail call i32 @fileno(%struct._IO_FILE* nonnull %24) #24, !dbg !1145
  %35 = icmp eq i32 %34, 0, !dbg !1147
  %36 = select i1 %35, i8 1, i8 %15, !dbg !1148
  call void @llvm.dbg.value(metadata i8 %36, metadata !1066, metadata !DIExpression()), !dbg !1104
  tail call void @fadvise(%struct._IO_FILE* nonnull %24, i32 2) #24, !dbg !1149
  br label %37

37:                                               ; preds = %20, %33
  %38 = phi i8 [ %15, %20 ], [ %36, %33 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8 %38, metadata !1066, metadata !DIExpression()), !dbg !1104
  %39 = add nuw i64 %14, 1, !dbg !1150
  call void @llvm.dbg.value(metadata i64 %39, metadata !1065, metadata !DIExpression()), !dbg !1104
  %40 = icmp eq i64 %39, %0, !dbg !1123
  br i1 %40, label %41, label %13, !dbg !1126, !llvm.loop !1151

41:                                               ; preds = %37
  %42 = and i8 %38, 1, !dbg !1153
  %43 = icmp eq i8 %42, 0, !dbg !1153
  br i1 %43, label %44, label %45, !dbg !1155

44:                                               ; preds = %45, %41
  br label %53, !dbg !1156

45:                                               ; preds = %41
  %46 = load i1, i1* @have_read_stdin, align 1, !dbg !1157
  br i1 %46, label %47, label %44, !dbg !1158

47:                                               ; preds = %45
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i32 5) #24, !dbg !1159
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48) #24, !dbg !1159
  unreachable, !dbg !1159

49:                                               ; preds = %267, %161, %180, %182
  %50 = phi i64 [ %157, %182 ], [ %157, %180 ], [ %157, %161 ], [ %272, %267 ], !dbg !1160
  %51 = phi i8 [ %158, %182 ], [ %158, %180 ], [ %158, %161 ], [ %273, %267 ], !dbg !1161
  call void @llvm.dbg.value(metadata i8 %51, metadata !1061, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %50, metadata !1065, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 undef, metadata !1073, metadata !DIExpression()), !dbg !1162
  %52 = icmp eq i64 %50, 0, !dbg !1156
  br i1 %52, label %277, label %53, !dbg !1156, !llvm.loop !1163

53:                                               ; preds = %44, %49
  %54 = phi i8 [ %51, %49 ], [ 1, %44 ]
  %55 = phi i64 [ %50, %49 ], [ %0, %44 ]
  call void @llvm.dbg.value(metadata i8* undef, metadata !1069, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1070, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 0, metadata !1071, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %54, metadata !1061, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %55, metadata !1065, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !1067, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 undef, metadata !1073, metadata !DIExpression()), !dbg !1162
  %56 = load i8*, i8** @delims, align 8, !dbg !1167, !tbaa !621
  call void @llvm.dbg.value(metadata i8* %56, metadata !1069, metadata !DIExpression()), !dbg !1165
  br label %57, !dbg !1168

57:                                               ; preds = %53, %267
  %58 = phi i8 [ %273, %267 ], [ %54, %53 ]
  %59 = phi i64 [ %272, %267 ], [ %55, %53 ]
  %60 = phi i8 [ %271, %267 ], [ 0, %53 ]
  %61 = phi i8* [ %270, %267 ], [ %56, %53 ]
  %62 = phi i64 [ %268, %267 ], [ 0, %53 ]
  %63 = phi i64 [ %269, %267 ], [ 0, %53 ]
  call void @llvm.dbg.value(metadata i8 %58, metadata !1061, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %59, metadata !1065, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %60, metadata !1067, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %61, metadata !1069, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 undef, metadata !1073, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %62, metadata !1071, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i64 %63, metadata !1070, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1077, metadata !DIExpression()), !dbg !1162
  %64 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %62, !dbg !1169
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %64, align 8, !dbg !1169, !tbaa !621
  %66 = icmp eq %struct._IO_FILE* %65, null, !dbg !1169
  br i1 %66, label %155, label %67, !dbg !1170

67:                                               ; preds = %57
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %65, metadata !928, metadata !DIExpression()) #24, !dbg !1171
  %68 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 1, !dbg !1173
  %69 = load i8*, i8** %68, align 8, !dbg !1173, !tbaa !937
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 2, !dbg !1173
  %71 = load i8*, i8** %70, align 8, !dbg !1173, !tbaa !941
  %72 = icmp ult i8* %69, %71, !dbg !1173
  br i1 %72, label %75, label %73, !dbg !1173, !prof !942

73:                                               ; preds = %67
  %74 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %65) #24, !dbg !1173
  br label %79, !dbg !1173

75:                                               ; preds = %67
  %76 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1173
  store i8* %76, i8** %68, align 8, !dbg !1173, !tbaa !937
  %77 = load i8, i8* %69, align 1, !dbg !1173, !tbaa !782
  %78 = zext i8 %77 to i32, !dbg !1173
  br label %79, !dbg !1173

79:                                               ; preds = %73, %75
  %80 = phi i32 [ %74, %73 ], [ %78, %75 ], !dbg !1173
  call void @llvm.dbg.value(metadata i32 %80, metadata !1073, metadata !DIExpression()), !dbg !1162
  %81 = tail call i32* @__errno_location() #28, !dbg !1174
  %82 = load i32, i32* %81, align 4, !dbg !1174, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %82, metadata !1076, metadata !DIExpression()), !dbg !1162
  %83 = icmp ne i32 %80, -1, !dbg !1175
  %84 = icmp ne i64 %63, 0
  %85 = and i1 %84, %83, !dbg !1176
  br i1 %85, label %86, label %91, !dbg !1176

86:                                               ; preds = %79
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1177, !tbaa !621
  %88 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %63, %struct._IO_FILE* %87), !dbg !1177
  %89 = icmp eq i64 %88, %63, !dbg !1178
  br i1 %89, label %91, label %90, !dbg !1179

90:                                               ; preds = %86
  tail call fastcc void @write_error() #27, !dbg !1180
  unreachable, !dbg !1180

91:                                               ; preds = %86, %79
  %92 = phi i64 [ %63, %79 ], [ 0, %86 ], !dbg !1165
  call void @llvm.dbg.value(metadata i64 %92, metadata !1070, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 undef, metadata !1077, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %82, metadata !1076, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %80, metadata !1073, metadata !DIExpression()), !dbg !1162
  %93 = icmp eq i32 %80, -1, !dbg !1181
  br i1 %93, label %129, label %94, !dbg !1182

94:                                               ; preds = %91, %124
  %95 = phi i32 [ %125, %124 ], [ %80, %91 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %95, metadata !1073, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8 1, metadata !1077, metadata !DIExpression()), !dbg !1162
  %96 = load i1, i1* @line_delim, align 1, !dbg !1183
  %97 = select i1 %96, i32 0, i32 10, !dbg !1183
  %98 = icmp eq i32 %95, %97, !dbg !1186
  br i1 %98, label %200, label %99, !dbg !1187

99:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i32 %95, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %95, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1190
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1192, !tbaa !621
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 5, !dbg !1192
  %102 = load i8*, i8** %101, align 8, !dbg !1192, !tbaa !982
  %103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 6, !dbg !1192
  %104 = load i8*, i8** %103, align 8, !dbg !1192, !tbaa !983
  %105 = icmp ult i8* %102, %104, !dbg !1192
  br i1 %105, label %106, label %109, !dbg !1192, !prof !942

106:                                              ; preds = %99
  %107 = trunc i32 %95 to i8, !dbg !1193
  call void @llvm.dbg.value(metadata i8 %107, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1190
  call void @llvm.dbg.value(metadata i8 %107, metadata !966, metadata !DIExpression()) #24, !dbg !1188
  %108 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !1192
  store i8* %108, i8** %101, align 8, !dbg !1192, !tbaa !982
  store i8 %107, i8* %102, align 1, !dbg !1192, !tbaa !782
  br label %114, !dbg !1194

109:                                              ; preds = %99
  %110 = and i32 %95, 255, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %95, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1190
  %111 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %100, i32 %110) #24, !dbg !1192
  %112 = icmp slt i32 %111, 0, !dbg !1196
  br i1 %112, label %113, label %114, !dbg !1194

113:                                              ; preds = %109
  tail call fastcc void @write_error() #26, !dbg !1197
  unreachable, !dbg !1197

114:                                              ; preds = %106, %109
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %65, metadata !928, metadata !DIExpression()) #24, !dbg !1198
  %115 = load i8*, i8** %68, align 8, !dbg !1200, !tbaa !937
  %116 = load i8*, i8** %70, align 8, !dbg !1200, !tbaa !941
  %117 = icmp ult i8* %115, %116, !dbg !1200
  br i1 %117, label %120, label %118, !dbg !1200, !prof !942

118:                                              ; preds = %114
  %119 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %65) #24, !dbg !1200
  br label %124, !dbg !1200

120:                                              ; preds = %114
  %121 = getelementptr inbounds i8, i8* %115, i64 1, !dbg !1200
  store i8* %121, i8** %68, align 8, !dbg !1200, !tbaa !937
  %122 = load i8, i8* %115, align 1, !dbg !1200, !tbaa !782
  %123 = zext i8 %122 to i32, !dbg !1200
  br label %124, !dbg !1200

124:                                              ; preds = %118, %120
  %125 = phi i32 [ %119, %118 ], [ %123, %120 ], !dbg !1200
  call void @llvm.dbg.value(metadata i32 %125, metadata !1073, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8 undef, metadata !1077, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1162
  %126 = icmp eq i32 %125, -1, !dbg !1181
  br i1 %126, label %127, label %94, !dbg !1182, !llvm.loop !1201

127:                                              ; preds = %124
  %128 = load i32, i32* %81, align 4, !dbg !1203, !tbaa !795
  call void @llvm.dbg.value(metadata i8 undef, metadata !1077, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %128, metadata !1076, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 -1, metadata !1073, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %92, metadata !1070, metadata !DIExpression()), !dbg !1165
  br i1 %93, label %129, label %200, !dbg !1204

129:                                              ; preds = %91, %127
  %130 = phi i32 [ %128, %127 ], [ %82, %91 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %65, metadata !1025, metadata !DIExpression()), !dbg !1205
  %131 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %65, i64 0, i32 0, !dbg !1210
  %132 = load i32, i32* %131, align 8, !dbg !1210, !tbaa !1032
  %133 = and i32 %132, 32, !dbg !1211
  %134 = icmp eq i32 %133, 0, !dbg !1211
  br i1 %134, label %139, label %135, !dbg !1212

135:                                              ; preds = %129
  %136 = getelementptr inbounds i8*, i8** %1, i64 %62, !dbg !1213
  %137 = load i8*, i8** %136, align 8, !dbg !1213, !tbaa !621
  %138 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %137) #24, !dbg !1213
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %138) #24, !dbg !1215
  call void @llvm.dbg.value(metadata i8 0, metadata !1061, metadata !DIExpression()), !dbg !1104
  br label %139, !dbg !1216

139:                                              ; preds = %135, %129
  %140 = phi i8 [ 0, %135 ], [ %58, %129 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8 %140, metadata !1061, metadata !DIExpression()), !dbg !1104
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1217, !tbaa !621
  %142 = icmp eq %struct._IO_FILE* %65, %141, !dbg !1219
  br i1 %142, label %143, label %144, !dbg !1220

143:                                              ; preds = %139
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %65) #24, !dbg !1221
  br label %152, !dbg !1221

144:                                              ; preds = %139
  %145 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %65) #24, !dbg !1222
  %146 = icmp eq i32 %145, -1, !dbg !1224
  br i1 %146, label %147, label %152, !dbg !1225

147:                                              ; preds = %144
  %148 = load i32, i32* %81, align 4, !dbg !1226, !tbaa !795
  %149 = getelementptr inbounds i8*, i8** %1, i64 %62, !dbg !1228
  %150 = load i8*, i8** %149, align 8, !dbg !1228, !tbaa !621
  %151 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %150) #24, !dbg !1228
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* %151) #24, !dbg !1229
  call void @llvm.dbg.value(metadata i8 0, metadata !1061, metadata !DIExpression()), !dbg !1104
  br label %152, !dbg !1230

152:                                              ; preds = %144, %147, %143
  %153 = phi i8 [ %140, %143 ], [ 0, %147 ], [ %140, %144 ], !dbg !1231
  call void @llvm.dbg.value(metadata i8 %153, metadata !1061, metadata !DIExpression()), !dbg !1104
  store %struct._IO_FILE* null, %struct._IO_FILE** %64, align 8, !dbg !1232, !tbaa !621
  %154 = add i64 %59, -1, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %154, metadata !1065, metadata !DIExpression()), !dbg !1104
  br label %155, !dbg !1234

155:                                              ; preds = %57, %152
  %156 = phi i64 [ %92, %152 ], [ %63, %57 ]
  %157 = phi i64 [ %154, %152 ], [ %59, %57 ], !dbg !1104
  %158 = phi i8 [ %153, %152 ], [ %58, %57 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8 %158, metadata !1061, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %157, metadata !1065, metadata !DIExpression()), !dbg !1104
  %159 = add nuw i64 %62, 1, !dbg !1235
  %160 = icmp eq i64 %159, %0, !dbg !1236
  br i1 %160, label %161, label %187, !dbg !1237

161:                                              ; preds = %155
  %162 = and i8 %60, 1, !dbg !1238
  %163 = icmp eq i8 %162, 0, !dbg !1238
  br i1 %163, label %49, label %164, !dbg !1239

164:                                              ; preds = %161
  %165 = icmp eq i64 %156, 0, !dbg !1240
  br i1 %165, label %171, label %166, !dbg !1241

166:                                              ; preds = %164
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1242, !tbaa !621
  %168 = tail call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %156, %struct._IO_FILE* %167), !dbg !1242
  %169 = icmp eq i64 %168, %156, !dbg !1243
  br i1 %169, label %171, label %170, !dbg !1244

170:                                              ; preds = %166
  tail call fastcc void @write_error() #27, !dbg !1245
  unreachable, !dbg !1245

171:                                              ; preds = %166, %164
  call void @llvm.dbg.value(metadata i64 0, metadata !1070, metadata !DIExpression()), !dbg !1165
  %172 = load i1, i1* @line_delim, align 1, !dbg !1246
  %173 = select i1 %172, i8 0, i8 10, !dbg !1246
  call void @llvm.dbg.value(metadata i8 %173, metadata !966, metadata !DIExpression()) #24, !dbg !1247
  call void @llvm.dbg.value(metadata i8 %173, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1249
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1251, !tbaa !621
  %175 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %174, i64 0, i32 5, !dbg !1251
  %176 = load i8*, i8** %175, align 8, !dbg !1251, !tbaa !982
  %177 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %174, i64 0, i32 6, !dbg !1251
  %178 = load i8*, i8** %177, align 8, !dbg !1251, !tbaa !983
  %179 = icmp ult i8* %176, %178, !dbg !1251
  br i1 %179, label %180, label %182, !dbg !1251, !prof !942

180:                                              ; preds = %171
  %181 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !1251
  store i8* %181, i8** %175, align 8, !dbg !1251, !tbaa !982
  store i8 %173, i8* %176, align 1, !dbg !1251, !tbaa !782
  br label %49, !dbg !1252

182:                                              ; preds = %171
  %183 = zext i8 %173 to i32, !dbg !1253
  call void @llvm.dbg.value(metadata i8 %173, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1249
  %184 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %174, i32 %183) #24, !dbg !1251
  %185 = icmp slt i32 %184, 0, !dbg !1254
  br i1 %185, label %186, label %49, !dbg !1252

186:                                              ; preds = %182
  tail call fastcc void @write_error() #26, !dbg !1255
  unreachable, !dbg !1255

187:                                              ; preds = %155
  %188 = load i8, i8* %61, align 1, !dbg !1256, !tbaa !782
  %189 = icmp eq i8 %188, 0, !dbg !1259
  br i1 %189, label %193, label %190, !dbg !1260

190:                                              ; preds = %187
  %191 = add i64 %156, 1, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %191, metadata !1070, metadata !DIExpression()), !dbg !1165
  %192 = getelementptr inbounds i8, i8* %4, i64 %156, !dbg !1262
  store i8 %188, i8* %192, align 1, !dbg !1263, !tbaa !782
  br label %193, !dbg !1262

193:                                              ; preds = %190, %187
  %194 = phi i64 [ %191, %190 ], [ %156, %187 ], !dbg !1162
  call void @llvm.dbg.value(metadata i64 %194, metadata !1070, metadata !DIExpression()), !dbg !1165
  %195 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1264
  call void @llvm.dbg.value(metadata i8* %195, metadata !1069, metadata !DIExpression()), !dbg !1165
  %196 = load i8*, i8** @delim_end, align 8, !dbg !1266, !tbaa !621
  %197 = icmp eq i8* %195, %196, !dbg !1267
  %198 = load i8*, i8** @delims, align 8
  %199 = select i1 %197, i8* %198, i8* %195, !dbg !1268
  br label %267, !dbg !1268

200:                                              ; preds = %94, %127
  %201 = phi i32 [ -1, %127 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1067, metadata !DIExpression()), !dbg !1165
  %202 = add nuw i64 %62, 1, !dbg !1269
  %203 = icmp eq i64 %202, %0, !dbg !1270
  br i1 %203, label %248, label %204, !dbg !1271

204:                                              ; preds = %200
  %205 = load i1, i1* @line_delim, align 1, !dbg !1272
  %206 = select i1 %205, i32 0, i32 10, !dbg !1272
  %207 = icmp ne i32 %201, %206, !dbg !1275
  %208 = icmp ne i32 %201, -1
  %209 = and i1 %208, %207, !dbg !1276
  br i1 %209, label %210, label %225, !dbg !1276

210:                                              ; preds = %204
  call void @llvm.dbg.value(metadata i32 %201, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !1277
  call void @llvm.dbg.value(metadata i32 %201, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1279
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1281, !tbaa !621
  %212 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %211, i64 0, i32 5, !dbg !1281
  %213 = load i8*, i8** %212, align 8, !dbg !1281, !tbaa !982
  %214 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %211, i64 0, i32 6, !dbg !1281
  %215 = load i8*, i8** %214, align 8, !dbg !1281, !tbaa !983
  %216 = icmp ult i8* %213, %215, !dbg !1281
  br i1 %216, label %217, label %220, !dbg !1281, !prof !942

217:                                              ; preds = %210
  %218 = trunc i32 %201 to i8, !dbg !1282
  call void @llvm.dbg.value(metadata i8 %218, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1279
  call void @llvm.dbg.value(metadata i8 %218, metadata !966, metadata !DIExpression()) #24, !dbg !1277
  %219 = getelementptr inbounds i8, i8* %213, i64 1, !dbg !1281
  store i8* %219, i8** %212, align 8, !dbg !1281, !tbaa !982
  store i8 %218, i8* %213, align 1, !dbg !1281, !tbaa !782
  br label %225, !dbg !1283

220:                                              ; preds = %210
  %221 = and i32 %201, 255, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %201, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1279
  %222 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %211, i32 %221) #24, !dbg !1281
  %223 = icmp slt i32 %222, 0, !dbg !1285
  br i1 %223, label %224, label %225, !dbg !1283

224:                                              ; preds = %220
  tail call fastcc void @write_error() #26, !dbg !1286
  unreachable, !dbg !1286

225:                                              ; preds = %220, %217, %204
  %226 = load i8, i8* %61, align 1, !dbg !1287, !tbaa !782
  %227 = icmp eq i8 %226, 0, !dbg !1289
  br i1 %227, label %242, label %228, !dbg !1290

228:                                              ; preds = %225
  call void @llvm.dbg.value(metadata i8 %226, metadata !966, metadata !DIExpression()) #24, !dbg !1291
  call void @llvm.dbg.value(metadata i8 %226, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1293
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1295, !tbaa !621
  %230 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %229, i64 0, i32 5, !dbg !1295
  %231 = load i8*, i8** %230, align 8, !dbg !1295, !tbaa !982
  %232 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %229, i64 0, i32 6, !dbg !1295
  %233 = load i8*, i8** %232, align 8, !dbg !1295, !tbaa !983
  %234 = icmp ult i8* %231, %233, !dbg !1295
  br i1 %234, label %235, label %237, !dbg !1295, !prof !942

235:                                              ; preds = %228
  %236 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !1295
  store i8* %236, i8** %230, align 8, !dbg !1295, !tbaa !982
  store i8 %226, i8* %231, align 1, !dbg !1295, !tbaa !782
  br label %242, !dbg !1296

237:                                              ; preds = %228
  %238 = zext i8 %226 to i32, !dbg !1297
  call void @llvm.dbg.value(metadata i8 %226, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1293
  %239 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %229, i32 %238) #24, !dbg !1295
  %240 = icmp slt i32 %239, 0, !dbg !1298
  br i1 %240, label %241, label %242, !dbg !1296

241:                                              ; preds = %237
  tail call fastcc void @write_error() #26, !dbg !1299
  unreachable, !dbg !1299

242:                                              ; preds = %237, %235, %225
  %243 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %243, metadata !1069, metadata !DIExpression()), !dbg !1165
  %244 = load i8*, i8** @delim_end, align 8, !dbg !1302, !tbaa !621
  %245 = icmp eq i8* %243, %244, !dbg !1303
  %246 = load i8*, i8** @delims, align 8
  %247 = select i1 %245, i8* %246, i8* %243, !dbg !1304
  br label %267, !dbg !1304

248:                                              ; preds = %200
  %249 = icmp eq i32 %201, -1, !dbg !1305
  %250 = load i1, i1* @line_delim, align 1, !dbg !1306
  %251 = select i1 %250, i32 0, i32 10, !dbg !1306
  %252 = select i1 %249, i32 %251, i32 %201, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %252, metadata !1100, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1307
  call void @llvm.dbg.value(metadata i32 %252, metadata !966, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #24, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %252, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1310
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1312, !tbaa !621
  %254 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 5, !dbg !1312
  %255 = load i8*, i8** %254, align 8, !dbg !1312, !tbaa !982
  %256 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 6, !dbg !1312
  %257 = load i8*, i8** %256, align 8, !dbg !1312, !tbaa !983
  %258 = icmp ult i8* %255, %257, !dbg !1312
  br i1 %258, label %259, label %262, !dbg !1312, !prof !942

259:                                              ; preds = %248
  %260 = trunc i32 %252 to i8, !dbg !1313
  call void @llvm.dbg.value(metadata i8 %260, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1310
  call void @llvm.dbg.value(metadata i8 %260, metadata !966, metadata !DIExpression()) #24, !dbg !1308
  call void @llvm.dbg.value(metadata i8 %260, metadata !1100, metadata !DIExpression()), !dbg !1307
  %261 = getelementptr inbounds i8, i8* %255, i64 1, !dbg !1312
  store i8* %261, i8** %254, align 8, !dbg !1312, !tbaa !982
  store i8 %260, i8* %255, align 1, !dbg !1312, !tbaa !782
  br label %267, !dbg !1314

262:                                              ; preds = %248
  %263 = and i32 %252, 255, !dbg !1315
  call void @llvm.dbg.value(metadata i32 %252, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #24, !dbg !1310
  %264 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %253, i32 %263) #24, !dbg !1312
  %265 = icmp slt i32 %264, 0, !dbg !1316
  br i1 %265, label %266, label %267, !dbg !1314

266:                                              ; preds = %262
  tail call fastcc void @write_error() #26, !dbg !1317
  unreachable, !dbg !1317

267:                                              ; preds = %262, %259, %242, %193
  %268 = phi i64 [ %202, %262 ], [ %202, %259 ], [ %202, %242 ], [ %159, %193 ], !dbg !1318
  %269 = phi i64 [ %92, %262 ], [ %92, %259 ], [ %92, %242 ], [ %194, %193 ], !dbg !1162
  %270 = phi i8* [ %61, %262 ], [ %61, %259 ], [ %247, %242 ], [ %199, %193 ], !dbg !1165
  %271 = phi i8 [ 1, %262 ], [ 1, %259 ], [ 1, %242 ], [ %60, %193 ], !dbg !1165
  %272 = phi i64 [ %59, %262 ], [ %59, %259 ], [ %59, %242 ], [ %157, %193 ], !dbg !1104
  %273 = phi i8 [ %58, %262 ], [ %58, %259 ], [ %58, %242 ], [ %158, %193 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8 %273, metadata !1061, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %272, metadata !1065, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %271, metadata !1067, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8* %270, metadata !1069, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i64 %269, metadata !1070, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 undef, metadata !1073, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i64 %268, metadata !1071, metadata !DIExpression()), !dbg !1166
  %274 = icmp ult i64 %268, %0, !dbg !1319
  %275 = icmp ne i64 %272, 0, !dbg !1320
  %276 = and i1 %274, %275, !dbg !1320
  br i1 %276, label %57, label %49, !dbg !1168, !llvm.loop !1321

277:                                              ; preds = %49, %8
  %278 = phi i8 [ 1, %8 ], [ %51, %49 ], !dbg !1161
  tail call void @free(i8* %10) #24, !dbg !1323
  tail call void @free(i8* %4) #24, !dbg !1324
  %279 = and i8 %278, 1, !dbg !1325
  %280 = icmp ne i8 %279, 0, !dbg !1325
  ret i1 %280, !dbg !1326
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1327 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1330 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @write_error() unnamed_addr #0 !dbg !1335 {
  %1 = tail call i32* @__errno_location() #28, !dbg !1336
  %2 = load i32, i32* %1, align 4, !dbg !1336, !tbaa !795
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #24, !dbg !1336
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %2, i8* %3) #24, !dbg !1336
  unreachable, !dbg !1336
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1337 void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1340 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1342, metadata !DIExpression()), !dbg !1343
  store i8* %0, i8** @file_name, align 8, !dbg !1344, !tbaa !621
  ret void, !dbg !1345
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1346 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1350, metadata !DIExpression()), !dbg !1351
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1352, !tbaa !1353
  ret void, !dbg !1355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1356 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1361, !tbaa !621
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !1362
  %3 = icmp eq i32 %2, 0, !dbg !1363
  br i1 %3, label %22, label %4, !dbg !1364

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1365, !tbaa !1353, !range !1366
  %6 = icmp eq i8 %5, 0, !dbg !1365
  br i1 %6, label %11, label %7, !dbg !1367

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !1368
  %9 = load i32, i32* %8, align 4, !dbg !1368, !tbaa !795
  %10 = icmp eq i32 %9, 32, !dbg !1369
  br i1 %10, label %22, label %11, !dbg !1370

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i32 5) #24, !dbg !1371
  call void @llvm.dbg.value(metadata i8* %12, metadata !1358, metadata !DIExpression()), !dbg !1372
  %13 = load i8*, i8** @file_name, align 8, !dbg !1373, !tbaa !621
  %14 = icmp eq i8* %13, null, !dbg !1373
  %15 = tail call i32* @__errno_location() #28, !dbg !1375
  %16 = load i32, i32* %15, align 4, !dbg !1375, !tbaa !795
  br i1 %14, label %19, label %17, !dbg !1376

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !1377
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.49, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !1378
  br label %20, !dbg !1378

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.50, i64 0, i64 0), i8* %12) #24, !dbg !1379
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1380, !tbaa !795
  tail call void @_exit(i32 %21) #26, !dbg !1381
  unreachable, !dbg !1381

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1382, !tbaa !621
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !1384
  %25 = icmp eq i32 %24, 0, !dbg !1385
  br i1 %25, label %28, label %26, !dbg !1386

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1387, !tbaa !795
  tail call void @_exit(i32 %27) #26, !dbg !1388
  unreachable, !dbg !1388

28:                                               ; preds = %22
  ret void, !dbg !1389
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1390 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1396, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %1, metadata !1397, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64 %2, metadata !1398, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i32 %3, metadata !1399, metadata !DIExpression()), !dbg !1402
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #24, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %5, metadata !1400, metadata !DIExpression()), !dbg !1404
  ret void, !dbg !1405
}

; Function Attrs: nounwind
declare !dbg !1406 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1410 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1448, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 %1, metadata !1449, metadata !DIExpression()), !dbg !1450
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1451
  br i1 %3, label %7, label %4, !dbg !1453

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %5, metadata !1396, metadata !DIExpression()) #24, !dbg !1455
  call void @llvm.dbg.value(metadata i64 0, metadata !1397, metadata !DIExpression()) #24, !dbg !1455
  call void @llvm.dbg.value(metadata i64 0, metadata !1398, metadata !DIExpression()) #24, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %1, metadata !1399, metadata !DIExpression()) #24, !dbg !1455
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #24, !dbg !1457
  call void @llvm.dbg.value(metadata i32 %6, metadata !1400, metadata !DIExpression()) #24, !dbg !1458
  br label %7, !dbg !1459

7:                                                ; preds = %4, %2
  ret void, !dbg !1460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1463, metadata !DIExpression()), !dbg !1466
  %2 = icmp eq i8* %0, null, !dbg !1467
  br i1 %2, label %3, label %6, !dbg !1469

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1470, !tbaa !621
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !1472
  tail call void @abort() #26, !dbg !1473
  unreachable, !dbg !1473

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !1474
  call void @llvm.dbg.value(metadata i8* %7, metadata !1464, metadata !DIExpression()), !dbg !1466
  %8 = icmp eq i8* %7, null, !dbg !1475
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1476
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1476
  call void @llvm.dbg.value(metadata i8* %10, metadata !1465, metadata !DIExpression()), !dbg !1466
  %11 = ptrtoint i8* %10 to i64, !dbg !1477
  %12 = ptrtoint i8* %0 to i64, !dbg !1477
  %13 = sub i64 %11, %12, !dbg !1477
  %14 = icmp sgt i64 %13, 6, !dbg !1479
  br i1 %14, label %15, label %24, !dbg !1480

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1481
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.60, i64 0, i64 0), i64 7) #25, !dbg !1482
  %18 = icmp eq i32 %17, 0, !dbg !1483
  br i1 %18, label %19, label %24, !dbg !1484

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1463, metadata !DIExpression()), !dbg !1466
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.61, i64 0, i64 0), i64 3) #25, !dbg !1485
  %21 = icmp eq i32 %20, 0, !dbg !1488
  br i1 %21, label %22, label %24, !dbg !1489

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1490
  call void @llvm.dbg.value(metadata i8* %23, metadata !1463, metadata !DIExpression()), !dbg !1466
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1492, !tbaa !621
  br label %24, !dbg !1493

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1463, metadata !DIExpression()), !dbg !1466
  store i8* %25, i8** @program_name, align 8, !dbg !1494, !tbaa !621
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1495, !tbaa !621
  ret void, !dbg !1496
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1497 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1502, metadata !DIExpression()), !dbg !1505
  %2 = tail call i32* @__errno_location() #28, !dbg !1506
  %3 = load i32, i32* %2, align 4, !dbg !1506, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %3, metadata !1503, metadata !DIExpression()), !dbg !1505
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1507
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1507
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1507
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !1508
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1508
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1504, metadata !DIExpression()), !dbg !1505
  store i32 %3, i32* %2, align 4, !dbg !1509, !tbaa !795
  ret %struct.quoting_options* %8, !dbg !1510
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1511 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1517, metadata !DIExpression()), !dbg !1518
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1519
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1519
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1520
  %5 = load i32, i32* %4, align 8, !dbg !1520, !tbaa !1521
  ret i32 %5, !dbg !1523
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1524 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1528, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i32 %1, metadata !1529, metadata !DIExpression()), !dbg !1530
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1531
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1531
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1532
  store i32 %1, i32* %5, align 8, !dbg !1533, !tbaa !1521
  ret void, !dbg !1534
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1535 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1539, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %1, metadata !1540, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %2, metadata !1541, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 %1, metadata !1542, metadata !DIExpression()), !dbg !1547
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1548
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1548
  %6 = lshr i8 %1, 5, !dbg !1549
  %7 = zext i8 %6 to i64, !dbg !1549
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1550
  call void @llvm.dbg.value(metadata i32* %8, metadata !1543, metadata !DIExpression()), !dbg !1547
  %9 = and i8 %1, 31, !dbg !1551
  %10 = zext i8 %9 to i32, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %10, metadata !1545, metadata !DIExpression()), !dbg !1547
  %11 = load i32, i32* %8, align 4, !dbg !1552, !tbaa !795
  %12 = lshr i32 %11, %10, !dbg !1553
  %13 = and i32 %12, 1, !dbg !1554
  call void @llvm.dbg.value(metadata i32 %13, metadata !1546, metadata !DIExpression()), !dbg !1547
  %14 = and i32 %2, 1, !dbg !1555
  %15 = xor i32 %13, %14, !dbg !1556
  %16 = shl i32 %15, %10, !dbg !1557
  %17 = xor i32 %16, %11, !dbg !1558
  store i32 %17, i32* %8, align 4, !dbg !1558, !tbaa !795
  ret i32 %13, !dbg !1559
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1560 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1564, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i32 %1, metadata !1565, metadata !DIExpression()), !dbg !1567
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1568
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1570
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1564, metadata !DIExpression()), !dbg !1567
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1571
  %6 = load i32, i32* %5, align 4, !dbg !1571, !tbaa !1572
  call void @llvm.dbg.value(metadata i32 %6, metadata !1566, metadata !DIExpression()), !dbg !1567
  store i32 %1, i32* %5, align 4, !dbg !1573, !tbaa !1572
  ret i32 %6, !dbg !1574
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1575 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1579, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8* %1, metadata !1580, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8* %2, metadata !1581, metadata !DIExpression()), !dbg !1582
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1583
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1585
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1579, metadata !DIExpression()), !dbg !1582
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1586
  store i32 10, i32* %6, align 8, !dbg !1587, !tbaa !1521
  %7 = icmp ne i8* %1, null, !dbg !1588
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1590
  br i1 %9, label %11, label %10, !dbg !1590

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1591
  unreachable, !dbg !1591

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1592
  store i8* %1, i8** %12, align 8, !dbg !1593, !tbaa !1594
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1595
  store i8* %2, i8** %13, align 8, !dbg !1596, !tbaa !1597
  ret void, !dbg !1598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1599 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1603, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %1, metadata !1604, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %2, metadata !1605, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %3, metadata !1606, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1607, metadata !DIExpression()), !dbg !1611
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1612
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1612
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1608, metadata !DIExpression()), !dbg !1611
  %8 = tail call i32* @__errno_location() #28, !dbg !1613
  %9 = load i32, i32* %8, align 4, !dbg !1613, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %9, metadata !1609, metadata !DIExpression()), !dbg !1611
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1614
  %11 = load i32, i32* %10, align 8, !dbg !1614, !tbaa !1521
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1615
  %13 = load i32, i32* %12, align 4, !dbg !1615, !tbaa !1572
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1616
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1617
  %16 = load i8*, i8** %15, align 8, !dbg !1617, !tbaa !1594
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1618
  %18 = load i8*, i8** %17, align 8, !dbg !1618, !tbaa !1597
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %19, metadata !1610, metadata !DIExpression()), !dbg !1611
  store i32 %9, i32* %8, align 4, !dbg !1620, !tbaa !795
  ret i64 %19, !dbg !1621
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1622 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1628, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %1, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %2, metadata !1630, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %3, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %4, metadata !1632, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %5, metadata !1633, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32* %6, metadata !1634, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %7, metadata !1635, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %8, metadata !1636, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* null, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1698
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1699
  %14 = icmp eq i64 %13, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i1 %14, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1698
  %15 = lshr i32 %5, 1, !dbg !1701
  %16 = trunc i32 %15 to i8, !dbg !1701
  %17 = and i8 %16, 1, !dbg !1701
  call void @llvm.dbg.value(metadata i8 %17, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1647, metadata !DIExpression()), !dbg !1698
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1702

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1703
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1704
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1705
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1706
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1698
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1707
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1708
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1709
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %38, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %37, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %36, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %35, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %34, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %33, metadata !1642, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %32, metadata !1641, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %31, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %30, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %29, metadata !1636, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %28, metadata !1635, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %27, metadata !1632, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1692), !dbg !1710
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
  ], !dbg !1711

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 5, metadata !1632, metadata !DIExpression()), !dbg !1698
  br label %92, !dbg !1712

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 5, metadata !1632, metadata !DIExpression()), !dbg !1698
  %42 = and i8 %35, 1, !dbg !1714
  %43 = icmp eq i8 %42, 0, !dbg !1714
  br i1 %43, label %44, label %92, !dbg !1712

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1716
  br i1 %45, label %92, label %46, !dbg !1719

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1716, !tbaa !782
  br label %92, !dbg !1716

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %27), !dbg !1720
  call void @llvm.dbg.value(metadata i8* %48, metadata !1635, metadata !DIExpression()), !dbg !1698
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %27), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %49, metadata !1636, metadata !DIExpression()), !dbg !1698
  br label %50, !dbg !1725

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1636, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %51, metadata !1635, metadata !DIExpression()), !dbg !1698
  %53 = and i8 %35, 1, !dbg !1726
  %54 = icmp eq i8 %53, 0, !dbg !1726
  br i1 %54, label %55, label %70, !dbg !1728

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1638, metadata !DIExpression()), !dbg !1698
  %56 = load i8, i8* %51, align 1, !dbg !1729, !tbaa !782
  %57 = icmp eq i8 %56, 0, !dbg !1732
  br i1 %57, label %70, label %58, !dbg !1732

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %61, metadata !1638, metadata !DIExpression()), !dbg !1698
  %62 = icmp ult i64 %61, %39, !dbg !1733
  br i1 %62, label %63, label %65, !dbg !1736

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1733
  store i8 %59, i8* %64, align 1, !dbg !1733, !tbaa !782
  br label %65, !dbg !1733

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %66, metadata !1638, metadata !DIExpression()), !dbg !1698
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %67, metadata !1640, metadata !DIExpression()), !dbg !1698
  %68 = load i8, i8* %67, align 1, !dbg !1729, !tbaa !782
  %69 = icmp eq i8 %68, 0, !dbg !1732
  br i1 %69, label %70, label %58, !dbg !1732, !llvm.loop !1738

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1740
  call void @llvm.dbg.value(metadata i64 %71, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %52, metadata !1640, metadata !DIExpression()), !dbg !1698
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %72, metadata !1641, metadata !DIExpression()), !dbg !1698
  br label %92, !dbg !1742

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1698
  br label %74, !dbg !1743

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %75, metadata !1642, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1698
  br label %76, !dbg !1744

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1706
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %78, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %77, metadata !1642, metadata !DIExpression()), !dbg !1698
  %79 = and i8 %78, 1, !dbg !1745
  %80 = icmp eq i8 %79, 0, !dbg !1745
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1747
  br label %82, !dbg !1747

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1698
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1701
  call void @llvm.dbg.value(metadata i8 %84, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %83, metadata !1642, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 2, metadata !1632, metadata !DIExpression()), !dbg !1698
  %85 = and i8 %84, 1, !dbg !1748
  %86 = icmp eq i8 %85, 0, !dbg !1748
  br i1 %86, label %87, label %92, !dbg !1750

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1751
  br i1 %88, label %92, label %89, !dbg !1754

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1751, !tbaa !782
  br label %92, !dbg !1751

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1698
  br label %92, !dbg !1755

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1756
  unreachable, !dbg !1756

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1740
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %40 ], !dbg !1698
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1698
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1698
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %100, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %99, metadata !1642, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %98, metadata !1641, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %97, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %96, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %95, metadata !1636, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %94, metadata !1635, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %93, metadata !1632, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1637, metadata !DIExpression()), !dbg !1698
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
  br label %121, !dbg !1757

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1758
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1740
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1703
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1707
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1708
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1709
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %128, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %127, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %126, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %125, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %124, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %123, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %122, metadata !1637, metadata !DIExpression()), !dbg !1698
  %130 = icmp eq i64 %125, -1, !dbg !1759
  br i1 %130, label %131, label %135, !dbg !1760

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1761
  %133 = load i8, i8* %132, align 1, !dbg !1761, !tbaa !782
  %134 = icmp eq i8 %133, 0, !dbg !1762
  br i1 %134, label %587, label %137, !dbg !1763

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1764
  br i1 %136, label %587, label %137, !dbg !1763

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1655, metadata !DIExpression()), !dbg !1765
  br i1 %106, label %138, label %153, !dbg !1766

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1768
  %140 = and i1 %107, %130, !dbg !1769
  br i1 %140, label %141, label %143, !dbg !1769

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %142, metadata !1631, metadata !DIExpression()), !dbg !1698
  br label %143, !dbg !1771

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1771
  call void @llvm.dbg.value(metadata i64 %144, metadata !1631, metadata !DIExpression()), !dbg !1698
  %145 = icmp ugt i64 %139, %144, !dbg !1772
  br i1 %145, label %153, label %146, !dbg !1773

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1774
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1775
  %149 = icmp ne i32 %148, 0, !dbg !1776
  %150 = or i1 %149, %109, !dbg !1777
  %151 = xor i1 %149, true, !dbg !1777
  %152 = zext i1 %151 to i8, !dbg !1777
  br i1 %150, label %153, label %646, !dbg !1777

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1765
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %156, metadata !1653, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 %154, metadata !1631, metadata !DIExpression()), !dbg !1698
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1778
  %158 = load i8, i8* %157, align 1, !dbg !1778, !tbaa !782
  call void @llvm.dbg.value(metadata i8 %158, metadata !1648, metadata !DIExpression()), !dbg !1765
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
  ], !dbg !1779

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1780

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1781

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1765
  %162 = and i8 %126, 1, !dbg !1785
  %163 = icmp eq i8 %162, 0, !dbg !1785
  %164 = and i1 %110, %163, !dbg !1785
  br i1 %164, label %165, label %181, !dbg !1785

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1787
  br i1 %166, label %167, label %169, !dbg !1791

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1787
  store i8 39, i8* %168, align 1, !dbg !1787, !tbaa !782
  br label %169, !dbg !1787

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %170, metadata !1638, metadata !DIExpression()), !dbg !1698
  %171 = icmp ult i64 %170, %129, !dbg !1792
  br i1 %171, label %172, label %174, !dbg !1795

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1792
  store i8 36, i8* %173, align 1, !dbg !1792, !tbaa !782
  br label %174, !dbg !1792

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %175, metadata !1638, metadata !DIExpression()), !dbg !1698
  %176 = icmp ult i64 %175, %129, !dbg !1796
  br i1 %176, label %177, label %179, !dbg !1799

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1796
  store i8 39, i8* %178, align 1, !dbg !1796, !tbaa !782
  br label %179, !dbg !1796

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %180, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1698
  br label %181, !dbg !1800

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1698
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %183, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %182, metadata !1638, metadata !DIExpression()), !dbg !1698
  %184 = icmp ult i64 %182, %129, !dbg !1801
  br i1 %184, label %185, label %187, !dbg !1804

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1801
  store i8 92, i8* %186, align 1, !dbg !1801, !tbaa !782
  br label %187, !dbg !1801

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %188, metadata !1638, metadata !DIExpression()), !dbg !1698
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1805
  br i1 %191, label %192, label %473, !dbg !1805

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1807
  %194 = load i8, i8* %193, align 1, !dbg !1807, !tbaa !782
  %195 = add i8 %194, -48, !dbg !1808
  %196 = icmp ult i8 %195, 10, !dbg !1808
  br i1 %196, label %197, label %473, !dbg !1808

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1809
  br i1 %198, label %199, label %201, !dbg !1813

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1809
  store i8 48, i8* %200, align 1, !dbg !1809, !tbaa !782
  br label %201, !dbg !1809

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %202, metadata !1638, metadata !DIExpression()), !dbg !1698
  %203 = icmp ult i64 %202, %129, !dbg !1814
  br i1 %203, label %204, label %206, !dbg !1817

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1814
  store i8 48, i8* %205, align 1, !dbg !1814, !tbaa !782
  br label %206, !dbg !1814

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %207, metadata !1638, metadata !DIExpression()), !dbg !1698
  br label %473, !dbg !1818

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1819

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1820

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1821

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1823
  br i1 %214, label %215, label %473, !dbg !1823

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1825
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1826
  %218 = load i8, i8* %217, align 1, !dbg !1826, !tbaa !782
  %219 = icmp eq i8 %218, 63, !dbg !1827
  br i1 %219, label %220, label %473, !dbg !1828

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1829
  %222 = load i8, i8* %221, align 1, !dbg !1829, !tbaa !782
  %223 = sext i8 %222 to i32, !dbg !1829
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
  ], !dbg !1830

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1831

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i64 undef, metadata !1637, metadata !DIExpression()), !dbg !1698
  %226 = icmp ult i64 %123, %129, !dbg !1833
  br i1 %226, label %227, label %229, !dbg !1836

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1833
  store i8 63, i8* %228, align 1, !dbg !1833, !tbaa !782
  br label %229, !dbg !1833

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %230, metadata !1638, metadata !DIExpression()), !dbg !1698
  %231 = icmp ult i64 %230, %129, !dbg !1837
  br i1 %231, label %232, label %234, !dbg !1840

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1837
  store i8 34, i8* %233, align 1, !dbg !1837, !tbaa !782
  br label %234, !dbg !1837

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %235, metadata !1638, metadata !DIExpression()), !dbg !1698
  %236 = icmp ult i64 %235, %129, !dbg !1841
  br i1 %236, label %237, label %239, !dbg !1844

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1841
  store i8 34, i8* %238, align 1, !dbg !1841, !tbaa !782
  br label %239, !dbg !1841

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %240, metadata !1638, metadata !DIExpression()), !dbg !1698
  %241 = icmp ult i64 %240, %129, !dbg !1845
  br i1 %241, label %242, label %244, !dbg !1848

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1845
  store i8 63, i8* %243, align 1, !dbg !1845, !tbaa !782
  br label %244, !dbg !1845

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %245, metadata !1638, metadata !DIExpression()), !dbg !1698
  br label %473, !dbg !1849

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1652, metadata !DIExpression()), !dbg !1765
  br label %256, !dbg !1850

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1652, metadata !DIExpression()), !dbg !1765
  br label %256, !dbg !1851

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1652, metadata !DIExpression()), !dbg !1765
  br label %254, !dbg !1852

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1652, metadata !DIExpression()), !dbg !1765
  br label %254, !dbg !1853

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1652, metadata !DIExpression()), !dbg !1765
  br label %256, !dbg !1854

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1652, metadata !DIExpression()), !dbg !1765
  br i1 %110, label %252, label %253, !dbg !1855

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1856

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1859

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8 %255, metadata !1652, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.label(metadata !1693), !dbg !1862
  br i1 %111, label %256, label %631, !dbg !1863

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1861
  call void @llvm.dbg.value(metadata i8 %257, metadata !1652, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.label(metadata !1694), !dbg !1865
  br i1 %102, label %495, label %473, !dbg !1866

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1867

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1868, !tbaa !782
  %261 = icmp eq i8 %260, 0, !dbg !1870
  br i1 %261, label %262, label %473, !dbg !1871

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1872
  br i1 %263, label %264, label %473, !dbg !1874

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1655, metadata !DIExpression()), !dbg !1765
  br label %265, !dbg !1875

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %266, metadata !1655, metadata !DIExpression()), !dbg !1765
  br i1 %111, label %473, label %631, !dbg !1876

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1655, metadata !DIExpression()), !dbg !1765
  br i1 %110, label %268, label %473, !dbg !1878

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1879

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1882
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1884
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1884
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %274, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %273, metadata !1639, metadata !DIExpression()), !dbg !1698
  %275 = icmp ult i64 %123, %274, !dbg !1885
  br i1 %275, label %276, label %278, !dbg !1888

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1885
  store i8 39, i8* %277, align 1, !dbg !1885, !tbaa !782
  br label %278, !dbg !1885

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %279, metadata !1638, metadata !DIExpression()), !dbg !1698
  %280 = icmp ult i64 %279, %274, !dbg !1889
  br i1 %280, label %281, label %283, !dbg !1892

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1889
  store i8 92, i8* %282, align 1, !dbg !1889, !tbaa !782
  br label %283, !dbg !1889

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %284, metadata !1638, metadata !DIExpression()), !dbg !1698
  %285 = icmp ult i64 %284, %274, !dbg !1893
  br i1 %285, label %286, label %288, !dbg !1896

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1893
  store i8 39, i8* %287, align 1, !dbg !1893, !tbaa !782
  br label %288, !dbg !1893

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %289, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1698
  br label %473, !dbg !1897

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1898

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1656, metadata !DIExpression()), !dbg !1899
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1900
  %293 = load i16*, i16** %292, align 8, !dbg !1900, !tbaa !621
  %294 = zext i8 %158 to i64, !dbg !1900
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1900
  %296 = load i16, i16* %295, align 2, !dbg !1900, !tbaa !1902
  %297 = lshr i16 %296, 14, !dbg !1903
  %298 = trunc i16 %297 to i8, !dbg !1903
  %299 = and i8 %298, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i8 %354, metadata !1659, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %355, metadata !1656, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %306, metadata !1631, metadata !DIExpression()), !dbg !1698
  %300 = icmp eq i8 %299, 0, !dbg !1904
  call void @llvm.dbg.value(metadata i1 %357, metadata !1655, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1765
  br label %359, !dbg !1905

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1906
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1660, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8* %23, metadata !1908, metadata !DIExpression()) #24, !dbg !1916
  call void @llvm.dbg.value(metadata i32 0, metadata !1914, metadata !DIExpression()) #24, !dbg !1916
  call void @llvm.dbg.value(metadata i64 8, metadata !1915, metadata !DIExpression()) #24, !dbg !1916
  store i64 0, i64* %10, align 8, !dbg !1918
  call void @llvm.dbg.value(metadata i64 0, metadata !1656, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, metadata !1659, metadata !DIExpression()), !dbg !1899
  %302 = icmp eq i64 %154, -1, !dbg !1919
  br i1 %302, label %303, label %305, !dbg !1921

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %304, metadata !1631, metadata !DIExpression()), !dbg !1698
  br label %305, !dbg !1923

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1765
  call void @llvm.dbg.value(metadata i64 %306, metadata !1631, metadata !DIExpression()), !dbg !1698
  br label %307, !dbg !1924

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1925
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1926
  call void @llvm.dbg.value(metadata i8 %309, metadata !1659, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %308, metadata !1656, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1927
  %310 = add i64 %308, %122, !dbg !1928
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1929
  %312 = sub i64 %306, %310, !dbg !1930
  call void @llvm.dbg.value(metadata i32* %12, metadata !1678, metadata !DIExpression(DW_OP_deref)), !dbg !1931
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %313, metadata !1681, metadata !DIExpression()), !dbg !1931
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1933

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1656, metadata !DIExpression()), !dbg !1899
  %315 = icmp ugt i64 %306, %310, !dbg !1934
  br i1 %315, label %316, label %341, !dbg !1936

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1937
  br label %318, !dbg !1937

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1656, metadata !DIExpression()), !dbg !1899
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1938
  %322 = load i8, i8* %321, align 1, !dbg !1938, !tbaa !782
  %323 = icmp eq i8 %322, 0, !dbg !1936
  br i1 %323, label %341, label %324, !dbg !1937

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %325, metadata !1656, metadata !DIExpression()), !dbg !1899
  %326 = add i64 %325, %122, !dbg !1940
  %327 = icmp ult i64 %326, %306, !dbg !1934
  br i1 %327, label %318, label %341, !dbg !1936, !llvm.loop !1941

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1942
  call void @llvm.dbg.value(metadata i64 1, metadata !1682, metadata !DIExpression()), !dbg !1943
  br i1 %330, label %331, label %344, !dbg !1942

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1682, metadata !DIExpression()), !dbg !1943
  %333 = add i64 %332, %310, !dbg !1944
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1947
  %335 = load i8, i8* %334, align 1, !dbg !1947, !tbaa !782
  %336 = sext i8 %335 to i32, !dbg !1947
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1948

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %338, metadata !1682, metadata !DIExpression()), !dbg !1943
  %339 = icmp eq i64 %338, %313, !dbg !1950
  br i1 %339, label %344, label %331, !dbg !1951, !llvm.loop !1952

340:                                              ; preds = %307
  br label %341, !dbg !1954

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1659, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 undef, metadata !1656, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1954
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1955, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %345, metadata !1678, metadata !DIExpression()), !dbg !1931
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1957
  %347 = icmp eq i32 %346, 0, !dbg !1957
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1958
  call void @llvm.dbg.value(metadata i8 %348, metadata !1659, metadata !DIExpression()), !dbg !1899
  %349 = add i64 %313, %308, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %349, metadata !1656, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1954
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1960
  %351 = icmp eq i32 %350, 0, !dbg !1961
  br i1 %351, label %307, label %353, !dbg !1962, !llvm.loop !1963

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1659, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 undef, metadata !1656, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1954
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1965
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1965
  call void @llvm.dbg.value(metadata i8 %354, metadata !1659, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %355, metadata !1656, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %306, metadata !1631, metadata !DIExpression()), !dbg !1698
  %356 = and i8 %354, 1, !dbg !1904
  %357 = icmp eq i8 %356, 0, !dbg !1904
  call void @llvm.dbg.value(metadata i1 %357, metadata !1655, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1765
  %358 = icmp ugt i64 %355, 1, !dbg !1966
  br i1 %358, label %367, label %359, !dbg !1905

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1967
  br i1 %364, label %367, label %365, !dbg !1967

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i8 %472, metadata !1655, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %441, metadata !1654, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %440, metadata !1653, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %439, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %438, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %371, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %437, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %375, metadata !1637, metadata !DIExpression()), !dbg !1698
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %372, metadata !1689, metadata !DIExpression()), !dbg !1969
  %373 = and i1 %102, %368
  br label %374, !dbg !1970

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1758
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1698
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1707
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1765
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1765
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1971
  call void @llvm.dbg.value(metadata i8 %380, metadata !1654, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %379, metadata !1653, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %378, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %377, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %376, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %375, metadata !1637, metadata !DIExpression()), !dbg !1698
  br i1 %373, label %381, label %427, !dbg !1972

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1977

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1765
  %383 = and i8 %377, 1, !dbg !1980
  %384 = icmp eq i8 %383, 0, !dbg !1980
  %385 = and i1 %110, %384, !dbg !1980
  br i1 %385, label %386, label %402, !dbg !1980

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1982
  br i1 %387, label %388, label %390, !dbg !1986

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1982
  store i8 39, i8* %389, align 1, !dbg !1982, !tbaa !782
  br label %390, !dbg !1982

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %391, metadata !1638, metadata !DIExpression()), !dbg !1698
  %392 = icmp ult i64 %391, %129, !dbg !1987
  br i1 %392, label %393, label %395, !dbg !1990

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1987
  store i8 36, i8* %394, align 1, !dbg !1987, !tbaa !782
  br label %395, !dbg !1987

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %396, metadata !1638, metadata !DIExpression()), !dbg !1698
  %397 = icmp ult i64 %396, %129, !dbg !1991
  br i1 %397, label %398, label %400, !dbg !1994

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1991
  store i8 39, i8* %399, align 1, !dbg !1991, !tbaa !782
  br label %400, !dbg !1991

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %401, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1698
  br label %402, !dbg !1995

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1698
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %404, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %403, metadata !1638, metadata !DIExpression()), !dbg !1698
  %405 = icmp ult i64 %403, %129, !dbg !1996
  br i1 %405, label %406, label %408, !dbg !1999

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1996
  store i8 92, i8* %407, align 1, !dbg !1996, !tbaa !782
  br label %408, !dbg !1996

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %409, metadata !1638, metadata !DIExpression()), !dbg !1698
  %410 = icmp ult i64 %409, %129, !dbg !2000
  br i1 %410, label %411, label %415, !dbg !2003

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2000
  %413 = or i8 %412, 48, !dbg !2000
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2000
  store i8 %413, i8* %414, align 1, !dbg !2000, !tbaa !782
  br label %415, !dbg !2000

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %416, metadata !1638, metadata !DIExpression()), !dbg !1698
  %417 = icmp ult i64 %416, %129, !dbg !2004
  br i1 %417, label %418, label %423, !dbg !2007

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2004
  %420 = and i8 %419, 7, !dbg !2004
  %421 = or i8 %420, 48, !dbg !2004
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2004
  store i8 %421, i8* %422, align 1, !dbg !2004, !tbaa !782
  br label %423, !dbg !2004

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %424, metadata !1638, metadata !DIExpression()), !dbg !1698
  %425 = and i8 %378, 7, !dbg !2008
  %426 = or i8 %425, 48, !dbg !2009
  call void @llvm.dbg.value(metadata i8 %426, metadata !1648, metadata !DIExpression()), !dbg !1765
  br label %436, !dbg !2010

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2011
  %429 = icmp eq i8 %428, 0, !dbg !2011
  br i1 %429, label %436, label %430, !dbg !2013

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2014
  br i1 %431, label %432, label %434, !dbg !2018

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2014
  store i8 92, i8* %433, align 1, !dbg !2014, !tbaa !782
  br label %434, !dbg !2014

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %435, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1765
  br label %436, !dbg !2019

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1698
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1707
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1765
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1765
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1765
  call void @llvm.dbg.value(metadata i8 %441, metadata !1654, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %440, metadata !1653, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %439, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %438, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %437, metadata !1638, metadata !DIExpression()), !dbg !1698
  %442 = add i64 %375, 1, !dbg !2020
  %443 = icmp ugt i64 %372, %442, !dbg !2022
  br i1 %443, label %444, label %471, !dbg !2023

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2024
  %446 = icmp ne i8 %445, 0, !dbg !2024
  %447 = and i8 %441, 1, !dbg !2024
  %448 = icmp eq i8 %447, 0, !dbg !2024
  %449 = and i1 %446, %448, !dbg !2024
  br i1 %449, label %450, label %461, !dbg !2024

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2027
  br i1 %451, label %452, label %454, !dbg !2031

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2027
  store i8 39, i8* %453, align 1, !dbg !2027, !tbaa !782
  br label %454, !dbg !2027

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %455, metadata !1638, metadata !DIExpression()), !dbg !1698
  %456 = icmp ult i64 %455, %129, !dbg !2032
  br i1 %456, label %457, label %459, !dbg !2035

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2032
  store i8 39, i8* %458, align 1, !dbg !2032, !tbaa !782
  br label %459, !dbg !2032

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %460, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1698
  br label %461, !dbg !2036

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2037
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %463, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %462, metadata !1638, metadata !DIExpression()), !dbg !1698
  %464 = icmp ult i64 %462, %129, !dbg !2038
  br i1 %464, label %465, label %467, !dbg !2041

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2038
  store i8 %439, i8* %466, align 1, !dbg !2038, !tbaa !782
  br label %467, !dbg !2038

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %468, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %442, metadata !1637, metadata !DIExpression()), !dbg !1698
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2042
  %470 = load i8, i8* %469, align 1, !dbg !2042, !tbaa !782
  call void @llvm.dbg.value(metadata i8 %470, metadata !1648, metadata !DIExpression()), !dbg !1765
  br label %374, !dbg !2043, !llvm.loop !2044

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1765
  call void @llvm.dbg.value(metadata i8 %472, metadata !1655, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %441, metadata !1654, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %440, metadata !1653, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %439, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %438, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %371, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %437, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %375, metadata !1637, metadata !DIExpression()), !dbg !1698
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1758
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1698
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1703
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2047
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1698
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1698
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1765
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1765
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1765
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %482, metadata !1655, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %481, metadata !1654, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %156, metadata !1653, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %480, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %479, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %478, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %477, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %476, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %475, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %474, metadata !1637, metadata !DIExpression()), !dbg !1698
  br i1 %116, label %494, label %484, !dbg !2048

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2050
  %486 = zext i8 %485 to i64, !dbg !2050
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2051
  %488 = load i32, i32* %487, align 4, !dbg !2051, !tbaa !795
  %489 = and i8 %480, 31, !dbg !2052
  %490 = zext i8 %489 to i32, !dbg !2052
  %491 = shl nuw i32 1, %490, !dbg !2053
  %492 = and i32 %488, %491, !dbg !2053
  %493 = icmp eq i32 %492, 0, !dbg !2053
  br i1 %493, label %494, label %495, !dbg !2054

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2055

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2056
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1698
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1703
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2047
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1707
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1708
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1765
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1765
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %503, metadata !1655, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %502, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %501, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %500, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %499, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %498, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %497, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %496, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1695), !dbg !2057
  br i1 %109, label %505, label %635, !dbg !2058

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1765
  %506 = and i8 %500, 1, !dbg !2060
  %507 = icmp eq i8 %506, 0, !dbg !2060
  %508 = and i1 %110, %507, !dbg !2060
  br i1 %508, label %509, label %525, !dbg !2060

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2062
  br i1 %510, label %511, label %513, !dbg !2066

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2062
  store i8 39, i8* %512, align 1, !dbg !2062, !tbaa !782
  br label %513, !dbg !2062

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %514, metadata !1638, metadata !DIExpression()), !dbg !1698
  %515 = icmp ult i64 %514, %504, !dbg !2067
  br i1 %515, label %516, label %518, !dbg !2070

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2067
  store i8 36, i8* %517, align 1, !dbg !2067, !tbaa !782
  br label %518, !dbg !2067

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %519, metadata !1638, metadata !DIExpression()), !dbg !1698
  %520 = icmp ult i64 %519, %504, !dbg !2071
  br i1 %520, label %521, label %523, !dbg !2074

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2071
  store i8 39, i8* %522, align 1, !dbg !2071, !tbaa !782
  br label %523, !dbg !2071

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %524, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1698
  br label %525, !dbg !2075

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1765
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %527, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %526, metadata !1638, metadata !DIExpression()), !dbg !1698
  %528 = icmp ult i64 %526, %504, !dbg !2076
  br i1 %528, label %529, label %531, !dbg !2079

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2076
  store i8 92, i8* %530, align 1, !dbg !2076, !tbaa !782
  br label %531, !dbg !2076

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %543, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %542, metadata !1655, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %541, metadata !1654, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %540, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %539, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %538, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %537, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %536, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %535, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %534, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1696), !dbg !2080
  br label %560, !dbg !2081

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2056
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1698
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1703
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2047
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1707
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1708
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2084
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1765
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1765
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %542, metadata !1655, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %541, metadata !1654, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %540, metadata !1648, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 %539, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %538, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %537, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %536, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %535, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %534, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1696), !dbg !2080
  %544 = and i8 %538, 1, !dbg !2081
  %545 = icmp ne i8 %544, 0, !dbg !2081
  %546 = and i8 %541, 1, !dbg !2081
  %547 = icmp eq i8 %546, 0, !dbg !2081
  %548 = and i1 %545, %547, !dbg !2081
  br i1 %548, label %549, label %560, !dbg !2081

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2085
  br i1 %550, label %551, label %553, !dbg !2089

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2085
  store i8 39, i8* %552, align 1, !dbg !2085, !tbaa !782
  br label %553, !dbg !2085

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %554, metadata !1638, metadata !DIExpression()), !dbg !1698
  %555 = icmp ult i64 %554, %543, !dbg !2090
  br i1 %555, label %556, label %558, !dbg !2093

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2090
  store i8 39, i8* %557, align 1, !dbg !2090, !tbaa !782
  br label %558, !dbg !2090

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %559, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1698
  br label %560, !dbg !2094

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1765
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1698
  call void @llvm.dbg.value(metadata i8 %569, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %568, metadata !1638, metadata !DIExpression()), !dbg !1698
  %570 = icmp ult i64 %568, %561, !dbg !2095
  br i1 %570, label %571, label %573, !dbg !2098

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2095
  store i8 %563, i8* %572, align 1, !dbg !2095, !tbaa !782
  br label %573, !dbg !2095

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %574, metadata !1638, metadata !DIExpression()), !dbg !1698
  %575 = icmp eq i8 %562, 0, !dbg !2099
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2101
  call void @llvm.dbg.value(metadata i8 %576, metadata !1647, metadata !DIExpression()), !dbg !1698
  br label %577, !dbg !2102

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2056
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1698
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1703
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2047
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1707
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1698
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1709
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %584, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %583, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %582, metadata !1645, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %581, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %580, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %579, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %578, metadata !1637, metadata !DIExpression()), !dbg !1698
  %586 = add i64 %578, 1, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %586, metadata !1637, metadata !DIExpression()), !dbg !1698
  br label %121, !dbg !2104, !llvm.loop !2105

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2107
  %590 = and i1 %110, %589, !dbg !2109
  %591 = xor i1 %590, true, !dbg !2109
  %592 = or i1 %109, %591, !dbg !2109
  br i1 %592, label %593, label %635, !dbg !2109

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2110
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2110
  br i1 %597, label %598, label %607, !dbg !2110

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2112
  %600 = icmp eq i8 %599, 0, !dbg !2112
  br i1 %600, label %603, label %601, !dbg !2115

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2116
  br label %652, !dbg !2117

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2118
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2120
  br i1 %606, label %26, label %607, !dbg !2120

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2121
  %610 = and i1 %609, %608, !dbg !2123
  br i1 %610, label %611, label %626, !dbg !2123

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %123, metadata !1638, metadata !DIExpression()), !dbg !1698
  %612 = load i8, i8* %97, align 1, !dbg !2124, !tbaa !782
  %613 = icmp eq i8 %612, 0, !dbg !2127
  br i1 %613, label %626, label %614, !dbg !2127

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %617, metadata !1638, metadata !DIExpression()), !dbg !1698
  %618 = icmp ult i64 %617, %129, !dbg !2128
  br i1 %618, label %619, label %621, !dbg !2131

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2128
  store i8 %615, i8* %620, align 1, !dbg !2128, !tbaa !782
  br label %621, !dbg !2128

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %622, metadata !1638, metadata !DIExpression()), !dbg !1698
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2132
  call void @llvm.dbg.value(metadata i8* %623, metadata !1640, metadata !DIExpression()), !dbg !1698
  %624 = load i8, i8* %623, align 1, !dbg !2124, !tbaa !782
  %625 = icmp eq i8 %624, 0, !dbg !2127
  br i1 %625, label %626, label %614, !dbg !2127, !llvm.loop !2133

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1740
  call void @llvm.dbg.value(metadata i64 %627, metadata !1638, metadata !DIExpression()), !dbg !1698
  %628 = icmp ult i64 %627, %129, !dbg !2135
  br i1 %628, label %629, label %652, !dbg !2137

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2138
  store i8 0, i8* %630, align 1, !dbg !2139, !tbaa !782
  br label %652, !dbg !2138

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %637, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1697), !dbg !2140
  %633 = icmp eq i8 %101, 0, !dbg !2141
  %634 = select i1 %633, i32 2, i32 4, !dbg !2141
  br label %642, !dbg !2141

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1629, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %637, metadata !1631, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1697), !dbg !2140
  %639 = icmp eq i32 %93, 2, !dbg !2143
  %640 = icmp eq i8 %636, 0, !dbg !2141
  %641 = select i1 %640, i32 2, i32 4, !dbg !2141
  br i1 %639, label %642, label %646, !dbg !2141

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2141

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1632, metadata !DIExpression()), !dbg !1698
  %650 = and i32 %5, -3, !dbg !2144
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2145
  br label %652, !dbg !2146

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2147
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2152, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %1, metadata !2153, metadata !DIExpression()), !dbg !2156
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %3, metadata !2154, metadata !DIExpression()), !dbg !2156
  %4 = icmp eq i8* %3, %0, !dbg !2158
  br i1 %4, label %5, label %72, !dbg !2160

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !2161
  call void @llvm.dbg.value(metadata i8* %6, metadata !2155, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8* %6, metadata !2162, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8* undef, metadata !2168, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 85, metadata !2169, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 84, metadata !2170, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 70, metadata !2171, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 45, metadata !2172, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 56, metadata !2173, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 0, metadata !2174, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 0, metadata !2175, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 0, metadata !2177, metadata !DIExpression()), !dbg !2178
  %7 = load i8, i8* %6, align 1, !dbg !2181, !tbaa !782
  %8 = and i8 %7, -33, !dbg !2181
  %9 = sext i8 %8 to i32, !dbg !2181
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2181

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2183, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8* undef, metadata !2188, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 84, metadata !2189, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 70, metadata !2190, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 45, metadata !2191, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 56, metadata !2192, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 0, metadata !2193, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 0, metadata !2194, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2197
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2201
  %12 = load i8, i8* %11, align 1, !dbg !2201, !tbaa !782
  %13 = and i8 %12, -33, !dbg !2201
  %14 = icmp eq i8 %13, 84, !dbg !2201
  br i1 %14, label %15, label %69, !dbg !2201

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2203, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8* undef, metadata !2208, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 70, metadata !2209, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 45, metadata !2210, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 56, metadata !2211, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2212, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2213, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2214, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2216
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2220
  %17 = load i8, i8* %16, align 1, !dbg !2220, !tbaa !782
  %18 = and i8 %17, -33, !dbg !2220
  %19 = icmp eq i8 %18, 70, !dbg !2220
  br i1 %19, label %20, label %69, !dbg !2220

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2222, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* undef, metadata !2227, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 45, metadata !2228, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 56, metadata !2229, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2230, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2231, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2232, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8 0, metadata !2233, metadata !DIExpression()), !dbg !2234
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2238
  %22 = load i8, i8* %21, align 1, !dbg !2238, !tbaa !782
  %23 = icmp eq i8 %22, 45, !dbg !2238
  br i1 %23, label %24, label %69, !dbg !2240

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2241, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8* undef, metadata !2246, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 56, metadata !2247, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2248, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2249, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.value(metadata i8 0, metadata !2251, metadata !DIExpression()), !dbg !2252
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2256
  %26 = load i8, i8* %25, align 1, !dbg !2256, !tbaa !782
  %27 = icmp eq i8 %26, 56, !dbg !2256
  br i1 %27, label %28, label %69, !dbg !2258

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2259, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8* undef, metadata !2264, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8 0, metadata !2266, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8 0, metadata !2267, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8 0, metadata !2268, metadata !DIExpression()), !dbg !2269
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2273
  %30 = load i8, i8* %29, align 1, !dbg !2273, !tbaa !782
  %31 = icmp eq i8 %30, 0, !dbg !2273
  br i1 %31, label %32, label %69, !dbg !2275

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2276, !tbaa !782
  %34 = icmp eq i8 %33, 96, !dbg !2277
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !2276
  br label %72, !dbg !2278

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2183, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8* undef, metadata !2188, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 66, metadata !2189, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 49, metadata !2190, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 56, metadata !2191, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 48, metadata !2192, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 51, metadata !2193, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 48, metadata !2194, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2279
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2283
  %38 = load i8, i8* %37, align 1, !dbg !2283, !tbaa !782
  %39 = and i8 %38, -33, !dbg !2283
  %40 = icmp eq i8 %39, 66, !dbg !2283
  br i1 %40, label %41, label %69, !dbg !2283

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2203, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8* undef, metadata !2208, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 49, metadata !2209, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 56, metadata !2210, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 48, metadata !2211, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 51, metadata !2212, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 48, metadata !2213, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2214, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2284
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2286
  %43 = load i8, i8* %42, align 1, !dbg !2286, !tbaa !782
  %44 = icmp eq i8 %43, 49, !dbg !2286
  br i1 %44, label %45, label %69, !dbg !2287

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2222, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* undef, metadata !2227, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 56, metadata !2228, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 48, metadata !2229, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 51, metadata !2230, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 48, metadata !2231, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 0, metadata !2232, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 0, metadata !2233, metadata !DIExpression()), !dbg !2288
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2290
  %47 = load i8, i8* %46, align 1, !dbg !2290, !tbaa !782
  %48 = icmp eq i8 %47, 56, !dbg !2290
  br i1 %48, label %49, label %69, !dbg !2291

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2241, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* undef, metadata !2246, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 48, metadata !2247, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 51, metadata !2248, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 48, metadata !2249, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2250, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2251, metadata !DIExpression()), !dbg !2292
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2294
  %51 = load i8, i8* %50, align 1, !dbg !2294, !tbaa !782
  %52 = icmp eq i8 %51, 48, !dbg !2294
  br i1 %52, label %53, label %69, !dbg !2295

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2259, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8* undef, metadata !2264, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 51, metadata !2265, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 48, metadata !2266, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 0, metadata !2267, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 0, metadata !2268, metadata !DIExpression()), !dbg !2296
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2298
  %55 = load i8, i8* %54, align 1, !dbg !2298, !tbaa !782
  %56 = icmp eq i8 %55, 51, !dbg !2298
  br i1 %56, label %57, label %69, !dbg !2299

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2300, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* undef, metadata !2305, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 48, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 0, metadata !2308, metadata !DIExpression()), !dbg !2309
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2313
  %59 = load i8, i8* %58, align 1, !dbg !2313, !tbaa !782
  %60 = icmp eq i8 %59, 48, !dbg !2313
  br i1 %60, label %61, label %69, !dbg !2315

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2316, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8* undef, metadata !2321, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2324
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2328
  %63 = load i8, i8* %62, align 1, !dbg !2328, !tbaa !782
  %64 = icmp eq i8 %63, 0, !dbg !2328
  br i1 %64, label %65, label %69, !dbg !2330

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2331, !tbaa !782
  %67 = icmp eq i8 %66, 96, !dbg !2332
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !2331
  br label %72, !dbg !2333

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2334
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !2335
  br label %72, !dbg !2336

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2156
  ret i8* %73, !dbg !2337
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !2338 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2342 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %1, metadata !2353, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2354, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %0, metadata !2356, metadata !DIExpression()) #24, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %1, metadata !2361, metadata !DIExpression()) #24, !dbg !2369
  call void @llvm.dbg.value(metadata i64* null, metadata !2362, metadata !DIExpression()) #24, !dbg !2369
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2363, metadata !DIExpression()) #24, !dbg !2369
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2371
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2364, metadata !DIExpression()) #24, !dbg !2369
  %6 = tail call i32* @__errno_location() #28, !dbg !2372
  %7 = load i32, i32* %6, align 4, !dbg !2372, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %7, metadata !2365, metadata !DIExpression()) #24, !dbg !2369
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2373
  %9 = load i32, i32* %8, align 4, !dbg !2373, !tbaa !1572
  %10 = or i32 %9, 1, !dbg !2374
  call void @llvm.dbg.value(metadata i32 %10, metadata !2366, metadata !DIExpression()) #24, !dbg !2369
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2375
  %12 = load i32, i32* %11, align 8, !dbg !2375, !tbaa !1521
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2376
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2377
  %15 = load i8*, i8** %14, align 8, !dbg !2377, !tbaa !1594
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2378
  %17 = load i8*, i8** %16, align 8, !dbg !2378, !tbaa !1597
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !2379
  %19 = add i64 %18, 1, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %19, metadata !2367, metadata !DIExpression()) #24, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %19, metadata !2381, metadata !DIExpression()) #24, !dbg !2386
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !2388
  call void @llvm.dbg.value(metadata i8* %20, metadata !2368, metadata !DIExpression()) #24, !dbg !2369
  %21 = load i32, i32* %11, align 8, !dbg !2389, !tbaa !1521
  %22 = load i8*, i8** %14, align 8, !dbg !2390, !tbaa !1594
  %23 = load i8*, i8** %16, align 8, !dbg !2391, !tbaa !1597
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !2392
  store i32 %7, i32* %6, align 4, !dbg !2393, !tbaa !795
  ret i8* %20, !dbg !2394
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2357 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2356, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %1, metadata !2361, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64* %2, metadata !2362, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2363, metadata !DIExpression()), !dbg !2395
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2396
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2364, metadata !DIExpression()), !dbg !2395
  %7 = tail call i32* @__errno_location() #28, !dbg !2397
  %8 = load i32, i32* %7, align 4, !dbg !2397, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %8, metadata !2365, metadata !DIExpression()), !dbg !2395
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2398
  %10 = load i32, i32* %9, align 4, !dbg !2398, !tbaa !1572
  %11 = icmp eq i64* %2, null, !dbg !2399
  %12 = zext i1 %11 to i32, !dbg !2399
  %13 = or i32 %10, %12, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %13, metadata !2366, metadata !DIExpression()), !dbg !2395
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2401
  %15 = load i32, i32* %14, align 8, !dbg !2401, !tbaa !1521
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2402
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2403
  %18 = load i8*, i8** %17, align 8, !dbg !2403, !tbaa !1594
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2404
  %20 = load i8*, i8** %19, align 8, !dbg !2404, !tbaa !1597
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2405
  %22 = add i64 %21, 1, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %22, metadata !2367, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %22, metadata !2381, metadata !DIExpression()) #24, !dbg !2407
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !2409
  call void @llvm.dbg.value(metadata i8* %23, metadata !2368, metadata !DIExpression()), !dbg !2395
  %24 = load i32, i32* %14, align 8, !dbg !2410, !tbaa !1521
  %25 = load i8*, i8** %17, align 8, !dbg !2411, !tbaa !1594
  %26 = load i8*, i8** %19, align 8, !dbg !2412, !tbaa !1597
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2413
  store i32 %8, i32* %7, align 4, !dbg !2414, !tbaa !795
  br i1 %11, label %29, label %28, !dbg !2415

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2416, !tbaa !2418
  br label %29, !dbg !2419

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2421 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2425, !tbaa !621
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2423, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i32 1, metadata !2424, metadata !DIExpression()), !dbg !2426
  %2 = load i32, i32* @nslots, align 4, !dbg !2427, !tbaa !795
  %3 = icmp sgt i32 %2, 1, !dbg !2430
  br i1 %3, label %4, label %12, !dbg !2431

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2430
  br label %6, !dbg !2431

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2424, metadata !DIExpression()), !dbg !2426
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2432
  %9 = load i8*, i8** %8, align 8, !dbg !2432, !tbaa !2433
  tail call void @free(i8* %9) #24, !dbg !2435
  %10 = add nuw nsw i64 %7, 1, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %10, metadata !2424, metadata !DIExpression()), !dbg !2426
  %11 = icmp eq i64 %10, %5, !dbg !2430
  br i1 %11, label %12, label %6, !dbg !2431, !llvm.loop !2437

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2439
  %14 = load i8*, i8** %13, align 8, !dbg !2439, !tbaa !2433
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2441
  br i1 %15, label %17, label %16, !dbg !2442

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !2443
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2445, !tbaa !2446
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2447, !tbaa !2433
  br label %17, !dbg !2448

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2449
  br i1 %18, label %21, label %19, !dbg !2451

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2452
  tail call void @free(i8* %20) #24, !dbg !2454
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2455, !tbaa !621
  br label %21, !dbg !2456

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2457, !tbaa !795
  ret void, !dbg !2458
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2459 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* %1, metadata !2462, metadata !DIExpression()), !dbg !2463
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2464
  ret i8* %3, !dbg !2465
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2470, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* %1, metadata !2471, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %2, metadata !2472, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2473, metadata !DIExpression()), !dbg !2485
  %5 = tail call i32* @__errno_location() #28, !dbg !2486
  %6 = load i32, i32* %5, align 4, !dbg !2486, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %6, metadata !2474, metadata !DIExpression()), !dbg !2485
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2487, !tbaa !621
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2475, metadata !DIExpression()), !dbg !2485
  %8 = icmp slt i32 %0, 0, !dbg !2488
  br i1 %8, label %9, label %10, !dbg !2490

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2491
  unreachable, !dbg !2491

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2492, !tbaa !795
  %12 = icmp sgt i32 %11, %0, !dbg !2493
  br i1 %12, label %34, label %13, !dbg !2494

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2495
  call void @llvm.dbg.value(metadata i1 %14, metadata !2476, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2496
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2479, metadata !DIExpression()), !dbg !2496
  %15 = icmp eq i32 %0, 2147483647, !dbg !2497
  br i1 %15, label %16, label %17, !dbg !2499

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2500
  unreachable, !dbg !2500

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2501
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2501
  %20 = add nuw nsw i32 %0, 1, !dbg !2502
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2503
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !2504
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2504
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2475, metadata !DIExpression()), !dbg !2485
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2505, !tbaa !621
  br i1 %14, label %25, label %26, !dbg !2506

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2507, !tbaa.struct !2509
  br label %26, !dbg !2510

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2511, !tbaa !795
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2512
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2513
  %31 = sub nsw i32 %20, %27, !dbg !2514
  %32 = sext i32 %31 to i64, !dbg !2515
  %33 = shl nsw i64 %32, 4, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %30, metadata !1908, metadata !DIExpression()) #24, !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !1914, metadata !DIExpression()) #24, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %33, metadata !1915, metadata !DIExpression()) #24, !dbg !2517
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !2519
  store i32 %20, i32* @nslots, align 4, !dbg !2520, !tbaa !795
  br label %34, !dbg !2521

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2485
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2475, metadata !DIExpression()), !dbg !2485
  %36 = zext i32 %0 to i64, !dbg !2522
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2523
  %38 = load i64, i64* %37, align 8, !dbg !2523, !tbaa !2446
  call void @llvm.dbg.value(metadata i64 %38, metadata !2480, metadata !DIExpression()), !dbg !2524
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2525
  %40 = load i8*, i8** %39, align 8, !dbg !2525, !tbaa !2433
  call void @llvm.dbg.value(metadata i8* %40, metadata !2482, metadata !DIExpression()), !dbg !2524
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2526
  %42 = load i32, i32* %41, align 4, !dbg !2526, !tbaa !1572
  %43 = or i32 %42, 1, !dbg !2527
  call void @llvm.dbg.value(metadata i32 %43, metadata !2483, metadata !DIExpression()), !dbg !2524
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2528
  %45 = load i32, i32* %44, align 8, !dbg !2528, !tbaa !1521
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2529
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2530
  %48 = load i8*, i8** %47, align 8, !dbg !2530, !tbaa !1594
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2531
  %50 = load i8*, i8** %49, align 8, !dbg !2531, !tbaa !1597
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2532
  call void @llvm.dbg.value(metadata i64 %51, metadata !2484, metadata !DIExpression()), !dbg !2524
  %52 = icmp ugt i64 %38, %51, !dbg !2533
  br i1 %52, label %63, label %53, !dbg !2535

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2536
  call void @llvm.dbg.value(metadata i64 %54, metadata !2480, metadata !DIExpression()), !dbg !2524
  store i64 %54, i64* %37, align 8, !dbg !2538, !tbaa !2446
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2539
  br i1 %55, label %57, label %56, !dbg !2541

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !2542
  br label %57, !dbg !2542

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2381, metadata !DIExpression()) #24, !dbg !2543
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !2545
  call void @llvm.dbg.value(metadata i8* %58, metadata !2482, metadata !DIExpression()), !dbg !2524
  store i8* %58, i8** %39, align 8, !dbg !2546, !tbaa !2433
  %59 = load i32, i32* %44, align 8, !dbg !2547, !tbaa !1521
  %60 = load i8*, i8** %47, align 8, !dbg !2548, !tbaa !1594
  %61 = load i8*, i8** %49, align 8, !dbg !2549, !tbaa !1597
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2550
  br label %63, !dbg !2551

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2524
  call void @llvm.dbg.value(metadata i8* %64, metadata !2482, metadata !DIExpression()), !dbg !2524
  store i32 %6, i32* %5, align 4, !dbg !2552, !tbaa !795
  ret i8* %64, !dbg !2553
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %1, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %2, metadata !2560, metadata !DIExpression()), !dbg !2561
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2562
  ret i8* %4, !dbg !2563
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2564 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 0, metadata !2461, metadata !DIExpression()) #24, !dbg !2568
  call void @llvm.dbg.value(metadata i8* %0, metadata !2462, metadata !DIExpression()) #24, !dbg !2568
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2570
  ret i8* %2, !dbg !2571
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2572 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2576, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2577, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 0, metadata !2558, metadata !DIExpression()) #24, !dbg !2579
  call void @llvm.dbg.value(metadata i8* %0, metadata !2559, metadata !DIExpression()) #24, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %1, metadata !2560, metadata !DIExpression()) #24, !dbg !2579
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2581
  ret i8* %3, !dbg !2582
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2583 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %1, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* %2, metadata !2589, metadata !DIExpression()), !dbg !2591
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2592
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2592
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2590, metadata !DIExpression()), !dbg !2593
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2594), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %1, metadata !2598, metadata !DIExpression()) #24, !dbg !2604
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2603, metadata !DIExpression()) #24, !dbg !2606
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2606, !alias.scope !2594
  %6 = icmp eq i32 %1, 10, !dbg !2607
  br i1 %6, label %7, label %8, !dbg !2609

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2610, !noalias !2594
  unreachable, !dbg !2610

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2611
  store i32 %1, i32* %9, align 8, !dbg !2612, !tbaa !1521, !alias.scope !2594
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2614
  ret i8* %10, !dbg !2615
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2616 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %1, metadata !2621, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %2, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %3, metadata !2623, metadata !DIExpression()), !dbg !2625
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2626
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2624, metadata !DIExpression()), !dbg !2627
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628), !dbg !2631
  call void @llvm.dbg.value(metadata i32 %1, metadata !2598, metadata !DIExpression()) #24, !dbg !2632
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2603, metadata !DIExpression()) #24, !dbg !2634
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2634, !alias.scope !2628
  %7 = icmp eq i32 %1, 10, !dbg !2635
  br i1 %7, label %8, label %9, !dbg !2636

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2637, !noalias !2628
  unreachable, !dbg !2637

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2638
  store i32 %1, i32* %10, align 8, !dbg !2639, !tbaa !1521, !alias.scope !2628
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2640
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2641
  ret i8* %11, !dbg !2642
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2643 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2648, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 0, metadata !2587, metadata !DIExpression()) #24, !dbg !2650
  call void @llvm.dbg.value(metadata i32 %0, metadata !2588, metadata !DIExpression()) #24, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %1, metadata !2589, metadata !DIExpression()) #24, !dbg !2650
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2652
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2652
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2590, metadata !DIExpression()) #24, !dbg !2653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654) #24, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()) #24, !dbg !2658
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2603, metadata !DIExpression()) #24, !dbg !2660
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2660, !alias.scope !2654
  %5 = icmp eq i32 %0, 10, !dbg !2661
  br i1 %5, label %6, label %7, !dbg !2662

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2663, !noalias !2654
  unreachable, !dbg !2663

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2664
  store i32 %0, i32* %8, align 8, !dbg !2665, !tbaa !1521, !alias.scope !2654
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2666
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2667
  ret i8* %9, !dbg !2668
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2669 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2673, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* %1, metadata !2674, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 %2, metadata !2675, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()) #24, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %0, metadata !2621, metadata !DIExpression()) #24, !dbg !2677
  call void @llvm.dbg.value(metadata i8* %1, metadata !2622, metadata !DIExpression()) #24, !dbg !2677
  call void @llvm.dbg.value(metadata i64 %2, metadata !2623, metadata !DIExpression()) #24, !dbg !2677
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2679
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2679
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2624, metadata !DIExpression()) #24, !dbg !2680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681) #24, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()) #24, !dbg !2685
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2603, metadata !DIExpression()) #24, !dbg !2687
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2687, !alias.scope !2681
  %6 = icmp eq i32 %0, 10, !dbg !2688
  br i1 %6, label %7, label %8, !dbg !2689

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2690, !noalias !2681
  unreachable, !dbg !2690

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2691
  store i32 %0, i32* %9, align 8, !dbg !2692, !tbaa !1521, !alias.scope !2681
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2693
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2694
  ret i8* %10, !dbg !2695
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2696 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 %2, metadata !2702, metadata !DIExpression()), !dbg !2704
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2705
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2705
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2703, metadata !DIExpression()), !dbg !2706
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2707, !tbaa.struct !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1539, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 %2, metadata !1540, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 1, metadata !1541, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 %2, metadata !1542, metadata !DIExpression()), !dbg !2709
  %6 = lshr i8 %2, 5, !dbg !2711
  %7 = zext i8 %6 to i64, !dbg !2711
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2712
  call void @llvm.dbg.value(metadata i32* %8, metadata !1543, metadata !DIExpression()), !dbg !2709
  %9 = and i8 %2, 31, !dbg !2713
  %10 = zext i8 %9 to i32, !dbg !2713
  call void @llvm.dbg.value(metadata i32 %10, metadata !1545, metadata !DIExpression()), !dbg !2709
  %11 = load i32, i32* %8, align 4, !dbg !2714, !tbaa !795
  %12 = lshr i32 %11, %10, !dbg !2715
  %13 = and i32 %12, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i32 %13, metadata !1546, metadata !DIExpression()), !dbg !2709
  %14 = xor i32 %13, 1, !dbg !2717
  %15 = shl i32 %14, %10, !dbg !2718
  %16 = xor i32 %15, %11, !dbg !2719
  store i32 %16, i32* %8, align 4, !dbg !2719, !tbaa !795
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2721
  ret i8* %17, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2723 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 %1, metadata !2728, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #24, !dbg !2730
  call void @llvm.dbg.value(metadata i64 -1, metadata !2701, metadata !DIExpression()) #24, !dbg !2730
  call void @llvm.dbg.value(metadata i8 %1, metadata !2702, metadata !DIExpression()) #24, !dbg !2730
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2732
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2703, metadata !DIExpression()) #24, !dbg !2733
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2734, !tbaa.struct !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1539, metadata !DIExpression()) #24, !dbg !2735
  call void @llvm.dbg.value(metadata i8 %1, metadata !1540, metadata !DIExpression()) #24, !dbg !2735
  call void @llvm.dbg.value(metadata i32 1, metadata !1541, metadata !DIExpression()) #24, !dbg !2735
  call void @llvm.dbg.value(metadata i8 %1, metadata !1542, metadata !DIExpression()) #24, !dbg !2735
  %5 = lshr i8 %1, 5, !dbg !2737
  %6 = zext i8 %5 to i64, !dbg !2737
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2738
  call void @llvm.dbg.value(metadata i32* %7, metadata !1543, metadata !DIExpression()) #24, !dbg !2735
  %8 = and i8 %1, 31, !dbg !2739
  %9 = zext i8 %8 to i32, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %9, metadata !1545, metadata !DIExpression()) #24, !dbg !2735
  %10 = load i32, i32* %7, align 4, !dbg !2740, !tbaa !795
  %11 = lshr i32 %10, %9, !dbg !2741
  %12 = and i32 %11, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i32 %12, metadata !1546, metadata !DIExpression()) #24, !dbg !2735
  %13 = xor i32 %12, 1, !dbg !2743
  %14 = shl i32 %13, %9, !dbg !2744
  %15 = xor i32 %14, %10, !dbg !2745
  store i32 %15, i32* %7, align 4, !dbg !2745, !tbaa !795
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2746
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2747
  ret i8* %16, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2749 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %0, metadata !2727, metadata !DIExpression()) #24, !dbg !2753
  call void @llvm.dbg.value(metadata i8 58, metadata !2728, metadata !DIExpression()) #24, !dbg !2753
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #24, !dbg !2755
  call void @llvm.dbg.value(metadata i64 -1, metadata !2701, metadata !DIExpression()) #24, !dbg !2755
  call void @llvm.dbg.value(metadata i8 58, metadata !2702, metadata !DIExpression()) #24, !dbg !2755
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2757
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2757
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2703, metadata !DIExpression()) #24, !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2759, !tbaa.struct !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1539, metadata !DIExpression()) #24, !dbg !2760
  call void @llvm.dbg.value(metadata i8 58, metadata !1540, metadata !DIExpression()) #24, !dbg !2760
  call void @llvm.dbg.value(metadata i32 1, metadata !1541, metadata !DIExpression()) #24, !dbg !2760
  call void @llvm.dbg.value(metadata i8 58, metadata !1542, metadata !DIExpression()) #24, !dbg !2760
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2762
  call void @llvm.dbg.value(metadata i32* %4, metadata !1543, metadata !DIExpression()) #24, !dbg !2760
  call void @llvm.dbg.value(metadata i32 26, metadata !1545, metadata !DIExpression()) #24, !dbg !2760
  %5 = load i32, i32* %4, align 4, !dbg !2763, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %5, metadata !1546, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2760
  %6 = or i32 %5, 67108864, !dbg !2764
  store i32 %6, i32* %4, align 4, !dbg !2764, !tbaa !795
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2765
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2766
  ret i8* %7, !dbg !2767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2768 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2770, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 %1, metadata !2771, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #24, !dbg !2773
  call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()) #24, !dbg !2773
  call void @llvm.dbg.value(metadata i8 58, metadata !2702, metadata !DIExpression()) #24, !dbg !2773
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2775
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2775
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2703, metadata !DIExpression()) #24, !dbg !2776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2777, !tbaa.struct !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1539, metadata !DIExpression()) #24, !dbg !2778
  call void @llvm.dbg.value(metadata i8 58, metadata !1540, metadata !DIExpression()) #24, !dbg !2778
  call void @llvm.dbg.value(metadata i32 1, metadata !1541, metadata !DIExpression()) #24, !dbg !2778
  call void @llvm.dbg.value(metadata i8 58, metadata !1542, metadata !DIExpression()) #24, !dbg !2778
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2780
  call void @llvm.dbg.value(metadata i32* %5, metadata !1543, metadata !DIExpression()) #24, !dbg !2778
  call void @llvm.dbg.value(metadata i32 26, metadata !1545, metadata !DIExpression()) #24, !dbg !2778
  %6 = load i32, i32* %5, align 4, !dbg !2781, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %6, metadata !1546, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2778
  %7 = or i32 %6, 67108864, !dbg !2782
  store i32 %7, i32* %5, align 4, !dbg !2782, !tbaa !795
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2783
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2784
  ret i8* %8, !dbg !2785
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2786 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2603, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2792
  call void @llvm.dbg.value(metadata i32 %0, metadata !2788, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 %1, metadata !2789, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %2, metadata !2790, metadata !DIExpression()), !dbg !2794
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2795
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2791, metadata !DIExpression()), !dbg !2796
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2797
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2798), !dbg !2797
  call void @llvm.dbg.value(metadata i32 %1, metadata !2598, metadata !DIExpression()) #24, !dbg !2801
  call void @llvm.dbg.value(metadata i32 0, metadata !2603, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2801
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2792, !alias.scope !2798
  %8 = icmp eq i32 %1, 10, !dbg !2802
  br i1 %8, label %9, label %10, !dbg !2803

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2804, !noalias !2798
  unreachable, !dbg !2804

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2603, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2801
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2797
  store i32 %1, i32* %11, align 8, !dbg !2797, !tbaa.struct !2708
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2797
  %13 = bitcast i32* %12 to i8*, !dbg !2797
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2797, !tbaa.struct !2805
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2797
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1539, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8 58, metadata !1540, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 1, metadata !1541, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8 58, metadata !1542, metadata !DIExpression()), !dbg !2806
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2808
  call void @llvm.dbg.value(metadata i32* %14, metadata !1543, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 26, metadata !1545, metadata !DIExpression()), !dbg !2806
  %15 = load i32, i32* %14, align 4, !dbg !2809, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %15, metadata !1546, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2806
  %16 = or i32 %15, 67108864, !dbg !2810
  store i32 %16, i32* %14, align 4, !dbg !2810, !tbaa !795
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2811
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2812
  ret i8* %17, !dbg !2813
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2814 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2818, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %1, metadata !2819, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %2, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %3, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %0, metadata !2823, metadata !DIExpression()) #24, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %1, metadata !2828, metadata !DIExpression()) #24, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %2, metadata !2829, metadata !DIExpression()) #24, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %3, metadata !2830, metadata !DIExpression()) #24, !dbg !2833
  call void @llvm.dbg.value(metadata i64 -1, metadata !2831, metadata !DIExpression()) #24, !dbg !2833
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2835
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2835
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2832, metadata !DIExpression()) #24, !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2837, !tbaa.struct !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1579, metadata !DIExpression()) #24, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %1, metadata !1580, metadata !DIExpression()) #24, !dbg !2838
  call void @llvm.dbg.value(metadata i8* %2, metadata !1581, metadata !DIExpression()) #24, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1579, metadata !DIExpression()) #24, !dbg !2838
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2840
  store i32 10, i32* %7, align 8, !dbg !2841, !tbaa !1521
  %8 = icmp ne i8* %1, null, !dbg !2842
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2843
  br i1 %10, label %12, label %11, !dbg !2843

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2844
  unreachable, !dbg !2844

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2845
  store i8* %1, i8** %13, align 8, !dbg !2846, !tbaa !1594
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2847
  store i8* %2, i8** %14, align 8, !dbg !2848, !tbaa !1597
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2850
  ret i8* %15, !dbg !2851
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2824 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2823, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8* %1, metadata !2828, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8* %2, metadata !2829, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8* %3, metadata !2830, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %4, metadata !2831, metadata !DIExpression()), !dbg !2852
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2853
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2853
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2832, metadata !DIExpression()), !dbg !2854
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2855, !tbaa.struct !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1579, metadata !DIExpression()) #24, !dbg !2856
  call void @llvm.dbg.value(metadata i8* %1, metadata !1580, metadata !DIExpression()) #24, !dbg !2856
  call void @llvm.dbg.value(metadata i8* %2, metadata !1581, metadata !DIExpression()) #24, !dbg !2856
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1579, metadata !DIExpression()) #24, !dbg !2856
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2858
  store i32 10, i32* %8, align 8, !dbg !2859, !tbaa !1521
  %9 = icmp ne i8* %1, null, !dbg !2860
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2861
  br i1 %11, label %13, label %12, !dbg !2861

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2862
  unreachable, !dbg !2862

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2863
  store i8* %1, i8** %14, align 8, !dbg !2864, !tbaa !1594
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2865
  store i8* %2, i8** %15, align 8, !dbg !2866, !tbaa !1597
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2867
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2868
  ret i8* %16, !dbg !2869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2870 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* %1, metadata !2875, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* %2, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i32 0, metadata !2818, metadata !DIExpression()) #24, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %0, metadata !2819, metadata !DIExpression()) #24, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %1, metadata !2820, metadata !DIExpression()) #24, !dbg !2878
  call void @llvm.dbg.value(metadata i8* %2, metadata !2821, metadata !DIExpression()) #24, !dbg !2878
  call void @llvm.dbg.value(metadata i32 0, metadata !2823, metadata !DIExpression()) #24, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %0, metadata !2828, metadata !DIExpression()) #24, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %1, metadata !2829, metadata !DIExpression()) #24, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %2, metadata !2830, metadata !DIExpression()) #24, !dbg !2880
  call void @llvm.dbg.value(metadata i64 -1, metadata !2831, metadata !DIExpression()) #24, !dbg !2880
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2882
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2832, metadata !DIExpression()) #24, !dbg !2883
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2884, !tbaa.struct !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1579, metadata !DIExpression()) #24, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %0, metadata !1580, metadata !DIExpression()) #24, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %1, metadata !1581, metadata !DIExpression()) #24, !dbg !2885
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1579, metadata !DIExpression()) #24, !dbg !2885
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2887
  store i32 10, i32* %6, align 8, !dbg !2888, !tbaa !1521
  %7 = icmp ne i8* %0, null, !dbg !2889
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2890
  br i1 %9, label %11, label %10, !dbg !2890

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2891
  unreachable, !dbg !2891

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2892
  store i8* %0, i8** %12, align 8, !dbg !2893, !tbaa !1594
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2894
  store i8* %1, i8** %13, align 8, !dbg !2895, !tbaa !1597
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2896
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2897
  ret i8* %14, !dbg !2898
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2899 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2903, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %1, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i8* %2, metadata !2905, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 %3, metadata !2906, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 0, metadata !2823, metadata !DIExpression()) #24, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %0, metadata !2828, metadata !DIExpression()) #24, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %1, metadata !2829, metadata !DIExpression()) #24, !dbg !2908
  call void @llvm.dbg.value(metadata i8* %2, metadata !2830, metadata !DIExpression()) #24, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %3, metadata !2831, metadata !DIExpression()) #24, !dbg !2908
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2910
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2910
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2832, metadata !DIExpression()) #24, !dbg !2911
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2912, !tbaa.struct !2708
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1579, metadata !DIExpression()) #24, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %0, metadata !1580, metadata !DIExpression()) #24, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %1, metadata !1581, metadata !DIExpression()) #24, !dbg !2913
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1579, metadata !DIExpression()) #24, !dbg !2913
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2915
  store i32 10, i32* %7, align 8, !dbg !2916, !tbaa !1521
  %8 = icmp ne i8* %0, null, !dbg !2917
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2918
  br i1 %10, label %12, label %11, !dbg !2918

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2919
  unreachable, !dbg !2919

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2920
  store i8* %0, i8** %13, align 8, !dbg !2921, !tbaa !1594
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2922
  store i8* %1, i8** %14, align 8, !dbg !2923, !tbaa !1597
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2924
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2925
  ret i8* %15, !dbg !2926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2931, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i8* %1, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %2, metadata !2933, metadata !DIExpression()), !dbg !2934
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2935
  ret i8* %4, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2937 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i32 0, metadata !2931, metadata !DIExpression()) #24, !dbg !2944
  call void @llvm.dbg.value(metadata i8* %0, metadata !2932, metadata !DIExpression()) #24, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()) #24, !dbg !2944
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2946
  ret i8* %3, !dbg !2947
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i8* %1, metadata !2953, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i32 %0, metadata !2931, metadata !DIExpression()) #24, !dbg !2955
  call void @llvm.dbg.value(metadata i8* %1, metadata !2932, metadata !DIExpression()) #24, !dbg !2955
  call void @llvm.dbg.value(metadata i64 -1, metadata !2933, metadata !DIExpression()) #24, !dbg !2955
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2957
  ret i8* %3, !dbg !2958
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2959 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2963, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 0, metadata !2952, metadata !DIExpression()) #24, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !2953, metadata !DIExpression()) #24, !dbg !2965
  call void @llvm.dbg.value(metadata i32 0, metadata !2931, metadata !DIExpression()) #24, !dbg !2967
  call void @llvm.dbg.value(metadata i8* %0, metadata !2932, metadata !DIExpression()) #24, !dbg !2967
  call void @llvm.dbg.value(metadata i64 -1, metadata !2933, metadata !DIExpression()) #24, !dbg !2967
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2969
  ret i8* %2, !dbg !2970
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2971 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3010, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !3011, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %2, metadata !3012, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %3, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8** %4, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %5, metadata !3015, metadata !DIExpression()), !dbg !3016
  %7 = icmp eq i8* %1, null, !dbg !3017
  br i1 %7, label %10, label %8, !dbg !3019

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !3020
  br label %12, !dbg !3020

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !3021
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i32 5) #24, !dbg !3022
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !3022
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3023
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.87, i64 0, i64 0), i32 5) #24, !dbg !3024
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.88, i64 0, i64 0)) #24, !dbg !3024
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3025
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
  ], !dbg !3026

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.89, i64 0, i64 0), i32 5) #24, !dbg !3027
  %21 = load i8*, i8** %4, align 8, !dbg !3027, !tbaa !621
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !3027
  br label %147, !dbg !3029

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.90, i64 0, i64 0), i32 5) #24, !dbg !3030
  %25 = load i8*, i8** %4, align 8, !dbg !3030, !tbaa !621
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3030
  %27 = load i8*, i8** %26, align 8, !dbg !3030, !tbaa !621
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !3030
  br label %147, !dbg !3031

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.91, i64 0, i64 0), i32 5) #24, !dbg !3032
  %31 = load i8*, i8** %4, align 8, !dbg !3032, !tbaa !621
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3032
  %33 = load i8*, i8** %32, align 8, !dbg !3032, !tbaa !621
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3032
  %35 = load i8*, i8** %34, align 8, !dbg !3032, !tbaa !621
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !3032
  br label %147, !dbg !3033

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.92, i64 0, i64 0), i32 5) #24, !dbg !3034
  %39 = load i8*, i8** %4, align 8, !dbg !3034, !tbaa !621
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3034
  %41 = load i8*, i8** %40, align 8, !dbg !3034, !tbaa !621
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3034
  %43 = load i8*, i8** %42, align 8, !dbg !3034, !tbaa !621
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3034
  %45 = load i8*, i8** %44, align 8, !dbg !3034, !tbaa !621
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !3034
  br label %147, !dbg !3035

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.93, i64 0, i64 0), i32 5) #24, !dbg !3036
  %49 = load i8*, i8** %4, align 8, !dbg !3036, !tbaa !621
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3036
  %51 = load i8*, i8** %50, align 8, !dbg !3036, !tbaa !621
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3036
  %53 = load i8*, i8** %52, align 8, !dbg !3036, !tbaa !621
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3036
  %55 = load i8*, i8** %54, align 8, !dbg !3036, !tbaa !621
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3036
  %57 = load i8*, i8** %56, align 8, !dbg !3036, !tbaa !621
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !3036
  br label %147, !dbg !3037

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.94, i64 0, i64 0), i32 5) #24, !dbg !3038
  %61 = load i8*, i8** %4, align 8, !dbg !3038, !tbaa !621
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3038
  %63 = load i8*, i8** %62, align 8, !dbg !3038, !tbaa !621
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3038
  %65 = load i8*, i8** %64, align 8, !dbg !3038, !tbaa !621
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3038
  %67 = load i8*, i8** %66, align 8, !dbg !3038, !tbaa !621
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3038
  %69 = load i8*, i8** %68, align 8, !dbg !3038, !tbaa !621
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3038
  %71 = load i8*, i8** %70, align 8, !dbg !3038, !tbaa !621
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !3038
  br label %147, !dbg !3039

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.95, i64 0, i64 0), i32 5) #24, !dbg !3040
  %75 = load i8*, i8** %4, align 8, !dbg !3040, !tbaa !621
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3040
  %77 = load i8*, i8** %76, align 8, !dbg !3040, !tbaa !621
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3040
  %79 = load i8*, i8** %78, align 8, !dbg !3040, !tbaa !621
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3040
  %81 = load i8*, i8** %80, align 8, !dbg !3040, !tbaa !621
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3040
  %83 = load i8*, i8** %82, align 8, !dbg !3040, !tbaa !621
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3040
  %85 = load i8*, i8** %84, align 8, !dbg !3040, !tbaa !621
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3040
  %87 = load i8*, i8** %86, align 8, !dbg !3040, !tbaa !621
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !3040
  br label %147, !dbg !3041

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.96, i64 0, i64 0), i32 5) #24, !dbg !3042
  %91 = load i8*, i8** %4, align 8, !dbg !3042, !tbaa !621
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3042
  %93 = load i8*, i8** %92, align 8, !dbg !3042, !tbaa !621
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3042
  %95 = load i8*, i8** %94, align 8, !dbg !3042, !tbaa !621
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3042
  %97 = load i8*, i8** %96, align 8, !dbg !3042, !tbaa !621
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3042
  %99 = load i8*, i8** %98, align 8, !dbg !3042, !tbaa !621
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3042
  %101 = load i8*, i8** %100, align 8, !dbg !3042, !tbaa !621
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3042
  %103 = load i8*, i8** %102, align 8, !dbg !3042, !tbaa !621
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3042
  %105 = load i8*, i8** %104, align 8, !dbg !3042, !tbaa !621
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !3042
  br label %147, !dbg !3043

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #24, !dbg !3044
  %109 = load i8*, i8** %4, align 8, !dbg !3044, !tbaa !621
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3044
  %111 = load i8*, i8** %110, align 8, !dbg !3044, !tbaa !621
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3044
  %113 = load i8*, i8** %112, align 8, !dbg !3044, !tbaa !621
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3044
  %115 = load i8*, i8** %114, align 8, !dbg !3044, !tbaa !621
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3044
  %117 = load i8*, i8** %116, align 8, !dbg !3044, !tbaa !621
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3044
  %119 = load i8*, i8** %118, align 8, !dbg !3044, !tbaa !621
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3044
  %121 = load i8*, i8** %120, align 8, !dbg !3044, !tbaa !621
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3044
  %123 = load i8*, i8** %122, align 8, !dbg !3044, !tbaa !621
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3044
  %125 = load i8*, i8** %124, align 8, !dbg !3044, !tbaa !621
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !3044
  br label %147, !dbg !3045

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.98, i64 0, i64 0), i32 5) #24, !dbg !3046
  %129 = load i8*, i8** %4, align 8, !dbg !3046, !tbaa !621
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3046
  %131 = load i8*, i8** %130, align 8, !dbg !3046, !tbaa !621
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3046
  %133 = load i8*, i8** %132, align 8, !dbg !3046, !tbaa !621
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3046
  %135 = load i8*, i8** %134, align 8, !dbg !3046, !tbaa !621
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3046
  %137 = load i8*, i8** %136, align 8, !dbg !3046, !tbaa !621
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3046
  %139 = load i8*, i8** %138, align 8, !dbg !3046, !tbaa !621
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3046
  %141 = load i8*, i8** %140, align 8, !dbg !3046, !tbaa !621
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3046
  %143 = load i8*, i8** %142, align 8, !dbg !3046, !tbaa !621
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3046
  %145 = load i8*, i8** %144, align 8, !dbg !3046, !tbaa !621
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !3046
  br label %147, !dbg !3047

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3048
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3049 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3053, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %1, metadata !3054, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %2, metadata !3055, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8* %3, metadata !3056, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8** %4, metadata !3057, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 0, metadata !3058, metadata !DIExpression()), !dbg !3059
  br label %6, !dbg !3060

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3062
  call void @llvm.dbg.value(metadata i64 %7, metadata !3058, metadata !DIExpression()), !dbg !3059
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3063
  %9 = load i8*, i8** %8, align 8, !dbg !3063, !tbaa !621
  %10 = icmp eq i8* %9, null, !dbg !3065
  %11 = add i64 %7, 1, !dbg !3066
  call void @llvm.dbg.value(metadata i64 %11, metadata !3058, metadata !DIExpression()), !dbg !3059
  br i1 %10, label %12, label %6, !dbg !3065, !llvm.loop !3067

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3069
  ret void, !dbg !3070
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3071 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3082, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8* %1, metadata !3083, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8* %2, metadata !3084, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8* %3, metadata !3085, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3086, metadata !DIExpression()), !dbg !3090
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3091
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !3091
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3088, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 0, metadata !3087, metadata !DIExpression()), !dbg !3090
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3087, metadata !DIExpression()), !dbg !3090
  %11 = load i32, i32* %8, align 8, !dbg !3093
  %12 = icmp ult i32 %11, 41, !dbg !3093
  br i1 %12, label %13, label %18, !dbg !3093

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3093
  %15 = zext i32 %11 to i64, !dbg !3093
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3093
  %17 = add nuw nsw i32 %11, 8, !dbg !3093
  store i32 %17, i32* %8, align 8, !dbg !3093
  br label %21, !dbg !3093

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3093
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3093
  store i8* %20, i8** %9, align 8, !dbg !3093
  br label %21, !dbg !3093

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3093
  %25 = load i8*, i8** %24, align 8, !dbg !3093
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3096
  store i8* %25, i8** %26, align 16, !dbg !3097, !tbaa !621
  %27 = icmp eq i8* %25, null, !dbg !3098
  br i1 %27, label %30, label %28, !dbg !3099

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 1, metadata !3087, metadata !DIExpression()), !dbg !3090
  %29 = icmp ult i32 %22, 41, !dbg !3093
  br i1 %29, label %35, label %32, !dbg !3093

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3100
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3101
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !3102
  ret void, !dbg !3102

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3093
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3093
  store i8* %34, i8** %9, align 8, !dbg !3093
  br label %40, !dbg !3093

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3093
  %37 = zext i32 %22 to i64, !dbg !3093
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3093
  %39 = add nuw nsw i32 %22, 8, !dbg !3093
  store i32 %39, i32* %8, align 8, !dbg !3093
  br label %40, !dbg !3093

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3093
  %44 = load i8*, i8** %43, align 8, !dbg !3093
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3096
  store i8* %44, i8** %45, align 8, !dbg !3097, !tbaa !621
  %46 = icmp eq i8* %44, null, !dbg !3098
  br i1 %46, label %30, label %47, !dbg !3099

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 2, metadata !3087, metadata !DIExpression()), !dbg !3090
  %48 = icmp ult i32 %41, 41, !dbg !3093
  br i1 %48, label %52, label %49, !dbg !3093

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3093
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3093
  store i8* %51, i8** %9, align 8, !dbg !3093
  br label %57, !dbg !3093

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3093
  %54 = zext i32 %41 to i64, !dbg !3093
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3093
  %56 = add nuw nsw i32 %41, 8, !dbg !3093
  store i32 %56, i32* %8, align 8, !dbg !3093
  br label %57, !dbg !3093

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3093
  %61 = load i8*, i8** %60, align 8, !dbg !3093
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3096
  store i8* %61, i8** %62, align 16, !dbg !3097, !tbaa !621
  %63 = icmp eq i8* %61, null, !dbg !3098
  br i1 %63, label %30, label %64, !dbg !3099

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 3, metadata !3087, metadata !DIExpression()), !dbg !3090
  %65 = icmp ult i32 %58, 41, !dbg !3093
  br i1 %65, label %69, label %66, !dbg !3093

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3093
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3093
  store i8* %68, i8** %9, align 8, !dbg !3093
  br label %74, !dbg !3093

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3093
  %71 = zext i32 %58 to i64, !dbg !3093
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3093
  %73 = add nuw nsw i32 %58, 8, !dbg !3093
  store i32 %73, i32* %8, align 8, !dbg !3093
  br label %74, !dbg !3093

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3093
  %78 = load i8*, i8** %77, align 8, !dbg !3093
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3096
  store i8* %78, i8** %79, align 8, !dbg !3097, !tbaa !621
  %80 = icmp eq i8* %78, null, !dbg !3098
  br i1 %80, label %30, label %81, !dbg !3099

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 4, metadata !3087, metadata !DIExpression()), !dbg !3090
  %82 = icmp ult i32 %75, 41, !dbg !3093
  br i1 %82, label %86, label %83, !dbg !3093

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3093
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3093
  store i8* %85, i8** %9, align 8, !dbg !3093
  br label %91, !dbg !3093

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3093
  %88 = zext i32 %75 to i64, !dbg !3093
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3093
  %90 = add nuw nsw i32 %75, 8, !dbg !3093
  store i32 %90, i32* %8, align 8, !dbg !3093
  br label %91, !dbg !3093

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3093
  %95 = load i8*, i8** %94, align 8, !dbg !3093
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3096
  store i8* %95, i8** %96, align 16, !dbg !3097, !tbaa !621
  %97 = icmp eq i8* %95, null, !dbg !3098
  br i1 %97, label %30, label %98, !dbg !3099

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 5, metadata !3087, metadata !DIExpression()), !dbg !3090
  %99 = icmp ult i32 %92, 41, !dbg !3093
  br i1 %99, label %103, label %100, !dbg !3093

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3093
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3093
  store i8* %102, i8** %9, align 8, !dbg !3093
  br label %108, !dbg !3093

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3093
  %105 = zext i32 %92 to i64, !dbg !3093
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3093
  %107 = add nuw nsw i32 %92, 8, !dbg !3093
  store i32 %107, i32* %8, align 8, !dbg !3093
  br label %108, !dbg !3093

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3093
  %111 = load i8*, i8** %110, align 8, !dbg !3093
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3096
  store i8* %111, i8** %112, align 8, !dbg !3097, !tbaa !621
  %113 = icmp eq i8* %111, null, !dbg !3098
  br i1 %113, label %30, label %114, !dbg !3099

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3087, metadata !DIExpression()), !dbg !3090
  %115 = load i8*, i8** %9, align 8, !dbg !3093
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3093
  store i8* %116, i8** %9, align 8, !dbg !3093
  %117 = bitcast i8* %115 to i8**, !dbg !3093
  %118 = load i8*, i8** %117, align 8, !dbg !3093
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3096
  store i8* %118, i8** %119, align 16, !dbg !3097, !tbaa !621
  %120 = icmp eq i8* %118, null, !dbg !3098
  br i1 %120, label %30, label %121, !dbg !3099

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3087, metadata !DIExpression()), !dbg !3090
  %122 = load i8*, i8** %9, align 8, !dbg !3093
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3093
  store i8* %123, i8** %9, align 8, !dbg !3093
  %124 = bitcast i8* %122 to i8**, !dbg !3093
  %125 = load i8*, i8** %124, align 8, !dbg !3093
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3096
  store i8* %125, i8** %126, align 8, !dbg !3097, !tbaa !621
  %127 = icmp eq i8* %125, null, !dbg !3098
  br i1 %127, label %30, label %128, !dbg !3099

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3087, metadata !DIExpression()), !dbg !3090
  %129 = load i8*, i8** %9, align 8, !dbg !3093
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3093
  store i8* %130, i8** %9, align 8, !dbg !3093
  %131 = bitcast i8* %129 to i8**, !dbg !3093
  %132 = load i8*, i8** %131, align 8, !dbg !3093
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3096
  store i8* %132, i8** %133, align 16, !dbg !3097, !tbaa !621
  %134 = icmp eq i8* %132, null, !dbg !3098
  br i1 %134, label %30, label %135, !dbg !3099

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3087, metadata !DIExpression()), !dbg !3090
  %136 = load i8*, i8** %9, align 8, !dbg !3093
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3093
  store i8* %137, i8** %9, align 8, !dbg !3093
  %138 = bitcast i8* %136 to i8**, !dbg !3093
  %139 = load i8*, i8** %138, align 8, !dbg !3093
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3096
  store i8* %139, i8** %140, align 8, !dbg !3097, !tbaa !621
  %141 = icmp eq i8* %139, null, !dbg !3098
  %142 = select i1 %141, i64 9, i64 10, !dbg !3099
  br label %30, !dbg !3099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3103 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3107, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8* %1, metadata !3108, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8* %2, metadata !3109, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8* %3, metadata !3110, metadata !DIExpression()), !dbg !3117
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3118
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !3118
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3111, metadata !DIExpression()), !dbg !3119
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3120
  call void @llvm.va_start(i8* nonnull %6), !dbg !3120
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3121
  call void @llvm.va_end(i8* nonnull %6), !dbg !3122
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !3123
  ret void, !dbg !3123
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3124 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3125, !tbaa !621
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3125
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.101, i64 0, i64 0), i32 5) #24, !dbg !3126
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.102, i64 0, i64 0)) #24, !dbg !3126
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.103, i64 0, i64 0), i32 5) #24, !dbg !3127
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.104, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.105, i64 0, i64 0)) #24, !dbg !3127
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.106, i64 0, i64 0), i32 5) #24, !dbg !3128
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.107, i64 0, i64 0)) #24, !dbg !3128
  ret void, !dbg !3129
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3130 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3132, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3134
  %3 = udiv i64 9223372036854775807, %1, !dbg !3135
  %4 = icmp ult i64 %3, %0, !dbg !3135
  br i1 %4, label %5, label %6, !dbg !3137

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !3138
  unreachable, !dbg !3138

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()) #24, !dbg !3146
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !3148
  call void @llvm.dbg.value(metadata i8* %8, metadata !3145, metadata !DIExpression()) #24, !dbg !3146
  %9 = icmp eq i8* %8, null, !dbg !3149
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3151
  br i1 %11, label %12, label %13, !dbg !3151

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !3152
  unreachable, !dbg !3152

13:                                               ; preds = %6
  ret i8* %8, !dbg !3153
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3141 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3140, metadata !DIExpression()), !dbg !3154
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !3155
  call void @llvm.dbg.value(metadata i8* %2, metadata !3145, metadata !DIExpression()), !dbg !3154
  %3 = icmp eq i8* %2, null, !dbg !3156
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3157
  br i1 %5, label %6, label %7, !dbg !3157

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !3158
  unreachable, !dbg !3158

7:                                                ; preds = %1
  ret i8* %2, !dbg !3159
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3160 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3164, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %2, metadata !3166, metadata !DIExpression()), !dbg !3167
  %4 = udiv i64 9223372036854775807, %2, !dbg !3168
  %5 = icmp ult i64 %4, %1, !dbg !3168
  br i1 %5, label %6, label %7, !dbg !3170

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !3171
  unreachable, !dbg !3171

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3172
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()) #24, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %8, metadata !3178, metadata !DIExpression()) #24, !dbg !3179
  %9 = icmp eq i64 %8, 0, !dbg !3181
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3183
  br i1 %11, label %12, label %13, !dbg !3183

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !3184
  br label %19, !dbg !3186

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %14, metadata !3173, metadata !DIExpression()) #24, !dbg !3179
  %15 = icmp eq i8* %14, null, !dbg !3188
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3190
  br i1 %17, label %18, label %19, !dbg !3190

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !3191
  unreachable, !dbg !3191

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3179
  ret i8* %20, !dbg !3192
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3174 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %1, metadata !3178, metadata !DIExpression()), !dbg !3193
  %3 = icmp eq i64 %1, 0, !dbg !3194
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3195
  br i1 %5, label %6, label %7, !dbg !3195

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !3196
  br label %13, !dbg !3197

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %8, metadata !3173, metadata !DIExpression()), !dbg !3193
  %9 = icmp eq i8* %8, null, !dbg !3199
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3200
  br i1 %11, label %12, label %13, !dbg !3200

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !3201
  unreachable, !dbg !3201

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3193
  ret i8* %14, !dbg !3202
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !184 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !189, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64* %1, metadata !190, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %2, metadata !191, metadata !DIExpression()), !dbg !3203
  %4 = load i64, i64* %1, align 8, !dbg !3204, !tbaa !2418
  call void @llvm.dbg.value(metadata i64 %4, metadata !192, metadata !DIExpression()), !dbg !3203
  %5 = icmp eq i8* %0, null, !dbg !3205
  br i1 %5, label %6, label %20, !dbg !3207

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3208
  br i1 %7, label %8, label %13, !dbg !3211

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %9, metadata !192, metadata !DIExpression()), !dbg !3203
  %10 = icmp ugt i64 %2, 128, !dbg !3214
  %11 = zext i1 %10 to i64, !dbg !3214
  %12 = add nuw nsw i64 %9, %11, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %12, metadata !192, metadata !DIExpression()), !dbg !3203
  br label %13, !dbg !3216

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3203
  call void @llvm.dbg.value(metadata i64 %14, metadata !192, metadata !DIExpression()), !dbg !3203
  %15 = udiv i64 9223372036854775807, %2, !dbg !3217
  %16 = icmp ult i64 %15, %14, !dbg !3217
  br i1 %16, label %19, label %17, !dbg !3219

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !192, metadata !DIExpression()), !dbg !3203
  store i64 %14, i64* %1, align 8, !dbg !3220, !tbaa !2418
  %18 = mul i64 %14, %2, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()) #24, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %28, metadata !3178, metadata !DIExpression()) #24, !dbg !3222
  br label %31, !dbg !3224

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !3225
  unreachable, !dbg !3225

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3226
  %22 = icmp ugt i64 %21, %4, !dbg !3229
  br i1 %22, label %24, label %23, !dbg !3230

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !3231
  unreachable, !dbg !3231

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3232
  %26 = add nuw i64 %4, 1, !dbg !3233
  %27 = add i64 %26, %25, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %27, metadata !192, metadata !DIExpression()), !dbg !3203
  store i64 %27, i64* %1, align 8, !dbg !3220, !tbaa !2418
  %28 = mul i64 %27, %2, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()) #24, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %28, metadata !3178, metadata !DIExpression()) #24, !dbg !3222
  %29 = icmp eq i64 %28, 0, !dbg !3235
  br i1 %29, label %30, label %31, !dbg !3224

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !3236
  br label %38, !dbg !3237

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %33, metadata !3173, metadata !DIExpression()) #24, !dbg !3222
  %34 = icmp eq i8* %33, null, !dbg !3239
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3240
  br i1 %36, label %37, label %38, !dbg !3240

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !3241
  unreachable, !dbg !3241

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3222
  ret i8* %39, !dbg !3242
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3243 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %0, metadata !3140, metadata !DIExpression()) #24, !dbg !3247
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !3249
  call void @llvm.dbg.value(metadata i8* %2, metadata !3145, metadata !DIExpression()) #24, !dbg !3247
  %3 = icmp eq i8* %2, null, !dbg !3250
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3251
  br i1 %5, label %6, label %7, !dbg !3251

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !3252
  unreachable, !dbg !3252

7:                                                ; preds = %1
  ret i8* %2, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3258, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64* %1, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8* %0, metadata !189, metadata !DIExpression()) #24, !dbg !3261
  call void @llvm.dbg.value(metadata i64* %1, metadata !190, metadata !DIExpression()) #24, !dbg !3261
  call void @llvm.dbg.value(metadata i64 1, metadata !191, metadata !DIExpression()) #24, !dbg !3261
  %3 = load i64, i64* %1, align 8, !dbg !3263, !tbaa !2418
  call void @llvm.dbg.value(metadata i64 %3, metadata !192, metadata !DIExpression()) #24, !dbg !3261
  %4 = icmp eq i8* %0, null, !dbg !3264
  br i1 %4, label %5, label %10, !dbg !3265

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3266
  br i1 %6, label %17, label %7, !dbg !3267

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !192, metadata !DIExpression()) #24, !dbg !3261
  %8 = icmp slt i64 %3, 0, !dbg !3268
  br i1 %8, label %9, label %17, !dbg !3269

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !3270
  unreachable, !dbg !3270

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3271
  br i1 %11, label %13, label %12, !dbg !3272

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !3273
  unreachable, !dbg !3273

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3274
  %15 = add nuw nsw i64 %3, 1, !dbg !3275
  %16 = add nuw nsw i64 %15, %14, !dbg !3276
  call void @llvm.dbg.value(metadata i64 %16, metadata !192, metadata !DIExpression()) #24, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()) #24, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %16, metadata !3178, metadata !DIExpression()) #24, !dbg !3277
  br label %17, !dbg !3279

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3280
  store i64 %18, i64* %1, align 8, !dbg !3280, !tbaa !2418
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %19, metadata !3173, metadata !DIExpression()) #24, !dbg !3277
  %20 = icmp eq i8* %19, null, !dbg !3282
  br i1 %20, label %21, label %22, !dbg !3283

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !3284
  unreachable, !dbg !3284

22:                                               ; preds = %17
  ret i8* %19, !dbg !3285
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3286 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3288, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %0, metadata !3290, metadata !DIExpression()) #24, !dbg !3295
  call void @llvm.dbg.value(metadata i64 1, metadata !3293, metadata !DIExpression()) #24, !dbg !3295
  %2 = icmp slt i64 %0, 0, !dbg !3297
  br i1 %2, label %6, label %3, !dbg !3299

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %4, metadata !3294, metadata !DIExpression()) #24, !dbg !3295
  %5 = icmp eq i8* %4, null, !dbg !3301
  br i1 %5, label %6, label %7, !dbg !3302

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !3303
  unreachable, !dbg !3303

7:                                                ; preds = %3
  ret i8* %4, !dbg !3304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3291 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3290, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %1, metadata !3293, metadata !DIExpression()), !dbg !3305
  %3 = udiv i64 9223372036854775807, %1, !dbg !3306
  %4 = icmp ult i64 %3, %0, !dbg !3306
  br i1 %4, label %8, label %5, !dbg !3307

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %6, metadata !3294, metadata !DIExpression()), !dbg !3305
  %7 = icmp eq i8* %6, null, !dbg !3309
  br i1 %7, label %8, label %9, !dbg !3310

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !3311
  unreachable, !dbg !3311

9:                                                ; preds = %5
  ret i8* %6, !dbg !3312
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3313 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3317, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()) #24, !dbg !3320
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %3, metadata !3145, metadata !DIExpression()) #24, !dbg !3320
  %4 = icmp eq i8* %3, null, !dbg !3323
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3324
  br i1 %6, label %7, label %8, !dbg !3324

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !3325
  unreachable, !dbg !3325

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3326, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %0, metadata !3333, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()) #24, !dbg !3335
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !3337
  ret i8* %3, !dbg !3338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()), !dbg !3342
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !3343
  %3 = add i64 %2, 1, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %0, metadata !3317, metadata !DIExpression()) #24, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %3, metadata !3318, metadata !DIExpression()) #24, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %3, metadata !3140, metadata !DIExpression()) #24, !dbg !3347
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !3349
  call void @llvm.dbg.value(metadata i8* %4, metadata !3145, metadata !DIExpression()) #24, !dbg !3347
  %5 = icmp eq i8* %4, null, !dbg !3350
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3351
  br i1 %7, label %8, label %9, !dbg !3351

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !3352
  unreachable, !dbg !3352

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3326, metadata !DIExpression()) #24, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %0, metadata !3333, metadata !DIExpression()) #24, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %3, metadata !3334, metadata !DIExpression()) #24, !dbg !3353
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !3355
  ret i8* %4, !dbg !3356
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3357 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3358, !tbaa !795
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.120, i64 0, i64 0), i32 5) #24, !dbg !3359
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i8* %2) #24, !dbg !3360
  tail call void @abort() #26, !dbg !3361
  unreachable, !dbg !3361
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !3362 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3364, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %1, metadata !3365, metadata !DIExpression()), !dbg !3370
  %3 = icmp eq i64 %0, 0, !dbg !3371
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3372
  br i1 %5, label %11, label %6, !dbg !3372

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3367, metadata !DIExpression()), !dbg !3373
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3374
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3374
  br i1 %8, label %9, label %11, !dbg !3376

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !3377
  store i32 12, i32* %10, align 4, !dbg !3379, !tbaa !795
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3364, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %12, metadata !3365, metadata !DIExpression()), !dbg !3370
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %14, metadata !3366, metadata !DIExpression()), !dbg !3370
  br label %15, !dbg !3381

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3370
  ret i8* %16, !dbg !3382
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3383 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3421, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32 0, metadata !3422, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i32 0, metadata !3424, metadata !DIExpression()), !dbg !3425
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %2, metadata !3423, metadata !DIExpression()), !dbg !3425
  %3 = icmp slt i32 %2, 0, !dbg !3427
  br i1 %3, label %4, label %6, !dbg !3429

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3430
  br label %24, !dbg !3431

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3432
  %8 = icmp eq i32 %7, 0, !dbg !3432
  br i1 %8, label %13, label %9, !dbg !3434

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3435
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3436
  %12 = icmp eq i64 %11, -1, !dbg !3437
  br i1 %12, label %16, label %13, !dbg !3438

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3439
  %15 = icmp eq i32 %14, 0, !dbg !3439
  br i1 %15, label %16, label %18, !dbg !3440

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3422, metadata !DIExpression()), !dbg !3425
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3441
  call void @llvm.dbg.value(metadata i32 %21, metadata !3424, metadata !DIExpression()), !dbg !3425
  br label %24, !dbg !3442

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3443
  %20 = load i32, i32* %19, align 4, !dbg !3443, !tbaa !795
  call void @llvm.dbg.value(metadata i32 %20, metadata !3422, metadata !DIExpression()), !dbg !3425
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3441
  call void @llvm.dbg.value(metadata i32 %21, metadata !3424, metadata !DIExpression()), !dbg !3425
  %22 = icmp eq i32 %20, 0, !dbg !3444
  br i1 %22, label %24, label %23, !dbg !3442

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3446, !tbaa !795
  call void @llvm.dbg.value(metadata i32 -1, metadata !3424, metadata !DIExpression()), !dbg !3425
  br label %24, !dbg !3448

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3425
  ret i32 %25, !dbg !3449
}

; Function Attrs: nofree nounwind
declare !dbg !3450 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3453 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3457 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3495, metadata !DIExpression()), !dbg !3496
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3497
  br i1 %2, label %6, label %3, !dbg !3499

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3500
  %5 = icmp eq i32 %4, 0, !dbg !3500
  br i1 %5, label %6, label %8, !dbg !3501

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3502
  br label %17, !dbg !3503

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3504, metadata !DIExpression()) #24, !dbg !3509
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3511
  %10 = load i32, i32* %9, align 8, !dbg !3511, !tbaa !1032
  %11 = and i32 %10, 256, !dbg !3513
  %12 = icmp eq i32 %11, 0, !dbg !3513
  br i1 %12, label %15, label %13, !dbg !3514

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3515
  br label %15, !dbg !3515

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3516
  br label %17, !dbg !3517

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3496
  ret i32 %18, !dbg !3518
}

; Function Attrs: nofree nounwind
declare !dbg !3519 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3522 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3560, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3561, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %2, metadata !3562, metadata !DIExpression()), !dbg !3566
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3567
  %5 = load i8*, i8** %4, align 8, !dbg !3567, !tbaa !941
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3568
  %7 = load i8*, i8** %6, align 8, !dbg !3568, !tbaa !937
  %8 = icmp eq i8* %5, %7, !dbg !3569
  br i1 %8, label %9, label %28, !dbg !3570

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3571
  %11 = load i8*, i8** %10, align 8, !dbg !3571, !tbaa !982
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3572
  %13 = load i8*, i8** %12, align 8, !dbg !3572, !tbaa !3573
  %14 = icmp eq i8* %11, %13, !dbg !3574
  br i1 %14, label %15, label %28, !dbg !3575

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3576
  %17 = load i8*, i8** %16, align 8, !dbg !3576, !tbaa !3577
  %18 = icmp eq i8* %17, null, !dbg !3578
  br i1 %18, label %19, label %28, !dbg !3579

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3580
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %21, metadata !3563, metadata !DIExpression()), !dbg !3582
  %22 = icmp eq i64 %21, -1, !dbg !3583
  br i1 %22, label %30, label %23, !dbg !3585

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3586
  %25 = load i32, i32* %24, align 8, !dbg !3587, !tbaa !1032
  %26 = and i32 %25, -17, !dbg !3587
  store i32 %26, i32* %24, align 8, !dbg !3587, !tbaa !1032
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3588
  store i64 %21, i64* %27, align 8, !dbg !3589, !tbaa !3590
  br label %30, !dbg !3591

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3592
  br label %30, !dbg !3593

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3566
  ret i32 %31, !dbg !3594
}

; Function Attrs: nofree nounwind
declare !dbg !3595 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3598 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3614, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i8* %1, metadata !3615, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 %2, metadata !3616, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3617, metadata !DIExpression()), !dbg !3623
  %6 = bitcast i32* %5 to i8*, !dbg !3624
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !3624
  %7 = icmp eq i32* %0, null, !dbg !3625
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3627
  call void @llvm.dbg.value(metadata i32* %8, metadata !3614, metadata !DIExpression()), !dbg !3623
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %9, metadata !3618, metadata !DIExpression()), !dbg !3623
  %10 = icmp ugt i64 %9, -3, !dbg !3629
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3630
  br i1 %12, label %13, label %18, !dbg !3630

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !3631
  br i1 %14, label %18, label %15, !dbg !3632

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3633, !tbaa !782
  call void @llvm.dbg.value(metadata i8 %16, metadata !3620, metadata !DIExpression()), !dbg !3634
  %17 = zext i8 %16 to i32, !dbg !3635
  store i32 %17, i32* %8, align 4, !dbg !3636, !tbaa !795
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3623
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !3637
  ret i64 %19, !dbg !3637
}

; Function Attrs: nounwind
declare !dbg !3638 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3642 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3680, metadata !DIExpression()), !dbg !3685
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !3686
  call void @llvm.dbg.value(metadata i1 undef, metadata !3681, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3685
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3687, metadata !DIExpression()), !dbg !3690
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3692
  %4 = load i32, i32* %3, align 8, !dbg !3692, !tbaa !1032
  %5 = and i32 %4, 32, !dbg !3693
  %6 = icmp eq i32 %5, 0, !dbg !3693
  call void @llvm.dbg.value(metadata i1 %6, metadata !3683, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3685
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !3694
  %8 = icmp eq i32 %7, 0, !dbg !3695
  call void @llvm.dbg.value(metadata i1 %8, metadata !3684, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3685
  br i1 %6, label %9, label %19, !dbg !3696

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3698
  call void @llvm.dbg.value(metadata i1 %10, metadata !3681, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3685
  %11 = or i1 %10, %8, !dbg !3699
  %12 = xor i1 %8, true, !dbg !3699
  %13 = sext i1 %12 to i32, !dbg !3699
  br i1 %11, label %22, label %14, !dbg !3699

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !3700
  %16 = load i32, i32* %15, align 4, !dbg !3700, !tbaa !795
  %17 = icmp ne i32 %16, 9, !dbg !3701
  %18 = sext i1 %17 to i32, !dbg !3702
  br label %22, !dbg !3702

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3703

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !3705
  store i32 0, i32* %21, align 4, !dbg !3707, !tbaa !795
  br label %22, !dbg !3705

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3685
  ret i32 %23, !dbg !3708
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3709 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3713, metadata !DIExpression()), !dbg !3718
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3719
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3719
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3714, metadata !DIExpression()), !dbg !3720
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !3721
  %5 = icmp eq i32 %4, 0, !dbg !3721
  br i1 %5, label %6, label %13, !dbg !3723

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3724
  %8 = load i16, i16* %7, align 16, !dbg !3724
  %9 = icmp eq i16 %8, 67, !dbg !3724
  br i1 %9, label %13, label %10, !dbg !3725

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.136, i64 0, i64 0), i64 6), !dbg !3726
  %12 = icmp ne i32 %11, 0, !dbg !3727
  br label %13, !dbg !3725

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3718
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3728
  ret i1 %14, !dbg !3728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3729 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !3734
  call void @llvm.dbg.value(metadata i8* %1, metadata !3733, metadata !DIExpression()), !dbg !3735
  %2 = icmp eq i8* %1, null, !dbg !3736
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %1, !dbg !3738
  call void @llvm.dbg.value(metadata i8* %3, metadata !3733, metadata !DIExpression()), !dbg !3735
  %4 = load i8, i8* %3, align 1, !dbg !3739, !tbaa !782
  %5 = icmp eq i8 %4, 0, !dbg !3743
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.140, i64 0, i64 0), i8* %3, !dbg !3744
  call void @llvm.dbg.value(metadata i8* %6, metadata !3733, metadata !DIExpression()), !dbg !3735
  ret i8* %6, !dbg !3745
}

; Function Attrs: nounwind
declare !dbg !3746 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3753, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i8* %1, metadata !3754, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %2, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()) #24, !dbg !3766
  call void @llvm.dbg.value(metadata i8* %1, metadata !3760, metadata !DIExpression()) #24, !dbg !3766
  call void @llvm.dbg.value(metadata i64 %2, metadata !3761, metadata !DIExpression()) #24, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %0, metadata !3768, metadata !DIExpression()) #24, !dbg !3774
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3776
  call void @llvm.dbg.value(metadata i8* %4, metadata !3773, metadata !DIExpression()) #24, !dbg !3774
  call void @llvm.dbg.value(metadata i8* %4, metadata !3762, metadata !DIExpression()) #24, !dbg !3766
  %5 = icmp eq i8* %4, null, !dbg !3777
  br i1 %5, label %6, label %9, !dbg !3778

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3779
  br i1 %7, label %19, label %8, !dbg !3782

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3783, !tbaa !782
  br label %19, !dbg !3784

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %10, metadata !3763, metadata !DIExpression()) #24, !dbg !3786
  %11 = icmp ult i64 %10, %2, !dbg !3787
  br i1 %11, label %12, label %14, !dbg !3789

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %1, metadata !3792, metadata !DIExpression()) #24, !dbg !3797
  call void @llvm.dbg.value(metadata i8* %4, metadata !3795, metadata !DIExpression()) #24, !dbg !3797
  call void @llvm.dbg.value(metadata i64 %13, metadata !3796, metadata !DIExpression()) #24, !dbg !3797
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3799
  br label %19, !dbg !3800

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3801
  br i1 %15, label %19, label %16, !dbg !3804

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3805
  call void @llvm.dbg.value(metadata i8* %1, metadata !3792, metadata !DIExpression()) #24, !dbg !3807
  call void @llvm.dbg.value(metadata i8* %4, metadata !3795, metadata !DIExpression()) #24, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %17, metadata !3796, metadata !DIExpression()) #24, !dbg !3807
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3809
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3810
  store i8 0, i8* %18, align 1, !dbg !3811, !tbaa !782
  br label %19, !dbg !3812

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3813
  ret i32 %20, !dbg !3814
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3815 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 %0, metadata !3768, metadata !DIExpression()) #24, !dbg !3819
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3821
  call void @llvm.dbg.value(metadata i8* %2, metadata !3773, metadata !DIExpression()) #24, !dbg !3819
  ret i8* %2, !dbg !3822
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
attributes #9 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #19 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #20 = { nofree nosync nounwind willreturn }
attributes #21 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { nounwind readnone willreturn }
attributes #29 = { cold }

!llvm.dbg.cu = !{!2, !70, !76, !83, !169, !89, !95, !172, !163, !179, !196, !198, !200, !202, !204, !206, !209, !211, !213, !602}
!llvm.ident = !{!604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604, !604}
!llvm.module.flags = !{!605, !606, !607, !608, !609}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 59, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !40, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/paste.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !{!30, !32, !33, !34, !35, !38}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!40 = !{!41, !42, !45, !47, !62, !64}
!41 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "serial_merge", scope: !2, file: !3, line: 63, type: !44, isLocal: true, isDefinition: true)
!44 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "delims", scope: !2, file: !3, line: 66, type: !30, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1536, elements: !60)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !52, line: 50, size: 256, elements: !53)
!52 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!53 = !{!54, !55, !57, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !52, line: 52, baseType: !38, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !51, file: !52, line: 55, baseType: !56, size: 32, offset: 64)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !51, file: !52, line: 56, baseType: !58, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !51, file: !52, line: 57, baseType: !56, size: 32, offset: 192)
!60 = !{!61}
!61 = !DISubrange(count: 6)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 71, type: !34, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "delim_end", scope: !2, file: !3, line: 69, type: !38, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!67 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "Version", scope: !70, file: !71, line: 2, type: !38, isLocal: false, isDefinition: true)
!70 = distinct !DICompileUnit(language: DW_LANG_C99, file: !71, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, globals: !73, splitDebugInlining: false, nameTableKind: None)
!71 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!72 = !{}
!73 = !{!68}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "file_name", scope: !76, file: !77, line: 46, type: !38, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, globals: !78, splitDebugInlining: false, nameTableKind: None)
!77 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !{!74, !79}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !76, file: !77, line: 56, type: !44, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "exit_failure", scope: !83, file: !84, line: 24, type: !86, isLocal: false, isDefinition: true)
!83 = distinct !DICompileUnit(language: DW_LANG_C99, file: !84, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, globals: !85, splitDebugInlining: false, nameTableKind: None)
!84 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!85 = !{!81}
!86 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "program_name", scope: !89, file: !90, line: 33, type: !38, isLocal: false, isDefinition: true)
!89 = distinct !DICompileUnit(language: DW_LANG_C99, file: !90, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !91, globals: !92, splitDebugInlining: false, nameTableKind: None)
!90 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!91 = !{!32, !30}
!92 = !{!87}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !95, file: !96, line: 85, type: !157, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !97, retainedTypes: !118, globals: !120, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!97 = !{!5, !98, !103}
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!101 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!102 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 46, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!106 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!112 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!117 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!118 = !{!56, !119, !35, !30}
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !{!93, !121, !127, !139, !141, !146, !153, !155}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !95, file: !96, line: 101, type: !123, isLocal: false, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 320, elements: !125)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!125 = !{!126}
!126 = !DISubrange(count: 10)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !95, file: !96, line: 1052, type: !129, isLocal: false, isDefinition: true)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !96, line: 65, size: 448, elements: !130)
!130 = !{!131, !132, !133, !137, !138}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !129, file: !96, line: 68, baseType: !5, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !96, line: 71, baseType: !56, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !129, file: !96, line: 75, baseType: !134, size: 256, offset: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 8)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !129, file: !96, line: 78, baseType: !38, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !129, file: !96, line: 81, baseType: !38, size: 64, offset: 384)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !95, file: !96, line: 116, type: !129, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slot0", scope: !95, file: !96, line: 842, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 256)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "slotvec", scope: !95, file: !96, line: 845, type: !148, isLocal: true, isDefinition: true)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !96, line: 834, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !149, file: !96, line: 836, baseType: !35, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !96, line: 837, baseType: !30, size: 64, offset: 64)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "nslots", scope: !95, file: !96, line: 843, type: !56, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "slotvec0", scope: !95, file: !96, line: 844, type: !149, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 704, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!159 = !{!160}
!160 = !DISubrange(count: 11)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !163, file: !164, line: 26, type: !166, isLocal: false, isDefinition: true)
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, globals: !165, splitDebugInlining: false, nameTableKind: None)
!164 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!165 = !{!161}
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 376, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 47)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !171, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!20}
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !174, retainedTypes: !178, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !{!175}
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !173, line: 40, baseType: !7, size: 32, elements: !176)
!176 = !{!177}
!177 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!178 = !{!32}
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !181, retainedTypes: !195, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!181 = !{!182}
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !184, file: !183, line: 186, baseType: !7, size: 32, elements: !193)
!183 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = distinct !DISubprogram(name: "x2nrealloc", scope: !183, file: !183, line: 174, type: !185, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !188)
!185 = !DISubroutineType(types: !186)
!186 = !{!32, !32, !187, !35}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!188 = !{!189, !190, !191, !192}
!189 = !DILocalVariable(name: "p", arg: 1, scope: !184, file: !183, line: 174, type: !32)
!190 = !DILocalVariable(name: "pn", arg: 2, scope: !184, file: !183, line: 174, type: !187)
!191 = !DILocalVariable(name: "s", arg: 3, scope: !184, file: !183, line: 174, type: !35)
!192 = !DILocalVariable(name: "n", scope: !184, file: !183, line: 176, type: !35)
!193 = !{!194}
!194 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!195 = !{!35, !30, !32}
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !178, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !178, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !178, splitDebugInlining: false, nameTableKind: None)
!205 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !208, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = !{!35}
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !178, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!216}
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 41, baseType: !7, size: 32, elements: !218)
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
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !72, retainedTypes: !178, splitDebugInlining: false, nameTableKind: None)
!603 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!604 = !{!"clang version 12.0.1"}
!605 = !{i32 7, !"Dwarf Version", i32 4}
!606 = !{i32 2, !"Debug Info Version", i32 3}
!607 = !{i32 1, !"wchar_size", i32 4}
!608 = !{i32 7, !"PIC Level", i32 2}
!609 = !{i32 7, !"PIE Level", i32 2}
!610 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 430, type: !611, scopeLine: 431, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !56}
!613 = !{!614}
!614 = !DILocalVariable(name: "status", arg: 1, scope: !610, file: !3, line: 430, type: !56)
!615 = !DILocation(line: 0, scope: !610)
!616 = !DILocation(line: 432, column: 14, scope: !617)
!617 = distinct !DILexicalBlock(scope: !610, file: !3, line: 432, column: 7)
!618 = !DILocation(line: 432, column: 7, scope: !610)
!619 = !DILocation(line: 433, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !617, file: !3, line: 433, column: 5)
!621 = !{!622, !622, i64 0}
!622 = !{!"any pointer", !623, i64 0}
!623 = !{!"omnipotent char", !624, i64 0}
!624 = !{!"Simple C/C++ TBAA"}
!625 = !DILocation(line: 436, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !617, file: !3, line: 435, column: 5)
!627 = !DILocation(line: 440, column: 7, scope: !626)
!628 = !DILocation(line: 583, column: 3, scope: !629, inlinedAt: !633)
!629 = distinct !DISubprogram(name: "emit_stdin_note", scope: !630, file: !630, line: 581, type: !631, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!630 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!631 = !DISubroutineType(types: !632)
!632 = !{null}
!633 = distinct !DILocation(line: 445, column: 7, scope: !626)
!634 = !DILocation(line: 590, column: 3, scope: !635, inlinedAt: !636)
!635 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !630, file: !630, line: 588, type: !631, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!636 = distinct !DILocation(line: 446, column: 7, scope: !626)
!637 = !DILocation(line: 448, column: 7, scope: !626)
!638 = !DILocation(line: 452, column: 7, scope: !626)
!639 = !DILocation(line: 455, column: 7, scope: !626)
!640 = !DILocation(line: 456, column: 7, scope: !626)
!641 = !DILocalVariable(name: "program", arg: 1, scope: !642, file: !630, line: 634, type: !38)
!642 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !630, file: !630, line: 634, type: !643, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !38}
!645 = !{!641, !646, !655, !656, !658}
!646 = !DILocalVariable(name: "infomap", scope: !642, file: !630, line: 636, type: !647)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 896, elements: !653)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !642, file: !630, line: 636, size: 128, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !649, file: !630, line: 636, baseType: !38, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !630, line: 636, baseType: !38, size: 64, offset: 64)
!653 = !{!654}
!654 = !DISubrange(count: 7)
!655 = !DILocalVariable(name: "node", scope: !642, file: !630, line: 646, type: !38)
!656 = !DILocalVariable(name: "map_prog", scope: !642, file: !630, line: 647, type: !657)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!658 = !DILocalVariable(name: "lc_messages", scope: !642, file: !630, line: 659, type: !38)
!659 = !DILocation(line: 0, scope: !642, inlinedAt: !660)
!660 = distinct !DILocation(line: 458, column: 7, scope: !626)
!661 = !DILocation(line: 636, column: 3, scope: !642, inlinedAt: !660)
!662 = !DILocation(line: 636, column: 67, scope: !642, inlinedAt: !660)
!663 = !DILocation(line: 647, column: 36, scope: !642, inlinedAt: !660)
!664 = !DILocation(line: 649, column: 3, scope: !642, inlinedAt: !660)
!665 = !DILocation(line: 649, column: 33, scope: !642, inlinedAt: !660)
!666 = !DILocation(line: 650, column: 13, scope: !642, inlinedAt: !660)
!667 = !DILocation(line: 649, column: 20, scope: !642, inlinedAt: !660)
!668 = !{!669, !622, i64 0}
!669 = !{!"infomap", !622, i64 0, !622, i64 8}
!670 = !DILocation(line: 649, column: 10, scope: !642, inlinedAt: !660)
!671 = !DILocation(line: 649, column: 28, scope: !642, inlinedAt: !660)
!672 = distinct !{!672, !664, !666, !673}
!673 = !{!"llvm.loop.mustprogress"}
!674 = !DILocation(line: 652, column: 17, scope: !675, inlinedAt: !660)
!675 = distinct !DILexicalBlock(scope: !642, file: !630, line: 652, column: 7)
!676 = !{!669, !622, i64 8}
!677 = !DILocation(line: 652, column: 7, scope: !675, inlinedAt: !660)
!678 = !DILocation(line: 652, column: 7, scope: !642, inlinedAt: !660)
!679 = !DILocation(line: 655, column: 3, scope: !642, inlinedAt: !660)
!680 = !DILocation(line: 659, column: 29, scope: !642, inlinedAt: !660)
!681 = !DILocation(line: 660, column: 7, scope: !682, inlinedAt: !660)
!682 = distinct !DILexicalBlock(scope: !642, file: !630, line: 660, column: 7)
!683 = !DILocation(line: 660, column: 19, scope: !682, inlinedAt: !660)
!684 = !DILocation(line: 660, column: 22, scope: !682, inlinedAt: !660)
!685 = !DILocation(line: 660, column: 7, scope: !642, inlinedAt: !660)
!686 = !DILocation(line: 666, column: 7, scope: !687, inlinedAt: !660)
!687 = distinct !DILexicalBlock(scope: !682, file: !630, line: 661, column: 5)
!688 = !DILocation(line: 668, column: 5, scope: !687, inlinedAt: !660)
!689 = !DILocation(line: 669, column: 3, scope: !642, inlinedAt: !660)
!690 = !DILocation(line: 671, column: 3, scope: !642, inlinedAt: !660)
!691 = !DILocation(line: 673, column: 1, scope: !642, inlinedAt: !660)
!692 = !DILocation(line: 460, column: 3, scope: !610)
!693 = !DISubprogram(name: "dcgettext", scope: !694, file: !694, line: 51, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!694 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!695 = !DISubroutineType(types: !696)
!696 = !{!30, !38, !38, !56}
!697 = !DISubprogram(name: "fputs_unlocked", scope: !698, file: !698, line: 667, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!698 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!699 = !DISubroutineType(types: !700)
!700 = !{!56, !38, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !704)
!703 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !720, !721, !722, !723, !727, !728, !730, !734, !737, !739, !742, !745, !746, !747, !748, !749}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !702, file: !703, line: 51, baseType: !56, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !702, file: !703, line: 54, baseType: !30, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !702, file: !703, line: 55, baseType: !30, size: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !702, file: !703, line: 56, baseType: !30, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !702, file: !703, line: 57, baseType: !30, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !702, file: !703, line: 58, baseType: !30, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !702, file: !703, line: 59, baseType: !30, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !702, file: !703, line: 60, baseType: !30, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !702, file: !703, line: 61, baseType: !30, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !702, file: !703, line: 64, baseType: !30, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !702, file: !703, line: 65, baseType: !30, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !702, file: !703, line: 66, baseType: !30, size: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !702, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !703, line: 36, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !702, file: !703, line: 70, baseType: !701, size: 64, offset: 832)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !702, file: !703, line: 72, baseType: !56, size: 32, offset: 896)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !702, file: !703, line: 73, baseType: !56, size: 32, offset: 928)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !702, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !725, line: 152, baseType: !726)
!725 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!726 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !702, file: !703, line: 77, baseType: !119, size: 16, offset: 1024)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !702, file: !703, line: 78, baseType: !729, size: 8, offset: 1040)
!729 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !702, file: !703, line: 79, baseType: !731, size: 8, offset: 1048)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 1)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !702, file: !703, line: 81, baseType: !735, size: 64, offset: 1088)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !703, line: 43, baseType: null)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !702, file: !703, line: 89, baseType: !738, size: 64, offset: 1152)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !725, line: 153, baseType: !726)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !702, file: !703, line: 91, baseType: !740, size: 64, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !703, line: 37, flags: DIFlagFwdDecl)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !702, file: !703, line: 92, baseType: !743, size: 64, offset: 1280)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !703, line: 38, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !702, file: !703, line: 93, baseType: !701, size: 64, offset: 1344)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !702, file: !703, line: 94, baseType: !32, size: 64, offset: 1408)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !702, file: !703, line: 95, baseType: !35, size: 64, offset: 1472)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !702, file: !703, line: 96, baseType: !56, size: 32, offset: 1536)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !702, file: !703, line: 98, baseType: !750, size: 160, offset: 1568)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 20)
!753 = !DISubprogram(name: "setlocale", scope: !754, file: !754, line: 122, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!754 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!755 = !DISubroutineType(types: !756)
!756 = !{!30, !56, !38}
!757 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 464, type: !758, scopeLine: 465, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !761)
!758 = !DISubroutineType(types: !759)
!759 = !{!56, !56, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!761 = !{!762, !763, !764, !765, !766, !767}
!762 = !DILocalVariable(name: "argc", arg: 1, scope: !757, file: !3, line: 464, type: !56)
!763 = !DILocalVariable(name: "argv", arg: 2, scope: !757, file: !3, line: 464, type: !760)
!764 = !DILocalVariable(name: "optc", scope: !757, file: !3, line: 466, type: !56)
!765 = !DILocalVariable(name: "delim_arg", scope: !757, file: !3, line: 467, type: !38)
!766 = !DILocalVariable(name: "nfiles", scope: !757, file: !3, line: 506, type: !56)
!767 = !DILocalVariable(name: "ok", scope: !757, file: !3, line: 522, type: !44)
!768 = !DILocation(line: 0, scope: !757)
!769 = !DILocation(line: 470, column: 21, scope: !757)
!770 = !DILocation(line: 470, column: 3, scope: !757)
!771 = !DILocation(line: 471, column: 3, scope: !757)
!772 = !DILocation(line: 472, column: 3, scope: !757)
!773 = !DILocation(line: 473, column: 3, scope: !757)
!774 = !DILocation(line: 475, column: 3, scope: !757)
!775 = !DILocation(line: 477, column: 19, scope: !757)
!776 = !DILocation(line: 478, column: 16, scope: !757)
!777 = !DILocation(line: 480, column: 3, scope: !757)
!778 = !DILocation(line: 480, column: 18, scope: !757)
!779 = !DILocation(line: 486, column: 24, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 483, column: 9)
!781 = distinct !DILexicalBlock(scope: !757, file: !3, line: 481, column: 5)
!782 = !{!623, !623, i64 0}
!783 = !DILocation(line: 486, column: 34, scope: !780)
!784 = !DILocation(line: 487, column: 11, scope: !780)
!785 = distinct !{!785, !777, !786, !673}
!786 = !DILocation(line: 504, column: 5, scope: !757)
!787 = !DILocation(line: 490, column: 24, scope: !780)
!788 = !DILocation(line: 491, column: 11, scope: !780)
!789 = !DILocation(line: 494, column: 22, scope: !780)
!790 = !DILocation(line: 495, column: 11, scope: !780)
!791 = !DILocation(line: 497, column: 9, scope: !780)
!792 = !DILocation(line: 499, column: 9, scope: !780)
!793 = !DILocation(line: 502, column: 11, scope: !780)
!794 = !DILocation(line: 506, column: 23, scope: !757)
!795 = !{!796, !796, i64 0}
!796 = !{!"int", !623, i64 0}
!797 = !DILocation(line: 506, column: 21, scope: !757)
!798 = !DILocation(line: 507, column: 14, scope: !799)
!799 = distinct !DILexicalBlock(scope: !757, file: !3, line: 507, column: 7)
!800 = !DILocation(line: 507, column: 7, scope: !757)
!801 = !DILocation(line: 509, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !3, line: 508, column: 5)
!803 = !DILocation(line: 509, column: 20, scope: !802)
!804 = !DILocation(line: 511, column: 5, scope: !802)
!805 = !DILocalVariable(name: "strptr", arg: 1, scope: !806, file: !3, line: 92, type: !38)
!806 = distinct !DISubprogram(name: "collapse_escapes", scope: !3, file: !3, line: 92, type: !807, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!56, !38}
!809 = !{!805, !810, !811, !812}
!810 = !DILocalVariable(name: "strout", scope: !806, file: !3, line: 94, type: !30)
!811 = !DILocalVariable(name: "backslash_at_end", scope: !806, file: !3, line: 95, type: !44)
!812 = !DILabel(scope: !806, name: "done", file: !3, line: 151)
!813 = !DILocation(line: 0, scope: !806, inlinedAt: !814)
!814 = distinct !DILocation(line: 513, column: 7, scope: !815)
!815 = distinct !DILexicalBlock(scope: !757, file: !3, line: 513, column: 7)
!816 = !DILocation(line: 94, column: 18, scope: !806, inlinedAt: !814)
!817 = !DILocation(line: 97, column: 10, scope: !806, inlinedAt: !814)
!818 = !DILocation(line: 99, column: 10, scope: !806, inlinedAt: !814)
!819 = !DILocation(line: 99, column: 3, scope: !806, inlinedAt: !814)
!820 = !DILocation(line: 101, column: 19, scope: !821, inlinedAt: !814)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 101, column: 11)
!822 = distinct !DILexicalBlock(scope: !806, file: !3, line: 100, column: 5)
!823 = !DILocation(line: 0, scope: !821, inlinedAt: !814)
!824 = !DILocation(line: 101, column: 11, scope: !822, inlinedAt: !814)
!825 = !DILocation(line: 102, column: 19, scope: !821, inlinedAt: !814)
!826 = !DILocation(line: 102, column: 9, scope: !821, inlinedAt: !814)
!827 = !DILocation(line: 105, column: 19, scope: !828, inlinedAt: !814)
!828 = distinct !DILexicalBlock(scope: !821, file: !3, line: 104, column: 9)
!829 = !DILocation(line: 105, column: 11, scope: !828, inlinedAt: !814)
!830 = !DILocation(line: 113, column: 15, scope: !831, inlinedAt: !814)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 106, column: 13)
!832 = !DILocation(line: 117, column: 15, scope: !831, inlinedAt: !814)
!833 = !DILocation(line: 121, column: 15, scope: !831, inlinedAt: !814)
!834 = !DILocation(line: 125, column: 15, scope: !831, inlinedAt: !814)
!835 = !DILocation(line: 129, column: 15, scope: !831, inlinedAt: !814)
!836 = !DILocation(line: 133, column: 15, scope: !831, inlinedAt: !814)
!837 = !DILocation(line: 137, column: 15, scope: !831, inlinedAt: !814)
!838 = !DILocation(line: 145, column: 15, scope: !831, inlinedAt: !814)
!839 = !DILocation(line: 0, scope: !831, inlinedAt: !814)
!840 = !DILocation(line: 147, column: 17, scope: !828, inlinedAt: !814)
!841 = distinct !{!841, !819, !842, !673}
!842 = !DILocation(line: 149, column: 5, scope: !806, inlinedAt: !814)
!843 = !DILocation(line: 151, column: 2, scope: !806, inlinedAt: !814)
!844 = !DILocation(line: 153, column: 13, scope: !806, inlinedAt: !814)
!845 = !DILocation(line: 517, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !815, file: !3, line: 514, column: 5)
!847 = !DILocation(line: 522, column: 15, scope: !757)
!848 = !DILocation(line: 523, column: 15, scope: !757)
!849 = !DILocation(line: 523, column: 29, scope: !757)
!850 = !DILocation(line: 523, column: 24, scope: !757)
!851 = !DILocation(line: 522, column: 14, scope: !757)
!852 = !{i1 (i64, i8**)* @paste_parallel, i1 (i64, i8**)* @paste_serial}
!853 = !DILocation(line: 525, column: 9, scope: !757)
!854 = !DILocation(line: 525, column: 3, scope: !757)
!855 = !DILocation(line: 527, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !757, file: !3, line: 527, column: 7)
!857 = !DILocation(line: 527, column: 23, scope: !856)
!858 = !DILocation(line: 527, column: 34, scope: !856)
!859 = !DILocation(line: 527, column: 26, scope: !856)
!860 = !DILocation(line: 527, column: 41, scope: !856)
!861 = !DILocation(line: 527, column: 7, scope: !757)
!862 = !DILocation(line: 528, column: 5, scope: !856)
!863 = !DILocation(line: 529, column: 10, scope: !757)
!864 = !DILocation(line: 529, column: 3, scope: !757)
!865 = !DISubprogram(name: "bindtextdomain", scope: !694, file: !694, line: 86, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!866 = !DISubroutineType(types: !867)
!867 = !{!30, !38, !38}
!868 = !DISubprogram(name: "textdomain", scope: !694, file: !694, line: 82, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!869 = !DISubroutineType(types: !870)
!870 = !{!30, !38}
!871 = !DISubprogram(name: "atexit", scope: !872, file: !872, line: 595, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!872 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!873 = !DISubroutineType(types: !874)
!874 = !{!56, !875}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!876 = !DISubprogram(name: "getopt_long", scope: !52, file: !52, line: 66, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!877 = !DISubroutineType(types: !878)
!878 = !{!56, !56, !879, !38, !881, !58}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!882 = !DISubprogram(name: "error", scope: !883, file: !883, line: 52, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!883 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!884 = !DISubroutineType(types: !885)
!885 = !{null, !56, !56, !38, null}
!886 = distinct !DISubprogram(name: "paste_serial", scope: !3, file: !3, line: 348, type: !887, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!44, !35, !760}
!889 = !{!890, !891, !892, !893, !894, !895, !896, !900, !904}
!890 = !DILocalVariable(name: "nfiles", arg: 1, scope: !886, file: !3, line: 348, type: !35)
!891 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !886, file: !3, line: 348, type: !760)
!892 = !DILocalVariable(name: "ok", scope: !886, file: !3, line: 350, type: !44)
!893 = !DILocalVariable(name: "charnew", scope: !886, file: !3, line: 351, type: !56)
!894 = !DILocalVariable(name: "charold", scope: !886, file: !3, line: 351, type: !56)
!895 = !DILocalVariable(name: "delimptr", scope: !886, file: !3, line: 352, type: !38)
!896 = !DILocalVariable(name: "fileptr", scope: !886, file: !3, line: 353, type: !897)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !899, line: 7, baseType: !702)
!899 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!900 = !DILocalVariable(name: "saved_errno", scope: !901, file: !3, line: 357, type: !56)
!901 = distinct !DILexicalBlock(scope: !902, file: !3, line: 356, column: 5)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 355, column: 3)
!903 = distinct !DILexicalBlock(scope: !886, file: !3, line: 355, column: 3)
!904 = !DILocalVariable(name: "is_stdin", scope: !901, file: !3, line: 358, type: !44)
!905 = !DILocation(line: 0, scope: !886)
!906 = !DILocation(line: 355, column: 3, scope: !903)
!907 = !DILocation(line: 358, column: 23, scope: !901)
!908 = !DILocation(line: 0, scope: !901)
!909 = !DILocation(line: 359, column: 11, scope: !901)
!910 = !DILocation(line: 361, column: 27, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 360, column: 9)
!912 = distinct !DILexicalBlock(scope: !901, file: !3, line: 359, column: 11)
!913 = !DILocation(line: 362, column: 21, scope: !911)
!914 = !DILocation(line: 363, column: 9, scope: !911)
!915 = !DILocation(line: 366, column: 21, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !3, line: 365, column: 9)
!917 = !DILocation(line: 367, column: 23, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !3, line: 367, column: 15)
!919 = !DILocation(line: 367, column: 15, scope: !916)
!920 = !DILocation(line: 369, column: 25, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !3, line: 368, column: 13)
!922 = !DILocation(line: 369, column: 38, scope: !921)
!923 = !DILocation(line: 369, column: 15, scope: !921)
!924 = !DILocation(line: 371, column: 15, scope: !921)
!925 = !DILocation(line: 373, column: 11, scope: !916)
!926 = !DILocation(line: 0, scope: !912)
!927 = !DILocation(line: 376, column: 18, scope: !901)
!928 = !DILocalVariable(name: "__fp", arg: 1, scope: !929, file: !930, line: 66, type: !897)
!929 = distinct !DISubprogram(name: "getc_unlocked", scope: !930, file: !930, line: 66, type: !931, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!930 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!931 = !DISubroutineType(types: !932)
!932 = !{!56, !897}
!933 = !{!928}
!934 = !DILocation(line: 0, scope: !929, inlinedAt: !935)
!935 = distinct !DILocation(line: 378, column: 17, scope: !901)
!936 = !DILocation(line: 68, column: 10, scope: !929, inlinedAt: !935)
!937 = !{!938, !622, i64 8}
!938 = !{!"_IO_FILE", !796, i64 0, !622, i64 8, !622, i64 16, !622, i64 24, !622, i64 32, !622, i64 40, !622, i64 48, !622, i64 56, !622, i64 64, !622, i64 72, !622, i64 80, !622, i64 88, !622, i64 96, !622, i64 104, !796, i64 112, !796, i64 116, !939, i64 120, !940, i64 128, !623, i64 130, !623, i64 131, !622, i64 136, !939, i64 144, !622, i64 152, !622, i64 160, !622, i64 168, !622, i64 176, !939, i64 184, !796, i64 192, !623, i64 196}
!939 = !{!"long", !623, i64 0}
!940 = !{!"short", !623, i64 0}
!941 = !{!938, !622, i64 16}
!942 = !{!"branch_weights", i32 2000, i32 1}
!943 = !DILocation(line: 379, column: 21, scope: !901)
!944 = !DILocation(line: 380, column: 11, scope: !901)
!945 = !DILocation(line: 380, column: 19, scope: !946)
!946 = distinct !DILexicalBlock(scope: !901, file: !3, line: 380, column: 11)
!947 = !DILocation(line: 388, column: 11, scope: !948)
!948 = distinct !DILexicalBlock(scope: !946, file: !3, line: 381, column: 9)
!949 = !DILocation(line: 410, column: 22, scope: !950)
!950 = distinct !DILexicalBlock(scope: !901, file: !3, line: 410, column: 11)
!951 = !DILocation(line: 410, column: 11, scope: !901)
!952 = !DILocation(line: 0, scope: !929, inlinedAt: !953)
!953 = distinct !DILocation(line: 388, column: 29, scope: !948)
!954 = !DILocation(line: 68, column: 10, scope: !929, inlinedAt: !953)
!955 = !DILocation(line: 388, column: 45, scope: !948)
!956 = !DILocation(line: 391, column: 30, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 391, column: 19)
!958 = distinct !DILexicalBlock(scope: !948, file: !3, line: 389, column: 13)
!959 = !DILocation(line: 391, column: 27, scope: !957)
!960 = !DILocation(line: 391, column: 19, scope: !958)
!961 = !DILocation(line: 393, column: 23, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !3, line: 393, column: 23)
!963 = distinct !DILexicalBlock(scope: !957, file: !3, line: 392, column: 17)
!964 = !DILocation(line: 393, column: 33, scope: !962)
!965 = !DILocation(line: 393, column: 23, scope: !963)
!966 = !DILocalVariable(name: "c", arg: 1, scope: !967, file: !3, line: 169, type: !31)
!967 = distinct !DISubprogram(name: "xputchar", scope: !3, file: !3, line: 169, type: !968, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !31}
!970 = !{!966}
!971 = !DILocation(line: 0, scope: !967, inlinedAt: !972)
!972 = distinct !DILocation(line: 394, column: 21, scope: !962)
!973 = !DILocalVariable(name: "__c", arg: 1, scope: !974, file: !930, line: 108, type: !56)
!974 = distinct !DISubprogram(name: "putchar_unlocked", scope: !930, file: !930, line: 108, type: !975, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{!56, !56}
!977 = !{!973}
!978 = !DILocation(line: 0, scope: !974, inlinedAt: !979)
!979 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !972)
!980 = distinct !DILexicalBlock(scope: !967, file: !3, line: 171, column: 7)
!981 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !979)
!982 = !{!938, !622, i64 40}
!983 = !{!938, !622, i64 48}
!984 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !972)
!985 = !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !972)
!986 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !972)
!987 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !972)
!988 = !DILocation(line: 396, column: 23, scope: !989)
!989 = distinct !DILexicalBlock(scope: !963, file: !3, line: 396, column: 23)
!990 = !DILocation(line: 396, column: 37, scope: !989)
!991 = !DILocation(line: 396, column: 34, scope: !989)
!992 = !DILocation(line: 396, column: 23, scope: !963)
!993 = distinct !{!993, !947, !994, !673}
!994 = !DILocation(line: 403, column: 13, scope: !948)
!995 = !DILocation(line: 0, scope: !967, inlinedAt: !996)
!996 = distinct !DILocation(line: 400, column: 17, scope: !957)
!997 = !DILocation(line: 0, scope: !974, inlinedAt: !998)
!998 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !996)
!999 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !998)
!1000 = !DILocation(line: 400, column: 27, scope: !957)
!1001 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !996)
!1002 = !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !996)
!1003 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !996)
!1004 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !996)
!1005 = !DILocation(line: 404, column: 25, scope: !948)
!1006 = !DILocation(line: 0, scope: !967, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 407, column: 11, scope: !948)
!1008 = !DILocation(line: 0, scope: !974, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1007)
!1010 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !1009)
!1011 = !DILocation(line: 407, column: 21, scope: !948)
!1012 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !1007)
!1013 = !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1007)
!1014 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !1007)
!1015 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !1007)
!1016 = !DILocation(line: 410, column: 19, scope: !950)
!1017 = !DILocation(line: 0, scope: !967, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 411, column: 9, scope: !950)
!1019 = !DILocation(line: 0, scope: !974, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1018)
!1021 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !1020)
!1022 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !1018)
!1023 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !1018)
!1024 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !1018)
!1025 = !DILocalVariable(name: "__stream", arg: 1, scope: !1026, file: !930, line: 135, type: !897)
!1026 = distinct !DISubprogram(name: "ferror_unlocked", scope: !930, file: !930, line: 135, type: !931, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1027)
!1027 = !{!1025}
!1028 = !DILocation(line: 0, scope: !1026, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 413, column: 11, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !901, file: !3, line: 413, column: 11)
!1031 = !DILocation(line: 137, column: 10, scope: !1026, inlinedAt: !1029)
!1032 = !{!938, !796, i64 0}
!1033 = !DILocation(line: 413, column: 11, scope: !1030)
!1034 = !DILocation(line: 413, column: 11, scope: !901)
!1035 = !DILocation(line: 415, column: 40, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 414, column: 9)
!1037 = !DILocation(line: 415, column: 11, scope: !1036)
!1038 = !DILocation(line: 417, column: 9, scope: !1036)
!1039 = !DILocation(line: 418, column: 11, scope: !901)
!1040 = !DILocation(line: 419, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !901, file: !3, line: 418, column: 11)
!1042 = !DILocation(line: 420, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 420, column: 16)
!1044 = !DILocation(line: 420, column: 33, scope: !1043)
!1045 = !DILocation(line: 420, column: 16, scope: !1041)
!1046 = !DILocation(line: 422, column: 21, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 421, column: 9)
!1048 = !DILocation(line: 422, column: 34, scope: !1047)
!1049 = !DILocation(line: 422, column: 11, scope: !1047)
!1050 = !DILocation(line: 424, column: 9, scope: !1047)
!1051 = !DILocation(line: 355, column: 24, scope: !902)
!1052 = !DILocation(line: 355, column: 35, scope: !902)
!1053 = distinct !{!1053, !906, !1054, !673}
!1054 = !DILocation(line: 425, column: 5, scope: !903)
!1055 = !DILocation(line: 426, column: 10, scope: !886)
!1056 = !DILocation(line: 426, column: 3, scope: !886)
!1057 = distinct !DISubprogram(name: "paste_parallel", scope: !3, file: !3, line: 180, type: !887, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1065, !1066, !1067, !1069, !1070, !1071, !1073, !1076, !1077, !1078, !1085, !1086, !1087, !1098, !1099, !1100}
!1059 = !DILocalVariable(name: "nfiles", arg: 1, scope: !1057, file: !3, line: 180, type: !35)
!1060 = !DILocalVariable(name: "fnamptr", arg: 2, scope: !1057, file: !3, line: 180, type: !760)
!1061 = !DILocalVariable(name: "ok", scope: !1057, file: !3, line: 182, type: !44)
!1062 = !DILocalVariable(name: "delbuf", scope: !1057, file: !3, line: 187, type: !30)
!1063 = !DILocalVariable(name: "fileptr", scope: !1057, file: !3, line: 191, type: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!1065 = !DILocalVariable(name: "files_open", scope: !1057, file: !3, line: 194, type: !35)
!1066 = !DILocalVariable(name: "opened_stdin", scope: !1057, file: !3, line: 197, type: !44)
!1067 = !DILocalVariable(name: "somedone", scope: !1068, file: !3, line: 231, type: !44)
!1068 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 229, column: 5)
!1069 = !DILocalVariable(name: "delimptr", scope: !1068, file: !3, line: 232, type: !38)
!1070 = !DILocalVariable(name: "delims_saved", scope: !1068, file: !3, line: 233, type: !35)
!1071 = !DILocalVariable(name: "i", scope: !1072, file: !3, line: 235, type: !35)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 235, column: 7)
!1073 = !DILocalVariable(name: "chr", scope: !1074, file: !3, line: 237, type: !56)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 236, column: 9)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 235, column: 7)
!1076 = !DILocalVariable(name: "err", scope: !1074, file: !3, line: 238, type: !56)
!1077 = !DILocalVariable(name: "sometodo", scope: !1074, file: !3, line: 239, type: !44)
!1078 = !DILocalVariable(name: "__ptr", scope: !1079, file: !3, line: 247, type: !38)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 247, column: 23)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 247, column: 23)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 246, column: 17)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 245, column: 19)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 242, column: 13)
!1084 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 241, column: 15)
!1085 = !DILocalVariable(name: "__stream", scope: !1079, file: !3, line: 247, type: !897)
!1086 = !DILocalVariable(name: "__cnt", scope: !1079, file: !3, line: 247, type: !35)
!1087 = !DILocalVariable(name: "__ptr", scope: !1088, file: !3, line: 295, type: !38)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 295, column: 31)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 295, column: 31)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 294, column: 25)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 293, column: 27)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 291, column: 21)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 290, column: 23)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 287, column: 17)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 286, column: 19)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 264, column: 13)
!1097 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 263, column: 15)
!1098 = !DILocalVariable(name: "__stream", scope: !1088, file: !3, line: 295, type: !897)
!1099 = !DILocalVariable(name: "__cnt", scope: !1088, file: !3, line: 295, type: !35)
!1100 = !DILocalVariable(name: "c", scope: !1101, file: !3, line: 332, type: !31)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 329, column: 17)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 319, column: 19)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 314, column: 13)
!1104 = !DILocation(line: 0, scope: !1057)
!1105 = !DILocation(line: 187, column: 34, scope: !1057)
!1106 = !DILocation(line: 187, column: 18, scope: !1057)
!1107 = !DILocation(line: 191, column: 37, scope: !1057)
!1108 = !DILocalVariable(name: "n", arg: 1, scope: !1109, file: !183, line: 99, type: !35)
!1109 = distinct !DISubprogram(name: "xnmalloc", scope: !183, file: !183, line: 99, type: !1110, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1112)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!32, !35, !35}
!1112 = !{!1108, !1113}
!1113 = !DILocalVariable(name: "s", arg: 2, scope: !1109, file: !183, line: 99, type: !35)
!1114 = !DILocation(line: 0, scope: !1109, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 191, column: 20, scope: !1057)
!1116 = !DILocation(line: 101, column: 7, scope: !1117, inlinedAt: !1115)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !183, line: 101, column: 7)
!1118 = !DILocation(line: 101, column: 7, scope: !1109, inlinedAt: !1115)
!1119 = !DILocation(line: 102, column: 5, scope: !1117, inlinedAt: !1115)
!1120 = !DILocation(line: 103, column: 21, scope: !1109, inlinedAt: !1115)
!1121 = !DILocation(line: 103, column: 10, scope: !1109, inlinedAt: !1115)
!1122 = !DILocation(line: 191, column: 20, scope: !1057)
!1123 = !DILocation(line: 203, column: 35, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 203, column: 3)
!1125 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 203, column: 3)
!1126 = !DILocation(line: 203, column: 3, scope: !1125)
!1127 = !DILocation(line: 205, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 205, column: 11)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 204, column: 5)
!1130 = !DILocation(line: 205, column: 11, scope: !1129)
!1131 = !DILocation(line: 207, column: 27, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 206, column: 9)
!1133 = !DILocation(line: 208, column: 33, scope: !1132)
!1134 = !DILocation(line: 208, column: 11, scope: !1132)
!1135 = !DILocation(line: 208, column: 31, scope: !1132)
!1136 = !DILocation(line: 209, column: 9, scope: !1132)
!1137 = !DILocation(line: 212, column: 33, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 211, column: 9)
!1139 = !DILocation(line: 212, column: 11, scope: !1138)
!1140 = !DILocation(line: 212, column: 31, scope: !1138)
!1141 = !DILocation(line: 213, column: 35, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 213, column: 15)
!1143 = !DILocation(line: 213, column: 15, scope: !1138)
!1144 = !DILocation(line: 214, column: 13, scope: !1142)
!1145 = !DILocation(line: 215, column: 20, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 215, column: 20)
!1147 = !DILocation(line: 215, column: 49, scope: !1146)
!1148 = !DILocation(line: 215, column: 20, scope: !1142)
!1149 = !DILocation(line: 217, column: 11, scope: !1138)
!1150 = !DILocation(line: 203, column: 45, scope: !1124)
!1151 = distinct !{!1151, !1126, !1152, !673}
!1152 = !DILocation(line: 219, column: 5, scope: !1125)
!1153 = !DILocation(line: 221, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 221, column: 7)
!1155 = !DILocation(line: 221, column: 20, scope: !1154)
!1156 = !DILocation(line: 228, column: 3, scope: !1057)
!1157 = !DILocation(line: 221, column: 23, scope: !1154)
!1158 = !DILocation(line: 221, column: 7, scope: !1057)
!1159 = !DILocation(line: 222, column: 5, scope: !1154)
!1160 = !DILocation(line: 203, column: 19, scope: !1125)
!1161 = !DILocation(line: 182, column: 8, scope: !1057)
!1162 = !DILocation(line: 0, scope: !1074)
!1163 = distinct !{!1163, !1156, !1164, !673}
!1164 = !DILocation(line: 337, column: 5, scope: !1057)
!1165 = !DILocation(line: 0, scope: !1068)
!1166 = !DILocation(line: 0, scope: !1072)
!1167 = !DILocation(line: 232, column: 30, scope: !1068)
!1168 = !DILocation(line: 235, column: 7, scope: !1072)
!1169 = !DILocation(line: 241, column: 15, scope: !1084)
!1170 = !DILocation(line: 241, column: 15, scope: !1074)
!1171 = !DILocation(line: 0, scope: !929, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 243, column: 21, scope: !1083)
!1173 = !DILocation(line: 68, column: 10, scope: !929, inlinedAt: !1172)
!1174 = !DILocation(line: 244, column: 21, scope: !1083)
!1175 = !DILocation(line: 245, column: 23, scope: !1082)
!1176 = !DILocation(line: 245, column: 30, scope: !1082)
!1177 = !DILocation(line: 247, column: 23, scope: !1080)
!1178 = !DILocation(line: 247, column: 64, scope: !1080)
!1179 = !DILocation(line: 247, column: 23, scope: !1081)
!1180 = !DILocation(line: 248, column: 21, scope: !1080)
!1181 = !DILocation(line: 252, column: 26, scope: !1083)
!1182 = !DILocation(line: 252, column: 15, scope: !1083)
!1183 = !DILocation(line: 255, column: 30, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 255, column: 23)
!1185 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 253, column: 17)
!1186 = !DILocation(line: 255, column: 27, scope: !1184)
!1187 = !DILocation(line: 255, column: 23, scope: !1185)
!1188 = !DILocation(line: 0, scope: !967, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 257, column: 19, scope: !1185)
!1190 = !DILocation(line: 0, scope: !974, inlinedAt: !1191)
!1191 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1189)
!1192 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !1191)
!1193 = !DILocation(line: 257, column: 29, scope: !1185)
!1194 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !1189)
!1195 = !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1189)
!1196 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !1189)
!1197 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !1189)
!1198 = !DILocation(line: 0, scope: !929, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 258, column: 25, scope: !1185)
!1200 = !DILocation(line: 68, column: 10, scope: !929, inlinedAt: !1199)
!1201 = distinct !{!1201, !1182, !1202, !673}
!1202 = !DILocation(line: 260, column: 17, scope: !1083)
!1203 = !DILocation(line: 259, column: 25, scope: !1185)
!1204 = !DILocation(line: 263, column: 15, scope: !1074)
!1205 = !DILocation(line: 0, scope: !1026, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 269, column: 23, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 269, column: 23)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 268, column: 17)
!1209 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 267, column: 19)
!1210 = !DILocation(line: 137, column: 10, scope: !1026, inlinedAt: !1206)
!1211 = !DILocation(line: 269, column: 23, scope: !1207)
!1212 = !DILocation(line: 269, column: 23, scope: !1208)
!1213 = !DILocation(line: 271, column: 44, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 270, column: 21)
!1215 = !DILocation(line: 271, column: 23, scope: !1214)
!1216 = !DILocation(line: 273, column: 21, scope: !1214)
!1217 = !DILocation(line: 274, column: 37, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 274, column: 23)
!1219 = !DILocation(line: 274, column: 34, scope: !1218)
!1220 = !DILocation(line: 274, column: 23, scope: !1208)
!1221 = !DILocation(line: 275, column: 21, scope: !1218)
!1222 = !DILocation(line: 276, column: 28, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 276, column: 28)
!1224 = !DILocation(line: 276, column: 48, scope: !1223)
!1225 = !DILocation(line: 276, column: 28, scope: !1218)
!1226 = !DILocation(line: 278, column: 33, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 277, column: 21)
!1228 = !DILocation(line: 278, column: 46, scope: !1227)
!1229 = !DILocation(line: 278, column: 23, scope: !1227)
!1230 = !DILocation(line: 280, column: 21, scope: !1227)
!1231 = !DILocation(line: 0, scope: !1208)
!1232 = !DILocation(line: 282, column: 30, scope: !1208)
!1233 = !DILocation(line: 283, column: 29, scope: !1208)
!1234 = !DILocation(line: 284, column: 17, scope: !1208)
!1235 = !DILocation(line: 286, column: 21, scope: !1095)
!1236 = !DILocation(line: 286, column: 25, scope: !1095)
!1237 = !DILocation(line: 286, column: 19, scope: !1096)
!1238 = !DILocation(line: 290, column: 23, scope: !1093)
!1239 = !DILocation(line: 290, column: 23, scope: !1094)
!1240 = !DILocation(line: 293, column: 27, scope: !1091)
!1241 = !DILocation(line: 293, column: 27, scope: !1092)
!1242 = !DILocation(line: 295, column: 31, scope: !1089)
!1243 = !DILocation(line: 296, column: 31, scope: !1089)
!1244 = !DILocation(line: 295, column: 31, scope: !1090)
!1245 = !DILocation(line: 297, column: 29, scope: !1089)
!1246 = !DILocation(line: 300, column: 33, scope: !1092)
!1247 = !DILocation(line: 0, scope: !967, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 300, column: 23, scope: !1092)
!1249 = !DILocation(line: 0, scope: !974, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1248)
!1251 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !1250)
!1252 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !1248)
!1253 = !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1248)
!1254 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !1248)
!1255 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !1248)
!1256 = !DILocation(line: 307, column: 23, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 307, column: 23)
!1258 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 305, column: 17)
!1259 = !DILocation(line: 307, column: 33, scope: !1257)
!1260 = !DILocation(line: 307, column: 23, scope: !1258)
!1261 = !DILocation(line: 308, column: 40, scope: !1257)
!1262 = !DILocation(line: 308, column: 21, scope: !1257)
!1263 = !DILocation(line: 308, column: 44, scope: !1257)
!1264 = !DILocation(line: 309, column: 23, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 309, column: 23)
!1266 = !DILocation(line: 309, column: 37, scope: !1265)
!1267 = !DILocation(line: 309, column: 34, scope: !1265)
!1268 = !DILocation(line: 309, column: 23, scope: !1258)
!1269 = !DILocation(line: 319, column: 21, scope: !1102)
!1270 = !DILocation(line: 319, column: 25, scope: !1102)
!1271 = !DILocation(line: 319, column: 19, scope: !1103)
!1272 = !DILocation(line: 321, column: 30, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 321, column: 23)
!1274 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 320, column: 17)
!1275 = !DILocation(line: 321, column: 27, scope: !1273)
!1276 = !DILocation(line: 321, column: 41, scope: !1273)
!1277 = !DILocation(line: 0, scope: !967, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 322, column: 21, scope: !1273)
!1279 = !DILocation(line: 0, scope: !974, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1278)
!1281 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !1280)
!1282 = !DILocation(line: 322, column: 31, scope: !1273)
!1283 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !1278)
!1284 = !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1278)
!1285 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !1278)
!1286 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !1278)
!1287 = !DILocation(line: 323, column: 23, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 323, column: 23)
!1289 = !DILocation(line: 323, column: 33, scope: !1288)
!1290 = !DILocation(line: 323, column: 23, scope: !1274)
!1291 = !DILocation(line: 0, scope: !967, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 324, column: 21, scope: !1288)
!1293 = !DILocation(line: 0, scope: !974, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1292)
!1295 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !1294)
!1296 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !1292)
!1297 = !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1292)
!1298 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !1292)
!1299 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !1292)
!1300 = !DILocation(line: 325, column: 23, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 325, column: 23)
!1302 = !DILocation(line: 325, column: 37, scope: !1301)
!1303 = !DILocation(line: 325, column: 34, scope: !1301)
!1304 = !DILocation(line: 325, column: 23, scope: !1274)
!1305 = !DILocation(line: 332, column: 33, scope: !1101)
!1306 = !DILocation(line: 332, column: 29, scope: !1101)
!1307 = !DILocation(line: 0, scope: !1101)
!1308 = !DILocation(line: 0, scope: !967, inlinedAt: !1309)
!1309 = distinct !DILocation(line: 333, column: 19, scope: !1101)
!1310 = !DILocation(line: 0, scope: !974, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1309)
!1312 = !DILocation(line: 110, column: 10, scope: !974, inlinedAt: !1311)
!1313 = !DILocation(line: 332, column: 28, scope: !1101)
!1314 = !DILocation(line: 171, column: 7, scope: !967, inlinedAt: !1309)
!1315 = !DILocation(line: 171, column: 7, scope: !980, inlinedAt: !1309)
!1316 = !DILocation(line: 171, column: 19, scope: !980, inlinedAt: !1309)
!1317 = !DILocation(line: 172, column: 5, scope: !980, inlinedAt: !1309)
!1318 = !DILocation(line: 235, column: 53, scope: !1075)
!1319 = !DILocation(line: 235, column: 28, scope: !1075)
!1320 = !DILocation(line: 235, column: 37, scope: !1075)
!1321 = distinct !{!1321, !1168, !1322, !673}
!1322 = !DILocation(line: 336, column: 9, scope: !1072)
!1323 = !DILocation(line: 338, column: 3, scope: !1057)
!1324 = !DILocation(line: 339, column: 3, scope: !1057)
!1325 = !DILocation(line: 340, column: 10, scope: !1057)
!1326 = !DILocation(line: 340, column: 3, scope: !1057)
!1327 = !DISubprogram(name: "fileno", scope: !698, file: !698, line: 785, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!56, !701}
!1330 = !DISubprogram(name: "fwrite_unlocked", scope: !698, file: !698, line: 680, type: !1331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!37, !1333, !37, !37, !701}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1335 = distinct !DISubprogram(name: "write_error", scope: !3, file: !3, line: 161, type: !631, scopeLine: 162, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!1336 = !DILocation(line: 163, column: 3, scope: !1335)
!1337 = !DISubprogram(name: "clearerr_unlocked", scope: !698, file: !698, line: 770, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !701}
!1340 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !77, file: !77, line: 51, type: !643, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1341)
!1341 = !{!1342}
!1342 = !DILocalVariable(name: "file", arg: 1, scope: !1340, file: !77, line: 51, type: !38)
!1343 = !DILocation(line: 0, scope: !1340)
!1344 = !DILocation(line: 53, column: 13, scope: !1340)
!1345 = !DILocation(line: 54, column: 1, scope: !1340)
!1346 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !77, file: !77, line: 88, type: !1347, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !44}
!1349 = !{!1350}
!1350 = !DILocalVariable(name: "ignore", arg: 1, scope: !1346, file: !77, line: 88, type: !44)
!1351 = !DILocation(line: 0, scope: !1346)
!1352 = !DILocation(line: 90, column: 16, scope: !1346)
!1353 = !{!1354, !1354, i64 0}
!1354 = !{!"_Bool", !623, i64 0}
!1355 = !DILocation(line: 91, column: 1, scope: !1346)
!1356 = distinct !DISubprogram(name: "close_stdout", scope: !77, file: !77, line: 117, type: !631, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1357)
!1357 = !{!1358}
!1358 = !DILocalVariable(name: "write_error", scope: !1359, file: !77, line: 122, type: !38)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !77, line: 121, column: 5)
!1360 = distinct !DILexicalBlock(scope: !1356, file: !77, line: 119, column: 7)
!1361 = !DILocation(line: 119, column: 21, scope: !1360)
!1362 = !DILocation(line: 119, column: 7, scope: !1360)
!1363 = !DILocation(line: 119, column: 29, scope: !1360)
!1364 = !DILocation(line: 120, column: 7, scope: !1360)
!1365 = !DILocation(line: 120, column: 12, scope: !1360)
!1366 = !{i8 0, i8 2}
!1367 = !DILocation(line: 120, column: 25, scope: !1360)
!1368 = !DILocation(line: 120, column: 28, scope: !1360)
!1369 = !DILocation(line: 120, column: 34, scope: !1360)
!1370 = !DILocation(line: 119, column: 7, scope: !1356)
!1371 = !DILocation(line: 122, column: 33, scope: !1359)
!1372 = !DILocation(line: 0, scope: !1359)
!1373 = !DILocation(line: 123, column: 11, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1359, file: !77, line: 123, column: 11)
!1375 = !DILocation(line: 0, scope: !1374)
!1376 = !DILocation(line: 123, column: 11, scope: !1359)
!1377 = !DILocation(line: 124, column: 36, scope: !1374)
!1378 = !DILocation(line: 124, column: 9, scope: !1374)
!1379 = !DILocation(line: 127, column: 9, scope: !1374)
!1380 = !DILocation(line: 129, column: 14, scope: !1359)
!1381 = !DILocation(line: 129, column: 7, scope: !1359)
!1382 = !DILocation(line: 134, column: 42, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1356, file: !77, line: 134, column: 7)
!1384 = !DILocation(line: 134, column: 28, scope: !1383)
!1385 = !DILocation(line: 134, column: 50, scope: !1383)
!1386 = !DILocation(line: 134, column: 7, scope: !1356)
!1387 = !DILocation(line: 135, column: 12, scope: !1383)
!1388 = !DILocation(line: 135, column: 5, scope: !1383)
!1389 = !DILocation(line: 136, column: 1, scope: !1356)
!1390 = distinct !DISubprogram(name: "fdadvise", scope: !170, file: !170, line: 31, type: !1391, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1395)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !56, !1393, !1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !698, line: 63, baseType: !724)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1395 = !{!1396, !1397, !1398, !1399, !1400}
!1396 = !DILocalVariable(name: "fd", arg: 1, scope: !1390, file: !170, line: 31, type: !56)
!1397 = !DILocalVariable(name: "offset", arg: 2, scope: !1390, file: !170, line: 31, type: !1393)
!1398 = !DILocalVariable(name: "len", arg: 3, scope: !1390, file: !170, line: 31, type: !1393)
!1399 = !DILocalVariable(name: "advice", arg: 4, scope: !1390, file: !170, line: 31, type: !1394)
!1400 = !DILocalVariable(name: "__x", scope: !1401, file: !170, line: 34, type: !56)
!1401 = distinct !DILexicalBlock(scope: !1390, file: !170, line: 34, column: 3)
!1402 = !DILocation(line: 0, scope: !1390)
!1403 = !DILocation(line: 34, column: 3, scope: !1401)
!1404 = !DILocation(line: 0, scope: !1401)
!1405 = !DILocation(line: 36, column: 1, scope: !1390)
!1406 = !DISubprogram(name: "posix_fadvise", scope: !1407, file: !1407, line: 288, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!1407 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!56, !56, !726, !726, !56}
!1410 = distinct !DISubprogram(name: "fadvise", scope: !170, file: !170, line: 39, type: !1411, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1447)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !1413, !1394}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !899, line: 7, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1415, file: !703, line: 51, baseType: !56, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1415, file: !703, line: 54, baseType: !30, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1415, file: !703, line: 55, baseType: !30, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1415, file: !703, line: 56, baseType: !30, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1415, file: !703, line: 57, baseType: !30, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1415, file: !703, line: 58, baseType: !30, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1415, file: !703, line: 59, baseType: !30, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1415, file: !703, line: 60, baseType: !30, size: 64, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1415, file: !703, line: 61, baseType: !30, size: 64, offset: 512)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1415, file: !703, line: 64, baseType: !30, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1415, file: !703, line: 65, baseType: !30, size: 64, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1415, file: !703, line: 66, baseType: !30, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1415, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1415, file: !703, line: 70, baseType: !1431, size: 64, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1415, file: !703, line: 72, baseType: !56, size: 32, offset: 896)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1415, file: !703, line: 73, baseType: !56, size: 32, offset: 928)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1415, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1415, file: !703, line: 77, baseType: !119, size: 16, offset: 1024)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1415, file: !703, line: 78, baseType: !729, size: 8, offset: 1040)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1415, file: !703, line: 79, baseType: !731, size: 8, offset: 1048)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1415, file: !703, line: 81, baseType: !735, size: 64, offset: 1088)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1415, file: !703, line: 89, baseType: !738, size: 64, offset: 1152)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1415, file: !703, line: 91, baseType: !740, size: 64, offset: 1216)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1415, file: !703, line: 92, baseType: !743, size: 64, offset: 1280)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1415, file: !703, line: 93, baseType: !1431, size: 64, offset: 1344)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1415, file: !703, line: 94, baseType: !32, size: 64, offset: 1408)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1415, file: !703, line: 95, baseType: !35, size: 64, offset: 1472)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1415, file: !703, line: 96, baseType: !56, size: 32, offset: 1536)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1415, file: !703, line: 98, baseType: !750, size: 160, offset: 1568)
!1447 = !{!1448, !1449}
!1448 = !DILocalVariable(name: "fp", arg: 1, scope: !1410, file: !170, line: 39, type: !1413)
!1449 = !DILocalVariable(name: "advice", arg: 2, scope: !1410, file: !170, line: 39, type: !1394)
!1450 = !DILocation(line: 0, scope: !1410)
!1451 = !DILocation(line: 41, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1410, file: !170, line: 41, column: 7)
!1453 = !DILocation(line: 41, column: 7, scope: !1410)
!1454 = !DILocation(line: 42, column: 15, scope: !1452)
!1455 = !DILocation(line: 0, scope: !1390, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 42, column: 5, scope: !1452)
!1457 = !DILocation(line: 34, column: 3, scope: !1401, inlinedAt: !1456)
!1458 = !DILocation(line: 0, scope: !1401, inlinedAt: !1456)
!1459 = !DILocation(line: 42, column: 5, scope: !1452)
!1460 = !DILocation(line: 43, column: 1, scope: !1410)
!1461 = distinct !DISubprogram(name: "set_program_name", scope: !90, file: !90, line: 39, type: !643, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !89, retainedNodes: !1462)
!1462 = !{!1463, !1464, !1465}
!1463 = !DILocalVariable(name: "argv0", arg: 1, scope: !1461, file: !90, line: 39, type: !38)
!1464 = !DILocalVariable(name: "slash", scope: !1461, file: !90, line: 46, type: !38)
!1465 = !DILocalVariable(name: "base", scope: !1461, file: !90, line: 47, type: !38)
!1466 = !DILocation(line: 0, scope: !1461)
!1467 = !DILocation(line: 51, column: 13, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1461, file: !90, line: 51, column: 7)
!1469 = !DILocation(line: 51, column: 7, scope: !1461)
!1470 = !DILocation(line: 55, column: 14, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !90, line: 52, column: 5)
!1472 = !DILocation(line: 54, column: 7, scope: !1471)
!1473 = !DILocation(line: 56, column: 7, scope: !1471)
!1474 = !DILocation(line: 59, column: 11, scope: !1461)
!1475 = !DILocation(line: 60, column: 17, scope: !1461)
!1476 = !DILocation(line: 60, column: 11, scope: !1461)
!1477 = !DILocation(line: 61, column: 12, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1461, file: !90, line: 61, column: 7)
!1479 = !DILocation(line: 61, column: 20, scope: !1478)
!1480 = !DILocation(line: 61, column: 25, scope: !1478)
!1481 = !DILocation(line: 61, column: 42, scope: !1478)
!1482 = !DILocation(line: 61, column: 28, scope: !1478)
!1483 = !DILocation(line: 61, column: 61, scope: !1478)
!1484 = !DILocation(line: 61, column: 7, scope: !1461)
!1485 = !DILocation(line: 64, column: 11, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !90, line: 64, column: 11)
!1487 = distinct !DILexicalBlock(scope: !1478, file: !90, line: 62, column: 5)
!1488 = !DILocation(line: 64, column: 36, scope: !1486)
!1489 = !DILocation(line: 64, column: 11, scope: !1487)
!1490 = !DILocation(line: 66, column: 24, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !90, line: 65, column: 9)
!1492 = !DILocation(line: 70, column: 41, scope: !1491)
!1493 = !DILocation(line: 72, column: 9, scope: !1491)
!1494 = !DILocation(line: 84, column: 16, scope: !1461)
!1495 = !DILocation(line: 90, column: 27, scope: !1461)
!1496 = !DILocation(line: 92, column: 1, scope: !1461)
!1497 = distinct !DISubprogram(name: "clone_quoting_options", scope: !96, file: !96, line: 122, type: !1498, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1501)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!1500, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1501 = !{!1502, !1503, !1504}
!1502 = !DILocalVariable(name: "o", arg: 1, scope: !1497, file: !96, line: 122, type: !1500)
!1503 = !DILocalVariable(name: "e", scope: !1497, file: !96, line: 124, type: !56)
!1504 = !DILocalVariable(name: "p", scope: !1497, file: !96, line: 125, type: !1500)
!1505 = !DILocation(line: 0, scope: !1497)
!1506 = !DILocation(line: 124, column: 11, scope: !1497)
!1507 = !DILocation(line: 125, column: 40, scope: !1497)
!1508 = !DILocation(line: 125, column: 31, scope: !1497)
!1509 = !DILocation(line: 127, column: 9, scope: !1497)
!1510 = !DILocation(line: 128, column: 3, scope: !1497)
!1511 = distinct !DISubprogram(name: "get_quoting_style", scope: !96, file: !96, line: 133, type: !1512, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1516)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!5, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!1516 = !{!1517}
!1517 = !DILocalVariable(name: "o", arg: 1, scope: !1511, file: !96, line: 133, type: !1514)
!1518 = !DILocation(line: 0, scope: !1511)
!1519 = !DILocation(line: 135, column: 11, scope: !1511)
!1520 = !DILocation(line: 135, column: 46, scope: !1511)
!1521 = !{!1522, !623, i64 0}
!1522 = !{!"quoting_options", !623, i64 0, !796, i64 4, !623, i64 8, !622, i64 40, !622, i64 48}
!1523 = !DILocation(line: 135, column: 3, scope: !1511)
!1524 = distinct !DISubprogram(name: "set_quoting_style", scope: !96, file: !96, line: 141, type: !1525, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1500, !5}
!1527 = !{!1528, !1529}
!1528 = !DILocalVariable(name: "o", arg: 1, scope: !1524, file: !96, line: 141, type: !1500)
!1529 = !DILocalVariable(name: "s", arg: 2, scope: !1524, file: !96, line: 141, type: !5)
!1530 = !DILocation(line: 0, scope: !1524)
!1531 = !DILocation(line: 143, column: 4, scope: !1524)
!1532 = !DILocation(line: 143, column: 39, scope: !1524)
!1533 = !DILocation(line: 143, column: 45, scope: !1524)
!1534 = !DILocation(line: 144, column: 1, scope: !1524)
!1535 = distinct !DISubprogram(name: "set_char_quoting", scope: !96, file: !96, line: 152, type: !1536, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!56, !1500, !31, !56}
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1545, !1546}
!1539 = !DILocalVariable(name: "o", arg: 1, scope: !1535, file: !96, line: 152, type: !1500)
!1540 = !DILocalVariable(name: "c", arg: 2, scope: !1535, file: !96, line: 152, type: !31)
!1541 = !DILocalVariable(name: "i", arg: 3, scope: !1535, file: !96, line: 152, type: !56)
!1542 = !DILocalVariable(name: "uc", scope: !1535, file: !96, line: 154, type: !34)
!1543 = !DILocalVariable(name: "p", scope: !1535, file: !96, line: 155, type: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1545 = !DILocalVariable(name: "shift", scope: !1535, file: !96, line: 157, type: !56)
!1546 = !DILocalVariable(name: "r", scope: !1535, file: !96, line: 158, type: !56)
!1547 = !DILocation(line: 0, scope: !1535)
!1548 = !DILocation(line: 156, column: 6, scope: !1535)
!1549 = !DILocation(line: 156, column: 62, scope: !1535)
!1550 = !DILocation(line: 156, column: 57, scope: !1535)
!1551 = !DILocation(line: 157, column: 15, scope: !1535)
!1552 = !DILocation(line: 158, column: 12, scope: !1535)
!1553 = !DILocation(line: 158, column: 15, scope: !1535)
!1554 = !DILocation(line: 158, column: 25, scope: !1535)
!1555 = !DILocation(line: 159, column: 13, scope: !1535)
!1556 = !DILocation(line: 159, column: 18, scope: !1535)
!1557 = !DILocation(line: 159, column: 23, scope: !1535)
!1558 = !DILocation(line: 159, column: 6, scope: !1535)
!1559 = !DILocation(line: 160, column: 3, scope: !1535)
!1560 = distinct !DISubprogram(name: "set_quoting_flags", scope: !96, file: !96, line: 168, type: !1561, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!56, !1500, !56}
!1563 = !{!1564, !1565, !1566}
!1564 = !DILocalVariable(name: "o", arg: 1, scope: !1560, file: !96, line: 168, type: !1500)
!1565 = !DILocalVariable(name: "i", arg: 2, scope: !1560, file: !96, line: 168, type: !56)
!1566 = !DILocalVariable(name: "r", scope: !1560, file: !96, line: 170, type: !56)
!1567 = !DILocation(line: 0, scope: !1560)
!1568 = !DILocation(line: 171, column: 8, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1560, file: !96, line: 171, column: 7)
!1570 = !DILocation(line: 171, column: 7, scope: !1560)
!1571 = !DILocation(line: 173, column: 10, scope: !1560)
!1572 = !{!1522, !796, i64 4}
!1573 = !DILocation(line: 174, column: 12, scope: !1560)
!1574 = !DILocation(line: 175, column: 3, scope: !1560)
!1575 = distinct !DISubprogram(name: "set_custom_quoting", scope: !96, file: !96, line: 179, type: !1576, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1500, !38, !38}
!1578 = !{!1579, !1580, !1581}
!1579 = !DILocalVariable(name: "o", arg: 1, scope: !1575, file: !96, line: 179, type: !1500)
!1580 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1575, file: !96, line: 180, type: !38)
!1581 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1575, file: !96, line: 180, type: !38)
!1582 = !DILocation(line: 0, scope: !1575)
!1583 = !DILocation(line: 182, column: 8, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1575, file: !96, line: 182, column: 7)
!1585 = !DILocation(line: 182, column: 7, scope: !1575)
!1586 = !DILocation(line: 184, column: 6, scope: !1575)
!1587 = !DILocation(line: 184, column: 12, scope: !1575)
!1588 = !DILocation(line: 185, column: 8, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1575, file: !96, line: 185, column: 7)
!1590 = !DILocation(line: 185, column: 19, scope: !1589)
!1591 = !DILocation(line: 186, column: 5, scope: !1589)
!1592 = !DILocation(line: 187, column: 6, scope: !1575)
!1593 = !DILocation(line: 187, column: 17, scope: !1575)
!1594 = !{!1522, !622, i64 40}
!1595 = !DILocation(line: 188, column: 6, scope: !1575)
!1596 = !DILocation(line: 188, column: 18, scope: !1575)
!1597 = !{!1522, !622, i64 48}
!1598 = !DILocation(line: 189, column: 1, scope: !1575)
!1599 = distinct !DISubprogram(name: "quotearg_buffer", scope: !96, file: !96, line: 784, type: !1600, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1602)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!35, !30, !35, !38, !35, !1514}
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1603 = !DILocalVariable(name: "buffer", arg: 1, scope: !1599, file: !96, line: 784, type: !30)
!1604 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1599, file: !96, line: 784, type: !35)
!1605 = !DILocalVariable(name: "arg", arg: 3, scope: !1599, file: !96, line: 785, type: !38)
!1606 = !DILocalVariable(name: "argsize", arg: 4, scope: !1599, file: !96, line: 785, type: !35)
!1607 = !DILocalVariable(name: "o", arg: 5, scope: !1599, file: !96, line: 786, type: !1514)
!1608 = !DILocalVariable(name: "p", scope: !1599, file: !96, line: 788, type: !1514)
!1609 = !DILocalVariable(name: "e", scope: !1599, file: !96, line: 789, type: !56)
!1610 = !DILocalVariable(name: "r", scope: !1599, file: !96, line: 790, type: !35)
!1611 = !DILocation(line: 0, scope: !1599)
!1612 = !DILocation(line: 788, column: 37, scope: !1599)
!1613 = !DILocation(line: 789, column: 11, scope: !1599)
!1614 = !DILocation(line: 791, column: 43, scope: !1599)
!1615 = !DILocation(line: 791, column: 53, scope: !1599)
!1616 = !DILocation(line: 791, column: 60, scope: !1599)
!1617 = !DILocation(line: 792, column: 43, scope: !1599)
!1618 = !DILocation(line: 792, column: 58, scope: !1599)
!1619 = !DILocation(line: 790, column: 14, scope: !1599)
!1620 = !DILocation(line: 793, column: 9, scope: !1599)
!1621 = !DILocation(line: 794, column: 3, scope: !1599)
!1622 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !96, file: !96, line: 256, type: !1623, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1627)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!35, !30, !35, !38, !35, !5, !56, !1625, !38, !38}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1652, !1653, !1654, !1655, !1656, !1659, !1660, !1678, !1681, !1682, !1689, !1692, !1693, !1694, !1695, !1696, !1697}
!1628 = !DILocalVariable(name: "buffer", arg: 1, scope: !1622, file: !96, line: 256, type: !30)
!1629 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1622, file: !96, line: 256, type: !35)
!1630 = !DILocalVariable(name: "arg", arg: 3, scope: !1622, file: !96, line: 257, type: !38)
!1631 = !DILocalVariable(name: "argsize", arg: 4, scope: !1622, file: !96, line: 257, type: !35)
!1632 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1622, file: !96, line: 258, type: !5)
!1633 = !DILocalVariable(name: "flags", arg: 6, scope: !1622, file: !96, line: 258, type: !56)
!1634 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1622, file: !96, line: 259, type: !1625)
!1635 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1622, file: !96, line: 260, type: !38)
!1636 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1622, file: !96, line: 261, type: !38)
!1637 = !DILocalVariable(name: "i", scope: !1622, file: !96, line: 263, type: !35)
!1638 = !DILocalVariable(name: "len", scope: !1622, file: !96, line: 264, type: !35)
!1639 = !DILocalVariable(name: "orig_buffersize", scope: !1622, file: !96, line: 265, type: !35)
!1640 = !DILocalVariable(name: "quote_string", scope: !1622, file: !96, line: 266, type: !38)
!1641 = !DILocalVariable(name: "quote_string_len", scope: !1622, file: !96, line: 267, type: !35)
!1642 = !DILocalVariable(name: "backslash_escapes", scope: !1622, file: !96, line: 268, type: !44)
!1643 = !DILocalVariable(name: "unibyte_locale", scope: !1622, file: !96, line: 269, type: !44)
!1644 = !DILocalVariable(name: "elide_outer_quotes", scope: !1622, file: !96, line: 270, type: !44)
!1645 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1622, file: !96, line: 271, type: !44)
!1646 = !DILocalVariable(name: "encountered_single_quote", scope: !1622, file: !96, line: 272, type: !44)
!1647 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1622, file: !96, line: 273, type: !44)
!1648 = !DILocalVariable(name: "c", scope: !1649, file: !96, line: 402, type: !34)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !96, line: 401, column: 5)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !96, line: 400, column: 3)
!1651 = distinct !DILexicalBlock(scope: !1622, file: !96, line: 400, column: 3)
!1652 = !DILocalVariable(name: "esc", scope: !1649, file: !96, line: 403, type: !34)
!1653 = !DILocalVariable(name: "is_right_quote", scope: !1649, file: !96, line: 404, type: !44)
!1654 = !DILocalVariable(name: "escaping", scope: !1649, file: !96, line: 405, type: !44)
!1655 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1649, file: !96, line: 406, type: !44)
!1656 = !DILocalVariable(name: "m", scope: !1657, file: !96, line: 610, type: !35)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 608, column: 11)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !96, line: 426, column: 9)
!1659 = !DILocalVariable(name: "printable", scope: !1657, file: !96, line: 612, type: !44)
!1660 = !DILocalVariable(name: "mbstate", scope: !1661, file: !96, line: 621, type: !1663)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !96, line: 620, column: 15)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !96, line: 614, column: 17)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1664, line: 6, baseType: !1665)
!1664 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1666, line: 21, baseType: !1667)
!1666 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1666, line: 13, size: 64, elements: !1668)
!1668 = !{!1669, !1670}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1667, file: !1666, line: 15, baseType: !56, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1667, file: !1666, line: 20, baseType: !1671, size: 32, offset: 32)
!1671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1667, file: !1666, line: 16, size: 32, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1671, file: !1666, line: 18, baseType: !7, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1671, file: !1666, line: 19, baseType: !1675, size: 32)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !1676)
!1676 = !{!1677}
!1677 = !DISubrange(count: 4)
!1678 = !DILocalVariable(name: "w", scope: !1679, file: !96, line: 631, type: !1680)
!1679 = distinct !DILexicalBlock(scope: !1661, file: !96, line: 630, column: 19)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !36, line: 74, baseType: !56)
!1681 = !DILocalVariable(name: "bytes", scope: !1679, file: !96, line: 632, type: !35)
!1682 = !DILocalVariable(name: "j", scope: !1683, file: !96, line: 657, type: !35)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !96, line: 656, column: 27)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !96, line: 654, column: 29)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !96, line: 649, column: 23)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !96, line: 641, column: 30)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !96, line: 636, column: 30)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !96, line: 634, column: 25)
!1689 = !DILocalVariable(name: "ilim", scope: !1690, file: !96, line: 684, type: !35)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !96, line: 681, column: 15)
!1691 = distinct !DILexicalBlock(scope: !1657, file: !96, line: 680, column: 17)
!1692 = !DILabel(scope: !1622, name: "process_input", file: !96, line: 314)
!1693 = !DILabel(scope: !1658, name: "c_and_shell_escape", file: !96, line: 512)
!1694 = !DILabel(scope: !1658, name: "c_escape", file: !96, line: 517)
!1695 = !DILabel(scope: !1649, name: "store_escape", file: !96, line: 719)
!1696 = !DILabel(scope: !1649, name: "store_c", file: !96, line: 722)
!1697 = !DILabel(scope: !1622, name: "force_outer_quoting_style", file: !96, line: 763)
!1698 = !DILocation(line: 0, scope: !1622)
!1699 = !DILocation(line: 269, column: 25, scope: !1622)
!1700 = !DILocation(line: 269, column: 36, scope: !1622)
!1701 = !DILocation(line: 270, column: 8, scope: !1622)
!1702 = !DILocation(line: 273, column: 3, scope: !1622)
!1703 = !DILocation(line: 265, column: 10, scope: !1622)
!1704 = !DILocation(line: 266, column: 15, scope: !1622)
!1705 = !DILocation(line: 267, column: 10, scope: !1622)
!1706 = !DILocation(line: 268, column: 8, scope: !1622)
!1707 = !DILocation(line: 271, column: 8, scope: !1622)
!1708 = !DILocation(line: 272, column: 8, scope: !1622)
!1709 = !DILocation(line: 273, column: 8, scope: !1622)
!1710 = !DILocation(line: 314, column: 2, scope: !1622)
!1711 = !DILocation(line: 316, column: 3, scope: !1622)
!1712 = !DILocation(line: 323, column: 11, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1622, file: !96, line: 317, column: 5)
!1714 = !DILocation(line: 323, column: 12, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1713, file: !96, line: 323, column: 11)
!1716 = !DILocation(line: 324, column: 9, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !96, line: 324, column: 9)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !96, line: 324, column: 9)
!1719 = !DILocation(line: 324, column: 9, scope: !1718)
!1720 = !DILocation(line: 362, column: 26, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !96, line: 340, column: 11)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !96, line: 339, column: 13)
!1723 = distinct !DILexicalBlock(scope: !1713, file: !96, line: 338, column: 7)
!1724 = !DILocation(line: 363, column: 27, scope: !1721)
!1725 = !DILocation(line: 364, column: 11, scope: !1721)
!1726 = !DILocation(line: 365, column: 14, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !96, line: 365, column: 13)
!1728 = !DILocation(line: 365, column: 13, scope: !1723)
!1729 = !DILocation(line: 366, column: 43, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !96, line: 366, column: 11)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !96, line: 366, column: 11)
!1732 = !DILocation(line: 366, column: 11, scope: !1731)
!1733 = !DILocation(line: 367, column: 13, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !96, line: 367, column: 13)
!1735 = distinct !DILexicalBlock(scope: !1730, file: !96, line: 367, column: 13)
!1736 = !DILocation(line: 367, column: 13, scope: !1735)
!1737 = !DILocation(line: 366, column: 70, scope: !1730)
!1738 = distinct !{!1738, !1732, !1739, !673}
!1739 = !DILocation(line: 367, column: 13, scope: !1731)
!1740 = !DILocation(line: 264, column: 10, scope: !1622)
!1741 = !DILocation(line: 370, column: 28, scope: !1723)
!1742 = !DILocation(line: 372, column: 7, scope: !1713)
!1743 = !DILocation(line: 376, column: 7, scope: !1713)
!1744 = !DILocation(line: 379, column: 7, scope: !1713)
!1745 = !DILocation(line: 381, column: 12, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1713, file: !96, line: 381, column: 11)
!1747 = !DILocation(line: 381, column: 11, scope: !1713)
!1748 = !DILocation(line: 386, column: 12, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1713, file: !96, line: 386, column: 11)
!1750 = !DILocation(line: 386, column: 11, scope: !1713)
!1751 = !DILocation(line: 387, column: 9, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !96, line: 387, column: 9)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !96, line: 387, column: 9)
!1754 = !DILocation(line: 387, column: 9, scope: !1753)
!1755 = !DILocation(line: 394, column: 7, scope: !1713)
!1756 = !DILocation(line: 397, column: 7, scope: !1713)
!1757 = !DILocation(line: 400, column: 8, scope: !1651)
!1758 = !DILocation(line: 0, scope: !1651)
!1759 = !DILocation(line: 400, column: 27, scope: !1650)
!1760 = !DILocation(line: 400, column: 19, scope: !1650)
!1761 = !DILocation(line: 400, column: 41, scope: !1650)
!1762 = !DILocation(line: 400, column: 48, scope: !1650)
!1763 = !DILocation(line: 400, column: 3, scope: !1651)
!1764 = !DILocation(line: 400, column: 60, scope: !1650)
!1765 = !DILocation(line: 0, scope: !1649)
!1766 = !DILocation(line: 409, column: 11, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1649, file: !96, line: 408, column: 11)
!1768 = !DILocation(line: 411, column: 17, scope: !1767)
!1769 = !DILocation(line: 412, column: 39, scope: !1767)
!1770 = !DILocation(line: 416, column: 32, scope: !1767)
!1771 = !DILocation(line: 412, column: 19, scope: !1767)
!1772 = !DILocation(line: 412, column: 15, scope: !1767)
!1773 = !DILocation(line: 417, column: 11, scope: !1767)
!1774 = !DILocation(line: 417, column: 26, scope: !1767)
!1775 = !DILocation(line: 417, column: 14, scope: !1767)
!1776 = !DILocation(line: 417, column: 63, scope: !1767)
!1777 = !DILocation(line: 408, column: 11, scope: !1649)
!1778 = !DILocation(line: 424, column: 11, scope: !1649)
!1779 = !DILocation(line: 425, column: 7, scope: !1649)
!1780 = !DILocation(line: 428, column: 15, scope: !1658)
!1781 = !DILocation(line: 430, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !96, line: 430, column: 15)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !96, line: 429, column: 13)
!1784 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 428, column: 15)
!1785 = !DILocation(line: 430, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !96, line: 430, column: 15)
!1787 = !DILocation(line: 430, column: 15, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !96, line: 430, column: 15)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !96, line: 430, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !96, line: 430, column: 15)
!1791 = !DILocation(line: 430, column: 15, scope: !1789)
!1792 = !DILocation(line: 430, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !96, line: 430, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !96, line: 430, column: 15)
!1795 = !DILocation(line: 430, column: 15, scope: !1794)
!1796 = !DILocation(line: 430, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !96, line: 430, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1790, file: !96, line: 430, column: 15)
!1799 = !DILocation(line: 430, column: 15, scope: !1798)
!1800 = !DILocation(line: 430, column: 15, scope: !1790)
!1801 = !DILocation(line: 430, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !96, line: 430, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1782, file: !96, line: 430, column: 15)
!1804 = !DILocation(line: 430, column: 15, scope: !1803)
!1805 = !DILocation(line: 438, column: 19, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1783, file: !96, line: 437, column: 19)
!1807 = !DILocation(line: 438, column: 48, scope: !1806)
!1808 = !DILocation(line: 438, column: 59, scope: !1806)
!1809 = !DILocation(line: 440, column: 19, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !96, line: 440, column: 19)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !96, line: 440, column: 19)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !96, line: 439, column: 17)
!1813 = !DILocation(line: 440, column: 19, scope: !1811)
!1814 = !DILocation(line: 441, column: 19, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !96, line: 441, column: 19)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !96, line: 441, column: 19)
!1817 = !DILocation(line: 441, column: 19, scope: !1816)
!1818 = !DILocation(line: 442, column: 17, scope: !1812)
!1819 = !DILocation(line: 449, column: 20, scope: !1784)
!1820 = !DILocation(line: 454, column: 11, scope: !1658)
!1821 = !DILocation(line: 457, column: 19, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 455, column: 13)
!1823 = !DILocation(line: 463, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1822, file: !96, line: 462, column: 19)
!1825 = !DILocation(line: 463, column: 47, scope: !1824)
!1826 = !DILocation(line: 463, column: 41, scope: !1824)
!1827 = !DILocation(line: 463, column: 52, scope: !1824)
!1828 = !DILocation(line: 462, column: 19, scope: !1822)
!1829 = !DILocation(line: 464, column: 25, scope: !1824)
!1830 = !DILocation(line: 464, column: 17, scope: !1824)
!1831 = !DILocation(line: 471, column: 25, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1824, file: !96, line: 465, column: 19)
!1833 = !DILocation(line: 475, column: 21, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !96, line: 475, column: 21)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !96, line: 475, column: 21)
!1836 = !DILocation(line: 475, column: 21, scope: !1835)
!1837 = !DILocation(line: 476, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !96, line: 476, column: 21)
!1839 = distinct !DILexicalBlock(scope: !1832, file: !96, line: 476, column: 21)
!1840 = !DILocation(line: 476, column: 21, scope: !1839)
!1841 = !DILocation(line: 477, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !96, line: 477, column: 21)
!1843 = distinct !DILexicalBlock(scope: !1832, file: !96, line: 477, column: 21)
!1844 = !DILocation(line: 477, column: 21, scope: !1843)
!1845 = !DILocation(line: 478, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !96, line: 478, column: 21)
!1847 = distinct !DILexicalBlock(scope: !1832, file: !96, line: 478, column: 21)
!1848 = !DILocation(line: 478, column: 21, scope: !1847)
!1849 = !DILocation(line: 479, column: 21, scope: !1832)
!1850 = !DILocation(line: 492, column: 31, scope: !1658)
!1851 = !DILocation(line: 493, column: 31, scope: !1658)
!1852 = !DILocation(line: 495, column: 31, scope: !1658)
!1853 = !DILocation(line: 496, column: 31, scope: !1658)
!1854 = !DILocation(line: 497, column: 31, scope: !1658)
!1855 = !DILocation(line: 500, column: 15, scope: !1658)
!1856 = !DILocation(line: 502, column: 19, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !96, line: 501, column: 13)
!1858 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 500, column: 15)
!1859 = !DILocation(line: 509, column: 33, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 509, column: 15)
!1861 = !DILocation(line: 0, scope: !1658)
!1862 = !DILocation(line: 512, column: 9, scope: !1658)
!1863 = !DILocation(line: 514, column: 15, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 513, column: 15)
!1865 = !DILocation(line: 517, column: 9, scope: !1658)
!1866 = !DILocation(line: 518, column: 15, scope: !1658)
!1867 = !DILocation(line: 526, column: 15, scope: !1658)
!1868 = !DILocation(line: 526, column: 40, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 526, column: 15)
!1870 = !DILocation(line: 526, column: 47, scope: !1869)
!1871 = !DILocation(line: 526, column: 18, scope: !1869)
!1872 = !DILocation(line: 530, column: 17, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 530, column: 15)
!1874 = !DILocation(line: 530, column: 15, scope: !1658)
!1875 = !DILocation(line: 535, column: 11, scope: !1658)
!1876 = !DILocation(line: 549, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 548, column: 15)
!1878 = !DILocation(line: 556, column: 15, scope: !1658)
!1879 = !DILocation(line: 558, column: 19, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !96, line: 557, column: 13)
!1881 = distinct !DILexicalBlock(scope: !1658, file: !96, line: 556, column: 15)
!1882 = !DILocation(line: 561, column: 19, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !96, line: 561, column: 19)
!1884 = !DILocation(line: 561, column: 30, scope: !1883)
!1885 = !DILocation(line: 570, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !96, line: 570, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1880, file: !96, line: 570, column: 15)
!1888 = !DILocation(line: 570, column: 15, scope: !1887)
!1889 = !DILocation(line: 571, column: 15, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !96, line: 571, column: 15)
!1891 = distinct !DILexicalBlock(scope: !1880, file: !96, line: 571, column: 15)
!1892 = !DILocation(line: 571, column: 15, scope: !1891)
!1893 = !DILocation(line: 572, column: 15, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !96, line: 572, column: 15)
!1895 = distinct !DILexicalBlock(scope: !1880, file: !96, line: 572, column: 15)
!1896 = !DILocation(line: 572, column: 15, scope: !1895)
!1897 = !DILocation(line: 574, column: 13, scope: !1880)
!1898 = !DILocation(line: 614, column: 17, scope: !1657)
!1899 = !DILocation(line: 0, scope: !1657)
!1900 = !DILocation(line: 617, column: 29, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1662, file: !96, line: 615, column: 15)
!1902 = !{!940, !940, i64 0}
!1903 = !DILocation(line: 617, column: 27, scope: !1901)
!1904 = !DILocation(line: 678, column: 40, scope: !1657)
!1905 = !DILocation(line: 680, column: 23, scope: !1691)
!1906 = !DILocation(line: 621, column: 17, scope: !1661)
!1907 = !DILocation(line: 621, column: 27, scope: !1661)
!1908 = !DILocalVariable(name: "__dest", arg: 1, scope: !1909, file: !1910, line: 57, type: !32)
!1909 = distinct !DISubprogram(name: "memset", scope: !1910, file: !1910, line: 57, type: !1911, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !1913)
!1910 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!32, !32, !56, !35}
!1913 = !{!1908, !1914, !1915}
!1914 = !DILocalVariable(name: "__ch", arg: 2, scope: !1909, file: !1910, line: 57, type: !56)
!1915 = !DILocalVariable(name: "__len", arg: 3, scope: !1909, file: !1910, line: 57, type: !35)
!1916 = !DILocation(line: 0, scope: !1909, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 622, column: 17, scope: !1661)
!1918 = !DILocation(line: 59, column: 10, scope: !1909, inlinedAt: !1917)
!1919 = !DILocation(line: 626, column: 29, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1661, file: !96, line: 626, column: 21)
!1921 = !DILocation(line: 626, column: 21, scope: !1661)
!1922 = !DILocation(line: 627, column: 29, scope: !1920)
!1923 = !DILocation(line: 627, column: 19, scope: !1920)
!1924 = !DILocation(line: 629, column: 17, scope: !1661)
!1925 = !DILocation(line: 624, column: 19, scope: !1661)
!1926 = !DILocation(line: 625, column: 27, scope: !1661)
!1927 = !DILocation(line: 631, column: 21, scope: !1679)
!1928 = !DILocation(line: 632, column: 56, scope: !1679)
!1929 = !DILocation(line: 632, column: 50, scope: !1679)
!1930 = !DILocation(line: 633, column: 53, scope: !1679)
!1931 = !DILocation(line: 0, scope: !1679)
!1932 = !DILocation(line: 632, column: 36, scope: !1679)
!1933 = !DILocation(line: 634, column: 25, scope: !1679)
!1934 = !DILocation(line: 644, column: 38, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1686, file: !96, line: 642, column: 23)
!1936 = !DILocation(line: 644, column: 48, scope: !1935)
!1937 = !DILocation(line: 644, column: 25, scope: !1935)
!1938 = !DILocation(line: 644, column: 51, scope: !1935)
!1939 = !DILocation(line: 645, column: 28, scope: !1935)
!1940 = !DILocation(line: 644, column: 34, scope: !1935)
!1941 = distinct !{!1941, !1937, !1939, !673}
!1942 = !DILocation(line: 655, column: 29, scope: !1684)
!1943 = !DILocation(line: 0, scope: !1683)
!1944 = !DILocation(line: 659, column: 49, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !96, line: 658, column: 29)
!1946 = distinct !DILexicalBlock(scope: !1683, file: !96, line: 658, column: 29)
!1947 = !DILocation(line: 659, column: 39, scope: !1945)
!1948 = !DILocation(line: 659, column: 31, scope: !1945)
!1949 = !DILocation(line: 658, column: 53, scope: !1945)
!1950 = !DILocation(line: 658, column: 43, scope: !1945)
!1951 = !DILocation(line: 658, column: 29, scope: !1946)
!1952 = distinct !{!1952, !1951, !1953, !673}
!1953 = !DILocation(line: 667, column: 33, scope: !1946)
!1954 = !DILocation(line: 674, column: 19, scope: !1661)
!1955 = !DILocation(line: 670, column: 41, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1685, file: !96, line: 670, column: 29)
!1957 = !DILocation(line: 670, column: 31, scope: !1956)
!1958 = !DILocation(line: 670, column: 29, scope: !1685)
!1959 = !DILocation(line: 672, column: 27, scope: !1685)
!1960 = !DILocation(line: 675, column: 26, scope: !1661)
!1961 = !DILocation(line: 675, column: 24, scope: !1661)
!1962 = !DILocation(line: 674, column: 19, scope: !1679)
!1963 = distinct !{!1963, !1924, !1964, !673}
!1964 = !DILocation(line: 675, column: 44, scope: !1661)
!1965 = !DILocation(line: 676, column: 15, scope: !1662)
!1966 = !DILocation(line: 680, column: 19, scope: !1691)
!1967 = !DILocation(line: 680, column: 45, scope: !1691)
!1968 = !DILocation(line: 684, column: 33, scope: !1690)
!1969 = !DILocation(line: 0, scope: !1690)
!1970 = !DILocation(line: 686, column: 17, scope: !1690)
!1971 = !DILocation(line: 405, column: 12, scope: !1649)
!1972 = !DILocation(line: 688, column: 43, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !96, line: 688, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !96, line: 687, column: 19)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !96, line: 686, column: 17)
!1976 = distinct !DILexicalBlock(scope: !1690, file: !96, line: 686, column: 17)
!1977 = !DILocation(line: 690, column: 25, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !96, line: 690, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !96, line: 689, column: 23)
!1980 = !DILocation(line: 690, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !96, line: 690, column: 25)
!1982 = !DILocation(line: 690, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !96, line: 690, column: 25)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !96, line: 690, column: 25)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !96, line: 690, column: 25)
!1986 = !DILocation(line: 690, column: 25, scope: !1984)
!1987 = !DILocation(line: 690, column: 25, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !96, line: 690, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !96, line: 690, column: 25)
!1990 = !DILocation(line: 690, column: 25, scope: !1989)
!1991 = !DILocation(line: 690, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !96, line: 690, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1985, file: !96, line: 690, column: 25)
!1994 = !DILocation(line: 690, column: 25, scope: !1993)
!1995 = !DILocation(line: 690, column: 25, scope: !1985)
!1996 = !DILocation(line: 690, column: 25, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !96, line: 690, column: 25)
!1998 = distinct !DILexicalBlock(scope: !1978, file: !96, line: 690, column: 25)
!1999 = !DILocation(line: 690, column: 25, scope: !1998)
!2000 = !DILocation(line: 691, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !96, line: 691, column: 25)
!2002 = distinct !DILexicalBlock(scope: !1979, file: !96, line: 691, column: 25)
!2003 = !DILocation(line: 691, column: 25, scope: !2002)
!2004 = !DILocation(line: 692, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !96, line: 692, column: 25)
!2006 = distinct !DILexicalBlock(scope: !1979, file: !96, line: 692, column: 25)
!2007 = !DILocation(line: 692, column: 25, scope: !2006)
!2008 = !DILocation(line: 693, column: 38, scope: !1979)
!2009 = !DILocation(line: 693, column: 33, scope: !1979)
!2010 = !DILocation(line: 694, column: 23, scope: !1979)
!2011 = !DILocation(line: 695, column: 30, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1973, file: !96, line: 695, column: 30)
!2013 = !DILocation(line: 695, column: 30, scope: !1973)
!2014 = !DILocation(line: 697, column: 25, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !96, line: 697, column: 25)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !96, line: 697, column: 25)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !96, line: 696, column: 23)
!2018 = !DILocation(line: 697, column: 25, scope: !2016)
!2019 = !DILocation(line: 699, column: 23, scope: !2017)
!2020 = !DILocation(line: 700, column: 35, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1974, file: !96, line: 700, column: 25)
!2022 = !DILocation(line: 700, column: 30, scope: !2021)
!2023 = !DILocation(line: 700, column: 25, scope: !1974)
!2024 = !DILocation(line: 702, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !96, line: 702, column: 21)
!2026 = distinct !DILexicalBlock(scope: !1974, file: !96, line: 702, column: 21)
!2027 = !DILocation(line: 702, column: 21, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !96, line: 702, column: 21)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !96, line: 702, column: 21)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !96, line: 702, column: 21)
!2031 = !DILocation(line: 702, column: 21, scope: !2029)
!2032 = !DILocation(line: 702, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !96, line: 702, column: 21)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !96, line: 702, column: 21)
!2035 = !DILocation(line: 702, column: 21, scope: !2034)
!2036 = !DILocation(line: 702, column: 21, scope: !2030)
!2037 = !DILocation(line: 0, scope: !1974)
!2038 = !DILocation(line: 703, column: 21, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !96, line: 703, column: 21)
!2040 = distinct !DILexicalBlock(scope: !1974, file: !96, line: 703, column: 21)
!2041 = !DILocation(line: 703, column: 21, scope: !2040)
!2042 = !DILocation(line: 704, column: 25, scope: !1974)
!2043 = !DILocation(line: 686, column: 17, scope: !1975)
!2044 = distinct !{!2044, !2045, !2046}
!2045 = !DILocation(line: 686, column: 17, scope: !1976)
!2046 = !DILocation(line: 705, column: 19, scope: !1976)
!2047 = !DILocation(line: 416, column: 30, scope: !1767)
!2048 = !DILocation(line: 712, column: 34, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1649, file: !96, line: 712, column: 11)
!2050 = !DILocation(line: 715, column: 35, scope: !2049)
!2051 = !DILocation(line: 715, column: 17, scope: !2049)
!2052 = !DILocation(line: 715, column: 47, scope: !2049)
!2053 = !DILocation(line: 715, column: 65, scope: !2049)
!2054 = !DILocation(line: 716, column: 11, scope: !2049)
!2055 = !DILocation(line: 712, column: 11, scope: !1649)
!2056 = !DILocation(line: 400, column: 10, scope: !1651)
!2057 = !DILocation(line: 719, column: 5, scope: !1649)
!2058 = !DILocation(line: 720, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1649, file: !96, line: 720, column: 7)
!2060 = !DILocation(line: 720, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2059, file: !96, line: 720, column: 7)
!2062 = !DILocation(line: 720, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !96, line: 720, column: 7)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !96, line: 720, column: 7)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !96, line: 720, column: 7)
!2066 = !DILocation(line: 720, column: 7, scope: !2064)
!2067 = !DILocation(line: 720, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !96, line: 720, column: 7)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !96, line: 720, column: 7)
!2070 = !DILocation(line: 720, column: 7, scope: !2069)
!2071 = !DILocation(line: 720, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !96, line: 720, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2065, file: !96, line: 720, column: 7)
!2074 = !DILocation(line: 720, column: 7, scope: !2073)
!2075 = !DILocation(line: 720, column: 7, scope: !2065)
!2076 = !DILocation(line: 720, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !96, line: 720, column: 7)
!2078 = distinct !DILexicalBlock(scope: !2059, file: !96, line: 720, column: 7)
!2079 = !DILocation(line: 720, column: 7, scope: !2078)
!2080 = !DILocation(line: 722, column: 5, scope: !1649)
!2081 = !DILocation(line: 723, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !96, line: 723, column: 7)
!2083 = distinct !DILexicalBlock(scope: !1649, file: !96, line: 723, column: 7)
!2084 = !DILocation(line: 424, column: 9, scope: !1649)
!2085 = !DILocation(line: 723, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !96, line: 723, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !96, line: 723, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2082, file: !96, line: 723, column: 7)
!2089 = !DILocation(line: 723, column: 7, scope: !2087)
!2090 = !DILocation(line: 723, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !96, line: 723, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !96, line: 723, column: 7)
!2093 = !DILocation(line: 723, column: 7, scope: !2092)
!2094 = !DILocation(line: 723, column: 7, scope: !2088)
!2095 = !DILocation(line: 724, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !96, line: 724, column: 7)
!2097 = distinct !DILexicalBlock(scope: !1649, file: !96, line: 724, column: 7)
!2098 = !DILocation(line: 724, column: 7, scope: !2097)
!2099 = !DILocation(line: 726, column: 13, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1649, file: !96, line: 726, column: 11)
!2101 = !DILocation(line: 726, column: 11, scope: !1649)
!2102 = !DILocation(line: 728, column: 5, scope: !1650)
!2103 = !DILocation(line: 400, column: 75, scope: !1650)
!2104 = !DILocation(line: 400, column: 3, scope: !1650)
!2105 = distinct !{!2105, !1763, !2106, !673}
!2106 = !DILocation(line: 728, column: 5, scope: !1651)
!2107 = !DILocation(line: 730, column: 11, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1622, file: !96, line: 730, column: 7)
!2109 = !DILocation(line: 730, column: 16, scope: !2108)
!2110 = !DILocation(line: 738, column: 51, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1622, file: !96, line: 738, column: 7)
!2112 = !DILocation(line: 741, column: 11, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !96, line: 741, column: 11)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !96, line: 740, column: 5)
!2115 = !DILocation(line: 741, column: 11, scope: !2114)
!2116 = !DILocation(line: 742, column: 16, scope: !2113)
!2117 = !DILocation(line: 742, column: 9, scope: !2113)
!2118 = !DILocation(line: 746, column: 18, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2113, file: !96, line: 746, column: 16)
!2120 = !DILocation(line: 746, column: 29, scope: !2119)
!2121 = !DILocation(line: 755, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1622, file: !96, line: 755, column: 7)
!2123 = !DILocation(line: 755, column: 20, scope: !2122)
!2124 = !DILocation(line: 756, column: 12, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !96, line: 756, column: 5)
!2126 = distinct !DILexicalBlock(scope: !2122, file: !96, line: 756, column: 5)
!2127 = !DILocation(line: 756, column: 5, scope: !2126)
!2128 = !DILocation(line: 757, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !96, line: 757, column: 7)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !96, line: 757, column: 7)
!2131 = !DILocation(line: 757, column: 7, scope: !2130)
!2132 = !DILocation(line: 756, column: 39, scope: !2125)
!2133 = distinct !{!2133, !2127, !2134, !673}
!2134 = !DILocation(line: 757, column: 7, scope: !2126)
!2135 = !DILocation(line: 759, column: 11, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1622, file: !96, line: 759, column: 7)
!2137 = !DILocation(line: 759, column: 7, scope: !1622)
!2138 = !DILocation(line: 760, column: 5, scope: !2136)
!2139 = !DILocation(line: 760, column: 17, scope: !2136)
!2140 = !DILocation(line: 763, column: 2, scope: !1622)
!2141 = !DILocation(line: 766, column: 51, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1622, file: !96, line: 766, column: 7)
!2143 = !DILocation(line: 766, column: 21, scope: !2142)
!2144 = !DILocation(line: 770, column: 42, scope: !1622)
!2145 = !DILocation(line: 768, column: 10, scope: !1622)
!2146 = !DILocation(line: 768, column: 3, scope: !1622)
!2147 = !DILocation(line: 772, column: 1, scope: !1622)
!2148 = distinct !DISubprogram(name: "gettext_quote", scope: !96, file: !96, line: 207, type: !2149, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!38, !38, !5}
!2151 = !{!2152, !2153, !2154, !2155}
!2152 = !DILocalVariable(name: "msgid", arg: 1, scope: !2148, file: !96, line: 207, type: !38)
!2153 = !DILocalVariable(name: "s", arg: 2, scope: !2148, file: !96, line: 207, type: !5)
!2154 = !DILocalVariable(name: "translation", scope: !2148, file: !96, line: 209, type: !38)
!2155 = !DILocalVariable(name: "locale_code", scope: !2148, file: !96, line: 210, type: !38)
!2156 = !DILocation(line: 0, scope: !2148)
!2157 = !DILocation(line: 209, column: 29, scope: !2148)
!2158 = !DILocation(line: 212, column: 19, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2148, file: !96, line: 212, column: 7)
!2160 = !DILocation(line: 212, column: 7, scope: !2148)
!2161 = !DILocation(line: 233, column: 17, scope: !2148)
!2162 = !DILocalVariable(name: "s1", arg: 1, scope: !2163, file: !2164, line: 160, type: !38)
!2163 = distinct !DISubprogram(name: "strcaseeq0", scope: !2164, file: !2164, line: 160, type: !2165, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2167)
!2164 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!56, !38, !38, !31, !31, !31, !31, !31, !31, !31, !31, !31}
!2167 = !{!2162, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177}
!2168 = !DILocalVariable(name: "s2", arg: 2, scope: !2163, file: !2164, line: 160, type: !38)
!2169 = !DILocalVariable(name: "s20", arg: 3, scope: !2163, file: !2164, line: 160, type: !31)
!2170 = !DILocalVariable(name: "s21", arg: 4, scope: !2163, file: !2164, line: 160, type: !31)
!2171 = !DILocalVariable(name: "s22", arg: 5, scope: !2163, file: !2164, line: 160, type: !31)
!2172 = !DILocalVariable(name: "s23", arg: 6, scope: !2163, file: !2164, line: 160, type: !31)
!2173 = !DILocalVariable(name: "s24", arg: 7, scope: !2163, file: !2164, line: 160, type: !31)
!2174 = !DILocalVariable(name: "s25", arg: 8, scope: !2163, file: !2164, line: 160, type: !31)
!2175 = !DILocalVariable(name: "s26", arg: 9, scope: !2163, file: !2164, line: 160, type: !31)
!2176 = !DILocalVariable(name: "s27", arg: 10, scope: !2163, file: !2164, line: 160, type: !31)
!2177 = !DILocalVariable(name: "s28", arg: 11, scope: !2163, file: !2164, line: 160, type: !31)
!2178 = !DILocation(line: 0, scope: !2163, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 234, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2148, file: !96, line: 234, column: 7)
!2181 = !DILocation(line: 162, column: 7, scope: !2182, inlinedAt: !2179)
!2182 = distinct !DILexicalBlock(scope: !2163, file: !2164, line: 162, column: 7)
!2183 = !DILocalVariable(name: "s1", arg: 1, scope: !2184, file: !2164, line: 146, type: !38)
!2184 = distinct !DISubprogram(name: "strcaseeq1", scope: !2164, file: !2164, line: 146, type: !2185, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!56, !38, !38, !31, !31, !31, !31, !31, !31, !31, !31}
!2187 = !{!2183, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2188 = !DILocalVariable(name: "s2", arg: 2, scope: !2184, file: !2164, line: 146, type: !38)
!2189 = !DILocalVariable(name: "s21", arg: 3, scope: !2184, file: !2164, line: 146, type: !31)
!2190 = !DILocalVariable(name: "s22", arg: 4, scope: !2184, file: !2164, line: 146, type: !31)
!2191 = !DILocalVariable(name: "s23", arg: 5, scope: !2184, file: !2164, line: 146, type: !31)
!2192 = !DILocalVariable(name: "s24", arg: 6, scope: !2184, file: !2164, line: 146, type: !31)
!2193 = !DILocalVariable(name: "s25", arg: 7, scope: !2184, file: !2164, line: 146, type: !31)
!2194 = !DILocalVariable(name: "s26", arg: 8, scope: !2184, file: !2164, line: 146, type: !31)
!2195 = !DILocalVariable(name: "s27", arg: 9, scope: !2184, file: !2164, line: 146, type: !31)
!2196 = !DILocalVariable(name: "s28", arg: 10, scope: !2184, file: !2164, line: 146, type: !31)
!2197 = !DILocation(line: 0, scope: !2184, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 167, column: 16, scope: !2199, inlinedAt: !2179)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !2164, line: 164, column: 11)
!2200 = distinct !DILexicalBlock(scope: !2182, file: !2164, line: 163, column: 5)
!2201 = !DILocation(line: 148, column: 7, scope: !2202, inlinedAt: !2198)
!2202 = distinct !DILexicalBlock(scope: !2184, file: !2164, line: 148, column: 7)
!2203 = !DILocalVariable(name: "s1", arg: 1, scope: !2204, file: !2164, line: 132, type: !38)
!2204 = distinct !DISubprogram(name: "strcaseeq2", scope: !2164, file: !2164, line: 132, type: !2205, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!56, !38, !38, !31, !31, !31, !31, !31, !31, !31}
!2207 = !{!2203, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215}
!2208 = !DILocalVariable(name: "s2", arg: 2, scope: !2204, file: !2164, line: 132, type: !38)
!2209 = !DILocalVariable(name: "s22", arg: 3, scope: !2204, file: !2164, line: 132, type: !31)
!2210 = !DILocalVariable(name: "s23", arg: 4, scope: !2204, file: !2164, line: 132, type: !31)
!2211 = !DILocalVariable(name: "s24", arg: 5, scope: !2204, file: !2164, line: 132, type: !31)
!2212 = !DILocalVariable(name: "s25", arg: 6, scope: !2204, file: !2164, line: 132, type: !31)
!2213 = !DILocalVariable(name: "s26", arg: 7, scope: !2204, file: !2164, line: 132, type: !31)
!2214 = !DILocalVariable(name: "s27", arg: 8, scope: !2204, file: !2164, line: 132, type: !31)
!2215 = !DILocalVariable(name: "s28", arg: 9, scope: !2204, file: !2164, line: 132, type: !31)
!2216 = !DILocation(line: 0, scope: !2204, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 153, column: 16, scope: !2218, inlinedAt: !2198)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !2164, line: 150, column: 11)
!2219 = distinct !DILexicalBlock(scope: !2202, file: !2164, line: 149, column: 5)
!2220 = !DILocation(line: 134, column: 7, scope: !2221, inlinedAt: !2217)
!2221 = distinct !DILexicalBlock(scope: !2204, file: !2164, line: 134, column: 7)
!2222 = !DILocalVariable(name: "s1", arg: 1, scope: !2223, file: !2164, line: 118, type: !38)
!2223 = distinct !DISubprogram(name: "strcaseeq3", scope: !2164, file: !2164, line: 118, type: !2224, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2226)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!56, !38, !38, !31, !31, !31, !31, !31, !31}
!2226 = !{!2222, !2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2227 = !DILocalVariable(name: "s2", arg: 2, scope: !2223, file: !2164, line: 118, type: !38)
!2228 = !DILocalVariable(name: "s23", arg: 3, scope: !2223, file: !2164, line: 118, type: !31)
!2229 = !DILocalVariable(name: "s24", arg: 4, scope: !2223, file: !2164, line: 118, type: !31)
!2230 = !DILocalVariable(name: "s25", arg: 5, scope: !2223, file: !2164, line: 118, type: !31)
!2231 = !DILocalVariable(name: "s26", arg: 6, scope: !2223, file: !2164, line: 118, type: !31)
!2232 = !DILocalVariable(name: "s27", arg: 7, scope: !2223, file: !2164, line: 118, type: !31)
!2233 = !DILocalVariable(name: "s28", arg: 8, scope: !2223, file: !2164, line: 118, type: !31)
!2234 = !DILocation(line: 0, scope: !2223, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 139, column: 16, scope: !2236, inlinedAt: !2217)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !2164, line: 136, column: 11)
!2237 = distinct !DILexicalBlock(scope: !2221, file: !2164, line: 135, column: 5)
!2238 = !DILocation(line: 120, column: 7, scope: !2239, inlinedAt: !2235)
!2239 = distinct !DILexicalBlock(scope: !2223, file: !2164, line: 120, column: 7)
!2240 = !DILocation(line: 120, column: 7, scope: !2223, inlinedAt: !2235)
!2241 = !DILocalVariable(name: "s1", arg: 1, scope: !2242, file: !2164, line: 104, type: !38)
!2242 = distinct !DISubprogram(name: "strcaseeq4", scope: !2164, file: !2164, line: 104, type: !2243, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!56, !38, !38, !31, !31, !31, !31, !31}
!2245 = !{!2241, !2246, !2247, !2248, !2249, !2250, !2251}
!2246 = !DILocalVariable(name: "s2", arg: 2, scope: !2242, file: !2164, line: 104, type: !38)
!2247 = !DILocalVariable(name: "s24", arg: 3, scope: !2242, file: !2164, line: 104, type: !31)
!2248 = !DILocalVariable(name: "s25", arg: 4, scope: !2242, file: !2164, line: 104, type: !31)
!2249 = !DILocalVariable(name: "s26", arg: 5, scope: !2242, file: !2164, line: 104, type: !31)
!2250 = !DILocalVariable(name: "s27", arg: 6, scope: !2242, file: !2164, line: 104, type: !31)
!2251 = !DILocalVariable(name: "s28", arg: 7, scope: !2242, file: !2164, line: 104, type: !31)
!2252 = !DILocation(line: 0, scope: !2242, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 125, column: 16, scope: !2254, inlinedAt: !2235)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !2164, line: 122, column: 11)
!2255 = distinct !DILexicalBlock(scope: !2239, file: !2164, line: 121, column: 5)
!2256 = !DILocation(line: 106, column: 7, scope: !2257, inlinedAt: !2253)
!2257 = distinct !DILexicalBlock(scope: !2242, file: !2164, line: 106, column: 7)
!2258 = !DILocation(line: 106, column: 7, scope: !2242, inlinedAt: !2253)
!2259 = !DILocalVariable(name: "s1", arg: 1, scope: !2260, file: !2164, line: 90, type: !38)
!2260 = distinct !DISubprogram(name: "strcaseeq5", scope: !2164, file: !2164, line: 90, type: !2261, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!56, !38, !38, !31, !31, !31, !31}
!2263 = !{!2259, !2264, !2265, !2266, !2267, !2268}
!2264 = !DILocalVariable(name: "s2", arg: 2, scope: !2260, file: !2164, line: 90, type: !38)
!2265 = !DILocalVariable(name: "s25", arg: 3, scope: !2260, file: !2164, line: 90, type: !31)
!2266 = !DILocalVariable(name: "s26", arg: 4, scope: !2260, file: !2164, line: 90, type: !31)
!2267 = !DILocalVariable(name: "s27", arg: 5, scope: !2260, file: !2164, line: 90, type: !31)
!2268 = !DILocalVariable(name: "s28", arg: 6, scope: !2260, file: !2164, line: 90, type: !31)
!2269 = !DILocation(line: 0, scope: !2260, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 111, column: 16, scope: !2271, inlinedAt: !2253)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !2164, line: 108, column: 11)
!2272 = distinct !DILexicalBlock(scope: !2257, file: !2164, line: 107, column: 5)
!2273 = !DILocation(line: 92, column: 7, scope: !2274, inlinedAt: !2270)
!2274 = distinct !DILexicalBlock(scope: !2260, file: !2164, line: 92, column: 7)
!2275 = !DILocation(line: 92, column: 7, scope: !2260, inlinedAt: !2270)
!2276 = !DILocation(line: 235, column: 12, scope: !2180)
!2277 = !DILocation(line: 235, column: 21, scope: !2180)
!2278 = !DILocation(line: 235, column: 5, scope: !2180)
!2279 = !DILocation(line: 0, scope: !2184, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 167, column: 16, scope: !2199, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 236, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2148, file: !96, line: 236, column: 7)
!2283 = !DILocation(line: 148, column: 7, scope: !2202, inlinedAt: !2280)
!2284 = !DILocation(line: 0, scope: !2204, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 153, column: 16, scope: !2218, inlinedAt: !2280)
!2286 = !DILocation(line: 134, column: 7, scope: !2221, inlinedAt: !2285)
!2287 = !DILocation(line: 134, column: 7, scope: !2204, inlinedAt: !2285)
!2288 = !DILocation(line: 0, scope: !2223, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 139, column: 16, scope: !2236, inlinedAt: !2285)
!2290 = !DILocation(line: 120, column: 7, scope: !2239, inlinedAt: !2289)
!2291 = !DILocation(line: 120, column: 7, scope: !2223, inlinedAt: !2289)
!2292 = !DILocation(line: 0, scope: !2242, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 125, column: 16, scope: !2254, inlinedAt: !2289)
!2294 = !DILocation(line: 106, column: 7, scope: !2257, inlinedAt: !2293)
!2295 = !DILocation(line: 106, column: 7, scope: !2242, inlinedAt: !2293)
!2296 = !DILocation(line: 0, scope: !2260, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 111, column: 16, scope: !2271, inlinedAt: !2293)
!2298 = !DILocation(line: 92, column: 7, scope: !2274, inlinedAt: !2297)
!2299 = !DILocation(line: 92, column: 7, scope: !2260, inlinedAt: !2297)
!2300 = !DILocalVariable(name: "s1", arg: 1, scope: !2301, file: !2164, line: 76, type: !38)
!2301 = distinct !DISubprogram(name: "strcaseeq6", scope: !2164, file: !2164, line: 76, type: !2302, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!56, !38, !38, !31, !31, !31}
!2304 = !{!2300, !2305, !2306, !2307, !2308}
!2305 = !DILocalVariable(name: "s2", arg: 2, scope: !2301, file: !2164, line: 76, type: !38)
!2306 = !DILocalVariable(name: "s26", arg: 3, scope: !2301, file: !2164, line: 76, type: !31)
!2307 = !DILocalVariable(name: "s27", arg: 4, scope: !2301, file: !2164, line: 76, type: !31)
!2308 = !DILocalVariable(name: "s28", arg: 5, scope: !2301, file: !2164, line: 76, type: !31)
!2309 = !DILocation(line: 0, scope: !2301, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 97, column: 16, scope: !2311, inlinedAt: !2297)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !2164, line: 94, column: 11)
!2312 = distinct !DILexicalBlock(scope: !2274, file: !2164, line: 93, column: 5)
!2313 = !DILocation(line: 78, column: 7, scope: !2314, inlinedAt: !2310)
!2314 = distinct !DILexicalBlock(scope: !2301, file: !2164, line: 78, column: 7)
!2315 = !DILocation(line: 78, column: 7, scope: !2301, inlinedAt: !2310)
!2316 = !DILocalVariable(name: "s1", arg: 1, scope: !2317, file: !2164, line: 62, type: !38)
!2317 = distinct !DISubprogram(name: "strcaseeq7", scope: !2164, file: !2164, line: 62, type: !2318, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2320)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!56, !38, !38, !31, !31}
!2320 = !{!2316, !2321, !2322, !2323}
!2321 = !DILocalVariable(name: "s2", arg: 2, scope: !2317, file: !2164, line: 62, type: !38)
!2322 = !DILocalVariable(name: "s27", arg: 3, scope: !2317, file: !2164, line: 62, type: !31)
!2323 = !DILocalVariable(name: "s28", arg: 4, scope: !2317, file: !2164, line: 62, type: !31)
!2324 = !DILocation(line: 0, scope: !2317, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 83, column: 16, scope: !2326, inlinedAt: !2310)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !2164, line: 80, column: 11)
!2327 = distinct !DILexicalBlock(scope: !2314, file: !2164, line: 79, column: 5)
!2328 = !DILocation(line: 64, column: 7, scope: !2329, inlinedAt: !2325)
!2329 = distinct !DILexicalBlock(scope: !2317, file: !2164, line: 64, column: 7)
!2330 = !DILocation(line: 236, column: 7, scope: !2148)
!2331 = !DILocation(line: 237, column: 12, scope: !2282)
!2332 = !DILocation(line: 237, column: 21, scope: !2282)
!2333 = !DILocation(line: 237, column: 5, scope: !2282)
!2334 = !DILocation(line: 239, column: 13, scope: !2148)
!2335 = !DILocation(line: 239, column: 11, scope: !2148)
!2336 = !DILocation(line: 239, column: 3, scope: !2148)
!2337 = !DILocation(line: 240, column: 1, scope: !2148)
!2338 = !DISubprogram(name: "iswprint", scope: !2339, file: !2339, line: 120, type: !2340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!2339 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!56, !7}
!2342 = !DISubprogram(name: "mbsinit", scope: !2343, file: !2343, line: 292, type: !2344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!2343 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!56, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!2348 = distinct !DISubprogram(name: "quotearg_alloc", scope: !96, file: !96, line: 799, type: !2349, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!30, !38, !35, !1514}
!2351 = !{!2352, !2353, !2354}
!2352 = !DILocalVariable(name: "arg", arg: 1, scope: !2348, file: !96, line: 799, type: !38)
!2353 = !DILocalVariable(name: "argsize", arg: 2, scope: !2348, file: !96, line: 799, type: !35)
!2354 = !DILocalVariable(name: "o", arg: 3, scope: !2348, file: !96, line: 800, type: !1514)
!2355 = !DILocation(line: 0, scope: !2348)
!2356 = !DILocalVariable(name: "arg", arg: 1, scope: !2357, file: !96, line: 812, type: !38)
!2357 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !96, file: !96, line: 812, type: !2358, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!30, !38, !35, !187, !1514}
!2360 = !{!2356, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368}
!2361 = !DILocalVariable(name: "argsize", arg: 2, scope: !2357, file: !96, line: 812, type: !35)
!2362 = !DILocalVariable(name: "size", arg: 3, scope: !2357, file: !96, line: 812, type: !187)
!2363 = !DILocalVariable(name: "o", arg: 4, scope: !2357, file: !96, line: 813, type: !1514)
!2364 = !DILocalVariable(name: "p", scope: !2357, file: !96, line: 815, type: !1514)
!2365 = !DILocalVariable(name: "e", scope: !2357, file: !96, line: 816, type: !56)
!2366 = !DILocalVariable(name: "flags", scope: !2357, file: !96, line: 818, type: !56)
!2367 = !DILocalVariable(name: "bufsize", scope: !2357, file: !96, line: 819, type: !35)
!2368 = !DILocalVariable(name: "buf", scope: !2357, file: !96, line: 823, type: !30)
!2369 = !DILocation(line: 0, scope: !2357, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 802, column: 10, scope: !2348)
!2371 = !DILocation(line: 815, column: 37, scope: !2357, inlinedAt: !2370)
!2372 = !DILocation(line: 816, column: 11, scope: !2357, inlinedAt: !2370)
!2373 = !DILocation(line: 818, column: 18, scope: !2357, inlinedAt: !2370)
!2374 = !DILocation(line: 818, column: 24, scope: !2357, inlinedAt: !2370)
!2375 = !DILocation(line: 819, column: 69, scope: !2357, inlinedAt: !2370)
!2376 = !DILocation(line: 820, column: 53, scope: !2357, inlinedAt: !2370)
!2377 = !DILocation(line: 821, column: 49, scope: !2357, inlinedAt: !2370)
!2378 = !DILocation(line: 822, column: 49, scope: !2357, inlinedAt: !2370)
!2379 = !DILocation(line: 819, column: 20, scope: !2357, inlinedAt: !2370)
!2380 = !DILocation(line: 822, column: 62, scope: !2357, inlinedAt: !2370)
!2381 = !DILocalVariable(name: "n", arg: 1, scope: !2382, file: !183, line: 216, type: !35)
!2382 = distinct !DISubprogram(name: "xcharalloc", scope: !183, file: !183, line: 216, type: !2383, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!30, !35}
!2385 = !{!2381}
!2386 = !DILocation(line: 0, scope: !2382, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 823, column: 15, scope: !2357, inlinedAt: !2370)
!2388 = !DILocation(line: 218, column: 10, scope: !2382, inlinedAt: !2387)
!2389 = !DILocation(line: 824, column: 60, scope: !2357, inlinedAt: !2370)
!2390 = !DILocation(line: 826, column: 32, scope: !2357, inlinedAt: !2370)
!2391 = !DILocation(line: 826, column: 47, scope: !2357, inlinedAt: !2370)
!2392 = !DILocation(line: 824, column: 3, scope: !2357, inlinedAt: !2370)
!2393 = !DILocation(line: 827, column: 9, scope: !2357, inlinedAt: !2370)
!2394 = !DILocation(line: 802, column: 3, scope: !2348)
!2395 = !DILocation(line: 0, scope: !2357)
!2396 = !DILocation(line: 815, column: 37, scope: !2357)
!2397 = !DILocation(line: 816, column: 11, scope: !2357)
!2398 = !DILocation(line: 818, column: 18, scope: !2357)
!2399 = !DILocation(line: 818, column: 27, scope: !2357)
!2400 = !DILocation(line: 818, column: 24, scope: !2357)
!2401 = !DILocation(line: 819, column: 69, scope: !2357)
!2402 = !DILocation(line: 820, column: 53, scope: !2357)
!2403 = !DILocation(line: 821, column: 49, scope: !2357)
!2404 = !DILocation(line: 822, column: 49, scope: !2357)
!2405 = !DILocation(line: 819, column: 20, scope: !2357)
!2406 = !DILocation(line: 822, column: 62, scope: !2357)
!2407 = !DILocation(line: 0, scope: !2382, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 823, column: 15, scope: !2357)
!2409 = !DILocation(line: 218, column: 10, scope: !2382, inlinedAt: !2408)
!2410 = !DILocation(line: 824, column: 60, scope: !2357)
!2411 = !DILocation(line: 826, column: 32, scope: !2357)
!2412 = !DILocation(line: 826, column: 47, scope: !2357)
!2413 = !DILocation(line: 824, column: 3, scope: !2357)
!2414 = !DILocation(line: 827, column: 9, scope: !2357)
!2415 = !DILocation(line: 828, column: 7, scope: !2357)
!2416 = !DILocation(line: 829, column: 11, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2357, file: !96, line: 828, column: 7)
!2418 = !{!939, !939, i64 0}
!2419 = !DILocation(line: 829, column: 5, scope: !2417)
!2420 = !DILocation(line: 830, column: 3, scope: !2357)
!2421 = distinct !DISubprogram(name: "quotearg_free", scope: !96, file: !96, line: 848, type: !631, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2422)
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "sv", scope: !2421, file: !96, line: 850, type: !148)
!2424 = !DILocalVariable(name: "i", scope: !2421, file: !96, line: 851, type: !56)
!2425 = !DILocation(line: 850, column: 24, scope: !2421)
!2426 = !DILocation(line: 0, scope: !2421)
!2427 = !DILocation(line: 852, column: 19, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !96, line: 852, column: 3)
!2429 = distinct !DILexicalBlock(scope: !2421, file: !96, line: 852, column: 3)
!2430 = !DILocation(line: 852, column: 17, scope: !2428)
!2431 = !DILocation(line: 852, column: 3, scope: !2429)
!2432 = !DILocation(line: 853, column: 17, scope: !2428)
!2433 = !{!2434, !622, i64 8}
!2434 = !{!"slotvec", !939, i64 0, !622, i64 8}
!2435 = !DILocation(line: 853, column: 5, scope: !2428)
!2436 = !DILocation(line: 852, column: 28, scope: !2428)
!2437 = distinct !{!2437, !2431, !2438, !673}
!2438 = !DILocation(line: 853, column: 20, scope: !2429)
!2439 = !DILocation(line: 854, column: 13, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2421, file: !96, line: 854, column: 7)
!2441 = !DILocation(line: 854, column: 17, scope: !2440)
!2442 = !DILocation(line: 854, column: 7, scope: !2421)
!2443 = !DILocation(line: 856, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2440, file: !96, line: 855, column: 5)
!2445 = !DILocation(line: 857, column: 21, scope: !2444)
!2446 = !{!2434, !939, i64 0}
!2447 = !DILocation(line: 858, column: 20, scope: !2444)
!2448 = !DILocation(line: 859, column: 5, scope: !2444)
!2449 = !DILocation(line: 860, column: 10, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2421, file: !96, line: 860, column: 7)
!2451 = !DILocation(line: 860, column: 7, scope: !2421)
!2452 = !DILocation(line: 862, column: 13, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2450, file: !96, line: 861, column: 5)
!2454 = !DILocation(line: 862, column: 7, scope: !2453)
!2455 = !DILocation(line: 863, column: 15, scope: !2453)
!2456 = !DILocation(line: 864, column: 5, scope: !2453)
!2457 = !DILocation(line: 865, column: 10, scope: !2421)
!2458 = !DILocation(line: 866, column: 1, scope: !2421)
!2459 = distinct !DISubprogram(name: "quotearg_n", scope: !96, file: !96, line: 931, type: !755, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2460)
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "n", arg: 1, scope: !2459, file: !96, line: 931, type: !56)
!2462 = !DILocalVariable(name: "arg", arg: 2, scope: !2459, file: !96, line: 931, type: !38)
!2463 = !DILocation(line: 0, scope: !2459)
!2464 = !DILocation(line: 933, column: 10, scope: !2459)
!2465 = !DILocation(line: 933, column: 3, scope: !2459)
!2466 = distinct !DISubprogram(name: "quotearg_n_options", scope: !96, file: !96, line: 877, type: !2467, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!30, !56, !38, !35, !1514}
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2479, !2480, !2482, !2483, !2484}
!2470 = !DILocalVariable(name: "n", arg: 1, scope: !2466, file: !96, line: 877, type: !56)
!2471 = !DILocalVariable(name: "arg", arg: 2, scope: !2466, file: !96, line: 877, type: !38)
!2472 = !DILocalVariable(name: "argsize", arg: 3, scope: !2466, file: !96, line: 877, type: !35)
!2473 = !DILocalVariable(name: "options", arg: 4, scope: !2466, file: !96, line: 878, type: !1514)
!2474 = !DILocalVariable(name: "e", scope: !2466, file: !96, line: 880, type: !56)
!2475 = !DILocalVariable(name: "sv", scope: !2466, file: !96, line: 882, type: !148)
!2476 = !DILocalVariable(name: "preallocated", scope: !2477, file: !96, line: 889, type: !44)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !96, line: 888, column: 5)
!2478 = distinct !DILexicalBlock(scope: !2466, file: !96, line: 887, column: 7)
!2479 = !DILocalVariable(name: "nmax", scope: !2477, file: !96, line: 890, type: !56)
!2480 = !DILocalVariable(name: "size", scope: !2481, file: !96, line: 903, type: !35)
!2481 = distinct !DILexicalBlock(scope: !2466, file: !96, line: 902, column: 3)
!2482 = !DILocalVariable(name: "val", scope: !2481, file: !96, line: 904, type: !30)
!2483 = !DILocalVariable(name: "flags", scope: !2481, file: !96, line: 906, type: !56)
!2484 = !DILocalVariable(name: "qsize", scope: !2481, file: !96, line: 907, type: !35)
!2485 = !DILocation(line: 0, scope: !2466)
!2486 = !DILocation(line: 880, column: 11, scope: !2466)
!2487 = !DILocation(line: 882, column: 24, scope: !2466)
!2488 = !DILocation(line: 884, column: 9, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2466, file: !96, line: 884, column: 7)
!2490 = !DILocation(line: 884, column: 7, scope: !2466)
!2491 = !DILocation(line: 885, column: 5, scope: !2489)
!2492 = !DILocation(line: 887, column: 7, scope: !2478)
!2493 = !DILocation(line: 887, column: 14, scope: !2478)
!2494 = !DILocation(line: 887, column: 7, scope: !2466)
!2495 = !DILocation(line: 889, column: 31, scope: !2477)
!2496 = !DILocation(line: 0, scope: !2477)
!2497 = !DILocation(line: 892, column: 16, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2477, file: !96, line: 892, column: 11)
!2499 = !DILocation(line: 892, column: 11, scope: !2477)
!2500 = !DILocation(line: 893, column: 9, scope: !2498)
!2501 = !DILocation(line: 895, column: 32, scope: !2477)
!2502 = !DILocation(line: 895, column: 61, scope: !2477)
!2503 = !DILocation(line: 895, column: 66, scope: !2477)
!2504 = !DILocation(line: 895, column: 22, scope: !2477)
!2505 = !DILocation(line: 895, column: 15, scope: !2477)
!2506 = !DILocation(line: 896, column: 11, scope: !2477)
!2507 = !DILocation(line: 897, column: 15, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2477, file: !96, line: 896, column: 11)
!2509 = !{i64 0, i64 8, !2418, i64 8, i64 8, !621}
!2510 = !DILocation(line: 897, column: 9, scope: !2508)
!2511 = !DILocation(line: 898, column: 20, scope: !2477)
!2512 = !DILocation(line: 898, column: 18, scope: !2477)
!2513 = !DILocation(line: 898, column: 15, scope: !2477)
!2514 = !DILocation(line: 898, column: 38, scope: !2477)
!2515 = !DILocation(line: 898, column: 31, scope: !2477)
!2516 = !DILocation(line: 898, column: 48, scope: !2477)
!2517 = !DILocation(line: 0, scope: !1909, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 898, column: 7, scope: !2477)
!2519 = !DILocation(line: 59, column: 10, scope: !1909, inlinedAt: !2518)
!2520 = !DILocation(line: 899, column: 14, scope: !2477)
!2521 = !DILocation(line: 900, column: 5, scope: !2477)
!2522 = !DILocation(line: 903, column: 19, scope: !2481)
!2523 = !DILocation(line: 903, column: 25, scope: !2481)
!2524 = !DILocation(line: 0, scope: !2481)
!2525 = !DILocation(line: 904, column: 23, scope: !2481)
!2526 = !DILocation(line: 906, column: 26, scope: !2481)
!2527 = !DILocation(line: 906, column: 32, scope: !2481)
!2528 = !DILocation(line: 908, column: 55, scope: !2481)
!2529 = !DILocation(line: 909, column: 46, scope: !2481)
!2530 = !DILocation(line: 910, column: 55, scope: !2481)
!2531 = !DILocation(line: 911, column: 55, scope: !2481)
!2532 = !DILocation(line: 907, column: 20, scope: !2481)
!2533 = !DILocation(line: 913, column: 14, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2481, file: !96, line: 913, column: 9)
!2535 = !DILocation(line: 913, column: 9, scope: !2481)
!2536 = !DILocation(line: 915, column: 35, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !96, line: 914, column: 7)
!2538 = !DILocation(line: 915, column: 20, scope: !2537)
!2539 = !DILocation(line: 916, column: 17, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2537, file: !96, line: 916, column: 13)
!2541 = !DILocation(line: 916, column: 13, scope: !2537)
!2542 = !DILocation(line: 917, column: 11, scope: !2540)
!2543 = !DILocation(line: 0, scope: !2382, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 918, column: 27, scope: !2537)
!2545 = !DILocation(line: 218, column: 10, scope: !2382, inlinedAt: !2544)
!2546 = !DILocation(line: 918, column: 19, scope: !2537)
!2547 = !DILocation(line: 919, column: 69, scope: !2537)
!2548 = !DILocation(line: 921, column: 44, scope: !2537)
!2549 = !DILocation(line: 922, column: 44, scope: !2537)
!2550 = !DILocation(line: 919, column: 9, scope: !2537)
!2551 = !DILocation(line: 923, column: 7, scope: !2537)
!2552 = !DILocation(line: 925, column: 11, scope: !2481)
!2553 = !DILocation(line: 926, column: 5, scope: !2481)
!2554 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !96, file: !96, line: 937, type: !2555, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!30, !56, !38, !35}
!2557 = !{!2558, !2559, !2560}
!2558 = !DILocalVariable(name: "n", arg: 1, scope: !2554, file: !96, line: 937, type: !56)
!2559 = !DILocalVariable(name: "arg", arg: 2, scope: !2554, file: !96, line: 937, type: !38)
!2560 = !DILocalVariable(name: "argsize", arg: 3, scope: !2554, file: !96, line: 937, type: !35)
!2561 = !DILocation(line: 0, scope: !2554)
!2562 = !DILocation(line: 939, column: 10, scope: !2554)
!2563 = !DILocation(line: 939, column: 3, scope: !2554)
!2564 = distinct !DISubprogram(name: "quotearg", scope: !96, file: !96, line: 943, type: !869, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2565)
!2565 = !{!2566}
!2566 = !DILocalVariable(name: "arg", arg: 1, scope: !2564, file: !96, line: 943, type: !38)
!2567 = !DILocation(line: 0, scope: !2564)
!2568 = !DILocation(line: 0, scope: !2459, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 945, column: 10, scope: !2564)
!2570 = !DILocation(line: 933, column: 10, scope: !2459, inlinedAt: !2569)
!2571 = !DILocation(line: 945, column: 3, scope: !2564)
!2572 = distinct !DISubprogram(name: "quotearg_mem", scope: !96, file: !96, line: 949, type: !2573, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!30, !38, !35}
!2575 = !{!2576, !2577}
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2572, file: !96, line: 949, type: !38)
!2577 = !DILocalVariable(name: "argsize", arg: 2, scope: !2572, file: !96, line: 949, type: !35)
!2578 = !DILocation(line: 0, scope: !2572)
!2579 = !DILocation(line: 0, scope: !2554, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 951, column: 10, scope: !2572)
!2581 = !DILocation(line: 939, column: 10, scope: !2554, inlinedAt: !2580)
!2582 = !DILocation(line: 951, column: 3, scope: !2572)
!2583 = distinct !DISubprogram(name: "quotearg_n_style", scope: !96, file: !96, line: 955, type: !2584, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!30, !56, !5, !38}
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "n", arg: 1, scope: !2583, file: !96, line: 955, type: !56)
!2588 = !DILocalVariable(name: "s", arg: 2, scope: !2583, file: !96, line: 955, type: !5)
!2589 = !DILocalVariable(name: "arg", arg: 3, scope: !2583, file: !96, line: 955, type: !38)
!2590 = !DILocalVariable(name: "o", scope: !2583, file: !96, line: 957, type: !1515)
!2591 = !DILocation(line: 0, scope: !2583)
!2592 = !DILocation(line: 957, column: 3, scope: !2583)
!2593 = !DILocation(line: 957, column: 32, scope: !2583)
!2594 = !{!2595}
!2595 = distinct !{!2595, !2596, !"quoting_options_from_style: argument 0"}
!2596 = distinct !{!2596, !"quoting_options_from_style"}
!2597 = !DILocation(line: 957, column: 36, scope: !2583)
!2598 = !DILocalVariable(name: "style", arg: 1, scope: !2599, file: !96, line: 193, type: !5)
!2599 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !96, file: !96, line: 193, type: !2600, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!129, !5}
!2602 = !{!2598, !2603}
!2603 = !DILocalVariable(name: "o", scope: !2599, file: !96, line: 195, type: !129)
!2604 = !DILocation(line: 0, scope: !2599, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 957, column: 36, scope: !2583)
!2606 = !DILocation(line: 195, column: 26, scope: !2599, inlinedAt: !2605)
!2607 = !DILocation(line: 196, column: 13, scope: !2608, inlinedAt: !2605)
!2608 = distinct !DILexicalBlock(scope: !2599, file: !96, line: 196, column: 7)
!2609 = !DILocation(line: 196, column: 7, scope: !2599, inlinedAt: !2605)
!2610 = !DILocation(line: 197, column: 5, scope: !2608, inlinedAt: !2605)
!2611 = !DILocation(line: 198, column: 5, scope: !2599, inlinedAt: !2605)
!2612 = !DILocation(line: 198, column: 11, scope: !2599, inlinedAt: !2605)
!2613 = !DILocation(line: 958, column: 10, scope: !2583)
!2614 = !DILocation(line: 959, column: 1, scope: !2583)
!2615 = !DILocation(line: 958, column: 3, scope: !2583)
!2616 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !96, file: !96, line: 962, type: !2617, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!30, !56, !5, !38, !35}
!2619 = !{!2620, !2621, !2622, !2623, !2624}
!2620 = !DILocalVariable(name: "n", arg: 1, scope: !2616, file: !96, line: 962, type: !56)
!2621 = !DILocalVariable(name: "s", arg: 2, scope: !2616, file: !96, line: 962, type: !5)
!2622 = !DILocalVariable(name: "arg", arg: 3, scope: !2616, file: !96, line: 963, type: !38)
!2623 = !DILocalVariable(name: "argsize", arg: 4, scope: !2616, file: !96, line: 963, type: !35)
!2624 = !DILocalVariable(name: "o", scope: !2616, file: !96, line: 965, type: !1515)
!2625 = !DILocation(line: 0, scope: !2616)
!2626 = !DILocation(line: 965, column: 3, scope: !2616)
!2627 = !DILocation(line: 965, column: 32, scope: !2616)
!2628 = !{!2629}
!2629 = distinct !{!2629, !2630, !"quoting_options_from_style: argument 0"}
!2630 = distinct !{!2630, !"quoting_options_from_style"}
!2631 = !DILocation(line: 965, column: 36, scope: !2616)
!2632 = !DILocation(line: 0, scope: !2599, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 965, column: 36, scope: !2616)
!2634 = !DILocation(line: 195, column: 26, scope: !2599, inlinedAt: !2633)
!2635 = !DILocation(line: 196, column: 13, scope: !2608, inlinedAt: !2633)
!2636 = !DILocation(line: 196, column: 7, scope: !2599, inlinedAt: !2633)
!2637 = !DILocation(line: 197, column: 5, scope: !2608, inlinedAt: !2633)
!2638 = !DILocation(line: 198, column: 5, scope: !2599, inlinedAt: !2633)
!2639 = !DILocation(line: 198, column: 11, scope: !2599, inlinedAt: !2633)
!2640 = !DILocation(line: 966, column: 10, scope: !2616)
!2641 = !DILocation(line: 967, column: 1, scope: !2616)
!2642 = !DILocation(line: 966, column: 3, scope: !2616)
!2643 = distinct !DISubprogram(name: "quotearg_style", scope: !96, file: !96, line: 970, type: !2644, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!30, !5, !38}
!2646 = !{!2647, !2648}
!2647 = !DILocalVariable(name: "s", arg: 1, scope: !2643, file: !96, line: 970, type: !5)
!2648 = !DILocalVariable(name: "arg", arg: 2, scope: !2643, file: !96, line: 970, type: !38)
!2649 = !DILocation(line: 0, scope: !2643)
!2650 = !DILocation(line: 0, scope: !2583, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 972, column: 10, scope: !2643)
!2652 = !DILocation(line: 957, column: 3, scope: !2583, inlinedAt: !2651)
!2653 = !DILocation(line: 957, column: 32, scope: !2583, inlinedAt: !2651)
!2654 = !{!2655}
!2655 = distinct !{!2655, !2656, !"quoting_options_from_style: argument 0"}
!2656 = distinct !{!2656, !"quoting_options_from_style"}
!2657 = !DILocation(line: 957, column: 36, scope: !2583, inlinedAt: !2651)
!2658 = !DILocation(line: 0, scope: !2599, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 957, column: 36, scope: !2583, inlinedAt: !2651)
!2660 = !DILocation(line: 195, column: 26, scope: !2599, inlinedAt: !2659)
!2661 = !DILocation(line: 196, column: 13, scope: !2608, inlinedAt: !2659)
!2662 = !DILocation(line: 196, column: 7, scope: !2599, inlinedAt: !2659)
!2663 = !DILocation(line: 197, column: 5, scope: !2608, inlinedAt: !2659)
!2664 = !DILocation(line: 198, column: 5, scope: !2599, inlinedAt: !2659)
!2665 = !DILocation(line: 198, column: 11, scope: !2599, inlinedAt: !2659)
!2666 = !DILocation(line: 958, column: 10, scope: !2583, inlinedAt: !2651)
!2667 = !DILocation(line: 959, column: 1, scope: !2583, inlinedAt: !2651)
!2668 = !DILocation(line: 972, column: 3, scope: !2643)
!2669 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !96, file: !96, line: 976, type: !2670, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!30, !5, !38, !35}
!2672 = !{!2673, !2674, !2675}
!2673 = !DILocalVariable(name: "s", arg: 1, scope: !2669, file: !96, line: 976, type: !5)
!2674 = !DILocalVariable(name: "arg", arg: 2, scope: !2669, file: !96, line: 976, type: !38)
!2675 = !DILocalVariable(name: "argsize", arg: 3, scope: !2669, file: !96, line: 976, type: !35)
!2676 = !DILocation(line: 0, scope: !2669)
!2677 = !DILocation(line: 0, scope: !2616, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 978, column: 10, scope: !2669)
!2679 = !DILocation(line: 965, column: 3, scope: !2616, inlinedAt: !2678)
!2680 = !DILocation(line: 965, column: 32, scope: !2616, inlinedAt: !2678)
!2681 = !{!2682}
!2682 = distinct !{!2682, !2683, !"quoting_options_from_style: argument 0"}
!2683 = distinct !{!2683, !"quoting_options_from_style"}
!2684 = !DILocation(line: 965, column: 36, scope: !2616, inlinedAt: !2678)
!2685 = !DILocation(line: 0, scope: !2599, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 965, column: 36, scope: !2616, inlinedAt: !2678)
!2687 = !DILocation(line: 195, column: 26, scope: !2599, inlinedAt: !2686)
!2688 = !DILocation(line: 196, column: 13, scope: !2608, inlinedAt: !2686)
!2689 = !DILocation(line: 196, column: 7, scope: !2599, inlinedAt: !2686)
!2690 = !DILocation(line: 197, column: 5, scope: !2608, inlinedAt: !2686)
!2691 = !DILocation(line: 198, column: 5, scope: !2599, inlinedAt: !2686)
!2692 = !DILocation(line: 198, column: 11, scope: !2599, inlinedAt: !2686)
!2693 = !DILocation(line: 966, column: 10, scope: !2616, inlinedAt: !2678)
!2694 = !DILocation(line: 967, column: 1, scope: !2616, inlinedAt: !2678)
!2695 = !DILocation(line: 978, column: 3, scope: !2669)
!2696 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !96, file: !96, line: 982, type: !2697, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!30, !38, !35, !31}
!2699 = !{!2700, !2701, !2702, !2703}
!2700 = !DILocalVariable(name: "arg", arg: 1, scope: !2696, file: !96, line: 982, type: !38)
!2701 = !DILocalVariable(name: "argsize", arg: 2, scope: !2696, file: !96, line: 982, type: !35)
!2702 = !DILocalVariable(name: "ch", arg: 3, scope: !2696, file: !96, line: 982, type: !31)
!2703 = !DILocalVariable(name: "options", scope: !2696, file: !96, line: 984, type: !129)
!2704 = !DILocation(line: 0, scope: !2696)
!2705 = !DILocation(line: 984, column: 3, scope: !2696)
!2706 = !DILocation(line: 984, column: 26, scope: !2696)
!2707 = !DILocation(line: 985, column: 13, scope: !2696)
!2708 = !{i64 0, i64 4, !782, i64 4, i64 4, !795, i64 8, i64 32, !782, i64 40, i64 8, !621, i64 48, i64 8, !621}
!2709 = !DILocation(line: 0, scope: !1535, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 986, column: 3, scope: !2696)
!2711 = !DILocation(line: 156, column: 62, scope: !1535, inlinedAt: !2710)
!2712 = !DILocation(line: 156, column: 57, scope: !1535, inlinedAt: !2710)
!2713 = !DILocation(line: 157, column: 15, scope: !1535, inlinedAt: !2710)
!2714 = !DILocation(line: 158, column: 12, scope: !1535, inlinedAt: !2710)
!2715 = !DILocation(line: 158, column: 15, scope: !1535, inlinedAt: !2710)
!2716 = !DILocation(line: 158, column: 25, scope: !1535, inlinedAt: !2710)
!2717 = !DILocation(line: 159, column: 18, scope: !1535, inlinedAt: !2710)
!2718 = !DILocation(line: 159, column: 23, scope: !1535, inlinedAt: !2710)
!2719 = !DILocation(line: 159, column: 6, scope: !1535, inlinedAt: !2710)
!2720 = !DILocation(line: 987, column: 10, scope: !2696)
!2721 = !DILocation(line: 988, column: 1, scope: !2696)
!2722 = !DILocation(line: 987, column: 3, scope: !2696)
!2723 = distinct !DISubprogram(name: "quotearg_char", scope: !96, file: !96, line: 991, type: !2724, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!30, !38, !31}
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "arg", arg: 1, scope: !2723, file: !96, line: 991, type: !38)
!2728 = !DILocalVariable(name: "ch", arg: 2, scope: !2723, file: !96, line: 991, type: !31)
!2729 = !DILocation(line: 0, scope: !2723)
!2730 = !DILocation(line: 0, scope: !2696, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 993, column: 10, scope: !2723)
!2732 = !DILocation(line: 984, column: 3, scope: !2696, inlinedAt: !2731)
!2733 = !DILocation(line: 984, column: 26, scope: !2696, inlinedAt: !2731)
!2734 = !DILocation(line: 985, column: 13, scope: !2696, inlinedAt: !2731)
!2735 = !DILocation(line: 0, scope: !1535, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 986, column: 3, scope: !2696, inlinedAt: !2731)
!2737 = !DILocation(line: 156, column: 62, scope: !1535, inlinedAt: !2736)
!2738 = !DILocation(line: 156, column: 57, scope: !1535, inlinedAt: !2736)
!2739 = !DILocation(line: 157, column: 15, scope: !1535, inlinedAt: !2736)
!2740 = !DILocation(line: 158, column: 12, scope: !1535, inlinedAt: !2736)
!2741 = !DILocation(line: 158, column: 15, scope: !1535, inlinedAt: !2736)
!2742 = !DILocation(line: 158, column: 25, scope: !1535, inlinedAt: !2736)
!2743 = !DILocation(line: 159, column: 18, scope: !1535, inlinedAt: !2736)
!2744 = !DILocation(line: 159, column: 23, scope: !1535, inlinedAt: !2736)
!2745 = !DILocation(line: 159, column: 6, scope: !1535, inlinedAt: !2736)
!2746 = !DILocation(line: 987, column: 10, scope: !2696, inlinedAt: !2731)
!2747 = !DILocation(line: 988, column: 1, scope: !2696, inlinedAt: !2731)
!2748 = !DILocation(line: 993, column: 3, scope: !2723)
!2749 = distinct !DISubprogram(name: "quotearg_colon", scope: !96, file: !96, line: 997, type: !869, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2750)
!2750 = !{!2751}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2749, file: !96, line: 997, type: !38)
!2752 = !DILocation(line: 0, scope: !2749)
!2753 = !DILocation(line: 0, scope: !2723, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 999, column: 10, scope: !2749)
!2755 = !DILocation(line: 0, scope: !2696, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 993, column: 10, scope: !2723, inlinedAt: !2754)
!2757 = !DILocation(line: 984, column: 3, scope: !2696, inlinedAt: !2756)
!2758 = !DILocation(line: 984, column: 26, scope: !2696, inlinedAt: !2756)
!2759 = !DILocation(line: 985, column: 13, scope: !2696, inlinedAt: !2756)
!2760 = !DILocation(line: 0, scope: !1535, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 986, column: 3, scope: !2696, inlinedAt: !2756)
!2762 = !DILocation(line: 156, column: 57, scope: !1535, inlinedAt: !2761)
!2763 = !DILocation(line: 158, column: 12, scope: !1535, inlinedAt: !2761)
!2764 = !DILocation(line: 159, column: 6, scope: !1535, inlinedAt: !2761)
!2765 = !DILocation(line: 987, column: 10, scope: !2696, inlinedAt: !2756)
!2766 = !DILocation(line: 988, column: 1, scope: !2696, inlinedAt: !2756)
!2767 = !DILocation(line: 999, column: 3, scope: !2749)
!2768 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !96, file: !96, line: 1003, type: !2573, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2769)
!2769 = !{!2770, !2771}
!2770 = !DILocalVariable(name: "arg", arg: 1, scope: !2768, file: !96, line: 1003, type: !38)
!2771 = !DILocalVariable(name: "argsize", arg: 2, scope: !2768, file: !96, line: 1003, type: !35)
!2772 = !DILocation(line: 0, scope: !2768)
!2773 = !DILocation(line: 0, scope: !2696, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 1005, column: 10, scope: !2768)
!2775 = !DILocation(line: 984, column: 3, scope: !2696, inlinedAt: !2774)
!2776 = !DILocation(line: 984, column: 26, scope: !2696, inlinedAt: !2774)
!2777 = !DILocation(line: 985, column: 13, scope: !2696, inlinedAt: !2774)
!2778 = !DILocation(line: 0, scope: !1535, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 986, column: 3, scope: !2696, inlinedAt: !2774)
!2780 = !DILocation(line: 156, column: 57, scope: !1535, inlinedAt: !2779)
!2781 = !DILocation(line: 158, column: 12, scope: !1535, inlinedAt: !2779)
!2782 = !DILocation(line: 159, column: 6, scope: !1535, inlinedAt: !2779)
!2783 = !DILocation(line: 987, column: 10, scope: !2696, inlinedAt: !2774)
!2784 = !DILocation(line: 988, column: 1, scope: !2696, inlinedAt: !2774)
!2785 = !DILocation(line: 1005, column: 3, scope: !2768)
!2786 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !96, file: !96, line: 1009, type: !2584, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2787)
!2787 = !{!2788, !2789, !2790, !2791}
!2788 = !DILocalVariable(name: "n", arg: 1, scope: !2786, file: !96, line: 1009, type: !56)
!2789 = !DILocalVariable(name: "s", arg: 2, scope: !2786, file: !96, line: 1009, type: !5)
!2790 = !DILocalVariable(name: "arg", arg: 3, scope: !2786, file: !96, line: 1009, type: !38)
!2791 = !DILocalVariable(name: "options", scope: !2786, file: !96, line: 1011, type: !129)
!2792 = !DILocation(line: 195, column: 26, scope: !2599, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1012, column: 13, scope: !2786)
!2794 = !DILocation(line: 0, scope: !2786)
!2795 = !DILocation(line: 1011, column: 3, scope: !2786)
!2796 = !DILocation(line: 1011, column: 26, scope: !2786)
!2797 = !DILocation(line: 1012, column: 13, scope: !2786)
!2798 = !{!2799}
!2799 = distinct !{!2799, !2800, !"quoting_options_from_style: argument 0"}
!2800 = distinct !{!2800, !"quoting_options_from_style"}
!2801 = !DILocation(line: 0, scope: !2599, inlinedAt: !2793)
!2802 = !DILocation(line: 196, column: 13, scope: !2608, inlinedAt: !2793)
!2803 = !DILocation(line: 196, column: 7, scope: !2599, inlinedAt: !2793)
!2804 = !DILocation(line: 197, column: 5, scope: !2608, inlinedAt: !2793)
!2805 = !{i64 0, i64 4, !795, i64 4, i64 32, !782, i64 36, i64 8, !621, i64 44, i64 8, !621}
!2806 = !DILocation(line: 0, scope: !1535, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 1013, column: 3, scope: !2786)
!2808 = !DILocation(line: 156, column: 57, scope: !1535, inlinedAt: !2807)
!2809 = !DILocation(line: 158, column: 12, scope: !1535, inlinedAt: !2807)
!2810 = !DILocation(line: 159, column: 6, scope: !1535, inlinedAt: !2807)
!2811 = !DILocation(line: 1014, column: 10, scope: !2786)
!2812 = !DILocation(line: 1015, column: 1, scope: !2786)
!2813 = !DILocation(line: 1014, column: 3, scope: !2786)
!2814 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !96, file: !96, line: 1018, type: !2815, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2817)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!30, !56, !38, !38, !38}
!2817 = !{!2818, !2819, !2820, !2821}
!2818 = !DILocalVariable(name: "n", arg: 1, scope: !2814, file: !96, line: 1018, type: !56)
!2819 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2814, file: !96, line: 1018, type: !38)
!2820 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2814, file: !96, line: 1019, type: !38)
!2821 = !DILocalVariable(name: "arg", arg: 4, scope: !2814, file: !96, line: 1019, type: !38)
!2822 = !DILocation(line: 0, scope: !2814)
!2823 = !DILocalVariable(name: "n", arg: 1, scope: !2824, file: !96, line: 1026, type: !56)
!2824 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !96, file: !96, line: 1026, type: !2825, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!30, !56, !38, !38, !38, !35}
!2827 = !{!2823, !2828, !2829, !2830, !2831, !2832}
!2828 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2824, file: !96, line: 1026, type: !38)
!2829 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2824, file: !96, line: 1027, type: !38)
!2830 = !DILocalVariable(name: "arg", arg: 4, scope: !2824, file: !96, line: 1028, type: !38)
!2831 = !DILocalVariable(name: "argsize", arg: 5, scope: !2824, file: !96, line: 1028, type: !35)
!2832 = !DILocalVariable(name: "o", scope: !2824, file: !96, line: 1030, type: !129)
!2833 = !DILocation(line: 0, scope: !2824, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 1021, column: 10, scope: !2814)
!2835 = !DILocation(line: 1030, column: 3, scope: !2824, inlinedAt: !2834)
!2836 = !DILocation(line: 1030, column: 26, scope: !2824, inlinedAt: !2834)
!2837 = !DILocation(line: 1030, column: 30, scope: !2824, inlinedAt: !2834)
!2838 = !DILocation(line: 0, scope: !1575, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 1031, column: 3, scope: !2824, inlinedAt: !2834)
!2840 = !DILocation(line: 184, column: 6, scope: !1575, inlinedAt: !2839)
!2841 = !DILocation(line: 184, column: 12, scope: !1575, inlinedAt: !2839)
!2842 = !DILocation(line: 185, column: 8, scope: !1589, inlinedAt: !2839)
!2843 = !DILocation(line: 185, column: 19, scope: !1589, inlinedAt: !2839)
!2844 = !DILocation(line: 186, column: 5, scope: !1589, inlinedAt: !2839)
!2845 = !DILocation(line: 187, column: 6, scope: !1575, inlinedAt: !2839)
!2846 = !DILocation(line: 187, column: 17, scope: !1575, inlinedAt: !2839)
!2847 = !DILocation(line: 188, column: 6, scope: !1575, inlinedAt: !2839)
!2848 = !DILocation(line: 188, column: 18, scope: !1575, inlinedAt: !2839)
!2849 = !DILocation(line: 1032, column: 10, scope: !2824, inlinedAt: !2834)
!2850 = !DILocation(line: 1033, column: 1, scope: !2824, inlinedAt: !2834)
!2851 = !DILocation(line: 1021, column: 3, scope: !2814)
!2852 = !DILocation(line: 0, scope: !2824)
!2853 = !DILocation(line: 1030, column: 3, scope: !2824)
!2854 = !DILocation(line: 1030, column: 26, scope: !2824)
!2855 = !DILocation(line: 1030, column: 30, scope: !2824)
!2856 = !DILocation(line: 0, scope: !1575, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 1031, column: 3, scope: !2824)
!2858 = !DILocation(line: 184, column: 6, scope: !1575, inlinedAt: !2857)
!2859 = !DILocation(line: 184, column: 12, scope: !1575, inlinedAt: !2857)
!2860 = !DILocation(line: 185, column: 8, scope: !1589, inlinedAt: !2857)
!2861 = !DILocation(line: 185, column: 19, scope: !1589, inlinedAt: !2857)
!2862 = !DILocation(line: 186, column: 5, scope: !1589, inlinedAt: !2857)
!2863 = !DILocation(line: 187, column: 6, scope: !1575, inlinedAt: !2857)
!2864 = !DILocation(line: 187, column: 17, scope: !1575, inlinedAt: !2857)
!2865 = !DILocation(line: 188, column: 6, scope: !1575, inlinedAt: !2857)
!2866 = !DILocation(line: 188, column: 18, scope: !1575, inlinedAt: !2857)
!2867 = !DILocation(line: 1032, column: 10, scope: !2824)
!2868 = !DILocation(line: 1033, column: 1, scope: !2824)
!2869 = !DILocation(line: 1032, column: 3, scope: !2824)
!2870 = distinct !DISubprogram(name: "quotearg_custom", scope: !96, file: !96, line: 1036, type: !2871, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!30, !38, !38, !38}
!2873 = !{!2874, !2875, !2876}
!2874 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2870, file: !96, line: 1036, type: !38)
!2875 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2870, file: !96, line: 1036, type: !38)
!2876 = !DILocalVariable(name: "arg", arg: 3, scope: !2870, file: !96, line: 1037, type: !38)
!2877 = !DILocation(line: 0, scope: !2870)
!2878 = !DILocation(line: 0, scope: !2814, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 1039, column: 10, scope: !2870)
!2880 = !DILocation(line: 0, scope: !2824, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 1021, column: 10, scope: !2814, inlinedAt: !2879)
!2882 = !DILocation(line: 1030, column: 3, scope: !2824, inlinedAt: !2881)
!2883 = !DILocation(line: 1030, column: 26, scope: !2824, inlinedAt: !2881)
!2884 = !DILocation(line: 1030, column: 30, scope: !2824, inlinedAt: !2881)
!2885 = !DILocation(line: 0, scope: !1575, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 1031, column: 3, scope: !2824, inlinedAt: !2881)
!2887 = !DILocation(line: 184, column: 6, scope: !1575, inlinedAt: !2886)
!2888 = !DILocation(line: 184, column: 12, scope: !1575, inlinedAt: !2886)
!2889 = !DILocation(line: 185, column: 8, scope: !1589, inlinedAt: !2886)
!2890 = !DILocation(line: 185, column: 19, scope: !1589, inlinedAt: !2886)
!2891 = !DILocation(line: 186, column: 5, scope: !1589, inlinedAt: !2886)
!2892 = !DILocation(line: 187, column: 6, scope: !1575, inlinedAt: !2886)
!2893 = !DILocation(line: 187, column: 17, scope: !1575, inlinedAt: !2886)
!2894 = !DILocation(line: 188, column: 6, scope: !1575, inlinedAt: !2886)
!2895 = !DILocation(line: 188, column: 18, scope: !1575, inlinedAt: !2886)
!2896 = !DILocation(line: 1032, column: 10, scope: !2824, inlinedAt: !2881)
!2897 = !DILocation(line: 1033, column: 1, scope: !2824, inlinedAt: !2881)
!2898 = !DILocation(line: 1039, column: 3, scope: !2870)
!2899 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !96, file: !96, line: 1043, type: !2900, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!30, !38, !38, !38, !35}
!2902 = !{!2903, !2904, !2905, !2906}
!2903 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2899, file: !96, line: 1043, type: !38)
!2904 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2899, file: !96, line: 1043, type: !38)
!2905 = !DILocalVariable(name: "arg", arg: 3, scope: !2899, file: !96, line: 1044, type: !38)
!2906 = !DILocalVariable(name: "argsize", arg: 4, scope: !2899, file: !96, line: 1044, type: !35)
!2907 = !DILocation(line: 0, scope: !2899)
!2908 = !DILocation(line: 0, scope: !2824, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1046, column: 10, scope: !2899)
!2910 = !DILocation(line: 1030, column: 3, scope: !2824, inlinedAt: !2909)
!2911 = !DILocation(line: 1030, column: 26, scope: !2824, inlinedAt: !2909)
!2912 = !DILocation(line: 1030, column: 30, scope: !2824, inlinedAt: !2909)
!2913 = !DILocation(line: 0, scope: !1575, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 1031, column: 3, scope: !2824, inlinedAt: !2909)
!2915 = !DILocation(line: 184, column: 6, scope: !1575, inlinedAt: !2914)
!2916 = !DILocation(line: 184, column: 12, scope: !1575, inlinedAt: !2914)
!2917 = !DILocation(line: 185, column: 8, scope: !1589, inlinedAt: !2914)
!2918 = !DILocation(line: 185, column: 19, scope: !1589, inlinedAt: !2914)
!2919 = !DILocation(line: 186, column: 5, scope: !1589, inlinedAt: !2914)
!2920 = !DILocation(line: 187, column: 6, scope: !1575, inlinedAt: !2914)
!2921 = !DILocation(line: 187, column: 17, scope: !1575, inlinedAt: !2914)
!2922 = !DILocation(line: 188, column: 6, scope: !1575, inlinedAt: !2914)
!2923 = !DILocation(line: 188, column: 18, scope: !1575, inlinedAt: !2914)
!2924 = !DILocation(line: 1032, column: 10, scope: !2824, inlinedAt: !2909)
!2925 = !DILocation(line: 1033, column: 1, scope: !2824, inlinedAt: !2909)
!2926 = !DILocation(line: 1046, column: 3, scope: !2899)
!2927 = distinct !DISubprogram(name: "quote_n_mem", scope: !96, file: !96, line: 1061, type: !2928, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!38, !56, !38, !35}
!2930 = !{!2931, !2932, !2933}
!2931 = !DILocalVariable(name: "n", arg: 1, scope: !2927, file: !96, line: 1061, type: !56)
!2932 = !DILocalVariable(name: "arg", arg: 2, scope: !2927, file: !96, line: 1061, type: !38)
!2933 = !DILocalVariable(name: "argsize", arg: 3, scope: !2927, file: !96, line: 1061, type: !35)
!2934 = !DILocation(line: 0, scope: !2927)
!2935 = !DILocation(line: 1063, column: 10, scope: !2927)
!2936 = !DILocation(line: 1063, column: 3, scope: !2927)
!2937 = distinct !DISubprogram(name: "quote_mem", scope: !96, file: !96, line: 1067, type: !2938, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!38, !38, !35}
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "arg", arg: 1, scope: !2937, file: !96, line: 1067, type: !38)
!2942 = !DILocalVariable(name: "argsize", arg: 2, scope: !2937, file: !96, line: 1067, type: !35)
!2943 = !DILocation(line: 0, scope: !2937)
!2944 = !DILocation(line: 0, scope: !2927, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 1069, column: 10, scope: !2937)
!2946 = !DILocation(line: 1063, column: 10, scope: !2927, inlinedAt: !2945)
!2947 = !DILocation(line: 1069, column: 3, scope: !2937)
!2948 = distinct !DISubprogram(name: "quote_n", scope: !96, file: !96, line: 1073, type: !2949, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!38, !56, !38}
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "n", arg: 1, scope: !2948, file: !96, line: 1073, type: !56)
!2953 = !DILocalVariable(name: "arg", arg: 2, scope: !2948, file: !96, line: 1073, type: !38)
!2954 = !DILocation(line: 0, scope: !2948)
!2955 = !DILocation(line: 0, scope: !2927, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 1075, column: 10, scope: !2948)
!2957 = !DILocation(line: 1063, column: 10, scope: !2927, inlinedAt: !2956)
!2958 = !DILocation(line: 1075, column: 3, scope: !2948)
!2959 = distinct !DISubprogram(name: "quote", scope: !96, file: !96, line: 1079, type: !2960, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !95, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!38, !38}
!2962 = !{!2963}
!2963 = !DILocalVariable(name: "arg", arg: 1, scope: !2959, file: !96, line: 1079, type: !38)
!2964 = !DILocation(line: 0, scope: !2959)
!2965 = !DILocation(line: 0, scope: !2948, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1081, column: 10, scope: !2959)
!2967 = !DILocation(line: 0, scope: !2927, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1075, column: 10, scope: !2948, inlinedAt: !2966)
!2969 = !DILocation(line: 1063, column: 10, scope: !2927, inlinedAt: !2968)
!2970 = !DILocation(line: 1081, column: 3, scope: !2959)
!2971 = distinct !DISubprogram(name: "version_etc_arn", scope: !173, file: !173, line: 61, type: !2972, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3009)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2974, !38, !38, !38, !3008, !35}
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !899, line: 7, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2976, file: !703, line: 51, baseType: !56, size: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2976, file: !703, line: 54, baseType: !30, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2976, file: !703, line: 55, baseType: !30, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2976, file: !703, line: 56, baseType: !30, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2976, file: !703, line: 57, baseType: !30, size: 64, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2976, file: !703, line: 58, baseType: !30, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2976, file: !703, line: 59, baseType: !30, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2976, file: !703, line: 60, baseType: !30, size: 64, offset: 448)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2976, file: !703, line: 61, baseType: !30, size: 64, offset: 512)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2976, file: !703, line: 64, baseType: !30, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2976, file: !703, line: 65, baseType: !30, size: 64, offset: 640)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2976, file: !703, line: 66, baseType: !30, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2976, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2976, file: !703, line: 70, baseType: !2992, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2976, file: !703, line: 72, baseType: !56, size: 32, offset: 896)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2976, file: !703, line: 73, baseType: !56, size: 32, offset: 928)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2976, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2976, file: !703, line: 77, baseType: !119, size: 16, offset: 1024)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2976, file: !703, line: 78, baseType: !729, size: 8, offset: 1040)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2976, file: !703, line: 79, baseType: !731, size: 8, offset: 1048)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2976, file: !703, line: 81, baseType: !735, size: 64, offset: 1088)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2976, file: !703, line: 89, baseType: !738, size: 64, offset: 1152)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2976, file: !703, line: 91, baseType: !740, size: 64, offset: 1216)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2976, file: !703, line: 92, baseType: !743, size: 64, offset: 1280)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2976, file: !703, line: 93, baseType: !2992, size: 64, offset: 1344)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2976, file: !703, line: 94, baseType: !32, size: 64, offset: 1408)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2976, file: !703, line: 95, baseType: !35, size: 64, offset: 1472)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2976, file: !703, line: 96, baseType: !56, size: 32, offset: 1536)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2976, file: !703, line: 98, baseType: !750, size: 160, offset: 1568)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!3009 = !{!3010, !3011, !3012, !3013, !3014, !3015}
!3010 = !DILocalVariable(name: "stream", arg: 1, scope: !2971, file: !173, line: 61, type: !2974)
!3011 = !DILocalVariable(name: "command_name", arg: 2, scope: !2971, file: !173, line: 62, type: !38)
!3012 = !DILocalVariable(name: "package", arg: 3, scope: !2971, file: !173, line: 62, type: !38)
!3013 = !DILocalVariable(name: "version", arg: 4, scope: !2971, file: !173, line: 63, type: !38)
!3014 = !DILocalVariable(name: "authors", arg: 5, scope: !2971, file: !173, line: 64, type: !3008)
!3015 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2971, file: !173, line: 64, type: !35)
!3016 = !DILocation(line: 0, scope: !2971)
!3017 = !DILocation(line: 66, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2971, file: !173, line: 66, column: 7)
!3019 = !DILocation(line: 66, column: 7, scope: !2971)
!3020 = !DILocation(line: 67, column: 5, scope: !3018)
!3021 = !DILocation(line: 69, column: 5, scope: !3018)
!3022 = !DILocation(line: 83, column: 3, scope: !2971)
!3023 = !DILocation(line: 85, column: 3, scope: !2971)
!3024 = !DILocation(line: 88, column: 3, scope: !2971)
!3025 = !DILocation(line: 95, column: 3, scope: !2971)
!3026 = !DILocation(line: 97, column: 3, scope: !2971)
!3027 = !DILocation(line: 105, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2971, file: !173, line: 98, column: 5)
!3029 = !DILocation(line: 106, column: 7, scope: !3028)
!3030 = !DILocation(line: 109, column: 7, scope: !3028)
!3031 = !DILocation(line: 110, column: 7, scope: !3028)
!3032 = !DILocation(line: 113, column: 7, scope: !3028)
!3033 = !DILocation(line: 115, column: 7, scope: !3028)
!3034 = !DILocation(line: 120, column: 7, scope: !3028)
!3035 = !DILocation(line: 122, column: 7, scope: !3028)
!3036 = !DILocation(line: 127, column: 7, scope: !3028)
!3037 = !DILocation(line: 129, column: 7, scope: !3028)
!3038 = !DILocation(line: 134, column: 7, scope: !3028)
!3039 = !DILocation(line: 137, column: 7, scope: !3028)
!3040 = !DILocation(line: 142, column: 7, scope: !3028)
!3041 = !DILocation(line: 145, column: 7, scope: !3028)
!3042 = !DILocation(line: 150, column: 7, scope: !3028)
!3043 = !DILocation(line: 154, column: 7, scope: !3028)
!3044 = !DILocation(line: 159, column: 7, scope: !3028)
!3045 = !DILocation(line: 163, column: 7, scope: !3028)
!3046 = !DILocation(line: 170, column: 7, scope: !3028)
!3047 = !DILocation(line: 174, column: 7, scope: !3028)
!3048 = !DILocation(line: 176, column: 1, scope: !2971)
!3049 = distinct !DISubprogram(name: "version_etc_ar", scope: !173, file: !173, line: 183, type: !3050, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !2974, !38, !38, !38, !3008}
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3058}
!3053 = !DILocalVariable(name: "stream", arg: 1, scope: !3049, file: !173, line: 183, type: !2974)
!3054 = !DILocalVariable(name: "command_name", arg: 2, scope: !3049, file: !173, line: 184, type: !38)
!3055 = !DILocalVariable(name: "package", arg: 3, scope: !3049, file: !173, line: 184, type: !38)
!3056 = !DILocalVariable(name: "version", arg: 4, scope: !3049, file: !173, line: 185, type: !38)
!3057 = !DILocalVariable(name: "authors", arg: 5, scope: !3049, file: !173, line: 185, type: !3008)
!3058 = !DILocalVariable(name: "n_authors", scope: !3049, file: !173, line: 187, type: !35)
!3059 = !DILocation(line: 0, scope: !3049)
!3060 = !DILocation(line: 189, column: 8, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3049, file: !173, line: 189, column: 3)
!3062 = !DILocation(line: 0, scope: !3061)
!3063 = !DILocation(line: 189, column: 23, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3061, file: !173, line: 189, column: 3)
!3065 = !DILocation(line: 189, column: 3, scope: !3061)
!3066 = !DILocation(line: 189, column: 52, scope: !3064)
!3067 = distinct !{!3067, !3065, !3068, !673}
!3068 = !DILocation(line: 190, column: 5, scope: !3061)
!3069 = !DILocation(line: 191, column: 3, scope: !3049)
!3070 = !DILocation(line: 192, column: 1, scope: !3049)
!3071 = distinct !DISubprogram(name: "version_etc_va", scope: !173, file: !173, line: 199, type: !3072, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3081)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !2974, !38, !38, !38, !3074}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3076)
!3076 = !{!3077, !3078, !3079, !3080}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3075, file: !173, line: 192, baseType: !7, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3075, file: !173, line: 192, baseType: !7, size: 32, offset: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3075, file: !173, line: 192, baseType: !32, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3075, file: !173, line: 192, baseType: !32, size: 64, offset: 128)
!3081 = !{!3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3082 = !DILocalVariable(name: "stream", arg: 1, scope: !3071, file: !173, line: 199, type: !2974)
!3083 = !DILocalVariable(name: "command_name", arg: 2, scope: !3071, file: !173, line: 200, type: !38)
!3084 = !DILocalVariable(name: "package", arg: 3, scope: !3071, file: !173, line: 200, type: !38)
!3085 = !DILocalVariable(name: "version", arg: 4, scope: !3071, file: !173, line: 201, type: !38)
!3086 = !DILocalVariable(name: "authors", arg: 5, scope: !3071, file: !173, line: 201, type: !3074)
!3087 = !DILocalVariable(name: "n_authors", scope: !3071, file: !173, line: 203, type: !35)
!3088 = !DILocalVariable(name: "authtab", scope: !3071, file: !173, line: 204, type: !3089)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !125)
!3090 = !DILocation(line: 0, scope: !3071)
!3091 = !DILocation(line: 204, column: 3, scope: !3071)
!3092 = !DILocation(line: 204, column: 15, scope: !3071)
!3093 = !DILocation(line: 208, column: 35, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !173, line: 206, column: 3)
!3095 = distinct !DILexicalBlock(scope: !3071, file: !173, line: 206, column: 3)
!3096 = !DILocation(line: 208, column: 14, scope: !3094)
!3097 = !DILocation(line: 208, column: 33, scope: !3094)
!3098 = !DILocation(line: 208, column: 67, scope: !3094)
!3099 = !DILocation(line: 206, column: 3, scope: !3095)
!3100 = !DILocation(line: 0, scope: !3095)
!3101 = !DILocation(line: 211, column: 3, scope: !3071)
!3102 = !DILocation(line: 213, column: 1, scope: !3071)
!3103 = distinct !DISubprogram(name: "version_etc", scope: !173, file: !173, line: 230, type: !3104, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{null, !2974, !38, !38, !38, null}
!3106 = !{!3107, !3108, !3109, !3110, !3111}
!3107 = !DILocalVariable(name: "stream", arg: 1, scope: !3103, file: !173, line: 230, type: !2974)
!3108 = !DILocalVariable(name: "command_name", arg: 2, scope: !3103, file: !173, line: 231, type: !38)
!3109 = !DILocalVariable(name: "package", arg: 3, scope: !3103, file: !173, line: 231, type: !38)
!3110 = !DILocalVariable(name: "version", arg: 4, scope: !3103, file: !173, line: 232, type: !38)
!3111 = !DILocalVariable(name: "authors", scope: !3103, file: !173, line: 234, type: !3112)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !698, line: 52, baseType: !3113)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3114, line: 32, baseType: !3115)
!3114 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !173, baseType: !3116)
!3116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3075, size: 192, elements: !732)
!3117 = !DILocation(line: 0, scope: !3103)
!3118 = !DILocation(line: 234, column: 3, scope: !3103)
!3119 = !DILocation(line: 234, column: 11, scope: !3103)
!3120 = !DILocation(line: 236, column: 3, scope: !3103)
!3121 = !DILocation(line: 237, column: 3, scope: !3103)
!3122 = !DILocation(line: 238, column: 3, scope: !3103)
!3123 = !DILocation(line: 239, column: 1, scope: !3103)
!3124 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !173, file: !173, line: 242, type: !631, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !72)
!3125 = !DILocation(line: 244, column: 3, scope: !3124)
!3126 = !DILocation(line: 249, column: 3, scope: !3124)
!3127 = !DILocation(line: 255, column: 3, scope: !3124)
!3128 = !DILocation(line: 260, column: 3, scope: !3124)
!3129 = !DILocation(line: 262, column: 1, scope: !3124)
!3130 = distinct !DISubprogram(name: "xnmalloc", scope: !183, file: !183, line: 99, type: !1110, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3131)
!3131 = !{!3132, !3133}
!3132 = !DILocalVariable(name: "n", arg: 1, scope: !3130, file: !183, line: 99, type: !35)
!3133 = !DILocalVariable(name: "s", arg: 2, scope: !3130, file: !183, line: 99, type: !35)
!3134 = !DILocation(line: 0, scope: !3130)
!3135 = !DILocation(line: 101, column: 7, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3130, file: !183, line: 101, column: 7)
!3137 = !DILocation(line: 101, column: 7, scope: !3130)
!3138 = !DILocation(line: 102, column: 5, scope: !3136)
!3139 = !DILocation(line: 103, column: 21, scope: !3130)
!3140 = !DILocalVariable(name: "n", arg: 1, scope: !3141, file: !180, line: 39, type: !35)
!3141 = distinct !DISubprogram(name: "xmalloc", scope: !180, file: !180, line: 39, type: !3142, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!32, !35}
!3144 = !{!3140, !3145}
!3145 = !DILocalVariable(name: "p", scope: !3141, file: !180, line: 41, type: !32)
!3146 = !DILocation(line: 0, scope: !3141, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 103, column: 10, scope: !3130)
!3148 = !DILocation(line: 41, column: 13, scope: !3141, inlinedAt: !3147)
!3149 = !DILocation(line: 42, column: 8, scope: !3150, inlinedAt: !3147)
!3150 = distinct !DILexicalBlock(scope: !3141, file: !180, line: 42, column: 7)
!3151 = !DILocation(line: 42, column: 10, scope: !3150, inlinedAt: !3147)
!3152 = !DILocation(line: 43, column: 5, scope: !3150, inlinedAt: !3147)
!3153 = !DILocation(line: 103, column: 3, scope: !3130)
!3154 = !DILocation(line: 0, scope: !3141)
!3155 = !DILocation(line: 41, column: 13, scope: !3141)
!3156 = !DILocation(line: 42, column: 8, scope: !3150)
!3157 = !DILocation(line: 42, column: 10, scope: !3150)
!3158 = !DILocation(line: 43, column: 5, scope: !3150)
!3159 = !DILocation(line: 44, column: 3, scope: !3141)
!3160 = distinct !DISubprogram(name: "xnrealloc", scope: !183, file: !183, line: 112, type: !3161, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!32, !32, !35, !35}
!3163 = !{!3164, !3165, !3166}
!3164 = !DILocalVariable(name: "p", arg: 1, scope: !3160, file: !183, line: 112, type: !32)
!3165 = !DILocalVariable(name: "n", arg: 2, scope: !3160, file: !183, line: 112, type: !35)
!3166 = !DILocalVariable(name: "s", arg: 3, scope: !3160, file: !183, line: 112, type: !35)
!3167 = !DILocation(line: 0, scope: !3160)
!3168 = !DILocation(line: 114, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3160, file: !183, line: 114, column: 7)
!3170 = !DILocation(line: 114, column: 7, scope: !3160)
!3171 = !DILocation(line: 115, column: 5, scope: !3169)
!3172 = !DILocation(line: 116, column: 25, scope: !3160)
!3173 = !DILocalVariable(name: "p", arg: 1, scope: !3174, file: !180, line: 51, type: !32)
!3174 = distinct !DISubprogram(name: "xrealloc", scope: !180, file: !180, line: 51, type: !3175, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3177)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!32, !32, !35}
!3177 = !{!3173, !3178}
!3178 = !DILocalVariable(name: "n", arg: 2, scope: !3174, file: !180, line: 51, type: !35)
!3179 = !DILocation(line: 0, scope: !3174, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 116, column: 10, scope: !3160)
!3181 = !DILocation(line: 53, column: 8, scope: !3182, inlinedAt: !3180)
!3182 = distinct !DILexicalBlock(scope: !3174, file: !180, line: 53, column: 7)
!3183 = !DILocation(line: 53, column: 10, scope: !3182, inlinedAt: !3180)
!3184 = !DILocation(line: 57, column: 7, scope: !3185, inlinedAt: !3180)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !180, line: 54, column: 5)
!3186 = !DILocation(line: 58, column: 7, scope: !3185, inlinedAt: !3180)
!3187 = !DILocation(line: 61, column: 7, scope: !3174, inlinedAt: !3180)
!3188 = !DILocation(line: 62, column: 8, scope: !3189, inlinedAt: !3180)
!3189 = distinct !DILexicalBlock(scope: !3174, file: !180, line: 62, column: 7)
!3190 = !DILocation(line: 62, column: 10, scope: !3189, inlinedAt: !3180)
!3191 = !DILocation(line: 63, column: 5, scope: !3189, inlinedAt: !3180)
!3192 = !DILocation(line: 116, column: 3, scope: !3160)
!3193 = !DILocation(line: 0, scope: !3174)
!3194 = !DILocation(line: 53, column: 8, scope: !3182)
!3195 = !DILocation(line: 53, column: 10, scope: !3182)
!3196 = !DILocation(line: 57, column: 7, scope: !3185)
!3197 = !DILocation(line: 58, column: 7, scope: !3185)
!3198 = !DILocation(line: 61, column: 7, scope: !3174)
!3199 = !DILocation(line: 62, column: 8, scope: !3189)
!3200 = !DILocation(line: 62, column: 10, scope: !3189)
!3201 = !DILocation(line: 63, column: 5, scope: !3189)
!3202 = !DILocation(line: 65, column: 1, scope: !3174)
!3203 = !DILocation(line: 0, scope: !184)
!3204 = !DILocation(line: 176, column: 14, scope: !184)
!3205 = !DILocation(line: 178, column: 9, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !184, file: !183, line: 178, column: 7)
!3207 = !DILocation(line: 178, column: 7, scope: !184)
!3208 = !DILocation(line: 180, column: 13, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !183, line: 180, column: 11)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !183, line: 179, column: 5)
!3211 = !DILocation(line: 180, column: 11, scope: !3210)
!3212 = !DILocation(line: 188, column: 30, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3209, file: !183, line: 181, column: 9)
!3214 = !DILocation(line: 189, column: 16, scope: !3213)
!3215 = !DILocation(line: 189, column: 13, scope: !3213)
!3216 = !DILocation(line: 190, column: 9, scope: !3213)
!3217 = !DILocation(line: 191, column: 11, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3210, file: !183, line: 191, column: 11)
!3219 = !DILocation(line: 191, column: 11, scope: !3210)
!3220 = !DILocation(line: 206, column: 7, scope: !184)
!3221 = !DILocation(line: 207, column: 25, scope: !184)
!3222 = !DILocation(line: 0, scope: !3174, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 207, column: 10, scope: !184)
!3224 = !DILocation(line: 53, column: 10, scope: !3182, inlinedAt: !3223)
!3225 = !DILocation(line: 192, column: 9, scope: !3218)
!3226 = !DILocation(line: 200, column: 69, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !183, line: 200, column: 11)
!3228 = distinct !DILexicalBlock(scope: !3206, file: !183, line: 195, column: 5)
!3229 = !DILocation(line: 201, column: 11, scope: !3227)
!3230 = !DILocation(line: 200, column: 11, scope: !3228)
!3231 = !DILocation(line: 202, column: 9, scope: !3227)
!3232 = !DILocation(line: 203, column: 14, scope: !3228)
!3233 = !DILocation(line: 203, column: 18, scope: !3228)
!3234 = !DILocation(line: 203, column: 9, scope: !3228)
!3235 = !DILocation(line: 53, column: 8, scope: !3182, inlinedAt: !3223)
!3236 = !DILocation(line: 57, column: 7, scope: !3185, inlinedAt: !3223)
!3237 = !DILocation(line: 58, column: 7, scope: !3185, inlinedAt: !3223)
!3238 = !DILocation(line: 61, column: 7, scope: !3174, inlinedAt: !3223)
!3239 = !DILocation(line: 62, column: 8, scope: !3189, inlinedAt: !3223)
!3240 = !DILocation(line: 62, column: 10, scope: !3189, inlinedAt: !3223)
!3241 = !DILocation(line: 63, column: 5, scope: !3189, inlinedAt: !3223)
!3242 = !DILocation(line: 207, column: 3, scope: !184)
!3243 = distinct !DISubprogram(name: "xcharalloc", scope: !183, file: !183, line: 216, type: !2383, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3244)
!3244 = !{!3245}
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3243, file: !183, line: 216, type: !35)
!3246 = !DILocation(line: 0, scope: !3243)
!3247 = !DILocation(line: 0, scope: !3141, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 218, column: 10, scope: !3243)
!3249 = !DILocation(line: 41, column: 13, scope: !3141, inlinedAt: !3248)
!3250 = !DILocation(line: 42, column: 8, scope: !3150, inlinedAt: !3248)
!3251 = !DILocation(line: 42, column: 10, scope: !3150, inlinedAt: !3248)
!3252 = !DILocation(line: 43, column: 5, scope: !3150, inlinedAt: !3248)
!3253 = !DILocation(line: 218, column: 3, scope: !3243)
!3254 = distinct !DISubprogram(name: "x2realloc", scope: !180, file: !180, line: 74, type: !3255, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3257)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!32, !32, !187}
!3257 = !{!3258, !3259}
!3258 = !DILocalVariable(name: "p", arg: 1, scope: !3254, file: !180, line: 74, type: !32)
!3259 = !DILocalVariable(name: "pn", arg: 2, scope: !3254, file: !180, line: 74, type: !187)
!3260 = !DILocation(line: 0, scope: !3254)
!3261 = !DILocation(line: 0, scope: !184, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 76, column: 10, scope: !3254)
!3263 = !DILocation(line: 176, column: 14, scope: !184, inlinedAt: !3262)
!3264 = !DILocation(line: 178, column: 9, scope: !3206, inlinedAt: !3262)
!3265 = !DILocation(line: 178, column: 7, scope: !184, inlinedAt: !3262)
!3266 = !DILocation(line: 180, column: 13, scope: !3209, inlinedAt: !3262)
!3267 = !DILocation(line: 180, column: 11, scope: !3210, inlinedAt: !3262)
!3268 = !DILocation(line: 191, column: 11, scope: !3218, inlinedAt: !3262)
!3269 = !DILocation(line: 191, column: 11, scope: !3210, inlinedAt: !3262)
!3270 = !DILocation(line: 192, column: 9, scope: !3218, inlinedAt: !3262)
!3271 = !DILocation(line: 201, column: 11, scope: !3227, inlinedAt: !3262)
!3272 = !DILocation(line: 200, column: 11, scope: !3228, inlinedAt: !3262)
!3273 = !DILocation(line: 202, column: 9, scope: !3227, inlinedAt: !3262)
!3274 = !DILocation(line: 203, column: 14, scope: !3228, inlinedAt: !3262)
!3275 = !DILocation(line: 203, column: 18, scope: !3228, inlinedAt: !3262)
!3276 = !DILocation(line: 203, column: 9, scope: !3228, inlinedAt: !3262)
!3277 = !DILocation(line: 0, scope: !3174, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 207, column: 10, scope: !184, inlinedAt: !3262)
!3279 = !DILocation(line: 53, column: 10, scope: !3182, inlinedAt: !3278)
!3280 = !DILocation(line: 206, column: 7, scope: !184, inlinedAt: !3262)
!3281 = !DILocation(line: 61, column: 7, scope: !3174, inlinedAt: !3278)
!3282 = !DILocation(line: 62, column: 8, scope: !3189, inlinedAt: !3278)
!3283 = !DILocation(line: 62, column: 10, scope: !3189, inlinedAt: !3278)
!3284 = !DILocation(line: 63, column: 5, scope: !3189, inlinedAt: !3278)
!3285 = !DILocation(line: 76, column: 3, scope: !3254)
!3286 = distinct !DISubprogram(name: "xzalloc", scope: !180, file: !180, line: 84, type: !3142, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3287)
!3287 = !{!3288}
!3288 = !DILocalVariable(name: "n", arg: 1, scope: !3286, file: !180, line: 84, type: !35)
!3289 = !DILocation(line: 0, scope: !3286)
!3290 = !DILocalVariable(name: "n", arg: 1, scope: !3291, file: !180, line: 93, type: !35)
!3291 = distinct !DISubprogram(name: "xcalloc", scope: !180, file: !180, line: 93, type: !1110, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3292)
!3292 = !{!3290, !3293, !3294}
!3293 = !DILocalVariable(name: "s", arg: 2, scope: !3291, file: !180, line: 93, type: !35)
!3294 = !DILocalVariable(name: "p", scope: !3291, file: !180, line: 95, type: !32)
!3295 = !DILocation(line: 0, scope: !3291, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 86, column: 10, scope: !3286)
!3297 = !DILocation(line: 100, column: 7, scope: !3298, inlinedAt: !3296)
!3298 = distinct !DILexicalBlock(scope: !3291, file: !180, line: 100, column: 7)
!3299 = !DILocation(line: 101, column: 7, scope: !3298, inlinedAt: !3296)
!3300 = !DILocation(line: 101, column: 18, scope: !3298, inlinedAt: !3296)
!3301 = !DILocation(line: 101, column: 16, scope: !3298, inlinedAt: !3296)
!3302 = !DILocation(line: 100, column: 7, scope: !3291, inlinedAt: !3296)
!3303 = !DILocation(line: 102, column: 5, scope: !3298, inlinedAt: !3296)
!3304 = !DILocation(line: 86, column: 3, scope: !3286)
!3305 = !DILocation(line: 0, scope: !3291)
!3306 = !DILocation(line: 100, column: 7, scope: !3298)
!3307 = !DILocation(line: 101, column: 7, scope: !3298)
!3308 = !DILocation(line: 101, column: 18, scope: !3298)
!3309 = !DILocation(line: 101, column: 16, scope: !3298)
!3310 = !DILocation(line: 100, column: 7, scope: !3291)
!3311 = !DILocation(line: 102, column: 5, scope: !3298)
!3312 = !DILocation(line: 103, column: 3, scope: !3291)
!3313 = distinct !DISubprogram(name: "xmemdup", scope: !180, file: !180, line: 111, type: !3314, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3316)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!32, !1333, !35}
!3316 = !{!3317, !3318}
!3317 = !DILocalVariable(name: "p", arg: 1, scope: !3313, file: !180, line: 111, type: !1333)
!3318 = !DILocalVariable(name: "s", arg: 2, scope: !3313, file: !180, line: 111, type: !35)
!3319 = !DILocation(line: 0, scope: !3313)
!3320 = !DILocation(line: 0, scope: !3141, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 113, column: 18, scope: !3313)
!3322 = !DILocation(line: 41, column: 13, scope: !3141, inlinedAt: !3321)
!3323 = !DILocation(line: 42, column: 8, scope: !3150, inlinedAt: !3321)
!3324 = !DILocation(line: 42, column: 10, scope: !3150, inlinedAt: !3321)
!3325 = !DILocation(line: 43, column: 5, scope: !3150, inlinedAt: !3321)
!3326 = !DILocalVariable(name: "__dest", arg: 1, scope: !3327, file: !1910, line: 26, type: !3330)
!3327 = distinct !DISubprogram(name: "memcpy", scope: !1910, file: !1910, line: 26, type: !3328, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3332)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!32, !3330, !3331, !35}
!3330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!3331 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1333)
!3332 = !{!3326, !3333, !3334}
!3333 = !DILocalVariable(name: "__src", arg: 2, scope: !3327, file: !1910, line: 26, type: !3331)
!3334 = !DILocalVariable(name: "__len", arg: 3, scope: !3327, file: !1910, line: 26, type: !35)
!3335 = !DILocation(line: 0, scope: !3327, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 113, column: 10, scope: !3313)
!3337 = !DILocation(line: 29, column: 10, scope: !3327, inlinedAt: !3336)
!3338 = !DILocation(line: 113, column: 3, scope: !3313)
!3339 = distinct !DISubprogram(name: "xstrdup", scope: !180, file: !180, line: 119, type: !869, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !3340)
!3340 = !{!3341}
!3341 = !DILocalVariable(name: "string", arg: 1, scope: !3339, file: !180, line: 119, type: !38)
!3342 = !DILocation(line: 0, scope: !3339)
!3343 = !DILocation(line: 121, column: 27, scope: !3339)
!3344 = !DILocation(line: 121, column: 43, scope: !3339)
!3345 = !DILocation(line: 0, scope: !3313, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 121, column: 10, scope: !3339)
!3347 = !DILocation(line: 0, scope: !3141, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 113, column: 18, scope: !3313, inlinedAt: !3346)
!3349 = !DILocation(line: 41, column: 13, scope: !3141, inlinedAt: !3348)
!3350 = !DILocation(line: 42, column: 8, scope: !3150, inlinedAt: !3348)
!3351 = !DILocation(line: 42, column: 10, scope: !3150, inlinedAt: !3348)
!3352 = !DILocation(line: 43, column: 5, scope: !3150, inlinedAt: !3348)
!3353 = !DILocation(line: 0, scope: !3327, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 113, column: 10, scope: !3313, inlinedAt: !3346)
!3355 = !DILocation(line: 29, column: 10, scope: !3327, inlinedAt: !3354)
!3356 = !DILocation(line: 121, column: 3, scope: !3339)
!3357 = distinct !DISubprogram(name: "xalloc_die", scope: !197, file: !197, line: 32, type: !631, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !72)
!3358 = !DILocation(line: 34, column: 10, scope: !3357)
!3359 = !DILocation(line: 34, column: 33, scope: !3357)
!3360 = !DILocation(line: 34, column: 3, scope: !3357)
!3361 = !DILocation(line: 40, column: 3, scope: !3357)
!3362 = distinct !DISubprogram(name: "rpl_calloc", scope: !199, file: !199, line: 42, type: !1110, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3363)
!3363 = !{!3364, !3365, !3366, !3367}
!3364 = !DILocalVariable(name: "n", arg: 1, scope: !3362, file: !199, line: 42, type: !35)
!3365 = !DILocalVariable(name: "s", arg: 2, scope: !3362, file: !199, line: 42, type: !35)
!3366 = !DILocalVariable(name: "result", scope: !3362, file: !199, line: 44, type: !32)
!3367 = !DILocalVariable(name: "bytes", scope: !3368, file: !199, line: 56, type: !35)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !199, line: 53, column: 5)
!3369 = distinct !DILexicalBlock(scope: !3362, file: !199, line: 47, column: 7)
!3370 = !DILocation(line: 0, scope: !3362)
!3371 = !DILocation(line: 47, column: 9, scope: !3369)
!3372 = !DILocation(line: 47, column: 14, scope: !3369)
!3373 = !DILocation(line: 0, scope: !3368)
!3374 = !DILocation(line: 57, column: 21, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3368, file: !199, line: 57, column: 11)
!3376 = !DILocation(line: 57, column: 11, scope: !3368)
!3377 = !DILocation(line: 59, column: 11, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !199, line: 58, column: 9)
!3379 = !DILocation(line: 59, column: 17, scope: !3378)
!3380 = !DILocation(line: 65, column: 12, scope: !3362)
!3381 = !DILocation(line: 72, column: 3, scope: !3362)
!3382 = !DILocation(line: 73, column: 1, scope: !3362)
!3383 = distinct !DISubprogram(name: "rpl_fclose", scope: !201, file: !201, line: 58, type: !3384, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3420)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!56, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !899, line: 7, baseType: !3388)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3388, file: !703, line: 51, baseType: !56, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3388, file: !703, line: 54, baseType: !30, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3388, file: !703, line: 55, baseType: !30, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3388, file: !703, line: 56, baseType: !30, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3388, file: !703, line: 57, baseType: !30, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3388, file: !703, line: 58, baseType: !30, size: 64, offset: 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3388, file: !703, line: 59, baseType: !30, size: 64, offset: 384)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3388, file: !703, line: 60, baseType: !30, size: 64, offset: 448)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3388, file: !703, line: 61, baseType: !30, size: 64, offset: 512)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3388, file: !703, line: 64, baseType: !30, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3388, file: !703, line: 65, baseType: !30, size: 64, offset: 640)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3388, file: !703, line: 66, baseType: !30, size: 64, offset: 704)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3388, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3388, file: !703, line: 70, baseType: !3404, size: 64, offset: 832)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3388, file: !703, line: 72, baseType: !56, size: 32, offset: 896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3388, file: !703, line: 73, baseType: !56, size: 32, offset: 928)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3388, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3388, file: !703, line: 77, baseType: !119, size: 16, offset: 1024)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3388, file: !703, line: 78, baseType: !729, size: 8, offset: 1040)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3388, file: !703, line: 79, baseType: !731, size: 8, offset: 1048)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3388, file: !703, line: 81, baseType: !735, size: 64, offset: 1088)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3388, file: !703, line: 89, baseType: !738, size: 64, offset: 1152)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3388, file: !703, line: 91, baseType: !740, size: 64, offset: 1216)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3388, file: !703, line: 92, baseType: !743, size: 64, offset: 1280)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3388, file: !703, line: 93, baseType: !3404, size: 64, offset: 1344)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3388, file: !703, line: 94, baseType: !32, size: 64, offset: 1408)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3388, file: !703, line: 95, baseType: !35, size: 64, offset: 1472)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3388, file: !703, line: 96, baseType: !56, size: 32, offset: 1536)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3388, file: !703, line: 98, baseType: !750, size: 160, offset: 1568)
!3420 = !{!3421, !3422, !3423, !3424}
!3421 = !DILocalVariable(name: "fp", arg: 1, scope: !3383, file: !201, line: 58, type: !3386)
!3422 = !DILocalVariable(name: "saved_errno", scope: !3383, file: !201, line: 60, type: !56)
!3423 = !DILocalVariable(name: "fd", scope: !3383, file: !201, line: 61, type: !56)
!3424 = !DILocalVariable(name: "result", scope: !3383, file: !201, line: 62, type: !56)
!3425 = !DILocation(line: 0, scope: !3383)
!3426 = !DILocation(line: 65, column: 8, scope: !3383)
!3427 = !DILocation(line: 66, column: 10, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3383, file: !201, line: 66, column: 7)
!3429 = !DILocation(line: 66, column: 7, scope: !3383)
!3430 = !DILocation(line: 67, column: 12, scope: !3428)
!3431 = !DILocation(line: 67, column: 5, scope: !3428)
!3432 = !DILocation(line: 72, column: 9, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3383, file: !201, line: 72, column: 7)
!3434 = !DILocation(line: 72, column: 23, scope: !3433)
!3435 = !DILocation(line: 72, column: 33, scope: !3433)
!3436 = !DILocation(line: 72, column: 26, scope: !3433)
!3437 = !DILocation(line: 72, column: 59, scope: !3433)
!3438 = !DILocation(line: 73, column: 7, scope: !3433)
!3439 = !DILocation(line: 73, column: 10, scope: !3433)
!3440 = !DILocation(line: 72, column: 7, scope: !3383)
!3441 = !DILocation(line: 100, column: 12, scope: !3383)
!3442 = !DILocation(line: 105, column: 7, scope: !3383)
!3443 = !DILocation(line: 74, column: 19, scope: !3433)
!3444 = !DILocation(line: 105, column: 19, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3383, file: !201, line: 105, column: 7)
!3446 = !DILocation(line: 107, column: 13, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3445, file: !201, line: 106, column: 5)
!3448 = !DILocation(line: 109, column: 5, scope: !3447)
!3449 = !DILocation(line: 112, column: 1, scope: !3383)
!3450 = !DISubprogram(name: "fclose", scope: !698, file: !698, line: 213, type: !3451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!56, !3404}
!3453 = !DISubprogram(name: "lseek", scope: !3454, file: !3454, line: 334, type: !3455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!3454 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!726, !56, !726, !56}
!3457 = distinct !DISubprogram(name: "rpl_fflush", scope: !203, file: !203, line: 129, type: !3458, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !3494)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!56, !3460}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !899, line: 7, baseType: !3462)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3462, file: !703, line: 51, baseType: !56, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3462, file: !703, line: 54, baseType: !30, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3462, file: !703, line: 55, baseType: !30, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3462, file: !703, line: 56, baseType: !30, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3462, file: !703, line: 57, baseType: !30, size: 64, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3462, file: !703, line: 58, baseType: !30, size: 64, offset: 320)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3462, file: !703, line: 59, baseType: !30, size: 64, offset: 384)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3462, file: !703, line: 60, baseType: !30, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3462, file: !703, line: 61, baseType: !30, size: 64, offset: 512)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3462, file: !703, line: 64, baseType: !30, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3462, file: !703, line: 65, baseType: !30, size: 64, offset: 640)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3462, file: !703, line: 66, baseType: !30, size: 64, offset: 704)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3462, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3462, file: !703, line: 70, baseType: !3478, size: 64, offset: 832)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3462, file: !703, line: 72, baseType: !56, size: 32, offset: 896)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3462, file: !703, line: 73, baseType: !56, size: 32, offset: 928)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3462, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3462, file: !703, line: 77, baseType: !119, size: 16, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3462, file: !703, line: 78, baseType: !729, size: 8, offset: 1040)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3462, file: !703, line: 79, baseType: !731, size: 8, offset: 1048)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3462, file: !703, line: 81, baseType: !735, size: 64, offset: 1088)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3462, file: !703, line: 89, baseType: !738, size: 64, offset: 1152)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3462, file: !703, line: 91, baseType: !740, size: 64, offset: 1216)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3462, file: !703, line: 92, baseType: !743, size: 64, offset: 1280)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3462, file: !703, line: 93, baseType: !3478, size: 64, offset: 1344)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3462, file: !703, line: 94, baseType: !32, size: 64, offset: 1408)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3462, file: !703, line: 95, baseType: !35, size: 64, offset: 1472)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3462, file: !703, line: 96, baseType: !56, size: 32, offset: 1536)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3462, file: !703, line: 98, baseType: !750, size: 160, offset: 1568)
!3494 = !{!3495}
!3495 = !DILocalVariable(name: "stream", arg: 1, scope: !3457, file: !203, line: 129, type: !3460)
!3496 = !DILocation(line: 0, scope: !3457)
!3497 = !DILocation(line: 150, column: 14, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3457, file: !203, line: 150, column: 7)
!3499 = !DILocation(line: 150, column: 22, scope: !3498)
!3500 = !DILocation(line: 150, column: 27, scope: !3498)
!3501 = !DILocation(line: 150, column: 7, scope: !3457)
!3502 = !DILocation(line: 151, column: 12, scope: !3498)
!3503 = !DILocation(line: 151, column: 5, scope: !3498)
!3504 = !DILocalVariable(name: "fp", arg: 1, scope: !3505, file: !203, line: 41, type: !3460)
!3505 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !203, file: !203, line: 41, type: !3506, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !3508)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3460}
!3508 = !{!3504}
!3509 = !DILocation(line: 0, scope: !3505, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 156, column: 3, scope: !3457)
!3511 = !DILocation(line: 43, column: 11, scope: !3512, inlinedAt: !3510)
!3512 = distinct !DILexicalBlock(scope: !3505, file: !203, line: 43, column: 7)
!3513 = !DILocation(line: 43, column: 18, scope: !3512, inlinedAt: !3510)
!3514 = !DILocation(line: 43, column: 7, scope: !3505, inlinedAt: !3510)
!3515 = !DILocation(line: 45, column: 5, scope: !3512, inlinedAt: !3510)
!3516 = !DILocation(line: 158, column: 10, scope: !3457)
!3517 = !DILocation(line: 158, column: 3, scope: !3457)
!3518 = !DILocation(line: 235, column: 1, scope: !3457)
!3519 = !DISubprogram(name: "fflush", scope: !698, file: !698, line: 218, type: !3520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!56, !3478}
!3522 = distinct !DISubprogram(name: "rpl_fseeko", scope: !205, file: !205, line: 28, type: !3523, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !3559)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!56, !3525, !1393, !56}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !899, line: 7, baseType: !3527)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3527, file: !703, line: 51, baseType: !56, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3527, file: !703, line: 54, baseType: !30, size: 64, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3527, file: !703, line: 55, baseType: !30, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3527, file: !703, line: 56, baseType: !30, size: 64, offset: 192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3527, file: !703, line: 57, baseType: !30, size: 64, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3527, file: !703, line: 58, baseType: !30, size: 64, offset: 320)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3527, file: !703, line: 59, baseType: !30, size: 64, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3527, file: !703, line: 60, baseType: !30, size: 64, offset: 448)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3527, file: !703, line: 61, baseType: !30, size: 64, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3527, file: !703, line: 64, baseType: !30, size: 64, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3527, file: !703, line: 65, baseType: !30, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3527, file: !703, line: 66, baseType: !30, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3527, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3527, file: !703, line: 70, baseType: !3543, size: 64, offset: 832)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3527, file: !703, line: 72, baseType: !56, size: 32, offset: 896)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3527, file: !703, line: 73, baseType: !56, size: 32, offset: 928)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3527, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3527, file: !703, line: 77, baseType: !119, size: 16, offset: 1024)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3527, file: !703, line: 78, baseType: !729, size: 8, offset: 1040)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3527, file: !703, line: 79, baseType: !731, size: 8, offset: 1048)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3527, file: !703, line: 81, baseType: !735, size: 64, offset: 1088)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3527, file: !703, line: 89, baseType: !738, size: 64, offset: 1152)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3527, file: !703, line: 91, baseType: !740, size: 64, offset: 1216)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3527, file: !703, line: 92, baseType: !743, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3527, file: !703, line: 93, baseType: !3543, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3527, file: !703, line: 94, baseType: !32, size: 64, offset: 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3527, file: !703, line: 95, baseType: !35, size: 64, offset: 1472)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3527, file: !703, line: 96, baseType: !56, size: 32, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3527, file: !703, line: 98, baseType: !750, size: 160, offset: 1568)
!3559 = !{!3560, !3561, !3562, !3563}
!3560 = !DILocalVariable(name: "fp", arg: 1, scope: !3522, file: !205, line: 28, type: !3525)
!3561 = !DILocalVariable(name: "offset", arg: 2, scope: !3522, file: !205, line: 28, type: !1393)
!3562 = !DILocalVariable(name: "whence", arg: 3, scope: !3522, file: !205, line: 28, type: !56)
!3563 = !DILocalVariable(name: "pos", scope: !3564, file: !205, line: 117, type: !1393)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !205, line: 113, column: 5)
!3565 = distinct !DILexicalBlock(scope: !3522, file: !205, line: 52, column: 7)
!3566 = !DILocation(line: 0, scope: !3522)
!3567 = !DILocation(line: 52, column: 11, scope: !3565)
!3568 = !DILocation(line: 52, column: 31, scope: !3565)
!3569 = !DILocation(line: 52, column: 24, scope: !3565)
!3570 = !DILocation(line: 53, column: 7, scope: !3565)
!3571 = !DILocation(line: 53, column: 14, scope: !3565)
!3572 = !DILocation(line: 53, column: 35, scope: !3565)
!3573 = !{!938, !622, i64 32}
!3574 = !DILocation(line: 53, column: 28, scope: !3565)
!3575 = !DILocation(line: 54, column: 7, scope: !3565)
!3576 = !DILocation(line: 54, column: 14, scope: !3565)
!3577 = !{!938, !622, i64 72}
!3578 = !DILocation(line: 54, column: 28, scope: !3565)
!3579 = !DILocation(line: 52, column: 7, scope: !3522)
!3580 = !DILocation(line: 117, column: 26, scope: !3564)
!3581 = !DILocation(line: 117, column: 19, scope: !3564)
!3582 = !DILocation(line: 0, scope: !3564)
!3583 = !DILocation(line: 118, column: 15, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3564, file: !205, line: 118, column: 11)
!3585 = !DILocation(line: 118, column: 11, scope: !3564)
!3586 = !DILocation(line: 129, column: 11, scope: !3564)
!3587 = !DILocation(line: 129, column: 18, scope: !3564)
!3588 = !DILocation(line: 130, column: 11, scope: !3564)
!3589 = !DILocation(line: 130, column: 19, scope: !3564)
!3590 = !{!938, !939, i64 144}
!3591 = !DILocation(line: 161, column: 7, scope: !3564)
!3592 = !DILocation(line: 163, column: 10, scope: !3522)
!3593 = !DILocation(line: 163, column: 3, scope: !3522)
!3594 = !DILocation(line: 164, column: 1, scope: !3522)
!3595 = !DISubprogram(name: "fseeko", scope: !698, file: !698, line: 712, type: !3596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!56, !3543, !726, !56}
!3598 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !207, file: !207, line: 86, type: !3599, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3613)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!35, !3601, !38, !35, !3602}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1664, line: 6, baseType: !3604)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1666, line: 21, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1666, line: 13, size: 64, elements: !3606)
!3606 = !{!3607, !3608}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3605, file: !1666, line: 15, baseType: !56, size: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3605, file: !1666, line: 20, baseType: !3609, size: 32, offset: 32)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3605, file: !1666, line: 16, size: 32, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3609, file: !1666, line: 18, baseType: !7, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3609, file: !1666, line: 19, baseType: !1675, size: 32)
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3614 = !DILocalVariable(name: "pwc", arg: 1, scope: !3598, file: !207, line: 86, type: !3601)
!3615 = !DILocalVariable(name: "s", arg: 2, scope: !3598, file: !207, line: 86, type: !38)
!3616 = !DILocalVariable(name: "n", arg: 3, scope: !3598, file: !207, line: 86, type: !35)
!3617 = !DILocalVariable(name: "ps", arg: 4, scope: !3598, file: !207, line: 86, type: !3602)
!3618 = !DILocalVariable(name: "ret", scope: !3598, file: !207, line: 88, type: !35)
!3619 = !DILocalVariable(name: "wc", scope: !3598, file: !207, line: 89, type: !1680)
!3620 = !DILocalVariable(name: "uc", scope: !3621, file: !207, line: 156, type: !34)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !207, line: 155, column: 5)
!3622 = distinct !DILexicalBlock(scope: !3598, file: !207, line: 154, column: 7)
!3623 = !DILocation(line: 0, scope: !3598)
!3624 = !DILocation(line: 89, column: 3, scope: !3598)
!3625 = !DILocation(line: 105, column: 9, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3598, file: !207, line: 105, column: 7)
!3627 = !DILocation(line: 105, column: 7, scope: !3598)
!3628 = !DILocation(line: 145, column: 9, scope: !3598)
!3629 = !DILocation(line: 154, column: 19, scope: !3622)
!3630 = !DILocation(line: 154, column: 26, scope: !3622)
!3631 = !DILocation(line: 154, column: 41, scope: !3622)
!3632 = !DILocation(line: 154, column: 7, scope: !3598)
!3633 = !DILocation(line: 156, column: 26, scope: !3621)
!3634 = !DILocation(line: 0, scope: !3621)
!3635 = !DILocation(line: 157, column: 14, scope: !3621)
!3636 = !DILocation(line: 157, column: 12, scope: !3621)
!3637 = !DILocation(line: 163, column: 1, scope: !3598)
!3638 = !DISubprogram(name: "mbrtowc", scope: !2343, file: !2343, line: 296, type: !3639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!37, !58, !38, !37, !3641}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3642 = distinct !DISubprogram(name: "close_stream", scope: !210, file: !210, line: 56, type: !3643, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3679)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!56, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !899, line: 7, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !703, line: 49, size: 1728, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3647, file: !703, line: 51, baseType: !56, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3647, file: !703, line: 54, baseType: !30, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3647, file: !703, line: 55, baseType: !30, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3647, file: !703, line: 56, baseType: !30, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3647, file: !703, line: 57, baseType: !30, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3647, file: !703, line: 58, baseType: !30, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3647, file: !703, line: 59, baseType: !30, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3647, file: !703, line: 60, baseType: !30, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3647, file: !703, line: 61, baseType: !30, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3647, file: !703, line: 64, baseType: !30, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3647, file: !703, line: 65, baseType: !30, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3647, file: !703, line: 66, baseType: !30, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3647, file: !703, line: 68, baseType: !718, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3647, file: !703, line: 70, baseType: !3663, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3647, file: !703, line: 72, baseType: !56, size: 32, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3647, file: !703, line: 73, baseType: !56, size: 32, offset: 928)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3647, file: !703, line: 74, baseType: !724, size: 64, offset: 960)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3647, file: !703, line: 77, baseType: !119, size: 16, offset: 1024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3647, file: !703, line: 78, baseType: !729, size: 8, offset: 1040)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3647, file: !703, line: 79, baseType: !731, size: 8, offset: 1048)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3647, file: !703, line: 81, baseType: !735, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3647, file: !703, line: 89, baseType: !738, size: 64, offset: 1152)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3647, file: !703, line: 91, baseType: !740, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3647, file: !703, line: 92, baseType: !743, size: 64, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3647, file: !703, line: 93, baseType: !3663, size: 64, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3647, file: !703, line: 94, baseType: !32, size: 64, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3647, file: !703, line: 95, baseType: !35, size: 64, offset: 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3647, file: !703, line: 96, baseType: !56, size: 32, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3647, file: !703, line: 98, baseType: !750, size: 160, offset: 1568)
!3679 = !{!3680, !3681, !3683, !3684}
!3680 = !DILocalVariable(name: "stream", arg: 1, scope: !3642, file: !210, line: 56, type: !3645)
!3681 = !DILocalVariable(name: "some_pending", scope: !3642, file: !210, line: 58, type: !3682)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!3683 = !DILocalVariable(name: "prev_fail", scope: !3642, file: !210, line: 59, type: !3682)
!3684 = !DILocalVariable(name: "fclose_fail", scope: !3642, file: !210, line: 60, type: !3682)
!3685 = !DILocation(line: 0, scope: !3642)
!3686 = !DILocation(line: 58, column: 30, scope: !3642)
!3687 = !DILocalVariable(name: "__stream", arg: 1, scope: !3688, file: !930, line: 135, type: !3645)
!3688 = distinct !DISubprogram(name: "ferror_unlocked", scope: !930, file: !930, line: 135, type: !3643, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3689)
!3689 = !{!3687}
!3690 = !DILocation(line: 0, scope: !3688, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 59, column: 27, scope: !3642)
!3692 = !DILocation(line: 137, column: 10, scope: !3688, inlinedAt: !3691)
!3693 = !DILocation(line: 59, column: 43, scope: !3642)
!3694 = !DILocation(line: 60, column: 29, scope: !3642)
!3695 = !DILocation(line: 60, column: 45, scope: !3642)
!3696 = !DILocation(line: 70, column: 17, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3642, file: !210, line: 70, column: 7)
!3698 = !DILocation(line: 58, column: 50, scope: !3642)
!3699 = !DILocation(line: 70, column: 33, scope: !3697)
!3700 = !DILocation(line: 70, column: 53, scope: !3697)
!3701 = !DILocation(line: 70, column: 59, scope: !3697)
!3702 = !DILocation(line: 70, column: 7, scope: !3642)
!3703 = !DILocation(line: 72, column: 11, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3697, file: !210, line: 71, column: 5)
!3705 = !DILocation(line: 73, column: 9, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3704, file: !210, line: 72, column: 11)
!3707 = !DILocation(line: 73, column: 15, scope: !3706)
!3708 = !DILocation(line: 78, column: 1, scope: !3642)
!3709 = distinct !DISubprogram(name: "hard_locale", scope: !212, file: !212, line: 27, type: !3710, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!44, !56}
!3712 = !{!3713, !3714}
!3713 = !DILocalVariable(name: "category", arg: 1, scope: !3709, file: !212, line: 27, type: !56)
!3714 = !DILocalVariable(name: "locale", scope: !3709, file: !212, line: 29, type: !3715)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2056, elements: !3716)
!3716 = !{!3717}
!3717 = !DISubrange(count: 257)
!3718 = !DILocation(line: 0, scope: !3709)
!3719 = !DILocation(line: 29, column: 3, scope: !3709)
!3720 = !DILocation(line: 29, column: 8, scope: !3709)
!3721 = !DILocation(line: 31, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3709, file: !212, line: 31, column: 7)
!3723 = !DILocation(line: 31, column: 7, scope: !3709)
!3724 = !DILocation(line: 34, column: 12, scope: !3709)
!3725 = !DILocation(line: 34, column: 38, scope: !3709)
!3726 = !DILocation(line: 34, column: 41, scope: !3709)
!3727 = !DILocation(line: 34, column: 66, scope: !3709)
!3728 = !DILocation(line: 35, column: 1, scope: !3709)
!3729 = distinct !DISubprogram(name: "locale_charset", scope: !214, file: !214, line: 831, type: !3730, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!38}
!3732 = !{!3733}
!3733 = !DILocalVariable(name: "codeset", scope: !3729, file: !214, line: 833, type: !38)
!3734 = !DILocation(line: 847, column: 13, scope: !3729)
!3735 = !DILocation(line: 0, scope: !3729)
!3736 = !DILocation(line: 911, column: 15, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3729, file: !214, line: 911, column: 7)
!3738 = !DILocation(line: 911, column: 7, scope: !3729)
!3739 = !DILocation(line: 1070, column: 13, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !214, line: 1070, column: 13)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !214, line: 1060, column: 7)
!3742 = distinct !DILexicalBlock(scope: !3729, file: !214, line: 1019, column: 3)
!3743 = !DILocation(line: 1070, column: 24, scope: !3740)
!3744 = !DILocation(line: 1070, column: 13, scope: !3741)
!3745 = !DILocation(line: 1158, column: 3, scope: !3729)
!3746 = !DISubprogram(name: "nl_langinfo", scope: !217, file: !217, line: 661, type: !3747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !72)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!30, !56}
!3749 = distinct !DISubprogram(name: "setlocale_null_r", scope: !603, file: !603, line: 269, type: !3750, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3752)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!56, !56, !30, !35}
!3752 = !{!3753, !3754, !3755}
!3753 = !DILocalVariable(name: "category", arg: 1, scope: !3749, file: !603, line: 269, type: !56)
!3754 = !DILocalVariable(name: "buf", arg: 2, scope: !3749, file: !603, line: 269, type: !30)
!3755 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3749, file: !603, line: 269, type: !35)
!3756 = !DILocation(line: 0, scope: !3749)
!3757 = !DILocalVariable(name: "category", arg: 1, scope: !3758, file: !603, line: 91, type: !56)
!3758 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !603, file: !603, line: 91, type: !3750, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3759)
!3759 = !{!3757, !3760, !3761, !3762, !3763}
!3760 = !DILocalVariable(name: "buf", arg: 2, scope: !3758, file: !603, line: 91, type: !30)
!3761 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3758, file: !603, line: 91, type: !35)
!3762 = !DILocalVariable(name: "result", scope: !3758, file: !603, line: 140, type: !38)
!3763 = !DILocalVariable(name: "length", scope: !3764, file: !603, line: 154, type: !35)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !603, line: 153, column: 5)
!3765 = distinct !DILexicalBlock(scope: !3758, file: !603, line: 142, column: 7)
!3766 = !DILocation(line: 0, scope: !3758, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 274, column: 10, scope: !3749)
!3768 = !DILocalVariable(name: "category", arg: 1, scope: !3769, file: !603, line: 60, type: !56)
!3769 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !603, file: !603, line: 60, type: !3770, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3772)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!38, !56}
!3772 = !{!3768, !3773}
!3773 = !DILocalVariable(name: "result", scope: !3769, file: !603, line: 62, type: !38)
!3774 = !DILocation(line: 0, scope: !3769, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 140, column: 24, scope: !3758, inlinedAt: !3767)
!3776 = !DILocation(line: 62, column: 24, scope: !3769, inlinedAt: !3775)
!3777 = !DILocation(line: 142, column: 14, scope: !3765, inlinedAt: !3767)
!3778 = !DILocation(line: 142, column: 7, scope: !3758, inlinedAt: !3767)
!3779 = !DILocation(line: 145, column: 19, scope: !3780, inlinedAt: !3767)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !603, line: 145, column: 11)
!3781 = distinct !DILexicalBlock(scope: !3765, file: !603, line: 143, column: 5)
!3782 = !DILocation(line: 145, column: 11, scope: !3781, inlinedAt: !3767)
!3783 = !DILocation(line: 149, column: 16, scope: !3780, inlinedAt: !3767)
!3784 = !DILocation(line: 149, column: 9, scope: !3780, inlinedAt: !3767)
!3785 = !DILocation(line: 154, column: 23, scope: !3764, inlinedAt: !3767)
!3786 = !DILocation(line: 0, scope: !3764, inlinedAt: !3767)
!3787 = !DILocation(line: 155, column: 18, scope: !3788, inlinedAt: !3767)
!3788 = distinct !DILexicalBlock(scope: !3764, file: !603, line: 155, column: 11)
!3789 = !DILocation(line: 155, column: 11, scope: !3764, inlinedAt: !3767)
!3790 = !DILocation(line: 157, column: 39, scope: !3791, inlinedAt: !3767)
!3791 = distinct !DILexicalBlock(scope: !3788, file: !603, line: 156, column: 9)
!3792 = !DILocalVariable(name: "__dest", arg: 1, scope: !3793, file: !1910, line: 26, type: !3330)
!3793 = distinct !DISubprogram(name: "memcpy", scope: !1910, file: !1910, line: 26, type: !3328, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3794)
!3794 = !{!3792, !3795, !3796}
!3795 = !DILocalVariable(name: "__src", arg: 2, scope: !3793, file: !1910, line: 26, type: !3331)
!3796 = !DILocalVariable(name: "__len", arg: 3, scope: !3793, file: !1910, line: 26, type: !35)
!3797 = !DILocation(line: 0, scope: !3793, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 157, column: 11, scope: !3791, inlinedAt: !3767)
!3799 = !DILocation(line: 29, column: 10, scope: !3793, inlinedAt: !3798)
!3800 = !DILocation(line: 158, column: 11, scope: !3791, inlinedAt: !3767)
!3801 = !DILocation(line: 162, column: 23, scope: !3802, inlinedAt: !3767)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !603, line: 162, column: 15)
!3803 = distinct !DILexicalBlock(scope: !3788, file: !603, line: 161, column: 9)
!3804 = !DILocation(line: 162, column: 15, scope: !3803, inlinedAt: !3767)
!3805 = !DILocation(line: 167, column: 44, scope: !3806, inlinedAt: !3767)
!3806 = distinct !DILexicalBlock(scope: !3802, file: !603, line: 163, column: 13)
!3807 = !DILocation(line: 0, scope: !3793, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 167, column: 15, scope: !3806, inlinedAt: !3767)
!3809 = !DILocation(line: 29, column: 10, scope: !3793, inlinedAt: !3808)
!3810 = !DILocation(line: 168, column: 15, scope: !3806, inlinedAt: !3767)
!3811 = !DILocation(line: 168, column: 32, scope: !3806, inlinedAt: !3767)
!3812 = !DILocation(line: 169, column: 13, scope: !3806, inlinedAt: !3767)
!3813 = !DILocation(line: 0, scope: !3765, inlinedAt: !3767)
!3814 = !DILocation(line: 274, column: 3, scope: !3749)
!3815 = distinct !DISubprogram(name: "setlocale_null", scope: !603, file: !603, line: 301, type: !3770, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !602, retainedNodes: !3816)
!3816 = !{!3817}
!3817 = !DILocalVariable(name: "category", arg: 1, scope: !3815, file: !603, line: 301, type: !56)
!3818 = !DILocation(line: 0, scope: !3815)
!3819 = !DILocation(line: 0, scope: !3769, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 304, column: 10, scope: !3815)
!3821 = !DILocation(line: 62, column: 24, scope: !3769, inlinedAt: !3820)
!3822 = !DILocation(line: 304, column: 3, scope: !3815)
