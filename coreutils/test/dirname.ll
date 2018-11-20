; ModuleID = 'coreutils-8.30/src/dirname.bc'
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
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"  -z, --zero     end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dot = internal constant i8 46, align 1, !dbg !11
@.str.31 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !44
@.str.34 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !49
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !54
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !57
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !64
@.str.50 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.56, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.57, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.62, i32 0, i32 0), i8* null], align 16, !dbg !71
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !114
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !121
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !133
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.68 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.69 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !140
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !147
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !135
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !149
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.74 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.75 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.76 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.77 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.78 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.79 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.80 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.81 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.82 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.83 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.84 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.85 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.88 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.90 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.91 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.92 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.93 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !155
@.str.1.104 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.115 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !606 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !611, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.value(metadata i32 %0, metadata !610, metadata !DIExpression()), !dbg !634
  %3 = icmp eq i32 %0, 0, !dbg !635
  br i1 %3, label %9, label %4, !dbg !636

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !637, !tbaa !639
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !637
  %7 = load i8*, i8** @program_name, align 8, !dbg !637, !tbaa !639
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !637
  br label %63, !dbg !637

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !643
  %11 = load i8*, i8** @program_name, align 8, !dbg !643, !tbaa !639
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !643
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !644
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !639
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !644
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !645
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !639
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !645
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !646
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !639
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !646
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !647
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647, !tbaa !639
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !647
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !648
  %26 = load i8*, i8** @program_name, align 8, !dbg !648, !tbaa !639
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %25, i8* %26, i8* %26, i8* %26) #12, !dbg !648
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !649
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #12, !dbg !649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %28, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !630
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !650
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !619, metadata !DIExpression()) #12, !dbg !651
  br label %30, !dbg !652

; <label>:30:                                     ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !619, metadata !DIExpression()) #12, !dbg !651
  %33 = tail call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %31) #14, !dbg !652
  %34 = icmp eq i32 %33, 0, !dbg !652
  br i1 %34, label %40, label %35, !dbg !653

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !654
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !619, metadata !DIExpression()) #12, !dbg !651
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !655
  %38 = load i8*, i8** %37, align 8, !dbg !655, !tbaa !656
  %39 = icmp eq i8* %38, null, !dbg !658
  br i1 %39, label %40, label %30, !dbg !659, !llvm.loop !660

; <label>:40:                                     ; preds = %35, %30
  %41 = phi %struct.infomap* [ %36, %35 ], [ %32, %30 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !619, metadata !DIExpression()) #12, !dbg !651
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !619, metadata !DIExpression()) #12, !dbg !651
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !663
  %43 = load i8*, i8** %42, align 8, !dbg !663, !tbaa !665
  %44 = icmp eq i8* %43, null, !dbg !666
  %45 = select i1 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %43, !dbg !667
  call void @llvm.dbg.value(metadata i8* %45, metadata !618, metadata !DIExpression()) #12, !dbg !668
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !669
  %47 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #12, !dbg !669
  %48 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !670
  call void @llvm.dbg.value(metadata i8* %48, metadata !626, metadata !DIExpression()) #12, !dbg !671
  %49 = icmp eq i8* %48, null, !dbg !672
  br i1 %49, label %56, label %50, !dbg !674

; <label>:50:                                     ; preds = %40
  %51 = tail call i32 @strncmp(i8* nonnull %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #14, !dbg !675
  %52 = icmp eq i32 %51, 0, !dbg !675
  br i1 %52, label %56, label %53, !dbg !676

; <label>:53:                                     ; preds = %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !677
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !677
  br label %56, !dbg !679

; <label>:56:                                     ; preds = %40, %50, %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !680
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !680
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !681
  %60 = icmp eq i8* %45, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), !dbg !681
  %61 = select i1 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !681
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* %45, i8* %61) #12, !dbg !681
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #12, !dbg !682
  br label %63

; <label>:63:                                     ; preds = %56, %4
  tail call void @exit(i32 %0) #15, !dbg !683
  unreachable, !dbg !683
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !13 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8** %1, metadata !20, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i8 0, metadata !21, metadata !DIExpression()), !dbg !686
  %3 = load i8*, i8** %1, align 8, !dbg !687, !tbaa !639
  tail call void @set_program_name(i8* %3) #12, !dbg !688
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !689
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !690
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #12, !dbg !691
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !692
  br label %8, !dbg !693

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %8 ], !dbg !686
  call void @llvm.dbg.value(metadata i8 %9, metadata !21, metadata !DIExpression()), !dbg !686
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !694
  call void @llvm.dbg.value(metadata i32 %10, metadata !30, metadata !DIExpression()), !dbg !695
  switch i32 %10, label %15 [
    i32 -1, label %16
    i32 122, label %8
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !696

; <label>:11:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !697
  unreachable, !dbg !697

; <label>:12:                                     ; preds = %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !699, !tbaa !639
  %14 = load i8*, i8** @Version, align 8, !dbg !699, !tbaa !639
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* null) #12, !dbg !699
  tail call void @exit(i32 0) #15, !dbg !699
  unreachable, !dbg !699

; <label>:15:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !700
  unreachable, !dbg !700

; <label>:16:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8 %9, metadata !21, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8 %9, metadata !21, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8 %9, metadata !21, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8 %9, metadata !21, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8 %9, metadata !21, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8 %9, metadata !21, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8 1, metadata !21, metadata !DIExpression()), !dbg !686
  %17 = load i32, i32* @optind, align 4, !dbg !701, !tbaa !703
  %18 = icmp slt i32 %17, %0, !dbg !705
  br i1 %18, label %19, label %23, !dbg !706

; <label>:19:                                     ; preds = %16
  %20 = icmp eq i8 %9, 0
  %21 = select i1 %20, i32 10, i32 0
  %22 = trunc i32 %21 to i8
  br label %25, !dbg !707

; <label>:23:                                     ; preds = %16
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 5) #12, !dbg !709
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %24) #12, !dbg !711
  tail call void @usage(i32 1) #16, !dbg !712
  unreachable, !dbg !712

; <label>:25:                                     ; preds = %19, %46
  %26 = phi i32 [ %17, %19 ], [ %48, %46 ]
  %27 = sext i32 %26 to i64, !dbg !713
  %28 = getelementptr inbounds i8*, i8** %1, i64 %27, !dbg !713
  %29 = load i8*, i8** %28, align 8, !dbg !713, !tbaa !639
  call void @llvm.dbg.value(metadata i8* %29, metadata !23, metadata !DIExpression()), !dbg !716
  %30 = tail call i64 @dir_len(i8* %29) #14, !dbg !717
  call void @llvm.dbg.value(metadata i64 %30, metadata !26, metadata !DIExpression()), !dbg !718
  %31 = icmp eq i64 %30, 0, !dbg !719
  %32 = select i1 %31, i8* @main.dot, i8* %29, !dbg !721
  %33 = select i1 %31, i64 1, i64 %30, !dbg !721
  call void @llvm.dbg.value(metadata i64 %33, metadata !26, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %32, metadata !23, metadata !DIExpression()), !dbg !716
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !639
  %35 = tail call i64 @fwrite_unlocked(i8* %32, i64 1, i64 %33, %struct._IO_FILE* %34), !dbg !722
  call void @llvm.dbg.value(metadata i32 %21, metadata !723, metadata !DIExpression()) #12, !dbg !729
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !639
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !731
  %38 = load i8*, i8** %37, align 8, !dbg !731, !tbaa !732
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !731
  %40 = load i8*, i8** %39, align 8, !dbg !731, !tbaa !736
  %41 = icmp ult i8* %38, %40, !dbg !731
  br i1 %41, label %44, label %42, !dbg !731, !prof !737

; <label>:42:                                     ; preds = %25
  %43 = tail call i32 @__overflow(%struct._IO_FILE* %36, i32 %21) #12, !dbg !731
  br label %46, !dbg !731

; <label>:44:                                     ; preds = %25
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !731
  store i8* %45, i8** %37, align 8, !dbg !731, !tbaa !732
  store i8 %22, i8* %38, align 1, !dbg !731, !tbaa !738
  br label %46, !dbg !731

; <label>:46:                                     ; preds = %42, %44
  %47 = load i32, i32* @optind, align 4, !dbg !739, !tbaa !703
  %48 = add nsw i32 %47, 1, !dbg !739
  store i32 %48, i32* @optind, align 4, !dbg !739, !tbaa !703
  %49 = icmp slt i32 %48, %0, !dbg !740
  br i1 %49, label %25, label %50, !dbg !707, !llvm.loop !741

; <label>:50:                                     ; preds = %46
  ret i32 0, !dbg !743
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

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !744 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !746, metadata !DIExpression()), !dbg !747
  store i8* %0, i8** @file_name, align 8, !dbg !748, !tbaa !639
  ret void, !dbg !749
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !750 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !754, metadata !DIExpression()), !dbg !755
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !756, !tbaa !757
  ret void, !dbg !759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !760 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !767, !tbaa !639
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !768
  %3 = icmp eq i32 %2, 0, !dbg !769
  br i1 %3, label %22, label %4, !dbg !770

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !771, !tbaa !757, !range !772
  %6 = icmp eq i8 %5, 0, !dbg !771
  br i1 %6, label %11, label %7, !dbg !773

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !774
  %9 = load i32, i32* %8, align 4, !dbg !774, !tbaa !703
  %10 = icmp eq i32 %9, 32, !dbg !775
  br i1 %10, label %22, label %11, !dbg !776

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #12, !dbg !777
  call void @llvm.dbg.value(metadata i8* %12, metadata !764, metadata !DIExpression()), !dbg !778
  %13 = load i8*, i8** @file_name, align 8, !dbg !779, !tbaa !639
  %14 = icmp eq i8* %13, null, !dbg !779
  %15 = tail call i32* @__errno_location() #17, !dbg !781
  %16 = load i32, i32* %15, align 4, !dbg !781, !tbaa !703
  br i1 %14, label %19, label %17, !dbg !782

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !783
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !784
  br label %20, !dbg !784

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #12, !dbg !785
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !786, !tbaa !703
  tail call void @_exit(i32 %21) #15, !dbg !787
  unreachable, !dbg !787

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !788, !tbaa !639
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !790
  %25 = icmp eq i32 %24, 0, !dbg !791
  br i1 %25, label %28, label %26, !dbg !792

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !793, !tbaa !703
  tail call void @_exit(i32 %27) #15, !dbg !794
  unreachable, !dbg !794

; <label>:28:                                     ; preds = %22
  ret void, !dbg !795
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @dir_len(i8*) local_unnamed_addr #10 !dbg !796 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !801, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i64 0, metadata !802, metadata !DIExpression()), !dbg !805
  %2 = load i8, i8* %0, align 1, !dbg !806, !tbaa !738
  %3 = icmp eq i8 %2, 47, !dbg !806
  %4 = zext i1 %3 to i64, !dbg !807
  call void @llvm.dbg.value(metadata i64 %4, metadata !802, metadata !DIExpression()), !dbg !805
  %5 = tail call i8* @last_component(i8* %0) #14, !dbg !808
  %6 = ptrtoint i8* %5 to i64, !dbg !810
  %7 = ptrtoint i8* %0 to i64, !dbg !810
  %8 = sub i64 %6, %7, !dbg !810
  call void @llvm.dbg.value(metadata i64 %8, metadata !803, metadata !DIExpression()), !dbg !811
  br label %9, !dbg !812

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ], !dbg !813
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  %11 = icmp ugt i64 %10, %4, !dbg !815
  br i1 %11, label %12, label %17, !dbg !816

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1, !dbg !817
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !817
  %15 = load i8, i8* %14, align 1, !dbg !817, !tbaa !738
  %16 = icmp eq i8 %15, 47, !dbg !817
  br i1 %16, label %9, label %17, !dbg !819, !llvm.loop !820

; <label>:17:                                     ; preds = %12, %9
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()), !dbg !811
  ret i64 %10, !dbg !822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @mdir_name(i8*) local_unnamed_addr #7 !dbg !823 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !827, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata i8* %0, metadata !801, metadata !DIExpression()) #12, !dbg !832
  call void @llvm.dbg.value(metadata i64 0, metadata !802, metadata !DIExpression()) #12, !dbg !834
  %2 = load i8, i8* %0, align 1, !dbg !835, !tbaa !738
  %3 = icmp eq i8 %2, 47, !dbg !835
  %4 = zext i1 %3 to i64, !dbg !836
  call void @llvm.dbg.value(metadata i64 %4, metadata !802, metadata !DIExpression()) #12, !dbg !834
  %5 = tail call i8* @last_component(i8* %0) #14, !dbg !837
  %6 = ptrtoint i8* %5 to i64, !dbg !838
  %7 = ptrtoint i8* %0 to i64, !dbg !838
  %8 = sub i64 %6, %7, !dbg !838
  call void @llvm.dbg.value(metadata i64 %8, metadata !803, metadata !DIExpression()) #12, !dbg !839
  br label %9, !dbg !840

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ], !dbg !841
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  %11 = icmp ugt i64 %10, %4, !dbg !842
  br i1 %11, label %12, label %17, !dbg !843

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1, !dbg !844
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !844
  %15 = load i8, i8* %14, align 1, !dbg !844, !tbaa !738
  %16 = icmp eq i8 %15, 47, !dbg !844
  br i1 %16, label %9, label %17, !dbg !845, !llvm.loop !820

; <label>:17:                                     ; preds = %9, %12
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !803, metadata !DIExpression()) #12, !dbg !839
  call void @llvm.dbg.value(metadata i64 %10, metadata !828, metadata !DIExpression()), !dbg !846
  %18 = icmp eq i64 %10, 0, !dbg !847
  %19 = zext i1 %18 to i64, !dbg !848
  %20 = add i64 %10, 1, !dbg !849
  %21 = add i64 %20, %19, !dbg !850
  %22 = tail call noalias i8* @malloc(i64 %21) #12, !dbg !851
  call void @llvm.dbg.value(metadata i8* %22, metadata !830, metadata !DIExpression()), !dbg !852
  %23 = icmp eq i8* %22, null, !dbg !853
  br i1 %23, label %29, label %24, !dbg !855

; <label>:24:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %22, i8* nonnull align 1 %0, i64 %10, i1 false), !dbg !856
  br i1 %18, label %25, label %26, !dbg !857

; <label>:25:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i64 %10, metadata !828, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !846
  store i8 46, i8* %22, align 1, !dbg !858, !tbaa !738
  br label %26, !dbg !860

; <label>:26:                                     ; preds = %25, %24
  %27 = phi i64 [ 1, %25 ], [ %10, %24 ], !dbg !861
  call void @llvm.dbg.value(metadata i64 %27, metadata !828, metadata !DIExpression()), !dbg !846
  %28 = getelementptr inbounds i8, i8* %22, i64 %27, !dbg !862
  store i8 0, i8* %28, align 1, !dbg !863, !tbaa !738
  br label %29, !dbg !864

; <label>:29:                                     ; preds = %17, %26
  ret i8* %22, !dbg !865
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly) local_unnamed_addr #10 !dbg !866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !869, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i8* %0, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8 0, metadata !872, metadata !DIExpression()), !dbg !875
  br label %2, !dbg !876

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !877
  call void @llvm.dbg.value(metadata i8* %3, metadata !870, metadata !DIExpression()), !dbg !874
  %4 = load i8, i8* %3, align 1, !dbg !878, !tbaa !738
  %5 = icmp eq i8 %4, 47, !dbg !878
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !879
  call void @llvm.dbg.value(metadata i8* %6, metadata !870, metadata !DIExpression()), !dbg !874
  br i1 %5, label %2, label %7, !dbg !876, !llvm.loop !880

; <label>:7:                                      ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !881
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !874
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !884
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !885
  call void @llvm.dbg.value(metadata i8 %11, metadata !872, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* %10, metadata !871, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i8* %9, metadata !870, metadata !DIExpression()), !dbg !874
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !889

; <label>:12:                                     ; preds = %7
  %13 = and i8 %11, 1, !dbg !890
  %14 = icmp eq i8 %13, 0, !dbg !890
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !892
  %16 = select i1 %14, i8 %11, i8 0, !dbg !892
  br label %17, !dbg !892

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !877
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !877
  call void @llvm.dbg.value(metadata i8 %19, metadata !872, metadata !DIExpression()), !dbg !875
  call void @llvm.dbg.value(metadata i8* %18, metadata !870, metadata !DIExpression()), !dbg !874
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !893
  call void @llvm.dbg.value(metadata i8* %20, metadata !871, metadata !DIExpression()), !dbg !888
  %21 = load i8, i8* %20, align 1, !dbg !881, !tbaa !738
  br label %7, !dbg !894, !llvm.loop !895

; <label>:22:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %9, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %9, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %9, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %9, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i8* %9, metadata !870, metadata !DIExpression()), !dbg !874
  ret i8* %9, !dbg !897
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 !dbg !898 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !900, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i64 0, metadata !902, metadata !DIExpression()), !dbg !904
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !905
  call void @llvm.dbg.value(metadata i64 %2, metadata !901, metadata !DIExpression()), !dbg !907
  br label %3, !dbg !908

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !909
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  %5 = icmp ugt i64 %4, 1, !dbg !911
  br i1 %5, label %6, label %11, !dbg !912

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !913
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !913
  %9 = load i8, i8* %8, align 1, !dbg !913, !tbaa !738
  %10 = icmp eq i8 %9, 47, !dbg !913
  br i1 %10, label %3, label %11, !dbg !914, !llvm.loop !915

; <label>:11:                                     ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %4, metadata !901, metadata !DIExpression()), !dbg !907
  ret i64 %4, !dbg !917
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !918 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !920, metadata !DIExpression()), !dbg !923
  %2 = icmp eq i8* %0, null, !dbg !924
  br i1 %2, label %3, label %6, !dbg !926

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !927, !tbaa !639
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.50, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !929
  tail call void @abort() #15, !dbg !930
  unreachable, !dbg !930

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !931
  call void @llvm.dbg.value(metadata i8* %7, metadata !921, metadata !DIExpression()), !dbg !932
  %8 = icmp eq i8* %7, null, !dbg !933
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !934
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !935
  call void @llvm.dbg.value(metadata i8* %10, metadata !922, metadata !DIExpression()), !dbg !936
  %11 = ptrtoint i8* %10 to i64, !dbg !937
  %12 = ptrtoint i8* %0 to i64, !dbg !937
  %13 = sub i64 %11, %12, !dbg !937
  %14 = icmp sgt i64 %13, 6, !dbg !939
  br i1 %14, label %15, label %24, !dbg !940

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !941
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.51, i64 0, i64 0), i64 7) #14, !dbg !942
  %18 = icmp eq i32 %17, 0, !dbg !943
  br i1 %18, label %19, label %24, !dbg !944

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !920, metadata !DIExpression()), !dbg !923
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.52, i64 0, i64 0), i64 3) #14, !dbg !945
  %21 = icmp eq i32 %20, 0, !dbg !948
  br i1 %21, label %22, label %24, !dbg !949

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !950
  call void @llvm.dbg.value(metadata i8* %23, metadata !920, metadata !DIExpression()), !dbg !923
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !952, !tbaa !639
  br label %24, !dbg !953

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !920, metadata !DIExpression()), !dbg !923
  store i8* %25, i8** @program_name, align 8, !dbg !954, !tbaa !639
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !955, !tbaa !639
  ret void, !dbg !956
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !957 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !962, metadata !DIExpression()), !dbg !965
  %2 = tail call i32* @__errno_location() #17, !dbg !966
  %3 = load i32, i32* %2, align 4, !dbg !966, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %3, metadata !963, metadata !DIExpression()), !dbg !967
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !968
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !968
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !968
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !969
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !969
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !964, metadata !DIExpression()), !dbg !970
  store i32 %3, i32* %2, align 4, !dbg !971, !tbaa !703
  ret %struct.quoting_options* %8, !dbg !972
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !973 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !979, metadata !DIExpression()), !dbg !980
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !981
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !981
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !982
  %5 = load i32, i32* %4, align 8, !dbg !982, !tbaa !983
  ret i32 %5, !dbg !985
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !986 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !990, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i32 %1, metadata !991, metadata !DIExpression()), !dbg !993
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !994
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !994
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !995
  store i32 %1, i32* %5, align 8, !dbg !996, !tbaa !983
  ret void, !dbg !997
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !998 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1002, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i8 %1, metadata !1003, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.value(metadata i32 %2, metadata !1004, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %1, metadata !1005, metadata !DIExpression()), !dbg !1013
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1014
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1014
  %6 = lshr i8 %1, 5, !dbg !1015
  %7 = zext i8 %6 to i64, !dbg !1015
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1016
  call void @llvm.dbg.value(metadata i32* %8, metadata !1006, metadata !DIExpression()), !dbg !1017
  %9 = and i8 %1, 31, !dbg !1018
  %10 = zext i8 %9 to i32, !dbg !1018
  call void @llvm.dbg.value(metadata i32 %10, metadata !1008, metadata !DIExpression()), !dbg !1019
  %11 = load i32, i32* %8, align 4, !dbg !1020, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !1021
  %13 = and i32 %12, 1, !dbg !1022
  call void @llvm.dbg.value(metadata i32 %13, metadata !1009, metadata !DIExpression()), !dbg !1023
  %14 = and i32 %2, 1, !dbg !1024
  %15 = xor i32 %13, %14, !dbg !1025
  %16 = shl i32 %15, %10, !dbg !1026
  %17 = xor i32 %16, %11, !dbg !1027
  store i32 %17, i32* %8, align 4, !dbg !1027, !tbaa !703
  ret i32 %13, !dbg !1028
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1029 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1033, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i32 %1, metadata !1034, metadata !DIExpression()), !dbg !1037
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1038
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1033, metadata !DIExpression()), !dbg !1036
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1041
  %6 = load i32, i32* %5, align 4, !dbg !1041, !tbaa !1042
  call void @llvm.dbg.value(metadata i32 %6, metadata !1035, metadata !DIExpression()), !dbg !1043
  store i32 %1, i32* %5, align 4, !dbg !1044, !tbaa !1042
  ret i32 %6, !dbg !1045
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1046 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1050, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8* %1, metadata !1051, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i8* %2, metadata !1052, metadata !DIExpression()), !dbg !1055
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1056
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1058
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1050, metadata !DIExpression()), !dbg !1053
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1059
  store i32 10, i32* %6, align 8, !dbg !1060, !tbaa !983
  %7 = icmp ne i8* %1, null, !dbg !1061
  %8 = icmp ne i8* %2, null, !dbg !1063
  %9 = and i1 %7, %8, !dbg !1064
  br i1 %9, label %11, label %10, !dbg !1064

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1065
  unreachable, !dbg !1065

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1066
  store i8* %1, i8** %12, align 8, !dbg !1067, !tbaa !1068
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1069
  store i8* %2, i8** %13, align 8, !dbg !1070, !tbaa !1071
  ret void, !dbg !1072
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1073 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1077, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %1, metadata !1078, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %2, metadata !1079, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i64 %3, metadata !1080, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1081, metadata !DIExpression()), !dbg !1089
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1090
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1090
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1082, metadata !DIExpression()), !dbg !1091
  %8 = tail call i32* @__errno_location() #17, !dbg !1092
  %9 = load i32, i32* %8, align 4, !dbg !1092, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %9, metadata !1083, metadata !DIExpression()), !dbg !1093
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1094
  %11 = load i32, i32* %10, align 8, !dbg !1094, !tbaa !983
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1095
  %13 = load i32, i32* %12, align 4, !dbg !1095, !tbaa !1042
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1096
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1097
  %16 = load i8*, i8** %15, align 8, !dbg !1097, !tbaa !1068
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1098
  %18 = load i8*, i8** %17, align 8, !dbg !1098, !tbaa !1071
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %19, metadata !1084, metadata !DIExpression()), !dbg !1100
  store i32 %9, i32* %8, align 4, !dbg !1101, !tbaa !703
  ret i64 %19, !dbg !1102
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1103 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1109, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %1, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %2, metadata !1111, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i64 %3, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 %4, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %5, metadata !1114, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i32* %6, metadata !1115, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %7, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %8, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 0, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8* null, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 0, metadata !1122, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 0, metadata !1123, metadata !DIExpression()), !dbg !1184
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1185
  %14 = icmp eq i64 %13, 1, !dbg !1186
  %15 = lshr i32 %5, 1, !dbg !1187
  %16 = trunc i32 %15 to i8, !dbg !1187
  %17 = and i8 %16, 1, !dbg !1187
  call void @llvm.dbg.value(metadata i8 %17, metadata !1125, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8 0, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 0, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1128, metadata !DIExpression()), !dbg !1190
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1191

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1181
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1182
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1183
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1184
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1192
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1188
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1189
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1190
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %39, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %38, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %37, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %36, metadata !1125, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %35, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %34, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %33, metadata !1122, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %32, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %31, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %30, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %29, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i32 %28, metadata !1113, metadata !DIExpression()), !dbg !1175
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
  ], !dbg !1194

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8 1, metadata !1125, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %36, metadata !1125, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i32 5, metadata !1113, metadata !DIExpression()), !dbg !1175
  br label %93, !dbg !1195

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1125, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i32 5, metadata !1113, metadata !DIExpression()), !dbg !1175
  %43 = and i8 %36, 1, !dbg !1196
  %44 = icmp eq i8 %43, 0, !dbg !1196
  br i1 %44, label %45, label %93, !dbg !1195

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1198
  br i1 %46, label %93, label %47, !dbg !1201

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1198, !tbaa !738
  br label %93, !dbg !1198

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %28), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %49, metadata !1116, metadata !DIExpression()), !dbg !1178
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %28), !dbg !1206
  call void @llvm.dbg.value(metadata i8* %50, metadata !1117, metadata !DIExpression()), !dbg !1179
  br label %51, !dbg !1207

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %52, metadata !1116, metadata !DIExpression()), !dbg !1178
  %54 = and i8 %36, 1, !dbg !1208
  %55 = icmp eq i8 %54, 0, !dbg !1208
  br i1 %55, label %56, label %71, !dbg !1210

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()), !dbg !1180
  %57 = load i8, i8* %52, align 1, !dbg !1211, !tbaa !738
  %58 = icmp eq i8 %57, 0, !dbg !1214
  br i1 %58, label %71, label %59, !dbg !1214

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %62, metadata !1119, metadata !DIExpression()), !dbg !1180
  %63 = icmp ult i64 %62, %40, !dbg !1215
  br i1 %63, label %64, label %66, !dbg !1218

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1215
  store i8 %60, i8* %65, align 1, !dbg !1215, !tbaa !738
  br label %66, !dbg !1215

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1218
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1219
  call void @llvm.dbg.value(metadata i8* %68, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %67, metadata !1119, metadata !DIExpression()), !dbg !1180
  %69 = load i8, i8* %68, align 1, !dbg !1211, !tbaa !738
  %70 = icmp eq i8 %69, 0, !dbg !1214
  br i1 %70, label %71, label %59, !dbg !1214, !llvm.loop !1220

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1180
  call void @llvm.dbg.value(metadata i64 %72, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 1, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %53, metadata !1121, metadata !DIExpression()), !dbg !1182
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1222
  call void @llvm.dbg.value(metadata i64 %73, metadata !1122, metadata !DIExpression()), !dbg !1183
  br label %93, !dbg !1223

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1123, metadata !DIExpression()), !dbg !1184
  br label %75, !dbg !1224

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1192
  call void @llvm.dbg.value(metadata i8 %76, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 1, metadata !1125, metadata !DIExpression()), !dbg !1187
  br label %77, !dbg !1225

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1184
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1192
  call void @llvm.dbg.value(metadata i8 %79, metadata !1125, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %78, metadata !1123, metadata !DIExpression()), !dbg !1184
  %80 = and i8 %79, 1, !dbg !1226
  %81 = icmp eq i8 %80, 0, !dbg !1226
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1228
  br label %83, !dbg !1228

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1229
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1187
  call void @llvm.dbg.value(metadata i8 %85, metadata !1125, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %84, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i32 2, metadata !1113, metadata !DIExpression()), !dbg !1175
  %86 = and i8 %85, 1, !dbg !1230
  %87 = icmp eq i8 %86, 0, !dbg !1230
  br i1 %87, label %88, label %93, !dbg !1232

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1233
  br i1 %89, label %93, label %90, !dbg !1236

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1233, !tbaa !738
  br label %93, !dbg !1233

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1125, metadata !DIExpression()), !dbg !1187
  br label %93, !dbg !1237

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1238
  unreachable, !dbg !1238

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1180
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), %41 ], !dbg !1192
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1192
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1192
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1239
  call void @llvm.dbg.value(metadata i8 %101, metadata !1125, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %99, metadata !1122, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %97, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i32 %94, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 0, metadata !1118, metadata !DIExpression()), !dbg !1240
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
  br label %121, !dbg !1241

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1242
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1180
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1181
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1188
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1189
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1190
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %125, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %122, metadata !1118, metadata !DIExpression()), !dbg !1240
  %130 = icmp eq i64 %125, -1, !dbg !1243
  br i1 %130, label %131, label %135, !dbg !1244

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1245
  %133 = load i8, i8* %132, align 1, !dbg !1245, !tbaa !738
  %134 = icmp eq i8 %133, 0, !dbg !1246
  br i1 %134, label %617, label %137, !dbg !1247

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1248
  br i1 %136, label %617, label %137, !dbg !1247

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1134, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8 0, metadata !1135, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 0, metadata !1136, metadata !DIExpression()), !dbg !1251
  br i1 %107, label %138, label %153, !dbg !1252

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1254
  %140 = and i1 %108, %130, !dbg !1255
  br i1 %140, label %141, label %143, !dbg !1255

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %142, metadata !1112, metadata !DIExpression()), !dbg !1174
  br label %143, !dbg !1257

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1112, metadata !DIExpression()), !dbg !1174
  %145 = icmp ugt i64 %139, %144, !dbg !1258
  br i1 %145, label %153, label %146, !dbg !1259

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1260
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1261
  %149 = icmp ne i32 %148, 0, !dbg !1262
  %150 = or i1 %149, %110, !dbg !1263
  %151 = xor i1 %149, true, !dbg !1263
  %152 = zext i1 %151 to i8, !dbg !1263
  br i1 %150, label %153, label %661, !dbg !1263

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1264
  call void @llvm.dbg.value(metadata i8 %155, metadata !1134, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i64 %154, metadata !1112, metadata !DIExpression()), !dbg !1174
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1265
  %157 = load i8, i8* %156, align 1, !dbg !1265, !tbaa !738
  call void @llvm.dbg.value(metadata i8 %157, metadata !1129, metadata !DIExpression()), !dbg !1266
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
  ], !dbg !1267

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1268

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1269

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1135, metadata !DIExpression()), !dbg !1250
  %161 = and i8 %126, 1, !dbg !1273
  %162 = icmp eq i8 %161, 0, !dbg !1273
  %163 = and i1 %114, %162, !dbg !1273
  br i1 %163, label %164, label %180, !dbg !1273

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1275
  br i1 %165, label %166, label %168, !dbg !1279

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1275
  store i8 39, i8* %167, align 1, !dbg !1275, !tbaa !738
  br label %168, !dbg !1275

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %169, metadata !1119, metadata !DIExpression()), !dbg !1180
  %170 = icmp ult i64 %169, %129, !dbg !1280
  br i1 %170, label %171, label %173, !dbg !1283

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1280
  store i8 36, i8* %172, align 1, !dbg !1280, !tbaa !738
  br label %173, !dbg !1280

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %174, metadata !1119, metadata !DIExpression()), !dbg !1180
  %175 = icmp ult i64 %174, %129, !dbg !1284
  br i1 %175, label %176, label %178, !dbg !1287

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1284
  store i8 39, i8* %177, align 1, !dbg !1284, !tbaa !738
  br label %178, !dbg !1284

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %179, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 1, metadata !1126, metadata !DIExpression()), !dbg !1188
  br label %180, !dbg !1288

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1239
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1239
  call void @llvm.dbg.value(metadata i8 %182, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %181, metadata !1119, metadata !DIExpression()), !dbg !1180
  %183 = icmp ult i64 %181, %129, !dbg !1289
  br i1 %183, label %184, label %186, !dbg !1292

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1289
  store i8 92, i8* %185, align 1, !dbg !1289, !tbaa !738
  br label %186, !dbg !1289

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %187, metadata !1119, metadata !DIExpression()), !dbg !1180
  br i1 %104, label %188, label %478, !dbg !1293

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1295
  %190 = icmp ult i64 %189, %154, !dbg !1296
  br i1 %190, label %191, label %467, !dbg !1297

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1298
  %193 = load i8, i8* %192, align 1, !dbg !1298, !tbaa !738
  %194 = add i8 %193, -48, !dbg !1299
  %195 = icmp ult i8 %194, 10, !dbg !1299
  br i1 %195, label %196, label %467, !dbg !1299

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1300
  br i1 %197, label %198, label %200, !dbg !1304

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1300
  store i8 48, i8* %199, align 1, !dbg !1300, !tbaa !738
  br label %200, !dbg !1300

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %201, metadata !1119, metadata !DIExpression()), !dbg !1180
  %202 = icmp ult i64 %201, %129, !dbg !1305
  br i1 %202, label %203, label %205, !dbg !1308

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1305
  store i8 48, i8* %204, align 1, !dbg !1305, !tbaa !738
  br label %205, !dbg !1305

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1308
  call void @llvm.dbg.value(metadata i64 %206, metadata !1119, metadata !DIExpression()), !dbg !1180
  br label %467, !dbg !1309

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1310

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1311

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1312

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1314

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1316
  %213 = icmp ult i64 %212, %154, !dbg !1317
  br i1 %213, label %214, label %467, !dbg !1318

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1319
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1320
  %217 = load i8, i8* %216, align 1, !dbg !1320, !tbaa !738
  %218 = icmp eq i8 %217, 63, !dbg !1321
  br i1 %218, label %219, label %467, !dbg !1322

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1323
  %221 = load i8, i8* %220, align 1, !dbg !1323, !tbaa !738
  %222 = sext i8 %221 to i32, !dbg !1323
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
  ], !dbg !1324

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1325

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1129, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %212, metadata !1118, metadata !DIExpression()), !dbg !1240
  %225 = icmp ult i64 %123, %129, !dbg !1327
  br i1 %225, label %226, label %228, !dbg !1330

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1327
  store i8 63, i8* %227, align 1, !dbg !1327, !tbaa !738
  br label %228, !dbg !1327

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %229, metadata !1119, metadata !DIExpression()), !dbg !1180
  %230 = icmp ult i64 %229, %129, !dbg !1331
  br i1 %230, label %231, label %233, !dbg !1334

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1331
  store i8 34, i8* %232, align 1, !dbg !1331, !tbaa !738
  br label %233, !dbg !1331

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1334
  call void @llvm.dbg.value(metadata i64 %234, metadata !1119, metadata !DIExpression()), !dbg !1180
  %235 = icmp ult i64 %234, %129, !dbg !1335
  br i1 %235, label %236, label %238, !dbg !1338

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1335
  store i8 34, i8* %237, align 1, !dbg !1335, !tbaa !738
  br label %238, !dbg !1335

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %239, metadata !1119, metadata !DIExpression()), !dbg !1180
  %240 = icmp ult i64 %239, %129, !dbg !1339
  br i1 %240, label %241, label %243, !dbg !1342

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1339
  store i8 63, i8* %242, align 1, !dbg !1339, !tbaa !738
  br label %243, !dbg !1339

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1342
  call void @llvm.dbg.value(metadata i64 %244, metadata !1119, metadata !DIExpression()), !dbg !1180
  br label %467, !dbg !1343

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1133, metadata !DIExpression()), !dbg !1344
  br label %255, !dbg !1345

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1133, metadata !DIExpression()), !dbg !1344
  br label %255, !dbg !1346

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1133, metadata !DIExpression()), !dbg !1344
  br label %253, !dbg !1347

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1133, metadata !DIExpression()), !dbg !1344
  br label %253, !dbg !1348

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1133, metadata !DIExpression()), !dbg !1344
  br label %255, !dbg !1349

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1133, metadata !DIExpression()), !dbg !1344
  br i1 %114, label %251, label %252, !dbg !1350

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1351

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1354

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8 %254, metadata !1133, metadata !DIExpression()), !dbg !1344
  br i1 %113, label %255, label %661, !dbg !1357

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8 %256, metadata !1133, metadata !DIExpression()), !dbg !1344
  br i1 %103, label %524, label %478, !dbg !1359

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1360
  br i1 %258, label %259, label %264, !dbg !1362

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1363, !tbaa !738
  %261 = icmp ne i8 %260, 0, !dbg !1364
  %262 = icmp ne i64 %122, 0, !dbg !1365
  %263 = or i1 %262, %261, !dbg !1367
  br i1 %263, label %467, label %270, !dbg !1367

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1368
  %266 = icmp ne i64 %122, 0, !dbg !1365
  %267 = or i1 %266, %265, !dbg !1362
  br i1 %267, label %467, label %270, !dbg !1362

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1365
  br i1 %269, label %270, label %467, !dbg !1369

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1136, metadata !DIExpression()), !dbg !1251
  br label %271, !dbg !1370

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1356
  call void @llvm.dbg.value(metadata i8 %272, metadata !1136, metadata !DIExpression()), !dbg !1251
  br i1 %113, label %467, label %661, !dbg !1371

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 1, metadata !1136, metadata !DIExpression()), !dbg !1251
  br i1 %114, label %274, label %467, !dbg !1373

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1374

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1377
  %277 = icmp ne i64 %124, 0, !dbg !1379
  %278 = or i1 %277, %276, !dbg !1380
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1380
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %280, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %279, metadata !1120, metadata !DIExpression()), !dbg !1181
  %281 = icmp ult i64 %123, %280, !dbg !1381
  br i1 %281, label %282, label %284, !dbg !1384

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1381
  store i8 39, i8* %283, align 1, !dbg !1381, !tbaa !738
  br label %284, !dbg !1381

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %285, metadata !1119, metadata !DIExpression()), !dbg !1180
  %286 = icmp ult i64 %285, %280, !dbg !1385
  br i1 %286, label %287, label %289, !dbg !1388

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1385
  store i8 92, i8* %288, align 1, !dbg !1385, !tbaa !738
  br label %289, !dbg !1385

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1388
  call void @llvm.dbg.value(metadata i64 %290, metadata !1119, metadata !DIExpression()), !dbg !1180
  %291 = icmp ult i64 %290, %280, !dbg !1389
  br i1 %291, label %292, label %294, !dbg !1392

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1389
  store i8 39, i8* %293, align 1, !dbg !1389, !tbaa !738
  br label %294, !dbg !1389

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1392
  call void @llvm.dbg.value(metadata i64 %295, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 0, metadata !1126, metadata !DIExpression()), !dbg !1188
  br label %467, !dbg !1393

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1394

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1137, metadata !DIExpression()), !dbg !1395
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1396
  %299 = load i16*, i16** %298, align 8, !dbg !1396, !tbaa !639
  %300 = zext i8 %157 to i64, !dbg !1396
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1396
  %302 = load i16, i16* %301, align 2, !dbg !1396, !tbaa !1398
  %303 = lshr i16 %302, 14, !dbg !1399
  %304 = trunc i16 %303 to i8, !dbg !1399
  %305 = and i8 %304, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i8 %305, metadata !1140, metadata !DIExpression()), !dbg !1400
  br label %359, !dbg !1401

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1402
  store i64 0, i64* %10, align 8, !dbg !1403
  call void @llvm.dbg.value(metadata i64 0, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 1, metadata !1140, metadata !DIExpression()), !dbg !1400
  %307 = icmp eq i64 %154, -1, !dbg !1404
  br i1 %307, label %308, label %310, !dbg !1406

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %309, metadata !1112, metadata !DIExpression()), !dbg !1174
  br label %310, !dbg !1408

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1409
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  br label %312, !dbg !1410

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1411
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1412
  call void @llvm.dbg.value(metadata i8 %314, metadata !1140, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1413
  %315 = add i64 %313, %122, !dbg !1414
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1415
  %317 = sub i64 %311, %315, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1141, metadata !DIExpression(DW_OP_deref)), !dbg !1417
  call void @llvm.dbg.value(metadata i32* %12, metadata !1157, metadata !DIExpression(DW_OP_deref)), !dbg !1418
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %318, metadata !1160, metadata !DIExpression()), !dbg !1420
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1421

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  %320 = icmp ugt i64 %311, %315, !dbg !1422
  br i1 %320, label %321, label %344, !dbg !1424

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1137, metadata !DIExpression()), !dbg !1395
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1425
  %325 = load i8, i8* %324, align 1, !dbg !1425, !tbaa !738
  %326 = icmp eq i8 %325, 0, !dbg !1424
  br i1 %326, label %344, label %327, !dbg !1426

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %328, metadata !1137, metadata !DIExpression()), !dbg !1395
  %329 = add i64 %328, %122, !dbg !1428
  %330 = icmp ult i64 %329, %311, !dbg !1422
  br i1 %330, label %321, label %344, !dbg !1424, !llvm.loop !1429

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1430
  %333 = and i1 %116, %332, !dbg !1433
  call void @llvm.dbg.value(metadata i64 1, metadata !1161, metadata !DIExpression()), !dbg !1434
  br i1 %333, label %334, label %347, !dbg !1433

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1161, metadata !DIExpression()), !dbg !1434
  %336 = add i64 %335, %315, !dbg !1435
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1436
  %338 = load i8, i8* %337, align 1, !dbg !1436, !tbaa !738
  %339 = sext i8 %338 to i32, !dbg !1436
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1437

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %341, metadata !1161, metadata !DIExpression()), !dbg !1434
  %342 = icmp ult i64 %341, %318, !dbg !1430
  br i1 %342, label %334, label %347, !dbg !1439, !llvm.loop !1440

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 %314, metadata !1140, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %313, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 %314, metadata !1140, metadata !DIExpression()), !dbg !1400
  br label %344, !dbg !1442

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1140, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %352, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1442
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1443, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %348, metadata !1157, metadata !DIExpression()), !dbg !1418
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !1445
  %350 = icmp eq i32 %349, 0, !dbg !1445
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1446
  call void @llvm.dbg.value(metadata i8 %351, metadata !1140, metadata !DIExpression()), !dbg !1400
  %352 = add i64 %318, %313, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %352, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i8 %351, metadata !1140, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %352, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1442
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1141, metadata !DIExpression(DW_OP_deref)), !dbg !1417
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1448
  %354 = icmp eq i32 %353, 0, !dbg !1449
  br i1 %354, label %312, label %355, !dbg !1450, !llvm.loop !1451

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1453
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 2, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 2, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 2, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 2, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 2, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 %94, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %94, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %94, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %94, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i32 %94, metadata !1113, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %100, metadata !1123, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %311, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %351, metadata !1140, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %352, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !1442
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !1453
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1454
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1455
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1455
  call void @llvm.dbg.value(metadata i8 %362, metadata !1140, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i64 %361, metadata !1137, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i64 %360, metadata !1112, metadata !DIExpression()), !dbg !1174
  %363 = and i8 %362, 1, !dbg !1456
  %364 = icmp ne i8 %363, 0, !dbg !1456
  call void @llvm.dbg.value(metadata i8 %363, metadata !1136, metadata !DIExpression()), !dbg !1251
  %365 = icmp ult i64 %361, 2, !dbg !1457
  %366 = or i1 %364, %115, !dbg !1458
  %367 = and i1 %365, %366, !dbg !1459
  br i1 %367, label %467, label %368, !dbg !1459

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %369, metadata !1168, metadata !DIExpression()), !dbg !1461
  br label %370, !dbg !1462

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1463
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1467
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1188
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1463
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1469
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1250
  call void @llvm.dbg.value(metadata i8 %376, metadata !1135, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %375, metadata !1134, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %374, metadata !1129, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %373, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %372, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %371, metadata !1118, metadata !DIExpression()), !dbg !1240
  br i1 %366, label %423, label %377, !dbg !1473

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1474

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1135, metadata !DIExpression()), !dbg !1250
  %379 = and i8 %373, 1, !dbg !1477
  %380 = icmp eq i8 %379, 0, !dbg !1477
  %381 = and i1 %114, %380, !dbg !1477
  br i1 %381, label %382, label %398, !dbg !1477

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1479
  br i1 %383, label %384, label %386, !dbg !1483

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1479
  store i8 39, i8* %385, align 1, !dbg !1479, !tbaa !738
  br label %386, !dbg !1479

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %387, metadata !1119, metadata !DIExpression()), !dbg !1180
  %388 = icmp ult i64 %387, %129, !dbg !1484
  br i1 %388, label %389, label %391, !dbg !1487

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1484
  store i8 36, i8* %390, align 1, !dbg !1484, !tbaa !738
  br label %391, !dbg !1484

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %392, metadata !1119, metadata !DIExpression()), !dbg !1180
  %393 = icmp ult i64 %392, %129, !dbg !1488
  br i1 %393, label %394, label %396, !dbg !1491

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1488
  store i8 39, i8* %395, align 1, !dbg !1488, !tbaa !738
  br label %396, !dbg !1488

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %397, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 1, metadata !1126, metadata !DIExpression()), !dbg !1188
  br label %398, !dbg !1492

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1239
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1239
  call void @llvm.dbg.value(metadata i8 %400, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %399, metadata !1119, metadata !DIExpression()), !dbg !1180
  %401 = icmp ult i64 %399, %129, !dbg !1493
  br i1 %401, label %402, label %404, !dbg !1496

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1493
  store i8 92, i8* %403, align 1, !dbg !1493, !tbaa !738
  br label %404, !dbg !1493

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %405, metadata !1119, metadata !DIExpression()), !dbg !1180
  %406 = icmp ult i64 %405, %129, !dbg !1497
  br i1 %406, label %407, label %411, !dbg !1500

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1497
  %409 = or i8 %408, 48, !dbg !1497
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1497
  store i8 %409, i8* %410, align 1, !dbg !1497, !tbaa !738
  br label %411, !dbg !1497

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %412, metadata !1119, metadata !DIExpression()), !dbg !1180
  %413 = icmp ult i64 %412, %129, !dbg !1501
  br i1 %413, label %414, label %419, !dbg !1504

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1501
  %416 = and i8 %415, 7, !dbg !1501
  %417 = or i8 %416, 48, !dbg !1501
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1501
  store i8 %417, i8* %418, align 1, !dbg !1501, !tbaa !738
  br label %419, !dbg !1501

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %420, metadata !1119, metadata !DIExpression()), !dbg !1180
  %421 = and i8 %374, 7, !dbg !1505
  %422 = or i8 %421, 48, !dbg !1506
  call void @llvm.dbg.value(metadata i8 %422, metadata !1129, metadata !DIExpression()), !dbg !1266
  br label %432, !dbg !1507

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1508
  %425 = icmp eq i8 %424, 0, !dbg !1508
  br i1 %425, label %432, label %426, !dbg !1509

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1510
  br i1 %427, label %428, label %430, !dbg !1513

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1510
  store i8 92, i8* %429, align 1, !dbg !1510, !tbaa !738
  br label %430, !dbg !1510

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %431, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 0, metadata !1134, metadata !DIExpression()), !dbg !1249
  br label %432, !dbg !1514

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1515
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1188
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1516
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1517
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1519
  call void @llvm.dbg.value(metadata i8 %437, metadata !1135, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %436, metadata !1134, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %435, metadata !1129, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %434, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %433, metadata !1119, metadata !DIExpression()), !dbg !1180
  %438 = add i64 %371, 1, !dbg !1520
  %439 = icmp ugt i64 %369, %438, !dbg !1522
  br i1 %439, label %440, label %562, !dbg !1523

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1524
  %442 = icmp ne i8 %441, 0, !dbg !1524
  %443 = and i8 %437, 1, !dbg !1524
  %444 = icmp eq i8 %443, 0, !dbg !1524
  %445 = and i1 %442, %444, !dbg !1524
  br i1 %445, label %446, label %457, !dbg !1524

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1527
  br i1 %447, label %448, label %450, !dbg !1531

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1527
  store i8 39, i8* %449, align 1, !dbg !1527, !tbaa !738
  br label %450, !dbg !1527

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %451, metadata !1119, metadata !DIExpression()), !dbg !1180
  %452 = icmp ult i64 %451, %129, !dbg !1532
  br i1 %452, label %453, label %455, !dbg !1535

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1532
  store i8 39, i8* %454, align 1, !dbg !1532, !tbaa !738
  br label %455, !dbg !1532

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %456, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 0, metadata !1126, metadata !DIExpression()), !dbg !1188
  br label %457, !dbg !1536

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1537
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1239
  call void @llvm.dbg.value(metadata i8 %459, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %458, metadata !1119, metadata !DIExpression()), !dbg !1180
  %460 = icmp ult i64 %458, %129, !dbg !1538
  br i1 %460, label %461, label %463, !dbg !1540

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1538
  store i8 %435, i8* %462, align 1, !dbg !1538, !tbaa !738
  br label %463, !dbg !1538

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %464, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %438, metadata !1118, metadata !DIExpression()), !dbg !1240
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1541
  %466 = load i8, i8* %465, align 1, !dbg !1541, !tbaa !738
  call void @llvm.dbg.value(metadata i8 %466, metadata !1129, metadata !DIExpression()), !dbg !1266
  br label %370, !dbg !1542, !llvm.loop !1543

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1546
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1239
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1181
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1547
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1239
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1239
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1264
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1264
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1264
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %476, metadata !1136, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %475, metadata !1135, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %155, metadata !1134, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8 %474, metadata !1129, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %473, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %472, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %471, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %470, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %469, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %468, metadata !1118, metadata !DIExpression()), !dbg !1240
  br i1 %105, label %489, label %478, !dbg !1548

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
  br i1 %112, label %490, label %512, !dbg !1550

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1551

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
  %501 = lshr i8 %494, 5, !dbg !1552
  %502 = zext i8 %501 to i64, !dbg !1552
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1553
  %504 = load i32, i32* %503, align 4, !dbg !1553, !tbaa !703
  %505 = and i8 %494, 31, !dbg !1554
  %506 = zext i8 %505 to i32, !dbg !1554
  %507 = shl i32 1, %506, !dbg !1555
  %508 = and i32 %504, %507, !dbg !1555
  %509 = icmp eq i32 %508, 0, !dbg !1555
  %510 = icmp eq i8 %155, 0, !dbg !1556
  %511 = and i1 %510, %509, !dbg !1557
  br i1 %511, label %562, label %524, !dbg !1557

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
  %523 = icmp eq i8 %155, 0, !dbg !1556
  br i1 %523, label %562, label %524, !dbg !1558

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1559
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1239
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1181
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1547
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1188
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1189
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1560
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1264
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %532, metadata !1136, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %531, metadata !1129, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %530, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %529, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %528, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %527, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %526, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %525, metadata !1118, metadata !DIExpression()), !dbg !1240
  br i1 %110, label %534, label %661, !dbg !1563

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1135, metadata !DIExpression()), !dbg !1250
  %535 = and i8 %529, 1, !dbg !1565
  %536 = icmp eq i8 %535, 0, !dbg !1565
  %537 = and i1 %114, %536, !dbg !1565
  br i1 %537, label %538, label %554, !dbg !1565

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1567
  br i1 %539, label %540, label %542, !dbg !1571

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1567
  store i8 39, i8* %541, align 1, !dbg !1567, !tbaa !738
  br label %542, !dbg !1567

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %543, metadata !1119, metadata !DIExpression()), !dbg !1180
  %544 = icmp ult i64 %543, %533, !dbg !1572
  br i1 %544, label %545, label %547, !dbg !1575

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1572
  store i8 36, i8* %546, align 1, !dbg !1572, !tbaa !738
  br label %547, !dbg !1572

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %548, metadata !1119, metadata !DIExpression()), !dbg !1180
  %549 = icmp ult i64 %548, %533, !dbg !1576
  br i1 %549, label %550, label %552, !dbg !1579

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1576
  store i8 39, i8* %551, align 1, !dbg !1576, !tbaa !738
  br label %552, !dbg !1576

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %553, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 1, metadata !1126, metadata !DIExpression()), !dbg !1188
  br label %554, !dbg !1580

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1537
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1239
  call void @llvm.dbg.value(metadata i8 %556, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %555, metadata !1119, metadata !DIExpression()), !dbg !1180
  %557 = icmp ult i64 %555, %533, !dbg !1581
  br i1 %557, label %558, label %560, !dbg !1584

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1581
  store i8 92, i8* %559, align 1, !dbg !1581, !tbaa !738
  br label %560, !dbg !1581

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %561, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %572, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %571, metadata !1136, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %570, metadata !1135, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %569, metadata !1129, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %568, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %567, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %566, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %565, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %564, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %563, metadata !1118, metadata !DIExpression()), !dbg !1240
  br label %589, !dbg !1585

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1559
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1239
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1181
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1547
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1188
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1189
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1588
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1264
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1264
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %571, metadata !1136, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8 %570, metadata !1135, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata i8 %569, metadata !1129, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %568, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %567, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %566, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %565, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %564, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %563, metadata !1118, metadata !DIExpression()), !dbg !1240
  %573 = and i8 %567, 1, !dbg !1585
  %574 = icmp ne i8 %573, 0, !dbg !1585
  %575 = and i8 %570, 1, !dbg !1585
  %576 = icmp eq i8 %575, 0, !dbg !1585
  %577 = and i1 %574, %576, !dbg !1585
  br i1 %577, label %578, label %589, !dbg !1585

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1589
  br i1 %579, label %580, label %582, !dbg !1593

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1589
  store i8 39, i8* %581, align 1, !dbg !1589, !tbaa !738
  br label %582, !dbg !1589

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %583, metadata !1119, metadata !DIExpression()), !dbg !1180
  %584 = icmp ult i64 %583, %572, !dbg !1594
  br i1 %584, label %585, label %587, !dbg !1597

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1594
  store i8 39, i8* %586, align 1, !dbg !1594, !tbaa !738
  br label %587, !dbg !1594

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %588, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i8 0, metadata !1126, metadata !DIExpression()), !dbg !1188
  br label %589, !dbg !1598

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1537
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1239
  call void @llvm.dbg.value(metadata i8 %598, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %597, metadata !1119, metadata !DIExpression()), !dbg !1180
  %599 = icmp ult i64 %597, %590, !dbg !1599
  br i1 %599, label %600, label %602, !dbg !1602

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1599
  store i8 %592, i8* %601, align 1, !dbg !1599, !tbaa !738
  br label %602, !dbg !1599

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1602
  call void @llvm.dbg.value(metadata i64 %603, metadata !1119, metadata !DIExpression()), !dbg !1180
  %604 = and i8 %591, 1, !dbg !1603
  %605 = icmp eq i8 %604, 0, !dbg !1603
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1605
  call void @llvm.dbg.value(metadata i8 %606, metadata !1128, metadata !DIExpression()), !dbg !1190
  br label %607, !dbg !1606

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1559
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1239
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1181
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1547
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1188
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1239
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1190
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %614, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %613, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %612, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %611, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %610, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %609, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %608, metadata !1118, metadata !DIExpression()), !dbg !1240
  %616 = add i64 %608, 1, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %616, metadata !1118, metadata !DIExpression()), !dbg !1240
  br label %121, !dbg !1608, !llvm.loop !1609

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %618, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %618, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %125, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %125, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %126, metadata !1126, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %127, metadata !1127, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i8 %128, metadata !1128, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  %619 = icmp eq i64 %123, 0, !dbg !1611
  %620 = and i1 %114, %619, !dbg !1613
  %621 = xor i1 %620, true, !dbg !1613
  %622 = or i1 %110, %621, !dbg !1613
  br i1 %622, label %623, label %661, !dbg !1613

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1614
  %625 = xor i1 %624, true, !dbg !1614
  %626 = and i8 %127, 1, !dbg !1616
  %627 = icmp eq i8 %626, 0, !dbg !1616
  %628 = or i1 %627, %625, !dbg !1614
  br i1 %628, label %638, label %629, !dbg !1614

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1617
  %631 = icmp eq i8 %630, 0, !dbg !1617
  br i1 %631, label %634, label %632, !dbg !1620

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %618, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %618, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %618, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %618, metadata !1112, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8* %95, metadata !1116, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.value(metadata i8* %96, metadata !1117, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %124, metadata !1120, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %125, metadata !1112, metadata !DIExpression()), !dbg !1174
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1621
  br label %671, !dbg !1622

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1623
  %636 = icmp ne i64 %124, 0, !dbg !1625
  %637 = and i1 %636, %635, !dbg !1626
  br i1 %637, label %27, label %638, !dbg !1626

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %129, metadata !1110, metadata !DIExpression()), !dbg !1172
  %639 = icmp ne i8* %98, null, !dbg !1627
  %640 = and i1 %639, %110, !dbg !1629
  br i1 %640, label %641, label %656, !dbg !1629

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %123, metadata !1119, metadata !DIExpression()), !dbg !1180
  %642 = load i8, i8* %98, align 1, !dbg !1630, !tbaa !738
  %643 = icmp eq i8 %642, 0, !dbg !1633
  br i1 %643, label %656, label %644, !dbg !1633

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %647, metadata !1119, metadata !DIExpression()), !dbg !1180
  %648 = icmp ult i64 %647, %129, !dbg !1634
  br i1 %648, label %649, label %651, !dbg !1637

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1634
  store i8 %645, i8* %650, align 1, !dbg !1634, !tbaa !738
  br label %651, !dbg !1634

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1637
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1638
  call void @llvm.dbg.value(metadata i8* %653, metadata !1121, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %652, metadata !1119, metadata !DIExpression()), !dbg !1180
  %654 = load i8, i8* %653, align 1, !dbg !1630, !tbaa !738
  %655 = icmp eq i8 %654, 0, !dbg !1633
  br i1 %655, label %656, label %644, !dbg !1633, !llvm.loop !1639

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1180
  call void @llvm.dbg.value(metadata i64 %657, metadata !1119, metadata !DIExpression()), !dbg !1180
  %658 = icmp ult i64 %657, %129, !dbg !1641
  br i1 %658, label %659, label %671, !dbg !1643

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1644
  store i8 0, i8* %660, align 1, !dbg !1645, !tbaa !738
  br label %671, !dbg !1644

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1110, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %663, metadata !1112, metadata !DIExpression()), !dbg !1174
  %665 = icmp ne i32 %662, 2, !dbg !1646
  %666 = icmp eq i8 %102, 0, !dbg !1648
  %667 = or i1 %665, %666, !dbg !1649
  call void @llvm.dbg.value(metadata i32 4, metadata !1113, metadata !DIExpression()), !dbg !1175
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %668, metadata !1113, metadata !DIExpression()), !dbg !1175
  %669 = and i32 %5, -3, !dbg !1650
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1651
  br label %671, !dbg !1652

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1653
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1654 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1658, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 %1, metadata !1659, metadata !DIExpression()), !dbg !1663
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i8* %3, metadata !1660, metadata !DIExpression()), !dbg !1665
  %4 = icmp eq i8* %3, %0, !dbg !1666
  br i1 %4, label %5, label %71, !dbg !1668

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !1669
  call void @llvm.dbg.value(metadata i8* %6, metadata !1661, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8* %6, metadata !1671, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8* null, metadata !1677, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 85, metadata !1678, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 84, metadata !1679, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 70, metadata !1680, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8 45, metadata !1681, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 56, metadata !1682, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 0, metadata !1683, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8 0, metadata !1684, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 0, metadata !1685, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1686, metadata !DIExpression()), !dbg !1699
  %7 = load i8, i8* %6, align 1, !dbg !1700, !tbaa !738
  %8 = and i8 %7, -33, !dbg !1700
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1700

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1702, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8* null, metadata !1707, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i8 84, metadata !1708, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 70, metadata !1709, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i8 45, metadata !1710, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 56, metadata !1711, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 0, metadata !1713, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1728
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1729
  %11 = load i8, i8* %10, align 1, !dbg !1729, !tbaa !738
  %12 = and i8 %11, -33, !dbg !1729
  %13 = icmp eq i8 %12, 84, !dbg !1729
  br i1 %13, label %14, label %68, !dbg !1729

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1731, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* null, metadata !1736, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 70, metadata !1737, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 45, metadata !1738, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 56, metadata !1739, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1755
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1756
  %16 = load i8, i8* %15, align 1, !dbg !1756, !tbaa !738
  %17 = and i8 %16, -33, !dbg !1756
  %18 = icmp eq i8 %17, 70, !dbg !1756
  br i1 %18, label %19, label %68, !dbg !1756

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1758, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8* null, metadata !1763, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 45, metadata !1764, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 56, metadata !1765, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1768, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1780
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1781
  %21 = load i8, i8* %20, align 1, !dbg !1781, !tbaa !738
  %22 = icmp eq i8 %21, 45, !dbg !1781
  br i1 %22, label %23, label %68, !dbg !1783

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1784, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8* null, metadata !1789, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 56, metadata !1790, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, metadata !1791, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8 0, metadata !1792, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, metadata !1793, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 0, metadata !1794, metadata !DIExpression()), !dbg !1804
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1805
  %25 = load i8, i8* %24, align 1, !dbg !1805, !tbaa !738
  %26 = icmp eq i8 %25, 56, !dbg !1805
  br i1 %26, label %27, label %68, !dbg !1807

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1808, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* null, metadata !1813, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1826
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1827
  %29 = load i8, i8* %28, align 1, !dbg !1827, !tbaa !738
  %30 = icmp eq i8 %29, 0, !dbg !1827
  br i1 %30, label %31, label %68, !dbg !1829

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1830, !tbaa !738
  %33 = icmp eq i8 %32, 96, !dbg !1831
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0), !dbg !1830
  br label %71, !dbg !1832

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1702, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8* null, metadata !1707, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 66, metadata !1708, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 49, metadata !1709, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 56, metadata !1710, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 48, metadata !1711, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8 51, metadata !1712, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 48, metadata !1713, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1845
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1846
  %37 = load i8, i8* %36, align 1, !dbg !1846, !tbaa !738
  %38 = and i8 %37, -33, !dbg !1846
  %39 = icmp eq i8 %38, 66, !dbg !1846
  br i1 %39, label %40, label %68, !dbg !1846

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1731, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* null, metadata !1736, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 49, metadata !1737, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 56, metadata !1738, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8 48, metadata !1739, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 51, metadata !1740, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8 48, metadata !1741, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1856
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1857
  %42 = load i8, i8* %41, align 1, !dbg !1857, !tbaa !738
  %43 = icmp eq i8 %42, 49, !dbg !1857
  br i1 %43, label %44, label %68, !dbg !1858

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1758, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* null, metadata !1763, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i8 56, metadata !1764, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 48, metadata !1765, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8 51, metadata !1766, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 48, metadata !1767, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 0, metadata !1768, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1867
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1868
  %46 = load i8, i8* %45, align 1, !dbg !1868, !tbaa !738
  %47 = icmp eq i8 %46, 56, !dbg !1868
  br i1 %47, label %48, label %68, !dbg !1869

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1784, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* null, metadata !1789, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 48, metadata !1790, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 51, metadata !1791, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 48, metadata !1792, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1793, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 0, metadata !1794, metadata !DIExpression()), !dbg !1877
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1878
  %50 = load i8, i8* %49, align 1, !dbg !1878, !tbaa !738
  %51 = icmp eq i8 %50, 48, !dbg !1878
  br i1 %51, label %52, label %68, !dbg !1879

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1808, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8* null, metadata !1813, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 51, metadata !1814, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 48, metadata !1815, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1886
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1887
  %54 = load i8, i8* %53, align 1, !dbg !1887, !tbaa !738
  %55 = icmp eq i8 %54, 51, !dbg !1887
  br i1 %55, label %56, label %68, !dbg !1888

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1889, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* null, metadata !1894, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 48, metadata !1895, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 0, metadata !1896, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8 0, metadata !1897, metadata !DIExpression()), !dbg !1905
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1906
  %58 = load i8, i8* %57, align 1, !dbg !1906, !tbaa !738
  %59 = icmp eq i8 %58, 48, !dbg !1906
  br i1 %59, label %60, label %68, !dbg !1908

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8* null, metadata !1914, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 0, metadata !1915, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 0, metadata !1916, metadata !DIExpression()), !dbg !1923
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1924
  %62 = load i8, i8* %61, align 1, !dbg !1924, !tbaa !738
  %63 = icmp eq i8 %62, 0, !dbg !1924
  br i1 %63, label %64, label %68, !dbg !1926

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1927, !tbaa !738
  %66 = icmp eq i8 %65, 96, !dbg !1928
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.69, i64 0, i64 0), !dbg !1927
  br label %71, !dbg !1929

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1930
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.65, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), !dbg !1931
  br label %71, !dbg !1932

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1933
  ret i8* %72, !dbg !1934
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1935 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1939, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i64 %1, metadata !1940, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1941, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8* %0, metadata !1945, metadata !DIExpression()) #12, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %1, metadata !1950, metadata !DIExpression()) #12, !dbg !1960
  call void @llvm.dbg.value(metadata i64* null, metadata !1951, metadata !DIExpression()) #12, !dbg !1961
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1952, metadata !DIExpression()) #12, !dbg !1962
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1963
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1963
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1953, metadata !DIExpression()) #12, !dbg !1964
  %6 = tail call i32* @__errno_location() #17, !dbg !1965
  %7 = load i32, i32* %6, align 4, !dbg !1965, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %7, metadata !1954, metadata !DIExpression()) #12, !dbg !1966
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1967
  %9 = load i32, i32* %8, align 4, !dbg !1967, !tbaa !1042
  %10 = or i32 %9, 1, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %10, metadata !1955, metadata !DIExpression()) #12, !dbg !1969
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1970
  %12 = load i32, i32* %11, align 8, !dbg !1970, !tbaa !983
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1971
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1972
  %15 = load i8*, i8** %14, align 8, !dbg !1972, !tbaa !1068
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1973
  %17 = load i8*, i8** %16, align 8, !dbg !1973, !tbaa !1071
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !1974
  %19 = add i64 %18, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %19, metadata !1956, metadata !DIExpression()) #12, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %19, metadata !1977, metadata !DIExpression()) #12, !dbg !1982
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !1984
  call void @llvm.dbg.value(metadata i8* %20, metadata !1957, metadata !DIExpression()) #12, !dbg !1985
  %21 = load i32, i32* %11, align 8, !dbg !1986, !tbaa !983
  %22 = load i8*, i8** %14, align 8, !dbg !1987, !tbaa !1068
  %23 = load i8*, i8** %16, align 8, !dbg !1988, !tbaa !1071
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !1989
  store i32 %7, i32* %6, align 4, !dbg !1990, !tbaa !703
  ret i8* %20, !dbg !1991
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1946 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1945, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %1, metadata !1950, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i64* %2, metadata !1951, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1952, metadata !DIExpression()), !dbg !1995
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1996
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1953, metadata !DIExpression()), !dbg !1997
  %7 = tail call i32* @__errno_location() #17, !dbg !1998
  %8 = load i32, i32* %7, align 4, !dbg !1998, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %8, metadata !1954, metadata !DIExpression()), !dbg !1999
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2000
  %10 = load i32, i32* %9, align 4, !dbg !2000, !tbaa !1042
  %11 = icmp ne i64* %2, null, !dbg !2001
  %12 = xor i1 %11, true, !dbg !2001
  %13 = zext i1 %12 to i32, !dbg !2001
  %14 = or i32 %10, %13, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %14, metadata !1955, metadata !DIExpression()), !dbg !2003
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2004
  %16 = load i32, i32* %15, align 8, !dbg !2004, !tbaa !983
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2005
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2006
  %19 = load i8*, i8** %18, align 8, !dbg !2006, !tbaa !1068
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2007
  %21 = load i8*, i8** %20, align 8, !dbg !2007, !tbaa !1071
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2008
  %23 = add i64 %22, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %23, metadata !1956, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i64 %23, metadata !1977, metadata !DIExpression()) #12, !dbg !2011
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2013
  call void @llvm.dbg.value(metadata i8* %24, metadata !1957, metadata !DIExpression()), !dbg !2014
  %25 = load i32, i32* %15, align 8, !dbg !2015, !tbaa !983
  %26 = load i8*, i8** %18, align 8, !dbg !2016, !tbaa !1068
  %27 = load i8*, i8** %20, align 8, !dbg !2017, !tbaa !1071
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2018
  store i32 %8, i32* %7, align 4, !dbg !2019, !tbaa !703
  br i1 %11, label %29, label %30, !dbg !2020

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2021, !tbaa !2023
  br label %30, !dbg !2024

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2026 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2030, !tbaa !639
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2028, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 1, metadata !2029, metadata !DIExpression()), !dbg !2032
  %2 = load i32, i32* @nslots, align 4, !dbg !2033, !tbaa !703
  %3 = icmp sgt i32 %2, 1, !dbg !2036
  br i1 %3, label %4, label %12, !dbg !2037

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2029, metadata !DIExpression()), !dbg !2032
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2038
  %7 = load i8*, i8** %6, align 8, !dbg !2038, !tbaa !2039
  tail call void @free(i8* %7) #12, !dbg !2041
  %8 = add nuw nsw i64 %5, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i32 undef, metadata !2029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2032
  %9 = load i32, i32* @nslots, align 4, !dbg !2033, !tbaa !703
  %10 = sext i32 %9 to i64, !dbg !2036
  %11 = icmp slt i64 %8, %10, !dbg !2036
  br i1 %11, label %4, label %12, !dbg !2037, !llvm.loop !2043

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2045
  %14 = load i8*, i8** %13, align 8, !dbg !2045, !tbaa !2039
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2047
  br i1 %15, label %17, label %16, !dbg !2048

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2049
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2051, !tbaa !2052
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2053, !tbaa !2039
  br label %17, !dbg !2054

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2055
  br i1 %18, label %21, label %19, !dbg !2057

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2058
  tail call void @free(i8* %20) #12, !dbg !2060
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2061, !tbaa !639
  br label %21, !dbg !2062

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2063, !tbaa !703
  ret void, !dbg !2064
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2065 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2069, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i8* %1, metadata !2070, metadata !DIExpression()), !dbg !2072
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2073
  ret i8* %3, !dbg !2074
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2075 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2079, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* %1, metadata !2080, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %2, metadata !2081, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2082, metadata !DIExpression()), !dbg !2097
  %5 = tail call i32* @__errno_location() #17, !dbg !2098
  %6 = load i32, i32* %5, align 4, !dbg !2098, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %6, metadata !2083, metadata !DIExpression()), !dbg !2099
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2100, !tbaa !639
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2084, metadata !DIExpression()), !dbg !2101
  %8 = icmp slt i32 %0, 0, !dbg !2102
  br i1 %8, label %9, label %10, !dbg !2104

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2105
  unreachable, !dbg !2105

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2106, !tbaa !703
  %12 = icmp sgt i32 %11, %0, !dbg !2107
  br i1 %12, label %34, label %13, !dbg !2108

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2109
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2088, metadata !DIExpression()), !dbg !2110
  %15 = icmp eq i32 %0, 2147483647, !dbg !2111
  br i1 %15, label %16, label %17, !dbg !2113

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2114
  unreachable, !dbg !2114

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2115
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2115
  %20 = add nsw i32 %0, 1, !dbg !2116
  %21 = sext i32 %20 to i64, !dbg !2117
  %22 = shl nsw i64 %21, 4, !dbg !2118
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2119
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2119
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2084, metadata !DIExpression()), !dbg !2101
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2120, !tbaa !639
  br i1 %14, label %25, label %26, !dbg !2121

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2122, !tbaa.struct !2124
  br label %26, !dbg !2125

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2126, !tbaa !703
  %28 = sext i32 %27 to i64, !dbg !2127
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2127
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2128
  %31 = sub nsw i32 %20, %27, !dbg !2129
  %32 = sext i32 %31 to i64, !dbg !2130
  %33 = shl nsw i64 %32, 4, !dbg !2131
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2128
  store i32 %20, i32* @nslots, align 4, !dbg !2132, !tbaa !703
  br label %34, !dbg !2133

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2134
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2084, metadata !DIExpression()), !dbg !2101
  %36 = sext i32 %0 to i64, !dbg !2135
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2136
  %38 = load i64, i64* %37, align 8, !dbg !2136, !tbaa !2052
  call void @llvm.dbg.value(metadata i64 %38, metadata !2089, metadata !DIExpression()), !dbg !2137
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2138
  %40 = load i8*, i8** %39, align 8, !dbg !2138, !tbaa !2039
  call void @llvm.dbg.value(metadata i8* %40, metadata !2091, metadata !DIExpression()), !dbg !2139
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2140
  %42 = load i32, i32* %41, align 4, !dbg !2140, !tbaa !1042
  %43 = or i32 %42, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %43, metadata !2092, metadata !DIExpression()), !dbg !2142
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2143
  %45 = load i32, i32* %44, align 8, !dbg !2143, !tbaa !983
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2144
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2145
  %48 = load i8*, i8** %47, align 8, !dbg !2145, !tbaa !1068
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2146
  %50 = load i8*, i8** %49, align 8, !dbg !2146, !tbaa !1071
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %51, metadata !2093, metadata !DIExpression()), !dbg !2148
  %52 = icmp ugt i64 %38, %51, !dbg !2149
  br i1 %52, label %63, label %53, !dbg !2151

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %54, metadata !2089, metadata !DIExpression()), !dbg !2137
  store i64 %54, i64* %37, align 8, !dbg !2154, !tbaa !2052
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2155
  br i1 %55, label %57, label %56, !dbg !2157

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2158
  br label %57, !dbg !2158

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1977, metadata !DIExpression()) #12, !dbg !2159
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2161
  call void @llvm.dbg.value(metadata i8* %58, metadata !2091, metadata !DIExpression()), !dbg !2139
  store i8* %58, i8** %39, align 8, !dbg !2162, !tbaa !2039
  %59 = load i32, i32* %44, align 8, !dbg !2163, !tbaa !983
  %60 = load i8*, i8** %47, align 8, !dbg !2164, !tbaa !1068
  %61 = load i8*, i8** %49, align 8, !dbg !2165, !tbaa !1071
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2166
  br label %63, !dbg !2167

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2168
  call void @llvm.dbg.value(metadata i8* %64, metadata !2091, metadata !DIExpression()), !dbg !2139
  store i32 %6, i32* %5, align 4, !dbg !2169, !tbaa !703
  ret i8* %64, !dbg !2170
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2171 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2175, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8* %1, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %2, metadata !2177, metadata !DIExpression()), !dbg !2180
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2181
  ret i8* %4, !dbg !2182
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2185, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 0, metadata !2069, metadata !DIExpression()) #12, !dbg !2187
  call void @llvm.dbg.value(metadata i8* %0, metadata !2070, metadata !DIExpression()) #12, !dbg !2189
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2190
  ret i8* %2, !dbg !2191
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2192 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2196, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %1, metadata !2197, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i32 0, metadata !2175, metadata !DIExpression()) #12, !dbg !2200
  call void @llvm.dbg.value(metadata i8* %0, metadata !2176, metadata !DIExpression()) #12, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %1, metadata !2177, metadata !DIExpression()) #12, !dbg !2203
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2204
  ret i8* %3, !dbg !2205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2206 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2210, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i32 %1, metadata !2211, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8* %2, metadata !2212, metadata !DIExpression()), !dbg !2216
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2217
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2217
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2218
  call void @llvm.dbg.value(metadata i32 %1, metadata !2219, metadata !DIExpression()) #12, !dbg !2225
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2227, !alias.scope !2228
  %6 = icmp eq i32 %1, 10, !dbg !2231
  br i1 %6, label %7, label %8, !dbg !2233

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2234, !noalias !2228
  unreachable, !dbg !2234

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2235
  store i32 %1, i32* %9, align 8, !dbg !2236, !tbaa !983, !alias.scope !2228
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2213, metadata !DIExpression(DW_OP_deref)), !dbg !2218
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2224, metadata !DIExpression(DW_OP_deref)), !dbg !2227
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2238
  ret i8* %10, !dbg !2239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2240 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2244, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 %1, metadata !2245, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i8* %2, metadata !2246, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i64 %3, metadata !2247, metadata !DIExpression()), !dbg !2252
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2253
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression(DW_OP_deref)), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %1, metadata !2219, metadata !DIExpression()) #12, !dbg !2255
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !2257, !alias.scope !2258
  %7 = icmp eq i32 %1, 10, !dbg !2261
  br i1 %7, label %8, label %9, !dbg !2262

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2263, !noalias !2258
  unreachable, !dbg !2263

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2264
  store i32 %1, i32* %10, align 8, !dbg !2265, !tbaa !983, !alias.scope !2258
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2248, metadata !DIExpression(DW_OP_deref)), !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2224, metadata !DIExpression(DW_OP_deref)), !dbg !2257
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2266
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2267
  ret i8* %11, !dbg !2268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2269 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()) #12, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %0, metadata !2211, metadata !DIExpression()) #12, !dbg !2279
  call void @llvm.dbg.value(metadata i8* %1, metadata !2212, metadata !DIExpression()) #12, !dbg !2280
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2281
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2213, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %0, metadata !2219, metadata !DIExpression()) #12, !dbg !2283
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !2285, !alias.scope !2286
  %5 = icmp eq i32 %0, 10, !dbg !2289
  br i1 %5, label %6, label %7, !dbg !2290

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2291, !noalias !2286
  unreachable, !dbg !2291

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2292
  store i32 %0, i32* %8, align 8, !dbg !2293, !tbaa !983, !alias.scope !2286
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2213, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2282
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2224, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2285
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2295
  ret i8* %9, !dbg !2296
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2297 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2301, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %1, metadata !2302, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i64 %2, metadata !2303, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 0, metadata !2244, metadata !DIExpression()) #12, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %0, metadata !2245, metadata !DIExpression()) #12, !dbg !2309
  call void @llvm.dbg.value(metadata i8* %1, metadata !2246, metadata !DIExpression()) #12, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %2, metadata !2247, metadata !DIExpression()) #12, !dbg !2311
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2312
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2248, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %0, metadata !2219, metadata !DIExpression()) #12, !dbg !2314
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !2316, !alias.scope !2317
  %6 = icmp eq i32 %0, 10, !dbg !2320
  br i1 %6, label %7, label %8, !dbg !2321

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2322, !noalias !2317
  unreachable, !dbg !2322

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2323
  store i32 %0, i32* %9, align 8, !dbg !2324, !tbaa !983, !alias.scope !2317
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2248, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2313
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2224, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2316
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2325
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2326
  ret i8* %10, !dbg !2327
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2328 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2332, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %1, metadata !2333, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i8 %2, metadata !2334, metadata !DIExpression()), !dbg !2338
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2339
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2340, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2335, metadata !DIExpression(DW_OP_deref)), !dbg !2342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1002, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i8 %2, metadata !1003, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i32 1, metadata !1004, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata i8 %2, metadata !1005, metadata !DIExpression()), !dbg !2347
  %6 = lshr i8 %2, 5, !dbg !2348
  %7 = zext i8 %6 to i64, !dbg !2348
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2349
  call void @llvm.dbg.value(metadata i32* %8, metadata !1006, metadata !DIExpression()), !dbg !2350
  %9 = and i8 %2, 31, !dbg !2351
  %10 = zext i8 %9 to i32, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %10, metadata !1008, metadata !DIExpression()), !dbg !2352
  %11 = load i32, i32* %8, align 4, !dbg !2353, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !2354
  %13 = and i32 %12, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %13, metadata !1009, metadata !DIExpression()), !dbg !2356
  %14 = xor i32 %13, 1, !dbg !2357
  %15 = shl i32 %14, %10, !dbg !2358
  %16 = xor i32 %15, %11, !dbg !2359
  store i32 %16, i32* %8, align 4, !dbg !2359, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2335, metadata !DIExpression(DW_OP_deref)), !dbg !2342
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2361
  ret i8* %17, !dbg !2362
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2363 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2367, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i8 %1, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i8* %0, metadata !2332, metadata !DIExpression()) #12, !dbg !2371
  call void @llvm.dbg.value(metadata i64 -1, metadata !2333, metadata !DIExpression()) #12, !dbg !2373
  call void @llvm.dbg.value(metadata i8 %1, metadata !2334, metadata !DIExpression()) #12, !dbg !2374
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2375
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2376, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2335, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1002, metadata !DIExpression()) #12, !dbg !2378
  call void @llvm.dbg.value(metadata i8 %1, metadata !1003, metadata !DIExpression()) #12, !dbg !2380
  call void @llvm.dbg.value(metadata i32 1, metadata !1004, metadata !DIExpression()) #12, !dbg !2381
  call void @llvm.dbg.value(metadata i8 %1, metadata !1005, metadata !DIExpression()) #12, !dbg !2382
  %5 = lshr i8 %1, 5, !dbg !2383
  %6 = zext i8 %5 to i64, !dbg !2383
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2384
  call void @llvm.dbg.value(metadata i32* %7, metadata !1006, metadata !DIExpression()) #12, !dbg !2385
  %8 = and i8 %1, 31, !dbg !2386
  %9 = zext i8 %8 to i32, !dbg !2386
  call void @llvm.dbg.value(metadata i32 %9, metadata !1008, metadata !DIExpression()) #12, !dbg !2387
  %10 = load i32, i32* %7, align 4, !dbg !2388, !tbaa !703
  %11 = lshr i32 %10, %9, !dbg !2389
  %12 = and i32 %11, 1, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %12, metadata !1009, metadata !DIExpression()) #12, !dbg !2391
  %13 = xor i32 %12, 1, !dbg !2392
  %14 = shl i32 %13, %9, !dbg !2393
  %15 = xor i32 %14, %10, !dbg !2394
  store i32 %15, i32* %7, align 4, !dbg !2394, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2335, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2377
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2395
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2396
  ret i8* %16, !dbg !2397
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2398 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2400, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* %0, metadata !2367, metadata !DIExpression()) #12, !dbg !2402
  call void @llvm.dbg.value(metadata i8 58, metadata !2368, metadata !DIExpression()) #12, !dbg !2404
  call void @llvm.dbg.value(metadata i8* %0, metadata !2332, metadata !DIExpression()) #12, !dbg !2405
  call void @llvm.dbg.value(metadata i64 -1, metadata !2333, metadata !DIExpression()) #12, !dbg !2407
  call void @llvm.dbg.value(metadata i8 58, metadata !2334, metadata !DIExpression()) #12, !dbg !2408
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2409
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2410, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2335, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2411
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1002, metadata !DIExpression()) #12, !dbg !2412
  call void @llvm.dbg.value(metadata i8 58, metadata !1003, metadata !DIExpression()) #12, !dbg !2414
  call void @llvm.dbg.value(metadata i32 1, metadata !1004, metadata !DIExpression()) #12, !dbg !2415
  call void @llvm.dbg.value(metadata i8 58, metadata !1005, metadata !DIExpression()) #12, !dbg !2416
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2417
  call void @llvm.dbg.value(metadata i32* %4, metadata !1006, metadata !DIExpression()) #12, !dbg !2418
  call void @llvm.dbg.value(metadata i32 26, metadata !1008, metadata !DIExpression()) #12, !dbg !2419
  %5 = load i32, i32* %4, align 4, !dbg !2420, !tbaa !703
  %6 = or i32 %5, 67108864, !dbg !2421
  store i32 %6, i32* %4, align 4, !dbg !2421, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2335, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2411
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2422
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2423
  ret i8* %7, !dbg !2424
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2425 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %1, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8* %0, metadata !2332, metadata !DIExpression()) #12, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %1, metadata !2333, metadata !DIExpression()) #12, !dbg !2433
  call void @llvm.dbg.value(metadata i8 58, metadata !2334, metadata !DIExpression()) #12, !dbg !2434
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2435
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2436, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2335, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1002, metadata !DIExpression()) #12, !dbg !2438
  call void @llvm.dbg.value(metadata i8 58, metadata !1003, metadata !DIExpression()) #12, !dbg !2440
  call void @llvm.dbg.value(metadata i32 1, metadata !1004, metadata !DIExpression()) #12, !dbg !2441
  call void @llvm.dbg.value(metadata i8 58, metadata !1005, metadata !DIExpression()) #12, !dbg !2442
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2443
  call void @llvm.dbg.value(metadata i32* %5, metadata !1006, metadata !DIExpression()) #12, !dbg !2444
  call void @llvm.dbg.value(metadata i32 26, metadata !1008, metadata !DIExpression()) #12, !dbg !2445
  %6 = load i32, i32* %5, align 4, !dbg !2446, !tbaa !703
  %7 = or i32 %6, 67108864, !dbg !2447
  store i32 %7, i32* %5, align 4, !dbg !2447, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2335, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2437
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2449
  ret i8* %8, !dbg !2450
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2451 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2224, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %0, metadata !2453, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 %1, metadata !2454, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8* %2, metadata !2455, metadata !DIExpression()), !dbg !2461
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2462
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2462
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2463
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %1, metadata !2219, metadata !DIExpression()) #12, !dbg !2464
  call void @llvm.dbg.value(metadata i32 0, metadata !2224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2457
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2457, !alias.scope !2465
  %8 = icmp eq i32 %1, 10, !dbg !2468
  br i1 %8, label %9, label %10, !dbg !2469

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2470, !noalias !2465
  unreachable, !dbg !2470

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2457
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2463
  store i32 %1, i32* %11, align 8, !dbg !2463
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2463
  %13 = bitcast i32* %12 to i8*, !dbg !2463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2463
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1002, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 58, metadata !1003, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 1, metadata !1004, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 58, metadata !1005, metadata !DIExpression()), !dbg !2476
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2477
  call void @llvm.dbg.value(metadata i32* %14, metadata !1006, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 26, metadata !1008, metadata !DIExpression()), !dbg !2479
  %15 = load i32, i32* %14, align 4, !dbg !2480, !tbaa !703
  %16 = or i32 %15, 67108864, !dbg !2481
  store i32 %16, i32* %14, align 4, !dbg !2481, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2456, metadata !DIExpression(DW_OP_deref)), !dbg !2471
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2483
  ret i8* %17, !dbg !2484
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2485 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* %1, metadata !2490, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8* %2, metadata !2491, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8* %3, metadata !2492, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %0, metadata !2497, metadata !DIExpression()) #12, !dbg !2507
  call void @llvm.dbg.value(metadata i8* %1, metadata !2502, metadata !DIExpression()) #12, !dbg !2509
  call void @llvm.dbg.value(metadata i8* %2, metadata !2503, metadata !DIExpression()) #12, !dbg !2510
  call void @llvm.dbg.value(metadata i8* %3, metadata !2504, metadata !DIExpression()) #12, !dbg !2511
  call void @llvm.dbg.value(metadata i64 -1, metadata !2505, metadata !DIExpression()) #12, !dbg !2512
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2513
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2514, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2506, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1050, metadata !DIExpression()) #12, !dbg !2516
  call void @llvm.dbg.value(metadata i8* %1, metadata !1051, metadata !DIExpression()) #12, !dbg !2518
  call void @llvm.dbg.value(metadata i8* %2, metadata !1052, metadata !DIExpression()) #12, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1050, metadata !DIExpression()) #12, !dbg !2516
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2520
  store i32 10, i32* %7, align 8, !dbg !2521, !tbaa !983
  %8 = icmp ne i8* %1, null, !dbg !2522
  %9 = icmp ne i8* %2, null, !dbg !2523
  %10 = and i1 %8, %9, !dbg !2524
  br i1 %10, label %12, label %11, !dbg !2524

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2525
  unreachable, !dbg !2525

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2526
  store i8* %1, i8** %13, align 8, !dbg !2527, !tbaa !1068
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2528
  store i8* %2, i8** %14, align 8, !dbg !2529, !tbaa !1071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2506, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2515
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2530
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2531
  ret i8* %15, !dbg !2532
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2498 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2497, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %1, metadata !2502, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %2, metadata !2503, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %3, metadata !2504, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %4, metadata !2505, metadata !DIExpression()), !dbg !2537
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2539, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2506, metadata !DIExpression(DW_OP_deref)), !dbg !2540
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1050, metadata !DIExpression()) #12, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %1, metadata !1051, metadata !DIExpression()) #12, !dbg !2543
  call void @llvm.dbg.value(metadata i8* %2, metadata !1052, metadata !DIExpression()) #12, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1050, metadata !DIExpression()) #12, !dbg !2541
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2545
  store i32 10, i32* %8, align 8, !dbg !2546, !tbaa !983
  %9 = icmp ne i8* %1, null, !dbg !2547
  %10 = icmp ne i8* %2, null, !dbg !2548
  %11 = and i1 %9, %10, !dbg !2549
  br i1 %11, label %13, label %12, !dbg !2549

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2550
  unreachable, !dbg !2550

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2551
  store i8* %1, i8** %14, align 8, !dbg !2552, !tbaa !1068
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2553
  store i8* %2, i8** %15, align 8, !dbg !2554, !tbaa !1071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2506, metadata !DIExpression(DW_OP_deref)), !dbg !2540
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2555
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2556
  ret i8* %16, !dbg !2557
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2558 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8* %1, metadata !2563, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %2, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 0, metadata !2489, metadata !DIExpression()) #12, !dbg !2568
  call void @llvm.dbg.value(metadata i8* %0, metadata !2490, metadata !DIExpression()) #12, !dbg !2570
  call void @llvm.dbg.value(metadata i8* %1, metadata !2491, metadata !DIExpression()) #12, !dbg !2571
  call void @llvm.dbg.value(metadata i8* %2, metadata !2492, metadata !DIExpression()) #12, !dbg !2572
  call void @llvm.dbg.value(metadata i32 0, metadata !2497, metadata !DIExpression()) #12, !dbg !2573
  call void @llvm.dbg.value(metadata i8* %0, metadata !2502, metadata !DIExpression()) #12, !dbg !2575
  call void @llvm.dbg.value(metadata i8* %1, metadata !2503, metadata !DIExpression()) #12, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %2, metadata !2504, metadata !DIExpression()) #12, !dbg !2577
  call void @llvm.dbg.value(metadata i64 -1, metadata !2505, metadata !DIExpression()) #12, !dbg !2578
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2579
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2579
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2580, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2506, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1050, metadata !DIExpression()) #12, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %0, metadata !1051, metadata !DIExpression()) #12, !dbg !2584
  call void @llvm.dbg.value(metadata i8* %1, metadata !1052, metadata !DIExpression()) #12, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1050, metadata !DIExpression()) #12, !dbg !2582
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2586
  store i32 10, i32* %6, align 8, !dbg !2587, !tbaa !983
  %7 = icmp ne i8* %0, null, !dbg !2588
  %8 = icmp ne i8* %1, null, !dbg !2589
  %9 = and i1 %7, %8, !dbg !2590
  br i1 %9, label %11, label %10, !dbg !2590

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2591
  unreachable, !dbg !2591

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2592
  store i8* %0, i8** %12, align 8, !dbg !2593, !tbaa !1068
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2594
  store i8* %1, i8** %13, align 8, !dbg !2595, !tbaa !1071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2506, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2581
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2597
  ret i8* %14, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2599 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2603, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8* %1, metadata !2604, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* %2, metadata !2605, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i64 %3, metadata !2606, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 0, metadata !2497, metadata !DIExpression()) #12, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %0, metadata !2502, metadata !DIExpression()) #12, !dbg !2613
  call void @llvm.dbg.value(metadata i8* %1, metadata !2503, metadata !DIExpression()) #12, !dbg !2614
  call void @llvm.dbg.value(metadata i8* %2, metadata !2504, metadata !DIExpression()) #12, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %3, metadata !2505, metadata !DIExpression()) #12, !dbg !2616
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2617
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2617
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2618, !tbaa.struct !2341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2506, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1050, metadata !DIExpression()) #12, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %0, metadata !1051, metadata !DIExpression()) #12, !dbg !2622
  call void @llvm.dbg.value(metadata i8* %1, metadata !1052, metadata !DIExpression()) #12, !dbg !2623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1050, metadata !DIExpression()) #12, !dbg !2620
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2624
  store i32 10, i32* %7, align 8, !dbg !2625, !tbaa !983
  %8 = icmp ne i8* %0, null, !dbg !2626
  %9 = icmp ne i8* %1, null, !dbg !2627
  %10 = and i1 %8, %9, !dbg !2628
  br i1 %10, label %12, label %11, !dbg !2628

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2629
  unreachable, !dbg !2629

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2630
  store i8* %0, i8** %13, align 8, !dbg !2631, !tbaa !1068
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2632
  store i8* %1, i8** %14, align 8, !dbg !2633, !tbaa !1071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2506, metadata !DIExpression(DW_OP_deref)) #12, !dbg !2619
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2634
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2635
  ret i8* %15, !dbg !2636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2637 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %1, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %2, metadata !2643, metadata !DIExpression()), !dbg !2646
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2647
  ret i8* %4, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2649 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %1, metadata !2654, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2641, metadata !DIExpression()) #12, !dbg !2657
  call void @llvm.dbg.value(metadata i8* %0, metadata !2642, metadata !DIExpression()) #12, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %1, metadata !2643, metadata !DIExpression()) #12, !dbg !2660
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2661
  ret i8* %3, !dbg !2662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2663 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2667, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* %1, metadata !2668, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 %0, metadata !2641, metadata !DIExpression()) #12, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %1, metadata !2642, metadata !DIExpression()) #12, !dbg !2673
  call void @llvm.dbg.value(metadata i64 -1, metadata !2643, metadata !DIExpression()) #12, !dbg !2674
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2675
  ret i8* %3, !dbg !2676
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2677 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2681, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 0, metadata !2667, metadata !DIExpression()) #12, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()) #12, !dbg !2685
  call void @llvm.dbg.value(metadata i32 0, metadata !2641, metadata !DIExpression()) #12, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %0, metadata !2642, metadata !DIExpression()) #12, !dbg !2688
  call void @llvm.dbg.value(metadata i64 -1, metadata !2643, metadata !DIExpression()) #12, !dbg !2689
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2690
  ret i8* %2, !dbg !2691
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2692 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2752, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %1, metadata !2753, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %2, metadata !2754, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %3, metadata !2755, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8** %4, metadata !2756, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i64 %5, metadata !2757, metadata !DIExpression()), !dbg !2763
  %7 = icmp eq i8* %1, null, !dbg !2764
  br i1 %7, label %10, label %8, !dbg !2766

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2767
  br label %12, !dbg !2767

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2768
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.74, i64 0, i64 0), i32 5) #12, !dbg !2769
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !2769
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.75, i64 0, i64 0), i32 5) #12, !dbg !2770
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2770
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
  ], !dbg !2771

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2772
  unreachable, !dbg !2772

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.76, i64 0, i64 0), i32 5) #12, !dbg !2774
  %20 = load i8*, i8** %4, align 8, !dbg !2774, !tbaa !639
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !2774
  br label %146, !dbg !2775

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.77, i64 0, i64 0), i32 5) #12, !dbg !2776
  %24 = load i8*, i8** %4, align 8, !dbg !2776, !tbaa !639
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2776
  %26 = load i8*, i8** %25, align 8, !dbg !2776, !tbaa !639
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !2776
  br label %146, !dbg !2777

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.78, i64 0, i64 0), i32 5) #12, !dbg !2778
  %30 = load i8*, i8** %4, align 8, !dbg !2778, !tbaa !639
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2778
  %32 = load i8*, i8** %31, align 8, !dbg !2778, !tbaa !639
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2778
  %34 = load i8*, i8** %33, align 8, !dbg !2778, !tbaa !639
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !2778
  br label %146, !dbg !2779

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.79, i64 0, i64 0), i32 5) #12, !dbg !2780
  %38 = load i8*, i8** %4, align 8, !dbg !2780, !tbaa !639
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2780
  %40 = load i8*, i8** %39, align 8, !dbg !2780, !tbaa !639
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2780
  %42 = load i8*, i8** %41, align 8, !dbg !2780, !tbaa !639
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2780
  %44 = load i8*, i8** %43, align 8, !dbg !2780, !tbaa !639
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !2780
  br label %146, !dbg !2781

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.80, i64 0, i64 0), i32 5) #12, !dbg !2782
  %48 = load i8*, i8** %4, align 8, !dbg !2782, !tbaa !639
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2782
  %50 = load i8*, i8** %49, align 8, !dbg !2782, !tbaa !639
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2782
  %52 = load i8*, i8** %51, align 8, !dbg !2782, !tbaa !639
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2782
  %54 = load i8*, i8** %53, align 8, !dbg !2782, !tbaa !639
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2782
  %56 = load i8*, i8** %55, align 8, !dbg !2782, !tbaa !639
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !2782
  br label %146, !dbg !2783

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.81, i64 0, i64 0), i32 5) #12, !dbg !2784
  %60 = load i8*, i8** %4, align 8, !dbg !2784, !tbaa !639
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2784
  %62 = load i8*, i8** %61, align 8, !dbg !2784, !tbaa !639
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2784
  %64 = load i8*, i8** %63, align 8, !dbg !2784, !tbaa !639
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2784
  %66 = load i8*, i8** %65, align 8, !dbg !2784, !tbaa !639
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2784
  %68 = load i8*, i8** %67, align 8, !dbg !2784, !tbaa !639
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2784
  %70 = load i8*, i8** %69, align 8, !dbg !2784, !tbaa !639
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !2784
  br label %146, !dbg !2785

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.82, i64 0, i64 0), i32 5) #12, !dbg !2786
  %74 = load i8*, i8** %4, align 8, !dbg !2786, !tbaa !639
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2786
  %76 = load i8*, i8** %75, align 8, !dbg !2786, !tbaa !639
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2786
  %78 = load i8*, i8** %77, align 8, !dbg !2786, !tbaa !639
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2786
  %80 = load i8*, i8** %79, align 8, !dbg !2786, !tbaa !639
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2786
  %82 = load i8*, i8** %81, align 8, !dbg !2786, !tbaa !639
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2786
  %84 = load i8*, i8** %83, align 8, !dbg !2786, !tbaa !639
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2786
  %86 = load i8*, i8** %85, align 8, !dbg !2786, !tbaa !639
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !2786
  br label %146, !dbg !2787

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.83, i64 0, i64 0), i32 5) #12, !dbg !2788
  %90 = load i8*, i8** %4, align 8, !dbg !2788, !tbaa !639
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2788
  %92 = load i8*, i8** %91, align 8, !dbg !2788, !tbaa !639
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2788
  %94 = load i8*, i8** %93, align 8, !dbg !2788, !tbaa !639
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2788
  %96 = load i8*, i8** %95, align 8, !dbg !2788, !tbaa !639
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2788
  %98 = load i8*, i8** %97, align 8, !dbg !2788, !tbaa !639
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2788
  %100 = load i8*, i8** %99, align 8, !dbg !2788, !tbaa !639
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2788
  %102 = load i8*, i8** %101, align 8, !dbg !2788, !tbaa !639
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2788
  %104 = load i8*, i8** %103, align 8, !dbg !2788, !tbaa !639
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !2788
  br label %146, !dbg !2789

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.84, i64 0, i64 0), i32 5) #12, !dbg !2790
  %108 = load i8*, i8** %4, align 8, !dbg !2790, !tbaa !639
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2790
  %110 = load i8*, i8** %109, align 8, !dbg !2790, !tbaa !639
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2790
  %112 = load i8*, i8** %111, align 8, !dbg !2790, !tbaa !639
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2790
  %114 = load i8*, i8** %113, align 8, !dbg !2790, !tbaa !639
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2790
  %116 = load i8*, i8** %115, align 8, !dbg !2790, !tbaa !639
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2790
  %118 = load i8*, i8** %117, align 8, !dbg !2790, !tbaa !639
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2790
  %120 = load i8*, i8** %119, align 8, !dbg !2790, !tbaa !639
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2790
  %122 = load i8*, i8** %121, align 8, !dbg !2790, !tbaa !639
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2790
  %124 = load i8*, i8** %123, align 8, !dbg !2790, !tbaa !639
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !2790
  br label %146, !dbg !2791

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.85, i64 0, i64 0), i32 5) #12, !dbg !2792
  %128 = load i8*, i8** %4, align 8, !dbg !2792, !tbaa !639
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2792
  %130 = load i8*, i8** %129, align 8, !dbg !2792, !tbaa !639
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2792
  %132 = load i8*, i8** %131, align 8, !dbg !2792, !tbaa !639
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2792
  %134 = load i8*, i8** %133, align 8, !dbg !2792, !tbaa !639
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2792
  %136 = load i8*, i8** %135, align 8, !dbg !2792, !tbaa !639
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2792
  %138 = load i8*, i8** %137, align 8, !dbg !2792, !tbaa !639
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2792
  %140 = load i8*, i8** %139, align 8, !dbg !2792, !tbaa !639
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2792
  %142 = load i8*, i8** %141, align 8, !dbg !2792, !tbaa !639
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2792
  %144 = load i8*, i8** %143, align 8, !dbg !2792, !tbaa !639
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !2792
  br label %146, !dbg !2793

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2794
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2795 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2799, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8* %1, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %2, metadata !2801, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8* %3, metadata !2802, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8** %4, metadata !2803, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 0, metadata !2804, metadata !DIExpression()), !dbg !2810
  br label %6, !dbg !2811

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2813
  call void @llvm.dbg.value(metadata i64 %7, metadata !2804, metadata !DIExpression()), !dbg !2810
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2815
  %9 = load i8*, i8** %8, align 8, !dbg !2815, !tbaa !639
  %10 = icmp eq i8* %9, null, !dbg !2816
  %11 = add i64 %7, 1, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %11, metadata !2804, metadata !DIExpression()), !dbg !2810
  br i1 %10, label %12, label %6, !dbg !2816, !llvm.loop !2818

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %7, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %7, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %7, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %7, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %7, metadata !2804, metadata !DIExpression()), !dbg !2810
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2820
  ret void, !dbg !2821
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2822 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2833, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2834, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %2, metadata !2835, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %3, metadata !2836, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2837, metadata !DIExpression()), !dbg !2845
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2846
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2846
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2839, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 0, metadata !2838, metadata !DIExpression()), !dbg !2848
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2838, metadata !DIExpression()), !dbg !2848
  %11 = load i32, i32* %8, align 8, !dbg !2849
  %12 = icmp ult i32 %11, 41, !dbg !2849
  br i1 %12, label %13, label %18, !dbg !2849

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2849
  %15 = sext i32 %11 to i64, !dbg !2849
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2849
  %17 = add i32 %11, 8, !dbg !2849
  store i32 %17, i32* %8, align 8, !dbg !2849
  br label %21, !dbg !2849

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2849
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2849
  store i8* %20, i8** %10, align 8, !dbg !2849
  br label %21, !dbg !2849

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2849
  %25 = load i8*, i8** %24, align 8, !dbg !2849
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2852
  store i8* %25, i8** %26, align 16, !dbg !2853, !tbaa !639
  %27 = icmp eq i8* %25, null, !dbg !2854
  br i1 %27, label %30, label %28, !dbg !2855

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 1, metadata !2838, metadata !DIExpression()), !dbg !2848
  %29 = icmp ult i32 %22, 41, !dbg !2849
  br i1 %29, label %35, label %32, !dbg !2849

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2856
  call void @llvm.dbg.value(metadata i64 %31, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %31, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2858
  ret void, !dbg !2858

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2849
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2849
  store i8* %34, i8** %10, align 8, !dbg !2849
  br label %40, !dbg !2849

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2849
  %37 = sext i32 %22 to i64, !dbg !2849
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2849
  %39 = add i32 %22, 8, !dbg !2849
  store i32 %39, i32* %8, align 8, !dbg !2849
  br label %40, !dbg !2849

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2849
  %44 = load i8*, i8** %43, align 8, !dbg !2849
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2852
  store i8* %44, i8** %45, align 8, !dbg !2853, !tbaa !639
  %46 = icmp eq i8* %44, null, !dbg !2854
  br i1 %46, label %30, label %47, !dbg !2855

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 2, metadata !2838, metadata !DIExpression()), !dbg !2848
  %48 = icmp ult i32 %41, 41, !dbg !2849
  br i1 %48, label %52, label %49, !dbg !2849

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2849
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2849
  store i8* %51, i8** %10, align 8, !dbg !2849
  br label %57, !dbg !2849

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2849
  %54 = sext i32 %41 to i64, !dbg !2849
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2849
  %56 = add i32 %41, 8, !dbg !2849
  store i32 %56, i32* %8, align 8, !dbg !2849
  br label %57, !dbg !2849

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2849
  %61 = load i8*, i8** %60, align 8, !dbg !2849
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2852
  store i8* %61, i8** %62, align 16, !dbg !2853, !tbaa !639
  %63 = icmp eq i8* %61, null, !dbg !2854
  br i1 %63, label %30, label %64, !dbg !2855

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 3, metadata !2838, metadata !DIExpression()), !dbg !2848
  %65 = icmp ult i32 %58, 41, !dbg !2849
  br i1 %65, label %69, label %66, !dbg !2849

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2849
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2849
  store i8* %68, i8** %10, align 8, !dbg !2849
  br label %74, !dbg !2849

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2849
  %71 = sext i32 %58 to i64, !dbg !2849
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2849
  %73 = add i32 %58, 8, !dbg !2849
  store i32 %73, i32* %8, align 8, !dbg !2849
  br label %74, !dbg !2849

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2849
  %78 = load i8*, i8** %77, align 8, !dbg !2849
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2852
  store i8* %78, i8** %79, align 8, !dbg !2853, !tbaa !639
  %80 = icmp eq i8* %78, null, !dbg !2854
  br i1 %80, label %30, label %81, !dbg !2855

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 4, metadata !2838, metadata !DIExpression()), !dbg !2848
  %82 = icmp ult i32 %75, 41, !dbg !2849
  br i1 %82, label %86, label %83, !dbg !2849

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2849
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2849
  store i8* %85, i8** %10, align 8, !dbg !2849
  br label %91, !dbg !2849

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2849
  %88 = sext i32 %75 to i64, !dbg !2849
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2849
  %90 = add i32 %75, 8, !dbg !2849
  store i32 %90, i32* %8, align 8, !dbg !2849
  br label %91, !dbg !2849

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2849
  %95 = load i8*, i8** %94, align 8, !dbg !2849
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2852
  store i8* %95, i8** %96, align 16, !dbg !2853, !tbaa !639
  %97 = icmp eq i8* %95, null, !dbg !2854
  br i1 %97, label %30, label %98, !dbg !2855

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 5, metadata !2838, metadata !DIExpression()), !dbg !2848
  %99 = icmp ult i32 %92, 41, !dbg !2849
  br i1 %99, label %103, label %100, !dbg !2849

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2849
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2849
  store i8* %102, i8** %10, align 8, !dbg !2849
  br label %108, !dbg !2849

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2849
  %105 = sext i32 %92 to i64, !dbg !2849
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2849
  %107 = add i32 %92, 8, !dbg !2849
  store i32 %107, i32* %8, align 8, !dbg !2849
  br label %108, !dbg !2849

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2849
  %111 = load i8*, i8** %110, align 8, !dbg !2849
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2852
  store i8* %111, i8** %112, align 8, !dbg !2853, !tbaa !639
  %113 = icmp eq i8* %111, null, !dbg !2854
  br i1 %113, label %30, label %114, !dbg !2855

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 6, metadata !2838, metadata !DIExpression()), !dbg !2848
  %115 = load i8*, i8** %10, align 8, !dbg !2849
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2849
  store i8* %116, i8** %10, align 8, !dbg !2849
  %117 = bitcast i8* %115 to i8**, !dbg !2849
  %118 = load i8*, i8** %117, align 8, !dbg !2849
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2852
  store i8* %118, i8** %119, align 16, !dbg !2853, !tbaa !639
  %120 = icmp eq i8* %118, null, !dbg !2854
  br i1 %120, label %30, label %121, !dbg !2855

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 7, metadata !2838, metadata !DIExpression()), !dbg !2848
  %122 = load i8*, i8** %10, align 8, !dbg !2849
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2849
  store i8* %123, i8** %10, align 8, !dbg !2849
  %124 = bitcast i8* %122 to i8**, !dbg !2849
  %125 = load i8*, i8** %124, align 8, !dbg !2849
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2852
  store i8* %125, i8** %126, align 8, !dbg !2853, !tbaa !639
  %127 = icmp eq i8* %125, null, !dbg !2854
  br i1 %127, label %30, label %128, !dbg !2855

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 8, metadata !2838, metadata !DIExpression()), !dbg !2848
  %129 = load i8*, i8** %10, align 8, !dbg !2849
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2849
  store i8* %130, i8** %10, align 8, !dbg !2849
  %131 = bitcast i8* %129 to i8**, !dbg !2849
  %132 = load i8*, i8** %131, align 8, !dbg !2849
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2852
  store i8* %132, i8** %133, align 16, !dbg !2853, !tbaa !639
  %134 = icmp eq i8* %132, null, !dbg !2854
  br i1 %134, label %30, label %135, !dbg !2855

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2838, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 9, metadata !2838, metadata !DIExpression()), !dbg !2848
  %136 = load i8*, i8** %10, align 8, !dbg !2849
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2849
  store i8* %137, i8** %10, align 8, !dbg !2849
  %138 = bitcast i8* %136 to i8**, !dbg !2849
  %139 = load i8*, i8** %138, align 8, !dbg !2849
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2852
  store i8* %139, i8** %140, align 8, !dbg !2853, !tbaa !639
  %141 = icmp eq i8* %139, null, !dbg !2854
  %142 = select i1 %141, i64 9, i64 10, !dbg !2855
  br label %30, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2859 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2863, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i8* %1, metadata !2864, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8* %2, metadata !2865, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %3, metadata !2866, metadata !DIExpression()), !dbg !2877
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2878
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2878
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2867, metadata !DIExpression()), !dbg !2879
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2880
  call void @llvm.va_start(i8* nonnull %6), !dbg !2880
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2881
  call void @llvm.va_end(i8* nonnull %6), !dbg !2882
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2883
  ret void, !dbg !2883
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2884 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.88, i64 0, i64 0), i32 5) #12, !dbg !2885
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.89, i64 0, i64 0)) #12, !dbg !2885
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.90, i64 0, i64 0), i32 5) #12, !dbg !2886
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.91, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.92, i64 0, i64 0)) #12, !dbg !2886
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.93, i64 0, i64 0), i32 5) #12, !dbg !2887
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2887, !tbaa !639
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2887
  ret void, !dbg !2888
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2889 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1, metadata !2894, metadata !DIExpression()), !dbg !2896
  %3 = udiv i64 9223372036854775807, %1, !dbg !2897
  %4 = icmp ult i64 %3, %0, !dbg !2897
  br i1 %4, label %5, label %6, !dbg !2899

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2900
  unreachable, !dbg !2900

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %7, metadata !2902, metadata !DIExpression()) #12, !dbg !2909
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !2911
  call void @llvm.dbg.value(metadata i8* %8, metadata !2908, metadata !DIExpression()) #12, !dbg !2912
  %9 = icmp eq i8* %8, null, !dbg !2913
  %10 = icmp ne i64 %7, 0, !dbg !2915
  %11 = and i1 %10, %9, !dbg !2916
  br i1 %11, label %12, label %13, !dbg !2916

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2917
  unreachable, !dbg !2917

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2903 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()), !dbg !2919
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !2920
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()), !dbg !2921
  %3 = icmp eq i8* %2, null, !dbg !2922
  %4 = icmp ne i64 %0, 0, !dbg !2923
  %5 = and i1 %4, %3, !dbg !2924
  br i1 %5, label %6, label %7, !dbg !2924

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2925
  unreachable, !dbg !2925

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2926
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2927 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2931, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %2, metadata !2933, metadata !DIExpression()), !dbg !2936
  %4 = udiv i64 9223372036854775807, %2, !dbg !2937
  %5 = icmp ult i64 %4, %1, !dbg !2937
  br i1 %5, label %6, label %7, !dbg !2939

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2940
  unreachable, !dbg !2940

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2941
  call void @llvm.dbg.value(metadata i8* %0, metadata !2942, metadata !DIExpression()) #12, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %8, metadata !2947, metadata !DIExpression()) #12, !dbg !2950
  %9 = icmp eq i64 %8, 0, !dbg !2951
  %10 = icmp ne i8* %0, null, !dbg !2953
  %11 = and i1 %10, %9, !dbg !2954
  br i1 %11, label %12, label %13, !dbg !2954

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !2955
  br label %19, !dbg !2957

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %14, metadata !2942, metadata !DIExpression()) #12, !dbg !2948
  %15 = icmp eq i8* %14, null, !dbg !2959
  %16 = icmp ne i64 %8, 0, !dbg !2961
  %17 = and i1 %16, %15, !dbg !2962
  br i1 %17, label %18, label %19, !dbg !2962

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2963
  unreachable, !dbg !2963

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2964
  ret i8* %20, !dbg !2965
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2942, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !2967
  %3 = icmp eq i64 %1, 0, !dbg !2968
  %4 = icmp ne i8* %0, null, !dbg !2969
  %5 = and i1 %4, %3, !dbg !2970
  br i1 %5, label %6, label %7, !dbg !2970

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !2971
  br label %13, !dbg !2972

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %8, metadata !2942, metadata !DIExpression()), !dbg !2966
  %9 = icmp eq i8* %8, null, !dbg !2974
  %10 = icmp ne i64 %1, 0, !dbg !2975
  %11 = and i1 %10, %9, !dbg !2976
  br i1 %11, label %12, label %13, !dbg !2976

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2977
  unreachable, !dbg !2977

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2978
  ret i8* %14, !dbg !2979
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !187, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64* %1, metadata !188, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %2, metadata !189, metadata !DIExpression()), !dbg !2982
  %4 = load i64, i64* %1, align 8, !dbg !2983, !tbaa !2023
  call void @llvm.dbg.value(metadata i64 %4, metadata !190, metadata !DIExpression()), !dbg !2984
  %5 = icmp eq i8* %0, null, !dbg !2985
  br i1 %5, label %6, label %20, !dbg !2987

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2988
  br i1 %7, label %8, label %13, !dbg !2991

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %9, metadata !190, metadata !DIExpression()), !dbg !2984
  %10 = icmp ugt i64 %2, 128, !dbg !2994
  %11 = zext i1 %10 to i64, !dbg !2994
  %12 = add nuw nsw i64 %9, %11, !dbg !2995
  call void @llvm.dbg.value(metadata i64 %12, metadata !190, metadata !DIExpression()), !dbg !2984
  br label %13, !dbg !2996

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2997
  call void @llvm.dbg.value(metadata i64 %14, metadata !190, metadata !DIExpression()), !dbg !2984
  %15 = udiv i64 9223372036854775807, %2, !dbg !2998
  %16 = icmp ult i64 %15, %14, !dbg !2998
  br i1 %16, label %19, label %17, !dbg !3000

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !190, metadata !DIExpression()), !dbg !2984
  store i64 %14, i64* %1, align 8, !dbg !3001, !tbaa !2023
  %18 = mul i64 %14, %2, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %0, metadata !2942, metadata !DIExpression()) #12, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %28, metadata !2947, metadata !DIExpression()) #12, !dbg !3005
  br label %31, !dbg !3006

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3007
  unreachable, !dbg !3007

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3008
  %22 = icmp ugt i64 %21, %4, !dbg !3011
  br i1 %22, label %24, label %23, !dbg !3012

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3013
  unreachable, !dbg !3013

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3014
  %26 = add i64 %4, 1, !dbg !3015
  %27 = add i64 %26, %25, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %27, metadata !190, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i64 %27, metadata !190, metadata !DIExpression()), !dbg !2984
  store i64 %27, i64* %1, align 8, !dbg !3001, !tbaa !2023
  %28 = mul i64 %27, %2, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %0, metadata !2942, metadata !DIExpression()) #12, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %28, metadata !2947, metadata !DIExpression()) #12, !dbg !3005
  %29 = icmp eq i64 %28, 0, !dbg !3017
  br i1 %29, label %30, label %31, !dbg !3006

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3018
  br label %38, !dbg !3019

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %33, metadata !2942, metadata !DIExpression()) #12, !dbg !3003
  %34 = icmp eq i8* %33, null, !dbg !3021
  %35 = icmp ne i64 %32, 0, !dbg !3022
  %36 = and i1 %35, %34, !dbg !3023
  br i1 %36, label %37, label %38, !dbg !3023

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3024
  unreachable, !dbg !3024

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3025
  ret i8* %39, !dbg !3026
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3027 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3029, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()) #12, !dbg !3031
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()) #12, !dbg !3034
  %3 = icmp eq i8* %2, null, !dbg !3035
  %4 = icmp ne i64 %0, 0, !dbg !3036
  %5 = and i1 %4, %3, !dbg !3037
  br i1 %5, label %6, label %7, !dbg !3037

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3038
  unreachable, !dbg !3038

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3039
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3040 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64* %1, metadata !3045, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !187, metadata !DIExpression()) #12, !dbg !3048
  call void @llvm.dbg.value(metadata i64* %1, metadata !188, metadata !DIExpression()) #12, !dbg !3050
  call void @llvm.dbg.value(metadata i64 1, metadata !189, metadata !DIExpression()) #12, !dbg !3051
  %3 = load i64, i64* %1, align 8, !dbg !3052, !tbaa !2023
  call void @llvm.dbg.value(metadata i64 %3, metadata !190, metadata !DIExpression()) #12, !dbg !3053
  %4 = icmp eq i8* %0, null, !dbg !3054
  br i1 %4, label %5, label %12, !dbg !3055

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3056
  br i1 %6, label %9, label %7, !dbg !3057

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !190, metadata !DIExpression()) #12, !dbg !3053
  %8 = icmp slt i64 %3, 0, !dbg !3058
  br i1 %8, label %11, label %9, !dbg !3059

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !190, metadata !DIExpression()) #12, !dbg !3053
  store i64 %10, i64* %1, align 8, !dbg !3060, !tbaa !2023
  call void @llvm.dbg.value(metadata i8* %0, metadata !2942, metadata !DIExpression()) #12, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %18, metadata !2947, metadata !DIExpression()) #12, !dbg !3063
  br label %21, !dbg !3064

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3065
  unreachable, !dbg !3065

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3066
  br i1 %13, label %15, label %14, !dbg !3067

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3068
  unreachable, !dbg !3068

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3069
  %17 = add i64 %3, 1, !dbg !3070
  %18 = add i64 %17, %16, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %18, metadata !190, metadata !DIExpression()) #12, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %18, metadata !190, metadata !DIExpression()) #12, !dbg !3053
  store i64 %18, i64* %1, align 8, !dbg !3060, !tbaa !2023
  call void @llvm.dbg.value(metadata i8* %0, metadata !2942, metadata !DIExpression()) #12, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %18, metadata !2947, metadata !DIExpression()) #12, !dbg !3063
  %19 = icmp eq i64 %18, 0, !dbg !3072
  br i1 %19, label %20, label %21, !dbg !3064

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3073
  br label %28, !dbg !3074

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %23, metadata !2942, metadata !DIExpression()) #12, !dbg !3061
  %24 = icmp eq i8* %23, null, !dbg !3076
  %25 = icmp ne i64 %22, 0, !dbg !3077
  %26 = and i1 %25, %24, !dbg !3078
  br i1 %26, label %27, label %28, !dbg !3078

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3079
  unreachable, !dbg !3079

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3080
  ret i8* %29, !dbg !3081
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3082 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3084, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %0, metadata !2902, metadata !DIExpression()) #12, !dbg !3086
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()) #12, !dbg !3089
  %3 = icmp eq i8* %2, null, !dbg !3090
  %4 = icmp ne i64 %0, 0, !dbg !3091
  %5 = and i1 %4, %3, !dbg !3092
  br i1 %5, label %6, label %7, !dbg !3092

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3093
  unreachable, !dbg !3093

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3094
  ret i8* %2, !dbg !3095
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3096 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3098, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3099, metadata !DIExpression()), !dbg !3102
  %3 = udiv i64 9223372036854775807, %1, !dbg !3103
  %4 = icmp ult i64 %3, %0, !dbg !3103
  br i1 %4, label %8, label %5, !dbg !3105

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %6, metadata !3100, metadata !DIExpression()), !dbg !3107
  %7 = icmp eq i8* %6, null, !dbg !3108
  br i1 %7, label %8, label %9, !dbg !3109

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3110
  unreachable, !dbg !3110

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3111
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3112 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3119, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()) #12, !dbg !3122
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %3, metadata !2908, metadata !DIExpression()) #12, !dbg !3125
  %4 = icmp eq i8* %3, null, !dbg !3126
  %5 = icmp ne i64 %1, 0, !dbg !3127
  %6 = and i1 %5, %4, !dbg !3128
  br i1 %6, label %7, label %8, !dbg !3128

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3129
  unreachable, !dbg !3129

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3130
  ret i8* %3, !dbg !3131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3132 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3134, metadata !DIExpression()), !dbg !3135
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3136
  %3 = add i64 %2, 1, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %0, metadata !3118, metadata !DIExpression()) #12, !dbg !3138
  call void @llvm.dbg.value(metadata i64 %3, metadata !3119, metadata !DIExpression()) #12, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %3, metadata !2902, metadata !DIExpression()) #12, !dbg !3141
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %4, metadata !2908, metadata !DIExpression()) #12, !dbg !3144
  %5 = icmp eq i8* %4, null, !dbg !3145
  %6 = icmp ne i64 %3, 0, !dbg !3146
  %7 = and i1 %6, %5, !dbg !3147
  br i1 %7, label %8, label %9, !dbg !3147

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3148
  unreachable, !dbg !3148

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !3149
  ret i8* %4, !dbg !3150
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3151 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3153, !tbaa !703
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.104, i64 0, i64 0), i32 5) #12, !dbg !3154
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i64 0, i64 0), i8* %2) #12, !dbg !3155
  tail call void @abort() #15, !dbg !3156
  unreachable, !dbg !3156
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3157 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3160, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %1, metadata !3161, metadata !DIExpression()), !dbg !3167
  %3 = icmp eq i64 %0, 0, !dbg !3168
  %4 = icmp eq i64 %1, 0, !dbg !3169
  %5 = or i1 %3, %4, !dbg !3170
  br i1 %5, label %12, label %6, !dbg !3170

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %7, metadata !3163, metadata !DIExpression()), !dbg !3172
  %8 = udiv i64 %7, %1, !dbg !3173
  %9 = icmp eq i64 %8, %0, !dbg !3175
  br i1 %9, label %12, label %10, !dbg !3176

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3177
  store i32 12, i32* %11, align 4, !dbg !3179, !tbaa !703
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3160, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %13, metadata !3161, metadata !DIExpression()), !dbg !3167
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %15, metadata !3162, metadata !DIExpression()), !dbg !3181
  br label %16, !dbg !3182

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3183
  ret i8* %17, !dbg !3184
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3185 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3202, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i8* %1, metadata !3203, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %2, metadata !3204, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3205, metadata !DIExpression()), !dbg !3214
  %6 = bitcast i32* %5 to i8*, !dbg !3215
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3215
  %7 = icmp eq i32* %0, null, !dbg !3216
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3218
  call void @llvm.dbg.value(metadata i32* %8, metadata !3202, metadata !DIExpression()), !dbg !3211
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %9, metadata !3206, metadata !DIExpression()), !dbg !3220
  %10 = icmp ugt i64 %9, -3, !dbg !3221
  %11 = icmp ne i64 %2, 0, !dbg !3222
  %12 = and i1 %11, %10, !dbg !3223
  br i1 %12, label %13, label %18, !dbg !3223

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3224
  br i1 %14, label %18, label %15, !dbg !3225

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3226, !tbaa !738
  call void @llvm.dbg.value(metadata i8 %16, metadata !3208, metadata !DIExpression()), !dbg !3227
  %17 = zext i8 %16 to i32, !dbg !3228
  store i32 %17, i32* %8, align 4, !dbg !3229, !tbaa !703
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3230
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3231
  ret i64 %19, !dbg !3231
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3232 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3271, metadata !DIExpression()), !dbg !3276
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3277
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3278, metadata !DIExpression()), !dbg !3281
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3283
  %4 = load i32, i32* %3, align 8, !dbg !3283, !tbaa !3284
  %5 = and i32 %4, 32, !dbg !3283
  %6 = icmp eq i32 %5, 0, !dbg !3285
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3286
  %8 = icmp ne i32 %7, 0, !dbg !3287
  br i1 %6, label %9, label %19, !dbg !3288

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3290
  %11 = xor i1 %8, true, !dbg !3291
  %12 = or i1 %10, %11, !dbg !3291
  %13 = sext i1 %8 to i32, !dbg !3291
  br i1 %12, label %22, label %14, !dbg !3291

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3292
  %16 = load i32, i32* %15, align 4, !dbg !3292, !tbaa !703
  %17 = icmp ne i32 %16, 9, !dbg !3293
  %18 = sext i1 %17 to i32, !dbg !3294
  br label %22, !dbg !3294

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3295

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3297
  store i32 0, i32* %21, align 4, !dbg !3299, !tbaa !703
  br label %22, !dbg !3297

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3300
  ret i32 %23, !dbg !3301
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3307, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i8 1, metadata !3308, metadata !DIExpression()), !dbg !3311
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %2, metadata !3309, metadata !DIExpression()), !dbg !3313
  %3 = icmp eq i8* %2, null, !dbg !3314
  br i1 %3, label %11, label %4, !dbg !3316

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i64 0, i64 0)) #14, !dbg !3317
  %6 = icmp eq i32 %5, 0, !dbg !3322
  br i1 %6, label %10, label %7, !dbg !3323

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i64 0, i64 0)) #14, !dbg !3324
  %9 = icmp eq i32 %8, 0, !dbg !3325
  br i1 %9, label %10, label %11, !dbg !3326

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3308, metadata !DIExpression()), !dbg !3311
  br label %11, !dbg !3327

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3328
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3329 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %1, metadata !3334, metadata !DIExpression()), !dbg !3336
  %2 = icmp eq i8* %1, null, !dbg !3337
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.118, i64 0, i64 0), i8* %1, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %3, metadata !3334, metadata !DIExpression()), !dbg !3336
  %4 = load i8, i8* %3, align 1, !dbg !3340, !tbaa !738
  %5 = icmp eq i8 %4, 0, !dbg !3344
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0), i8* %3, !dbg !3345
  call void @llvm.dbg.value(metadata i8* %6, metadata !3334, metadata !DIExpression()), !dbg !3336
  ret i8* %6, !dbg !3346
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3347 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3386, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i32 0, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 0, metadata !3389, metadata !DIExpression()), !dbg !3392
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3393
  call void @llvm.dbg.value(metadata i32 %2, metadata !3388, metadata !DIExpression()), !dbg !3394
  %3 = icmp slt i32 %2, 0, !dbg !3395
  br i1 %3, label %4, label %6, !dbg !3397

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3398
  br label %24, !dbg !3399

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3400
  %8 = icmp eq i32 %7, 0, !dbg !3400
  br i1 %8, label %13, label %9, !dbg !3402

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3403
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3404
  %12 = icmp eq i64 %11, -1, !dbg !3405
  br i1 %12, label %16, label %13, !dbg !3406

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3407
  %15 = icmp eq i32 %14, 0, !dbg !3407
  br i1 %15, label %16, label %18, !dbg !3408

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3387, metadata !DIExpression()), !dbg !3391
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %21, metadata !3389, metadata !DIExpression()), !dbg !3392
  br label %24, !dbg !3410

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3411
  %20 = load i32, i32* %19, align 4, !dbg !3411, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %20, metadata !3387, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %20, metadata !3387, metadata !DIExpression()), !dbg !3391
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %21, metadata !3389, metadata !DIExpression()), !dbg !3392
  %22 = icmp eq i32 %20, 0, !dbg !3412
  br i1 %22, label %24, label %23, !dbg !3410

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3414, !tbaa !703
  call void @llvm.dbg.value(metadata i32 -1, metadata !3389, metadata !DIExpression()), !dbg !3392
  br label %24, !dbg !3416

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3417
  ret i32 %25, !dbg !3418
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3419 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3458, metadata !DIExpression()), !dbg !3459
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3460
  br i1 %2, label %6, label %3, !dbg !3462

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3463
  %5 = icmp eq i32 %4, 0, !dbg !3463
  br i1 %5, label %6, label %8, !dbg !3464

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3465
  br label %17, !dbg !3466

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3467, metadata !DIExpression()) #12, !dbg !3472
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3474
  %10 = load i32, i32* %9, align 8, !dbg !3474, !tbaa !3284
  %11 = and i32 %10, 256, !dbg !3476
  %12 = icmp eq i32 %11, 0, !dbg !3476
  br i1 %12, label %15, label %13, !dbg !3477

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3478
  br label %15, !dbg !3478

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3479
  br label %17, !dbg !3480

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3481
  ret i32 %18, !dbg !3482
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3483 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3523, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i64 %1, metadata !3524, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 %2, metadata !3525, metadata !DIExpression()), !dbg !3531
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3532
  %5 = load i8*, i8** %4, align 8, !dbg !3532, !tbaa !3533
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3534
  %7 = load i8*, i8** %6, align 8, !dbg !3534, !tbaa !3535
  %8 = icmp eq i8* %5, %7, !dbg !3536
  br i1 %8, label %9, label %28, !dbg !3537

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3538
  %11 = load i8*, i8** %10, align 8, !dbg !3538, !tbaa !732
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3539
  %13 = load i8*, i8** %12, align 8, !dbg !3539, !tbaa !3540
  %14 = icmp eq i8* %11, %13, !dbg !3541
  br i1 %14, label %15, label %28, !dbg !3542

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3543
  %17 = load i8*, i8** %16, align 8, !dbg !3543, !tbaa !3544
  %18 = icmp eq i8* %17, null, !dbg !3545
  br i1 %18, label %19, label %28, !dbg !3546

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3547
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3548
  call void @llvm.dbg.value(metadata i64 %21, metadata !3526, metadata !DIExpression()), !dbg !3549
  %22 = icmp eq i64 %21, -1, !dbg !3550
  br i1 %22, label %30, label %23, !dbg !3552

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3553
  %25 = load i32, i32* %24, align 8, !dbg !3554, !tbaa !3284
  %26 = and i32 %25, -17, !dbg !3554
  store i32 %26, i32* %24, align 8, !dbg !3554, !tbaa !3284
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3555
  store i64 %21, i64* %27, align 8, !dbg !3556, !tbaa !3557
  br label %30, !dbg !3558

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3559
  br label %30, !dbg !3560

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3561
  ret i32 %31, !dbg !3562
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
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !46, !51, !164, !166, !59, !66, !73, !169, !157, !177, !194, !196, !198, !201, !203, !205, !594, !596, !598}
!llvm.ident = !{!600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600, !600}
!llvm.module.flags = !{!601, !602, !603, !604, !605}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 35, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/dirname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !0}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "dot", scope: !13, file: !3, line: 80, type: !25, isLocal: true, isDefinition: true)
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 78, type: !14, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{!19, !20, !21, !23, !26, !30}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !3, line: 78, type: !16)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !3, line: 78, type: !17)
!21 = !DILocalVariable(name: "use_nuls", scope: !13, file: !3, line: 81, type: !22)
!22 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!23 = !DILocalVariable(name: "result", scope: !13, file: !3, line: 82, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!26 = !DILocalVariable(name: "len", scope: !13, file: !3, line: 83, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !28, line: 62, baseType: !29)
!28 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DILocalVariable(name: "c", scope: !31, file: !3, line: 95, type: !16)
!31 = distinct !DILexicalBlock(scope: !13, file: !3, line: 94, column: 5)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1024, elements: !42)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !35, line: 50, size: 256, elements: !36)
!35 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!36 = !{!37, !38, !39, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 52, baseType: !24, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !34, file: !35, line: 55, baseType: !16, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !34, file: !35, line: 56, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !35, line: 57, baseType: !16, size: 32, offset: 192)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "Version", scope: !46, file: !47, line: 2, type: !24, isLocal: false, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !48)
!47 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!48 = !{!44}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "file_name", scope: !51, file: !56, line: 46, type: !24, isLocal: true, isDefinition: true)
!51 = distinct !DICompileUnit(language: DW_LANG_C99, file: !52, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !53)
!52 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!53 = !{!49, !54}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !51, file: !56, line: 56, type: !22, isLocal: true, isDefinition: true)
!56 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "exit_failure", scope: !59, file: !62, line: 24, type: !63, isLocal: false, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C99, file: !60, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !61)
!60 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!61 = !{!57}
!62 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!63 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "program_name", scope: !66, file: !70, line: 33, type: !24, isLocal: false, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !68, globals: !69)
!67 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!68 = !{!8, !6}
!69 = !{!64}
!70 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !73, file: !116, line: 85, type: !151, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !111, globals: !113)
!74 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!75 = !{!76, !91, !96}
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !77, line: 32, baseType: !78, size: 32, elements: !79)
!77 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!80 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!85 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!86 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!87 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!88 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!89 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!90 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !77, line: 242, baseType: !78, size: 32, elements: !92)
!92 = !{!93, !94, !95}
!93 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!94 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!95 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 46, baseType: !78, size: 32, elements: !98)
!97 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!99 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!111 = !{!16, !112, !27, !6}
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !{!71, !114, !121, !133, !135, !140, !147, !149}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !73, file: !116, line: 101, type: !117, isLocal: false, isDefinition: true)
!116 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 320, elements: !119)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!119 = !{!120}
!120 = !DISubrange(count: 10)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !73, file: !116, line: 1052, type: !123, isLocal: false, isDefinition: true)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !116, line: 65, size: 448, elements: !124)
!124 = !{!125, !126, !127, !131, !132}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !123, file: !116, line: 68, baseType: !76, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !116, line: 71, baseType: !16, size: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !123, file: !116, line: 75, baseType: !128, size: 256, offset: 64)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 8)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !123, file: !116, line: 78, baseType: !24, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !123, file: !116, line: 81, baseType: !24, size: 64, offset: 384)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !73, file: !116, line: 116, type: !123, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "slot0", scope: !73, file: !116, line: 842, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 256)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "slotvec", scope: !73, file: !116, line: 845, type: !142, isLocal: true, isDefinition: true)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !116, line: 834, size: 128, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !143, file: !116, line: 836, baseType: !27, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !143, file: !116, line: 837, baseType: !6, size: 64, offset: 64)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "nslots", scope: !73, file: !116, line: 843, type: !16, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "slotvec0", scope: !73, file: !116, line: 844, type: !143, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 704, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!153 = !{!154}
!154 = !DISubrange(count: 11)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !157, file: !160, line: 26, type: !161, isLocal: false, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !159)
!158 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!159 = !{!155}
!160 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 376, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 47)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!165 = !DIFile(filename: "./lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !168)
!167 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!168 = !{!6}
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !171, retainedTypes: !176)
!170 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!171 = !{!172}
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !173, line: 41, baseType: !78, size: 32, elements: !174)
!173 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!174 = !{!175}
!175 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!176 = !{!8}
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !179, retainedTypes: !193)
!178 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!179 = !{!180}
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !182, file: !181, line: 186, baseType: !78, size: 32, elements: !191)
!181 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!182 = distinct !DISubprogram(name: "x2nrealloc", scope: !181, file: !181, line: 174, type: !183, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !186)
!183 = !DISubroutineType(types: !184)
!184 = !{!8, !8, !185, !27}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!186 = !{!187, !188, !189, !190}
!187 = !DILocalVariable(name: "p", arg: 1, scope: !182, file: !181, line: 174, type: !8)
!188 = !DILocalVariable(name: "pn", arg: 2, scope: !182, file: !181, line: 174, type: !185)
!189 = !DILocalVariable(name: "s", arg: 3, scope: !182, file: !181, line: 174, type: !27)
!190 = !DILocalVariable(name: "n", scope: !182, file: !181, line: 176, type: !27)
!191 = !{!192}
!192 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!193 = !{!27, !6, !8}
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!195 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !176)
!197 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !200)
!199 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!200 = !{!27}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!202 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!204 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !207, retainedTypes: !176)
!206 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!207 = !{!208}
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !209, line: 41, baseType: !78, size: 32, elements: !210)
!209 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593}
!211 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!213 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!214 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!215 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!216 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!217 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!221 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!222 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!223 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!224 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!249 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!250 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!251 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!252 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!253 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!254 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!255 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!256 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!257 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!258 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!259 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!260 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!319 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!406 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!479 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!480 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!481 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!482 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!483 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!484 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!485 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!486 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!487 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!488 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!489 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!490 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!491 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!492 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!493 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!497 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!498 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!499 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!500 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!526 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!527 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!528 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!529 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!530 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!535 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!536 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!537 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!538 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!595 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !176)
!597 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!598 = distinct !DICompileUnit(language: DW_LANG_C99, file: !599, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !176)
!599 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!600 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!601 = !{i32 2, !"Dwarf Version", i32 4}
!602 = !{i32 2, !"Debug Info Version", i32 3}
!603 = !{i32 1, !"wchar_size", i32 4}
!604 = !{i32 7, !"PIC Level", i32 2}
!605 = !{i32 7, !"PIE Level", i32 2}
!606 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 44, type: !607, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !609)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !16}
!609 = !{!610}
!610 = !DILocalVariable(name: "status", arg: 1, scope: !606, file: !3, line: 44, type: !16)
!611 = !DILocalVariable(name: "infomap", scope: !612, file: !613, line: 632, type: !627)
!612 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !613, file: !613, line: 630, type: !614, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !616)
!613 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!614 = !DISubroutineType(types: !615)
!615 = !{null, !24}
!616 = !{!617, !611, !618, !619, !626}
!617 = !DILocalVariable(name: "program", arg: 1, scope: !612, file: !613, line: 630, type: !24)
!618 = !DILocalVariable(name: "node", scope: !612, file: !613, line: 642, type: !24)
!619 = !DILocalVariable(name: "map_prog", scope: !612, file: !613, line: 643, type: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !612, file: !613, line: 632, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !622, file: !613, line: 632, baseType: !24, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !613, line: 632, baseType: !24, size: 64, offset: 64)
!626 = !DILocalVariable(name: "lc_messages", scope: !612, file: !613, line: 655, type: !24)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 896, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 7)
!630 = !DILocation(line: 632, column: 67, scope: !612, inlinedAt: !631)
!631 = distinct !DILocation(line: 72, column: 7, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 49, column: 5)
!633 = distinct !DILexicalBlock(scope: !606, file: !3, line: 46, column: 7)
!634 = !DILocation(line: 44, column: 12, scope: !606)
!635 = !DILocation(line: 46, column: 14, scope: !633)
!636 = !DILocation(line: 46, column: 7, scope: !606)
!637 = !DILocation(line: 47, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !633, file: !3, line: 47, column: 5)
!639 = !{!640, !640, i64 0}
!640 = !{!"any pointer", !641, i64 0}
!641 = !{!"omnipotent char", !642, i64 0}
!642 = !{!"Simple C/C++ TBAA"}
!643 = !DILocation(line: 50, column: 7, scope: !632)
!644 = !DILocation(line: 54, column: 7, scope: !632)
!645 = !DILocation(line: 59, column: 7, scope: !632)
!646 = !DILocation(line: 62, column: 7, scope: !632)
!647 = !DILocation(line: 63, column: 7, scope: !632)
!648 = !DILocation(line: 64, column: 7, scope: !632)
!649 = !DILocation(line: 632, column: 3, scope: !612, inlinedAt: !631)
!650 = !DILocation(line: 643, column: 36, scope: !612, inlinedAt: !631)
!651 = !DILocation(line: 643, column: 25, scope: !612, inlinedAt: !631)
!652 = !DILocation(line: 645, column: 33, scope: !612, inlinedAt: !631)
!653 = !DILocation(line: 645, column: 3, scope: !612, inlinedAt: !631)
!654 = !DILocation(line: 646, column: 13, scope: !612, inlinedAt: !631)
!655 = !DILocation(line: 645, column: 20, scope: !612, inlinedAt: !631)
!656 = !{!657, !640, i64 0}
!657 = !{!"infomap", !640, i64 0, !640, i64 8}
!658 = !DILocation(line: 645, column: 10, scope: !612, inlinedAt: !631)
!659 = !DILocation(line: 645, column: 28, scope: !612, inlinedAt: !631)
!660 = distinct !{!660, !661, !662}
!661 = !DILocation(line: 645, column: 3, scope: !612)
!662 = !DILocation(line: 646, column: 13, scope: !612)
!663 = !DILocation(line: 648, column: 17, scope: !664, inlinedAt: !631)
!664 = distinct !DILexicalBlock(scope: !612, file: !613, line: 648, column: 7)
!665 = !{!657, !640, i64 8}
!666 = !DILocation(line: 648, column: 7, scope: !664, inlinedAt: !631)
!667 = !DILocation(line: 648, column: 7, scope: !612, inlinedAt: !631)
!668 = !DILocation(line: 642, column: 15, scope: !612, inlinedAt: !631)
!669 = !DILocation(line: 651, column: 3, scope: !612, inlinedAt: !631)
!670 = !DILocation(line: 655, column: 29, scope: !612, inlinedAt: !631)
!671 = !DILocation(line: 655, column: 15, scope: !612, inlinedAt: !631)
!672 = !DILocation(line: 656, column: 7, scope: !673, inlinedAt: !631)
!673 = distinct !DILexicalBlock(scope: !612, file: !613, line: 656, column: 7)
!674 = !DILocation(line: 656, column: 19, scope: !673, inlinedAt: !631)
!675 = !DILocation(line: 656, column: 22, scope: !673, inlinedAt: !631)
!676 = !DILocation(line: 656, column: 7, scope: !612, inlinedAt: !631)
!677 = !DILocation(line: 662, column: 7, scope: !678, inlinedAt: !631)
!678 = distinct !DILexicalBlock(scope: !673, file: !613, line: 657, column: 5)
!679 = !DILocation(line: 664, column: 5, scope: !678, inlinedAt: !631)
!680 = !DILocation(line: 665, column: 3, scope: !612, inlinedAt: !631)
!681 = !DILocation(line: 667, column: 3, scope: !612, inlinedAt: !631)
!682 = !DILocation(line: 669, column: 1, scope: !612, inlinedAt: !631)
!683 = !DILocation(line: 74, column: 3, scope: !606)
!684 = !DILocation(line: 78, column: 11, scope: !13)
!685 = !DILocation(line: 78, column: 24, scope: !13)
!686 = !DILocation(line: 81, column: 8, scope: !13)
!687 = !DILocation(line: 86, column: 21, scope: !13)
!688 = !DILocation(line: 86, column: 3, scope: !13)
!689 = !DILocation(line: 87, column: 3, scope: !13)
!690 = !DILocation(line: 88, column: 3, scope: !13)
!691 = !DILocation(line: 89, column: 3, scope: !13)
!692 = !DILocation(line: 91, column: 3, scope: !13)
!693 = !DILocation(line: 93, column: 3, scope: !13)
!694 = !DILocation(line: 95, column: 15, scope: !31)
!695 = !DILocation(line: 95, column: 11, scope: !31)
!696 = !DILocation(line: 97, column: 11, scope: !31)
!697 = !DILocation(line: 106, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !31, file: !3, line: 101, column: 9)
!699 = !DILocation(line: 107, column: 9, scope: !698)
!700 = !DILocation(line: 110, column: 11, scope: !698)
!701 = !DILocation(line: 114, column: 14, scope: !702)
!702 = distinct !DILexicalBlock(scope: !13, file: !3, line: 114, column: 7)
!703 = !{!704, !704, i64 0}
!704 = !{!"int", !641, i64 0}
!705 = !DILocation(line: 114, column: 12, scope: !702)
!706 = !DILocation(line: 114, column: 7, scope: !13)
!707 = !DILocation(line: 120, column: 3, scope: !708)
!708 = distinct !DILexicalBlock(scope: !13, file: !3, line: 120, column: 3)
!709 = !DILocation(line: 116, column: 20, scope: !710)
!710 = distinct !DILexicalBlock(scope: !702, file: !3, line: 115, column: 5)
!711 = !DILocation(line: 116, column: 7, scope: !710)
!712 = !DILocation(line: 117, column: 7, scope: !710)
!713 = !DILocation(line: 122, column: 16, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 121, column: 5)
!715 = distinct !DILexicalBlock(scope: !708, file: !3, line: 120, column: 3)
!716 = !DILocation(line: 82, column: 15, scope: !13)
!717 = !DILocation(line: 123, column: 13, scope: !714)
!718 = !DILocation(line: 83, column: 10, scope: !13)
!719 = !DILocation(line: 125, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !714, file: !3, line: 125, column: 11)
!721 = !DILocation(line: 125, column: 11, scope: !714)
!722 = !DILocation(line: 131, column: 7, scope: !714)
!723 = !DILocalVariable(name: "__c", arg: 1, scope: !724, file: !725, line: 108, type: !16)
!724 = distinct !DISubprogram(name: "putchar_unlocked", scope: !725, file: !725, line: 108, type: !726, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !728)
!725 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!726 = !DISubroutineType(types: !727)
!727 = !{!16, !16}
!728 = !{!723}
!729 = !DILocation(line: 108, column: 23, scope: !724, inlinedAt: !730)
!730 = distinct !DILocation(line: 132, column: 7, scope: !714)
!731 = !DILocation(line: 110, column: 10, scope: !724, inlinedAt: !730)
!732 = !{!733, !640, i64 40}
!733 = !{!"_IO_FILE", !704, i64 0, !640, i64 8, !640, i64 16, !640, i64 24, !640, i64 32, !640, i64 40, !640, i64 48, !640, i64 56, !640, i64 64, !640, i64 72, !640, i64 80, !640, i64 88, !640, i64 96, !640, i64 104, !704, i64 112, !704, i64 116, !734, i64 120, !735, i64 128, !641, i64 130, !641, i64 131, !640, i64 136, !734, i64 144, !640, i64 152, !640, i64 160, !640, i64 168, !640, i64 176, !734, i64 184, !704, i64 192, !641, i64 196}
!734 = !{!"long", !641, i64 0}
!735 = !{!"short", !641, i64 0}
!736 = !{!733, !640, i64 48}
!737 = !{!"branch_weights", i32 2000, i32 1}
!738 = !{!641, !641, i64 0}
!739 = !DILocation(line: 120, column: 31, scope: !715)
!740 = !DILocation(line: 120, column: 17, scope: !715)
!741 = distinct !{!741, !707, !742}
!742 = !DILocation(line: 133, column: 5, scope: !708)
!743 = !DILocation(line: 136, column: 1, scope: !13)
!744 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !56, file: !56, line: 51, type: !614, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !745)
!745 = !{!746}
!746 = !DILocalVariable(name: "file", arg: 1, scope: !744, file: !56, line: 51, type: !24)
!747 = !DILocation(line: 51, column: 41, scope: !744)
!748 = !DILocation(line: 53, column: 13, scope: !744)
!749 = !DILocation(line: 54, column: 1, scope: !744)
!750 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !56, file: !56, line: 88, type: !751, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !22}
!753 = !{!754}
!754 = !DILocalVariable(name: "ignore", arg: 1, scope: !750, file: !56, line: 88, type: !22)
!755 = !DILocation(line: 88, column: 37, scope: !750)
!756 = !DILocation(line: 90, column: 16, scope: !750)
!757 = !{!758, !758, i64 0}
!758 = !{!"_Bool", !641, i64 0}
!759 = !DILocation(line: 91, column: 1, scope: !750)
!760 = distinct !DISubprogram(name: "close_stdout", scope: !56, file: !56, line: 117, type: !761, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !51, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{null}
!763 = !{!764}
!764 = !DILocalVariable(name: "write_error", scope: !765, file: !56, line: 122, type: !24)
!765 = distinct !DILexicalBlock(scope: !766, file: !56, line: 121, column: 5)
!766 = distinct !DILexicalBlock(scope: !760, file: !56, line: 119, column: 7)
!767 = !DILocation(line: 119, column: 21, scope: !766)
!768 = !DILocation(line: 119, column: 7, scope: !766)
!769 = !DILocation(line: 119, column: 29, scope: !766)
!770 = !DILocation(line: 120, column: 7, scope: !766)
!771 = !DILocation(line: 120, column: 12, scope: !766)
!772 = !{i8 0, i8 2}
!773 = !DILocation(line: 120, column: 25, scope: !766)
!774 = !DILocation(line: 120, column: 28, scope: !766)
!775 = !DILocation(line: 120, column: 34, scope: !766)
!776 = !DILocation(line: 119, column: 7, scope: !760)
!777 = !DILocation(line: 122, column: 33, scope: !765)
!778 = !DILocation(line: 122, column: 19, scope: !765)
!779 = !DILocation(line: 123, column: 11, scope: !780)
!780 = distinct !DILexicalBlock(scope: !765, file: !56, line: 123, column: 11)
!781 = !DILocation(line: 0, scope: !780)
!782 = !DILocation(line: 123, column: 11, scope: !765)
!783 = !DILocation(line: 124, column: 36, scope: !780)
!784 = !DILocation(line: 124, column: 9, scope: !780)
!785 = !DILocation(line: 127, column: 9, scope: !780)
!786 = !DILocation(line: 129, column: 14, scope: !765)
!787 = !DILocation(line: 129, column: 7, scope: !765)
!788 = !DILocation(line: 134, column: 42, scope: !789)
!789 = distinct !DILexicalBlock(scope: !760, file: !56, line: 134, column: 7)
!790 = !DILocation(line: 134, column: 28, scope: !789)
!791 = !DILocation(line: 134, column: 50, scope: !789)
!792 = !DILocation(line: 134, column: 7, scope: !760)
!793 = !DILocation(line: 135, column: 12, scope: !789)
!794 = !DILocation(line: 135, column: 5, scope: !789)
!795 = !DILocation(line: 136, column: 1, scope: !760)
!796 = distinct !DISubprogram(name: "dir_len", scope: !797, file: !797, line: 32, type: !798, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !800)
!797 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!798 = !DISubroutineType(types: !799)
!799 = !{!27, !24}
!800 = !{!801, !802, !803}
!801 = !DILocalVariable(name: "file", arg: 1, scope: !796, file: !797, line: 32, type: !24)
!802 = !DILocalVariable(name: "prefix_length", scope: !796, file: !797, line: 34, type: !27)
!803 = !DILocalVariable(name: "length", scope: !796, file: !797, line: 35, type: !27)
!804 = !DILocation(line: 32, column: 22, scope: !796)
!805 = !DILocation(line: 34, column: 10, scope: !796)
!806 = !DILocation(line: 41, column: 24, scope: !796)
!807 = !DILocation(line: 38, column: 20, scope: !796)
!808 = !DILocation(line: 48, column: 17, scope: !809)
!809 = distinct !DILexicalBlock(scope: !796, file: !797, line: 48, column: 3)
!810 = !DILocation(line: 48, column: 39, scope: !809)
!811 = !DILocation(line: 35, column: 10, scope: !796)
!812 = !DILocation(line: 48, column: 8, scope: !809)
!813 = !DILocation(line: 0, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !797, line: 48, column: 3)
!815 = !DILocation(line: 49, column: 22, scope: !814)
!816 = !DILocation(line: 48, column: 3, scope: !809)
!817 = !DILocation(line: 50, column: 11, scope: !818)
!818 = distinct !DILexicalBlock(scope: !814, file: !797, line: 50, column: 9)
!819 = !DILocation(line: 50, column: 9, scope: !814)
!820 = distinct !{!820, !816, !821}
!821 = !DILocation(line: 51, column: 7, scope: !809)
!822 = !DILocation(line: 52, column: 3, scope: !796)
!823 = distinct !DISubprogram(name: "mdir_name", scope: !797, file: !797, line: 71, type: !824, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!6, !24}
!826 = !{!827, !828, !829, !830}
!827 = !DILocalVariable(name: "file", arg: 1, scope: !823, file: !797, line: 71, type: !24)
!828 = !DILocalVariable(name: "length", scope: !823, file: !797, line: 73, type: !27)
!829 = !DILocalVariable(name: "append_dot", scope: !823, file: !797, line: 74, type: !22)
!830 = !DILocalVariable(name: "dir", scope: !823, file: !797, line: 78, type: !6)
!831 = !DILocation(line: 71, column: 24, scope: !823)
!832 = !DILocation(line: 32, column: 22, scope: !796, inlinedAt: !833)
!833 = distinct !DILocation(line: 73, column: 19, scope: !823)
!834 = !DILocation(line: 34, column: 10, scope: !796, inlinedAt: !833)
!835 = !DILocation(line: 41, column: 24, scope: !796, inlinedAt: !833)
!836 = !DILocation(line: 38, column: 20, scope: !796, inlinedAt: !833)
!837 = !DILocation(line: 48, column: 17, scope: !809, inlinedAt: !833)
!838 = !DILocation(line: 48, column: 39, scope: !809, inlinedAt: !833)
!839 = !DILocation(line: 35, column: 10, scope: !796, inlinedAt: !833)
!840 = !DILocation(line: 48, column: 8, scope: !809, inlinedAt: !833)
!841 = !DILocation(line: 0, scope: !814, inlinedAt: !833)
!842 = !DILocation(line: 49, column: 22, scope: !814, inlinedAt: !833)
!843 = !DILocation(line: 48, column: 3, scope: !809, inlinedAt: !833)
!844 = !DILocation(line: 50, column: 11, scope: !818, inlinedAt: !833)
!845 = !DILocation(line: 50, column: 9, scope: !814, inlinedAt: !833)
!846 = !DILocation(line: 73, column: 10, scope: !823)
!847 = !DILocation(line: 74, column: 29, scope: !823)
!848 = !DILocation(line: 78, column: 32, scope: !823)
!849 = !DILocation(line: 78, column: 30, scope: !823)
!850 = !DILocation(line: 78, column: 43, scope: !823)
!851 = !DILocation(line: 78, column: 15, scope: !823)
!852 = !DILocation(line: 78, column: 9, scope: !823)
!853 = !DILocation(line: 79, column: 8, scope: !854)
!854 = distinct !DILexicalBlock(scope: !823, file: !797, line: 79, column: 7)
!855 = !DILocation(line: 79, column: 7, scope: !823)
!856 = !DILocation(line: 81, column: 3, scope: !823)
!857 = !DILocation(line: 82, column: 7, scope: !823)
!858 = !DILocation(line: 83, column: 19, scope: !859)
!859 = distinct !DILexicalBlock(scope: !823, file: !797, line: 82, column: 7)
!860 = !DILocation(line: 83, column: 5, scope: !859)
!861 = !DILocation(line: 0, scope: !823)
!862 = !DILocation(line: 84, column: 3, scope: !823)
!863 = !DILocation(line: 84, column: 15, scope: !823)
!864 = !DILocation(line: 85, column: 3, scope: !823)
!865 = !DILocation(line: 86, column: 1, scope: !823)
!866 = distinct !DISubprogram(name: "last_component", scope: !867, file: !867, line: 30, type: !824, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !868)
!867 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!868 = !{!869, !870, !871, !872}
!869 = !DILocalVariable(name: "name", arg: 1, scope: !866, file: !867, line: 30, type: !24)
!870 = !DILocalVariable(name: "base", scope: !866, file: !867, line: 32, type: !24)
!871 = !DILocalVariable(name: "p", scope: !866, file: !867, line: 33, type: !24)
!872 = !DILocalVariable(name: "saw_slash", scope: !866, file: !867, line: 34, type: !22)
!873 = !DILocation(line: 30, column: 29, scope: !866)
!874 = !DILocation(line: 32, column: 15, scope: !866)
!875 = !DILocation(line: 34, column: 8, scope: !866)
!876 = !DILocation(line: 36, column: 3, scope: !866)
!877 = !DILocation(line: 0, scope: !866)
!878 = !DILocation(line: 36, column: 10, scope: !866)
!879 = !DILocation(line: 37, column: 9, scope: !866)
!880 = distinct !{!880, !876, !879}
!881 = !DILocation(line: 39, column: 18, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !867, line: 39, column: 3)
!883 = distinct !DILexicalBlock(scope: !866, file: !867, line: 39, column: 3)
!884 = !DILocation(line: 0, scope: !882)
!885 = !DILocation(line: 0, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !867, line: 41, column: 11)
!887 = distinct !DILexicalBlock(scope: !882, file: !867, line: 40, column: 5)
!888 = !DILocation(line: 33, column: 15, scope: !866)
!889 = !DILocation(line: 39, column: 3, scope: !883)
!890 = !DILocation(line: 43, column: 16, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !867, line: 43, column: 16)
!892 = !DILocation(line: 43, column: 16, scope: !886)
!893 = !DILocation(line: 39, column: 23, scope: !882)
!894 = !DILocation(line: 39, column: 3, scope: !882)
!895 = distinct !{!895, !889, !896}
!896 = !DILocation(line: 48, column: 5, scope: !883)
!897 = !DILocation(line: 50, column: 3, scope: !866)
!898 = distinct !DISubprogram(name: "base_len", scope: !867, file: !867, line: 58, type: !798, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !899)
!899 = !{!900, !901, !902}
!900 = !DILocalVariable(name: "name", arg: 1, scope: !898, file: !867, line: 58, type: !24)
!901 = !DILocalVariable(name: "len", scope: !898, file: !867, line: 60, type: !27)
!902 = !DILocalVariable(name: "prefix_len", scope: !898, file: !867, line: 61, type: !27)
!903 = !DILocation(line: 58, column: 23, scope: !898)
!904 = !DILocation(line: 61, column: 10, scope: !898)
!905 = !DILocation(line: 63, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !898, file: !867, line: 63, column: 3)
!907 = !DILocation(line: 60, column: 10, scope: !898)
!908 = !DILocation(line: 63, column: 8, scope: !906)
!909 = !DILocation(line: 0, scope: !910)
!910 = distinct !DILexicalBlock(scope: !906, file: !867, line: 63, column: 3)
!911 = !DILocation(line: 63, column: 32, scope: !910)
!912 = !DILocation(line: 63, column: 38, scope: !910)
!913 = !DILocation(line: 63, column: 41, scope: !910)
!914 = !DILocation(line: 63, column: 3, scope: !906)
!915 = distinct !{!915, !914, !916}
!916 = !DILocation(line: 64, column: 5, scope: !906)
!917 = !DILocation(line: 74, column: 3, scope: !898)
!918 = distinct !DISubprogram(name: "set_program_name", scope: !70, file: !70, line: 39, type: !614, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !66, retainedNodes: !919)
!919 = !{!920, !921, !922}
!920 = !DILocalVariable(name: "argv0", arg: 1, scope: !918, file: !70, line: 39, type: !24)
!921 = !DILocalVariable(name: "slash", scope: !918, file: !70, line: 46, type: !24)
!922 = !DILocalVariable(name: "base", scope: !918, file: !70, line: 47, type: !24)
!923 = !DILocation(line: 39, column: 31, scope: !918)
!924 = !DILocation(line: 51, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !918, file: !70, line: 51, column: 7)
!926 = !DILocation(line: 51, column: 7, scope: !918)
!927 = !DILocation(line: 55, column: 14, scope: !928)
!928 = distinct !DILexicalBlock(scope: !925, file: !70, line: 52, column: 5)
!929 = !DILocation(line: 54, column: 7, scope: !928)
!930 = !DILocation(line: 56, column: 7, scope: !928)
!931 = !DILocation(line: 59, column: 11, scope: !918)
!932 = !DILocation(line: 46, column: 15, scope: !918)
!933 = !DILocation(line: 60, column: 17, scope: !918)
!934 = !DILocation(line: 60, column: 33, scope: !918)
!935 = !DILocation(line: 60, column: 11, scope: !918)
!936 = !DILocation(line: 47, column: 15, scope: !918)
!937 = !DILocation(line: 61, column: 12, scope: !938)
!938 = distinct !DILexicalBlock(scope: !918, file: !70, line: 61, column: 7)
!939 = !DILocation(line: 61, column: 20, scope: !938)
!940 = !DILocation(line: 61, column: 25, scope: !938)
!941 = !DILocation(line: 61, column: 42, scope: !938)
!942 = !DILocation(line: 61, column: 28, scope: !938)
!943 = !DILocation(line: 61, column: 61, scope: !938)
!944 = !DILocation(line: 61, column: 7, scope: !918)
!945 = !DILocation(line: 64, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !70, line: 64, column: 11)
!947 = distinct !DILexicalBlock(scope: !938, file: !70, line: 62, column: 5)
!948 = !DILocation(line: 64, column: 36, scope: !946)
!949 = !DILocation(line: 64, column: 11, scope: !947)
!950 = !DILocation(line: 66, column: 24, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !70, line: 65, column: 9)
!952 = !DILocation(line: 70, column: 41, scope: !951)
!953 = !DILocation(line: 72, column: 9, scope: !951)
!954 = !DILocation(line: 84, column: 16, scope: !918)
!955 = !DILocation(line: 90, column: 27, scope: !918)
!956 = !DILocation(line: 92, column: 1, scope: !918)
!957 = distinct !DISubprogram(name: "clone_quoting_options", scope: !116, file: !116, line: 122, type: !958, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !961)
!958 = !DISubroutineType(types: !959)
!959 = !{!960, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "o", arg: 1, scope: !957, file: !116, line: 122, type: !960)
!963 = !DILocalVariable(name: "e", scope: !957, file: !116, line: 124, type: !16)
!964 = !DILocalVariable(name: "p", scope: !957, file: !116, line: 125, type: !960)
!965 = !DILocation(line: 122, column: 48, scope: !957)
!966 = !DILocation(line: 124, column: 11, scope: !957)
!967 = !DILocation(line: 124, column: 7, scope: !957)
!968 = !DILocation(line: 125, column: 40, scope: !957)
!969 = !DILocation(line: 125, column: 31, scope: !957)
!970 = !DILocation(line: 125, column: 27, scope: !957)
!971 = !DILocation(line: 127, column: 9, scope: !957)
!972 = !DILocation(line: 128, column: 3, scope: !957)
!973 = distinct !DISubprogram(name: "get_quoting_style", scope: !116, file: !116, line: 133, type: !974, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !978)
!974 = !DISubroutineType(types: !975)
!975 = !{!76, !976}
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!978 = !{!979}
!979 = !DILocalVariable(name: "o", arg: 1, scope: !973, file: !116, line: 133, type: !976)
!980 = !DILocation(line: 133, column: 50, scope: !973)
!981 = !DILocation(line: 135, column: 11, scope: !973)
!982 = !DILocation(line: 135, column: 46, scope: !973)
!983 = !{!984, !641, i64 0}
!984 = !{!"quoting_options", !641, i64 0, !704, i64 4, !641, i64 8, !640, i64 40, !640, i64 48}
!985 = !DILocation(line: 135, column: 3, scope: !973)
!986 = distinct !DISubprogram(name: "set_quoting_style", scope: !116, file: !116, line: 141, type: !987, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !989)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !960, !76}
!989 = !{!990, !991}
!990 = !DILocalVariable(name: "o", arg: 1, scope: !986, file: !116, line: 141, type: !960)
!991 = !DILocalVariable(name: "s", arg: 2, scope: !986, file: !116, line: 141, type: !76)
!992 = !DILocation(line: 141, column: 44, scope: !986)
!993 = !DILocation(line: 141, column: 66, scope: !986)
!994 = !DILocation(line: 143, column: 4, scope: !986)
!995 = !DILocation(line: 143, column: 39, scope: !986)
!996 = !DILocation(line: 143, column: 45, scope: !986)
!997 = !DILocation(line: 144, column: 1, scope: !986)
!998 = distinct !DISubprogram(name: "set_char_quoting", scope: !116, file: !116, line: 152, type: !999, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!16, !960, !7, !16}
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1008, !1009}
!1002 = !DILocalVariable(name: "o", arg: 1, scope: !998, file: !116, line: 152, type: !960)
!1003 = !DILocalVariable(name: "c", arg: 2, scope: !998, file: !116, line: 152, type: !7)
!1004 = !DILocalVariable(name: "i", arg: 3, scope: !998, file: !116, line: 152, type: !16)
!1005 = !DILocalVariable(name: "uc", scope: !998, file: !116, line: 154, type: !9)
!1006 = !DILocalVariable(name: "p", scope: !998, file: !116, line: 155, type: !1007)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1008 = !DILocalVariable(name: "shift", scope: !998, file: !116, line: 157, type: !16)
!1009 = !DILocalVariable(name: "r", scope: !998, file: !116, line: 158, type: !16)
!1010 = !DILocation(line: 152, column: 43, scope: !998)
!1011 = !DILocation(line: 152, column: 51, scope: !998)
!1012 = !DILocation(line: 152, column: 58, scope: !998)
!1013 = !DILocation(line: 154, column: 17, scope: !998)
!1014 = !DILocation(line: 156, column: 6, scope: !998)
!1015 = !DILocation(line: 156, column: 62, scope: !998)
!1016 = !DILocation(line: 156, column: 57, scope: !998)
!1017 = !DILocation(line: 155, column: 17, scope: !998)
!1018 = !DILocation(line: 157, column: 15, scope: !998)
!1019 = !DILocation(line: 157, column: 7, scope: !998)
!1020 = !DILocation(line: 158, column: 12, scope: !998)
!1021 = !DILocation(line: 158, column: 15, scope: !998)
!1022 = !DILocation(line: 158, column: 25, scope: !998)
!1023 = !DILocation(line: 158, column: 7, scope: !998)
!1024 = !DILocation(line: 159, column: 13, scope: !998)
!1025 = !DILocation(line: 159, column: 18, scope: !998)
!1026 = !DILocation(line: 159, column: 23, scope: !998)
!1027 = !DILocation(line: 159, column: 6, scope: !998)
!1028 = !DILocation(line: 160, column: 3, scope: !998)
!1029 = distinct !DISubprogram(name: "set_quoting_flags", scope: !116, file: !116, line: 168, type: !1030, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!16, !960, !16}
!1032 = !{!1033, !1034, !1035}
!1033 = !DILocalVariable(name: "o", arg: 1, scope: !1029, file: !116, line: 168, type: !960)
!1034 = !DILocalVariable(name: "i", arg: 2, scope: !1029, file: !116, line: 168, type: !16)
!1035 = !DILocalVariable(name: "r", scope: !1029, file: !116, line: 170, type: !16)
!1036 = !DILocation(line: 168, column: 44, scope: !1029)
!1037 = !DILocation(line: 168, column: 51, scope: !1029)
!1038 = !DILocation(line: 171, column: 8, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1029, file: !116, line: 171, column: 7)
!1040 = !DILocation(line: 171, column: 7, scope: !1029)
!1041 = !DILocation(line: 173, column: 10, scope: !1029)
!1042 = !{!984, !704, i64 4}
!1043 = !DILocation(line: 170, column: 7, scope: !1029)
!1044 = !DILocation(line: 174, column: 12, scope: !1029)
!1045 = !DILocation(line: 175, column: 3, scope: !1029)
!1046 = distinct !DISubprogram(name: "set_custom_quoting", scope: !116, file: !116, line: 179, type: !1047, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !960, !24, !24}
!1049 = !{!1050, !1051, !1052}
!1050 = !DILocalVariable(name: "o", arg: 1, scope: !1046, file: !116, line: 179, type: !960)
!1051 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1046, file: !116, line: 180, type: !24)
!1052 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1046, file: !116, line: 180, type: !24)
!1053 = !DILocation(line: 179, column: 45, scope: !1046)
!1054 = !DILocation(line: 180, column: 33, scope: !1046)
!1055 = !DILocation(line: 180, column: 57, scope: !1046)
!1056 = !DILocation(line: 182, column: 8, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1046, file: !116, line: 182, column: 7)
!1058 = !DILocation(line: 182, column: 7, scope: !1046)
!1059 = !DILocation(line: 184, column: 6, scope: !1046)
!1060 = !DILocation(line: 184, column: 12, scope: !1046)
!1061 = !DILocation(line: 185, column: 8, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1046, file: !116, line: 185, column: 7)
!1063 = !DILocation(line: 185, column: 23, scope: !1062)
!1064 = !DILocation(line: 185, column: 19, scope: !1062)
!1065 = !DILocation(line: 186, column: 5, scope: !1062)
!1066 = !DILocation(line: 187, column: 6, scope: !1046)
!1067 = !DILocation(line: 187, column: 17, scope: !1046)
!1068 = !{!984, !640, i64 40}
!1069 = !DILocation(line: 188, column: 6, scope: !1046)
!1070 = !DILocation(line: 188, column: 18, scope: !1046)
!1071 = !{!984, !640, i64 48}
!1072 = !DILocation(line: 189, column: 1, scope: !1046)
!1073 = distinct !DISubprogram(name: "quotearg_buffer", scope: !116, file: !116, line: 784, type: !1074, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!27, !6, !27, !24, !27, !976}
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084}
!1077 = !DILocalVariable(name: "buffer", arg: 1, scope: !1073, file: !116, line: 784, type: !6)
!1078 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1073, file: !116, line: 784, type: !27)
!1079 = !DILocalVariable(name: "arg", arg: 3, scope: !1073, file: !116, line: 785, type: !24)
!1080 = !DILocalVariable(name: "argsize", arg: 4, scope: !1073, file: !116, line: 785, type: !27)
!1081 = !DILocalVariable(name: "o", arg: 5, scope: !1073, file: !116, line: 786, type: !976)
!1082 = !DILocalVariable(name: "p", scope: !1073, file: !116, line: 788, type: !976)
!1083 = !DILocalVariable(name: "e", scope: !1073, file: !116, line: 789, type: !16)
!1084 = !DILocalVariable(name: "r", scope: !1073, file: !116, line: 790, type: !27)
!1085 = !DILocation(line: 784, column: 24, scope: !1073)
!1086 = !DILocation(line: 784, column: 39, scope: !1073)
!1087 = !DILocation(line: 785, column: 30, scope: !1073)
!1088 = !DILocation(line: 785, column: 42, scope: !1073)
!1089 = !DILocation(line: 786, column: 48, scope: !1073)
!1090 = !DILocation(line: 788, column: 37, scope: !1073)
!1091 = !DILocation(line: 788, column: 33, scope: !1073)
!1092 = !DILocation(line: 789, column: 11, scope: !1073)
!1093 = !DILocation(line: 789, column: 7, scope: !1073)
!1094 = !DILocation(line: 791, column: 43, scope: !1073)
!1095 = !DILocation(line: 791, column: 53, scope: !1073)
!1096 = !DILocation(line: 791, column: 60, scope: !1073)
!1097 = !DILocation(line: 792, column: 43, scope: !1073)
!1098 = !DILocation(line: 792, column: 58, scope: !1073)
!1099 = !DILocation(line: 790, column: 14, scope: !1073)
!1100 = !DILocation(line: 790, column: 10, scope: !1073)
!1101 = !DILocation(line: 793, column: 9, scope: !1073)
!1102 = !DILocation(line: 794, column: 3, scope: !1073)
!1103 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !116, file: !116, line: 256, type: !1104, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1108)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!27, !6, !27, !24, !27, !76, !16, !1106, !24, !24}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1133, !1134, !1135, !1136, !1137, !1140, !1141, !1157, !1160, !1161, !1168}
!1109 = !DILocalVariable(name: "buffer", arg: 1, scope: !1103, file: !116, line: 256, type: !6)
!1110 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1103, file: !116, line: 256, type: !27)
!1111 = !DILocalVariable(name: "arg", arg: 3, scope: !1103, file: !116, line: 257, type: !24)
!1112 = !DILocalVariable(name: "argsize", arg: 4, scope: !1103, file: !116, line: 257, type: !27)
!1113 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1103, file: !116, line: 258, type: !76)
!1114 = !DILocalVariable(name: "flags", arg: 6, scope: !1103, file: !116, line: 258, type: !16)
!1115 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1103, file: !116, line: 259, type: !1106)
!1116 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1103, file: !116, line: 260, type: !24)
!1117 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1103, file: !116, line: 261, type: !24)
!1118 = !DILocalVariable(name: "i", scope: !1103, file: !116, line: 263, type: !27)
!1119 = !DILocalVariable(name: "len", scope: !1103, file: !116, line: 264, type: !27)
!1120 = !DILocalVariable(name: "orig_buffersize", scope: !1103, file: !116, line: 265, type: !27)
!1121 = !DILocalVariable(name: "quote_string", scope: !1103, file: !116, line: 266, type: !24)
!1122 = !DILocalVariable(name: "quote_string_len", scope: !1103, file: !116, line: 267, type: !27)
!1123 = !DILocalVariable(name: "backslash_escapes", scope: !1103, file: !116, line: 268, type: !22)
!1124 = !DILocalVariable(name: "unibyte_locale", scope: !1103, file: !116, line: 269, type: !22)
!1125 = !DILocalVariable(name: "elide_outer_quotes", scope: !1103, file: !116, line: 270, type: !22)
!1126 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1103, file: !116, line: 271, type: !22)
!1127 = !DILocalVariable(name: "encountered_single_quote", scope: !1103, file: !116, line: 272, type: !22)
!1128 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1103, file: !116, line: 273, type: !22)
!1129 = !DILocalVariable(name: "c", scope: !1130, file: !116, line: 402, type: !9)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !116, line: 401, column: 5)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !116, line: 400, column: 3)
!1132 = distinct !DILexicalBlock(scope: !1103, file: !116, line: 400, column: 3)
!1133 = !DILocalVariable(name: "esc", scope: !1130, file: !116, line: 403, type: !9)
!1134 = !DILocalVariable(name: "is_right_quote", scope: !1130, file: !116, line: 404, type: !22)
!1135 = !DILocalVariable(name: "escaping", scope: !1130, file: !116, line: 405, type: !22)
!1136 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1130, file: !116, line: 406, type: !22)
!1137 = !DILocalVariable(name: "m", scope: !1138, file: !116, line: 610, type: !27)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 608, column: 11)
!1139 = distinct !DILexicalBlock(scope: !1130, file: !116, line: 426, column: 9)
!1140 = !DILocalVariable(name: "printable", scope: !1138, file: !116, line: 612, type: !22)
!1141 = !DILocalVariable(name: "mbstate", scope: !1142, file: !116, line: 621, type: !1144)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !116, line: 620, column: 15)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !116, line: 614, column: 17)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1145, line: 6, baseType: !1146)
!1145 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1147, line: 21, baseType: !1148)
!1147 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 13, size: 64, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1148, file: !1147, line: 15, baseType: !16, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1148, file: !1147, line: 20, baseType: !1152, size: 32, offset: 32)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !1147, line: 16, size: 32, elements: !1153)
!1153 = !{!1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1152, file: !1147, line: 18, baseType: !78, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1152, file: !1147, line: 19, baseType: !1156, size: 32)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !42)
!1157 = !DILocalVariable(name: "w", scope: !1158, file: !116, line: 631, type: !1159)
!1158 = distinct !DILexicalBlock(scope: !1142, file: !116, line: 630, column: 19)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !28, line: 90, baseType: !16)
!1160 = !DILocalVariable(name: "bytes", scope: !1158, file: !116, line: 632, type: !27)
!1161 = !DILocalVariable(name: "j", scope: !1162, file: !116, line: 657, type: !27)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !116, line: 656, column: 27)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !116, line: 654, column: 29)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !116, line: 649, column: 23)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !116, line: 641, column: 30)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !116, line: 636, column: 30)
!1167 = distinct !DILexicalBlock(scope: !1158, file: !116, line: 634, column: 25)
!1168 = !DILocalVariable(name: "ilim", scope: !1169, file: !116, line: 684, type: !27)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !116, line: 681, column: 15)
!1170 = distinct !DILexicalBlock(scope: !1138, file: !116, line: 680, column: 17)
!1171 = !DILocation(line: 256, column: 33, scope: !1103)
!1172 = !DILocation(line: 256, column: 48, scope: !1103)
!1173 = !DILocation(line: 257, column: 39, scope: !1103)
!1174 = !DILocation(line: 257, column: 51, scope: !1103)
!1175 = !DILocation(line: 258, column: 46, scope: !1103)
!1176 = !DILocation(line: 258, column: 65, scope: !1103)
!1177 = !DILocation(line: 259, column: 47, scope: !1103)
!1178 = !DILocation(line: 260, column: 39, scope: !1103)
!1179 = !DILocation(line: 261, column: 39, scope: !1103)
!1180 = !DILocation(line: 264, column: 10, scope: !1103)
!1181 = !DILocation(line: 265, column: 10, scope: !1103)
!1182 = !DILocation(line: 266, column: 15, scope: !1103)
!1183 = !DILocation(line: 267, column: 10, scope: !1103)
!1184 = !DILocation(line: 268, column: 8, scope: !1103)
!1185 = !DILocation(line: 269, column: 25, scope: !1103)
!1186 = !DILocation(line: 269, column: 36, scope: !1103)
!1187 = !DILocation(line: 270, column: 8, scope: !1103)
!1188 = !DILocation(line: 271, column: 8, scope: !1103)
!1189 = !DILocation(line: 272, column: 8, scope: !1103)
!1190 = !DILocation(line: 273, column: 8, scope: !1103)
!1191 = !DILocation(line: 273, column: 3, scope: !1103)
!1192 = !DILocation(line: 0, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1103, file: !116, line: 317, column: 5)
!1194 = !DILocation(line: 316, column: 3, scope: !1103)
!1195 = !DILocation(line: 323, column: 11, scope: !1193)
!1196 = !DILocation(line: 323, column: 12, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !116, line: 323, column: 11)
!1198 = !DILocation(line: 324, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !116, line: 324, column: 9)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !116, line: 324, column: 9)
!1201 = !DILocation(line: 324, column: 9, scope: !1200)
!1202 = !DILocation(line: 362, column: 26, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !116, line: 340, column: 11)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !116, line: 339, column: 13)
!1205 = distinct !DILexicalBlock(scope: !1193, file: !116, line: 338, column: 7)
!1206 = !DILocation(line: 363, column: 27, scope: !1203)
!1207 = !DILocation(line: 364, column: 11, scope: !1203)
!1208 = !DILocation(line: 365, column: 14, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !116, line: 365, column: 13)
!1210 = !DILocation(line: 365, column: 13, scope: !1205)
!1211 = !DILocation(line: 366, column: 43, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !116, line: 366, column: 11)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !116, line: 366, column: 11)
!1214 = !DILocation(line: 366, column: 11, scope: !1213)
!1215 = !DILocation(line: 367, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !116, line: 367, column: 13)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !116, line: 367, column: 13)
!1218 = !DILocation(line: 367, column: 13, scope: !1217)
!1219 = !DILocation(line: 366, column: 70, scope: !1212)
!1220 = distinct !{!1220, !1214, !1221}
!1221 = !DILocation(line: 367, column: 13, scope: !1213)
!1222 = !DILocation(line: 370, column: 28, scope: !1205)
!1223 = !DILocation(line: 372, column: 7, scope: !1193)
!1224 = !DILocation(line: 376, column: 7, scope: !1193)
!1225 = !DILocation(line: 379, column: 7, scope: !1193)
!1226 = !DILocation(line: 381, column: 12, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1193, file: !116, line: 381, column: 11)
!1228 = !DILocation(line: 381, column: 11, scope: !1193)
!1229 = !DILocation(line: 0, scope: !1227)
!1230 = !DILocation(line: 386, column: 12, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1193, file: !116, line: 386, column: 11)
!1232 = !DILocation(line: 386, column: 11, scope: !1193)
!1233 = !DILocation(line: 387, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !116, line: 387, column: 9)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !116, line: 387, column: 9)
!1236 = !DILocation(line: 387, column: 9, scope: !1235)
!1237 = !DILocation(line: 394, column: 7, scope: !1193)
!1238 = !DILocation(line: 397, column: 7, scope: !1193)
!1239 = !DILocation(line: 0, scope: !1103)
!1240 = !DILocation(line: 263, column: 10, scope: !1103)
!1241 = !DILocation(line: 400, column: 8, scope: !1132)
!1242 = !DILocation(line: 0, scope: !1131)
!1243 = !DILocation(line: 400, column: 27, scope: !1131)
!1244 = !DILocation(line: 400, column: 19, scope: !1131)
!1245 = !DILocation(line: 400, column: 41, scope: !1131)
!1246 = !DILocation(line: 400, column: 48, scope: !1131)
!1247 = !DILocation(line: 400, column: 3, scope: !1132)
!1248 = !DILocation(line: 400, column: 60, scope: !1131)
!1249 = !DILocation(line: 404, column: 12, scope: !1130)
!1250 = !DILocation(line: 405, column: 12, scope: !1130)
!1251 = !DILocation(line: 406, column: 12, scope: !1130)
!1252 = !DILocation(line: 409, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1130, file: !116, line: 408, column: 11)
!1254 = !DILocation(line: 411, column: 17, scope: !1253)
!1255 = !DILocation(line: 412, column: 39, scope: !1253)
!1256 = !DILocation(line: 416, column: 32, scope: !1253)
!1257 = !DILocation(line: 412, column: 19, scope: !1253)
!1258 = !DILocation(line: 412, column: 15, scope: !1253)
!1259 = !DILocation(line: 417, column: 11, scope: !1253)
!1260 = !DILocation(line: 417, column: 26, scope: !1253)
!1261 = !DILocation(line: 417, column: 14, scope: !1253)
!1262 = !DILocation(line: 417, column: 63, scope: !1253)
!1263 = !DILocation(line: 408, column: 11, scope: !1130)
!1264 = !DILocation(line: 0, scope: !1130)
!1265 = !DILocation(line: 424, column: 11, scope: !1130)
!1266 = !DILocation(line: 402, column: 21, scope: !1130)
!1267 = !DILocation(line: 425, column: 7, scope: !1130)
!1268 = !DILocation(line: 428, column: 15, scope: !1139)
!1269 = !DILocation(line: 430, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !116, line: 430, column: 15)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !116, line: 429, column: 13)
!1272 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 428, column: 15)
!1273 = !DILocation(line: 430, column: 15, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !116, line: 430, column: 15)
!1275 = !DILocation(line: 430, column: 15, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !116, line: 430, column: 15)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !116, line: 430, column: 15)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !116, line: 430, column: 15)
!1279 = !DILocation(line: 430, column: 15, scope: !1277)
!1280 = !DILocation(line: 430, column: 15, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !116, line: 430, column: 15)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !116, line: 430, column: 15)
!1283 = !DILocation(line: 430, column: 15, scope: !1282)
!1284 = !DILocation(line: 430, column: 15, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !116, line: 430, column: 15)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !116, line: 430, column: 15)
!1287 = !DILocation(line: 430, column: 15, scope: !1286)
!1288 = !DILocation(line: 430, column: 15, scope: !1278)
!1289 = !DILocation(line: 430, column: 15, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !116, line: 430, column: 15)
!1291 = distinct !DILexicalBlock(scope: !1270, file: !116, line: 430, column: 15)
!1292 = !DILocation(line: 430, column: 15, scope: !1291)
!1293 = !DILocation(line: 438, column: 19, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1271, file: !116, line: 437, column: 19)
!1295 = !DILocation(line: 438, column: 24, scope: !1294)
!1296 = !DILocation(line: 438, column: 28, scope: !1294)
!1297 = !DILocation(line: 438, column: 38, scope: !1294)
!1298 = !DILocation(line: 438, column: 48, scope: !1294)
!1299 = !DILocation(line: 438, column: 59, scope: !1294)
!1300 = !DILocation(line: 440, column: 19, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !116, line: 440, column: 19)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !116, line: 440, column: 19)
!1303 = distinct !DILexicalBlock(scope: !1294, file: !116, line: 439, column: 17)
!1304 = !DILocation(line: 440, column: 19, scope: !1302)
!1305 = !DILocation(line: 441, column: 19, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !116, line: 441, column: 19)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !116, line: 441, column: 19)
!1308 = !DILocation(line: 441, column: 19, scope: !1307)
!1309 = !DILocation(line: 442, column: 17, scope: !1303)
!1310 = !DILocation(line: 449, column: 20, scope: !1272)
!1311 = !DILocation(line: 454, column: 11, scope: !1139)
!1312 = !DILocation(line: 457, column: 19, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 455, column: 13)
!1314 = !DILocation(line: 463, column: 19, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1313, file: !116, line: 462, column: 19)
!1316 = !DILocation(line: 463, column: 24, scope: !1315)
!1317 = !DILocation(line: 463, column: 28, scope: !1315)
!1318 = !DILocation(line: 463, column: 38, scope: !1315)
!1319 = !DILocation(line: 463, column: 47, scope: !1315)
!1320 = !DILocation(line: 463, column: 41, scope: !1315)
!1321 = !DILocation(line: 463, column: 52, scope: !1315)
!1322 = !DILocation(line: 462, column: 19, scope: !1313)
!1323 = !DILocation(line: 464, column: 25, scope: !1315)
!1324 = !DILocation(line: 464, column: 17, scope: !1315)
!1325 = !DILocation(line: 471, column: 25, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1315, file: !116, line: 465, column: 19)
!1327 = !DILocation(line: 475, column: 21, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !116, line: 475, column: 21)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !116, line: 475, column: 21)
!1330 = !DILocation(line: 475, column: 21, scope: !1329)
!1331 = !DILocation(line: 476, column: 21, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !116, line: 476, column: 21)
!1333 = distinct !DILexicalBlock(scope: !1326, file: !116, line: 476, column: 21)
!1334 = !DILocation(line: 476, column: 21, scope: !1333)
!1335 = !DILocation(line: 477, column: 21, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !116, line: 477, column: 21)
!1337 = distinct !DILexicalBlock(scope: !1326, file: !116, line: 477, column: 21)
!1338 = !DILocation(line: 477, column: 21, scope: !1337)
!1339 = !DILocation(line: 478, column: 21, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !116, line: 478, column: 21)
!1341 = distinct !DILexicalBlock(scope: !1326, file: !116, line: 478, column: 21)
!1342 = !DILocation(line: 478, column: 21, scope: !1341)
!1343 = !DILocation(line: 479, column: 21, scope: !1326)
!1344 = !DILocation(line: 403, column: 21, scope: !1130)
!1345 = !DILocation(line: 492, column: 31, scope: !1139)
!1346 = !DILocation(line: 493, column: 31, scope: !1139)
!1347 = !DILocation(line: 495, column: 31, scope: !1139)
!1348 = !DILocation(line: 496, column: 31, scope: !1139)
!1349 = !DILocation(line: 497, column: 31, scope: !1139)
!1350 = !DILocation(line: 500, column: 15, scope: !1139)
!1351 = !DILocation(line: 502, column: 19, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !116, line: 501, column: 13)
!1353 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 500, column: 15)
!1354 = !DILocation(line: 509, column: 33, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 509, column: 15)
!1356 = !DILocation(line: 0, scope: !1139)
!1357 = !DILocation(line: 514, column: 15, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 513, column: 15)
!1359 = !DILocation(line: 518, column: 15, scope: !1139)
!1360 = !DILocation(line: 526, column: 26, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 526, column: 15)
!1362 = !DILocation(line: 526, column: 15, scope: !1139)
!1363 = !DILocation(line: 526, column: 40, scope: !1361)
!1364 = !DILocation(line: 526, column: 47, scope: !1361)
!1365 = !DILocation(line: 530, column: 17, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 530, column: 15)
!1367 = !DILocation(line: 526, column: 18, scope: !1361)
!1368 = !DILocation(line: 526, column: 65, scope: !1361)
!1369 = !DILocation(line: 530, column: 15, scope: !1139)
!1370 = !DILocation(line: 535, column: 11, scope: !1139)
!1371 = !DILocation(line: 549, column: 15, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 548, column: 15)
!1373 = !DILocation(line: 556, column: 15, scope: !1139)
!1374 = !DILocation(line: 558, column: 19, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !116, line: 557, column: 13)
!1376 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 556, column: 15)
!1377 = !DILocation(line: 561, column: 19, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !116, line: 561, column: 19)
!1379 = !DILocation(line: 561, column: 35, scope: !1378)
!1380 = !DILocation(line: 561, column: 30, scope: !1378)
!1381 = !DILocation(line: 570, column: 15, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !116, line: 570, column: 15)
!1383 = distinct !DILexicalBlock(scope: !1375, file: !116, line: 570, column: 15)
!1384 = !DILocation(line: 570, column: 15, scope: !1383)
!1385 = !DILocation(line: 571, column: 15, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !116, line: 571, column: 15)
!1387 = distinct !DILexicalBlock(scope: !1375, file: !116, line: 571, column: 15)
!1388 = !DILocation(line: 571, column: 15, scope: !1387)
!1389 = !DILocation(line: 572, column: 15, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !116, line: 572, column: 15)
!1391 = distinct !DILexicalBlock(scope: !1375, file: !116, line: 572, column: 15)
!1392 = !DILocation(line: 572, column: 15, scope: !1391)
!1393 = !DILocation(line: 574, column: 13, scope: !1375)
!1394 = !DILocation(line: 614, column: 17, scope: !1138)
!1395 = !DILocation(line: 610, column: 20, scope: !1138)
!1396 = !DILocation(line: 617, column: 29, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1143, file: !116, line: 615, column: 15)
!1398 = !{!735, !735, i64 0}
!1399 = !DILocation(line: 617, column: 27, scope: !1397)
!1400 = !DILocation(line: 612, column: 18, scope: !1138)
!1401 = !DILocation(line: 618, column: 15, scope: !1397)
!1402 = !DILocation(line: 621, column: 17, scope: !1142)
!1403 = !DILocation(line: 622, column: 17, scope: !1142)
!1404 = !DILocation(line: 626, column: 29, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1142, file: !116, line: 626, column: 21)
!1406 = !DILocation(line: 626, column: 21, scope: !1142)
!1407 = !DILocation(line: 627, column: 29, scope: !1405)
!1408 = !DILocation(line: 627, column: 19, scope: !1405)
!1409 = !DILocation(line: 0, scope: !1253)
!1410 = !DILocation(line: 629, column: 17, scope: !1142)
!1411 = !DILocation(line: 624, column: 19, scope: !1142)
!1412 = !DILocation(line: 625, column: 27, scope: !1142)
!1413 = !DILocation(line: 631, column: 21, scope: !1158)
!1414 = !DILocation(line: 632, column: 56, scope: !1158)
!1415 = !DILocation(line: 632, column: 50, scope: !1158)
!1416 = !DILocation(line: 633, column: 53, scope: !1158)
!1417 = !DILocation(line: 621, column: 27, scope: !1142)
!1418 = !DILocation(line: 631, column: 29, scope: !1158)
!1419 = !DILocation(line: 632, column: 36, scope: !1158)
!1420 = !DILocation(line: 632, column: 28, scope: !1158)
!1421 = !DILocation(line: 634, column: 25, scope: !1158)
!1422 = !DILocation(line: 644, column: 38, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1165, file: !116, line: 642, column: 23)
!1424 = !DILocation(line: 644, column: 48, scope: !1423)
!1425 = !DILocation(line: 644, column: 51, scope: !1423)
!1426 = !DILocation(line: 644, column: 25, scope: !1423)
!1427 = !DILocation(line: 645, column: 28, scope: !1423)
!1428 = !DILocation(line: 644, column: 34, scope: !1423)
!1429 = distinct !{!1429, !1426, !1427}
!1430 = !DILocation(line: 658, column: 43, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !116, line: 658, column: 29)
!1432 = distinct !DILexicalBlock(scope: !1162, file: !116, line: 658, column: 29)
!1433 = !DILocation(line: 655, column: 29, scope: !1163)
!1434 = !DILocation(line: 657, column: 36, scope: !1162)
!1435 = !DILocation(line: 659, column: 49, scope: !1431)
!1436 = !DILocation(line: 659, column: 39, scope: !1431)
!1437 = !DILocation(line: 659, column: 31, scope: !1431)
!1438 = !DILocation(line: 658, column: 53, scope: !1431)
!1439 = !DILocation(line: 658, column: 29, scope: !1432)
!1440 = distinct !{!1440, !1439, !1441}
!1441 = !DILocation(line: 667, column: 33, scope: !1432)
!1442 = !DILocation(line: 674, column: 19, scope: !1142)
!1443 = !DILocation(line: 670, column: 41, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1164, file: !116, line: 670, column: 29)
!1445 = !DILocation(line: 670, column: 31, scope: !1444)
!1446 = !DILocation(line: 670, column: 29, scope: !1164)
!1447 = !DILocation(line: 672, column: 27, scope: !1164)
!1448 = !DILocation(line: 675, column: 26, scope: !1142)
!1449 = !DILocation(line: 675, column: 24, scope: !1142)
!1450 = !DILocation(line: 674, column: 19, scope: !1158)
!1451 = distinct !{!1451, !1410, !1452}
!1452 = !DILocation(line: 675, column: 44, scope: !1142)
!1453 = !DILocation(line: 676, column: 15, scope: !1143)
!1454 = !DILocation(line: 0, scope: !1405)
!1455 = !DILocation(line: 0, scope: !1142)
!1456 = !DILocation(line: 678, column: 40, scope: !1138)
!1457 = !DILocation(line: 680, column: 19, scope: !1170)
!1458 = !DILocation(line: 680, column: 45, scope: !1170)
!1459 = !DILocation(line: 680, column: 23, scope: !1170)
!1460 = !DILocation(line: 684, column: 33, scope: !1169)
!1461 = !DILocation(line: 684, column: 24, scope: !1169)
!1462 = !DILocation(line: 686, column: 17, scope: !1169)
!1463 = !DILocation(line: 0, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !116, line: 687, column: 19)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !116, line: 686, column: 17)
!1466 = distinct !DILexicalBlock(scope: !1169, file: !116, line: 686, column: 17)
!1467 = !DILocation(line: 0, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !116, line: 703, column: 21)
!1469 = !DILocation(line: 0, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !116, line: 696, column: 23)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !116, line: 695, column: 30)
!1472 = distinct !DILexicalBlock(scope: !1464, file: !116, line: 688, column: 25)
!1473 = !DILocation(line: 688, column: 43, scope: !1472)
!1474 = !DILocation(line: 690, column: 25, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !116, line: 690, column: 25)
!1476 = distinct !DILexicalBlock(scope: !1472, file: !116, line: 689, column: 23)
!1477 = !DILocation(line: 690, column: 25, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !116, line: 690, column: 25)
!1479 = !DILocation(line: 690, column: 25, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !116, line: 690, column: 25)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !116, line: 690, column: 25)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !116, line: 690, column: 25)
!1483 = !DILocation(line: 690, column: 25, scope: !1481)
!1484 = !DILocation(line: 690, column: 25, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !116, line: 690, column: 25)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !116, line: 690, column: 25)
!1487 = !DILocation(line: 690, column: 25, scope: !1486)
!1488 = !DILocation(line: 690, column: 25, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !116, line: 690, column: 25)
!1490 = distinct !DILexicalBlock(scope: !1482, file: !116, line: 690, column: 25)
!1491 = !DILocation(line: 690, column: 25, scope: !1490)
!1492 = !DILocation(line: 690, column: 25, scope: !1482)
!1493 = !DILocation(line: 690, column: 25, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !116, line: 690, column: 25)
!1495 = distinct !DILexicalBlock(scope: !1475, file: !116, line: 690, column: 25)
!1496 = !DILocation(line: 690, column: 25, scope: !1495)
!1497 = !DILocation(line: 691, column: 25, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !116, line: 691, column: 25)
!1499 = distinct !DILexicalBlock(scope: !1476, file: !116, line: 691, column: 25)
!1500 = !DILocation(line: 691, column: 25, scope: !1499)
!1501 = !DILocation(line: 692, column: 25, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !116, line: 692, column: 25)
!1503 = distinct !DILexicalBlock(scope: !1476, file: !116, line: 692, column: 25)
!1504 = !DILocation(line: 692, column: 25, scope: !1503)
!1505 = !DILocation(line: 693, column: 38, scope: !1476)
!1506 = !DILocation(line: 693, column: 33, scope: !1476)
!1507 = !DILocation(line: 694, column: 23, scope: !1476)
!1508 = !DILocation(line: 695, column: 30, scope: !1471)
!1509 = !DILocation(line: 695, column: 30, scope: !1472)
!1510 = !DILocation(line: 697, column: 25, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !116, line: 697, column: 25)
!1512 = distinct !DILexicalBlock(scope: !1470, file: !116, line: 697, column: 25)
!1513 = !DILocation(line: 697, column: 25, scope: !1512)
!1514 = !DILocation(line: 699, column: 23, scope: !1470)
!1515 = !DILocation(line: 0, scope: !1503)
!1516 = !DILocation(line: 0, scope: !1476)
!1517 = !DILocation(line: 0, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1253, file: !116, line: 418, column: 9)
!1519 = !DILocation(line: 0, scope: !1475)
!1520 = !DILocation(line: 700, column: 35, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1464, file: !116, line: 700, column: 25)
!1522 = !DILocation(line: 700, column: 30, scope: !1521)
!1523 = !DILocation(line: 700, column: 25, scope: !1464)
!1524 = !DILocation(line: 702, column: 21, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !116, line: 702, column: 21)
!1526 = distinct !DILexicalBlock(scope: !1464, file: !116, line: 702, column: 21)
!1527 = !DILocation(line: 702, column: 21, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !116, line: 702, column: 21)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !116, line: 702, column: 21)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !116, line: 702, column: 21)
!1531 = !DILocation(line: 702, column: 21, scope: !1529)
!1532 = !DILocation(line: 702, column: 21, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !116, line: 702, column: 21)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !116, line: 702, column: 21)
!1535 = !DILocation(line: 702, column: 21, scope: !1534)
!1536 = !DILocation(line: 702, column: 21, scope: !1530)
!1537 = !DILocation(line: 0, scope: !1512)
!1538 = !DILocation(line: 703, column: 21, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1468, file: !116, line: 703, column: 21)
!1540 = !DILocation(line: 703, column: 21, scope: !1468)
!1541 = !DILocation(line: 704, column: 25, scope: !1464)
!1542 = !DILocation(line: 686, column: 17, scope: !1465)
!1543 = distinct !{!1543, !1544, !1545}
!1544 = !DILocation(line: 686, column: 17, scope: !1466)
!1545 = !DILocation(line: 705, column: 19, scope: !1466)
!1546 = !DILocation(line: 0, scope: !1132)
!1547 = !DILocation(line: 416, column: 30, scope: !1253)
!1548 = !DILocation(line: 712, column: 34, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1130, file: !116, line: 712, column: 11)
!1550 = !DILocation(line: 714, column: 14, scope: !1549)
!1551 = !DILocation(line: 715, column: 14, scope: !1549)
!1552 = !DILocation(line: 715, column: 35, scope: !1549)
!1553 = !DILocation(line: 715, column: 17, scope: !1549)
!1554 = !DILocation(line: 715, column: 47, scope: !1549)
!1555 = !DILocation(line: 715, column: 65, scope: !1549)
!1556 = !DILocation(line: 716, column: 15, scope: !1549)
!1557 = !DILocation(line: 716, column: 11, scope: !1549)
!1558 = !DILocation(line: 712, column: 11, scope: !1130)
!1559 = !DILocation(line: 400, column: 10, scope: !1132)
!1560 = !DILocation(line: 0, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !116, line: 519, column: 13)
!1562 = distinct !DILexicalBlock(scope: !1139, file: !116, line: 518, column: 15)
!1563 = !DILocation(line: 720, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1130, file: !116, line: 720, column: 7)
!1565 = !DILocation(line: 720, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1564, file: !116, line: 720, column: 7)
!1567 = !DILocation(line: 720, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !116, line: 720, column: 7)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !116, line: 720, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !116, line: 720, column: 7)
!1571 = !DILocation(line: 720, column: 7, scope: !1569)
!1572 = !DILocation(line: 720, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !116, line: 720, column: 7)
!1574 = distinct !DILexicalBlock(scope: !1570, file: !116, line: 720, column: 7)
!1575 = !DILocation(line: 720, column: 7, scope: !1574)
!1576 = !DILocation(line: 720, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !116, line: 720, column: 7)
!1578 = distinct !DILexicalBlock(scope: !1570, file: !116, line: 720, column: 7)
!1579 = !DILocation(line: 720, column: 7, scope: !1578)
!1580 = !DILocation(line: 720, column: 7, scope: !1570)
!1581 = !DILocation(line: 720, column: 7, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !116, line: 720, column: 7)
!1583 = distinct !DILexicalBlock(scope: !1564, file: !116, line: 720, column: 7)
!1584 = !DILocation(line: 720, column: 7, scope: !1583)
!1585 = !DILocation(line: 723, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !116, line: 723, column: 7)
!1587 = distinct !DILexicalBlock(scope: !1130, file: !116, line: 723, column: 7)
!1588 = !DILocation(line: 424, column: 9, scope: !1130)
!1589 = !DILocation(line: 723, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !116, line: 723, column: 7)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !116, line: 723, column: 7)
!1592 = distinct !DILexicalBlock(scope: !1586, file: !116, line: 723, column: 7)
!1593 = !DILocation(line: 723, column: 7, scope: !1591)
!1594 = !DILocation(line: 723, column: 7, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !116, line: 723, column: 7)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !116, line: 723, column: 7)
!1597 = !DILocation(line: 723, column: 7, scope: !1596)
!1598 = !DILocation(line: 723, column: 7, scope: !1592)
!1599 = !DILocation(line: 724, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !116, line: 724, column: 7)
!1601 = distinct !DILexicalBlock(scope: !1130, file: !116, line: 724, column: 7)
!1602 = !DILocation(line: 724, column: 7, scope: !1601)
!1603 = !DILocation(line: 726, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1130, file: !116, line: 726, column: 11)
!1605 = !DILocation(line: 726, column: 11, scope: !1130)
!1606 = !DILocation(line: 728, column: 5, scope: !1131)
!1607 = !DILocation(line: 400, column: 75, scope: !1131)
!1608 = !DILocation(line: 400, column: 3, scope: !1131)
!1609 = distinct !{!1609, !1247, !1610}
!1610 = !DILocation(line: 728, column: 5, scope: !1132)
!1611 = !DILocation(line: 730, column: 11, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1103, file: !116, line: 730, column: 7)
!1613 = !DILocation(line: 730, column: 16, scope: !1612)
!1614 = !DILocation(line: 738, column: 51, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1103, file: !116, line: 738, column: 7)
!1616 = !DILocation(line: 739, column: 10, scope: !1615)
!1617 = !DILocation(line: 741, column: 11, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !116, line: 741, column: 11)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !116, line: 740, column: 5)
!1620 = !DILocation(line: 741, column: 11, scope: !1619)
!1621 = !DILocation(line: 742, column: 16, scope: !1618)
!1622 = !DILocation(line: 742, column: 9, scope: !1618)
!1623 = !DILocation(line: 746, column: 18, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1618, file: !116, line: 746, column: 16)
!1625 = !DILocation(line: 746, column: 32, scope: !1624)
!1626 = !DILocation(line: 746, column: 29, scope: !1624)
!1627 = !DILocation(line: 755, column: 7, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1103, file: !116, line: 755, column: 7)
!1629 = !DILocation(line: 755, column: 20, scope: !1628)
!1630 = !DILocation(line: 756, column: 12, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !116, line: 756, column: 5)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !116, line: 756, column: 5)
!1633 = !DILocation(line: 756, column: 5, scope: !1632)
!1634 = !DILocation(line: 757, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !116, line: 757, column: 7)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !116, line: 757, column: 7)
!1637 = !DILocation(line: 757, column: 7, scope: !1636)
!1638 = !DILocation(line: 756, column: 39, scope: !1631)
!1639 = distinct !{!1639, !1633, !1640}
!1640 = !DILocation(line: 757, column: 7, scope: !1632)
!1641 = !DILocation(line: 759, column: 11, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1103, file: !116, line: 759, column: 7)
!1643 = !DILocation(line: 759, column: 7, scope: !1103)
!1644 = !DILocation(line: 760, column: 5, scope: !1642)
!1645 = !DILocation(line: 760, column: 17, scope: !1642)
!1646 = !DILocation(line: 766, column: 21, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1103, file: !116, line: 766, column: 7)
!1648 = !DILocation(line: 766, column: 54, scope: !1647)
!1649 = !DILocation(line: 766, column: 51, scope: !1647)
!1650 = !DILocation(line: 770, column: 42, scope: !1103)
!1651 = !DILocation(line: 768, column: 10, scope: !1103)
!1652 = !DILocation(line: 768, column: 3, scope: !1103)
!1653 = !DILocation(line: 772, column: 1, scope: !1103)
!1654 = distinct !DISubprogram(name: "gettext_quote", scope: !116, file: !116, line: 207, type: !1655, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!24, !24, !76}
!1657 = !{!1658, !1659, !1660, !1661}
!1658 = !DILocalVariable(name: "msgid", arg: 1, scope: !1654, file: !116, line: 207, type: !24)
!1659 = !DILocalVariable(name: "s", arg: 2, scope: !1654, file: !116, line: 207, type: !76)
!1660 = !DILocalVariable(name: "translation", scope: !1654, file: !116, line: 209, type: !24)
!1661 = !DILocalVariable(name: "locale_code", scope: !1654, file: !116, line: 210, type: !24)
!1662 = !DILocation(line: 207, column: 28, scope: !1654)
!1663 = !DILocation(line: 207, column: 54, scope: !1654)
!1664 = !DILocation(line: 209, column: 29, scope: !1654)
!1665 = !DILocation(line: 209, column: 15, scope: !1654)
!1666 = !DILocation(line: 212, column: 19, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1654, file: !116, line: 212, column: 7)
!1668 = !DILocation(line: 212, column: 7, scope: !1654)
!1669 = !DILocation(line: 233, column: 17, scope: !1654)
!1670 = !DILocation(line: 210, column: 15, scope: !1654)
!1671 = !DILocalVariable(name: "s1", arg: 1, scope: !1672, file: !1673, line: 160, type: !24)
!1672 = distinct !DISubprogram(name: "strcaseeq0", scope: !1673, file: !1673, line: 160, type: !1674, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1676)
!1673 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!16, !24, !24, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1676 = !{!1671, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686}
!1677 = !DILocalVariable(name: "s2", arg: 2, scope: !1672, file: !1673, line: 160, type: !24)
!1678 = !DILocalVariable(name: "s20", arg: 3, scope: !1672, file: !1673, line: 160, type: !7)
!1679 = !DILocalVariable(name: "s21", arg: 4, scope: !1672, file: !1673, line: 160, type: !7)
!1680 = !DILocalVariable(name: "s22", arg: 5, scope: !1672, file: !1673, line: 160, type: !7)
!1681 = !DILocalVariable(name: "s23", arg: 6, scope: !1672, file: !1673, line: 160, type: !7)
!1682 = !DILocalVariable(name: "s24", arg: 7, scope: !1672, file: !1673, line: 160, type: !7)
!1683 = !DILocalVariable(name: "s25", arg: 8, scope: !1672, file: !1673, line: 160, type: !7)
!1684 = !DILocalVariable(name: "s26", arg: 9, scope: !1672, file: !1673, line: 160, type: !7)
!1685 = !DILocalVariable(name: "s27", arg: 10, scope: !1672, file: !1673, line: 160, type: !7)
!1686 = !DILocalVariable(name: "s28", arg: 11, scope: !1672, file: !1673, line: 160, type: !7)
!1687 = !DILocation(line: 160, column: 25, scope: !1672, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 234, column: 7, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1654, file: !116, line: 234, column: 7)
!1690 = !DILocation(line: 160, column: 41, scope: !1672, inlinedAt: !1688)
!1691 = !DILocation(line: 160, column: 50, scope: !1672, inlinedAt: !1688)
!1692 = !DILocation(line: 160, column: 60, scope: !1672, inlinedAt: !1688)
!1693 = !DILocation(line: 160, column: 70, scope: !1672, inlinedAt: !1688)
!1694 = !DILocation(line: 160, column: 80, scope: !1672, inlinedAt: !1688)
!1695 = !DILocation(line: 160, column: 90, scope: !1672, inlinedAt: !1688)
!1696 = !DILocation(line: 160, column: 100, scope: !1672, inlinedAt: !1688)
!1697 = !DILocation(line: 160, column: 110, scope: !1672, inlinedAt: !1688)
!1698 = !DILocation(line: 160, column: 120, scope: !1672, inlinedAt: !1688)
!1699 = !DILocation(line: 160, column: 130, scope: !1672, inlinedAt: !1688)
!1700 = !DILocation(line: 162, column: 7, scope: !1701, inlinedAt: !1688)
!1701 = distinct !DILexicalBlock(scope: !1672, file: !1673, line: 162, column: 7)
!1702 = !DILocalVariable(name: "s1", arg: 1, scope: !1703, file: !1673, line: 146, type: !24)
!1703 = distinct !DISubprogram(name: "strcaseeq1", scope: !1673, file: !1673, line: 146, type: !1704, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!16, !24, !24, !7, !7, !7, !7, !7, !7, !7, !7}
!1706 = !{!1702, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715}
!1707 = !DILocalVariable(name: "s2", arg: 2, scope: !1703, file: !1673, line: 146, type: !24)
!1708 = !DILocalVariable(name: "s21", arg: 3, scope: !1703, file: !1673, line: 146, type: !7)
!1709 = !DILocalVariable(name: "s22", arg: 4, scope: !1703, file: !1673, line: 146, type: !7)
!1710 = !DILocalVariable(name: "s23", arg: 5, scope: !1703, file: !1673, line: 146, type: !7)
!1711 = !DILocalVariable(name: "s24", arg: 6, scope: !1703, file: !1673, line: 146, type: !7)
!1712 = !DILocalVariable(name: "s25", arg: 7, scope: !1703, file: !1673, line: 146, type: !7)
!1713 = !DILocalVariable(name: "s26", arg: 8, scope: !1703, file: !1673, line: 146, type: !7)
!1714 = !DILocalVariable(name: "s27", arg: 9, scope: !1703, file: !1673, line: 146, type: !7)
!1715 = !DILocalVariable(name: "s28", arg: 10, scope: !1703, file: !1673, line: 146, type: !7)
!1716 = !DILocation(line: 146, column: 25, scope: !1703, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 167, column: 16, scope: !1718, inlinedAt: !1688)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !1673, line: 164, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1701, file: !1673, line: 163, column: 5)
!1720 = !DILocation(line: 146, column: 41, scope: !1703, inlinedAt: !1717)
!1721 = !DILocation(line: 146, column: 50, scope: !1703, inlinedAt: !1717)
!1722 = !DILocation(line: 146, column: 60, scope: !1703, inlinedAt: !1717)
!1723 = !DILocation(line: 146, column: 70, scope: !1703, inlinedAt: !1717)
!1724 = !DILocation(line: 146, column: 80, scope: !1703, inlinedAt: !1717)
!1725 = !DILocation(line: 146, column: 90, scope: !1703, inlinedAt: !1717)
!1726 = !DILocation(line: 146, column: 100, scope: !1703, inlinedAt: !1717)
!1727 = !DILocation(line: 146, column: 110, scope: !1703, inlinedAt: !1717)
!1728 = !DILocation(line: 146, column: 120, scope: !1703, inlinedAt: !1717)
!1729 = !DILocation(line: 148, column: 7, scope: !1730, inlinedAt: !1717)
!1730 = distinct !DILexicalBlock(scope: !1703, file: !1673, line: 148, column: 7)
!1731 = !DILocalVariable(name: "s1", arg: 1, scope: !1732, file: !1673, line: 132, type: !24)
!1732 = distinct !DISubprogram(name: "strcaseeq2", scope: !1673, file: !1673, line: 132, type: !1733, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!16, !24, !24, !7, !7, !7, !7, !7, !7, !7}
!1735 = !{!1731, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1736 = !DILocalVariable(name: "s2", arg: 2, scope: !1732, file: !1673, line: 132, type: !24)
!1737 = !DILocalVariable(name: "s22", arg: 3, scope: !1732, file: !1673, line: 132, type: !7)
!1738 = !DILocalVariable(name: "s23", arg: 4, scope: !1732, file: !1673, line: 132, type: !7)
!1739 = !DILocalVariable(name: "s24", arg: 5, scope: !1732, file: !1673, line: 132, type: !7)
!1740 = !DILocalVariable(name: "s25", arg: 6, scope: !1732, file: !1673, line: 132, type: !7)
!1741 = !DILocalVariable(name: "s26", arg: 7, scope: !1732, file: !1673, line: 132, type: !7)
!1742 = !DILocalVariable(name: "s27", arg: 8, scope: !1732, file: !1673, line: 132, type: !7)
!1743 = !DILocalVariable(name: "s28", arg: 9, scope: !1732, file: !1673, line: 132, type: !7)
!1744 = !DILocation(line: 132, column: 25, scope: !1732, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 153, column: 16, scope: !1746, inlinedAt: !1717)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !1673, line: 150, column: 11)
!1747 = distinct !DILexicalBlock(scope: !1730, file: !1673, line: 149, column: 5)
!1748 = !DILocation(line: 132, column: 41, scope: !1732, inlinedAt: !1745)
!1749 = !DILocation(line: 132, column: 50, scope: !1732, inlinedAt: !1745)
!1750 = !DILocation(line: 132, column: 60, scope: !1732, inlinedAt: !1745)
!1751 = !DILocation(line: 132, column: 70, scope: !1732, inlinedAt: !1745)
!1752 = !DILocation(line: 132, column: 80, scope: !1732, inlinedAt: !1745)
!1753 = !DILocation(line: 132, column: 90, scope: !1732, inlinedAt: !1745)
!1754 = !DILocation(line: 132, column: 100, scope: !1732, inlinedAt: !1745)
!1755 = !DILocation(line: 132, column: 110, scope: !1732, inlinedAt: !1745)
!1756 = !DILocation(line: 134, column: 7, scope: !1757, inlinedAt: !1745)
!1757 = distinct !DILexicalBlock(scope: !1732, file: !1673, line: 134, column: 7)
!1758 = !DILocalVariable(name: "s1", arg: 1, scope: !1759, file: !1673, line: 118, type: !24)
!1759 = distinct !DISubprogram(name: "strcaseeq3", scope: !1673, file: !1673, line: 118, type: !1760, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!16, !24, !24, !7, !7, !7, !7, !7, !7}
!1762 = !{!1758, !1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1763 = !DILocalVariable(name: "s2", arg: 2, scope: !1759, file: !1673, line: 118, type: !24)
!1764 = !DILocalVariable(name: "s23", arg: 3, scope: !1759, file: !1673, line: 118, type: !7)
!1765 = !DILocalVariable(name: "s24", arg: 4, scope: !1759, file: !1673, line: 118, type: !7)
!1766 = !DILocalVariable(name: "s25", arg: 5, scope: !1759, file: !1673, line: 118, type: !7)
!1767 = !DILocalVariable(name: "s26", arg: 6, scope: !1759, file: !1673, line: 118, type: !7)
!1768 = !DILocalVariable(name: "s27", arg: 7, scope: !1759, file: !1673, line: 118, type: !7)
!1769 = !DILocalVariable(name: "s28", arg: 8, scope: !1759, file: !1673, line: 118, type: !7)
!1770 = !DILocation(line: 118, column: 25, scope: !1759, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 139, column: 16, scope: !1772, inlinedAt: !1745)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !1673, line: 136, column: 11)
!1773 = distinct !DILexicalBlock(scope: !1757, file: !1673, line: 135, column: 5)
!1774 = !DILocation(line: 118, column: 41, scope: !1759, inlinedAt: !1771)
!1775 = !DILocation(line: 118, column: 50, scope: !1759, inlinedAt: !1771)
!1776 = !DILocation(line: 118, column: 60, scope: !1759, inlinedAt: !1771)
!1777 = !DILocation(line: 118, column: 70, scope: !1759, inlinedAt: !1771)
!1778 = !DILocation(line: 118, column: 80, scope: !1759, inlinedAt: !1771)
!1779 = !DILocation(line: 118, column: 90, scope: !1759, inlinedAt: !1771)
!1780 = !DILocation(line: 118, column: 100, scope: !1759, inlinedAt: !1771)
!1781 = !DILocation(line: 120, column: 7, scope: !1782, inlinedAt: !1771)
!1782 = distinct !DILexicalBlock(scope: !1759, file: !1673, line: 120, column: 7)
!1783 = !DILocation(line: 120, column: 7, scope: !1759, inlinedAt: !1771)
!1784 = !DILocalVariable(name: "s1", arg: 1, scope: !1785, file: !1673, line: 104, type: !24)
!1785 = distinct !DISubprogram(name: "strcaseeq4", scope: !1673, file: !1673, line: 104, type: !1786, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!16, !24, !24, !7, !7, !7, !7, !7}
!1788 = !{!1784, !1789, !1790, !1791, !1792, !1793, !1794}
!1789 = !DILocalVariable(name: "s2", arg: 2, scope: !1785, file: !1673, line: 104, type: !24)
!1790 = !DILocalVariable(name: "s24", arg: 3, scope: !1785, file: !1673, line: 104, type: !7)
!1791 = !DILocalVariable(name: "s25", arg: 4, scope: !1785, file: !1673, line: 104, type: !7)
!1792 = !DILocalVariable(name: "s26", arg: 5, scope: !1785, file: !1673, line: 104, type: !7)
!1793 = !DILocalVariable(name: "s27", arg: 6, scope: !1785, file: !1673, line: 104, type: !7)
!1794 = !DILocalVariable(name: "s28", arg: 7, scope: !1785, file: !1673, line: 104, type: !7)
!1795 = !DILocation(line: 104, column: 25, scope: !1785, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 125, column: 16, scope: !1797, inlinedAt: !1771)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !1673, line: 122, column: 11)
!1798 = distinct !DILexicalBlock(scope: !1782, file: !1673, line: 121, column: 5)
!1799 = !DILocation(line: 104, column: 41, scope: !1785, inlinedAt: !1796)
!1800 = !DILocation(line: 104, column: 50, scope: !1785, inlinedAt: !1796)
!1801 = !DILocation(line: 104, column: 60, scope: !1785, inlinedAt: !1796)
!1802 = !DILocation(line: 104, column: 70, scope: !1785, inlinedAt: !1796)
!1803 = !DILocation(line: 104, column: 80, scope: !1785, inlinedAt: !1796)
!1804 = !DILocation(line: 104, column: 90, scope: !1785, inlinedAt: !1796)
!1805 = !DILocation(line: 106, column: 7, scope: !1806, inlinedAt: !1796)
!1806 = distinct !DILexicalBlock(scope: !1785, file: !1673, line: 106, column: 7)
!1807 = !DILocation(line: 106, column: 7, scope: !1785, inlinedAt: !1796)
!1808 = !DILocalVariable(name: "s1", arg: 1, scope: !1809, file: !1673, line: 90, type: !24)
!1809 = distinct !DISubprogram(name: "strcaseeq5", scope: !1673, file: !1673, line: 90, type: !1810, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1812)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!16, !24, !24, !7, !7, !7, !7}
!1812 = !{!1808, !1813, !1814, !1815, !1816, !1817}
!1813 = !DILocalVariable(name: "s2", arg: 2, scope: !1809, file: !1673, line: 90, type: !24)
!1814 = !DILocalVariable(name: "s25", arg: 3, scope: !1809, file: !1673, line: 90, type: !7)
!1815 = !DILocalVariable(name: "s26", arg: 4, scope: !1809, file: !1673, line: 90, type: !7)
!1816 = !DILocalVariable(name: "s27", arg: 5, scope: !1809, file: !1673, line: 90, type: !7)
!1817 = !DILocalVariable(name: "s28", arg: 6, scope: !1809, file: !1673, line: 90, type: !7)
!1818 = !DILocation(line: 90, column: 25, scope: !1809, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 111, column: 16, scope: !1820, inlinedAt: !1796)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !1673, line: 108, column: 11)
!1821 = distinct !DILexicalBlock(scope: !1806, file: !1673, line: 107, column: 5)
!1822 = !DILocation(line: 90, column: 41, scope: !1809, inlinedAt: !1819)
!1823 = !DILocation(line: 90, column: 50, scope: !1809, inlinedAt: !1819)
!1824 = !DILocation(line: 90, column: 60, scope: !1809, inlinedAt: !1819)
!1825 = !DILocation(line: 90, column: 70, scope: !1809, inlinedAt: !1819)
!1826 = !DILocation(line: 90, column: 80, scope: !1809, inlinedAt: !1819)
!1827 = !DILocation(line: 92, column: 7, scope: !1828, inlinedAt: !1819)
!1828 = distinct !DILexicalBlock(scope: !1809, file: !1673, line: 92, column: 7)
!1829 = !DILocation(line: 92, column: 7, scope: !1809, inlinedAt: !1819)
!1830 = !DILocation(line: 235, column: 12, scope: !1689)
!1831 = !DILocation(line: 235, column: 21, scope: !1689)
!1832 = !DILocation(line: 235, column: 5, scope: !1689)
!1833 = !DILocation(line: 146, column: 25, scope: !1703, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 167, column: 16, scope: !1718, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 236, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1654, file: !116, line: 236, column: 7)
!1837 = !DILocation(line: 146, column: 41, scope: !1703, inlinedAt: !1834)
!1838 = !DILocation(line: 146, column: 50, scope: !1703, inlinedAt: !1834)
!1839 = !DILocation(line: 146, column: 60, scope: !1703, inlinedAt: !1834)
!1840 = !DILocation(line: 146, column: 70, scope: !1703, inlinedAt: !1834)
!1841 = !DILocation(line: 146, column: 80, scope: !1703, inlinedAt: !1834)
!1842 = !DILocation(line: 146, column: 90, scope: !1703, inlinedAt: !1834)
!1843 = !DILocation(line: 146, column: 100, scope: !1703, inlinedAt: !1834)
!1844 = !DILocation(line: 146, column: 110, scope: !1703, inlinedAt: !1834)
!1845 = !DILocation(line: 146, column: 120, scope: !1703, inlinedAt: !1834)
!1846 = !DILocation(line: 148, column: 7, scope: !1730, inlinedAt: !1834)
!1847 = !DILocation(line: 132, column: 25, scope: !1732, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 153, column: 16, scope: !1746, inlinedAt: !1834)
!1849 = !DILocation(line: 132, column: 41, scope: !1732, inlinedAt: !1848)
!1850 = !DILocation(line: 132, column: 50, scope: !1732, inlinedAt: !1848)
!1851 = !DILocation(line: 132, column: 60, scope: !1732, inlinedAt: !1848)
!1852 = !DILocation(line: 132, column: 70, scope: !1732, inlinedAt: !1848)
!1853 = !DILocation(line: 132, column: 80, scope: !1732, inlinedAt: !1848)
!1854 = !DILocation(line: 132, column: 90, scope: !1732, inlinedAt: !1848)
!1855 = !DILocation(line: 132, column: 100, scope: !1732, inlinedAt: !1848)
!1856 = !DILocation(line: 132, column: 110, scope: !1732, inlinedAt: !1848)
!1857 = !DILocation(line: 134, column: 7, scope: !1757, inlinedAt: !1848)
!1858 = !DILocation(line: 134, column: 7, scope: !1732, inlinedAt: !1848)
!1859 = !DILocation(line: 118, column: 25, scope: !1759, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 139, column: 16, scope: !1772, inlinedAt: !1848)
!1861 = !DILocation(line: 118, column: 41, scope: !1759, inlinedAt: !1860)
!1862 = !DILocation(line: 118, column: 50, scope: !1759, inlinedAt: !1860)
!1863 = !DILocation(line: 118, column: 60, scope: !1759, inlinedAt: !1860)
!1864 = !DILocation(line: 118, column: 70, scope: !1759, inlinedAt: !1860)
!1865 = !DILocation(line: 118, column: 80, scope: !1759, inlinedAt: !1860)
!1866 = !DILocation(line: 118, column: 90, scope: !1759, inlinedAt: !1860)
!1867 = !DILocation(line: 118, column: 100, scope: !1759, inlinedAt: !1860)
!1868 = !DILocation(line: 120, column: 7, scope: !1782, inlinedAt: !1860)
!1869 = !DILocation(line: 120, column: 7, scope: !1759, inlinedAt: !1860)
!1870 = !DILocation(line: 104, column: 25, scope: !1785, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 125, column: 16, scope: !1797, inlinedAt: !1860)
!1872 = !DILocation(line: 104, column: 41, scope: !1785, inlinedAt: !1871)
!1873 = !DILocation(line: 104, column: 50, scope: !1785, inlinedAt: !1871)
!1874 = !DILocation(line: 104, column: 60, scope: !1785, inlinedAt: !1871)
!1875 = !DILocation(line: 104, column: 70, scope: !1785, inlinedAt: !1871)
!1876 = !DILocation(line: 104, column: 80, scope: !1785, inlinedAt: !1871)
!1877 = !DILocation(line: 104, column: 90, scope: !1785, inlinedAt: !1871)
!1878 = !DILocation(line: 106, column: 7, scope: !1806, inlinedAt: !1871)
!1879 = !DILocation(line: 106, column: 7, scope: !1785, inlinedAt: !1871)
!1880 = !DILocation(line: 90, column: 25, scope: !1809, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 111, column: 16, scope: !1820, inlinedAt: !1871)
!1882 = !DILocation(line: 90, column: 41, scope: !1809, inlinedAt: !1881)
!1883 = !DILocation(line: 90, column: 50, scope: !1809, inlinedAt: !1881)
!1884 = !DILocation(line: 90, column: 60, scope: !1809, inlinedAt: !1881)
!1885 = !DILocation(line: 90, column: 70, scope: !1809, inlinedAt: !1881)
!1886 = !DILocation(line: 90, column: 80, scope: !1809, inlinedAt: !1881)
!1887 = !DILocation(line: 92, column: 7, scope: !1828, inlinedAt: !1881)
!1888 = !DILocation(line: 92, column: 7, scope: !1809, inlinedAt: !1881)
!1889 = !DILocalVariable(name: "s1", arg: 1, scope: !1890, file: !1673, line: 76, type: !24)
!1890 = distinct !DISubprogram(name: "strcaseeq6", scope: !1673, file: !1673, line: 76, type: !1891, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1893)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!16, !24, !24, !7, !7, !7}
!1893 = !{!1889, !1894, !1895, !1896, !1897}
!1894 = !DILocalVariable(name: "s2", arg: 2, scope: !1890, file: !1673, line: 76, type: !24)
!1895 = !DILocalVariable(name: "s26", arg: 3, scope: !1890, file: !1673, line: 76, type: !7)
!1896 = !DILocalVariable(name: "s27", arg: 4, scope: !1890, file: !1673, line: 76, type: !7)
!1897 = !DILocalVariable(name: "s28", arg: 5, scope: !1890, file: !1673, line: 76, type: !7)
!1898 = !DILocation(line: 76, column: 25, scope: !1890, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 97, column: 16, scope: !1900, inlinedAt: !1881)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !1673, line: 94, column: 11)
!1901 = distinct !DILexicalBlock(scope: !1828, file: !1673, line: 93, column: 5)
!1902 = !DILocation(line: 76, column: 41, scope: !1890, inlinedAt: !1899)
!1903 = !DILocation(line: 76, column: 50, scope: !1890, inlinedAt: !1899)
!1904 = !DILocation(line: 76, column: 60, scope: !1890, inlinedAt: !1899)
!1905 = !DILocation(line: 76, column: 70, scope: !1890, inlinedAt: !1899)
!1906 = !DILocation(line: 78, column: 7, scope: !1907, inlinedAt: !1899)
!1907 = distinct !DILexicalBlock(scope: !1890, file: !1673, line: 78, column: 7)
!1908 = !DILocation(line: 78, column: 7, scope: !1890, inlinedAt: !1899)
!1909 = !DILocalVariable(name: "s1", arg: 1, scope: !1910, file: !1673, line: 62, type: !24)
!1910 = distinct !DISubprogram(name: "strcaseeq7", scope: !1673, file: !1673, line: 62, type: !1911, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!16, !24, !24, !7, !7}
!1913 = !{!1909, !1914, !1915, !1916}
!1914 = !DILocalVariable(name: "s2", arg: 2, scope: !1910, file: !1673, line: 62, type: !24)
!1915 = !DILocalVariable(name: "s27", arg: 3, scope: !1910, file: !1673, line: 62, type: !7)
!1916 = !DILocalVariable(name: "s28", arg: 4, scope: !1910, file: !1673, line: 62, type: !7)
!1917 = !DILocation(line: 62, column: 25, scope: !1910, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 83, column: 16, scope: !1919, inlinedAt: !1899)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !1673, line: 80, column: 11)
!1920 = distinct !DILexicalBlock(scope: !1907, file: !1673, line: 79, column: 5)
!1921 = !DILocation(line: 62, column: 41, scope: !1910, inlinedAt: !1918)
!1922 = !DILocation(line: 62, column: 50, scope: !1910, inlinedAt: !1918)
!1923 = !DILocation(line: 62, column: 60, scope: !1910, inlinedAt: !1918)
!1924 = !DILocation(line: 64, column: 7, scope: !1925, inlinedAt: !1918)
!1925 = distinct !DILexicalBlock(scope: !1910, file: !1673, line: 64, column: 7)
!1926 = !DILocation(line: 236, column: 7, scope: !1654)
!1927 = !DILocation(line: 237, column: 12, scope: !1836)
!1928 = !DILocation(line: 237, column: 21, scope: !1836)
!1929 = !DILocation(line: 237, column: 5, scope: !1836)
!1930 = !DILocation(line: 239, column: 13, scope: !1654)
!1931 = !DILocation(line: 239, column: 11, scope: !1654)
!1932 = !DILocation(line: 239, column: 3, scope: !1654)
!1933 = !DILocation(line: 0, scope: !1654)
!1934 = !DILocation(line: 240, column: 1, scope: !1654)
!1935 = distinct !DISubprogram(name: "quotearg_alloc", scope: !116, file: !116, line: 799, type: !1936, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!6, !24, !27, !976}
!1938 = !{!1939, !1940, !1941}
!1939 = !DILocalVariable(name: "arg", arg: 1, scope: !1935, file: !116, line: 799, type: !24)
!1940 = !DILocalVariable(name: "argsize", arg: 2, scope: !1935, file: !116, line: 799, type: !27)
!1941 = !DILocalVariable(name: "o", arg: 3, scope: !1935, file: !116, line: 800, type: !976)
!1942 = !DILocation(line: 799, column: 29, scope: !1935)
!1943 = !DILocation(line: 799, column: 41, scope: !1935)
!1944 = !DILocation(line: 800, column: 47, scope: !1935)
!1945 = !DILocalVariable(name: "arg", arg: 1, scope: !1946, file: !116, line: 812, type: !24)
!1946 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !116, file: !116, line: 812, type: !1947, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!6, !24, !27, !185, !976}
!1949 = !{!1945, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957}
!1950 = !DILocalVariable(name: "argsize", arg: 2, scope: !1946, file: !116, line: 812, type: !27)
!1951 = !DILocalVariable(name: "size", arg: 3, scope: !1946, file: !116, line: 812, type: !185)
!1952 = !DILocalVariable(name: "o", arg: 4, scope: !1946, file: !116, line: 813, type: !976)
!1953 = !DILocalVariable(name: "p", scope: !1946, file: !116, line: 815, type: !976)
!1954 = !DILocalVariable(name: "e", scope: !1946, file: !116, line: 816, type: !16)
!1955 = !DILocalVariable(name: "flags", scope: !1946, file: !116, line: 818, type: !16)
!1956 = !DILocalVariable(name: "bufsize", scope: !1946, file: !116, line: 819, type: !27)
!1957 = !DILocalVariable(name: "buf", scope: !1946, file: !116, line: 823, type: !6)
!1958 = !DILocation(line: 812, column: 33, scope: !1946, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 802, column: 10, scope: !1935)
!1960 = !DILocation(line: 812, column: 45, scope: !1946, inlinedAt: !1959)
!1961 = !DILocation(line: 812, column: 62, scope: !1946, inlinedAt: !1959)
!1962 = !DILocation(line: 813, column: 51, scope: !1946, inlinedAt: !1959)
!1963 = !DILocation(line: 815, column: 37, scope: !1946, inlinedAt: !1959)
!1964 = !DILocation(line: 815, column: 33, scope: !1946, inlinedAt: !1959)
!1965 = !DILocation(line: 816, column: 11, scope: !1946, inlinedAt: !1959)
!1966 = !DILocation(line: 816, column: 7, scope: !1946, inlinedAt: !1959)
!1967 = !DILocation(line: 818, column: 18, scope: !1946, inlinedAt: !1959)
!1968 = !DILocation(line: 818, column: 24, scope: !1946, inlinedAt: !1959)
!1969 = !DILocation(line: 818, column: 7, scope: !1946, inlinedAt: !1959)
!1970 = !DILocation(line: 819, column: 69, scope: !1946, inlinedAt: !1959)
!1971 = !DILocation(line: 820, column: 53, scope: !1946, inlinedAt: !1959)
!1972 = !DILocation(line: 821, column: 49, scope: !1946, inlinedAt: !1959)
!1973 = !DILocation(line: 822, column: 49, scope: !1946, inlinedAt: !1959)
!1974 = !DILocation(line: 819, column: 20, scope: !1946, inlinedAt: !1959)
!1975 = !DILocation(line: 822, column: 62, scope: !1946, inlinedAt: !1959)
!1976 = !DILocation(line: 819, column: 10, scope: !1946, inlinedAt: !1959)
!1977 = !DILocalVariable(name: "n", arg: 1, scope: !1978, file: !181, line: 216, type: !27)
!1978 = distinct !DISubprogram(name: "xcharalloc", scope: !181, file: !181, line: 216, type: !1979, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!6, !27}
!1981 = !{!1977}
!1982 = !DILocation(line: 216, column: 20, scope: !1978, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 823, column: 15, scope: !1946, inlinedAt: !1959)
!1984 = !DILocation(line: 218, column: 10, scope: !1978, inlinedAt: !1983)
!1985 = !DILocation(line: 823, column: 9, scope: !1946, inlinedAt: !1959)
!1986 = !DILocation(line: 824, column: 60, scope: !1946, inlinedAt: !1959)
!1987 = !DILocation(line: 826, column: 32, scope: !1946, inlinedAt: !1959)
!1988 = !DILocation(line: 826, column: 47, scope: !1946, inlinedAt: !1959)
!1989 = !DILocation(line: 824, column: 3, scope: !1946, inlinedAt: !1959)
!1990 = !DILocation(line: 827, column: 9, scope: !1946, inlinedAt: !1959)
!1991 = !DILocation(line: 802, column: 3, scope: !1935)
!1992 = !DILocation(line: 812, column: 33, scope: !1946)
!1993 = !DILocation(line: 812, column: 45, scope: !1946)
!1994 = !DILocation(line: 812, column: 62, scope: !1946)
!1995 = !DILocation(line: 813, column: 51, scope: !1946)
!1996 = !DILocation(line: 815, column: 37, scope: !1946)
!1997 = !DILocation(line: 815, column: 33, scope: !1946)
!1998 = !DILocation(line: 816, column: 11, scope: !1946)
!1999 = !DILocation(line: 816, column: 7, scope: !1946)
!2000 = !DILocation(line: 818, column: 18, scope: !1946)
!2001 = !DILocation(line: 818, column: 27, scope: !1946)
!2002 = !DILocation(line: 818, column: 24, scope: !1946)
!2003 = !DILocation(line: 818, column: 7, scope: !1946)
!2004 = !DILocation(line: 819, column: 69, scope: !1946)
!2005 = !DILocation(line: 820, column: 53, scope: !1946)
!2006 = !DILocation(line: 821, column: 49, scope: !1946)
!2007 = !DILocation(line: 822, column: 49, scope: !1946)
!2008 = !DILocation(line: 819, column: 20, scope: !1946)
!2009 = !DILocation(line: 822, column: 62, scope: !1946)
!2010 = !DILocation(line: 819, column: 10, scope: !1946)
!2011 = !DILocation(line: 216, column: 20, scope: !1978, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 823, column: 15, scope: !1946)
!2013 = !DILocation(line: 218, column: 10, scope: !1978, inlinedAt: !2012)
!2014 = !DILocation(line: 823, column: 9, scope: !1946)
!2015 = !DILocation(line: 824, column: 60, scope: !1946)
!2016 = !DILocation(line: 826, column: 32, scope: !1946)
!2017 = !DILocation(line: 826, column: 47, scope: !1946)
!2018 = !DILocation(line: 824, column: 3, scope: !1946)
!2019 = !DILocation(line: 827, column: 9, scope: !1946)
!2020 = !DILocation(line: 828, column: 7, scope: !1946)
!2021 = !DILocation(line: 829, column: 11, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1946, file: !116, line: 828, column: 7)
!2023 = !{!734, !734, i64 0}
!2024 = !DILocation(line: 829, column: 5, scope: !2022)
!2025 = !DILocation(line: 830, column: 3, scope: !1946)
!2026 = distinct !DISubprogram(name: "quotearg_free", scope: !116, file: !116, line: 848, type: !761, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2027)
!2027 = !{!2028, !2029}
!2028 = !DILocalVariable(name: "sv", scope: !2026, file: !116, line: 850, type: !142)
!2029 = !DILocalVariable(name: "i", scope: !2026, file: !116, line: 851, type: !16)
!2030 = !DILocation(line: 850, column: 24, scope: !2026)
!2031 = !DILocation(line: 850, column: 19, scope: !2026)
!2032 = !DILocation(line: 851, column: 7, scope: !2026)
!2033 = !DILocation(line: 852, column: 19, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !116, line: 852, column: 3)
!2035 = distinct !DILexicalBlock(scope: !2026, file: !116, line: 852, column: 3)
!2036 = !DILocation(line: 852, column: 17, scope: !2034)
!2037 = !DILocation(line: 852, column: 3, scope: !2035)
!2038 = !DILocation(line: 853, column: 17, scope: !2034)
!2039 = !{!2040, !640, i64 8}
!2040 = !{!"slotvec", !734, i64 0, !640, i64 8}
!2041 = !DILocation(line: 853, column: 5, scope: !2034)
!2042 = !DILocation(line: 852, column: 28, scope: !2034)
!2043 = distinct !{!2043, !2037, !2044}
!2044 = !DILocation(line: 853, column: 20, scope: !2035)
!2045 = !DILocation(line: 854, column: 13, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2026, file: !116, line: 854, column: 7)
!2047 = !DILocation(line: 854, column: 17, scope: !2046)
!2048 = !DILocation(line: 854, column: 7, scope: !2026)
!2049 = !DILocation(line: 856, column: 7, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !116, line: 855, column: 5)
!2051 = !DILocation(line: 857, column: 21, scope: !2050)
!2052 = !{!2040, !734, i64 0}
!2053 = !DILocation(line: 858, column: 20, scope: !2050)
!2054 = !DILocation(line: 859, column: 5, scope: !2050)
!2055 = !DILocation(line: 860, column: 10, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2026, file: !116, line: 860, column: 7)
!2057 = !DILocation(line: 860, column: 7, scope: !2026)
!2058 = !DILocation(line: 862, column: 13, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !116, line: 861, column: 5)
!2060 = !DILocation(line: 862, column: 7, scope: !2059)
!2061 = !DILocation(line: 863, column: 15, scope: !2059)
!2062 = !DILocation(line: 864, column: 5, scope: !2059)
!2063 = !DILocation(line: 865, column: 10, scope: !2026)
!2064 = !DILocation(line: 866, column: 1, scope: !2026)
!2065 = distinct !DISubprogram(name: "quotearg_n", scope: !116, file: !116, line: 931, type: !2066, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!6, !16, !24}
!2068 = !{!2069, !2070}
!2069 = !DILocalVariable(name: "n", arg: 1, scope: !2065, file: !116, line: 931, type: !16)
!2070 = !DILocalVariable(name: "arg", arg: 2, scope: !2065, file: !116, line: 931, type: !24)
!2071 = !DILocation(line: 931, column: 17, scope: !2065)
!2072 = !DILocation(line: 931, column: 32, scope: !2065)
!2073 = !DILocation(line: 933, column: 10, scope: !2065)
!2074 = !DILocation(line: 933, column: 3, scope: !2065)
!2075 = distinct !DISubprogram(name: "quotearg_n_options", scope: !116, file: !116, line: 877, type: !2076, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!6, !16, !24, !27, !976}
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084, !2085, !2088, !2089, !2091, !2092, !2093}
!2079 = !DILocalVariable(name: "n", arg: 1, scope: !2075, file: !116, line: 877, type: !16)
!2080 = !DILocalVariable(name: "arg", arg: 2, scope: !2075, file: !116, line: 877, type: !24)
!2081 = !DILocalVariable(name: "argsize", arg: 3, scope: !2075, file: !116, line: 877, type: !27)
!2082 = !DILocalVariable(name: "options", arg: 4, scope: !2075, file: !116, line: 878, type: !976)
!2083 = !DILocalVariable(name: "e", scope: !2075, file: !116, line: 880, type: !16)
!2084 = !DILocalVariable(name: "sv", scope: !2075, file: !116, line: 882, type: !142)
!2085 = !DILocalVariable(name: "preallocated", scope: !2086, file: !116, line: 889, type: !22)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !116, line: 888, column: 5)
!2087 = distinct !DILexicalBlock(scope: !2075, file: !116, line: 887, column: 7)
!2088 = !DILocalVariable(name: "nmax", scope: !2086, file: !116, line: 890, type: !16)
!2089 = !DILocalVariable(name: "size", scope: !2090, file: !116, line: 903, type: !27)
!2090 = distinct !DILexicalBlock(scope: !2075, file: !116, line: 902, column: 3)
!2091 = !DILocalVariable(name: "val", scope: !2090, file: !116, line: 904, type: !6)
!2092 = !DILocalVariable(name: "flags", scope: !2090, file: !116, line: 906, type: !16)
!2093 = !DILocalVariable(name: "qsize", scope: !2090, file: !116, line: 907, type: !27)
!2094 = !DILocation(line: 877, column: 25, scope: !2075)
!2095 = !DILocation(line: 877, column: 40, scope: !2075)
!2096 = !DILocation(line: 877, column: 52, scope: !2075)
!2097 = !DILocation(line: 878, column: 51, scope: !2075)
!2098 = !DILocation(line: 880, column: 11, scope: !2075)
!2099 = !DILocation(line: 880, column: 7, scope: !2075)
!2100 = !DILocation(line: 882, column: 24, scope: !2075)
!2101 = !DILocation(line: 882, column: 19, scope: !2075)
!2102 = !DILocation(line: 884, column: 9, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2075, file: !116, line: 884, column: 7)
!2104 = !DILocation(line: 884, column: 7, scope: !2075)
!2105 = !DILocation(line: 885, column: 5, scope: !2103)
!2106 = !DILocation(line: 887, column: 7, scope: !2087)
!2107 = !DILocation(line: 887, column: 14, scope: !2087)
!2108 = !DILocation(line: 887, column: 7, scope: !2075)
!2109 = !DILocation(line: 889, column: 31, scope: !2086)
!2110 = !DILocation(line: 890, column: 11, scope: !2086)
!2111 = !DILocation(line: 892, column: 16, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2086, file: !116, line: 892, column: 11)
!2113 = !DILocation(line: 892, column: 11, scope: !2086)
!2114 = !DILocation(line: 893, column: 9, scope: !2112)
!2115 = !DILocation(line: 895, column: 32, scope: !2086)
!2116 = !DILocation(line: 895, column: 61, scope: !2086)
!2117 = !DILocation(line: 895, column: 58, scope: !2086)
!2118 = !DILocation(line: 895, column: 66, scope: !2086)
!2119 = !DILocation(line: 895, column: 22, scope: !2086)
!2120 = !DILocation(line: 895, column: 15, scope: !2086)
!2121 = !DILocation(line: 896, column: 11, scope: !2086)
!2122 = !DILocation(line: 897, column: 15, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2086, file: !116, line: 896, column: 11)
!2124 = !{i64 0, i64 8, !2023, i64 8, i64 8, !639}
!2125 = !DILocation(line: 897, column: 9, scope: !2123)
!2126 = !DILocation(line: 898, column: 20, scope: !2086)
!2127 = !DILocation(line: 898, column: 18, scope: !2086)
!2128 = !DILocation(line: 898, column: 7, scope: !2086)
!2129 = !DILocation(line: 898, column: 38, scope: !2086)
!2130 = !DILocation(line: 898, column: 31, scope: !2086)
!2131 = !DILocation(line: 898, column: 48, scope: !2086)
!2132 = !DILocation(line: 899, column: 14, scope: !2086)
!2133 = !DILocation(line: 900, column: 5, scope: !2086)
!2134 = !DILocation(line: 0, scope: !2075)
!2135 = !DILocation(line: 903, column: 19, scope: !2090)
!2136 = !DILocation(line: 903, column: 25, scope: !2090)
!2137 = !DILocation(line: 903, column: 12, scope: !2090)
!2138 = !DILocation(line: 904, column: 23, scope: !2090)
!2139 = !DILocation(line: 904, column: 11, scope: !2090)
!2140 = !DILocation(line: 906, column: 26, scope: !2090)
!2141 = !DILocation(line: 906, column: 32, scope: !2090)
!2142 = !DILocation(line: 906, column: 9, scope: !2090)
!2143 = !DILocation(line: 908, column: 55, scope: !2090)
!2144 = !DILocation(line: 909, column: 46, scope: !2090)
!2145 = !DILocation(line: 910, column: 55, scope: !2090)
!2146 = !DILocation(line: 911, column: 55, scope: !2090)
!2147 = !DILocation(line: 907, column: 20, scope: !2090)
!2148 = !DILocation(line: 907, column: 12, scope: !2090)
!2149 = !DILocation(line: 913, column: 14, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2090, file: !116, line: 913, column: 9)
!2151 = !DILocation(line: 913, column: 9, scope: !2090)
!2152 = !DILocation(line: 915, column: 35, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !116, line: 914, column: 7)
!2154 = !DILocation(line: 915, column: 20, scope: !2153)
!2155 = !DILocation(line: 916, column: 17, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !116, line: 916, column: 13)
!2157 = !DILocation(line: 916, column: 13, scope: !2153)
!2158 = !DILocation(line: 917, column: 11, scope: !2156)
!2159 = !DILocation(line: 216, column: 20, scope: !1978, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 918, column: 27, scope: !2153)
!2161 = !DILocation(line: 218, column: 10, scope: !1978, inlinedAt: !2160)
!2162 = !DILocation(line: 918, column: 19, scope: !2153)
!2163 = !DILocation(line: 919, column: 69, scope: !2153)
!2164 = !DILocation(line: 921, column: 44, scope: !2153)
!2165 = !DILocation(line: 922, column: 44, scope: !2153)
!2166 = !DILocation(line: 919, column: 9, scope: !2153)
!2167 = !DILocation(line: 923, column: 7, scope: !2153)
!2168 = !DILocation(line: 0, scope: !2090)
!2169 = !DILocation(line: 925, column: 11, scope: !2090)
!2170 = !DILocation(line: 926, column: 5, scope: !2090)
!2171 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !116, file: !116, line: 937, type: !2172, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!6, !16, !24, !27}
!2174 = !{!2175, !2176, !2177}
!2175 = !DILocalVariable(name: "n", arg: 1, scope: !2171, file: !116, line: 937, type: !16)
!2176 = !DILocalVariable(name: "arg", arg: 2, scope: !2171, file: !116, line: 937, type: !24)
!2177 = !DILocalVariable(name: "argsize", arg: 3, scope: !2171, file: !116, line: 937, type: !27)
!2178 = !DILocation(line: 937, column: 21, scope: !2171)
!2179 = !DILocation(line: 937, column: 36, scope: !2171)
!2180 = !DILocation(line: 937, column: 48, scope: !2171)
!2181 = !DILocation(line: 939, column: 10, scope: !2171)
!2182 = !DILocation(line: 939, column: 3, scope: !2171)
!2183 = distinct !DISubprogram(name: "quotearg", scope: !116, file: !116, line: 943, type: !824, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2184)
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "arg", arg: 1, scope: !2183, file: !116, line: 943, type: !24)
!2186 = !DILocation(line: 943, column: 23, scope: !2183)
!2187 = !DILocation(line: 931, column: 17, scope: !2065, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 945, column: 10, scope: !2183)
!2189 = !DILocation(line: 931, column: 32, scope: !2065, inlinedAt: !2188)
!2190 = !DILocation(line: 933, column: 10, scope: !2065, inlinedAt: !2188)
!2191 = !DILocation(line: 945, column: 3, scope: !2183)
!2192 = distinct !DISubprogram(name: "quotearg_mem", scope: !116, file: !116, line: 949, type: !2193, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!6, !24, !27}
!2195 = !{!2196, !2197}
!2196 = !DILocalVariable(name: "arg", arg: 1, scope: !2192, file: !116, line: 949, type: !24)
!2197 = !DILocalVariable(name: "argsize", arg: 2, scope: !2192, file: !116, line: 949, type: !27)
!2198 = !DILocation(line: 949, column: 27, scope: !2192)
!2199 = !DILocation(line: 949, column: 39, scope: !2192)
!2200 = !DILocation(line: 937, column: 21, scope: !2171, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 951, column: 10, scope: !2192)
!2202 = !DILocation(line: 937, column: 36, scope: !2171, inlinedAt: !2201)
!2203 = !DILocation(line: 937, column: 48, scope: !2171, inlinedAt: !2201)
!2204 = !DILocation(line: 939, column: 10, scope: !2171, inlinedAt: !2201)
!2205 = !DILocation(line: 951, column: 3, scope: !2192)
!2206 = distinct !DISubprogram(name: "quotearg_n_style", scope: !116, file: !116, line: 955, type: !2207, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!6, !16, !76, !24}
!2209 = !{!2210, !2211, !2212, !2213}
!2210 = !DILocalVariable(name: "n", arg: 1, scope: !2206, file: !116, line: 955, type: !16)
!2211 = !DILocalVariable(name: "s", arg: 2, scope: !2206, file: !116, line: 955, type: !76)
!2212 = !DILocalVariable(name: "arg", arg: 3, scope: !2206, file: !116, line: 955, type: !24)
!2213 = !DILocalVariable(name: "o", scope: !2206, file: !116, line: 957, type: !977)
!2214 = !DILocation(line: 955, column: 23, scope: !2206)
!2215 = !DILocation(line: 955, column: 45, scope: !2206)
!2216 = !DILocation(line: 955, column: 60, scope: !2206)
!2217 = !DILocation(line: 957, column: 3, scope: !2206)
!2218 = !DILocation(line: 957, column: 32, scope: !2206)
!2219 = !DILocalVariable(name: "style", arg: 1, scope: !2220, file: !116, line: 193, type: !76)
!2220 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !116, file: !116, line: 193, type: !2221, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2223)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!123, !76}
!2223 = !{!2219, !2224}
!2224 = !DILocalVariable(name: "o", scope: !2220, file: !116, line: 195, type: !123)
!2225 = !DILocation(line: 193, column: 48, scope: !2220, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 957, column: 36, scope: !2206)
!2227 = !DILocation(line: 195, column: 26, scope: !2220, inlinedAt: !2226)
!2228 = !{!2229}
!2229 = distinct !{!2229, !2230, !"quoting_options_from_style: argument 0"}
!2230 = distinct !{!2230, !"quoting_options_from_style"}
!2231 = !DILocation(line: 196, column: 13, scope: !2232, inlinedAt: !2226)
!2232 = distinct !DILexicalBlock(scope: !2220, file: !116, line: 196, column: 7)
!2233 = !DILocation(line: 196, column: 7, scope: !2220, inlinedAt: !2226)
!2234 = !DILocation(line: 197, column: 5, scope: !2232, inlinedAt: !2226)
!2235 = !DILocation(line: 198, column: 5, scope: !2220, inlinedAt: !2226)
!2236 = !DILocation(line: 198, column: 11, scope: !2220, inlinedAt: !2226)
!2237 = !DILocation(line: 958, column: 10, scope: !2206)
!2238 = !DILocation(line: 959, column: 1, scope: !2206)
!2239 = !DILocation(line: 958, column: 3, scope: !2206)
!2240 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !116, file: !116, line: 962, type: !2241, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!6, !16, !76, !24, !27}
!2243 = !{!2244, !2245, !2246, !2247, !2248}
!2244 = !DILocalVariable(name: "n", arg: 1, scope: !2240, file: !116, line: 962, type: !16)
!2245 = !DILocalVariable(name: "s", arg: 2, scope: !2240, file: !116, line: 962, type: !76)
!2246 = !DILocalVariable(name: "arg", arg: 3, scope: !2240, file: !116, line: 963, type: !24)
!2247 = !DILocalVariable(name: "argsize", arg: 4, scope: !2240, file: !116, line: 963, type: !27)
!2248 = !DILocalVariable(name: "o", scope: !2240, file: !116, line: 965, type: !977)
!2249 = !DILocation(line: 962, column: 27, scope: !2240)
!2250 = !DILocation(line: 962, column: 49, scope: !2240)
!2251 = !DILocation(line: 963, column: 35, scope: !2240)
!2252 = !DILocation(line: 963, column: 47, scope: !2240)
!2253 = !DILocation(line: 965, column: 3, scope: !2240)
!2254 = !DILocation(line: 965, column: 32, scope: !2240)
!2255 = !DILocation(line: 193, column: 48, scope: !2220, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 965, column: 36, scope: !2240)
!2257 = !DILocation(line: 195, column: 26, scope: !2220, inlinedAt: !2256)
!2258 = !{!2259}
!2259 = distinct !{!2259, !2260, !"quoting_options_from_style: argument 0"}
!2260 = distinct !{!2260, !"quoting_options_from_style"}
!2261 = !DILocation(line: 196, column: 13, scope: !2232, inlinedAt: !2256)
!2262 = !DILocation(line: 196, column: 7, scope: !2220, inlinedAt: !2256)
!2263 = !DILocation(line: 197, column: 5, scope: !2232, inlinedAt: !2256)
!2264 = !DILocation(line: 198, column: 5, scope: !2220, inlinedAt: !2256)
!2265 = !DILocation(line: 198, column: 11, scope: !2220, inlinedAt: !2256)
!2266 = !DILocation(line: 966, column: 10, scope: !2240)
!2267 = !DILocation(line: 967, column: 1, scope: !2240)
!2268 = !DILocation(line: 966, column: 3, scope: !2240)
!2269 = distinct !DISubprogram(name: "quotearg_style", scope: !116, file: !116, line: 970, type: !2270, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!6, !76, !24}
!2272 = !{!2273, !2274}
!2273 = !DILocalVariable(name: "s", arg: 1, scope: !2269, file: !116, line: 970, type: !76)
!2274 = !DILocalVariable(name: "arg", arg: 2, scope: !2269, file: !116, line: 970, type: !24)
!2275 = !DILocation(line: 970, column: 36, scope: !2269)
!2276 = !DILocation(line: 970, column: 51, scope: !2269)
!2277 = !DILocation(line: 955, column: 23, scope: !2206, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 972, column: 10, scope: !2269)
!2279 = !DILocation(line: 955, column: 45, scope: !2206, inlinedAt: !2278)
!2280 = !DILocation(line: 955, column: 60, scope: !2206, inlinedAt: !2278)
!2281 = !DILocation(line: 957, column: 3, scope: !2206, inlinedAt: !2278)
!2282 = !DILocation(line: 957, column: 32, scope: !2206, inlinedAt: !2278)
!2283 = !DILocation(line: 193, column: 48, scope: !2220, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 957, column: 36, scope: !2206, inlinedAt: !2278)
!2285 = !DILocation(line: 195, column: 26, scope: !2220, inlinedAt: !2284)
!2286 = !{!2287}
!2287 = distinct !{!2287, !2288, !"quoting_options_from_style: argument 0"}
!2288 = distinct !{!2288, !"quoting_options_from_style"}
!2289 = !DILocation(line: 196, column: 13, scope: !2232, inlinedAt: !2284)
!2290 = !DILocation(line: 196, column: 7, scope: !2220, inlinedAt: !2284)
!2291 = !DILocation(line: 197, column: 5, scope: !2232, inlinedAt: !2284)
!2292 = !DILocation(line: 198, column: 5, scope: !2220, inlinedAt: !2284)
!2293 = !DILocation(line: 198, column: 11, scope: !2220, inlinedAt: !2284)
!2294 = !DILocation(line: 958, column: 10, scope: !2206, inlinedAt: !2278)
!2295 = !DILocation(line: 959, column: 1, scope: !2206, inlinedAt: !2278)
!2296 = !DILocation(line: 972, column: 3, scope: !2269)
!2297 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !116, file: !116, line: 976, type: !2298, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!6, !76, !24, !27}
!2300 = !{!2301, !2302, !2303}
!2301 = !DILocalVariable(name: "s", arg: 1, scope: !2297, file: !116, line: 976, type: !76)
!2302 = !DILocalVariable(name: "arg", arg: 2, scope: !2297, file: !116, line: 976, type: !24)
!2303 = !DILocalVariable(name: "argsize", arg: 3, scope: !2297, file: !116, line: 976, type: !27)
!2304 = !DILocation(line: 976, column: 40, scope: !2297)
!2305 = !DILocation(line: 976, column: 55, scope: !2297)
!2306 = !DILocation(line: 976, column: 67, scope: !2297)
!2307 = !DILocation(line: 962, column: 27, scope: !2240, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 978, column: 10, scope: !2297)
!2309 = !DILocation(line: 962, column: 49, scope: !2240, inlinedAt: !2308)
!2310 = !DILocation(line: 963, column: 35, scope: !2240, inlinedAt: !2308)
!2311 = !DILocation(line: 963, column: 47, scope: !2240, inlinedAt: !2308)
!2312 = !DILocation(line: 965, column: 3, scope: !2240, inlinedAt: !2308)
!2313 = !DILocation(line: 965, column: 32, scope: !2240, inlinedAt: !2308)
!2314 = !DILocation(line: 193, column: 48, scope: !2220, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 965, column: 36, scope: !2240, inlinedAt: !2308)
!2316 = !DILocation(line: 195, column: 26, scope: !2220, inlinedAt: !2315)
!2317 = !{!2318}
!2318 = distinct !{!2318, !2319, !"quoting_options_from_style: argument 0"}
!2319 = distinct !{!2319, !"quoting_options_from_style"}
!2320 = !DILocation(line: 196, column: 13, scope: !2232, inlinedAt: !2315)
!2321 = !DILocation(line: 196, column: 7, scope: !2220, inlinedAt: !2315)
!2322 = !DILocation(line: 197, column: 5, scope: !2232, inlinedAt: !2315)
!2323 = !DILocation(line: 198, column: 5, scope: !2220, inlinedAt: !2315)
!2324 = !DILocation(line: 198, column: 11, scope: !2220, inlinedAt: !2315)
!2325 = !DILocation(line: 966, column: 10, scope: !2240, inlinedAt: !2308)
!2326 = !DILocation(line: 967, column: 1, scope: !2240, inlinedAt: !2308)
!2327 = !DILocation(line: 978, column: 3, scope: !2297)
!2328 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !116, file: !116, line: 982, type: !2329, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!6, !24, !27, !7}
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DILocalVariable(name: "arg", arg: 1, scope: !2328, file: !116, line: 982, type: !24)
!2333 = !DILocalVariable(name: "argsize", arg: 2, scope: !2328, file: !116, line: 982, type: !27)
!2334 = !DILocalVariable(name: "ch", arg: 3, scope: !2328, file: !116, line: 982, type: !7)
!2335 = !DILocalVariable(name: "options", scope: !2328, file: !116, line: 984, type: !123)
!2336 = !DILocation(line: 982, column: 32, scope: !2328)
!2337 = !DILocation(line: 982, column: 44, scope: !2328)
!2338 = !DILocation(line: 982, column: 58, scope: !2328)
!2339 = !DILocation(line: 984, column: 3, scope: !2328)
!2340 = !DILocation(line: 985, column: 13, scope: !2328)
!2341 = !{i64 0, i64 4, !738, i64 4, i64 4, !703, i64 8, i64 32, !738, i64 40, i64 8, !639, i64 48, i64 8, !639}
!2342 = !DILocation(line: 984, column: 26, scope: !2328)
!2343 = !DILocation(line: 152, column: 43, scope: !998, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 986, column: 3, scope: !2328)
!2345 = !DILocation(line: 152, column: 51, scope: !998, inlinedAt: !2344)
!2346 = !DILocation(line: 152, column: 58, scope: !998, inlinedAt: !2344)
!2347 = !DILocation(line: 154, column: 17, scope: !998, inlinedAt: !2344)
!2348 = !DILocation(line: 156, column: 62, scope: !998, inlinedAt: !2344)
!2349 = !DILocation(line: 156, column: 57, scope: !998, inlinedAt: !2344)
!2350 = !DILocation(line: 155, column: 17, scope: !998, inlinedAt: !2344)
!2351 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !2344)
!2352 = !DILocation(line: 157, column: 7, scope: !998, inlinedAt: !2344)
!2353 = !DILocation(line: 158, column: 12, scope: !998, inlinedAt: !2344)
!2354 = !DILocation(line: 158, column: 15, scope: !998, inlinedAt: !2344)
!2355 = !DILocation(line: 158, column: 25, scope: !998, inlinedAt: !2344)
!2356 = !DILocation(line: 158, column: 7, scope: !998, inlinedAt: !2344)
!2357 = !DILocation(line: 159, column: 18, scope: !998, inlinedAt: !2344)
!2358 = !DILocation(line: 159, column: 23, scope: !998, inlinedAt: !2344)
!2359 = !DILocation(line: 159, column: 6, scope: !998, inlinedAt: !2344)
!2360 = !DILocation(line: 987, column: 10, scope: !2328)
!2361 = !DILocation(line: 988, column: 1, scope: !2328)
!2362 = !DILocation(line: 987, column: 3, scope: !2328)
!2363 = distinct !DISubprogram(name: "quotearg_char", scope: !116, file: !116, line: 991, type: !2364, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!6, !24, !7}
!2366 = !{!2367, !2368}
!2367 = !DILocalVariable(name: "arg", arg: 1, scope: !2363, file: !116, line: 991, type: !24)
!2368 = !DILocalVariable(name: "ch", arg: 2, scope: !2363, file: !116, line: 991, type: !7)
!2369 = !DILocation(line: 991, column: 28, scope: !2363)
!2370 = !DILocation(line: 991, column: 38, scope: !2363)
!2371 = !DILocation(line: 982, column: 32, scope: !2328, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 993, column: 10, scope: !2363)
!2373 = !DILocation(line: 982, column: 44, scope: !2328, inlinedAt: !2372)
!2374 = !DILocation(line: 982, column: 58, scope: !2328, inlinedAt: !2372)
!2375 = !DILocation(line: 984, column: 3, scope: !2328, inlinedAt: !2372)
!2376 = !DILocation(line: 985, column: 13, scope: !2328, inlinedAt: !2372)
!2377 = !DILocation(line: 984, column: 26, scope: !2328, inlinedAt: !2372)
!2378 = !DILocation(line: 152, column: 43, scope: !998, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 986, column: 3, scope: !2328, inlinedAt: !2372)
!2380 = !DILocation(line: 152, column: 51, scope: !998, inlinedAt: !2379)
!2381 = !DILocation(line: 152, column: 58, scope: !998, inlinedAt: !2379)
!2382 = !DILocation(line: 154, column: 17, scope: !998, inlinedAt: !2379)
!2383 = !DILocation(line: 156, column: 62, scope: !998, inlinedAt: !2379)
!2384 = !DILocation(line: 156, column: 57, scope: !998, inlinedAt: !2379)
!2385 = !DILocation(line: 155, column: 17, scope: !998, inlinedAt: !2379)
!2386 = !DILocation(line: 157, column: 15, scope: !998, inlinedAt: !2379)
!2387 = !DILocation(line: 157, column: 7, scope: !998, inlinedAt: !2379)
!2388 = !DILocation(line: 158, column: 12, scope: !998, inlinedAt: !2379)
!2389 = !DILocation(line: 158, column: 15, scope: !998, inlinedAt: !2379)
!2390 = !DILocation(line: 158, column: 25, scope: !998, inlinedAt: !2379)
!2391 = !DILocation(line: 158, column: 7, scope: !998, inlinedAt: !2379)
!2392 = !DILocation(line: 159, column: 18, scope: !998, inlinedAt: !2379)
!2393 = !DILocation(line: 159, column: 23, scope: !998, inlinedAt: !2379)
!2394 = !DILocation(line: 159, column: 6, scope: !998, inlinedAt: !2379)
!2395 = !DILocation(line: 987, column: 10, scope: !2328, inlinedAt: !2372)
!2396 = !DILocation(line: 988, column: 1, scope: !2328, inlinedAt: !2372)
!2397 = !DILocation(line: 993, column: 3, scope: !2363)
!2398 = distinct !DISubprogram(name: "quotearg_colon", scope: !116, file: !116, line: 997, type: !824, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2399)
!2399 = !{!2400}
!2400 = !DILocalVariable(name: "arg", arg: 1, scope: !2398, file: !116, line: 997, type: !24)
!2401 = !DILocation(line: 997, column: 29, scope: !2398)
!2402 = !DILocation(line: 991, column: 28, scope: !2363, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 999, column: 10, scope: !2398)
!2404 = !DILocation(line: 991, column: 38, scope: !2363, inlinedAt: !2403)
!2405 = !DILocation(line: 982, column: 32, scope: !2328, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 993, column: 10, scope: !2363, inlinedAt: !2403)
!2407 = !DILocation(line: 982, column: 44, scope: !2328, inlinedAt: !2406)
!2408 = !DILocation(line: 982, column: 58, scope: !2328, inlinedAt: !2406)
!2409 = !DILocation(line: 984, column: 3, scope: !2328, inlinedAt: !2406)
!2410 = !DILocation(line: 985, column: 13, scope: !2328, inlinedAt: !2406)
!2411 = !DILocation(line: 984, column: 26, scope: !2328, inlinedAt: !2406)
!2412 = !DILocation(line: 152, column: 43, scope: !998, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 986, column: 3, scope: !2328, inlinedAt: !2406)
!2414 = !DILocation(line: 152, column: 51, scope: !998, inlinedAt: !2413)
!2415 = !DILocation(line: 152, column: 58, scope: !998, inlinedAt: !2413)
!2416 = !DILocation(line: 154, column: 17, scope: !998, inlinedAt: !2413)
!2417 = !DILocation(line: 156, column: 57, scope: !998, inlinedAt: !2413)
!2418 = !DILocation(line: 155, column: 17, scope: !998, inlinedAt: !2413)
!2419 = !DILocation(line: 157, column: 7, scope: !998, inlinedAt: !2413)
!2420 = !DILocation(line: 158, column: 12, scope: !998, inlinedAt: !2413)
!2421 = !DILocation(line: 159, column: 6, scope: !998, inlinedAt: !2413)
!2422 = !DILocation(line: 987, column: 10, scope: !2328, inlinedAt: !2406)
!2423 = !DILocation(line: 988, column: 1, scope: !2328, inlinedAt: !2406)
!2424 = !DILocation(line: 999, column: 3, scope: !2398)
!2425 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !116, file: !116, line: 1003, type: !2193, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2426)
!2426 = !{!2427, !2428}
!2427 = !DILocalVariable(name: "arg", arg: 1, scope: !2425, file: !116, line: 1003, type: !24)
!2428 = !DILocalVariable(name: "argsize", arg: 2, scope: !2425, file: !116, line: 1003, type: !27)
!2429 = !DILocation(line: 1003, column: 33, scope: !2425)
!2430 = !DILocation(line: 1003, column: 45, scope: !2425)
!2431 = !DILocation(line: 982, column: 32, scope: !2328, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1005, column: 10, scope: !2425)
!2433 = !DILocation(line: 982, column: 44, scope: !2328, inlinedAt: !2432)
!2434 = !DILocation(line: 982, column: 58, scope: !2328, inlinedAt: !2432)
!2435 = !DILocation(line: 984, column: 3, scope: !2328, inlinedAt: !2432)
!2436 = !DILocation(line: 985, column: 13, scope: !2328, inlinedAt: !2432)
!2437 = !DILocation(line: 984, column: 26, scope: !2328, inlinedAt: !2432)
!2438 = !DILocation(line: 152, column: 43, scope: !998, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 986, column: 3, scope: !2328, inlinedAt: !2432)
!2440 = !DILocation(line: 152, column: 51, scope: !998, inlinedAt: !2439)
!2441 = !DILocation(line: 152, column: 58, scope: !998, inlinedAt: !2439)
!2442 = !DILocation(line: 154, column: 17, scope: !998, inlinedAt: !2439)
!2443 = !DILocation(line: 156, column: 57, scope: !998, inlinedAt: !2439)
!2444 = !DILocation(line: 155, column: 17, scope: !998, inlinedAt: !2439)
!2445 = !DILocation(line: 157, column: 7, scope: !998, inlinedAt: !2439)
!2446 = !DILocation(line: 158, column: 12, scope: !998, inlinedAt: !2439)
!2447 = !DILocation(line: 159, column: 6, scope: !998, inlinedAt: !2439)
!2448 = !DILocation(line: 987, column: 10, scope: !2328, inlinedAt: !2432)
!2449 = !DILocation(line: 988, column: 1, scope: !2328, inlinedAt: !2432)
!2450 = !DILocation(line: 1005, column: 3, scope: !2425)
!2451 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !116, file: !116, line: 1009, type: !2207, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2452)
!2452 = !{!2453, !2454, !2455, !2456}
!2453 = !DILocalVariable(name: "n", arg: 1, scope: !2451, file: !116, line: 1009, type: !16)
!2454 = !DILocalVariable(name: "s", arg: 2, scope: !2451, file: !116, line: 1009, type: !76)
!2455 = !DILocalVariable(name: "arg", arg: 3, scope: !2451, file: !116, line: 1009, type: !24)
!2456 = !DILocalVariable(name: "options", scope: !2451, file: !116, line: 1011, type: !123)
!2457 = !DILocation(line: 195, column: 26, scope: !2220, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 1012, column: 13, scope: !2451)
!2459 = !DILocation(line: 1009, column: 29, scope: !2451)
!2460 = !DILocation(line: 1009, column: 51, scope: !2451)
!2461 = !DILocation(line: 1009, column: 66, scope: !2451)
!2462 = !DILocation(line: 1011, column: 3, scope: !2451)
!2463 = !DILocation(line: 1012, column: 13, scope: !2451)
!2464 = !DILocation(line: 193, column: 48, scope: !2220, inlinedAt: !2458)
!2465 = !{!2466}
!2466 = distinct !{!2466, !2467, !"quoting_options_from_style: argument 0"}
!2467 = distinct !{!2467, !"quoting_options_from_style"}
!2468 = !DILocation(line: 196, column: 13, scope: !2232, inlinedAt: !2458)
!2469 = !DILocation(line: 196, column: 7, scope: !2220, inlinedAt: !2458)
!2470 = !DILocation(line: 197, column: 5, scope: !2232, inlinedAt: !2458)
!2471 = !DILocation(line: 1011, column: 26, scope: !2451)
!2472 = !DILocation(line: 152, column: 43, scope: !998, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 1013, column: 3, scope: !2451)
!2474 = !DILocation(line: 152, column: 51, scope: !998, inlinedAt: !2473)
!2475 = !DILocation(line: 152, column: 58, scope: !998, inlinedAt: !2473)
!2476 = !DILocation(line: 154, column: 17, scope: !998, inlinedAt: !2473)
!2477 = !DILocation(line: 156, column: 57, scope: !998, inlinedAt: !2473)
!2478 = !DILocation(line: 155, column: 17, scope: !998, inlinedAt: !2473)
!2479 = !DILocation(line: 157, column: 7, scope: !998, inlinedAt: !2473)
!2480 = !DILocation(line: 158, column: 12, scope: !998, inlinedAt: !2473)
!2481 = !DILocation(line: 159, column: 6, scope: !998, inlinedAt: !2473)
!2482 = !DILocation(line: 1014, column: 10, scope: !2451)
!2483 = !DILocation(line: 1015, column: 1, scope: !2451)
!2484 = !DILocation(line: 1014, column: 3, scope: !2451)
!2485 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !116, file: !116, line: 1018, type: !2486, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!6, !16, !24, !24, !24}
!2488 = !{!2489, !2490, !2491, !2492}
!2489 = !DILocalVariable(name: "n", arg: 1, scope: !2485, file: !116, line: 1018, type: !16)
!2490 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2485, file: !116, line: 1018, type: !24)
!2491 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2485, file: !116, line: 1019, type: !24)
!2492 = !DILocalVariable(name: "arg", arg: 4, scope: !2485, file: !116, line: 1019, type: !24)
!2493 = !DILocation(line: 1018, column: 24, scope: !2485)
!2494 = !DILocation(line: 1018, column: 39, scope: !2485)
!2495 = !DILocation(line: 1019, column: 32, scope: !2485)
!2496 = !DILocation(line: 1019, column: 57, scope: !2485)
!2497 = !DILocalVariable(name: "n", arg: 1, scope: !2498, file: !116, line: 1026, type: !16)
!2498 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !116, file: !116, line: 1026, type: !2499, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!6, !16, !24, !24, !24, !27}
!2501 = !{!2497, !2502, !2503, !2504, !2505, !2506}
!2502 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2498, file: !116, line: 1026, type: !24)
!2503 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2498, file: !116, line: 1027, type: !24)
!2504 = !DILocalVariable(name: "arg", arg: 4, scope: !2498, file: !116, line: 1028, type: !24)
!2505 = !DILocalVariable(name: "argsize", arg: 5, scope: !2498, file: !116, line: 1028, type: !27)
!2506 = !DILocalVariable(name: "o", scope: !2498, file: !116, line: 1030, type: !123)
!2507 = !DILocation(line: 1026, column: 28, scope: !2498, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 1021, column: 10, scope: !2485)
!2509 = !DILocation(line: 1026, column: 43, scope: !2498, inlinedAt: !2508)
!2510 = !DILocation(line: 1027, column: 36, scope: !2498, inlinedAt: !2508)
!2511 = !DILocation(line: 1028, column: 36, scope: !2498, inlinedAt: !2508)
!2512 = !DILocation(line: 1028, column: 48, scope: !2498, inlinedAt: !2508)
!2513 = !DILocation(line: 1030, column: 3, scope: !2498, inlinedAt: !2508)
!2514 = !DILocation(line: 1030, column: 30, scope: !2498, inlinedAt: !2508)
!2515 = !DILocation(line: 1030, column: 26, scope: !2498, inlinedAt: !2508)
!2516 = !DILocation(line: 179, column: 45, scope: !1046, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 1031, column: 3, scope: !2498, inlinedAt: !2508)
!2518 = !DILocation(line: 180, column: 33, scope: !1046, inlinedAt: !2517)
!2519 = !DILocation(line: 180, column: 57, scope: !1046, inlinedAt: !2517)
!2520 = !DILocation(line: 184, column: 6, scope: !1046, inlinedAt: !2517)
!2521 = !DILocation(line: 184, column: 12, scope: !1046, inlinedAt: !2517)
!2522 = !DILocation(line: 185, column: 8, scope: !1062, inlinedAt: !2517)
!2523 = !DILocation(line: 185, column: 23, scope: !1062, inlinedAt: !2517)
!2524 = !DILocation(line: 185, column: 19, scope: !1062, inlinedAt: !2517)
!2525 = !DILocation(line: 186, column: 5, scope: !1062, inlinedAt: !2517)
!2526 = !DILocation(line: 187, column: 6, scope: !1046, inlinedAt: !2517)
!2527 = !DILocation(line: 187, column: 17, scope: !1046, inlinedAt: !2517)
!2528 = !DILocation(line: 188, column: 6, scope: !1046, inlinedAt: !2517)
!2529 = !DILocation(line: 188, column: 18, scope: !1046, inlinedAt: !2517)
!2530 = !DILocation(line: 1032, column: 10, scope: !2498, inlinedAt: !2508)
!2531 = !DILocation(line: 1033, column: 1, scope: !2498, inlinedAt: !2508)
!2532 = !DILocation(line: 1021, column: 3, scope: !2485)
!2533 = !DILocation(line: 1026, column: 28, scope: !2498)
!2534 = !DILocation(line: 1026, column: 43, scope: !2498)
!2535 = !DILocation(line: 1027, column: 36, scope: !2498)
!2536 = !DILocation(line: 1028, column: 36, scope: !2498)
!2537 = !DILocation(line: 1028, column: 48, scope: !2498)
!2538 = !DILocation(line: 1030, column: 3, scope: !2498)
!2539 = !DILocation(line: 1030, column: 30, scope: !2498)
!2540 = !DILocation(line: 1030, column: 26, scope: !2498)
!2541 = !DILocation(line: 179, column: 45, scope: !1046, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 1031, column: 3, scope: !2498)
!2543 = !DILocation(line: 180, column: 33, scope: !1046, inlinedAt: !2542)
!2544 = !DILocation(line: 180, column: 57, scope: !1046, inlinedAt: !2542)
!2545 = !DILocation(line: 184, column: 6, scope: !1046, inlinedAt: !2542)
!2546 = !DILocation(line: 184, column: 12, scope: !1046, inlinedAt: !2542)
!2547 = !DILocation(line: 185, column: 8, scope: !1062, inlinedAt: !2542)
!2548 = !DILocation(line: 185, column: 23, scope: !1062, inlinedAt: !2542)
!2549 = !DILocation(line: 185, column: 19, scope: !1062, inlinedAt: !2542)
!2550 = !DILocation(line: 186, column: 5, scope: !1062, inlinedAt: !2542)
!2551 = !DILocation(line: 187, column: 6, scope: !1046, inlinedAt: !2542)
!2552 = !DILocation(line: 187, column: 17, scope: !1046, inlinedAt: !2542)
!2553 = !DILocation(line: 188, column: 6, scope: !1046, inlinedAt: !2542)
!2554 = !DILocation(line: 188, column: 18, scope: !1046, inlinedAt: !2542)
!2555 = !DILocation(line: 1032, column: 10, scope: !2498)
!2556 = !DILocation(line: 1033, column: 1, scope: !2498)
!2557 = !DILocation(line: 1032, column: 3, scope: !2498)
!2558 = distinct !DISubprogram(name: "quotearg_custom", scope: !116, file: !116, line: 1036, type: !2559, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!6, !24, !24, !24}
!2561 = !{!2562, !2563, !2564}
!2562 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2558, file: !116, line: 1036, type: !24)
!2563 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2558, file: !116, line: 1036, type: !24)
!2564 = !DILocalVariable(name: "arg", arg: 3, scope: !2558, file: !116, line: 1037, type: !24)
!2565 = !DILocation(line: 1036, column: 30, scope: !2558)
!2566 = !DILocation(line: 1036, column: 54, scope: !2558)
!2567 = !DILocation(line: 1037, column: 30, scope: !2558)
!2568 = !DILocation(line: 1018, column: 24, scope: !2485, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 1039, column: 10, scope: !2558)
!2570 = !DILocation(line: 1018, column: 39, scope: !2485, inlinedAt: !2569)
!2571 = !DILocation(line: 1019, column: 32, scope: !2485, inlinedAt: !2569)
!2572 = !DILocation(line: 1019, column: 57, scope: !2485, inlinedAt: !2569)
!2573 = !DILocation(line: 1026, column: 28, scope: !2498, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 1021, column: 10, scope: !2485, inlinedAt: !2569)
!2575 = !DILocation(line: 1026, column: 43, scope: !2498, inlinedAt: !2574)
!2576 = !DILocation(line: 1027, column: 36, scope: !2498, inlinedAt: !2574)
!2577 = !DILocation(line: 1028, column: 36, scope: !2498, inlinedAt: !2574)
!2578 = !DILocation(line: 1028, column: 48, scope: !2498, inlinedAt: !2574)
!2579 = !DILocation(line: 1030, column: 3, scope: !2498, inlinedAt: !2574)
!2580 = !DILocation(line: 1030, column: 30, scope: !2498, inlinedAt: !2574)
!2581 = !DILocation(line: 1030, column: 26, scope: !2498, inlinedAt: !2574)
!2582 = !DILocation(line: 179, column: 45, scope: !1046, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 1031, column: 3, scope: !2498, inlinedAt: !2574)
!2584 = !DILocation(line: 180, column: 33, scope: !1046, inlinedAt: !2583)
!2585 = !DILocation(line: 180, column: 57, scope: !1046, inlinedAt: !2583)
!2586 = !DILocation(line: 184, column: 6, scope: !1046, inlinedAt: !2583)
!2587 = !DILocation(line: 184, column: 12, scope: !1046, inlinedAt: !2583)
!2588 = !DILocation(line: 185, column: 8, scope: !1062, inlinedAt: !2583)
!2589 = !DILocation(line: 185, column: 23, scope: !1062, inlinedAt: !2583)
!2590 = !DILocation(line: 185, column: 19, scope: !1062, inlinedAt: !2583)
!2591 = !DILocation(line: 186, column: 5, scope: !1062, inlinedAt: !2583)
!2592 = !DILocation(line: 187, column: 6, scope: !1046, inlinedAt: !2583)
!2593 = !DILocation(line: 187, column: 17, scope: !1046, inlinedAt: !2583)
!2594 = !DILocation(line: 188, column: 6, scope: !1046, inlinedAt: !2583)
!2595 = !DILocation(line: 188, column: 18, scope: !1046, inlinedAt: !2583)
!2596 = !DILocation(line: 1032, column: 10, scope: !2498, inlinedAt: !2574)
!2597 = !DILocation(line: 1033, column: 1, scope: !2498, inlinedAt: !2574)
!2598 = !DILocation(line: 1039, column: 3, scope: !2558)
!2599 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !116, file: !116, line: 1043, type: !2600, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!6, !24, !24, !24, !27}
!2602 = !{!2603, !2604, !2605, !2606}
!2603 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2599, file: !116, line: 1043, type: !24)
!2604 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2599, file: !116, line: 1043, type: !24)
!2605 = !DILocalVariable(name: "arg", arg: 3, scope: !2599, file: !116, line: 1044, type: !24)
!2606 = !DILocalVariable(name: "argsize", arg: 4, scope: !2599, file: !116, line: 1044, type: !27)
!2607 = !DILocation(line: 1043, column: 34, scope: !2599)
!2608 = !DILocation(line: 1043, column: 58, scope: !2599)
!2609 = !DILocation(line: 1044, column: 34, scope: !2599)
!2610 = !DILocation(line: 1044, column: 46, scope: !2599)
!2611 = !DILocation(line: 1026, column: 28, scope: !2498, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1046, column: 10, scope: !2599)
!2613 = !DILocation(line: 1026, column: 43, scope: !2498, inlinedAt: !2612)
!2614 = !DILocation(line: 1027, column: 36, scope: !2498, inlinedAt: !2612)
!2615 = !DILocation(line: 1028, column: 36, scope: !2498, inlinedAt: !2612)
!2616 = !DILocation(line: 1028, column: 48, scope: !2498, inlinedAt: !2612)
!2617 = !DILocation(line: 1030, column: 3, scope: !2498, inlinedAt: !2612)
!2618 = !DILocation(line: 1030, column: 30, scope: !2498, inlinedAt: !2612)
!2619 = !DILocation(line: 1030, column: 26, scope: !2498, inlinedAt: !2612)
!2620 = !DILocation(line: 179, column: 45, scope: !1046, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1031, column: 3, scope: !2498, inlinedAt: !2612)
!2622 = !DILocation(line: 180, column: 33, scope: !1046, inlinedAt: !2621)
!2623 = !DILocation(line: 180, column: 57, scope: !1046, inlinedAt: !2621)
!2624 = !DILocation(line: 184, column: 6, scope: !1046, inlinedAt: !2621)
!2625 = !DILocation(line: 184, column: 12, scope: !1046, inlinedAt: !2621)
!2626 = !DILocation(line: 185, column: 8, scope: !1062, inlinedAt: !2621)
!2627 = !DILocation(line: 185, column: 23, scope: !1062, inlinedAt: !2621)
!2628 = !DILocation(line: 185, column: 19, scope: !1062, inlinedAt: !2621)
!2629 = !DILocation(line: 186, column: 5, scope: !1062, inlinedAt: !2621)
!2630 = !DILocation(line: 187, column: 6, scope: !1046, inlinedAt: !2621)
!2631 = !DILocation(line: 187, column: 17, scope: !1046, inlinedAt: !2621)
!2632 = !DILocation(line: 188, column: 6, scope: !1046, inlinedAt: !2621)
!2633 = !DILocation(line: 188, column: 18, scope: !1046, inlinedAt: !2621)
!2634 = !DILocation(line: 1032, column: 10, scope: !2498, inlinedAt: !2612)
!2635 = !DILocation(line: 1033, column: 1, scope: !2498, inlinedAt: !2612)
!2636 = !DILocation(line: 1046, column: 3, scope: !2599)
!2637 = distinct !DISubprogram(name: "quote_n_mem", scope: !116, file: !116, line: 1061, type: !2638, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!24, !16, !24, !27}
!2640 = !{!2641, !2642, !2643}
!2641 = !DILocalVariable(name: "n", arg: 1, scope: !2637, file: !116, line: 1061, type: !16)
!2642 = !DILocalVariable(name: "arg", arg: 2, scope: !2637, file: !116, line: 1061, type: !24)
!2643 = !DILocalVariable(name: "argsize", arg: 3, scope: !2637, file: !116, line: 1061, type: !27)
!2644 = !DILocation(line: 1061, column: 18, scope: !2637)
!2645 = !DILocation(line: 1061, column: 33, scope: !2637)
!2646 = !DILocation(line: 1061, column: 45, scope: !2637)
!2647 = !DILocation(line: 1063, column: 10, scope: !2637)
!2648 = !DILocation(line: 1063, column: 3, scope: !2637)
!2649 = distinct !DISubprogram(name: "quote_mem", scope: !116, file: !116, line: 1067, type: !2650, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!24, !24, !27}
!2652 = !{!2653, !2654}
!2653 = !DILocalVariable(name: "arg", arg: 1, scope: !2649, file: !116, line: 1067, type: !24)
!2654 = !DILocalVariable(name: "argsize", arg: 2, scope: !2649, file: !116, line: 1067, type: !27)
!2655 = !DILocation(line: 1067, column: 24, scope: !2649)
!2656 = !DILocation(line: 1067, column: 36, scope: !2649)
!2657 = !DILocation(line: 1061, column: 18, scope: !2637, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 1069, column: 10, scope: !2649)
!2659 = !DILocation(line: 1061, column: 33, scope: !2637, inlinedAt: !2658)
!2660 = !DILocation(line: 1061, column: 45, scope: !2637, inlinedAt: !2658)
!2661 = !DILocation(line: 1063, column: 10, scope: !2637, inlinedAt: !2658)
!2662 = !DILocation(line: 1069, column: 3, scope: !2649)
!2663 = distinct !DISubprogram(name: "quote_n", scope: !116, file: !116, line: 1073, type: !2664, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!24, !16, !24}
!2666 = !{!2667, !2668}
!2667 = !DILocalVariable(name: "n", arg: 1, scope: !2663, file: !116, line: 1073, type: !16)
!2668 = !DILocalVariable(name: "arg", arg: 2, scope: !2663, file: !116, line: 1073, type: !24)
!2669 = !DILocation(line: 1073, column: 14, scope: !2663)
!2670 = !DILocation(line: 1073, column: 29, scope: !2663)
!2671 = !DILocation(line: 1061, column: 18, scope: !2637, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1075, column: 10, scope: !2663)
!2673 = !DILocation(line: 1061, column: 33, scope: !2637, inlinedAt: !2672)
!2674 = !DILocation(line: 1061, column: 45, scope: !2637, inlinedAt: !2672)
!2675 = !DILocation(line: 1063, column: 10, scope: !2637, inlinedAt: !2672)
!2676 = !DILocation(line: 1075, column: 3, scope: !2663)
!2677 = distinct !DISubprogram(name: "quote", scope: !116, file: !116, line: 1079, type: !2678, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!24, !24}
!2680 = !{!2681}
!2681 = !DILocalVariable(name: "arg", arg: 1, scope: !2677, file: !116, line: 1079, type: !24)
!2682 = !DILocation(line: 1079, column: 20, scope: !2677)
!2683 = !DILocation(line: 1073, column: 14, scope: !2663, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1081, column: 10, scope: !2677)
!2685 = !DILocation(line: 1073, column: 29, scope: !2663, inlinedAt: !2684)
!2686 = !DILocation(line: 1061, column: 18, scope: !2637, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1075, column: 10, scope: !2663, inlinedAt: !2684)
!2688 = !DILocation(line: 1061, column: 33, scope: !2637, inlinedAt: !2687)
!2689 = !DILocation(line: 1061, column: 45, scope: !2637, inlinedAt: !2687)
!2690 = !DILocation(line: 1063, column: 10, scope: !2637, inlinedAt: !2687)
!2691 = !DILocation(line: 1081, column: 3, scope: !2677)
!2692 = distinct !DISubprogram(name: "version_etc_arn", scope: !173, file: !173, line: 62, type: !2693, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !2751)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2695, !24, !24, !24, !2750, !27}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2697, line: 7, baseType: !2698)
!2697 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2699, line: 49, size: 1728, elements: !2700)
!2699 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2700 = !{!2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2716, !2718, !2719, !2720, !2724, !2725, !2727, !2731, !2734, !2736, !2739, !2742, !2743, !2744, !2745, !2746}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2698, file: !2699, line: 51, baseType: !16, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2698, file: !2699, line: 54, baseType: !6, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2698, file: !2699, line: 55, baseType: !6, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2698, file: !2699, line: 56, baseType: !6, size: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2698, file: !2699, line: 57, baseType: !6, size: 64, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2698, file: !2699, line: 58, baseType: !6, size: 64, offset: 320)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2698, file: !2699, line: 59, baseType: !6, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2698, file: !2699, line: 60, baseType: !6, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2698, file: !2699, line: 61, baseType: !6, size: 64, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2698, file: !2699, line: 64, baseType: !6, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2698, file: !2699, line: 65, baseType: !6, size: 64, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2698, file: !2699, line: 66, baseType: !6, size: 64, offset: 704)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2698, file: !2699, line: 68, baseType: !2714, size: 64, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2699, line: 36, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2698, file: !2699, line: 70, baseType: !2717, size: 64, offset: 832)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2698, file: !2699, line: 72, baseType: !16, size: 32, offset: 896)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2698, file: !2699, line: 73, baseType: !16, size: 32, offset: 928)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2698, file: !2699, line: 74, baseType: !2721, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2722, line: 150, baseType: !2723)
!2722 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2723 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2698, file: !2699, line: 77, baseType: !112, size: 16, offset: 1024)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2698, file: !2699, line: 78, baseType: !2726, size: 8, offset: 1040)
!2726 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2698, file: !2699, line: 79, baseType: !2728, size: 8, offset: 1048)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !2729)
!2729 = !{!2730}
!2730 = !DISubrange(count: 1)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2698, file: !2699, line: 81, baseType: !2732, size: 64, offset: 1088)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2699, line: 43, baseType: null)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2698, file: !2699, line: 89, baseType: !2735, size: 64, offset: 1152)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2722, line: 151, baseType: !2723)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2698, file: !2699, line: 91, baseType: !2737, size: 64, offset: 1216)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2699, line: 37, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2698, file: !2699, line: 92, baseType: !2740, size: 64, offset: 1280)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2699, line: 38, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2698, file: !2699, line: 93, baseType: !2717, size: 64, offset: 1344)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2698, file: !2699, line: 94, baseType: !8, size: 64, offset: 1408)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2698, file: !2699, line: 95, baseType: !27, size: 64, offset: 1472)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2698, file: !2699, line: 96, baseType: !16, size: 32, offset: 1536)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2698, file: !2699, line: 98, baseType: !2747, size: 160, offset: 1568)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !2748)
!2748 = !{!2749}
!2749 = !DISubrange(count: 20)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!2751 = !{!2752, !2753, !2754, !2755, !2756, !2757}
!2752 = !DILocalVariable(name: "stream", arg: 1, scope: !2692, file: !173, line: 62, type: !2695)
!2753 = !DILocalVariable(name: "command_name", arg: 2, scope: !2692, file: !173, line: 63, type: !24)
!2754 = !DILocalVariable(name: "package", arg: 3, scope: !2692, file: !173, line: 63, type: !24)
!2755 = !DILocalVariable(name: "version", arg: 4, scope: !2692, file: !173, line: 64, type: !24)
!2756 = !DILocalVariable(name: "authors", arg: 5, scope: !2692, file: !173, line: 65, type: !2750)
!2757 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2692, file: !173, line: 65, type: !27)
!2758 = !DILocation(line: 62, column: 24, scope: !2692)
!2759 = !DILocation(line: 63, column: 30, scope: !2692)
!2760 = !DILocation(line: 63, column: 56, scope: !2692)
!2761 = !DILocation(line: 64, column: 30, scope: !2692)
!2762 = !DILocation(line: 65, column: 39, scope: !2692)
!2763 = !DILocation(line: 65, column: 55, scope: !2692)
!2764 = !DILocation(line: 67, column: 7, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2692, file: !173, line: 67, column: 7)
!2766 = !DILocation(line: 67, column: 7, scope: !2692)
!2767 = !DILocation(line: 68, column: 5, scope: !2765)
!2768 = !DILocation(line: 70, column: 5, scope: !2765)
!2769 = !DILocation(line: 84, column: 3, scope: !2692)
!2770 = !DILocation(line: 86, column: 3, scope: !2692)
!2771 = !DILocation(line: 95, column: 3, scope: !2692)
!2772 = !DILocation(line: 99, column: 7, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2692, file: !173, line: 96, column: 5)
!2774 = !DILocation(line: 102, column: 7, scope: !2773)
!2775 = !DILocation(line: 103, column: 7, scope: !2773)
!2776 = !DILocation(line: 106, column: 7, scope: !2773)
!2777 = !DILocation(line: 107, column: 7, scope: !2773)
!2778 = !DILocation(line: 110, column: 7, scope: !2773)
!2779 = !DILocation(line: 112, column: 7, scope: !2773)
!2780 = !DILocation(line: 117, column: 7, scope: !2773)
!2781 = !DILocation(line: 119, column: 7, scope: !2773)
!2782 = !DILocation(line: 124, column: 7, scope: !2773)
!2783 = !DILocation(line: 126, column: 7, scope: !2773)
!2784 = !DILocation(line: 131, column: 7, scope: !2773)
!2785 = !DILocation(line: 134, column: 7, scope: !2773)
!2786 = !DILocation(line: 139, column: 7, scope: !2773)
!2787 = !DILocation(line: 142, column: 7, scope: !2773)
!2788 = !DILocation(line: 147, column: 7, scope: !2773)
!2789 = !DILocation(line: 151, column: 7, scope: !2773)
!2790 = !DILocation(line: 156, column: 7, scope: !2773)
!2791 = !DILocation(line: 160, column: 7, scope: !2773)
!2792 = !DILocation(line: 167, column: 7, scope: !2773)
!2793 = !DILocation(line: 171, column: 7, scope: !2773)
!2794 = !DILocation(line: 173, column: 1, scope: !2692)
!2795 = distinct !DISubprogram(name: "version_etc_ar", scope: !173, file: !173, line: 180, type: !2796, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !2695, !24, !24, !24, !2750}
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804}
!2799 = !DILocalVariable(name: "stream", arg: 1, scope: !2795, file: !173, line: 180, type: !2695)
!2800 = !DILocalVariable(name: "command_name", arg: 2, scope: !2795, file: !173, line: 181, type: !24)
!2801 = !DILocalVariable(name: "package", arg: 3, scope: !2795, file: !173, line: 181, type: !24)
!2802 = !DILocalVariable(name: "version", arg: 4, scope: !2795, file: !173, line: 182, type: !24)
!2803 = !DILocalVariable(name: "authors", arg: 5, scope: !2795, file: !173, line: 182, type: !2750)
!2804 = !DILocalVariable(name: "n_authors", scope: !2795, file: !173, line: 184, type: !27)
!2805 = !DILocation(line: 180, column: 23, scope: !2795)
!2806 = !DILocation(line: 181, column: 29, scope: !2795)
!2807 = !DILocation(line: 181, column: 55, scope: !2795)
!2808 = !DILocation(line: 182, column: 29, scope: !2795)
!2809 = !DILocation(line: 182, column: 59, scope: !2795)
!2810 = !DILocation(line: 184, column: 10, scope: !2795)
!2811 = !DILocation(line: 186, column: 8, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2795, file: !173, line: 186, column: 3)
!2813 = !DILocation(line: 0, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2812, file: !173, line: 186, column: 3)
!2815 = !DILocation(line: 186, column: 23, scope: !2814)
!2816 = !DILocation(line: 186, column: 3, scope: !2812)
!2817 = !DILocation(line: 186, column: 52, scope: !2814)
!2818 = distinct !{!2818, !2816, !2819}
!2819 = !DILocation(line: 187, column: 5, scope: !2812)
!2820 = !DILocation(line: 188, column: 3, scope: !2795)
!2821 = !DILocation(line: 189, column: 1, scope: !2795)
!2822 = distinct !DISubprogram(name: "version_etc_va", scope: !173, file: !173, line: 196, type: !2823, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !2832)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !2695, !24, !24, !24, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !170, line: 189, size: 192, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2826, file: !170, line: 189, baseType: !78, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2826, file: !170, line: 189, baseType: !78, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2826, file: !170, line: 189, baseType: !8, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2826, file: !170, line: 189, baseType: !8, size: 64, offset: 128)
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2833 = !DILocalVariable(name: "stream", arg: 1, scope: !2822, file: !173, line: 196, type: !2695)
!2834 = !DILocalVariable(name: "command_name", arg: 2, scope: !2822, file: !173, line: 197, type: !24)
!2835 = !DILocalVariable(name: "package", arg: 3, scope: !2822, file: !173, line: 197, type: !24)
!2836 = !DILocalVariable(name: "version", arg: 4, scope: !2822, file: !173, line: 198, type: !24)
!2837 = !DILocalVariable(name: "authors", arg: 5, scope: !2822, file: !173, line: 198, type: !2825)
!2838 = !DILocalVariable(name: "n_authors", scope: !2822, file: !173, line: 200, type: !27)
!2839 = !DILocalVariable(name: "authtab", scope: !2822, file: !173, line: 201, type: !2840)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 640, elements: !119)
!2841 = !DILocation(line: 196, column: 23, scope: !2822)
!2842 = !DILocation(line: 197, column: 29, scope: !2822)
!2843 = !DILocation(line: 197, column: 55, scope: !2822)
!2844 = !DILocation(line: 198, column: 29, scope: !2822)
!2845 = !DILocation(line: 198, column: 46, scope: !2822)
!2846 = !DILocation(line: 201, column: 3, scope: !2822)
!2847 = !DILocation(line: 201, column: 15, scope: !2822)
!2848 = !DILocation(line: 200, column: 10, scope: !2822)
!2849 = !DILocation(line: 205, column: 35, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !173, line: 203, column: 3)
!2851 = distinct !DILexicalBlock(scope: !2822, file: !173, line: 203, column: 3)
!2852 = !DILocation(line: 205, column: 14, scope: !2850)
!2853 = !DILocation(line: 205, column: 33, scope: !2850)
!2854 = !DILocation(line: 205, column: 67, scope: !2850)
!2855 = !DILocation(line: 203, column: 3, scope: !2851)
!2856 = !DILocation(line: 0, scope: !2850)
!2857 = !DILocation(line: 208, column: 3, scope: !2822)
!2858 = !DILocation(line: 210, column: 1, scope: !2822)
!2859 = distinct !DISubprogram(name: "version_etc", scope: !173, file: !173, line: 227, type: !2860, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !2695, !24, !24, !24, null}
!2862 = !{!2863, !2864, !2865, !2866, !2867}
!2863 = !DILocalVariable(name: "stream", arg: 1, scope: !2859, file: !173, line: 227, type: !2695)
!2864 = !DILocalVariable(name: "command_name", arg: 2, scope: !2859, file: !173, line: 228, type: !24)
!2865 = !DILocalVariable(name: "package", arg: 3, scope: !2859, file: !173, line: 228, type: !24)
!2866 = !DILocalVariable(name: "version", arg: 4, scope: !2859, file: !173, line: 229, type: !24)
!2867 = !DILocalVariable(name: "authors", scope: !2859, file: !173, line: 231, type: !2868)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2869, line: 52, baseType: !2870)
!2869 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2871, line: 48, baseType: !2872)
!2871 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !170, line: 231, baseType: !2873)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2826, size: 192, elements: !2729)
!2874 = !DILocation(line: 227, column: 20, scope: !2859)
!2875 = !DILocation(line: 228, column: 26, scope: !2859)
!2876 = !DILocation(line: 228, column: 52, scope: !2859)
!2877 = !DILocation(line: 229, column: 26, scope: !2859)
!2878 = !DILocation(line: 231, column: 3, scope: !2859)
!2879 = !DILocation(line: 231, column: 11, scope: !2859)
!2880 = !DILocation(line: 233, column: 3, scope: !2859)
!2881 = !DILocation(line: 234, column: 3, scope: !2859)
!2882 = !DILocation(line: 235, column: 3, scope: !2859)
!2883 = !DILocation(line: 236, column: 1, scope: !2859)
!2884 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !173, file: !173, line: 239, type: !761, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !4)
!2885 = !DILocation(line: 245, column: 3, scope: !2884)
!2886 = !DILocation(line: 251, column: 3, scope: !2884)
!2887 = !DILocation(line: 256, column: 3, scope: !2884)
!2888 = !DILocation(line: 258, column: 1, scope: !2884)
!2889 = distinct !DISubprogram(name: "xnmalloc", scope: !181, file: !181, line: 99, type: !2890, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!8, !27, !27}
!2892 = !{!2893, !2894}
!2893 = !DILocalVariable(name: "n", arg: 1, scope: !2889, file: !181, line: 99, type: !27)
!2894 = !DILocalVariable(name: "s", arg: 2, scope: !2889, file: !181, line: 99, type: !27)
!2895 = !DILocation(line: 99, column: 18, scope: !2889)
!2896 = !DILocation(line: 99, column: 28, scope: !2889)
!2897 = !DILocation(line: 101, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2889, file: !181, line: 101, column: 7)
!2899 = !DILocation(line: 101, column: 7, scope: !2889)
!2900 = !DILocation(line: 102, column: 5, scope: !2898)
!2901 = !DILocation(line: 103, column: 21, scope: !2889)
!2902 = !DILocalVariable(name: "n", arg: 1, scope: !2903, file: !2904, line: 39, type: !27)
!2903 = distinct !DISubprogram(name: "xmalloc", scope: !2904, file: !2904, line: 39, type: !2905, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !2907)
!2904 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!8, !27}
!2907 = !{!2902, !2908}
!2908 = !DILocalVariable(name: "p", scope: !2903, file: !2904, line: 41, type: !8)
!2909 = !DILocation(line: 39, column: 17, scope: !2903, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 103, column: 10, scope: !2889)
!2911 = !DILocation(line: 41, column: 13, scope: !2903, inlinedAt: !2910)
!2912 = !DILocation(line: 41, column: 9, scope: !2903, inlinedAt: !2910)
!2913 = !DILocation(line: 42, column: 8, scope: !2914, inlinedAt: !2910)
!2914 = distinct !DILexicalBlock(scope: !2903, file: !2904, line: 42, column: 7)
!2915 = !DILocation(line: 42, column: 15, scope: !2914, inlinedAt: !2910)
!2916 = !DILocation(line: 42, column: 10, scope: !2914, inlinedAt: !2910)
!2917 = !DILocation(line: 43, column: 5, scope: !2914, inlinedAt: !2910)
!2918 = !DILocation(line: 103, column: 3, scope: !2889)
!2919 = !DILocation(line: 39, column: 17, scope: !2903)
!2920 = !DILocation(line: 41, column: 13, scope: !2903)
!2921 = !DILocation(line: 41, column: 9, scope: !2903)
!2922 = !DILocation(line: 42, column: 8, scope: !2914)
!2923 = !DILocation(line: 42, column: 15, scope: !2914)
!2924 = !DILocation(line: 42, column: 10, scope: !2914)
!2925 = !DILocation(line: 43, column: 5, scope: !2914)
!2926 = !DILocation(line: 44, column: 3, scope: !2903)
!2927 = distinct !DISubprogram(name: "xnrealloc", scope: !181, file: !181, line: 112, type: !2928, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !2930)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!8, !8, !27, !27}
!2930 = !{!2931, !2932, !2933}
!2931 = !DILocalVariable(name: "p", arg: 1, scope: !2927, file: !181, line: 112, type: !8)
!2932 = !DILocalVariable(name: "n", arg: 2, scope: !2927, file: !181, line: 112, type: !27)
!2933 = !DILocalVariable(name: "s", arg: 3, scope: !2927, file: !181, line: 112, type: !27)
!2934 = !DILocation(line: 112, column: 18, scope: !2927)
!2935 = !DILocation(line: 112, column: 28, scope: !2927)
!2936 = !DILocation(line: 112, column: 38, scope: !2927)
!2937 = !DILocation(line: 114, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2927, file: !181, line: 114, column: 7)
!2939 = !DILocation(line: 114, column: 7, scope: !2927)
!2940 = !DILocation(line: 115, column: 5, scope: !2938)
!2941 = !DILocation(line: 116, column: 25, scope: !2927)
!2942 = !DILocalVariable(name: "p", arg: 1, scope: !2943, file: !2904, line: 51, type: !8)
!2943 = distinct !DISubprogram(name: "xrealloc", scope: !2904, file: !2904, line: 51, type: !2944, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!8, !8, !27}
!2946 = !{!2942, !2947}
!2947 = !DILocalVariable(name: "n", arg: 2, scope: !2943, file: !2904, line: 51, type: !27)
!2948 = !DILocation(line: 51, column: 17, scope: !2943, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 116, column: 10, scope: !2927)
!2950 = !DILocation(line: 51, column: 27, scope: !2943, inlinedAt: !2949)
!2951 = !DILocation(line: 53, column: 8, scope: !2952, inlinedAt: !2949)
!2952 = distinct !DILexicalBlock(scope: !2943, file: !2904, line: 53, column: 7)
!2953 = !DILocation(line: 53, column: 13, scope: !2952, inlinedAt: !2949)
!2954 = !DILocation(line: 53, column: 10, scope: !2952, inlinedAt: !2949)
!2955 = !DILocation(line: 57, column: 7, scope: !2956, inlinedAt: !2949)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !2904, line: 54, column: 5)
!2957 = !DILocation(line: 58, column: 7, scope: !2956, inlinedAt: !2949)
!2958 = !DILocation(line: 61, column: 7, scope: !2943, inlinedAt: !2949)
!2959 = !DILocation(line: 62, column: 8, scope: !2960, inlinedAt: !2949)
!2960 = distinct !DILexicalBlock(scope: !2943, file: !2904, line: 62, column: 7)
!2961 = !DILocation(line: 62, column: 13, scope: !2960, inlinedAt: !2949)
!2962 = !DILocation(line: 62, column: 10, scope: !2960, inlinedAt: !2949)
!2963 = !DILocation(line: 63, column: 5, scope: !2960, inlinedAt: !2949)
!2964 = !DILocation(line: 0, scope: !2943, inlinedAt: !2949)
!2965 = !DILocation(line: 116, column: 3, scope: !2927)
!2966 = !DILocation(line: 51, column: 17, scope: !2943)
!2967 = !DILocation(line: 51, column: 27, scope: !2943)
!2968 = !DILocation(line: 53, column: 8, scope: !2952)
!2969 = !DILocation(line: 53, column: 13, scope: !2952)
!2970 = !DILocation(line: 53, column: 10, scope: !2952)
!2971 = !DILocation(line: 57, column: 7, scope: !2956)
!2972 = !DILocation(line: 58, column: 7, scope: !2956)
!2973 = !DILocation(line: 61, column: 7, scope: !2943)
!2974 = !DILocation(line: 62, column: 8, scope: !2960)
!2975 = !DILocation(line: 62, column: 13, scope: !2960)
!2976 = !DILocation(line: 62, column: 10, scope: !2960)
!2977 = !DILocation(line: 63, column: 5, scope: !2960)
!2978 = !DILocation(line: 0, scope: !2943)
!2979 = !DILocation(line: 65, column: 1, scope: !2943)
!2980 = !DILocation(line: 174, column: 19, scope: !182)
!2981 = !DILocation(line: 174, column: 30, scope: !182)
!2982 = !DILocation(line: 174, column: 41, scope: !182)
!2983 = !DILocation(line: 176, column: 14, scope: !182)
!2984 = !DILocation(line: 176, column: 10, scope: !182)
!2985 = !DILocation(line: 178, column: 9, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !182, file: !181, line: 178, column: 7)
!2987 = !DILocation(line: 178, column: 7, scope: !182)
!2988 = !DILocation(line: 180, column: 13, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !181, line: 180, column: 11)
!2990 = distinct !DILexicalBlock(scope: !2986, file: !181, line: 179, column: 5)
!2991 = !DILocation(line: 180, column: 11, scope: !2990)
!2992 = !DILocation(line: 188, column: 30, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !181, line: 181, column: 9)
!2994 = !DILocation(line: 189, column: 16, scope: !2993)
!2995 = !DILocation(line: 189, column: 13, scope: !2993)
!2996 = !DILocation(line: 190, column: 9, scope: !2993)
!2997 = !DILocation(line: 0, scope: !2993)
!2998 = !DILocation(line: 191, column: 11, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2990, file: !181, line: 191, column: 11)
!3000 = !DILocation(line: 191, column: 11, scope: !2990)
!3001 = !DILocation(line: 206, column: 7, scope: !182)
!3002 = !DILocation(line: 207, column: 25, scope: !182)
!3003 = !DILocation(line: 51, column: 17, scope: !2943, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 207, column: 10, scope: !182)
!3005 = !DILocation(line: 51, column: 27, scope: !2943, inlinedAt: !3004)
!3006 = !DILocation(line: 53, column: 10, scope: !2952, inlinedAt: !3004)
!3007 = !DILocation(line: 192, column: 9, scope: !2999)
!3008 = !DILocation(line: 200, column: 69, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !181, line: 200, column: 11)
!3010 = distinct !DILexicalBlock(scope: !2986, file: !181, line: 195, column: 5)
!3011 = !DILocation(line: 201, column: 11, scope: !3009)
!3012 = !DILocation(line: 200, column: 11, scope: !3010)
!3013 = !DILocation(line: 202, column: 9, scope: !3009)
!3014 = !DILocation(line: 203, column: 14, scope: !3010)
!3015 = !DILocation(line: 203, column: 18, scope: !3010)
!3016 = !DILocation(line: 203, column: 9, scope: !3010)
!3017 = !DILocation(line: 53, column: 8, scope: !2952, inlinedAt: !3004)
!3018 = !DILocation(line: 57, column: 7, scope: !2956, inlinedAt: !3004)
!3019 = !DILocation(line: 58, column: 7, scope: !2956, inlinedAt: !3004)
!3020 = !DILocation(line: 61, column: 7, scope: !2943, inlinedAt: !3004)
!3021 = !DILocation(line: 62, column: 8, scope: !2960, inlinedAt: !3004)
!3022 = !DILocation(line: 62, column: 13, scope: !2960, inlinedAt: !3004)
!3023 = !DILocation(line: 62, column: 10, scope: !2960, inlinedAt: !3004)
!3024 = !DILocation(line: 63, column: 5, scope: !2960, inlinedAt: !3004)
!3025 = !DILocation(line: 0, scope: !2943, inlinedAt: !3004)
!3026 = !DILocation(line: 207, column: 3, scope: !182)
!3027 = distinct !DISubprogram(name: "xcharalloc", scope: !181, file: !181, line: 216, type: !1979, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3028)
!3028 = !{!3029}
!3029 = !DILocalVariable(name: "n", arg: 1, scope: !3027, file: !181, line: 216, type: !27)
!3030 = !DILocation(line: 216, column: 20, scope: !3027)
!3031 = !DILocation(line: 39, column: 17, scope: !2903, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 218, column: 10, scope: !3027)
!3033 = !DILocation(line: 41, column: 13, scope: !2903, inlinedAt: !3032)
!3034 = !DILocation(line: 41, column: 9, scope: !2903, inlinedAt: !3032)
!3035 = !DILocation(line: 42, column: 8, scope: !2914, inlinedAt: !3032)
!3036 = !DILocation(line: 42, column: 15, scope: !2914, inlinedAt: !3032)
!3037 = !DILocation(line: 42, column: 10, scope: !2914, inlinedAt: !3032)
!3038 = !DILocation(line: 43, column: 5, scope: !2914, inlinedAt: !3032)
!3039 = !DILocation(line: 218, column: 3, scope: !3027)
!3040 = distinct !DISubprogram(name: "x2realloc", scope: !2904, file: !2904, line: 74, type: !3041, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!8, !8, !185}
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "p", arg: 1, scope: !3040, file: !2904, line: 74, type: !8)
!3045 = !DILocalVariable(name: "pn", arg: 2, scope: !3040, file: !2904, line: 74, type: !185)
!3046 = !DILocation(line: 74, column: 18, scope: !3040)
!3047 = !DILocation(line: 74, column: 29, scope: !3040)
!3048 = !DILocation(line: 174, column: 19, scope: !182, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 76, column: 10, scope: !3040)
!3050 = !DILocation(line: 174, column: 30, scope: !182, inlinedAt: !3049)
!3051 = !DILocation(line: 174, column: 41, scope: !182, inlinedAt: !3049)
!3052 = !DILocation(line: 176, column: 14, scope: !182, inlinedAt: !3049)
!3053 = !DILocation(line: 176, column: 10, scope: !182, inlinedAt: !3049)
!3054 = !DILocation(line: 178, column: 9, scope: !2986, inlinedAt: !3049)
!3055 = !DILocation(line: 178, column: 7, scope: !182, inlinedAt: !3049)
!3056 = !DILocation(line: 180, column: 13, scope: !2989, inlinedAt: !3049)
!3057 = !DILocation(line: 180, column: 11, scope: !2990, inlinedAt: !3049)
!3058 = !DILocation(line: 191, column: 11, scope: !2999, inlinedAt: !3049)
!3059 = !DILocation(line: 191, column: 11, scope: !2990, inlinedAt: !3049)
!3060 = !DILocation(line: 206, column: 7, scope: !182, inlinedAt: !3049)
!3061 = !DILocation(line: 51, column: 17, scope: !2943, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 207, column: 10, scope: !182, inlinedAt: !3049)
!3063 = !DILocation(line: 51, column: 27, scope: !2943, inlinedAt: !3062)
!3064 = !DILocation(line: 53, column: 10, scope: !2952, inlinedAt: !3062)
!3065 = !DILocation(line: 192, column: 9, scope: !2999, inlinedAt: !3049)
!3066 = !DILocation(line: 201, column: 11, scope: !3009, inlinedAt: !3049)
!3067 = !DILocation(line: 200, column: 11, scope: !3010, inlinedAt: !3049)
!3068 = !DILocation(line: 202, column: 9, scope: !3009, inlinedAt: !3049)
!3069 = !DILocation(line: 203, column: 14, scope: !3010, inlinedAt: !3049)
!3070 = !DILocation(line: 203, column: 18, scope: !3010, inlinedAt: !3049)
!3071 = !DILocation(line: 203, column: 9, scope: !3010, inlinedAt: !3049)
!3072 = !DILocation(line: 53, column: 8, scope: !2952, inlinedAt: !3062)
!3073 = !DILocation(line: 57, column: 7, scope: !2956, inlinedAt: !3062)
!3074 = !DILocation(line: 58, column: 7, scope: !2956, inlinedAt: !3062)
!3075 = !DILocation(line: 61, column: 7, scope: !2943, inlinedAt: !3062)
!3076 = !DILocation(line: 62, column: 8, scope: !2960, inlinedAt: !3062)
!3077 = !DILocation(line: 62, column: 13, scope: !2960, inlinedAt: !3062)
!3078 = !DILocation(line: 62, column: 10, scope: !2960, inlinedAt: !3062)
!3079 = !DILocation(line: 63, column: 5, scope: !2960, inlinedAt: !3062)
!3080 = !DILocation(line: 0, scope: !2943, inlinedAt: !3062)
!3081 = !DILocation(line: 76, column: 3, scope: !3040)
!3082 = distinct !DISubprogram(name: "xzalloc", scope: !2904, file: !2904, line: 84, type: !2905, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3083)
!3083 = !{!3084}
!3084 = !DILocalVariable(name: "s", arg: 1, scope: !3082, file: !2904, line: 84, type: !27)
!3085 = !DILocation(line: 84, column: 17, scope: !3082)
!3086 = !DILocation(line: 39, column: 17, scope: !2903, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 86, column: 18, scope: !3082)
!3088 = !DILocation(line: 41, column: 13, scope: !2903, inlinedAt: !3087)
!3089 = !DILocation(line: 41, column: 9, scope: !2903, inlinedAt: !3087)
!3090 = !DILocation(line: 42, column: 8, scope: !2914, inlinedAt: !3087)
!3091 = !DILocation(line: 42, column: 15, scope: !2914, inlinedAt: !3087)
!3092 = !DILocation(line: 42, column: 10, scope: !2914, inlinedAt: !3087)
!3093 = !DILocation(line: 43, column: 5, scope: !2914, inlinedAt: !3087)
!3094 = !DILocation(line: 86, column: 10, scope: !3082)
!3095 = !DILocation(line: 86, column: 3, scope: !3082)
!3096 = distinct !DISubprogram(name: "xcalloc", scope: !2904, file: !2904, line: 93, type: !2890, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DILocalVariable(name: "n", arg: 1, scope: !3096, file: !2904, line: 93, type: !27)
!3099 = !DILocalVariable(name: "s", arg: 2, scope: !3096, file: !2904, line: 93, type: !27)
!3100 = !DILocalVariable(name: "p", scope: !3096, file: !2904, line: 95, type: !8)
!3101 = !DILocation(line: 93, column: 17, scope: !3096)
!3102 = !DILocation(line: 93, column: 27, scope: !3096)
!3103 = !DILocation(line: 100, column: 7, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3096, file: !2904, line: 100, column: 7)
!3105 = !DILocation(line: 101, column: 7, scope: !3104)
!3106 = !DILocation(line: 101, column: 18, scope: !3104)
!3107 = !DILocation(line: 95, column: 9, scope: !3096)
!3108 = !DILocation(line: 101, column: 16, scope: !3104)
!3109 = !DILocation(line: 100, column: 7, scope: !3096)
!3110 = !DILocation(line: 102, column: 5, scope: !3104)
!3111 = !DILocation(line: 103, column: 3, scope: !3096)
!3112 = distinct !DISubprogram(name: "xmemdup", scope: !2904, file: !2904, line: 111, type: !3113, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3117)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!8, !3115, !27}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "p", arg: 1, scope: !3112, file: !2904, line: 111, type: !3115)
!3119 = !DILocalVariable(name: "s", arg: 2, scope: !3112, file: !2904, line: 111, type: !27)
!3120 = !DILocation(line: 111, column: 22, scope: !3112)
!3121 = !DILocation(line: 111, column: 32, scope: !3112)
!3122 = !DILocation(line: 39, column: 17, scope: !2903, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 113, column: 18, scope: !3112)
!3124 = !DILocation(line: 41, column: 13, scope: !2903, inlinedAt: !3123)
!3125 = !DILocation(line: 41, column: 9, scope: !2903, inlinedAt: !3123)
!3126 = !DILocation(line: 42, column: 8, scope: !2914, inlinedAt: !3123)
!3127 = !DILocation(line: 42, column: 15, scope: !2914, inlinedAt: !3123)
!3128 = !DILocation(line: 42, column: 10, scope: !2914, inlinedAt: !3123)
!3129 = !DILocation(line: 43, column: 5, scope: !2914, inlinedAt: !3123)
!3130 = !DILocation(line: 113, column: 10, scope: !3112)
!3131 = !DILocation(line: 113, column: 3, scope: !3112)
!3132 = distinct !DISubprogram(name: "xstrdup", scope: !2904, file: !2904, line: 119, type: !824, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !177, retainedNodes: !3133)
!3133 = !{!3134}
!3134 = !DILocalVariable(name: "string", arg: 1, scope: !3132, file: !2904, line: 119, type: !24)
!3135 = !DILocation(line: 119, column: 22, scope: !3132)
!3136 = !DILocation(line: 121, column: 27, scope: !3132)
!3137 = !DILocation(line: 121, column: 43, scope: !3132)
!3138 = !DILocation(line: 111, column: 22, scope: !3112, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 121, column: 10, scope: !3132)
!3140 = !DILocation(line: 111, column: 32, scope: !3112, inlinedAt: !3139)
!3141 = !DILocation(line: 39, column: 17, scope: !2903, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 113, column: 18, scope: !3112, inlinedAt: !3139)
!3143 = !DILocation(line: 41, column: 13, scope: !2903, inlinedAt: !3142)
!3144 = !DILocation(line: 41, column: 9, scope: !2903, inlinedAt: !3142)
!3145 = !DILocation(line: 42, column: 8, scope: !2914, inlinedAt: !3142)
!3146 = !DILocation(line: 42, column: 15, scope: !2914, inlinedAt: !3142)
!3147 = !DILocation(line: 42, column: 10, scope: !2914, inlinedAt: !3142)
!3148 = !DILocation(line: 43, column: 5, scope: !2914, inlinedAt: !3142)
!3149 = !DILocation(line: 113, column: 10, scope: !3112, inlinedAt: !3139)
!3150 = !DILocation(line: 121, column: 3, scope: !3132)
!3151 = distinct !DISubprogram(name: "xalloc_die", scope: !3152, file: !3152, line: 32, type: !761, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !194, retainedNodes: !4)
!3152 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3153 = !DILocation(line: 34, column: 10, scope: !3151)
!3154 = !DILocation(line: 34, column: 33, scope: !3151)
!3155 = !DILocation(line: 34, column: 3, scope: !3151)
!3156 = !DILocation(line: 40, column: 3, scope: !3151)
!3157 = distinct !DISubprogram(name: "rpl_calloc", scope: !3158, file: !3158, line: 42, type: !2890, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !196, retainedNodes: !3159)
!3158 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3159 = !{!3160, !3161, !3162, !3163}
!3160 = !DILocalVariable(name: "n", arg: 1, scope: !3157, file: !3158, line: 42, type: !27)
!3161 = !DILocalVariable(name: "s", arg: 2, scope: !3157, file: !3158, line: 42, type: !27)
!3162 = !DILocalVariable(name: "result", scope: !3157, file: !3158, line: 44, type: !8)
!3163 = !DILocalVariable(name: "bytes", scope: !3164, file: !3158, line: 56, type: !27)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !3158, line: 53, column: 5)
!3165 = distinct !DILexicalBlock(scope: !3157, file: !3158, line: 47, column: 7)
!3166 = !DILocation(line: 42, column: 20, scope: !3157)
!3167 = !DILocation(line: 42, column: 30, scope: !3157)
!3168 = !DILocation(line: 47, column: 9, scope: !3165)
!3169 = !DILocation(line: 47, column: 19, scope: !3165)
!3170 = !DILocation(line: 47, column: 14, scope: !3165)
!3171 = !DILocation(line: 56, column: 24, scope: !3164)
!3172 = !DILocation(line: 56, column: 14, scope: !3164)
!3173 = !DILocation(line: 57, column: 17, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3164, file: !3158, line: 57, column: 11)
!3175 = !DILocation(line: 57, column: 21, scope: !3174)
!3176 = !DILocation(line: 57, column: 11, scope: !3164)
!3177 = !DILocation(line: 59, column: 11, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !3158, line: 58, column: 9)
!3179 = !DILocation(line: 59, column: 17, scope: !3178)
!3180 = !DILocation(line: 65, column: 12, scope: !3157)
!3181 = !DILocation(line: 44, column: 9, scope: !3157)
!3182 = !DILocation(line: 72, column: 3, scope: !3157)
!3183 = !DILocation(line: 0, scope: !3178)
!3184 = !DILocation(line: 73, column: 1, scope: !3157)
!3185 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3186, file: !3186, line: 385, type: !3187, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !3201)
!3186 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!27, !3189, !24, !27, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1145, line: 6, baseType: !3192)
!3192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1147, line: 21, baseType: !3193)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 13, size: 64, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3193, file: !1147, line: 15, baseType: !16, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3193, file: !1147, line: 20, baseType: !3197, size: 32, offset: 32)
!3197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !1147, line: 16, size: 32, elements: !3198)
!3198 = !{!3199, !3200}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3197, file: !1147, line: 18, baseType: !78, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3197, file: !1147, line: 19, baseType: !1156, size: 32)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208}
!3202 = !DILocalVariable(name: "pwc", arg: 1, scope: !3185, file: !3186, line: 385, type: !3189)
!3203 = !DILocalVariable(name: "s", arg: 2, scope: !3185, file: !3186, line: 385, type: !24)
!3204 = !DILocalVariable(name: "n", arg: 3, scope: !3185, file: !3186, line: 385, type: !27)
!3205 = !DILocalVariable(name: "ps", arg: 4, scope: !3185, file: !3186, line: 385, type: !3190)
!3206 = !DILocalVariable(name: "ret", scope: !3185, file: !3186, line: 387, type: !27)
!3207 = !DILocalVariable(name: "wc", scope: !3185, file: !3186, line: 388, type: !1159)
!3208 = !DILocalVariable(name: "uc", scope: !3209, file: !3186, line: 449, type: !9)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3186, line: 448, column: 5)
!3210 = distinct !DILexicalBlock(scope: !3185, file: !3186, line: 447, column: 7)
!3211 = !DILocation(line: 385, column: 23, scope: !3185)
!3212 = !DILocation(line: 385, column: 40, scope: !3185)
!3213 = !DILocation(line: 385, column: 50, scope: !3185)
!3214 = !DILocation(line: 385, column: 64, scope: !3185)
!3215 = !DILocation(line: 388, column: 3, scope: !3185)
!3216 = !DILocation(line: 404, column: 9, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3185, file: !3186, line: 404, column: 7)
!3218 = !DILocation(line: 404, column: 7, scope: !3185)
!3219 = !DILocation(line: 439, column: 9, scope: !3185)
!3220 = !DILocation(line: 387, column: 10, scope: !3185)
!3221 = !DILocation(line: 447, column: 19, scope: !3210)
!3222 = !DILocation(line: 447, column: 31, scope: !3210)
!3223 = !DILocation(line: 447, column: 26, scope: !3210)
!3224 = !DILocation(line: 447, column: 41, scope: !3210)
!3225 = !DILocation(line: 447, column: 7, scope: !3185)
!3226 = !DILocation(line: 449, column: 26, scope: !3209)
!3227 = !DILocation(line: 449, column: 21, scope: !3209)
!3228 = !DILocation(line: 450, column: 14, scope: !3209)
!3229 = !DILocation(line: 450, column: 12, scope: !3209)
!3230 = !DILocation(line: 0, scope: !3209)
!3231 = !DILocation(line: 456, column: 1, scope: !3185)
!3232 = distinct !DISubprogram(name: "close_stream", scope: !3233, file: !3233, line: 56, type: !3234, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3270)
!3233 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!16, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2697, line: 7, baseType: !3238)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2699, line: 49, size: 1728, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3238, file: !2699, line: 51, baseType: !16, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3238, file: !2699, line: 54, baseType: !6, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3238, file: !2699, line: 55, baseType: !6, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3238, file: !2699, line: 56, baseType: !6, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3238, file: !2699, line: 57, baseType: !6, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3238, file: !2699, line: 58, baseType: !6, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3238, file: !2699, line: 59, baseType: !6, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3238, file: !2699, line: 60, baseType: !6, size: 64, offset: 448)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3238, file: !2699, line: 61, baseType: !6, size: 64, offset: 512)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3238, file: !2699, line: 64, baseType: !6, size: 64, offset: 576)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3238, file: !2699, line: 65, baseType: !6, size: 64, offset: 640)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3238, file: !2699, line: 66, baseType: !6, size: 64, offset: 704)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3238, file: !2699, line: 68, baseType: !2714, size: 64, offset: 768)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3238, file: !2699, line: 70, baseType: !3254, size: 64, offset: 832)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3238, file: !2699, line: 72, baseType: !16, size: 32, offset: 896)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3238, file: !2699, line: 73, baseType: !16, size: 32, offset: 928)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3238, file: !2699, line: 74, baseType: !2721, size: 64, offset: 960)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3238, file: !2699, line: 77, baseType: !112, size: 16, offset: 1024)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3238, file: !2699, line: 78, baseType: !2726, size: 8, offset: 1040)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3238, file: !2699, line: 79, baseType: !2728, size: 8, offset: 1048)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3238, file: !2699, line: 81, baseType: !2732, size: 64, offset: 1088)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3238, file: !2699, line: 89, baseType: !2735, size: 64, offset: 1152)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3238, file: !2699, line: 91, baseType: !2737, size: 64, offset: 1216)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3238, file: !2699, line: 92, baseType: !2740, size: 64, offset: 1280)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3238, file: !2699, line: 93, baseType: !3254, size: 64, offset: 1344)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3238, file: !2699, line: 94, baseType: !8, size: 64, offset: 1408)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3238, file: !2699, line: 95, baseType: !27, size: 64, offset: 1472)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3238, file: !2699, line: 96, baseType: !16, size: 32, offset: 1536)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3238, file: !2699, line: 98, baseType: !2747, size: 160, offset: 1568)
!3270 = !{!3271, !3272, !3274, !3275}
!3271 = !DILocalVariable(name: "stream", arg: 1, scope: !3232, file: !3233, line: 56, type: !3236)
!3272 = !DILocalVariable(name: "some_pending", scope: !3232, file: !3233, line: 58, type: !3273)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!3274 = !DILocalVariable(name: "prev_fail", scope: !3232, file: !3233, line: 59, type: !3273)
!3275 = !DILocalVariable(name: "fclose_fail", scope: !3232, file: !3233, line: 60, type: !3273)
!3276 = !DILocation(line: 56, column: 21, scope: !3232)
!3277 = !DILocation(line: 58, column: 30, scope: !3232)
!3278 = !DILocalVariable(name: "__stream", arg: 1, scope: !3279, file: !725, line: 135, type: !3236)
!3279 = distinct !DISubprogram(name: "ferror_unlocked", scope: !725, file: !725, line: 135, type: !3234, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3280)
!3280 = !{!3278}
!3281 = !DILocation(line: 135, column: 1, scope: !3279, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 59, column: 27, scope: !3232)
!3283 = !DILocation(line: 137, column: 10, scope: !3279, inlinedAt: !3282)
!3284 = !{!733, !704, i64 0}
!3285 = !DILocation(line: 59, column: 43, scope: !3232)
!3286 = !DILocation(line: 60, column: 29, scope: !3232)
!3287 = !DILocation(line: 60, column: 45, scope: !3232)
!3288 = !DILocation(line: 70, column: 17, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3232, file: !3233, line: 70, column: 7)
!3290 = !DILocation(line: 58, column: 50, scope: !3232)
!3291 = !DILocation(line: 70, column: 33, scope: !3289)
!3292 = !DILocation(line: 70, column: 53, scope: !3289)
!3293 = !DILocation(line: 70, column: 59, scope: !3289)
!3294 = !DILocation(line: 70, column: 7, scope: !3232)
!3295 = !DILocation(line: 72, column: 11, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3289, file: !3233, line: 71, column: 5)
!3297 = !DILocation(line: 73, column: 9, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3296, file: !3233, line: 72, column: 11)
!3299 = !DILocation(line: 73, column: 15, scope: !3298)
!3300 = !DILocation(line: 0, scope: !3232)
!3301 = !DILocation(line: 78, column: 1, scope: !3232)
!3302 = distinct !DISubprogram(name: "hard_locale", scope: !3303, file: !3303, line: 38, type: !3304, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3306)
!3303 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!22, !16}
!3306 = !{!3307, !3308, !3309}
!3307 = !DILocalVariable(name: "category", arg: 1, scope: !3302, file: !3303, line: 38, type: !16)
!3308 = !DILocalVariable(name: "hard", scope: !3302, file: !3303, line: 40, type: !22)
!3309 = !DILocalVariable(name: "p", scope: !3302, file: !3303, line: 41, type: !24)
!3310 = !DILocation(line: 38, column: 18, scope: !3302)
!3311 = !DILocation(line: 40, column: 8, scope: !3302)
!3312 = !DILocation(line: 41, column: 19, scope: !3302)
!3313 = !DILocation(line: 41, column: 15, scope: !3302)
!3314 = !DILocation(line: 43, column: 7, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3302, file: !3303, line: 43, column: 7)
!3316 = !DILocation(line: 43, column: 7, scope: !3302)
!3317 = !DILocation(line: 47, column: 15, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !3303, line: 47, column: 15)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !3303, line: 46, column: 9)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3303, line: 45, column: 11)
!3321 = distinct !DILexicalBlock(scope: !3315, file: !3303, line: 44, column: 5)
!3322 = !DILocation(line: 47, column: 31, scope: !3318)
!3323 = !DILocation(line: 47, column: 36, scope: !3318)
!3324 = !DILocation(line: 47, column: 39, scope: !3318)
!3325 = !DILocation(line: 47, column: 59, scope: !3318)
!3326 = !DILocation(line: 47, column: 15, scope: !3319)
!3327 = !DILocation(line: 48, column: 13, scope: !3318)
!3328 = !DILocation(line: 71, column: 3, scope: !3302)
!3329 = distinct !DISubprogram(name: "locale_charset", scope: !3330, file: !3330, line: 687, type: !3331, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !3333)
!3330 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!24}
!3333 = !{!3334}
!3334 = !DILocalVariable(name: "codeset", scope: !3329, file: !3330, line: 689, type: !24)
!3335 = !DILocation(line: 696, column: 13, scope: !3329)
!3336 = !DILocation(line: 689, column: 15, scope: !3329)
!3337 = !DILocation(line: 754, column: 15, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3329, file: !3330, line: 754, column: 7)
!3339 = !DILocation(line: 754, column: 7, scope: !3329)
!3340 = !DILocation(line: 907, column: 13, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !3330, line: 907, column: 13)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !3330, line: 897, column: 7)
!3343 = distinct !DILexicalBlock(scope: !3329, file: !3330, line: 856, column: 3)
!3344 = !DILocation(line: 907, column: 24, scope: !3341)
!3345 = !DILocation(line: 907, column: 13, scope: !3342)
!3346 = !DILocation(line: 995, column: 3, scope: !3329)
!3347 = distinct !DISubprogram(name: "rpl_fclose", scope: !3348, file: !3348, line: 58, type: !3349, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !594, retainedNodes: !3385)
!3348 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!16, !3351}
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2697, line: 7, baseType: !3353)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2699, line: 49, size: 1728, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3353, file: !2699, line: 51, baseType: !16, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3353, file: !2699, line: 54, baseType: !6, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3353, file: !2699, line: 55, baseType: !6, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3353, file: !2699, line: 56, baseType: !6, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3353, file: !2699, line: 57, baseType: !6, size: 64, offset: 256)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3353, file: !2699, line: 58, baseType: !6, size: 64, offset: 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3353, file: !2699, line: 59, baseType: !6, size: 64, offset: 384)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3353, file: !2699, line: 60, baseType: !6, size: 64, offset: 448)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3353, file: !2699, line: 61, baseType: !6, size: 64, offset: 512)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3353, file: !2699, line: 64, baseType: !6, size: 64, offset: 576)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3353, file: !2699, line: 65, baseType: !6, size: 64, offset: 640)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3353, file: !2699, line: 66, baseType: !6, size: 64, offset: 704)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3353, file: !2699, line: 68, baseType: !2714, size: 64, offset: 768)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3353, file: !2699, line: 70, baseType: !3369, size: 64, offset: 832)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3353, file: !2699, line: 72, baseType: !16, size: 32, offset: 896)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3353, file: !2699, line: 73, baseType: !16, size: 32, offset: 928)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3353, file: !2699, line: 74, baseType: !2721, size: 64, offset: 960)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3353, file: !2699, line: 77, baseType: !112, size: 16, offset: 1024)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3353, file: !2699, line: 78, baseType: !2726, size: 8, offset: 1040)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3353, file: !2699, line: 79, baseType: !2728, size: 8, offset: 1048)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3353, file: !2699, line: 81, baseType: !2732, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3353, file: !2699, line: 89, baseType: !2735, size: 64, offset: 1152)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3353, file: !2699, line: 91, baseType: !2737, size: 64, offset: 1216)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3353, file: !2699, line: 92, baseType: !2740, size: 64, offset: 1280)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3353, file: !2699, line: 93, baseType: !3369, size: 64, offset: 1344)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3353, file: !2699, line: 94, baseType: !8, size: 64, offset: 1408)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3353, file: !2699, line: 95, baseType: !27, size: 64, offset: 1472)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3353, file: !2699, line: 96, baseType: !16, size: 32, offset: 1536)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3353, file: !2699, line: 98, baseType: !2747, size: 160, offset: 1568)
!3385 = !{!3386, !3387, !3388, !3389}
!3386 = !DILocalVariable(name: "fp", arg: 1, scope: !3347, file: !3348, line: 58, type: !3351)
!3387 = !DILocalVariable(name: "saved_errno", scope: !3347, file: !3348, line: 60, type: !16)
!3388 = !DILocalVariable(name: "fd", scope: !3347, file: !3348, line: 61, type: !16)
!3389 = !DILocalVariable(name: "result", scope: !3347, file: !3348, line: 62, type: !16)
!3390 = !DILocation(line: 58, column: 19, scope: !3347)
!3391 = !DILocation(line: 60, column: 7, scope: !3347)
!3392 = !DILocation(line: 62, column: 7, scope: !3347)
!3393 = !DILocation(line: 65, column: 8, scope: !3347)
!3394 = !DILocation(line: 61, column: 7, scope: !3347)
!3395 = !DILocation(line: 66, column: 10, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3347, file: !3348, line: 66, column: 7)
!3397 = !DILocation(line: 66, column: 7, scope: !3347)
!3398 = !DILocation(line: 67, column: 12, scope: !3396)
!3399 = !DILocation(line: 67, column: 5, scope: !3396)
!3400 = !DILocation(line: 72, column: 9, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3347, file: !3348, line: 72, column: 7)
!3402 = !DILocation(line: 72, column: 23, scope: !3401)
!3403 = !DILocation(line: 72, column: 33, scope: !3401)
!3404 = !DILocation(line: 72, column: 26, scope: !3401)
!3405 = !DILocation(line: 72, column: 59, scope: !3401)
!3406 = !DILocation(line: 73, column: 7, scope: !3401)
!3407 = !DILocation(line: 73, column: 10, scope: !3401)
!3408 = !DILocation(line: 72, column: 7, scope: !3347)
!3409 = !DILocation(line: 100, column: 12, scope: !3347)
!3410 = !DILocation(line: 105, column: 7, scope: !3347)
!3411 = !DILocation(line: 74, column: 19, scope: !3401)
!3412 = !DILocation(line: 105, column: 19, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3347, file: !3348, line: 105, column: 7)
!3414 = !DILocation(line: 107, column: 13, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3413, file: !3348, line: 106, column: 5)
!3416 = !DILocation(line: 109, column: 5, scope: !3415)
!3417 = !DILocation(line: 0, scope: !3347)
!3418 = !DILocation(line: 112, column: 1, scope: !3347)
!3419 = distinct !DISubprogram(name: "rpl_fflush", scope: !3420, file: !3420, line: 129, type: !3421, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !596, retainedNodes: !3457)
!3420 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!16, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2697, line: 7, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2699, line: 49, size: 1728, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3425, file: !2699, line: 51, baseType: !16, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3425, file: !2699, line: 54, baseType: !6, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3425, file: !2699, line: 55, baseType: !6, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3425, file: !2699, line: 56, baseType: !6, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3425, file: !2699, line: 57, baseType: !6, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3425, file: !2699, line: 58, baseType: !6, size: 64, offset: 320)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3425, file: !2699, line: 59, baseType: !6, size: 64, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3425, file: !2699, line: 60, baseType: !6, size: 64, offset: 448)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3425, file: !2699, line: 61, baseType: !6, size: 64, offset: 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3425, file: !2699, line: 64, baseType: !6, size: 64, offset: 576)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3425, file: !2699, line: 65, baseType: !6, size: 64, offset: 640)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3425, file: !2699, line: 66, baseType: !6, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3425, file: !2699, line: 68, baseType: !2714, size: 64, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3425, file: !2699, line: 70, baseType: !3441, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3425, file: !2699, line: 72, baseType: !16, size: 32, offset: 896)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3425, file: !2699, line: 73, baseType: !16, size: 32, offset: 928)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3425, file: !2699, line: 74, baseType: !2721, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3425, file: !2699, line: 77, baseType: !112, size: 16, offset: 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3425, file: !2699, line: 78, baseType: !2726, size: 8, offset: 1040)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3425, file: !2699, line: 79, baseType: !2728, size: 8, offset: 1048)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3425, file: !2699, line: 81, baseType: !2732, size: 64, offset: 1088)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3425, file: !2699, line: 89, baseType: !2735, size: 64, offset: 1152)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3425, file: !2699, line: 91, baseType: !2737, size: 64, offset: 1216)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3425, file: !2699, line: 92, baseType: !2740, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3425, file: !2699, line: 93, baseType: !3441, size: 64, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3425, file: !2699, line: 94, baseType: !8, size: 64, offset: 1408)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3425, file: !2699, line: 95, baseType: !27, size: 64, offset: 1472)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3425, file: !2699, line: 96, baseType: !16, size: 32, offset: 1536)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3425, file: !2699, line: 98, baseType: !2747, size: 160, offset: 1568)
!3457 = !{!3458}
!3458 = !DILocalVariable(name: "stream", arg: 1, scope: !3419, file: !3420, line: 129, type: !3423)
!3459 = !DILocation(line: 129, column: 19, scope: !3419)
!3460 = !DILocation(line: 150, column: 14, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3419, file: !3420, line: 150, column: 7)
!3462 = !DILocation(line: 150, column: 22, scope: !3461)
!3463 = !DILocation(line: 150, column: 27, scope: !3461)
!3464 = !DILocation(line: 150, column: 7, scope: !3419)
!3465 = !DILocation(line: 151, column: 12, scope: !3461)
!3466 = !DILocation(line: 151, column: 5, scope: !3461)
!3467 = !DILocalVariable(name: "fp", arg: 1, scope: !3468, file: !3420, line: 41, type: !3423)
!3468 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3420, file: !3420, line: 41, type: !3469, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !596, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{null, !3423}
!3471 = !{!3467}
!3472 = !DILocation(line: 41, column: 48, scope: !3468, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 156, column: 3, scope: !3419)
!3474 = !DILocation(line: 43, column: 11, scope: !3475, inlinedAt: !3473)
!3475 = distinct !DILexicalBlock(scope: !3468, file: !3420, line: 43, column: 7)
!3476 = !DILocation(line: 43, column: 18, scope: !3475, inlinedAt: !3473)
!3477 = !DILocation(line: 43, column: 7, scope: !3468, inlinedAt: !3473)
!3478 = !DILocation(line: 45, column: 5, scope: !3475, inlinedAt: !3473)
!3479 = !DILocation(line: 158, column: 10, scope: !3419)
!3480 = !DILocation(line: 158, column: 3, scope: !3419)
!3481 = !DILocation(line: 0, scope: !3419)
!3482 = !DILocation(line: 232, column: 1, scope: !3419)
!3483 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3484, file: !3484, line: 28, type: !3485, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !598, retainedNodes: !3522)
!3484 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!16, !3487, !3521, !16}
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2697, line: 7, baseType: !3489)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2699, line: 49, size: 1728, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3489, file: !2699, line: 51, baseType: !16, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3489, file: !2699, line: 54, baseType: !6, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3489, file: !2699, line: 55, baseType: !6, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3489, file: !2699, line: 56, baseType: !6, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3489, file: !2699, line: 57, baseType: !6, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3489, file: !2699, line: 58, baseType: !6, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3489, file: !2699, line: 59, baseType: !6, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3489, file: !2699, line: 60, baseType: !6, size: 64, offset: 448)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3489, file: !2699, line: 61, baseType: !6, size: 64, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3489, file: !2699, line: 64, baseType: !6, size: 64, offset: 576)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3489, file: !2699, line: 65, baseType: !6, size: 64, offset: 640)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3489, file: !2699, line: 66, baseType: !6, size: 64, offset: 704)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3489, file: !2699, line: 68, baseType: !2714, size: 64, offset: 768)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3489, file: !2699, line: 70, baseType: !3505, size: 64, offset: 832)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3489, file: !2699, line: 72, baseType: !16, size: 32, offset: 896)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3489, file: !2699, line: 73, baseType: !16, size: 32, offset: 928)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3489, file: !2699, line: 74, baseType: !2721, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3489, file: !2699, line: 77, baseType: !112, size: 16, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3489, file: !2699, line: 78, baseType: !2726, size: 8, offset: 1040)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3489, file: !2699, line: 79, baseType: !2728, size: 8, offset: 1048)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3489, file: !2699, line: 81, baseType: !2732, size: 64, offset: 1088)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3489, file: !2699, line: 89, baseType: !2735, size: 64, offset: 1152)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3489, file: !2699, line: 91, baseType: !2737, size: 64, offset: 1216)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3489, file: !2699, line: 92, baseType: !2740, size: 64, offset: 1280)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3489, file: !2699, line: 93, baseType: !3505, size: 64, offset: 1344)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3489, file: !2699, line: 94, baseType: !8, size: 64, offset: 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3489, file: !2699, line: 95, baseType: !27, size: 64, offset: 1472)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3489, file: !2699, line: 96, baseType: !16, size: 32, offset: 1536)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3489, file: !2699, line: 98, baseType: !2747, size: 160, offset: 1568)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2869, line: 63, baseType: !2721)
!3522 = !{!3523, !3524, !3525, !3526}
!3523 = !DILocalVariable(name: "fp", arg: 1, scope: !3483, file: !3484, line: 28, type: !3487)
!3524 = !DILocalVariable(name: "offset", arg: 2, scope: !3483, file: !3484, line: 28, type: !3521)
!3525 = !DILocalVariable(name: "whence", arg: 3, scope: !3483, file: !3484, line: 28, type: !16)
!3526 = !DILocalVariable(name: "pos", scope: !3527, file: !3484, line: 117, type: !3521)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !3484, line: 113, column: 5)
!3528 = distinct !DILexicalBlock(scope: !3483, file: !3484, line: 52, column: 7)
!3529 = !DILocation(line: 28, column: 15, scope: !3483)
!3530 = !DILocation(line: 28, column: 25, scope: !3483)
!3531 = !DILocation(line: 28, column: 37, scope: !3483)
!3532 = !DILocation(line: 52, column: 11, scope: !3528)
!3533 = !{!733, !640, i64 16}
!3534 = !DILocation(line: 52, column: 31, scope: !3528)
!3535 = !{!733, !640, i64 8}
!3536 = !DILocation(line: 52, column: 24, scope: !3528)
!3537 = !DILocation(line: 53, column: 7, scope: !3528)
!3538 = !DILocation(line: 53, column: 14, scope: !3528)
!3539 = !DILocation(line: 53, column: 35, scope: !3528)
!3540 = !{!733, !640, i64 32}
!3541 = !DILocation(line: 53, column: 28, scope: !3528)
!3542 = !DILocation(line: 54, column: 7, scope: !3528)
!3543 = !DILocation(line: 54, column: 14, scope: !3528)
!3544 = !{!733, !640, i64 72}
!3545 = !DILocation(line: 54, column: 28, scope: !3528)
!3546 = !DILocation(line: 52, column: 7, scope: !3483)
!3547 = !DILocation(line: 117, column: 26, scope: !3527)
!3548 = !DILocation(line: 117, column: 19, scope: !3527)
!3549 = !DILocation(line: 117, column: 13, scope: !3527)
!3550 = !DILocation(line: 118, column: 15, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3527, file: !3484, line: 118, column: 11)
!3552 = !DILocation(line: 118, column: 11, scope: !3527)
!3553 = !DILocation(line: 129, column: 11, scope: !3527)
!3554 = !DILocation(line: 129, column: 18, scope: !3527)
!3555 = !DILocation(line: 130, column: 11, scope: !3527)
!3556 = !DILocation(line: 130, column: 19, scope: !3527)
!3557 = !{!733, !734, i64 144}
!3558 = !DILocation(line: 161, column: 7, scope: !3527)
!3559 = !DILocation(line: 163, column: 10, scope: !3483)
!3560 = !DILocation(line: 163, column: 3, scope: !3483)
!3561 = !DILocation(line: 0, scope: !3483)
!3562 = !DILocation(line: 164, column: 1, scope: !3483)
