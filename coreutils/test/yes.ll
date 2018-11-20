; ModuleID = 'coreutils-8.30/src/yes.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !25
@.str.29 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !30
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !35
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !39
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.42 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.43, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.44, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !46
@.str.1.43 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.44 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !62
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !69
@.str.52 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.53 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.54 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.55 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.56 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.58 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.59 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.60 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.61 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !115
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !122
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !134
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !141
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !148
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !136
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !150
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.76 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.77 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.79 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.80 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.89 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.90 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.91 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.92 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.93 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.94 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !156
@.str.1.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !612 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !617, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i32 %0, metadata !616, metadata !DIExpression()), !dbg !640
  %3 = icmp eq i32 %0, 0, !dbg !641
  br i1 %3, label %9, label %4, !dbg !642

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !643, !tbaa !645
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !643
  %7 = load i8*, i8** @program_name, align 8, !dbg !643, !tbaa !645
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !643
  br label %57, !dbg !643

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !649
  %11 = load i8*, i8** @program_name, align 8, !dbg !649, !tbaa !645
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #11, !dbg !649
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !650
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !650, !tbaa !645
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !650
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !651
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !651, !tbaa !645
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !651
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !652
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !652, !tbaa !645
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !652
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !653
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #11, !dbg !653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !636
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !654
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !625, metadata !DIExpression()) #11, !dbg !655
  br label %24, !dbg !656

; <label>:24:                                     ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !625, metadata !DIExpression()) #11, !dbg !655
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !656
  %28 = icmp eq i32 %27, 0, !dbg !656
  br i1 %28, label %34, label %29, !dbg !657

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !658
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !625, metadata !DIExpression()) #11, !dbg !655
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !659
  %32 = load i8*, i8** %31, align 8, !dbg !659, !tbaa !660
  %33 = icmp eq i8* %32, null, !dbg !662
  br i1 %33, label %34, label %24, !dbg !663, !llvm.loop !664

; <label>:34:                                     ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !625, metadata !DIExpression()) #11, !dbg !655
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !625, metadata !DIExpression()) #11, !dbg !655
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !667
  %37 = load i8*, i8** %36, align 8, !dbg !667, !tbaa !669
  %38 = icmp eq i8* %37, null, !dbg !670
  %39 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !671
  call void @llvm.dbg.value(metadata i8* %39, metadata !624, metadata !DIExpression()) #11, !dbg !672
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !673
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #11, !dbg !673
  %42 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !674
  call void @llvm.dbg.value(metadata i8* %42, metadata !632, metadata !DIExpression()) #11, !dbg !675
  %43 = icmp eq i8* %42, null, !dbg !676
  br i1 %43, label %50, label %44, !dbg !678

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !679
  %46 = icmp eq i32 %45, 0, !dbg !679
  br i1 %46, label %50, label %47, !dbg !680

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !681
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !681
  br label %50, !dbg !683

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !684
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !684
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !685
  %54 = icmp eq i8* %39, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), !dbg !685
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !685
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %39, i8* %55) #11, !dbg !685
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #11, !dbg !686
  br label %57

; <label>:57:                                     ; preds = %50, %4
  tail call void @exit(i32 %0) #15, !dbg !687
  unreachable, !dbg !687
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !688 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !693, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i8** %1, metadata !694, metadata !DIExpression()), !dbg !715
  %3 = load i8*, i8** %1, align 8, !dbg !716, !tbaa !645
  tail call void @set_program_name(i8* %3) #11, !dbg !717
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !718
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !719
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !720
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !721
  %8 = load i8*, i8** @Version, align 8, !dbg !722, !tbaa !645
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* null) #11, !dbg !723
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !724
  %10 = icmp eq i32 %9, -1, !dbg !726
  br i1 %10, label %12, label %11, !dbg !727

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !728
  unreachable, !dbg !728

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !729, !tbaa !730
  %14 = sext i32 %13 to i64, !dbg !732
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !732
  call void @llvm.dbg.value(metadata i8** %15, metadata !695, metadata !DIExpression()), !dbg !733
  %16 = sext i32 %0 to i64, !dbg !734
  %17 = getelementptr inbounds i8*, i8** %1, i64 %16, !dbg !734
  call void @llvm.dbg.value(metadata i8** %17, metadata !696, metadata !DIExpression()), !dbg !735
  %18 = icmp eq i32 %13, %0, !dbg !736
  br i1 %18, label %19, label %21, !dbg !738

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !739
  call void @llvm.dbg.value(metadata i8** %20, metadata !696, metadata !DIExpression()), !dbg !735
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %17, align 8, !dbg !740, !tbaa !645
  br label %21, !dbg !741

; <label>:21:                                     ; preds = %19, %12
  %22 = phi i8** [ %20, %19 ], [ %17, %12 ], !dbg !742
  call void @llvm.dbg.value(metadata i8** %22, metadata !696, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 0, metadata !697, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i8 1, metadata !698, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i8** %15, metadata !699, metadata !DIExpression()), !dbg !745
  %23 = icmp ult i8** %15, %22, !dbg !746
  br i1 %23, label %24, label %58, !dbg !747

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 0, metadata !697, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i8 1, metadata !698, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i8** %15, metadata !699, metadata !DIExpression()), !dbg !745
  %25 = load i8*, i8** %15, align 8, !dbg !748, !tbaa !645
  %26 = tail call i64 @strlen(i8* %25) #14, !dbg !749
  call void @llvm.dbg.value(metadata i64 %26, metadata !701, metadata !DIExpression()), !dbg !750
  %27 = add i64 %26, 1, !dbg !751
  %28 = getelementptr inbounds i8*, i8** %15, i64 1, !dbg !752
  %29 = icmp ult i8** %28, %22, !dbg !754
  br i1 %29, label %40, label %33, !dbg !755

; <label>:30:                                     ; preds = %40
  %31 = and i8 %50, 1, !dbg !755
  %32 = icmp ne i8 %31, 0, !dbg !755
  br label %33, !dbg !755

; <label>:33:                                     ; preds = %30, %24
  %34 = phi i1 [ %32, %30 ], [ true, %24 ]
  %35 = phi i64 [ %53, %30 ], [ %27, %24 ], !dbg !751
  call void @llvm.dbg.value(metadata i8 undef, metadata !698, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i64 undef, metadata !697, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i8** undef, metadata !699, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.value(metadata i8 undef, metadata !698, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i64 undef, metadata !697, metadata !DIExpression()), !dbg !743
  %36 = icmp ult i64 %35, 4097, !dbg !756
  %37 = select i1 %36, i64 8192, i64 %35, !dbg !758
  call void @llvm.dbg.value(metadata i64 %37, metadata !697, metadata !DIExpression()), !dbg !743
  %38 = xor i1 %36, true, !dbg !759
  %39 = and i1 %34, %38, !dbg !759
  br i1 %39, label %56, label %58, !dbg !759

; <label>:40:                                     ; preds = %24, %40
  %41 = phi i8** [ %54, %40 ], [ %28, %24 ]
  %42 = phi i64 [ %53, %40 ], [ %27, %24 ]
  %43 = phi i64 [ %51, %40 ], [ %26, %24 ]
  %44 = phi i8* [ %48, %40 ], [ %25, %24 ]
  %45 = phi i8 [ %50, %40 ], [ 1, %24 ]
  call void @llvm.dbg.value(metadata i8 %45, metadata !698, metadata !DIExpression()), !dbg !744
  %46 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !760
  %47 = getelementptr inbounds i8, i8* %46, i64 %43, !dbg !761
  %48 = load i8*, i8** %41, align 8, !dbg !762, !tbaa !645
  %49 = icmp eq i8* %47, %48, !dbg !763
  %50 = select i1 %49, i8 %45, i8 0, !dbg !764
  call void @llvm.dbg.value(metadata i64 %42, metadata !697, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i8 %50, metadata !698, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.value(metadata i8** %41, metadata !699, metadata !DIExpression()), !dbg !745
  %51 = tail call i64 @strlen(i8* %48) #14, !dbg !749
  call void @llvm.dbg.value(metadata i64 %51, metadata !701, metadata !DIExpression()), !dbg !750
  %52 = add i64 %42, 1, !dbg !765
  %53 = add i64 %52, %51, !dbg !751
  %54 = getelementptr inbounds i8*, i8** %41, i64 1, !dbg !752
  %55 = icmp ult i8** %54, %22, !dbg !754
  br i1 %55, label %40, label %30, !dbg !755

; <label>:56:                                     ; preds = %33
  %57 = load i8*, i8** %15, align 8, !dbg !766, !tbaa !645
  br label %61, !dbg !759

; <label>:58:                                     ; preds = %21, %33
  %59 = phi i64 [ %37, %33 ], [ 8192, %21 ]
  %60 = tail call noalias i8* @xmalloc(i64 %59) #11, !dbg !767
  br label %61, !dbg !759

; <label>:61:                                     ; preds = %58, %56
  %62 = phi i1 [ true, %56 ], [ false, %58 ]
  %63 = phi i64 [ %37, %56 ], [ %59, %58 ]
  %64 = phi i8* [ %57, %56 ], [ %60, %58 ], !dbg !759
  call void @llvm.dbg.value(metadata i8* %64, metadata !704, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata i64 0, metadata !705, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i8** %15, metadata !706, metadata !DIExpression()), !dbg !770
  br i1 %23, label %90, label %65, !dbg !771

; <label>:65:                                     ; preds = %97, %61
  %66 = phi i64 [ 0, %61 ], [ %99, %97 ], !dbg !772
  call void @llvm.dbg.value(metadata i64 %66, metadata !705, metadata !DIExpression()), !dbg !769
  %67 = add i64 %66, -1, !dbg !773
  %68 = getelementptr inbounds i8, i8* %64, i64 %67, !dbg !774
  store i8 10, i8* %68, align 1, !dbg !775, !tbaa !776
  call void @llvm.dbg.value(metadata i64 undef, metadata !711, metadata !DIExpression()), !dbg !777
  %69 = udiv i64 %63, %66, !dbg !778
  call void @llvm.dbg.value(metadata i64 %69, metadata !712, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i64 %66, metadata !705, metadata !DIExpression()), !dbg !769
  %70 = add i64 %69, -1, !dbg !780
  call void @llvm.dbg.value(metadata i64 %70, metadata !712, metadata !DIExpression()), !dbg !779
  %71 = icmp eq i64 %70, 0, !dbg !782
  br i1 %71, label %103, label %72, !dbg !782

; <label>:72:                                     ; preds = %65
  %73 = add i64 %69, -2, !dbg !783
  %74 = and i64 %70, 7, !dbg !783
  %75 = icmp eq i64 %74, 0, !dbg !783
  br i1 %75, label %85, label %76, !dbg !783

; <label>:76:                                     ; preds = %72, %76
  %77 = phi i64 [ %82, %76 ], [ %70, %72 ]
  %78 = phi i64 [ %81, %76 ], [ %66, %72 ]
  %79 = phi i64 [ %83, %76 ], [ %74, %72 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !705, metadata !DIExpression()), !dbg !769
  %80 = getelementptr inbounds i8, i8* %64, i64 %78, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %80, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %81 = add i64 %78, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %77, metadata !712, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i64 %81, metadata !705, metadata !DIExpression()), !dbg !769
  %82 = add i64 %77, -1, !dbg !780
  call void @llvm.dbg.value(metadata i64 %82, metadata !712, metadata !DIExpression()), !dbg !779
  %83 = add i64 %79, -1, !dbg !782
  %84 = icmp eq i64 %83, 0, !dbg !782
  br i1 %84, label %85, label %76, !dbg !782, !llvm.loop !787

; <label>:85:                                     ; preds = %76, %72
  %86 = phi i64 [ undef, %72 ], [ %81, %76 ]
  %87 = phi i64 [ %70, %72 ], [ %82, %76 ]
  %88 = phi i64 [ %66, %72 ], [ %81, %76 ]
  %89 = icmp ult i64 %73, 7, !dbg !783
  br i1 %89, label %103, label %105, !dbg !783

; <label>:90:                                     ; preds = %61, %97
  %91 = phi i8** [ %101, %97 ], [ %15, %61 ]
  %92 = phi i64 [ %99, %97 ], [ 0, %61 ]
  call void @llvm.dbg.value(metadata i8** %91, metadata !706, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i64 %92, metadata !705, metadata !DIExpression()), !dbg !769
  %93 = load i8*, i8** %91, align 8, !dbg !789, !tbaa !645
  %94 = tail call i64 @strlen(i8* %93) #14, !dbg !790
  call void @llvm.dbg.value(metadata i64 %94, metadata !708, metadata !DIExpression()), !dbg !791
  br i1 %62, label %97, label %95, !dbg !792

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds i8, i8* %64, i64 %92, !dbg !793
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %96, i8* align 1 %93, i64 %94, i1 false), !dbg !795
  br label %97, !dbg !795

; <label>:97:                                     ; preds = %95, %90
  %98 = add i64 %94, %92, !dbg !796
  call void @llvm.dbg.value(metadata i64 %98, metadata !705, metadata !DIExpression()), !dbg !769
  %99 = add i64 %98, 1, !dbg !797
  %100 = getelementptr inbounds i8, i8* %64, i64 %98, !dbg !798
  store i8 32, i8* %100, align 1, !dbg !799, !tbaa !776
  %101 = getelementptr inbounds i8*, i8** %91, i64 1, !dbg !800
  call void @llvm.dbg.value(metadata i8** %101, metadata !706, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata i64 %99, metadata !705, metadata !DIExpression()), !dbg !769
  %102 = icmp ult i8** %101, %22, !dbg !801
  br i1 %102, label %90, label %65, !dbg !771, !llvm.loop !802

; <label>:103:                                    ; preds = %85, %105, %65
  %104 = phi i64 [ %66, %65 ], [ %86, %85 ], [ %123, %105 ], !dbg !804
  call void @llvm.dbg.value(metadata i64 %104, metadata !705, metadata !DIExpression()), !dbg !769
  br label %126, !dbg !805

; <label>:105:                                    ; preds = %85, %105
  %106 = phi i64 [ %124, %105 ], [ %87, %85 ]
  %107 = phi i64 [ %123, %105 ], [ %88, %85 ]
  call void @llvm.dbg.value(metadata i64 %107, metadata !705, metadata !DIExpression()), !dbg !769
  %108 = getelementptr inbounds i8, i8* %64, i64 %107, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %108, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %109 = add i64 %107, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i64 %109, metadata !705, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %109, metadata !705, metadata !DIExpression()), !dbg !769
  %110 = getelementptr inbounds i8, i8* %64, i64 %109, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %110, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %111 = add i64 %109, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %111, metadata !705, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %111, metadata !705, metadata !DIExpression()), !dbg !769
  %112 = getelementptr inbounds i8, i8* %64, i64 %111, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %112, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %113 = add i64 %111, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %113, metadata !705, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %113, metadata !705, metadata !DIExpression()), !dbg !769
  %114 = getelementptr inbounds i8, i8* %64, i64 %113, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %114, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %115 = add i64 %113, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %115, metadata !705, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %115, metadata !705, metadata !DIExpression()), !dbg !769
  %116 = getelementptr inbounds i8, i8* %64, i64 %115, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %116, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %117 = add i64 %115, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %117, metadata !705, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %117, metadata !705, metadata !DIExpression()), !dbg !769
  %118 = getelementptr inbounds i8, i8* %64, i64 %117, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %118, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %119 = add i64 %117, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %119, metadata !705, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %119, metadata !705, metadata !DIExpression()), !dbg !769
  %120 = getelementptr inbounds i8, i8* %64, i64 %119, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %120, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %121 = add i64 %119, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %121, metadata !705, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %121, metadata !705, metadata !DIExpression()), !dbg !769
  %122 = getelementptr inbounds i8, i8* %64, i64 %121, !dbg !783
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %122, i8* align 1 %64, i64 %66, i1 false), !dbg !785
  %123 = add i64 %121, %66, !dbg !786
  call void @llvm.dbg.value(metadata i64 %106, metadata !712, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !779
  call void @llvm.dbg.value(metadata i64 %123, metadata !705, metadata !DIExpression()), !dbg !769
  %124 = add i64 %106, -8, !dbg !780
  call void @llvm.dbg.value(metadata i64 %124, metadata !712, metadata !DIExpression()), !dbg !779
  %125 = icmp eq i64 %124, 0, !dbg !782
  br i1 %125, label %103, label %105, !dbg !782, !llvm.loop !806

; <label>:126:                                    ; preds = %103, %126
  %127 = tail call i64 @full_write(i32 1, i8* %64, i64 %104) #11, !dbg !805
  %128 = icmp eq i64 %127, %104, !dbg !808
  br i1 %128, label %126, label %129, !dbg !809, !llvm.loop !810

; <label>:129:                                    ; preds = %126
  %130 = tail call i32* @__errno_location() #17, !dbg !812
  %131 = load i32, i32* %130, align 4, !dbg !812, !tbaa !730
  %132 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 5) #11, !dbg !813
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %131, i8* %132) #11, !dbg !814
  ret i32 1, !dbg !815
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !816 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !818, metadata !DIExpression()), !dbg !819
  store i8* %0, i8** @file_name, align 8, !dbg !820, !tbaa !645
  ret void, !dbg !821
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !822 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !826, metadata !DIExpression()), !dbg !827
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !828, !tbaa !829
  ret void, !dbg !831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !832 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !839, !tbaa !645
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !840
  %3 = icmp eq i32 %2, 0, !dbg !841
  br i1 %3, label %22, label %4, !dbg !842

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !843, !tbaa !829, !range !844
  %6 = icmp eq i8 %5, 0, !dbg !843
  br i1 %6, label %11, label %7, !dbg !845

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !846
  %9 = load i32, i32* %8, align 4, !dbg !846, !tbaa !730
  %10 = icmp eq i32 %9, 32, !dbg !847
  br i1 %10, label %22, label %11, !dbg !848

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !849
  call void @llvm.dbg.value(metadata i8* %12, metadata !836, metadata !DIExpression()), !dbg !850
  %13 = load i8*, i8** @file_name, align 8, !dbg !851, !tbaa !645
  %14 = icmp eq i8* %13, null, !dbg !851
  %15 = tail call i32* @__errno_location() #17, !dbg !853
  %16 = load i32, i32* %15, align 4, !dbg !853, !tbaa !730
  br i1 %14, label %19, label %17, !dbg !854

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !855
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !856
  br label %20, !dbg !856

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #11, !dbg !857
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !858, !tbaa !730
  tail call void @_exit(i32 %21) #15, !dbg !859
  unreachable, !dbg !859

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !860, !tbaa !645
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !862
  %25 = icmp eq i32 %24, 0, !dbg !863
  br i1 %25, label %28, label %26, !dbg !864

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !865, !tbaa !730
  tail call void @_exit(i32 %27) #15, !dbg !866
  unreachable, !dbg !866

; <label>:28:                                     ; preds = %22
  ret void, !dbg !867
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @full_write(i32, i8*, i64) local_unnamed_addr #7 !dbg !868 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !875, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata i8* %1, metadata !876, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %2, metadata !877, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 0, metadata !878, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i8* %1, metadata !879, metadata !DIExpression()), !dbg !886
  %4 = icmp eq i64 %2, 0, !dbg !887
  br i1 %4, label %17, label %5, !dbg !888

; <label>:5:                                      ; preds = %3, %12
  %6 = phi i64 [ %13, %12 ], [ 0, %3 ], !dbg !885
  %7 = phi i8* [ %14, %12 ], [ %1, %3 ], !dbg !886
  %8 = phi i64 [ %15, %12 ], [ %2, %3 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !877, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8* %7, metadata !879, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %6, metadata !878, metadata !DIExpression()), !dbg !885
  %9 = tail call i64 @safe_write(i32 %0, i8* %7, i64 %8) #11, !dbg !889
  call void @llvm.dbg.value(metadata i64 %9, metadata !880, metadata !DIExpression()), !dbg !890
  switch i64 %9, label %12 [
    i64 -1, label %17
    i64 0, label %10
  ], !dbg !891

; <label>:10:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i64 %6, metadata !878, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %6, metadata !878, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %6, metadata !878, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %6, metadata !878, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %6, metadata !878, metadata !DIExpression()), !dbg !885
  call void @llvm.dbg.value(metadata i64 %6, metadata !878, metadata !DIExpression()), !dbg !885
  %11 = tail call i32* @__errno_location() #17, !dbg !892
  store i32 28, i32* %11, align 4, !dbg !895, !tbaa !730
  br label %17, !dbg !896

; <label>:12:                                     ; preds = %5
  %13 = add i64 %9, %6, !dbg !897
  call void @llvm.dbg.value(metadata i64 %13, metadata !878, metadata !DIExpression()), !dbg !885
  %14 = getelementptr inbounds i8, i8* %7, i64 %9, !dbg !898
  call void @llvm.dbg.value(metadata i8* %14, metadata !879, metadata !DIExpression()), !dbg !886
  %15 = sub i64 %8, %9, !dbg !899
  call void @llvm.dbg.value(metadata i64 %15, metadata !877, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i64 %15, metadata !877, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata i8* %14, metadata !879, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %13, metadata !878, metadata !DIExpression()), !dbg !885
  %16 = icmp eq i64 %15, 0, !dbg !887
  br i1 %16, label %17, label %5, !llvm.loop !900

; <label>:17:                                     ; preds = %12, %5, %10, %3
  %18 = phi i64 [ 0, %3 ], [ %6, %10 ], [ %6, %5 ], [ %13, %12 ], !dbg !885
  call void @llvm.dbg.value(metadata i64 %18, metadata !878, metadata !DIExpression()), !dbg !885
  ret i64 %18, !dbg !902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !903 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !908, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i8** %1, metadata !909, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata i8* %2, metadata !910, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i8* %3, metadata !911, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i8* %4, metadata !912, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !913, metadata !DIExpression()), !dbg !938
  %8 = load i32, i32* @opterr, align 4, !dbg !939, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %8, metadata !915, metadata !DIExpression()), !dbg !940
  store i32 0, i32* @opterr, align 4, !dbg !941, !tbaa !730
  %9 = icmp eq i32 %0, 2, !dbg !942
  br i1 %9, label %10, label %17, !dbg !943

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.42, i64 0, i64 0), i32* null) #11, !dbg !944
  call void @llvm.dbg.value(metadata i32 %11, metadata !914, metadata !DIExpression()), !dbg !945
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !946

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #11, !dbg !947
  br label %17, !dbg !948

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !949
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #11, !dbg !949
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !916, metadata !DIExpression()), !dbg !950
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !951
  call void @llvm.va_start(i8* nonnull %14), !dbg !951
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !952, !tbaa !645
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #11, !dbg !953
  call void @exit(i32 0) #15, !dbg !954
  unreachable, !dbg !954

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !955, !tbaa !730
  store i32 0, i32* @optind, align 4, !dbg !956, !tbaa !730
  ret void, !dbg !957
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !958 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !960, metadata !DIExpression()), !dbg !963
  %2 = icmp eq i8* %0, null, !dbg !964
  br i1 %2, label %3, label %6, !dbg !966

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !967, !tbaa !645
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !969
  tail call void @abort() #15, !dbg !970
  unreachable, !dbg !970

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !971
  call void @llvm.dbg.value(metadata i8* %7, metadata !961, metadata !DIExpression()), !dbg !972
  %8 = icmp eq i8* %7, null, !dbg !973
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !974
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !975
  call void @llvm.dbg.value(metadata i8* %10, metadata !962, metadata !DIExpression()), !dbg !976
  %11 = ptrtoint i8* %10 to i64, !dbg !977
  %12 = ptrtoint i8* %0 to i64, !dbg !977
  %13 = sub i64 %11, %12, !dbg !977
  %14 = icmp sgt i64 %13, 6, !dbg !979
  br i1 %14, label %15, label %24, !dbg !980

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !981
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #14, !dbg !982
  %18 = icmp eq i32 %17, 0, !dbg !983
  br i1 %18, label %19, label %24, !dbg !984

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !960, metadata !DIExpression()), !dbg !963
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #14, !dbg !985
  %21 = icmp eq i32 %20, 0, !dbg !988
  br i1 %21, label %22, label %24, !dbg !989

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !990
  call void @llvm.dbg.value(metadata i8* %23, metadata !960, metadata !DIExpression()), !dbg !963
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !992, !tbaa !645
  br label %24, !dbg !993

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !960, metadata !DIExpression()), !dbg !963
  store i8* %25, i8** @program_name, align 8, !dbg !994, !tbaa !645
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !995, !tbaa !645
  ret void, !dbg !996
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !997 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1002, metadata !DIExpression()), !dbg !1005
  %2 = tail call i32* @__errno_location() #17, !dbg !1006
  %3 = load i32, i32* %2, align 4, !dbg !1006, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %3, metadata !1003, metadata !DIExpression()), !dbg !1007
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1008
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1008
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1008
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1009
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1009
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1004, metadata !DIExpression()), !dbg !1010
  store i32 %3, i32* %2, align 4, !dbg !1011, !tbaa !730
  ret %struct.quoting_options* %8, !dbg !1012
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1013 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1019, metadata !DIExpression()), !dbg !1020
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1021
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1021
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1022
  %5 = load i32, i32* %4, align 8, !dbg !1022, !tbaa !1023
  ret i32 %5, !dbg !1025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1026 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1030, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %1, metadata !1031, metadata !DIExpression()), !dbg !1033
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1034
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1034
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1035
  store i32 %1, i32* %5, align 8, !dbg !1036, !tbaa !1023
  ret void, !dbg !1037
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1038 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1042, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i8 %1, metadata !1043, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i32 %2, metadata !1044, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata i8 %1, metadata !1045, metadata !DIExpression()), !dbg !1054
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1055
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1055
  %6 = lshr i8 %1, 5, !dbg !1056
  %7 = zext i8 %6 to i64, !dbg !1056
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1057
  call void @llvm.dbg.value(metadata i32* %8, metadata !1047, metadata !DIExpression()), !dbg !1058
  %9 = and i8 %1, 31, !dbg !1059
  %10 = zext i8 %9 to i32, !dbg !1059
  call void @llvm.dbg.value(metadata i32 %10, metadata !1049, metadata !DIExpression()), !dbg !1060
  %11 = load i32, i32* %8, align 4, !dbg !1061, !tbaa !730
  %12 = lshr i32 %11, %10, !dbg !1062
  %13 = and i32 %12, 1, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %13, metadata !1050, metadata !DIExpression()), !dbg !1064
  %14 = and i32 %2, 1, !dbg !1065
  %15 = xor i32 %13, %14, !dbg !1066
  %16 = shl i32 %15, %10, !dbg !1067
  %17 = xor i32 %16, %11, !dbg !1068
  store i32 %17, i32* %8, align 4, !dbg !1068, !tbaa !730
  ret i32 %13, !dbg !1069
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1070 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1074, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i32 %1, metadata !1075, metadata !DIExpression()), !dbg !1078
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1079
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1081
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1074, metadata !DIExpression()), !dbg !1077
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1082
  %6 = load i32, i32* %5, align 4, !dbg !1082, !tbaa !1083
  call void @llvm.dbg.value(metadata i32 %6, metadata !1076, metadata !DIExpression()), !dbg !1084
  store i32 %1, i32* %5, align 4, !dbg !1085, !tbaa !1083
  ret i32 %6, !dbg !1086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1087 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1091, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %1, metadata !1092, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %2, metadata !1093, metadata !DIExpression()), !dbg !1096
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1097
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1099
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()), !dbg !1094
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1100
  store i32 10, i32* %6, align 8, !dbg !1101, !tbaa !1023
  %7 = icmp ne i8* %1, null, !dbg !1102
  %8 = icmp ne i8* %2, null, !dbg !1104
  %9 = and i1 %7, %8, !dbg !1105
  br i1 %9, label %11, label %10, !dbg !1105

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1106
  unreachable, !dbg !1106

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1107
  store i8* %1, i8** %12, align 8, !dbg !1108, !tbaa !1109
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1110
  store i8* %2, i8** %13, align 8, !dbg !1111, !tbaa !1112
  ret void, !dbg !1113
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1114 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1118, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %1, metadata !1119, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %2, metadata !1120, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %3, metadata !1121, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1122, metadata !DIExpression()), !dbg !1130
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1131
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1123, metadata !DIExpression()), !dbg !1132
  %8 = tail call i32* @__errno_location() #17, !dbg !1133
  %9 = load i32, i32* %8, align 4, !dbg !1133, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %9, metadata !1124, metadata !DIExpression()), !dbg !1134
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1135
  %11 = load i32, i32* %10, align 8, !dbg !1135, !tbaa !1023
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1136
  %13 = load i32, i32* %12, align 4, !dbg !1136, !tbaa !1083
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1137
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1138
  %16 = load i8*, i8** %15, align 8, !dbg !1138, !tbaa !1109
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1139
  %18 = load i8*, i8** %17, align 8, !dbg !1139, !tbaa !1112
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %19, metadata !1125, metadata !DIExpression()), !dbg !1141
  store i32 %9, i32* %8, align 4, !dbg !1142, !tbaa !730
  ret i64 %19, !dbg !1143
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1144 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %1, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %2, metadata !1152, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %3, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i32 %4, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %5, metadata !1155, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32* %6, metadata !1156, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i8* %7, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %8, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 0, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 0, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8* null, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 0, metadata !1163, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8 0, metadata !1164, metadata !DIExpression()), !dbg !1227
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1228
  %14 = icmp eq i64 %13, 1, !dbg !1229
  %15 = lshr i32 %5, 1, !dbg !1230
  %16 = trunc i32 %15 to i8, !dbg !1230
  %17 = and i8 %16, 1, !dbg !1230
  call void @llvm.dbg.value(metadata i8 %17, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 0, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 0, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 1, metadata !1169, metadata !DIExpression()), !dbg !1233
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1234

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1224
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1225
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1226
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1227
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1235
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1231
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1232
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1233
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %39, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %38, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %37, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %36, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %35, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8 %34, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %33, metadata !1163, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %32, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %31, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 0, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8* %30, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %29, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 %28, metadata !1154, metadata !DIExpression()), !dbg !1218
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
  ], !dbg !1237

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8 1, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %36, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 5, metadata !1154, metadata !DIExpression()), !dbg !1218
  br label %93, !dbg !1238

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 5, metadata !1154, metadata !DIExpression()), !dbg !1218
  %43 = and i8 %36, 1, !dbg !1239
  %44 = icmp eq i8 %43, 0, !dbg !1239
  br i1 %44, label %45, label %93, !dbg !1238

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1241
  br i1 %46, label %93, label %47, !dbg !1244

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1241, !tbaa !776
  br label %93, !dbg !1241

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %28), !dbg !1245
  call void @llvm.dbg.value(metadata i8* %49, metadata !1157, metadata !DIExpression()), !dbg !1221
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %28), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %50, metadata !1158, metadata !DIExpression()), !dbg !1222
  br label %51, !dbg !1250

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %52, metadata !1157, metadata !DIExpression()), !dbg !1221
  %54 = and i8 %36, 1, !dbg !1251
  %55 = icmp eq i8 %54, 0, !dbg !1251
  br i1 %55, label %56, label %71, !dbg !1253

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 0, metadata !1160, metadata !DIExpression()), !dbg !1223
  %57 = load i8, i8* %52, align 1, !dbg !1254, !tbaa !776
  %58 = icmp eq i8 %57, 0, !dbg !1257
  br i1 %58, label %71, label %59, !dbg !1257

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %62, metadata !1160, metadata !DIExpression()), !dbg !1223
  %63 = icmp ult i64 %62, %40, !dbg !1258
  br i1 %63, label %64, label %66, !dbg !1261

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1258
  store i8 %60, i8* %65, align 1, !dbg !1258, !tbaa !776
  br label %66, !dbg !1258

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1261
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %68, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %67, metadata !1160, metadata !DIExpression()), !dbg !1223
  %69 = load i8, i8* %68, align 1, !dbg !1254, !tbaa !776
  %70 = icmp eq i8 %69, 0, !dbg !1257
  br i1 %70, label %71, label %59, !dbg !1257, !llvm.loop !1263

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1223
  call void @llvm.dbg.value(metadata i64 %72, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 1, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8* %53, metadata !1162, metadata !DIExpression()), !dbg !1225
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1265
  call void @llvm.dbg.value(metadata i64 %73, metadata !1163, metadata !DIExpression()), !dbg !1226
  br label %93, !dbg !1266

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1164, metadata !DIExpression()), !dbg !1227
  br label %75, !dbg !1267

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1235
  call void @llvm.dbg.value(metadata i8 %76, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 1, metadata !1166, metadata !DIExpression()), !dbg !1230
  br label %77, !dbg !1268

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1227
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1235
  call void @llvm.dbg.value(metadata i8 %79, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %78, metadata !1164, metadata !DIExpression()), !dbg !1227
  %80 = and i8 %79, 1, !dbg !1269
  %81 = icmp eq i8 %80, 0, !dbg !1269
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1271
  br label %83, !dbg !1271

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1272
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1230
  call void @llvm.dbg.value(metadata i8 %85, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %84, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 2, metadata !1154, metadata !DIExpression()), !dbg !1218
  %86 = and i8 %85, 1, !dbg !1273
  %87 = icmp eq i8 %86, 0, !dbg !1273
  br i1 %87, label %88, label %93, !dbg !1275

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1276
  br i1 %89, label %93, label %90, !dbg !1279

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1276, !tbaa !776
  br label %93, !dbg !1276

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1166, metadata !DIExpression()), !dbg !1230
  br label %93, !dbg !1280

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1281
  unreachable, !dbg !1281

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1223
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ], !dbg !1235
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1235
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1235
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1282
  call void @llvm.dbg.value(metadata i8 %101, metadata !1166, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %99, metadata !1163, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %97, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i32 %94, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i64 0, metadata !1159, metadata !DIExpression()), !dbg !1283
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
  br label %121, !dbg !1284

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1285
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1223
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1224
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1231
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1232
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1233
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %125, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %122, metadata !1159, metadata !DIExpression()), !dbg !1283
  %130 = icmp eq i64 %125, -1, !dbg !1286
  br i1 %130, label %131, label %135, !dbg !1287

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1288
  %133 = load i8, i8* %132, align 1, !dbg !1288, !tbaa !776
  %134 = icmp eq i8 %133, 0, !dbg !1289
  br i1 %134, label %617, label %137, !dbg !1290

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1291
  br i1 %136, label %617, label %137, !dbg !1290

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1175, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 0, metadata !1176, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 0, metadata !1177, metadata !DIExpression()), !dbg !1294
  br i1 %107, label %138, label %153, !dbg !1295

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1297
  %140 = and i1 %108, %130, !dbg !1298
  br i1 %140, label %141, label %143, !dbg !1298

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %142, metadata !1153, metadata !DIExpression()), !dbg !1217
  br label %143, !dbg !1300

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1153, metadata !DIExpression()), !dbg !1217
  %145 = icmp ugt i64 %139, %144, !dbg !1301
  br i1 %145, label %153, label %146, !dbg !1302

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1303
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1304
  %149 = icmp ne i32 %148, 0, !dbg !1305
  %150 = or i1 %149, %110, !dbg !1306
  %151 = xor i1 %149, true, !dbg !1306
  %152 = zext i1 %151 to i8, !dbg !1306
  br i1 %150, label %153, label %661, !dbg !1306

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1307
  call void @llvm.dbg.value(metadata i8 %155, metadata !1175, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i64 %154, metadata !1153, metadata !DIExpression()), !dbg !1217
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1308
  %157 = load i8, i8* %156, align 1, !dbg !1308, !tbaa !776
  call void @llvm.dbg.value(metadata i8 %157, metadata !1170, metadata !DIExpression()), !dbg !1309
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
  ], !dbg !1310

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1311

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1312

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1176, metadata !DIExpression()), !dbg !1293
  %161 = and i8 %126, 1, !dbg !1316
  %162 = icmp eq i8 %161, 0, !dbg !1316
  %163 = and i1 %114, %162, !dbg !1316
  br i1 %163, label %164, label %180, !dbg !1316

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1318
  br i1 %165, label %166, label %168, !dbg !1322

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1318
  store i8 39, i8* %167, align 1, !dbg !1318, !tbaa !776
  br label %168, !dbg !1318

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %169, metadata !1160, metadata !DIExpression()), !dbg !1223
  %170 = icmp ult i64 %169, %129, !dbg !1323
  br i1 %170, label %171, label %173, !dbg !1326

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1323
  store i8 36, i8* %172, align 1, !dbg !1323, !tbaa !776
  br label %173, !dbg !1323

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1326
  call void @llvm.dbg.value(metadata i64 %174, metadata !1160, metadata !DIExpression()), !dbg !1223
  %175 = icmp ult i64 %174, %129, !dbg !1327
  br i1 %175, label %176, label %178, !dbg !1330

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1327
  store i8 39, i8* %177, align 1, !dbg !1327, !tbaa !776
  br label %178, !dbg !1327

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %179, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 1, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %180, !dbg !1331

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1282
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1282
  call void @llvm.dbg.value(metadata i8 %182, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %181, metadata !1160, metadata !DIExpression()), !dbg !1223
  %183 = icmp ult i64 %181, %129, !dbg !1332
  br i1 %183, label %184, label %186, !dbg !1335

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1332
  store i8 92, i8* %185, align 1, !dbg !1332, !tbaa !776
  br label %186, !dbg !1332

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %187, metadata !1160, metadata !DIExpression()), !dbg !1223
  br i1 %104, label %188, label %478, !dbg !1336

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1338
  %190 = icmp ult i64 %189, %154, !dbg !1339
  br i1 %190, label %191, label %467, !dbg !1340

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1341
  %193 = load i8, i8* %192, align 1, !dbg !1341, !tbaa !776
  %194 = add i8 %193, -48, !dbg !1342
  %195 = icmp ult i8 %194, 10, !dbg !1342
  br i1 %195, label %196, label %467, !dbg !1342

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1343
  br i1 %197, label %198, label %200, !dbg !1347

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1343
  store i8 48, i8* %199, align 1, !dbg !1343, !tbaa !776
  br label %200, !dbg !1343

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %201, metadata !1160, metadata !DIExpression()), !dbg !1223
  %202 = icmp ult i64 %201, %129, !dbg !1348
  br i1 %202, label %203, label %205, !dbg !1351

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1348
  store i8 48, i8* %204, align 1, !dbg !1348, !tbaa !776
  br label %205, !dbg !1348

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %206, metadata !1160, metadata !DIExpression()), !dbg !1223
  br label %467, !dbg !1352

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1353

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1354

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1355

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1357

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1359
  %213 = icmp ult i64 %212, %154, !dbg !1360
  br i1 %213, label %214, label %467, !dbg !1361

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1362
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1363
  %217 = load i8, i8* %216, align 1, !dbg !1363, !tbaa !776
  %218 = icmp eq i8 %217, 63, !dbg !1364
  br i1 %218, label %219, label %467, !dbg !1365

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1366
  %221 = load i8, i8* %220, align 1, !dbg !1366, !tbaa !776
  %222 = sext i8 %221 to i32, !dbg !1366
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
  ], !dbg !1367

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1368

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1170, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %212, metadata !1159, metadata !DIExpression()), !dbg !1283
  %225 = icmp ult i64 %123, %129, !dbg !1370
  br i1 %225, label %226, label %228, !dbg !1373

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1370
  store i8 63, i8* %227, align 1, !dbg !1370, !tbaa !776
  br label %228, !dbg !1370

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %229, metadata !1160, metadata !DIExpression()), !dbg !1223
  %230 = icmp ult i64 %229, %129, !dbg !1374
  br i1 %230, label %231, label %233, !dbg !1377

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1374
  store i8 34, i8* %232, align 1, !dbg !1374, !tbaa !776
  br label %233, !dbg !1374

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %234, metadata !1160, metadata !DIExpression()), !dbg !1223
  %235 = icmp ult i64 %234, %129, !dbg !1378
  br i1 %235, label %236, label %238, !dbg !1381

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1378
  store i8 34, i8* %237, align 1, !dbg !1378, !tbaa !776
  br label %238, !dbg !1378

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %239, metadata !1160, metadata !DIExpression()), !dbg !1223
  %240 = icmp ult i64 %239, %129, !dbg !1382
  br i1 %240, label %241, label %243, !dbg !1385

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1382
  store i8 63, i8* %242, align 1, !dbg !1382, !tbaa !776
  br label %243, !dbg !1382

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %244, metadata !1160, metadata !DIExpression()), !dbg !1223
  br label %467, !dbg !1386

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1174, metadata !DIExpression()), !dbg !1387
  br label %255, !dbg !1388

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1174, metadata !DIExpression()), !dbg !1387
  br label %255, !dbg !1389

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1174, metadata !DIExpression()), !dbg !1387
  br label %253, !dbg !1390

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1174, metadata !DIExpression()), !dbg !1387
  br label %253, !dbg !1391

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1174, metadata !DIExpression()), !dbg !1387
  br label %255, !dbg !1392

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1174, metadata !DIExpression()), !dbg !1387
  br i1 %114, label %251, label %252, !dbg !1393

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1394

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1397

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1399
  call void @llvm.dbg.value(metadata i8 %254, metadata !1174, metadata !DIExpression()), !dbg !1387
  br i1 %113, label %255, label %661, !dbg !1400

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1399
  call void @llvm.dbg.value(metadata i8 %256, metadata !1174, metadata !DIExpression()), !dbg !1387
  br i1 %103, label %524, label %478, !dbg !1402

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1403
  br i1 %258, label %259, label %264, !dbg !1405

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1406, !tbaa !776
  %261 = icmp ne i8 %260, 0, !dbg !1407
  %262 = icmp ne i64 %122, 0, !dbg !1408
  %263 = or i1 %262, %261, !dbg !1410
  br i1 %263, label %467, label %270, !dbg !1410

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1411
  %266 = icmp ne i64 %122, 0, !dbg !1408
  %267 = or i1 %266, %265, !dbg !1405
  br i1 %267, label %467, label %270, !dbg !1405

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1408
  br i1 %269, label %270, label %467, !dbg !1412

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1177, metadata !DIExpression()), !dbg !1294
  br label %271, !dbg !1413

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1399
  call void @llvm.dbg.value(metadata i8 %272, metadata !1177, metadata !DIExpression()), !dbg !1294
  br i1 %113, label %467, label %661, !dbg !1414

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 1, metadata !1177, metadata !DIExpression()), !dbg !1294
  br i1 %114, label %274, label %467, !dbg !1416

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1417

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1420
  %277 = icmp ne i64 %124, 0, !dbg !1422
  %278 = or i1 %277, %276, !dbg !1423
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1423
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %280, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %279, metadata !1161, metadata !DIExpression()), !dbg !1224
  %281 = icmp ult i64 %123, %280, !dbg !1424
  br i1 %281, label %282, label %284, !dbg !1427

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1424
  store i8 39, i8* %283, align 1, !dbg !1424, !tbaa !776
  br label %284, !dbg !1424

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %285, metadata !1160, metadata !DIExpression()), !dbg !1223
  %286 = icmp ult i64 %285, %280, !dbg !1428
  br i1 %286, label %287, label %289, !dbg !1431

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1428
  store i8 92, i8* %288, align 1, !dbg !1428, !tbaa !776
  br label %289, !dbg !1428

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1431
  call void @llvm.dbg.value(metadata i64 %290, metadata !1160, metadata !DIExpression()), !dbg !1223
  %291 = icmp ult i64 %290, %280, !dbg !1432
  br i1 %291, label %292, label %294, !dbg !1435

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1432
  store i8 39, i8* %293, align 1, !dbg !1432, !tbaa !776
  br label %294, !dbg !1432

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %295, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 0, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %467, !dbg !1436

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1437

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1178, metadata !DIExpression()), !dbg !1438
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1439
  %299 = load i16*, i16** %298, align 8, !dbg !1439, !tbaa !645
  %300 = zext i8 %157 to i64, !dbg !1439
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1439
  %302 = load i16, i16* %301, align 2, !dbg !1439, !tbaa !1441
  %303 = lshr i16 %302, 14, !dbg !1443
  %304 = trunc i16 %303 to i8, !dbg !1443
  %305 = and i8 %304, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i8 %305, metadata !1181, metadata !DIExpression()), !dbg !1444
  br label %359, !dbg !1445

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1446
  store i64 0, i64* %10, align 8, !dbg !1447
  call void @llvm.dbg.value(metadata i64 0, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1181, metadata !DIExpression()), !dbg !1444
  %307 = icmp eq i64 %154, -1, !dbg !1448
  br i1 %307, label %308, label %310, !dbg !1450

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %309, metadata !1153, metadata !DIExpression()), !dbg !1217
  br label %310, !dbg !1452

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1453
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  br label %312, !dbg !1454

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1455
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1456
  call void @llvm.dbg.value(metadata i8 %314, metadata !1181, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1457
  %315 = add i64 %313, %122, !dbg !1458
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1459
  %317 = sub i64 %311, %315, !dbg !1460
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1182, metadata !DIExpression(DW_OP_deref)), !dbg !1461
  call void @llvm.dbg.value(metadata i32* %12, metadata !1200, metadata !DIExpression(DW_OP_deref)), !dbg !1462
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !1463
  call void @llvm.dbg.value(metadata i64 %318, metadata !1203, metadata !DIExpression()), !dbg !1464
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1465

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  %320 = icmp ugt i64 %311, %315, !dbg !1466
  br i1 %320, label %321, label %344, !dbg !1468

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1178, metadata !DIExpression()), !dbg !1438
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1469
  %325 = load i8, i8* %324, align 1, !dbg !1469, !tbaa !776
  %326 = icmp eq i8 %325, 0, !dbg !1468
  br i1 %326, label %344, label %327, !dbg !1470

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1471
  call void @llvm.dbg.value(metadata i64 %328, metadata !1178, metadata !DIExpression()), !dbg !1438
  %329 = add i64 %328, %122, !dbg !1472
  %330 = icmp ult i64 %329, %311, !dbg !1466
  br i1 %330, label %321, label %344, !dbg !1468, !llvm.loop !1473

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1474
  %333 = and i1 %116, %332, !dbg !1477
  call void @llvm.dbg.value(metadata i64 1, metadata !1204, metadata !DIExpression()), !dbg !1478
  br i1 %333, label %334, label %347, !dbg !1477

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1204, metadata !DIExpression()), !dbg !1478
  %336 = add i64 %335, %315, !dbg !1479
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1480
  %338 = load i8, i8* %337, align 1, !dbg !1480, !tbaa !776
  %339 = sext i8 %338 to i32, !dbg !1480
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1481

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %341, metadata !1204, metadata !DIExpression()), !dbg !1478
  %342 = icmp ult i64 %341, %318, !dbg !1474
  br i1 %342, label %334, label %347, !dbg !1483, !llvm.loop !1484

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %314, metadata !1181, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %313, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %314, metadata !1181, metadata !DIExpression()), !dbg !1444
  br label %344, !dbg !1486

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1181, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %352, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1486
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1487, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %348, metadata !1200, metadata !DIExpression()), !dbg !1462
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !1489
  %350 = icmp eq i32 %349, 0, !dbg !1489
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1490
  call void @llvm.dbg.value(metadata i8 %351, metadata !1181, metadata !DIExpression()), !dbg !1444
  %352 = add i64 %318, %313, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %352, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %351, metadata !1181, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %352, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1486
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1182, metadata !DIExpression(DW_OP_deref)), !dbg !1461
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1492
  %354 = icmp eq i32 %353, 0, !dbg !1493
  br i1 %354, label %312, label %355, !dbg !1494, !llvm.loop !1495

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1497
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i32 2, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 2, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 2, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 2, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 2, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i32 %94, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %94, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %94, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %94, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %94, metadata !1154, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i8 %100, metadata !1164, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %311, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8 %351, metadata !1181, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %352, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1486
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1497
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1498
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1499
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1499
  call void @llvm.dbg.value(metadata i8 %362, metadata !1181, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %361, metadata !1178, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %360, metadata !1153, metadata !DIExpression()), !dbg !1217
  %363 = and i8 %362, 1, !dbg !1500
  %364 = icmp ne i8 %363, 0, !dbg !1500
  call void @llvm.dbg.value(metadata i8 %363, metadata !1177, metadata !DIExpression()), !dbg !1294
  %365 = icmp ult i64 %361, 2, !dbg !1501
  %366 = or i1 %364, %115, !dbg !1502
  %367 = and i1 %365, %366, !dbg !1503
  br i1 %367, label %467, label %368, !dbg !1503

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %369, metadata !1211, metadata !DIExpression()), !dbg !1505
  br label %370, !dbg !1506

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1507
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1511
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1231
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1507
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1513
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1293
  call void @llvm.dbg.value(metadata i8 %376, metadata !1176, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %375, metadata !1175, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 %374, metadata !1170, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %373, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %372, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %371, metadata !1159, metadata !DIExpression()), !dbg !1283
  br i1 %366, label %423, label %377, !dbg !1517

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1518

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1176, metadata !DIExpression()), !dbg !1293
  %379 = and i8 %373, 1, !dbg !1521
  %380 = icmp eq i8 %379, 0, !dbg !1521
  %381 = and i1 %114, %380, !dbg !1521
  br i1 %381, label %382, label %398, !dbg !1521

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1523
  br i1 %383, label %384, label %386, !dbg !1527

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1523
  store i8 39, i8* %385, align 1, !dbg !1523, !tbaa !776
  br label %386, !dbg !1523

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %387, metadata !1160, metadata !DIExpression()), !dbg !1223
  %388 = icmp ult i64 %387, %129, !dbg !1528
  br i1 %388, label %389, label %391, !dbg !1531

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1528
  store i8 36, i8* %390, align 1, !dbg !1528, !tbaa !776
  br label %391, !dbg !1528

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %392, metadata !1160, metadata !DIExpression()), !dbg !1223
  %393 = icmp ult i64 %392, %129, !dbg !1532
  br i1 %393, label %394, label %396, !dbg !1535

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1532
  store i8 39, i8* %395, align 1, !dbg !1532, !tbaa !776
  br label %396, !dbg !1532

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %397, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 1, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %398, !dbg !1536

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1282
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1282
  call void @llvm.dbg.value(metadata i8 %400, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %399, metadata !1160, metadata !DIExpression()), !dbg !1223
  %401 = icmp ult i64 %399, %129, !dbg !1537
  br i1 %401, label %402, label %404, !dbg !1540

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1537
  store i8 92, i8* %403, align 1, !dbg !1537, !tbaa !776
  br label %404, !dbg !1537

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %405, metadata !1160, metadata !DIExpression()), !dbg !1223
  %406 = icmp ult i64 %405, %129, !dbg !1541
  br i1 %406, label %407, label %411, !dbg !1544

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1541
  %409 = or i8 %408, 48, !dbg !1541
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1541
  store i8 %409, i8* %410, align 1, !dbg !1541, !tbaa !776
  br label %411, !dbg !1541

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %412, metadata !1160, metadata !DIExpression()), !dbg !1223
  %413 = icmp ult i64 %412, %129, !dbg !1545
  br i1 %413, label %414, label %419, !dbg !1548

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1545
  %416 = and i8 %415, 7, !dbg !1545
  %417 = or i8 %416, 48, !dbg !1545
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1545
  store i8 %417, i8* %418, align 1, !dbg !1545, !tbaa !776
  br label %419, !dbg !1545

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %420, metadata !1160, metadata !DIExpression()), !dbg !1223
  %421 = and i8 %374, 7, !dbg !1549
  %422 = or i8 %421, 48, !dbg !1550
  call void @llvm.dbg.value(metadata i8 %422, metadata !1170, metadata !DIExpression()), !dbg !1309
  br label %432, !dbg !1551

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1552
  %425 = icmp eq i8 %424, 0, !dbg !1552
  br i1 %425, label %432, label %426, !dbg !1553

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1554
  br i1 %427, label %428, label %430, !dbg !1557

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1554
  store i8 92, i8* %429, align 1, !dbg !1554, !tbaa !776
  br label %430, !dbg !1554

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %431, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 0, metadata !1175, metadata !DIExpression()), !dbg !1292
  br label %432, !dbg !1558

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1559
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1231
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1560
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1561
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1563
  call void @llvm.dbg.value(metadata i8 %437, metadata !1176, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %436, metadata !1175, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 %435, metadata !1170, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %434, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %433, metadata !1160, metadata !DIExpression()), !dbg !1223
  %438 = add i64 %371, 1, !dbg !1564
  %439 = icmp ugt i64 %369, %438, !dbg !1566
  br i1 %439, label %440, label %562, !dbg !1567

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1568
  %442 = icmp ne i8 %441, 0, !dbg !1568
  %443 = and i8 %437, 1, !dbg !1568
  %444 = icmp eq i8 %443, 0, !dbg !1568
  %445 = and i1 %442, %444, !dbg !1568
  br i1 %445, label %446, label %457, !dbg !1568

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1571
  br i1 %447, label %448, label %450, !dbg !1575

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1571
  store i8 39, i8* %449, align 1, !dbg !1571, !tbaa !776
  br label %450, !dbg !1571

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %451, metadata !1160, metadata !DIExpression()), !dbg !1223
  %452 = icmp ult i64 %451, %129, !dbg !1576
  br i1 %452, label %453, label %455, !dbg !1579

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1576
  store i8 39, i8* %454, align 1, !dbg !1576, !tbaa !776
  br label %455, !dbg !1576

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %456, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 0, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %457, !dbg !1580

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1581
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1282
  call void @llvm.dbg.value(metadata i8 %459, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %458, metadata !1160, metadata !DIExpression()), !dbg !1223
  %460 = icmp ult i64 %458, %129, !dbg !1582
  br i1 %460, label %461, label %463, !dbg !1584

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1582
  store i8 %435, i8* %462, align 1, !dbg !1582, !tbaa !776
  br label %463, !dbg !1582

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %464, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %438, metadata !1159, metadata !DIExpression()), !dbg !1283
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1585
  %466 = load i8, i8* %465, align 1, !dbg !1585, !tbaa !776
  call void @llvm.dbg.value(metadata i8 %466, metadata !1170, metadata !DIExpression()), !dbg !1309
  br label %370, !dbg !1586, !llvm.loop !1587

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1590
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1282
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1224
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1591
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1282
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1282
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1307
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1307
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1307
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %476, metadata !1177, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %475, metadata !1176, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %155, metadata !1175, metadata !DIExpression()), !dbg !1292
  call void @llvm.dbg.value(metadata i8 %474, metadata !1170, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %473, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %472, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %471, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %470, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %469, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %468, metadata !1159, metadata !DIExpression()), !dbg !1283
  br i1 %105, label %489, label %478, !dbg !1592

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
  br i1 %112, label %490, label %512, !dbg !1594

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1595

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
  %501 = lshr i8 %494, 5, !dbg !1596
  %502 = zext i8 %501 to i64, !dbg !1596
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1597
  %504 = load i32, i32* %503, align 4, !dbg !1597, !tbaa !730
  %505 = and i8 %494, 31, !dbg !1598
  %506 = zext i8 %505 to i32, !dbg !1598
  %507 = shl i32 1, %506, !dbg !1599
  %508 = and i32 %504, %507, !dbg !1599
  %509 = icmp eq i32 %508, 0, !dbg !1599
  %510 = icmp eq i8 %155, 0, !dbg !1600
  %511 = and i1 %510, %509, !dbg !1601
  br i1 %511, label %562, label %524, !dbg !1601

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
  %523 = icmp eq i8 %155, 0, !dbg !1600
  br i1 %523, label %562, label %524, !dbg !1602

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1603
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1282
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1224
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1591
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1231
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1232
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1604
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1307
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %532, metadata !1177, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %531, metadata !1170, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %530, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %529, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %528, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %527, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %526, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %525, metadata !1159, metadata !DIExpression()), !dbg !1283
  br i1 %110, label %534, label %661, !dbg !1607

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1176, metadata !DIExpression()), !dbg !1293
  %535 = and i8 %529, 1, !dbg !1609
  %536 = icmp eq i8 %535, 0, !dbg !1609
  %537 = and i1 %114, %536, !dbg !1609
  br i1 %537, label %538, label %554, !dbg !1609

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1611
  br i1 %539, label %540, label %542, !dbg !1615

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1611
  store i8 39, i8* %541, align 1, !dbg !1611, !tbaa !776
  br label %542, !dbg !1611

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %543, metadata !1160, metadata !DIExpression()), !dbg !1223
  %544 = icmp ult i64 %543, %533, !dbg !1616
  br i1 %544, label %545, label %547, !dbg !1619

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1616
  store i8 36, i8* %546, align 1, !dbg !1616, !tbaa !776
  br label %547, !dbg !1616

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %548, metadata !1160, metadata !DIExpression()), !dbg !1223
  %549 = icmp ult i64 %548, %533, !dbg !1620
  br i1 %549, label %550, label %552, !dbg !1623

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1620
  store i8 39, i8* %551, align 1, !dbg !1620, !tbaa !776
  br label %552, !dbg !1620

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %553, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 1, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %554, !dbg !1624

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1581
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1282
  call void @llvm.dbg.value(metadata i8 %556, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %555, metadata !1160, metadata !DIExpression()), !dbg !1223
  %557 = icmp ult i64 %555, %533, !dbg !1625
  br i1 %557, label %558, label %560, !dbg !1628

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1625
  store i8 92, i8* %559, align 1, !dbg !1625, !tbaa !776
  br label %560, !dbg !1625

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %561, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %572, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %571, metadata !1177, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %570, metadata !1176, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %569, metadata !1170, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %568, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %567, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %566, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %565, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %564, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %563, metadata !1159, metadata !DIExpression()), !dbg !1283
  br label %589, !dbg !1629

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1603
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1282
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1224
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1591
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1231
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1232
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1632
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1307
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1307
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %571, metadata !1177, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i8 %570, metadata !1176, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %569, metadata !1170, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i8 %568, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %567, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %566, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %565, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %564, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %563, metadata !1159, metadata !DIExpression()), !dbg !1283
  %573 = and i8 %567, 1, !dbg !1629
  %574 = icmp ne i8 %573, 0, !dbg !1629
  %575 = and i8 %570, 1, !dbg !1629
  %576 = icmp eq i8 %575, 0, !dbg !1629
  %577 = and i1 %574, %576, !dbg !1629
  br i1 %577, label %578, label %589, !dbg !1629

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1633
  br i1 %579, label %580, label %582, !dbg !1637

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1633
  store i8 39, i8* %581, align 1, !dbg !1633, !tbaa !776
  br label %582, !dbg !1633

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %583, metadata !1160, metadata !DIExpression()), !dbg !1223
  %584 = icmp ult i64 %583, %572, !dbg !1638
  br i1 %584, label %585, label %587, !dbg !1641

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1638
  store i8 39, i8* %586, align 1, !dbg !1638, !tbaa !776
  br label %587, !dbg !1638

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %588, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 0, metadata !1167, metadata !DIExpression()), !dbg !1231
  br label %589, !dbg !1642

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1581
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1282
  call void @llvm.dbg.value(metadata i8 %598, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %597, metadata !1160, metadata !DIExpression()), !dbg !1223
  %599 = icmp ult i64 %597, %590, !dbg !1643
  br i1 %599, label %600, label %602, !dbg !1646

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1643
  store i8 %592, i8* %601, align 1, !dbg !1643, !tbaa !776
  br label %602, !dbg !1643

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %603, metadata !1160, metadata !DIExpression()), !dbg !1223
  %604 = and i8 %591, 1, !dbg !1647
  %605 = icmp eq i8 %604, 0, !dbg !1647
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1649
  call void @llvm.dbg.value(metadata i8 %606, metadata !1169, metadata !DIExpression()), !dbg !1233
  br label %607, !dbg !1650

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1603
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1282
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1224
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1591
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1231
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1282
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1233
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 %614, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %613, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %612, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %611, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %610, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %609, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %608, metadata !1159, metadata !DIExpression()), !dbg !1283
  %616 = add i64 %608, 1, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %616, metadata !1159, metadata !DIExpression()), !dbg !1283
  br label %121, !dbg !1652, !llvm.loop !1653

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %618, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %618, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %125, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %125, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1167, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %127, metadata !1168, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i8 %128, metadata !1169, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  %619 = icmp eq i64 %123, 0, !dbg !1655
  %620 = and i1 %114, %619, !dbg !1657
  %621 = xor i1 %620, true, !dbg !1657
  %622 = or i1 %110, %621, !dbg !1657
  br i1 %622, label %623, label %661, !dbg !1657

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1658
  %625 = xor i1 %624, true, !dbg !1658
  %626 = and i8 %127, 1, !dbg !1660
  %627 = icmp eq i8 %626, 0, !dbg !1660
  %628 = or i1 %627, %625, !dbg !1658
  br i1 %628, label %638, label %629, !dbg !1658

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1661
  %631 = icmp eq i8 %630, 0, !dbg !1661
  br i1 %631, label %634, label %632, !dbg !1664

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %618, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %618, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %618, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %618, metadata !1153, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %95, metadata !1157, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i8* %96, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %124, metadata !1161, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %125, metadata !1153, metadata !DIExpression()), !dbg !1217
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1665
  br label %671, !dbg !1666

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1667
  %636 = icmp ne i64 %124, 0, !dbg !1669
  %637 = and i1 %636, %635, !dbg !1670
  br i1 %637, label %27, label %638, !dbg !1670

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1151, metadata !DIExpression()), !dbg !1215
  %639 = icmp ne i8* %98, null, !dbg !1671
  %640 = and i1 %639, %110, !dbg !1673
  br i1 %640, label %641, label %656, !dbg !1673

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %123, metadata !1160, metadata !DIExpression()), !dbg !1223
  %642 = load i8, i8* %98, align 1, !dbg !1674, !tbaa !776
  %643 = icmp eq i8 %642, 0, !dbg !1677
  br i1 %643, label %656, label %644, !dbg !1677

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %647, metadata !1160, metadata !DIExpression()), !dbg !1223
  %648 = icmp ult i64 %647, %129, !dbg !1678
  br i1 %648, label %649, label %651, !dbg !1681

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1678
  store i8 %645, i8* %650, align 1, !dbg !1678, !tbaa !776
  br label %651, !dbg !1678

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1681
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %653, metadata !1162, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %652, metadata !1160, metadata !DIExpression()), !dbg !1223
  %654 = load i8, i8* %653, align 1, !dbg !1674, !tbaa !776
  %655 = icmp eq i8 %654, 0, !dbg !1677
  br i1 %655, label %656, label %644, !dbg !1677, !llvm.loop !1683

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1223
  call void @llvm.dbg.value(metadata i64 %657, metadata !1160, metadata !DIExpression()), !dbg !1223
  %658 = icmp ult i64 %657, %129, !dbg !1685
  br i1 %658, label %659, label %671, !dbg !1687

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1688
  store i8 0, i8* %660, align 1, !dbg !1689, !tbaa !776
  br label %671, !dbg !1688

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1151, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %663, metadata !1153, metadata !DIExpression()), !dbg !1217
  %665 = icmp ne i32 %662, 2, !dbg !1690
  %666 = icmp eq i8 %102, 0, !dbg !1692
  %667 = or i1 %665, %666, !dbg !1693
  call void @llvm.dbg.value(metadata i32 4, metadata !1154, metadata !DIExpression()), !dbg !1218
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %668, metadata !1154, metadata !DIExpression()), !dbg !1218
  %669 = and i32 %5, -3, !dbg !1694
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1695
  br label %671, !dbg !1696

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1697
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1702, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %1, metadata !1703, metadata !DIExpression()), !dbg !1707
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !1708
  call void @llvm.dbg.value(metadata i8* %3, metadata !1704, metadata !DIExpression()), !dbg !1709
  %4 = icmp eq i8* %3, %0, !dbg !1710
  br i1 %4, label %5, label %71, !dbg !1712

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !1713
  call void @llvm.dbg.value(metadata i8* %6, metadata !1705, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8* %6, metadata !1715, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8* null, metadata !1721, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 85, metadata !1722, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 84, metadata !1723, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8 70, metadata !1724, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8 45, metadata !1725, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 56, metadata !1726, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 0, metadata !1729, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1743
  %7 = load i8, i8* %6, align 1, !dbg !1744, !tbaa !776
  %8 = and i8 %7, -33, !dbg !1744
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1744

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1746, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8* null, metadata !1751, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 84, metadata !1752, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 70, metadata !1753, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 45, metadata !1754, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 56, metadata !1755, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1756, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1772
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1773
  %11 = load i8, i8* %10, align 1, !dbg !1773, !tbaa !776
  %12 = and i8 %11, -33, !dbg !1773
  %13 = icmp eq i8 %12, 84, !dbg !1773
  br i1 %13, label %14, label %68, !dbg !1773

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1775, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8* null, metadata !1780, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8 70, metadata !1781, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 45, metadata !1782, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 56, metadata !1783, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1787, metadata !DIExpression()), !dbg !1799
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1800
  %16 = load i8, i8* %15, align 1, !dbg !1800, !tbaa !776
  %17 = and i8 %16, -33, !dbg !1800
  %18 = icmp eq i8 %17, 70, !dbg !1800
  br i1 %18, label %19, label %68, !dbg !1800

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1802, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* null, metadata !1807, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 45, metadata !1808, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 56, metadata !1809, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1810, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1824
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1825
  %21 = load i8, i8* %20, align 1, !dbg !1825, !tbaa !776
  %22 = icmp eq i8 %21, 45, !dbg !1825
  br i1 %22, label %23, label %68, !dbg !1827

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1828, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8* null, metadata !1833, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i8 56, metadata !1834, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8 0, metadata !1835, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1836, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1848
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1849
  %25 = load i8, i8* %24, align 1, !dbg !1849, !tbaa !776
  %26 = icmp eq i8 %25, 56, !dbg !1849
  br i1 %26, label %27, label %68, !dbg !1851

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1852, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8* null, metadata !1857, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 0, metadata !1858, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 0, metadata !1859, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 0, metadata !1860, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, metadata !1861, metadata !DIExpression()), !dbg !1870
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1871
  %29 = load i8, i8* %28, align 1, !dbg !1871, !tbaa !776
  %30 = icmp eq i8 %29, 0, !dbg !1871
  br i1 %30, label %31, label %68, !dbg !1873

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1874, !tbaa !776
  %33 = icmp eq i8 %32, 96, !dbg !1875
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !1874
  br label %71, !dbg !1876

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1746, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8* null, metadata !1751, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 66, metadata !1752, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 49, metadata !1753, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 56, metadata !1754, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 48, metadata !1755, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 51, metadata !1756, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8 48, metadata !1757, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1889
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1890
  %37 = load i8, i8* %36, align 1, !dbg !1890, !tbaa !776
  %38 = and i8 %37, -33, !dbg !1890
  %39 = icmp eq i8 %38, 66, !dbg !1890
  br i1 %39, label %40, label %68, !dbg !1890

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1775, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8* null, metadata !1780, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 49, metadata !1781, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 56, metadata !1782, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 48, metadata !1783, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 51, metadata !1784, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 48, metadata !1785, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 0, metadata !1787, metadata !DIExpression()), !dbg !1900
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1901
  %42 = load i8, i8* %41, align 1, !dbg !1901, !tbaa !776
  %43 = icmp eq i8 %42, 49, !dbg !1901
  br i1 %43, label %44, label %68, !dbg !1902

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1802, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8* null, metadata !1807, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 56, metadata !1808, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 48, metadata !1809, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 51, metadata !1810, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 48, metadata !1811, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1911
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1912
  %46 = load i8, i8* %45, align 1, !dbg !1912, !tbaa !776
  %47 = icmp eq i8 %46, 56, !dbg !1912
  br i1 %47, label %48, label %68, !dbg !1913

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1828, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8* null, metadata !1833, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 48, metadata !1834, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 51, metadata !1835, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 48, metadata !1836, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1921
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1922
  %50 = load i8, i8* %49, align 1, !dbg !1922, !tbaa !776
  %51 = icmp eq i8 %50, 48, !dbg !1922
  br i1 %51, label %52, label %68, !dbg !1923

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1852, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8* null, metadata !1857, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 51, metadata !1858, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 48, metadata !1859, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 0, metadata !1860, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 0, metadata !1861, metadata !DIExpression()), !dbg !1930
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1931
  %54 = load i8, i8* %53, align 1, !dbg !1931, !tbaa !776
  %55 = icmp eq i8 %54, 51, !dbg !1931
  br i1 %55, label %56, label %68, !dbg !1932

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1933, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8* null, metadata !1938, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 48, metadata !1939, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, metadata !1940, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 0, metadata !1941, metadata !DIExpression()), !dbg !1949
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1950
  %58 = load i8, i8* %57, align 1, !dbg !1950, !tbaa !776
  %59 = icmp eq i8 %58, 48, !dbg !1950
  br i1 %59, label %60, label %68, !dbg !1952

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1953, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* null, metadata !1958, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i8 0, metadata !1959, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8 0, metadata !1960, metadata !DIExpression()), !dbg !1967
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1968
  %62 = load i8, i8* %61, align 1, !dbg !1968, !tbaa !776
  %63 = icmp eq i8 %62, 0, !dbg !1968
  br i1 %63, label %64, label %68, !dbg !1970

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1971, !tbaa !776
  %66 = icmp eq i8 %65, 96, !dbg !1972
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !1971
  br label %71, !dbg !1973

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1974
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !1975
  br label %71, !dbg !1976

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1977
  ret i8* %72, !dbg !1978
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1979 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1983, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i64 %1, metadata !1984, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1985, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %0, metadata !1989, metadata !DIExpression()) #11, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %1, metadata !1994, metadata !DIExpression()) #11, !dbg !2004
  call void @llvm.dbg.value(metadata i64* null, metadata !1995, metadata !DIExpression()) #11, !dbg !2005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1996, metadata !DIExpression()) #11, !dbg !2006
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2007
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2007
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1997, metadata !DIExpression()) #11, !dbg !2008
  %6 = tail call i32* @__errno_location() #17, !dbg !2009
  %7 = load i32, i32* %6, align 4, !dbg !2009, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %7, metadata !1998, metadata !DIExpression()) #11, !dbg !2010
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2011
  %9 = load i32, i32* %8, align 4, !dbg !2011, !tbaa !1083
  %10 = or i32 %9, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %10, metadata !1999, metadata !DIExpression()) #11, !dbg !2013
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2014
  %12 = load i32, i32* %11, align 8, !dbg !2014, !tbaa !1023
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2015
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2016
  %15 = load i8*, i8** %14, align 8, !dbg !2016, !tbaa !1109
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2017
  %17 = load i8*, i8** %16, align 8, !dbg !2017, !tbaa !1112
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2018
  %19 = add i64 %18, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %19, metadata !2000, metadata !DIExpression()) #11, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %19, metadata !2021, metadata !DIExpression()) #11, !dbg !2026
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2028
  call void @llvm.dbg.value(metadata i8* %20, metadata !2001, metadata !DIExpression()) #11, !dbg !2029
  %21 = load i32, i32* %11, align 8, !dbg !2030, !tbaa !1023
  %22 = load i8*, i8** %14, align 8, !dbg !2031, !tbaa !1109
  %23 = load i8*, i8** %16, align 8, !dbg !2032, !tbaa !1112
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2033
  store i32 %7, i32* %6, align 4, !dbg !2034, !tbaa !730
  ret i8* %20, !dbg !2035
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1989, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i64 %1, metadata !1994, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i64* %2, metadata !1995, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1996, metadata !DIExpression()), !dbg !2039
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2040
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2040
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1997, metadata !DIExpression()), !dbg !2041
  %7 = tail call i32* @__errno_location() #17, !dbg !2042
  %8 = load i32, i32* %7, align 4, !dbg !2042, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %8, metadata !1998, metadata !DIExpression()), !dbg !2043
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2044
  %10 = load i32, i32* %9, align 4, !dbg !2044, !tbaa !1083
  %11 = icmp ne i64* %2, null, !dbg !2045
  %12 = xor i1 %11, true, !dbg !2045
  %13 = zext i1 %12 to i32, !dbg !2045
  %14 = or i32 %10, %13, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %14, metadata !1999, metadata !DIExpression()), !dbg !2047
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2048
  %16 = load i32, i32* %15, align 8, !dbg !2048, !tbaa !1023
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2049
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2050
  %19 = load i8*, i8** %18, align 8, !dbg !2050, !tbaa !1109
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2051
  %21 = load i8*, i8** %20, align 8, !dbg !2051, !tbaa !1112
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2052
  %23 = add i64 %22, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %23, metadata !2000, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %23, metadata !2021, metadata !DIExpression()) #11, !dbg !2055
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2057
  call void @llvm.dbg.value(metadata i8* %24, metadata !2001, metadata !DIExpression()), !dbg !2058
  %25 = load i32, i32* %15, align 8, !dbg !2059, !tbaa !1023
  %26 = load i8*, i8** %18, align 8, !dbg !2060, !tbaa !1109
  %27 = load i8*, i8** %20, align 8, !dbg !2061, !tbaa !1112
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2062
  store i32 %8, i32* %7, align 4, !dbg !2063, !tbaa !730
  br i1 %11, label %29, label %30, !dbg !2064

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2065, !tbaa !2067
  br label %30, !dbg !2069

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2070
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2071 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2075, !tbaa !645
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2073, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 1, metadata !2074, metadata !DIExpression()), !dbg !2077
  %2 = load i32, i32* @nslots, align 4, !dbg !2078, !tbaa !730
  %3 = icmp sgt i32 %2, 1, !dbg !2081
  br i1 %3, label %4, label %12, !dbg !2082

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2074, metadata !DIExpression()), !dbg !2077
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2083
  %7 = load i8*, i8** %6, align 8, !dbg !2083, !tbaa !2084
  tail call void @free(i8* %7) #11, !dbg !2086
  %8 = add nuw nsw i64 %5, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i32 undef, metadata !2074, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2077
  %9 = load i32, i32* @nslots, align 4, !dbg !2078, !tbaa !730
  %10 = sext i32 %9 to i64, !dbg !2081
  %11 = icmp slt i64 %8, %10, !dbg !2081
  br i1 %11, label %4, label %12, !dbg !2082, !llvm.loop !2088

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2090
  %14 = load i8*, i8** %13, align 8, !dbg !2090, !tbaa !2084
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2092
  br i1 %15, label %17, label %16, !dbg !2093

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2094
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2096, !tbaa !2097
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2098, !tbaa !2084
  br label %17, !dbg !2099

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2100
  br i1 %18, label %21, label %19, !dbg !2102

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2103
  tail call void @free(i8* %20) #11, !dbg !2105
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2106, !tbaa !645
  br label %21, !dbg !2107

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2108, !tbaa !730
  ret void, !dbg !2109
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2114, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8* %1, metadata !2115, metadata !DIExpression()), !dbg !2117
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2118
  ret i8* %3, !dbg !2119
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %1, metadata !2125, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i64 %2, metadata !2126, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2127, metadata !DIExpression()), !dbg !2142
  %5 = tail call i32* @__errno_location() #17, !dbg !2143
  %6 = load i32, i32* %5, align 4, !dbg !2143, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %6, metadata !2128, metadata !DIExpression()), !dbg !2144
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2145, !tbaa !645
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2129, metadata !DIExpression()), !dbg !2146
  %8 = icmp slt i32 %0, 0, !dbg !2147
  br i1 %8, label %9, label %10, !dbg !2149

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2150
  unreachable, !dbg !2150

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2151, !tbaa !730
  %12 = icmp sgt i32 %11, %0, !dbg !2152
  br i1 %12, label %34, label %13, !dbg !2153

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2154
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2133, metadata !DIExpression()), !dbg !2155
  %15 = icmp eq i32 %0, 2147483647, !dbg !2156
  br i1 %15, label %16, label %17, !dbg !2158

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2159
  unreachable, !dbg !2159

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2160
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2160
  %20 = add nsw i32 %0, 1, !dbg !2161
  %21 = sext i32 %20 to i64, !dbg !2162
  %22 = shl nsw i64 %21, 4, !dbg !2163
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2164
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2164
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2129, metadata !DIExpression()), !dbg !2146
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2165, !tbaa !645
  br i1 %14, label %25, label %26, !dbg !2166

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2167, !tbaa.struct !2169
  br label %26, !dbg !2170

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2171, !tbaa !730
  %28 = sext i32 %27 to i64, !dbg !2172
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2172
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2173
  %31 = sub nsw i32 %20, %27, !dbg !2174
  %32 = sext i32 %31 to i64, !dbg !2175
  %33 = shl nsw i64 %32, 4, !dbg !2176
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2173
  store i32 %20, i32* @nslots, align 4, !dbg !2177, !tbaa !730
  br label %34, !dbg !2178

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2179
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2129, metadata !DIExpression()), !dbg !2146
  %36 = sext i32 %0 to i64, !dbg !2180
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2181
  %38 = load i64, i64* %37, align 8, !dbg !2181, !tbaa !2097
  call void @llvm.dbg.value(metadata i64 %38, metadata !2134, metadata !DIExpression()), !dbg !2182
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2183
  %40 = load i8*, i8** %39, align 8, !dbg !2183, !tbaa !2084
  call void @llvm.dbg.value(metadata i8* %40, metadata !2136, metadata !DIExpression()), !dbg !2184
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2185
  %42 = load i32, i32* %41, align 4, !dbg !2185, !tbaa !1083
  %43 = or i32 %42, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %43, metadata !2137, metadata !DIExpression()), !dbg !2187
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2188
  %45 = load i32, i32* %44, align 8, !dbg !2188, !tbaa !1023
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2189
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2190
  %48 = load i8*, i8** %47, align 8, !dbg !2190, !tbaa !1109
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2191
  %50 = load i8*, i8** %49, align 8, !dbg !2191, !tbaa !1112
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %51, metadata !2138, metadata !DIExpression()), !dbg !2193
  %52 = icmp ugt i64 %38, %51, !dbg !2194
  br i1 %52, label %63, label %53, !dbg !2196

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %54, metadata !2134, metadata !DIExpression()), !dbg !2182
  store i64 %54, i64* %37, align 8, !dbg !2199, !tbaa !2097
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2200
  br i1 %55, label %57, label %56, !dbg !2202

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2203
  br label %57, !dbg !2203

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2021, metadata !DIExpression()) #11, !dbg !2204
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %58, metadata !2136, metadata !DIExpression()), !dbg !2184
  store i8* %58, i8** %39, align 8, !dbg !2207, !tbaa !2084
  %59 = load i32, i32* %44, align 8, !dbg !2208, !tbaa !1023
  %60 = load i8*, i8** %47, align 8, !dbg !2209, !tbaa !1109
  %61 = load i8*, i8** %49, align 8, !dbg !2210, !tbaa !1112
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2211
  br label %63, !dbg !2212

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2213
  call void @llvm.dbg.value(metadata i8* %64, metadata !2136, metadata !DIExpression()), !dbg !2184
  store i32 %6, i32* %5, align 4, !dbg !2214, !tbaa !730
  ret i8* %64, !dbg !2215
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2216 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2220, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %1, metadata !2221, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %2, metadata !2222, metadata !DIExpression()), !dbg !2225
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2226
  ret i8* %4, !dbg !2227
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2228 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2232, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 0, metadata !2114, metadata !DIExpression()) #11, !dbg !2234
  call void @llvm.dbg.value(metadata i8* %0, metadata !2115, metadata !DIExpression()) #11, !dbg !2236
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2237
  ret i8* %2, !dbg !2238
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2239 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %1, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 0, metadata !2220, metadata !DIExpression()) #11, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()) #11, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %1, metadata !2222, metadata !DIExpression()) #11, !dbg !2250
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2251
  ret i8* %3, !dbg !2252
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2253 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2257, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 %1, metadata !2258, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8* %2, metadata !2259, metadata !DIExpression()), !dbg !2263
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2264
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2264
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2265
  call void @llvm.dbg.value(metadata i32 %1, metadata !2266, metadata !DIExpression()) #11, !dbg !2272
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2274, !alias.scope !2275
  %6 = icmp eq i32 %1, 10, !dbg !2278
  br i1 %6, label %7, label %8, !dbg !2280

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2281, !noalias !2275
  unreachable, !dbg !2281

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2282
  store i32 %1, i32* %9, align 8, !dbg !2283, !tbaa !1023, !alias.scope !2275
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2271, metadata !DIExpression(DW_OP_deref)), !dbg !2274
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2284
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2285
  ret i8* %10, !dbg !2286
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2287 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2291, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 %1, metadata !2292, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %2, metadata !2293, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %3, metadata !2294, metadata !DIExpression()), !dbg !2299
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2300
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2295, metadata !DIExpression(DW_OP_deref)), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %1, metadata !2266, metadata !DIExpression()) #11, !dbg !2302
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2304, !alias.scope !2305
  %7 = icmp eq i32 %1, 10, !dbg !2308
  br i1 %7, label %8, label %9, !dbg !2309

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2310, !noalias !2305
  unreachable, !dbg !2310

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2311
  store i32 %1, i32* %10, align 8, !dbg !2312, !tbaa !1023, !alias.scope !2305
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2295, metadata !DIExpression(DW_OP_deref)), !dbg !2301
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2271, metadata !DIExpression(DW_OP_deref)), !dbg !2304
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2313
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2314
  ret i8* %11, !dbg !2315
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2316 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %1, metadata !2321, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 0, metadata !2257, metadata !DIExpression()) #11, !dbg !2324
  call void @llvm.dbg.value(metadata i32 %0, metadata !2258, metadata !DIExpression()) #11, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %1, metadata !2259, metadata !DIExpression()) #11, !dbg !2327
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2328
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2260, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()) #11, !dbg !2330
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2332, !alias.scope !2333
  %5 = icmp eq i32 %0, 10, !dbg !2336
  br i1 %5, label %6, label %7, !dbg !2337

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2338, !noalias !2333
  unreachable, !dbg !2338

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2339
  store i32 %0, i32* %8, align 8, !dbg !2340, !tbaa !1023, !alias.scope !2333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2260, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2329
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2271, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2332
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2341
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2342
  ret i8* %9, !dbg !2343
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2344 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2348, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %1, metadata !2349, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i64 %2, metadata !2350, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 0, metadata !2291, metadata !DIExpression()) #11, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %0, metadata !2292, metadata !DIExpression()) #11, !dbg !2356
  call void @llvm.dbg.value(metadata i8* %1, metadata !2293, metadata !DIExpression()) #11, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %2, metadata !2294, metadata !DIExpression()) #11, !dbg !2358
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2359
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2295, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()) #11, !dbg !2361
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2363, !alias.scope !2364
  %6 = icmp eq i32 %0, 10, !dbg !2367
  br i1 %6, label %7, label %8, !dbg !2368

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2369, !noalias !2364
  unreachable, !dbg !2369

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2370
  store i32 %0, i32* %9, align 8, !dbg !2371, !tbaa !1023, !alias.scope !2364
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2295, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2360
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2271, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2363
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !2372
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2373
  ret i8* %10, !dbg !2374
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2375 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i64 %1, metadata !2380, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 %2, metadata !2381, metadata !DIExpression()), !dbg !2385
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2386
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2387, !tbaa.struct !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2382, metadata !DIExpression(DW_OP_deref)), !dbg !2389
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1042, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8 %2, metadata !1043, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 1, metadata !1044, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i8 %2, metadata !1045, metadata !DIExpression()), !dbg !2394
  %6 = lshr i8 %2, 5, !dbg !2395
  %7 = zext i8 %6 to i64, !dbg !2395
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2396
  call void @llvm.dbg.value(metadata i32* %8, metadata !1047, metadata !DIExpression()), !dbg !2397
  %9 = and i8 %2, 31, !dbg !2398
  %10 = zext i8 %9 to i32, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %10, metadata !1049, metadata !DIExpression()), !dbg !2399
  %11 = load i32, i32* %8, align 4, !dbg !2400, !tbaa !730
  %12 = lshr i32 %11, %10, !dbg !2401
  %13 = and i32 %12, 1, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %13, metadata !1050, metadata !DIExpression()), !dbg !2403
  %14 = xor i32 %13, 1, !dbg !2404
  %15 = shl i32 %14, %10, !dbg !2405
  %16 = xor i32 %15, %11, !dbg !2406
  store i32 %16, i32* %8, align 4, !dbg !2406, !tbaa !730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2382, metadata !DIExpression(DW_OP_deref)), !dbg !2389
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2408
  ret i8* %17, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2410 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2414, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 %1, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()) #11, !dbg !2418
  call void @llvm.dbg.value(metadata i64 -1, metadata !2380, metadata !DIExpression()) #11, !dbg !2420
  call void @llvm.dbg.value(metadata i8 %1, metadata !2381, metadata !DIExpression()) #11, !dbg !2421
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2422
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2422
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2423, !tbaa.struct !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2424
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1042, metadata !DIExpression()) #11, !dbg !2425
  call void @llvm.dbg.value(metadata i8 %1, metadata !1043, metadata !DIExpression()) #11, !dbg !2427
  call void @llvm.dbg.value(metadata i32 1, metadata !1044, metadata !DIExpression()) #11, !dbg !2428
  call void @llvm.dbg.value(metadata i8 %1, metadata !1045, metadata !DIExpression()) #11, !dbg !2429
  %5 = lshr i8 %1, 5, !dbg !2430
  %6 = zext i8 %5 to i64, !dbg !2430
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2431
  call void @llvm.dbg.value(metadata i32* %7, metadata !1047, metadata !DIExpression()) #11, !dbg !2432
  %8 = and i8 %1, 31, !dbg !2433
  %9 = zext i8 %8 to i32, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %9, metadata !1049, metadata !DIExpression()) #11, !dbg !2434
  %10 = load i32, i32* %7, align 4, !dbg !2435, !tbaa !730
  %11 = lshr i32 %10, %9, !dbg !2436
  %12 = and i32 %11, 1, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %12, metadata !1050, metadata !DIExpression()) #11, !dbg !2438
  %13 = xor i32 %12, 1, !dbg !2439
  %14 = shl i32 %13, %9, !dbg !2440
  %15 = xor i32 %14, %10, !dbg !2441
  store i32 %15, i32* %7, align 4, !dbg !2441, !tbaa !730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2424
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2443
  ret i8* %16, !dbg !2444
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2445 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %0, metadata !2414, metadata !DIExpression()) #11, !dbg !2449
  call void @llvm.dbg.value(metadata i8 58, metadata !2415, metadata !DIExpression()) #11, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()) #11, !dbg !2452
  call void @llvm.dbg.value(metadata i64 -1, metadata !2380, metadata !DIExpression()) #11, !dbg !2454
  call void @llvm.dbg.value(metadata i8 58, metadata !2381, metadata !DIExpression()) #11, !dbg !2455
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2456
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2457, !tbaa.struct !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2458
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1042, metadata !DIExpression()) #11, !dbg !2459
  call void @llvm.dbg.value(metadata i8 58, metadata !1043, metadata !DIExpression()) #11, !dbg !2461
  call void @llvm.dbg.value(metadata i32 1, metadata !1044, metadata !DIExpression()) #11, !dbg !2462
  call void @llvm.dbg.value(metadata i8 58, metadata !1045, metadata !DIExpression()) #11, !dbg !2463
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2464
  call void @llvm.dbg.value(metadata i32* %4, metadata !1047, metadata !DIExpression()) #11, !dbg !2465
  call void @llvm.dbg.value(metadata i32 26, metadata !1049, metadata !DIExpression()) #11, !dbg !2466
  %5 = load i32, i32* %4, align 4, !dbg !2467, !tbaa !730
  %6 = or i32 %5, 67108864, !dbg !2468
  store i32 %6, i32* %4, align 4, !dbg !2468, !tbaa !730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2458
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2469
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2470
  ret i8* %7, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2472 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 %1, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()) #11, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %1, metadata !2380, metadata !DIExpression()) #11, !dbg !2480
  call void @llvm.dbg.value(metadata i8 58, metadata !2381, metadata !DIExpression()) #11, !dbg !2481
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2482
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2482
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2483, !tbaa.struct !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2484
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1042, metadata !DIExpression()) #11, !dbg !2485
  call void @llvm.dbg.value(metadata i8 58, metadata !1043, metadata !DIExpression()) #11, !dbg !2487
  call void @llvm.dbg.value(metadata i32 1, metadata !1044, metadata !DIExpression()) #11, !dbg !2488
  call void @llvm.dbg.value(metadata i8 58, metadata !1045, metadata !DIExpression()) #11, !dbg !2489
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2490
  call void @llvm.dbg.value(metadata i32* %5, metadata !1047, metadata !DIExpression()) #11, !dbg !2491
  call void @llvm.dbg.value(metadata i32 26, metadata !1049, metadata !DIExpression()) #11, !dbg !2492
  %6 = load i32, i32* %5, align 4, !dbg !2493, !tbaa !730
  %7 = or i32 %6, 67108864, !dbg !2494
  store i32 %7, i32* %5, align 4, !dbg !2494, !tbaa !730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2484
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2495
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2496
  ret i8* %8, !dbg !2497
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2498 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2271, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2504
  call void @llvm.dbg.value(metadata i32 %0, metadata !2500, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %1, metadata !2501, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %2, metadata !2502, metadata !DIExpression()), !dbg !2508
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2509
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2509
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2510
  call void @llvm.dbg.value(metadata i32 %1, metadata !2266, metadata !DIExpression()) #11, !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2504
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2504, !alias.scope !2512
  %8 = icmp eq i32 %1, 10, !dbg !2515
  br i1 %8, label %9, label %10, !dbg !2516

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2517, !noalias !2512
  unreachable, !dbg !2517

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2504
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2510
  store i32 %1, i32* %11, align 8, !dbg !2510
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2510
  %13 = bitcast i32* %12 to i8*, !dbg !2510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2510
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2510
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2503, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1042, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 58, metadata !1043, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i32 1, metadata !1044, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 58, metadata !1045, metadata !DIExpression()), !dbg !2523
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2524
  call void @llvm.dbg.value(metadata i32* %14, metadata !1047, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 26, metadata !1049, metadata !DIExpression()), !dbg !2526
  %15 = load i32, i32* %14, align 4, !dbg !2527, !tbaa !730
  %16 = or i32 %15, 67108864, !dbg !2528
  store i32 %16, i32* %14, align 4, !dbg !2528, !tbaa !730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2503, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2529
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2530
  ret i8* %17, !dbg !2531
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2532 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2536, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8* %1, metadata !2537, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* %2, metadata !2538, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %3, metadata !2539, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()) #11, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()) #11, !dbg !2556
  call void @llvm.dbg.value(metadata i8* %2, metadata !2550, metadata !DIExpression()) #11, !dbg !2557
  call void @llvm.dbg.value(metadata i8* %3, metadata !2551, metadata !DIExpression()) #11, !dbg !2558
  call void @llvm.dbg.value(metadata i64 -1, metadata !2552, metadata !DIExpression()) #11, !dbg !2559
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2560
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2561, !tbaa.struct !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()) #11, !dbg !2563
  call void @llvm.dbg.value(metadata i8* %1, metadata !1092, metadata !DIExpression()) #11, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %2, metadata !1093, metadata !DIExpression()) #11, !dbg !2566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()) #11, !dbg !2563
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2567
  store i32 10, i32* %7, align 8, !dbg !2568, !tbaa !1023
  %8 = icmp ne i8* %1, null, !dbg !2569
  %9 = icmp ne i8* %2, null, !dbg !2570
  %10 = and i1 %8, %9, !dbg !2571
  br i1 %10, label %12, label %11, !dbg !2571

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2572
  unreachable, !dbg !2572

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2573
  store i8* %1, i8** %13, align 8, !dbg !2574, !tbaa !1109
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2575
  store i8* %2, i8** %14, align 8, !dbg !2576, !tbaa !1112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2562
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2577
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2578
  ret i8* %15, !dbg !2579
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2545 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %2, metadata !2550, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %3, metadata !2551, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 %4, metadata !2552, metadata !DIExpression()), !dbg !2584
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2585
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2586, !tbaa.struct !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2553, metadata !DIExpression(DW_OP_deref)), !dbg !2587
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1091, metadata !DIExpression()) #11, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !1092, metadata !DIExpression()) #11, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %2, metadata !1093, metadata !DIExpression()) #11, !dbg !2591
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1091, metadata !DIExpression()) #11, !dbg !2588
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2592
  store i32 10, i32* %8, align 8, !dbg !2593, !tbaa !1023
  %9 = icmp ne i8* %1, null, !dbg !2594
  %10 = icmp ne i8* %2, null, !dbg !2595
  %11 = and i1 %9, %10, !dbg !2596
  br i1 %11, label %13, label %12, !dbg !2596

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2597
  unreachable, !dbg !2597

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2598
  store i8* %1, i8** %14, align 8, !dbg !2599, !tbaa !1109
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2600
  store i8* %2, i8** %15, align 8, !dbg !2601, !tbaa !1112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2553, metadata !DIExpression(DW_OP_deref)), !dbg !2587
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2602
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2603
  ret i8* %16, !dbg !2604
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2605 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2609, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8* %1, metadata !2610, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %2, metadata !2611, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 0, metadata !2536, metadata !DIExpression()) #11, !dbg !2615
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #11, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %1, metadata !2538, metadata !DIExpression()) #11, !dbg !2618
  call void @llvm.dbg.value(metadata i8* %2, metadata !2539, metadata !DIExpression()) #11, !dbg !2619
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()) #11, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()) #11, !dbg !2622
  call void @llvm.dbg.value(metadata i8* %1, metadata !2550, metadata !DIExpression()) #11, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %2, metadata !2551, metadata !DIExpression()) #11, !dbg !2624
  call void @llvm.dbg.value(metadata i64 -1, metadata !2552, metadata !DIExpression()) #11, !dbg !2625
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2626
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2627, !tbaa.struct !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2553, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2628
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1091, metadata !DIExpression()) #11, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %0, metadata !1092, metadata !DIExpression()) #11, !dbg !2631
  call void @llvm.dbg.value(metadata i8* %1, metadata !1093, metadata !DIExpression()) #11, !dbg !2632
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1091, metadata !DIExpression()) #11, !dbg !2629
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2633
  store i32 10, i32* %6, align 8, !dbg !2634, !tbaa !1023
  %7 = icmp ne i8* %0, null, !dbg !2635
  %8 = icmp ne i8* %1, null, !dbg !2636
  %9 = and i1 %7, %8, !dbg !2637
  br i1 %9, label %11, label %10, !dbg !2637

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2638
  unreachable, !dbg !2638

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2639
  store i8* %0, i8** %12, align 8, !dbg !2640, !tbaa !1109
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2641
  store i8* %1, i8** %13, align 8, !dbg !2642, !tbaa !1112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2553, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2628
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2643
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2644
  ret i8* %14, !dbg !2645
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2646 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2650, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8* %1, metadata !2651, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %2, metadata !2652, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %3, metadata !2653, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()) #11, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %0, metadata !2549, metadata !DIExpression()) #11, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2550, metadata !DIExpression()) #11, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %2, metadata !2551, metadata !DIExpression()) #11, !dbg !2662
  call void @llvm.dbg.value(metadata i64 %3, metadata !2552, metadata !DIExpression()) #11, !dbg !2663
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2665, !tbaa.struct !2388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()) #11, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %0, metadata !1092, metadata !DIExpression()) #11, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %1, metadata !1093, metadata !DIExpression()) #11, !dbg !2670
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1091, metadata !DIExpression()) #11, !dbg !2667
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2671
  store i32 10, i32* %7, align 8, !dbg !2672, !tbaa !1023
  %8 = icmp ne i8* %0, null, !dbg !2673
  %9 = icmp ne i8* %1, null, !dbg !2674
  %10 = and i1 %8, %9, !dbg !2675
  br i1 %10, label %12, label %11, !dbg !2675

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2676
  unreachable, !dbg !2676

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2677
  store i8* %0, i8** %13, align 8, !dbg !2678, !tbaa !1109
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2679
  store i8* %1, i8** %14, align 8, !dbg !2680, !tbaa !1112
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2666
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2681
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2682
  ret i8* %15, !dbg !2683
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2684 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2689, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %2, metadata !2690, metadata !DIExpression()), !dbg !2693
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2694
  ret i8* %4, !dbg !2695
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2696 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 0, metadata !2688, metadata !DIExpression()) #11, !dbg !2704
  call void @llvm.dbg.value(metadata i8* %0, metadata !2689, metadata !DIExpression()) #11, !dbg !2706
  call void @llvm.dbg.value(metadata i64 %1, metadata !2690, metadata !DIExpression()) #11, !dbg !2707
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2708
  ret i8* %3, !dbg !2709
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2710 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8* %1, metadata !2715, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 %0, metadata !2688, metadata !DIExpression()) #11, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2689, metadata !DIExpression()) #11, !dbg !2720
  call void @llvm.dbg.value(metadata i64 -1, metadata !2690, metadata !DIExpression()) #11, !dbg !2721
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2722
  ret i8* %3, !dbg !2723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2724 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2728, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 0, metadata !2714, metadata !DIExpression()) #11, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %0, metadata !2715, metadata !DIExpression()) #11, !dbg !2732
  call void @llvm.dbg.value(metadata i32 0, metadata !2688, metadata !DIExpression()) #11, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %0, metadata !2689, metadata !DIExpression()) #11, !dbg !2735
  call void @llvm.dbg.value(metadata i64 -1, metadata !2690, metadata !DIExpression()) #11, !dbg !2736
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !2737
  ret i8* %2, !dbg !2738
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @safe_write(i32, i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !2739 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2742, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2743, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 %2, metadata !2744, metadata !DIExpression()), !dbg !2756
  br label %4, !dbg !2757

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !2758

; <label>:6:                                      ; preds = %4, %9
  call void @llvm.dbg.value(metadata i64 %5, metadata !2744, metadata !DIExpression()), !dbg !2756
  %7 = tail call i64 @write(i32 %0, i8* %1, i64 %5) #11, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %7, metadata !2745, metadata !DIExpression()), !dbg !2759
  %8 = icmp sgt i64 %7, -1, !dbg !2760
  br i1 %8, label %17, label %9, !dbg !2762

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !2763
  %11 = load i32, i32* %10, align 4, !dbg !2763, !tbaa !730
  %12 = icmp eq i32 %11, 4, !dbg !2763
  br i1 %12, label %6, label %13, !dbg !2765, !llvm.loop !2766

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22, !dbg !2769
  %15 = icmp ugt i64 %5, 2146435072, !dbg !2771
  %16 = and i1 %15, %14, !dbg !2772
  call void @llvm.dbg.value(metadata i64 %5, metadata !2744, metadata !DIExpression()), !dbg !2756
  br i1 %16, label %4, label %17

; <label>:17:                                     ; preds = %13, %6
  ret i64 %7, !dbg !2773
}

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2774 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2830, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* %1, metadata !2831, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i8* %2, metadata !2832, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8* %3, metadata !2833, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8** %4, metadata !2834, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %5, metadata !2835, metadata !DIExpression()), !dbg !2841
  %7 = icmp eq i8* %1, null, !dbg !2842
  br i1 %7, label %10, label %8, !dbg !2844

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !2845
  br label %12, !dbg !2845

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !2846
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 5) #11, !dbg !2847
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !2847
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.76, i64 0, i64 0), i32 5) #11, !dbg !2848
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2848
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
  ], !dbg !2849

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2850
  unreachable, !dbg !2850

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.77, i64 0, i64 0), i32 5) #11, !dbg !2852
  %20 = load i8*, i8** %4, align 8, !dbg !2852, !tbaa !645
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !2852
  br label %146, !dbg !2853

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.78, i64 0, i64 0), i32 5) #11, !dbg !2854
  %24 = load i8*, i8** %4, align 8, !dbg !2854, !tbaa !645
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2854
  %26 = load i8*, i8** %25, align 8, !dbg !2854, !tbaa !645
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !2854
  br label %146, !dbg !2855

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.79, i64 0, i64 0), i32 5) #11, !dbg !2856
  %30 = load i8*, i8** %4, align 8, !dbg !2856, !tbaa !645
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2856
  %32 = load i8*, i8** %31, align 8, !dbg !2856, !tbaa !645
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2856
  %34 = load i8*, i8** %33, align 8, !dbg !2856, !tbaa !645
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !2856
  br label %146, !dbg !2857

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.80, i64 0, i64 0), i32 5) #11, !dbg !2858
  %38 = load i8*, i8** %4, align 8, !dbg !2858, !tbaa !645
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2858
  %40 = load i8*, i8** %39, align 8, !dbg !2858, !tbaa !645
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2858
  %42 = load i8*, i8** %41, align 8, !dbg !2858, !tbaa !645
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2858
  %44 = load i8*, i8** %43, align 8, !dbg !2858, !tbaa !645
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !2858
  br label %146, !dbg !2859

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.81, i64 0, i64 0), i32 5) #11, !dbg !2860
  %48 = load i8*, i8** %4, align 8, !dbg !2860, !tbaa !645
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2860
  %50 = load i8*, i8** %49, align 8, !dbg !2860, !tbaa !645
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2860
  %52 = load i8*, i8** %51, align 8, !dbg !2860, !tbaa !645
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2860
  %54 = load i8*, i8** %53, align 8, !dbg !2860, !tbaa !645
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2860
  %56 = load i8*, i8** %55, align 8, !dbg !2860, !tbaa !645
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !2860
  br label %146, !dbg !2861

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.82, i64 0, i64 0), i32 5) #11, !dbg !2862
  %60 = load i8*, i8** %4, align 8, !dbg !2862, !tbaa !645
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2862
  %62 = load i8*, i8** %61, align 8, !dbg !2862, !tbaa !645
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2862
  %64 = load i8*, i8** %63, align 8, !dbg !2862, !tbaa !645
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2862
  %66 = load i8*, i8** %65, align 8, !dbg !2862, !tbaa !645
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2862
  %68 = load i8*, i8** %67, align 8, !dbg !2862, !tbaa !645
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2862
  %70 = load i8*, i8** %69, align 8, !dbg !2862, !tbaa !645
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !2862
  br label %146, !dbg !2863

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.83, i64 0, i64 0), i32 5) #11, !dbg !2864
  %74 = load i8*, i8** %4, align 8, !dbg !2864, !tbaa !645
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2864
  %76 = load i8*, i8** %75, align 8, !dbg !2864, !tbaa !645
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2864
  %78 = load i8*, i8** %77, align 8, !dbg !2864, !tbaa !645
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2864
  %80 = load i8*, i8** %79, align 8, !dbg !2864, !tbaa !645
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2864
  %82 = load i8*, i8** %81, align 8, !dbg !2864, !tbaa !645
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2864
  %84 = load i8*, i8** %83, align 8, !dbg !2864, !tbaa !645
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2864
  %86 = load i8*, i8** %85, align 8, !dbg !2864, !tbaa !645
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !2864
  br label %146, !dbg !2865

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.84, i64 0, i64 0), i32 5) #11, !dbg !2866
  %90 = load i8*, i8** %4, align 8, !dbg !2866, !tbaa !645
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2866
  %92 = load i8*, i8** %91, align 8, !dbg !2866, !tbaa !645
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2866
  %94 = load i8*, i8** %93, align 8, !dbg !2866, !tbaa !645
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2866
  %96 = load i8*, i8** %95, align 8, !dbg !2866, !tbaa !645
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2866
  %98 = load i8*, i8** %97, align 8, !dbg !2866, !tbaa !645
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2866
  %100 = load i8*, i8** %99, align 8, !dbg !2866, !tbaa !645
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2866
  %102 = load i8*, i8** %101, align 8, !dbg !2866, !tbaa !645
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2866
  %104 = load i8*, i8** %103, align 8, !dbg !2866, !tbaa !645
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !2866
  br label %146, !dbg !2867

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.85, i64 0, i64 0), i32 5) #11, !dbg !2868
  %108 = load i8*, i8** %4, align 8, !dbg !2868, !tbaa !645
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2868
  %110 = load i8*, i8** %109, align 8, !dbg !2868, !tbaa !645
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2868
  %112 = load i8*, i8** %111, align 8, !dbg !2868, !tbaa !645
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2868
  %114 = load i8*, i8** %113, align 8, !dbg !2868, !tbaa !645
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2868
  %116 = load i8*, i8** %115, align 8, !dbg !2868, !tbaa !645
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2868
  %118 = load i8*, i8** %117, align 8, !dbg !2868, !tbaa !645
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2868
  %120 = load i8*, i8** %119, align 8, !dbg !2868, !tbaa !645
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2868
  %122 = load i8*, i8** %121, align 8, !dbg !2868, !tbaa !645
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2868
  %124 = load i8*, i8** %123, align 8, !dbg !2868, !tbaa !645
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !2868
  br label %146, !dbg !2869

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.86, i64 0, i64 0), i32 5) #11, !dbg !2870
  %128 = load i8*, i8** %4, align 8, !dbg !2870, !tbaa !645
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2870
  %130 = load i8*, i8** %129, align 8, !dbg !2870, !tbaa !645
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2870
  %132 = load i8*, i8** %131, align 8, !dbg !2870, !tbaa !645
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2870
  %134 = load i8*, i8** %133, align 8, !dbg !2870, !tbaa !645
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2870
  %136 = load i8*, i8** %135, align 8, !dbg !2870, !tbaa !645
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2870
  %138 = load i8*, i8** %137, align 8, !dbg !2870, !tbaa !645
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2870
  %140 = load i8*, i8** %139, align 8, !dbg !2870, !tbaa !645
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2870
  %142 = load i8*, i8** %141, align 8, !dbg !2870, !tbaa !645
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2870
  %144 = load i8*, i8** %143, align 8, !dbg !2870, !tbaa !645
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !2870
  br label %146, !dbg !2871

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2872
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2873 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2877, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8* %1, metadata !2878, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8* %2, metadata !2879, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i8* %3, metadata !2880, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8** %4, metadata !2881, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 0, metadata !2882, metadata !DIExpression()), !dbg !2888
  br label %6, !dbg !2889

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2891
  call void @llvm.dbg.value(metadata i64 %7, metadata !2882, metadata !DIExpression()), !dbg !2888
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2893
  %9 = load i8*, i8** %8, align 8, !dbg !2893, !tbaa !645
  %10 = icmp eq i8* %9, null, !dbg !2894
  %11 = add i64 %7, 1, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %11, metadata !2882, metadata !DIExpression()), !dbg !2888
  br i1 %10, label %12, label %6, !dbg !2894, !llvm.loop !2896

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2882, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %7, metadata !2882, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %7, metadata !2882, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %7, metadata !2882, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %7, metadata !2882, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %7, metadata !2882, metadata !DIExpression()), !dbg !2888
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2898
  ret void, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2900 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2911, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8* %1, metadata !2912, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i8* %2, metadata !2913, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %3, metadata !2914, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2915, metadata !DIExpression()), !dbg !2923
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2924
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2917, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 0, metadata !2916, metadata !DIExpression()), !dbg !2926
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2916, metadata !DIExpression()), !dbg !2926
  %11 = load i32, i32* %8, align 8, !dbg !2927
  %12 = icmp ult i32 %11, 41, !dbg !2927
  br i1 %12, label %13, label %18, !dbg !2927

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2927
  %15 = sext i32 %11 to i64, !dbg !2927
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2927
  %17 = add i32 %11, 8, !dbg !2927
  store i32 %17, i32* %8, align 8, !dbg !2927
  br label %21, !dbg !2927

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2927
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2927
  store i8* %20, i8** %10, align 8, !dbg !2927
  br label %21, !dbg !2927

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2927
  %25 = load i8*, i8** %24, align 8, !dbg !2927
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2930
  store i8* %25, i8** %26, align 16, !dbg !2931, !tbaa !645
  %27 = icmp eq i8* %25, null, !dbg !2932
  br i1 %27, label %30, label %28, !dbg !2933

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 1, metadata !2916, metadata !DIExpression()), !dbg !2926
  %29 = icmp ult i32 %22, 41, !dbg !2927
  br i1 %29, label %35, label %32, !dbg !2927

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2934
  call void @llvm.dbg.value(metadata i64 %31, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 %31, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2935
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !2936
  ret void, !dbg !2936

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2927
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2927
  store i8* %34, i8** %10, align 8, !dbg !2927
  br label %40, !dbg !2927

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2927
  %37 = sext i32 %22 to i64, !dbg !2927
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2927
  %39 = add i32 %22, 8, !dbg !2927
  store i32 %39, i32* %8, align 8, !dbg !2927
  br label %40, !dbg !2927

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2927
  %44 = load i8*, i8** %43, align 8, !dbg !2927
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2930
  store i8* %44, i8** %45, align 8, !dbg !2931, !tbaa !645
  %46 = icmp eq i8* %44, null, !dbg !2932
  br i1 %46, label %30, label %47, !dbg !2933

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 2, metadata !2916, metadata !DIExpression()), !dbg !2926
  %48 = icmp ult i32 %41, 41, !dbg !2927
  br i1 %48, label %52, label %49, !dbg !2927

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2927
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2927
  store i8* %51, i8** %10, align 8, !dbg !2927
  br label %57, !dbg !2927

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2927
  %54 = sext i32 %41 to i64, !dbg !2927
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2927
  %56 = add i32 %41, 8, !dbg !2927
  store i32 %56, i32* %8, align 8, !dbg !2927
  br label %57, !dbg !2927

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2927
  %61 = load i8*, i8** %60, align 8, !dbg !2927
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2930
  store i8* %61, i8** %62, align 16, !dbg !2931, !tbaa !645
  %63 = icmp eq i8* %61, null, !dbg !2932
  br i1 %63, label %30, label %64, !dbg !2933

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 3, metadata !2916, metadata !DIExpression()), !dbg !2926
  %65 = icmp ult i32 %58, 41, !dbg !2927
  br i1 %65, label %69, label %66, !dbg !2927

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2927
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2927
  store i8* %68, i8** %10, align 8, !dbg !2927
  br label %74, !dbg !2927

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2927
  %71 = sext i32 %58 to i64, !dbg !2927
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2927
  %73 = add i32 %58, 8, !dbg !2927
  store i32 %73, i32* %8, align 8, !dbg !2927
  br label %74, !dbg !2927

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2927
  %78 = load i8*, i8** %77, align 8, !dbg !2927
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2930
  store i8* %78, i8** %79, align 8, !dbg !2931, !tbaa !645
  %80 = icmp eq i8* %78, null, !dbg !2932
  br i1 %80, label %30, label %81, !dbg !2933

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 4, metadata !2916, metadata !DIExpression()), !dbg !2926
  %82 = icmp ult i32 %75, 41, !dbg !2927
  br i1 %82, label %86, label %83, !dbg !2927

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2927
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2927
  store i8* %85, i8** %10, align 8, !dbg !2927
  br label %91, !dbg !2927

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2927
  %88 = sext i32 %75 to i64, !dbg !2927
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2927
  %90 = add i32 %75, 8, !dbg !2927
  store i32 %90, i32* %8, align 8, !dbg !2927
  br label %91, !dbg !2927

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2927
  %95 = load i8*, i8** %94, align 8, !dbg !2927
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2930
  store i8* %95, i8** %96, align 16, !dbg !2931, !tbaa !645
  %97 = icmp eq i8* %95, null, !dbg !2932
  br i1 %97, label %30, label %98, !dbg !2933

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 5, metadata !2916, metadata !DIExpression()), !dbg !2926
  %99 = icmp ult i32 %92, 41, !dbg !2927
  br i1 %99, label %103, label %100, !dbg !2927

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2927
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2927
  store i8* %102, i8** %10, align 8, !dbg !2927
  br label %108, !dbg !2927

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2927
  %105 = sext i32 %92 to i64, !dbg !2927
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2927
  %107 = add i32 %92, 8, !dbg !2927
  store i32 %107, i32* %8, align 8, !dbg !2927
  br label %108, !dbg !2927

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2927
  %111 = load i8*, i8** %110, align 8, !dbg !2927
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2930
  store i8* %111, i8** %112, align 8, !dbg !2931, !tbaa !645
  %113 = icmp eq i8* %111, null, !dbg !2932
  br i1 %113, label %30, label %114, !dbg !2933

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 6, metadata !2916, metadata !DIExpression()), !dbg !2926
  %115 = load i8*, i8** %10, align 8, !dbg !2927
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2927
  store i8* %116, i8** %10, align 8, !dbg !2927
  %117 = bitcast i8* %115 to i8**, !dbg !2927
  %118 = load i8*, i8** %117, align 8, !dbg !2927
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2930
  store i8* %118, i8** %119, align 16, !dbg !2931, !tbaa !645
  %120 = icmp eq i8* %118, null, !dbg !2932
  br i1 %120, label %30, label %121, !dbg !2933

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 7, metadata !2916, metadata !DIExpression()), !dbg !2926
  %122 = load i8*, i8** %10, align 8, !dbg !2927
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2927
  store i8* %123, i8** %10, align 8, !dbg !2927
  %124 = bitcast i8* %122 to i8**, !dbg !2927
  %125 = load i8*, i8** %124, align 8, !dbg !2927
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2930
  store i8* %125, i8** %126, align 8, !dbg !2931, !tbaa !645
  %127 = icmp eq i8* %125, null, !dbg !2932
  br i1 %127, label %30, label %128, !dbg !2933

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 8, metadata !2916, metadata !DIExpression()), !dbg !2926
  %129 = load i8*, i8** %10, align 8, !dbg !2927
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2927
  store i8* %130, i8** %10, align 8, !dbg !2927
  %131 = bitcast i8* %129 to i8**, !dbg !2927
  %132 = load i8*, i8** %131, align 8, !dbg !2927
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2930
  store i8* %132, i8** %133, align 16, !dbg !2931, !tbaa !645
  %134 = icmp eq i8* %132, null, !dbg !2932
  br i1 %134, label %30, label %135, !dbg !2933

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2916, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i64 9, metadata !2916, metadata !DIExpression()), !dbg !2926
  %136 = load i8*, i8** %10, align 8, !dbg !2927
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2927
  store i8* %137, i8** %10, align 8, !dbg !2927
  %138 = bitcast i8* %136 to i8**, !dbg !2927
  %139 = load i8*, i8** %138, align 8, !dbg !2927
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2930
  store i8* %139, i8** %140, align 8, !dbg !2931, !tbaa !645
  %141 = icmp eq i8* %139, null, !dbg !2932
  %142 = select i1 %141, i64 9, i64 10, !dbg !2933
  br label %30, !dbg !2933
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2937 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2941, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i8* %1, metadata !2942, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.value(metadata i8* %2, metadata !2943, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i8* %3, metadata !2944, metadata !DIExpression()), !dbg !2953
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2954
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2954
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2945, metadata !DIExpression()), !dbg !2955
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2956
  call void @llvm.va_start(i8* nonnull %6), !dbg !2956
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2957
  call void @llvm.va_end(i8* nonnull %6), !dbg !2958
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !2959
  ret void, !dbg !2959
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2960 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.89, i64 0, i64 0), i32 5) #11, !dbg !2961
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.90, i64 0, i64 0)) #11, !dbg !2961
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.91, i64 0, i64 0), i32 5) #11, !dbg !2962
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.92, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.93, i64 0, i64 0)) #11, !dbg !2962
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.94, i64 0, i64 0), i32 5) #11, !dbg !2963
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2963, !tbaa !645
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2963
  ret void, !dbg !2964
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2965 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2969, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()), !dbg !2972
  %3 = udiv i64 9223372036854775807, %1, !dbg !2973
  %4 = icmp ult i64 %3, %0, !dbg !2973
  br i1 %4, label %5, label %6, !dbg !2975

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2976
  unreachable, !dbg !2976

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %7, metadata !2978, metadata !DIExpression()) #11, !dbg !2985
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %8, metadata !2984, metadata !DIExpression()) #11, !dbg !2988
  %9 = icmp eq i8* %8, null, !dbg !2989
  %10 = icmp ne i64 %7, 0, !dbg !2991
  %11 = and i1 %10, %9, !dbg !2992
  br i1 %11, label %12, label %13, !dbg !2992

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2993
  unreachable, !dbg !2993

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2994
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2979 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2978, metadata !DIExpression()), !dbg !2995
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %2, metadata !2984, metadata !DIExpression()), !dbg !2997
  %3 = icmp eq i8* %2, null, !dbg !2998
  %4 = icmp ne i64 %0, 0, !dbg !2999
  %5 = and i1 %4, %3, !dbg !3000
  br i1 %5, label %6, label %7, !dbg !3000

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3001
  unreachable, !dbg !3001

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3002
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3007, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %2, metadata !3009, metadata !DIExpression()), !dbg !3012
  %4 = udiv i64 9223372036854775807, %2, !dbg !3013
  %5 = icmp ult i64 %4, %1, !dbg !3013
  br i1 %5, label %6, label %7, !dbg !3015

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3016
  unreachable, !dbg !3016

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()) #11, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %8, metadata !3023, metadata !DIExpression()) #11, !dbg !3026
  %9 = icmp eq i64 %8, 0, !dbg !3027
  %10 = icmp ne i8* %0, null, !dbg !3029
  %11 = and i1 %10, %9, !dbg !3030
  br i1 %11, label %12, label %13, !dbg !3030

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3031
  br label %19, !dbg !3033

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %14, metadata !3018, metadata !DIExpression()) #11, !dbg !3024
  %15 = icmp eq i8* %14, null, !dbg !3035
  %16 = icmp ne i64 %8, 0, !dbg !3037
  %17 = and i1 %16, %15, !dbg !3038
  br i1 %17, label %18, label %19, !dbg !3038

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3039
  unreachable, !dbg !3039

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3040
  ret i8* %20, !dbg !3041
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %1, metadata !3023, metadata !DIExpression()), !dbg !3043
  %3 = icmp eq i64 %1, 0, !dbg !3044
  %4 = icmp ne i8* %0, null, !dbg !3045
  %5 = and i1 %4, %3, !dbg !3046
  br i1 %5, label %6, label %7, !dbg !3046

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3047
  br label %13, !dbg !3048

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %8, metadata !3018, metadata !DIExpression()), !dbg !3042
  %9 = icmp eq i8* %8, null, !dbg !3050
  %10 = icmp ne i64 %1, 0, !dbg !3051
  %11 = and i1 %10, %9, !dbg !3052
  br i1 %11, label %12, label %13, !dbg !3052

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3053
  unreachable, !dbg !3053

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3054
  ret i8* %14, !dbg !3055
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !188 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !193, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64* %1, metadata !194, metadata !DIExpression()), !dbg !3057
  call void @llvm.dbg.value(metadata i64 %2, metadata !195, metadata !DIExpression()), !dbg !3058
  %4 = load i64, i64* %1, align 8, !dbg !3059, !tbaa !2067
  call void @llvm.dbg.value(metadata i64 %4, metadata !196, metadata !DIExpression()), !dbg !3060
  %5 = icmp eq i8* %0, null, !dbg !3061
  br i1 %5, label %6, label %20, !dbg !3063

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3064
  br i1 %7, label %8, label %13, !dbg !3067

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3068
  call void @llvm.dbg.value(metadata i64 %9, metadata !196, metadata !DIExpression()), !dbg !3060
  %10 = icmp ugt i64 %2, 128, !dbg !3070
  %11 = zext i1 %10 to i64, !dbg !3070
  %12 = add nuw nsw i64 %9, %11, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %12, metadata !196, metadata !DIExpression()), !dbg !3060
  br label %13, !dbg !3072

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3073
  call void @llvm.dbg.value(metadata i64 %14, metadata !196, metadata !DIExpression()), !dbg !3060
  %15 = udiv i64 9223372036854775807, %2, !dbg !3074
  %16 = icmp ult i64 %15, %14, !dbg !3074
  br i1 %16, label %19, label %17, !dbg !3076

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !196, metadata !DIExpression()), !dbg !3060
  store i64 %14, i64* %1, align 8, !dbg !3077, !tbaa !2067
  %18 = mul i64 %14, %2, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()) #11, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %28, metadata !3023, metadata !DIExpression()) #11, !dbg !3081
  br label %31, !dbg !3082

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3083
  unreachable, !dbg !3083

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3084
  %22 = icmp ugt i64 %21, %4, !dbg !3087
  br i1 %22, label %24, label %23, !dbg !3088

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3089
  unreachable, !dbg !3089

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3090
  %26 = add i64 %4, 1, !dbg !3091
  %27 = add i64 %26, %25, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %27, metadata !196, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %27, metadata !196, metadata !DIExpression()), !dbg !3060
  store i64 %27, i64* %1, align 8, !dbg !3077, !tbaa !2067
  %28 = mul i64 %27, %2, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()) #11, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %28, metadata !3023, metadata !DIExpression()) #11, !dbg !3081
  %29 = icmp eq i64 %28, 0, !dbg !3093
  br i1 %29, label %30, label %31, !dbg !3082

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3094
  br label %38, !dbg !3095

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3096
  call void @llvm.dbg.value(metadata i8* %33, metadata !3018, metadata !DIExpression()) #11, !dbg !3079
  %34 = icmp eq i8* %33, null, !dbg !3097
  %35 = icmp ne i64 %32, 0, !dbg !3098
  %36 = and i1 %35, %34, !dbg !3099
  br i1 %36, label %37, label %38, !dbg !3099

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3100
  unreachable, !dbg !3100

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3101
  ret i8* %39, !dbg !3102
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3103 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %0, metadata !2978, metadata !DIExpression()) #11, !dbg !3107
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %2, metadata !2984, metadata !DIExpression()) #11, !dbg !3110
  %3 = icmp eq i8* %2, null, !dbg !3111
  %4 = icmp ne i64 %0, 0, !dbg !3112
  %5 = and i1 %4, %3, !dbg !3113
  br i1 %5, label %6, label %7, !dbg !3113

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3114
  unreachable, !dbg !3114

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3115
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3116 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64* %1, metadata !3121, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8* %0, metadata !193, metadata !DIExpression()) #11, !dbg !3124
  call void @llvm.dbg.value(metadata i64* %1, metadata !194, metadata !DIExpression()) #11, !dbg !3126
  call void @llvm.dbg.value(metadata i64 1, metadata !195, metadata !DIExpression()) #11, !dbg !3127
  %3 = load i64, i64* %1, align 8, !dbg !3128, !tbaa !2067
  call void @llvm.dbg.value(metadata i64 %3, metadata !196, metadata !DIExpression()) #11, !dbg !3129
  %4 = icmp eq i8* %0, null, !dbg !3130
  br i1 %4, label %5, label %12, !dbg !3131

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3132
  br i1 %6, label %9, label %7, !dbg !3133

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !196, metadata !DIExpression()) #11, !dbg !3129
  %8 = icmp slt i64 %3, 0, !dbg !3134
  br i1 %8, label %11, label %9, !dbg !3135

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !196, metadata !DIExpression()) #11, !dbg !3129
  store i64 %10, i64* %1, align 8, !dbg !3136, !tbaa !2067
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()) #11, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %18, metadata !3023, metadata !DIExpression()) #11, !dbg !3139
  br label %21, !dbg !3140

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3141
  unreachable, !dbg !3141

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3142
  br i1 %13, label %15, label %14, !dbg !3143

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3144
  unreachable, !dbg !3144

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3145
  %17 = add i64 %3, 1, !dbg !3146
  %18 = add i64 %17, %16, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %18, metadata !196, metadata !DIExpression()) #11, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %18, metadata !196, metadata !DIExpression()) #11, !dbg !3129
  store i64 %18, i64* %1, align 8, !dbg !3136, !tbaa !2067
  call void @llvm.dbg.value(metadata i8* %0, metadata !3018, metadata !DIExpression()) #11, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %18, metadata !3023, metadata !DIExpression()) #11, !dbg !3139
  %19 = icmp eq i64 %18, 0, !dbg !3148
  br i1 %19, label %20, label %21, !dbg !3140

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3149
  br label %28, !dbg !3150

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3151
  call void @llvm.dbg.value(metadata i8* %23, metadata !3018, metadata !DIExpression()) #11, !dbg !3137
  %24 = icmp eq i8* %23, null, !dbg !3152
  %25 = icmp ne i64 %22, 0, !dbg !3153
  %26 = and i1 %25, %24, !dbg !3154
  br i1 %26, label %27, label %28, !dbg !3154

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3155
  unreachable, !dbg !3155

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3156
  ret i8* %29, !dbg !3157
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3158 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %0, metadata !2978, metadata !DIExpression()) #11, !dbg !3162
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3164
  call void @llvm.dbg.value(metadata i8* %2, metadata !2984, metadata !DIExpression()) #11, !dbg !3165
  %3 = icmp eq i8* %2, null, !dbg !3166
  %4 = icmp ne i64 %0, 0, !dbg !3167
  %5 = and i1 %4, %3, !dbg !3168
  br i1 %5, label %6, label %7, !dbg !3168

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3169
  unreachable, !dbg !3169

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3170
  ret i8* %2, !dbg !3171
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3172 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3174, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %1, metadata !3175, metadata !DIExpression()), !dbg !3178
  %3 = udiv i64 9223372036854775807, %1, !dbg !3179
  %4 = icmp ult i64 %3, %0, !dbg !3179
  br i1 %4, label %8, label %5, !dbg !3181

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3182
  call void @llvm.dbg.value(metadata i8* %6, metadata !3176, metadata !DIExpression()), !dbg !3183
  %7 = icmp eq i8* %6, null, !dbg !3184
  br i1 %7, label %8, label %9, !dbg !3185

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3186
  unreachable, !dbg !3186

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3187
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3188 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3192, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %1, metadata !3193, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()) #11, !dbg !3196
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %3, metadata !2984, metadata !DIExpression()) #11, !dbg !3199
  %4 = icmp eq i8* %3, null, !dbg !3200
  %5 = icmp ne i64 %1, 0, !dbg !3201
  %6 = and i1 %5, %4, !dbg !3202
  br i1 %6, label %7, label %8, !dbg !3202

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3203
  unreachable, !dbg !3203

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3204
  ret i8* %3, !dbg !3205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3206 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3208, metadata !DIExpression()), !dbg !3209
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3210
  %3 = add i64 %2, 1, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %0, metadata !3192, metadata !DIExpression()) #11, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %3, metadata !3193, metadata !DIExpression()) #11, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %3, metadata !2978, metadata !DIExpression()) #11, !dbg !3215
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3217
  call void @llvm.dbg.value(metadata i8* %4, metadata !2984, metadata !DIExpression()) #11, !dbg !3218
  %5 = icmp eq i8* %4, null, !dbg !3219
  %6 = icmp ne i64 %3, 0, !dbg !3220
  %7 = and i1 %6, %5, !dbg !3221
  br i1 %7, label %8, label %9, !dbg !3221

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3222
  unreachable, !dbg !3222

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !3223
  ret i8* %4, !dbg !3224
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3225 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3227, !tbaa !730
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.105, i64 0, i64 0), i32 5) #11, !dbg !3228
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0), i8* %2) #11, !dbg !3229
  tail call void @abort() #15, !dbg !3230
  unreachable, !dbg !3230
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3231 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %1, metadata !3235, metadata !DIExpression()), !dbg !3241
  %3 = icmp eq i64 %0, 0, !dbg !3242
  %4 = icmp eq i64 %1, 0, !dbg !3243
  %5 = or i1 %3, %4, !dbg !3244
  br i1 %5, label %12, label %6, !dbg !3244

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3245
  call void @llvm.dbg.value(metadata i64 %7, metadata !3237, metadata !DIExpression()), !dbg !3246
  %8 = udiv i64 %7, %1, !dbg !3247
  %9 = icmp eq i64 %8, %0, !dbg !3249
  br i1 %9, label %12, label %10, !dbg !3250

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3251
  store i32 12, i32* %11, align 4, !dbg !3253, !tbaa !730
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3234, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %13, metadata !3235, metadata !DIExpression()), !dbg !3241
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %15, metadata !3236, metadata !DIExpression()), !dbg !3255
  br label %16, !dbg !3256

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3257
  ret i8* %17, !dbg !3258
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3259 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3276, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8* %1, metadata !3277, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %2, metadata !3278, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3279, metadata !DIExpression()), !dbg !3288
  %6 = bitcast i32* %5 to i8*, !dbg !3289
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3289
  %7 = icmp eq i32* %0, null, !dbg !3290
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3292
  call void @llvm.dbg.value(metadata i32* %8, metadata !3276, metadata !DIExpression()), !dbg !3285
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %9, metadata !3280, metadata !DIExpression()), !dbg !3294
  %10 = icmp ugt i64 %9, -3, !dbg !3295
  %11 = icmp ne i64 %2, 0, !dbg !3296
  %12 = and i1 %11, %10, !dbg !3297
  br i1 %12, label %13, label %18, !dbg !3297

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3298
  br i1 %14, label %18, label %15, !dbg !3299

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3300, !tbaa !776
  call void @llvm.dbg.value(metadata i8 %16, metadata !3282, metadata !DIExpression()), !dbg !3301
  %17 = zext i8 %16 to i32, !dbg !3302
  store i32 %17, i32* %8, align 4, !dbg !3303, !tbaa !730
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3304
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3305
  ret i64 %19, !dbg !3305
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3306 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3345, metadata !DIExpression()), !dbg !3350
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3351
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3352, metadata !DIExpression()), !dbg !3356
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3358
  %4 = load i32, i32* %3, align 8, !dbg !3358, !tbaa !3359
  %5 = and i32 %4, 32, !dbg !3358
  %6 = icmp eq i32 %5, 0, !dbg !3361
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3362
  %8 = icmp ne i32 %7, 0, !dbg !3363
  br i1 %6, label %9, label %19, !dbg !3364

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3366
  %11 = xor i1 %8, true, !dbg !3367
  %12 = or i1 %10, %11, !dbg !3367
  %13 = sext i1 %8 to i32, !dbg !3367
  br i1 %12, label %22, label %14, !dbg !3367

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3368
  %16 = load i32, i32* %15, align 4, !dbg !3368, !tbaa !730
  %17 = icmp ne i32 %16, 9, !dbg !3369
  %18 = sext i1 %17 to i32, !dbg !3370
  br label %22, !dbg !3370

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3371

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3373
  store i32 0, i32* %21, align 4, !dbg !3375, !tbaa !730
  br label %22, !dbg !3373

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3376
  ret i32 %23, !dbg !3377
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3378 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3383, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i8 1, metadata !3384, metadata !DIExpression()), !dbg !3387
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %2, metadata !3385, metadata !DIExpression()), !dbg !3389
  %3 = icmp eq i8* %2, null, !dbg !3390
  br i1 %3, label %11, label %4, !dbg !3392

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i64 0, i64 0)) #14, !dbg !3393
  %6 = icmp eq i32 %5, 0, !dbg !3398
  br i1 %6, label %10, label %7, !dbg !3399

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0)) #14, !dbg !3400
  %9 = icmp eq i32 %8, 0, !dbg !3401
  br i1 %9, label %10, label %11, !dbg !3402

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3384, metadata !DIExpression()), !dbg !3387
  br label %11, !dbg !3403

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3404
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3405 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %1, metadata !3410, metadata !DIExpression()), !dbg !3412
  %2 = icmp eq i8* %1, null, !dbg !3413
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), i8* %1, !dbg !3415
  call void @llvm.dbg.value(metadata i8* %3, metadata !3410, metadata !DIExpression()), !dbg !3412
  %4 = load i8, i8* %3, align 1, !dbg !3416, !tbaa !776
  %5 = icmp eq i8 %4, 0, !dbg !3420
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0), i8* %3, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %6, metadata !3410, metadata !DIExpression()), !dbg !3412
  ret i8* %6, !dbg !3422
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3423 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 0, metadata !3463, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3468
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %2, metadata !3464, metadata !DIExpression()), !dbg !3470
  %3 = icmp slt i32 %2, 0, !dbg !3471
  br i1 %3, label %4, label %6, !dbg !3473

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3474
  br label %24, !dbg !3475

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3476
  %8 = icmp eq i32 %7, 0, !dbg !3476
  br i1 %8, label %13, label %9, !dbg !3478

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3479
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3480
  %12 = icmp eq i64 %11, -1, !dbg !3481
  br i1 %12, label %16, label %13, !dbg !3482

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3483
  %15 = icmp eq i32 %14, 0, !dbg !3483
  br i1 %15, label %16, label %18, !dbg !3484

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3463, metadata !DIExpression()), !dbg !3467
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %21, metadata !3465, metadata !DIExpression()), !dbg !3468
  br label %24, !dbg !3486

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3487
  %20 = load i32, i32* %19, align 4, !dbg !3487, !tbaa !730
  call void @llvm.dbg.value(metadata i32 %20, metadata !3463, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i32 %20, metadata !3463, metadata !DIExpression()), !dbg !3467
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %21, metadata !3465, metadata !DIExpression()), !dbg !3468
  %22 = icmp eq i32 %20, 0, !dbg !3488
  br i1 %22, label %24, label %23, !dbg !3486

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3490, !tbaa !730
  call void @llvm.dbg.value(metadata i32 -1, metadata !3465, metadata !DIExpression()), !dbg !3468
  br label %24, !dbg !3492

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3493
  ret i32 %25, !dbg !3494
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3495 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3534, metadata !DIExpression()), !dbg !3535
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3536
  br i1 %2, label %6, label %3, !dbg !3538

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3539
  %5 = icmp eq i32 %4, 0, !dbg !3539
  br i1 %5, label %6, label %8, !dbg !3540

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3541
  br label %17, !dbg !3542

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3543, metadata !DIExpression()) #11, !dbg !3548
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3550
  %10 = load i32, i32* %9, align 8, !dbg !3550, !tbaa !3359
  %11 = and i32 %10, 256, !dbg !3552
  %12 = icmp eq i32 %11, 0, !dbg !3552
  br i1 %12, label %15, label %13, !dbg !3553

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3554
  br label %15, !dbg !3554

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3555
  br label %17, !dbg !3556

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3557
  ret i32 %18, !dbg !3558
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3559 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3599, metadata !DIExpression()), !dbg !3605
  call void @llvm.dbg.value(metadata i64 %1, metadata !3600, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 %2, metadata !3601, metadata !DIExpression()), !dbg !3607
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3608
  %5 = load i8*, i8** %4, align 8, !dbg !3608, !tbaa !3609
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3610
  %7 = load i8*, i8** %6, align 8, !dbg !3610, !tbaa !3611
  %8 = icmp eq i8* %5, %7, !dbg !3612
  br i1 %8, label %9, label %28, !dbg !3613

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3614
  %11 = load i8*, i8** %10, align 8, !dbg !3614, !tbaa !3615
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3616
  %13 = load i8*, i8** %12, align 8, !dbg !3616, !tbaa !3617
  %14 = icmp eq i8* %11, %13, !dbg !3618
  br i1 %14, label %15, label %28, !dbg !3619

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3620
  %17 = load i8*, i8** %16, align 8, !dbg !3620, !tbaa !3621
  %18 = icmp eq i8* %17, null, !dbg !3622
  br i1 %18, label %19, label %28, !dbg !3623

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3624
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3625
  call void @llvm.dbg.value(metadata i64 %21, metadata !3602, metadata !DIExpression()), !dbg !3626
  %22 = icmp eq i64 %21, -1, !dbg !3627
  br i1 %22, label %30, label %23, !dbg !3629

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3630
  %25 = load i32, i32* %24, align 8, !dbg !3631, !tbaa !3359
  %26 = and i32 %25, -17, !dbg !3631
  store i32 %26, i32* %24, align 8, !dbg !3631, !tbaa !3359
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3632
  store i64 %21, i64* %27, align 8, !dbg !3633, !tbaa !3634
  br label %30, !dbg !3635

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3636
  br label %30, !dbg !3637

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3638
  ret i32 %31, !dbg !3639
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
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !27, !32, !41, !165, !48, !64, !71, !168, !175, !158, !183, !200, !202, !204, !207, !209, !211, !600, !602, !604}
!llvm.ident = !{!606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606, !606}
!llvm.module.flags = !{!607, !608, !609, !610, !611}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 35, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "src/yes.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !9, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!11 = !{!0}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !23)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !15, line: 50, size: 256, elements: !16)
!15 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!16 = !{!17, !18, !20, !22}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !15, line: 52, baseType: !6, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !14, file: !15, line: 55, baseType: !19, size: 32, offset: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !14, file: !15, line: 56, baseType: !21, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !14, file: !15, line: 57, baseType: !19, size: 32, offset: 192)
!23 = !{!24}
!24 = !DISubrange(count: 1)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "Version", scope: !27, file: !28, line: 2, type: !6, isLocal: false, isDefinition: true)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !29)
!28 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!29 = !{!25}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "file_name", scope: !32, file: !37, line: 46, type: !6, isLocal: true, isDefinition: true)
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !34)
!33 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!34 = !{!30, !35}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !32, file: !37, line: 56, type: !38, isLocal: true, isDefinition: true)
!37 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "exit_failure", scope: !41, file: !44, line: 24, type: !45, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !43)
!42 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!43 = !{!39}
!44 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!45 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "long_options", scope: !48, file: !51, line: 33, type: !52, isLocal: true, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !50)
!49 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!50 = !{!46}
!51 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 768, elements: !60)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !15, line: 50, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !15, line: 52, baseType: !6, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !54, file: !15, line: 55, baseType: !19, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !54, file: !15, line: 56, baseType: !21, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !15, line: 57, baseType: !19, size: 32, offset: 192)
!60 = !{!61}
!61 = !DISubrange(count: 3)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "program_name", scope: !64, file: !68, line: 33, type: !6, isLocal: false, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !67)
!65 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!66 = !{!9, !10}
!67 = !{!62}
!68 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !71, file: !117, line: 85, type: !152, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !109, globals: !114)
!72 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!73 = !{!74, !89, !94}
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !75, line: 32, baseType: !76, size: 32, elements: !77)
!75 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!78 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!82 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!83 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!84 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!85 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!86 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!87 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!88 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !75, line: 242, baseType: !76, size: 32, elements: !90)
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 46, baseType: !76, size: 32, elements: !96)
!95 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!97 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!109 = !{!19, !110, !111, !10}
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 62, baseType: !113)
!112 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !{!69, !115, !122, !134, !136, !141, !148, !150}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !71, file: !117, line: 101, type: !118, isLocal: false, isDefinition: true)
!117 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 320, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!120 = !{!121}
!121 = !DISubrange(count: 10)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !71, file: !117, line: 1052, type: !124, isLocal: false, isDefinition: true)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !117, line: 65, size: 448, elements: !125)
!125 = !{!126, !127, !128, !132, !133}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !124, file: !117, line: 68, baseType: !74, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !117, line: 71, baseType: !19, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !124, file: !117, line: 75, baseType: !129, size: 256, offset: 64)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !124, file: !117, line: 78, baseType: !6, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !124, file: !117, line: 81, baseType: !6, size: 64, offset: 384)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !71, file: !117, line: 116, type: !124, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "slot0", scope: !71, file: !117, line: 842, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 256)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slotvec", scope: !71, file: !117, line: 845, type: !143, isLocal: true, isDefinition: true)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !117, line: 834, size: 128, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !144, file: !117, line: 836, baseType: !111, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !117, line: 837, baseType: !10, size: 64, offset: 64)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "nslots", scope: !71, file: !117, line: 843, type: !19, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "slotvec0", scope: !71, file: !117, line: 844, type: !144, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 704, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!154 = !{!155}
!155 = !DISubrange(count: 11)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !158, file: !161, line: 26, type: !162, isLocal: false, isDefinition: true)
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !160)
!159 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!160 = !{!156}
!161 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 47)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !167)
!166 = !DIFile(filename: "./lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!167 = !{!6, !111}
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !170)
!169 = !DIFile(filename: "./lib/safe-write.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!170 = !{!171}
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 40, baseType: !76, size: 32, elements: !173)
!172 = !DIFile(filename: "./lib/sys-limits.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!173 = !{!174}
!174 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072, isUnsigned: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !182)
!176 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!177 = !{!178}
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 41, baseType: !76, size: 32, elements: !180)
!179 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!180 = !{!181}
!181 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!182 = !{!9}
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !185, retainedTypes: !199)
!184 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!185 = !{!186}
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !188, file: !187, line: 186, baseType: !76, size: 32, elements: !197)
!187 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!188 = distinct !DISubprogram(name: "x2nrealloc", scope: !187, file: !187, line: 174, type: !189, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !192)
!189 = !DISubroutineType(types: !190)
!190 = !{!9, !9, !191, !111}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!192 = !{!193, !194, !195, !196}
!193 = !DILocalVariable(name: "p", arg: 1, scope: !188, file: !187, line: 174, type: !9)
!194 = !DILocalVariable(name: "pn", arg: 2, scope: !188, file: !187, line: 174, type: !191)
!195 = !DILocalVariable(name: "s", arg: 3, scope: !188, file: !187, line: 174, type: !111)
!196 = !DILocalVariable(name: "n", scope: !188, file: !187, line: 176, type: !111)
!197 = !{!198}
!198 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!199 = !{!111, !10, !9}
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!201 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !182)
!203 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !206)
!205 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!206 = !{!111}
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!208 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!210 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !213, retainedTypes: !182)
!212 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!213 = !{!214}
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !215, line: 41, baseType: !76, size: 32, elements: !216)
!215 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!217 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!218 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!219 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!220 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!221 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!222 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!223 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!224 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!225 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!226 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!227 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!228 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!229 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!230 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!237 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!238 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!239 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!240 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!249 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!250 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!251 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!252 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!255 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!256 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!257 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!258 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!259 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!260 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!261 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!262 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!263 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!264 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!265 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!266 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!325 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!334 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!335 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!336 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!337 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!412 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!486 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!487 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!488 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!489 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!490 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!491 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!492 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!493 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!494 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!495 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!496 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!497 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!498 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!499 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!501 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!502 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!503 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!504 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!505 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!506 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!532 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!533 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!534 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!535 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!536 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!541 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!542 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!543 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!544 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!600 = distinct !DICompileUnit(language: DW_LANG_C99, file: !601, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!601 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!602 = distinct !DICompileUnit(language: DW_LANG_C99, file: !603, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !182)
!603 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!604 = distinct !DICompileUnit(language: DW_LANG_C99, file: !605, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !182)
!605 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!606 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!607 = !{i32 2, !"Dwarf Version", i32 4}
!608 = !{i32 2, !"Debug Info Version", i32 3}
!609 = !{i32 1, !"wchar_size", i32 4}
!610 = !{i32 7, !"PIC Level", i32 2}
!611 = !{i32 7, !"PIE Level", i32 2}
!612 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 41, type: !613, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !19}
!615 = !{!616}
!616 = !DILocalVariable(name: "status", arg: 1, scope: !612, file: !3, line: 41, type: !19)
!617 = !DILocalVariable(name: "infomap", scope: !618, file: !619, line: 632, type: !633)
!618 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !619, file: !619, line: 630, type: !620, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !622)
!619 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!620 = !DISubroutineType(types: !621)
!621 = !{null, !6}
!622 = !{!623, !617, !624, !625, !632}
!623 = !DILocalVariable(name: "program", arg: 1, scope: !618, file: !619, line: 630, type: !6)
!624 = !DILocalVariable(name: "node", scope: !618, file: !619, line: 642, type: !6)
!625 = !DILocalVariable(name: "map_prog", scope: !618, file: !619, line: 643, type: !626)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !618, file: !619, line: 632, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !628, file: !619, line: 632, baseType: !6, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !628, file: !619, line: 632, baseType: !6, size: 64, offset: 64)
!632 = !DILocalVariable(name: "lc_messages", scope: !618, file: !619, line: 655, type: !6)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 896, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 7)
!636 = !DILocation(line: 632, column: 67, scope: !618, inlinedAt: !637)
!637 = distinct !DILocation(line: 59, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 46, column: 5)
!639 = distinct !DILexicalBlock(scope: !612, file: !3, line: 43, column: 7)
!640 = !DILocation(line: 41, column: 12, scope: !612)
!641 = !DILocation(line: 43, column: 14, scope: !639)
!642 = !DILocation(line: 43, column: 7, scope: !612)
!643 = !DILocation(line: 44, column: 5, scope: !644)
!644 = distinct !DILexicalBlock(scope: !639, file: !3, line: 44, column: 5)
!645 = !{!646, !646, i64 0}
!646 = !{!"any pointer", !647, i64 0}
!647 = !{!"omnipotent char", !648, i64 0}
!648 = !{!"Simple C/C++ TBAA"}
!649 = !DILocation(line: 47, column: 7, scope: !638)
!650 = !DILocation(line: 53, column: 7, scope: !638)
!651 = !DILocation(line: 57, column: 7, scope: !638)
!652 = !DILocation(line: 58, column: 7, scope: !638)
!653 = !DILocation(line: 632, column: 3, scope: !618, inlinedAt: !637)
!654 = !DILocation(line: 643, column: 36, scope: !618, inlinedAt: !637)
!655 = !DILocation(line: 643, column: 25, scope: !618, inlinedAt: !637)
!656 = !DILocation(line: 645, column: 33, scope: !618, inlinedAt: !637)
!657 = !DILocation(line: 645, column: 3, scope: !618, inlinedAt: !637)
!658 = !DILocation(line: 646, column: 13, scope: !618, inlinedAt: !637)
!659 = !DILocation(line: 645, column: 20, scope: !618, inlinedAt: !637)
!660 = !{!661, !646, i64 0}
!661 = !{!"infomap", !646, i64 0, !646, i64 8}
!662 = !DILocation(line: 645, column: 10, scope: !618, inlinedAt: !637)
!663 = !DILocation(line: 645, column: 28, scope: !618, inlinedAt: !637)
!664 = distinct !{!664, !665, !666}
!665 = !DILocation(line: 645, column: 3, scope: !618)
!666 = !DILocation(line: 646, column: 13, scope: !618)
!667 = !DILocation(line: 648, column: 17, scope: !668, inlinedAt: !637)
!668 = distinct !DILexicalBlock(scope: !618, file: !619, line: 648, column: 7)
!669 = !{!661, !646, i64 8}
!670 = !DILocation(line: 648, column: 7, scope: !668, inlinedAt: !637)
!671 = !DILocation(line: 648, column: 7, scope: !618, inlinedAt: !637)
!672 = !DILocation(line: 642, column: 15, scope: !618, inlinedAt: !637)
!673 = !DILocation(line: 651, column: 3, scope: !618, inlinedAt: !637)
!674 = !DILocation(line: 655, column: 29, scope: !618, inlinedAt: !637)
!675 = !DILocation(line: 655, column: 15, scope: !618, inlinedAt: !637)
!676 = !DILocation(line: 656, column: 7, scope: !677, inlinedAt: !637)
!677 = distinct !DILexicalBlock(scope: !618, file: !619, line: 656, column: 7)
!678 = !DILocation(line: 656, column: 19, scope: !677, inlinedAt: !637)
!679 = !DILocation(line: 656, column: 22, scope: !677, inlinedAt: !637)
!680 = !DILocation(line: 656, column: 7, scope: !618, inlinedAt: !637)
!681 = !DILocation(line: 662, column: 7, scope: !682, inlinedAt: !637)
!682 = distinct !DILexicalBlock(scope: !677, file: !619, line: 657, column: 5)
!683 = !DILocation(line: 664, column: 5, scope: !682, inlinedAt: !637)
!684 = !DILocation(line: 665, column: 3, scope: !618, inlinedAt: !637)
!685 = !DILocation(line: 667, column: 3, scope: !618, inlinedAt: !637)
!686 = !DILocation(line: 669, column: 1, scope: !618, inlinedAt: !637)
!687 = !DILocation(line: 61, column: 3, scope: !612)
!688 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 65, type: !689, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !692)
!689 = !DISubroutineType(types: !690)
!690 = !{!19, !19, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !701, !704, !705, !706, !708, !711, !712}
!693 = !DILocalVariable(name: "argc", arg: 1, scope: !688, file: !3, line: 65, type: !19)
!694 = !DILocalVariable(name: "argv", arg: 2, scope: !688, file: !3, line: 65, type: !691)
!695 = !DILocalVariable(name: "operands", scope: !688, file: !3, line: 80, type: !691)
!696 = !DILocalVariable(name: "operand_lim", scope: !688, file: !3, line: 81, type: !691)
!697 = !DILocalVariable(name: "bufalloc", scope: !688, file: !3, line: 87, type: !111)
!698 = !DILocalVariable(name: "reuse_operand_strings", scope: !688, file: !3, line: 88, type: !38)
!699 = !DILocalVariable(name: "operandp", scope: !700, file: !3, line: 89, type: !691)
!700 = distinct !DILexicalBlock(scope: !688, file: !3, line: 89, column: 3)
!701 = !DILocalVariable(name: "operand_len", scope: !702, file: !3, line: 91, type: !111)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 90, column: 5)
!703 = distinct !DILexicalBlock(scope: !700, file: !3, line: 89, column: 3)
!704 = !DILocalVariable(name: "buf", scope: !688, file: !3, line: 107, type: !10)
!705 = !DILocalVariable(name: "bufused", scope: !688, file: !3, line: 108, type: !111)
!706 = !DILocalVariable(name: "operandp", scope: !707, file: !3, line: 109, type: !691)
!707 = distinct !DILexicalBlock(scope: !688, file: !3, line: 109, column: 3)
!708 = !DILocalVariable(name: "operand_len", scope: !709, file: !3, line: 111, type: !111)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 110, column: 5)
!710 = distinct !DILexicalBlock(scope: !707, file: !3, line: 109, column: 3)
!711 = !DILocalVariable(name: "copysize", scope: !688, file: !3, line: 121, type: !111)
!712 = !DILocalVariable(name: "copies", scope: !713, file: !3, line: 122, type: !111)
!713 = distinct !DILexicalBlock(scope: !688, file: !3, line: 122, column: 3)
!714 = !DILocation(line: 65, column: 11, scope: !688)
!715 = !DILocation(line: 65, column: 24, scope: !688)
!716 = !DILocation(line: 68, column: 21, scope: !688)
!717 = !DILocation(line: 68, column: 3, scope: !688)
!718 = !DILocation(line: 69, column: 3, scope: !688)
!719 = !DILocation(line: 70, column: 3, scope: !688)
!720 = !DILocation(line: 71, column: 3, scope: !688)
!721 = !DILocation(line: 73, column: 3, scope: !688)
!722 = !DILocation(line: 75, column: 63, scope: !688)
!723 = !DILocation(line: 75, column: 3, scope: !688)
!724 = !DILocation(line: 77, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !688, file: !3, line: 77, column: 7)
!726 = !DILocation(line: 77, column: 57, scope: !725)
!727 = !DILocation(line: 77, column: 7, scope: !688)
!728 = !DILocation(line: 78, column: 5, scope: !725)
!729 = !DILocation(line: 80, column: 28, scope: !688)
!730 = !{!731, !731, i64 0}
!731 = !{!"int", !647, i64 0}
!732 = !DILocation(line: 80, column: 26, scope: !688)
!733 = !DILocation(line: 80, column: 10, scope: !688)
!734 = !DILocation(line: 81, column: 29, scope: !688)
!735 = !DILocation(line: 81, column: 10, scope: !688)
!736 = !DILocation(line: 82, column: 14, scope: !737)
!737 = distinct !DILexicalBlock(scope: !688, file: !3, line: 82, column: 7)
!738 = !DILocation(line: 82, column: 7, scope: !688)
!739 = !DILocation(line: 83, column: 17, scope: !737)
!740 = !DILocation(line: 83, column: 20, scope: !737)
!741 = !DILocation(line: 83, column: 5, scope: !737)
!742 = !DILocation(line: 0, scope: !688)
!743 = !DILocation(line: 87, column: 10, scope: !688)
!744 = !DILocation(line: 88, column: 8, scope: !688)
!745 = !DILocation(line: 89, column: 15, scope: !700)
!746 = !DILocation(line: 89, column: 45, scope: !703)
!747 = !DILocation(line: 89, column: 3, scope: !700)
!748 = !DILocation(line: 91, column: 36, scope: !702)
!749 = !DILocation(line: 91, column: 28, scope: !702)
!750 = !DILocation(line: 91, column: 14, scope: !702)
!751 = !DILocation(line: 92, column: 16, scope: !702)
!752 = !DILocation(line: 93, column: 20, scope: !753)
!753 = distinct !DILexicalBlock(scope: !702, file: !3, line: 93, column: 11)
!754 = !DILocation(line: 93, column: 24, scope: !753)
!755 = !DILocation(line: 94, column: 11, scope: !753)
!756 = !DILocation(line: 99, column: 16, scope: !757)
!757 = distinct !DILexicalBlock(scope: !688, file: !3, line: 99, column: 7)
!758 = !DILocation(line: 99, column: 7, scope: !688)
!759 = !DILocation(line: 107, column: 15, scope: !688)
!760 = !DILocation(line: 94, column: 24, scope: !753)
!761 = !DILocation(line: 94, column: 38, scope: !753)
!762 = !DILocation(line: 94, column: 45, scope: !753)
!763 = !DILocation(line: 94, column: 42, scope: !753)
!764 = !DILocation(line: 93, column: 11, scope: !702)
!765 = !DILocation(line: 92, column: 31, scope: !702)
!766 = !DILocation(line: 107, column: 39, scope: !688)
!767 = !DILocation(line: 107, column: 51, scope: !688)
!768 = !DILocation(line: 107, column: 9, scope: !688)
!769 = !DILocation(line: 108, column: 10, scope: !688)
!770 = !DILocation(line: 109, column: 15, scope: !707)
!771 = !DILocation(line: 109, column: 3, scope: !707)
!772 = !DILocation(line: 0, scope: !709)
!773 = !DILocation(line: 117, column: 15, scope: !688)
!774 = !DILocation(line: 117, column: 3, scope: !688)
!775 = !DILocation(line: 117, column: 20, scope: !688)
!776 = !{!647, !647, i64 0}
!777 = !DILocation(line: 121, column: 10, scope: !688)
!778 = !DILocation(line: 122, column: 33, scope: !713)
!779 = !DILocation(line: 122, column: 15, scope: !713)
!780 = !DILocation(line: 122, column: 45, scope: !781)
!781 = distinct !DILexicalBlock(scope: !713, file: !3, line: 122, column: 3)
!782 = !DILocation(line: 122, column: 3, scope: !713)
!783 = !DILocation(line: 124, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 123, column: 5)
!785 = !DILocation(line: 124, column: 7, scope: !784)
!786 = !DILocation(line: 125, column: 15, scope: !784)
!787 = distinct !{!787, !788}
!788 = !{!"llvm.loop.unroll.disable"}
!789 = !DILocation(line: 111, column: 36, scope: !709)
!790 = !DILocation(line: 111, column: 28, scope: !709)
!791 = !DILocation(line: 111, column: 14, scope: !709)
!792 = !DILocation(line: 112, column: 11, scope: !709)
!793 = !DILocation(line: 113, column: 21, scope: !794)
!794 = distinct !DILexicalBlock(scope: !709, file: !3, line: 112, column: 11)
!795 = !DILocation(line: 113, column: 9, scope: !794)
!796 = !DILocation(line: 114, column: 15, scope: !709)
!797 = !DILocation(line: 115, column: 18, scope: !709)
!798 = !DILocation(line: 115, column: 7, scope: !709)
!799 = !DILocation(line: 115, column: 22, scope: !709)
!800 = !DILocation(line: 109, column: 68, scope: !710)
!801 = !DILocation(line: 109, column: 45, scope: !710)
!802 = distinct !{!802, !771, !803}
!803 = !DILocation(line: 116, column: 5, scope: !707)
!804 = !DILocation(line: 0, scope: !784)
!805 = !DILocation(line: 129, column: 10, scope: !688)
!806 = distinct !{!806, !782, !807}
!807 = !DILocation(line: 126, column: 5, scope: !713)
!808 = !DILocation(line: 129, column: 51, scope: !688)
!809 = !DILocation(line: 129, column: 3, scope: !688)
!810 = distinct !{!810, !809, !811}
!811 = !DILocation(line: 130, column: 5, scope: !688)
!812 = !DILocation(line: 131, column: 13, scope: !688)
!813 = !DILocation(line: 131, column: 20, scope: !688)
!814 = !DILocation(line: 131, column: 3, scope: !688)
!815 = !DILocation(line: 133, column: 1, scope: !688)
!816 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !37, file: !37, line: 51, type: !620, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !32, retainedNodes: !817)
!817 = !{!818}
!818 = !DILocalVariable(name: "file", arg: 1, scope: !816, file: !37, line: 51, type: !6)
!819 = !DILocation(line: 51, column: 41, scope: !816)
!820 = !DILocation(line: 53, column: 13, scope: !816)
!821 = !DILocation(line: 54, column: 1, scope: !816)
!822 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !37, file: !37, line: 88, type: !823, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !32, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !38}
!825 = !{!826}
!826 = !DILocalVariable(name: "ignore", arg: 1, scope: !822, file: !37, line: 88, type: !38)
!827 = !DILocation(line: 88, column: 37, scope: !822)
!828 = !DILocation(line: 90, column: 16, scope: !822)
!829 = !{!830, !830, i64 0}
!830 = !{!"_Bool", !647, i64 0}
!831 = !DILocation(line: 91, column: 1, scope: !822)
!832 = distinct !DISubprogram(name: "close_stdout", scope: !37, file: !37, line: 117, type: !833, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !32, retainedNodes: !835)
!833 = !DISubroutineType(types: !834)
!834 = !{null}
!835 = !{!836}
!836 = !DILocalVariable(name: "write_error", scope: !837, file: !37, line: 122, type: !6)
!837 = distinct !DILexicalBlock(scope: !838, file: !37, line: 121, column: 5)
!838 = distinct !DILexicalBlock(scope: !832, file: !37, line: 119, column: 7)
!839 = !DILocation(line: 119, column: 21, scope: !838)
!840 = !DILocation(line: 119, column: 7, scope: !838)
!841 = !DILocation(line: 119, column: 29, scope: !838)
!842 = !DILocation(line: 120, column: 7, scope: !838)
!843 = !DILocation(line: 120, column: 12, scope: !838)
!844 = !{i8 0, i8 2}
!845 = !DILocation(line: 120, column: 25, scope: !838)
!846 = !DILocation(line: 120, column: 28, scope: !838)
!847 = !DILocation(line: 120, column: 34, scope: !838)
!848 = !DILocation(line: 119, column: 7, scope: !832)
!849 = !DILocation(line: 122, column: 33, scope: !837)
!850 = !DILocation(line: 122, column: 19, scope: !837)
!851 = !DILocation(line: 123, column: 11, scope: !852)
!852 = distinct !DILexicalBlock(scope: !837, file: !37, line: 123, column: 11)
!853 = !DILocation(line: 0, scope: !852)
!854 = !DILocation(line: 123, column: 11, scope: !837)
!855 = !DILocation(line: 124, column: 36, scope: !852)
!856 = !DILocation(line: 124, column: 9, scope: !852)
!857 = !DILocation(line: 127, column: 9, scope: !852)
!858 = !DILocation(line: 129, column: 14, scope: !837)
!859 = !DILocation(line: 129, column: 7, scope: !837)
!860 = !DILocation(line: 134, column: 42, scope: !861)
!861 = distinct !DILexicalBlock(scope: !832, file: !37, line: 134, column: 7)
!862 = !DILocation(line: 134, column: 28, scope: !861)
!863 = !DILocation(line: 134, column: 50, scope: !861)
!864 = !DILocation(line: 134, column: 7, scope: !832)
!865 = !DILocation(line: 135, column: 12, scope: !861)
!866 = !DILocation(line: 135, column: 5, scope: !861)
!867 = !DILocation(line: 136, column: 1, scope: !832)
!868 = distinct !DISubprogram(name: "full_write", scope: !869, file: !869, line: 58, type: !870, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !874)
!869 = !DIFile(filename: "lib/full-write.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!870 = !DISubroutineType(types: !871)
!871 = !{!111, !19, !872, !111}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!874 = !{!875, !876, !877, !878, !879, !880}
!875 = !DILocalVariable(name: "fd", arg: 1, scope: !868, file: !869, line: 58, type: !19)
!876 = !DILocalVariable(name: "buf", arg: 2, scope: !868, file: !869, line: 58, type: !872)
!877 = !DILocalVariable(name: "count", arg: 3, scope: !868, file: !869, line: 58, type: !111)
!878 = !DILocalVariable(name: "total", scope: !868, file: !869, line: 60, type: !111)
!879 = !DILocalVariable(name: "ptr", scope: !868, file: !869, line: 61, type: !6)
!880 = !DILocalVariable(name: "n_rw", scope: !881, file: !869, line: 65, type: !111)
!881 = distinct !DILexicalBlock(scope: !868, file: !869, line: 64, column: 5)
!882 = !DILocation(line: 58, column: 14, scope: !868)
!883 = !DILocation(line: 58, column: 30, scope: !868)
!884 = !DILocation(line: 58, column: 42, scope: !868)
!885 = !DILocation(line: 60, column: 10, scope: !868)
!886 = !DILocation(line: 61, column: 15, scope: !868)
!887 = !DILocation(line: 63, column: 16, scope: !868)
!888 = !DILocation(line: 63, column: 3, scope: !868)
!889 = !DILocation(line: 65, column: 21, scope: !881)
!890 = !DILocation(line: 65, column: 14, scope: !881)
!891 = !DILocation(line: 66, column: 11, scope: !881)
!892 = !DILocation(line: 70, column: 11, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !869, line: 69, column: 9)
!894 = distinct !DILexicalBlock(scope: !881, file: !869, line: 68, column: 11)
!895 = !DILocation(line: 70, column: 17, scope: !893)
!896 = !DILocation(line: 71, column: 11, scope: !893)
!897 = !DILocation(line: 73, column: 13, scope: !881)
!898 = !DILocation(line: 74, column: 11, scope: !881)
!899 = !DILocation(line: 75, column: 13, scope: !881)
!900 = distinct !{!900, !888, !901}
!901 = !DILocation(line: 76, column: 5, scope: !868)
!902 = !DILocation(line: 78, column: 3, scope: !868)
!903 = distinct !DISubprogram(name: "parse_long_options", scope: !51, file: !51, line: 44, type: !904, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !48, retainedNodes: !907)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !19, !691, !6, !6, !6, !906, null}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!907 = !{!908, !909, !910, !911, !912, !913, !914, !915, !916}
!908 = !DILocalVariable(name: "argc", arg: 1, scope: !903, file: !51, line: 44, type: !19)
!909 = !DILocalVariable(name: "argv", arg: 2, scope: !903, file: !51, line: 45, type: !691)
!910 = !DILocalVariable(name: "command_name", arg: 3, scope: !903, file: !51, line: 46, type: !6)
!911 = !DILocalVariable(name: "package", arg: 4, scope: !903, file: !51, line: 47, type: !6)
!912 = !DILocalVariable(name: "version", arg: 5, scope: !903, file: !51, line: 48, type: !6)
!913 = !DILocalVariable(name: "usage_func", arg: 6, scope: !903, file: !51, line: 49, type: !906)
!914 = !DILocalVariable(name: "c", scope: !903, file: !51, line: 52, type: !19)
!915 = !DILocalVariable(name: "saved_opterr", scope: !903, file: !51, line: 53, type: !19)
!916 = !DILocalVariable(name: "authors", scope: !917, file: !51, line: 71, type: !921)
!917 = distinct !DILexicalBlock(scope: !918, file: !51, line: 70, column: 11)
!918 = distinct !DILexicalBlock(scope: !919, file: !51, line: 64, column: 9)
!919 = distinct !DILexicalBlock(scope: !920, file: !51, line: 62, column: 5)
!920 = distinct !DILexicalBlock(scope: !903, file: !51, line: 60, column: 7)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !922, line: 52, baseType: !923)
!922 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !924, line: 48, baseType: !925)
!924 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !49, line: 71, baseType: !926)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 192, elements: !23)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !49, line: 71, size: 192, elements: !928)
!928 = !{!929, !930, !931, !932}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !927, file: !49, line: 71, baseType: !76, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !927, file: !49, line: 71, baseType: !76, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !927, file: !49, line: 71, baseType: !9, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !927, file: !49, line: 71, baseType: !9, size: 64, offset: 128)
!933 = !DILocation(line: 44, column: 25, scope: !903)
!934 = !DILocation(line: 45, column: 28, scope: !903)
!935 = !DILocation(line: 46, column: 33, scope: !903)
!936 = !DILocation(line: 47, column: 33, scope: !903)
!937 = !DILocation(line: 48, column: 33, scope: !903)
!938 = !DILocation(line: 49, column: 28, scope: !903)
!939 = !DILocation(line: 55, column: 18, scope: !903)
!940 = !DILocation(line: 53, column: 7, scope: !903)
!941 = !DILocation(line: 58, column: 10, scope: !903)
!942 = !DILocation(line: 60, column: 12, scope: !920)
!943 = !DILocation(line: 61, column: 7, scope: !920)
!944 = !DILocation(line: 61, column: 15, scope: !920)
!945 = !DILocation(line: 52, column: 7, scope: !903)
!946 = !DILocation(line: 60, column: 7, scope: !903)
!947 = !DILocation(line: 66, column: 11, scope: !918)
!948 = !DILocation(line: 67, column: 11, scope: !918)
!949 = !DILocation(line: 71, column: 13, scope: !917)
!950 = !DILocation(line: 71, column: 21, scope: !917)
!951 = !DILocation(line: 72, column: 13, scope: !917)
!952 = !DILocation(line: 73, column: 29, scope: !917)
!953 = !DILocation(line: 73, column: 13, scope: !917)
!954 = !DILocation(line: 74, column: 13, scope: !917)
!955 = !DILocation(line: 84, column: 10, scope: !903)
!956 = !DILocation(line: 88, column: 10, scope: !903)
!957 = !DILocation(line: 89, column: 1, scope: !903)
!958 = distinct !DISubprogram(name: "set_program_name", scope: !68, file: !68, line: 39, type: !620, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !64, retainedNodes: !959)
!959 = !{!960, !961, !962}
!960 = !DILocalVariable(name: "argv0", arg: 1, scope: !958, file: !68, line: 39, type: !6)
!961 = !DILocalVariable(name: "slash", scope: !958, file: !68, line: 46, type: !6)
!962 = !DILocalVariable(name: "base", scope: !958, file: !68, line: 47, type: !6)
!963 = !DILocation(line: 39, column: 31, scope: !958)
!964 = !DILocation(line: 51, column: 13, scope: !965)
!965 = distinct !DILexicalBlock(scope: !958, file: !68, line: 51, column: 7)
!966 = !DILocation(line: 51, column: 7, scope: !958)
!967 = !DILocation(line: 55, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !68, line: 52, column: 5)
!969 = !DILocation(line: 54, column: 7, scope: !968)
!970 = !DILocation(line: 56, column: 7, scope: !968)
!971 = !DILocation(line: 59, column: 11, scope: !958)
!972 = !DILocation(line: 46, column: 15, scope: !958)
!973 = !DILocation(line: 60, column: 17, scope: !958)
!974 = !DILocation(line: 60, column: 33, scope: !958)
!975 = !DILocation(line: 60, column: 11, scope: !958)
!976 = !DILocation(line: 47, column: 15, scope: !958)
!977 = !DILocation(line: 61, column: 12, scope: !978)
!978 = distinct !DILexicalBlock(scope: !958, file: !68, line: 61, column: 7)
!979 = !DILocation(line: 61, column: 20, scope: !978)
!980 = !DILocation(line: 61, column: 25, scope: !978)
!981 = !DILocation(line: 61, column: 42, scope: !978)
!982 = !DILocation(line: 61, column: 28, scope: !978)
!983 = !DILocation(line: 61, column: 61, scope: !978)
!984 = !DILocation(line: 61, column: 7, scope: !958)
!985 = !DILocation(line: 64, column: 11, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !68, line: 64, column: 11)
!987 = distinct !DILexicalBlock(scope: !978, file: !68, line: 62, column: 5)
!988 = !DILocation(line: 64, column: 36, scope: !986)
!989 = !DILocation(line: 64, column: 11, scope: !987)
!990 = !DILocation(line: 66, column: 24, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !68, line: 65, column: 9)
!992 = !DILocation(line: 70, column: 41, scope: !991)
!993 = !DILocation(line: 72, column: 9, scope: !991)
!994 = !DILocation(line: 84, column: 16, scope: !958)
!995 = !DILocation(line: 90, column: 27, scope: !958)
!996 = !DILocation(line: 92, column: 1, scope: !958)
!997 = distinct !DISubprogram(name: "clone_quoting_options", scope: !117, file: !117, line: 122, type: !998, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1001)
!998 = !DISubroutineType(types: !999)
!999 = !{!1000, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!1001 = !{!1002, !1003, !1004}
!1002 = !DILocalVariable(name: "o", arg: 1, scope: !997, file: !117, line: 122, type: !1000)
!1003 = !DILocalVariable(name: "e", scope: !997, file: !117, line: 124, type: !19)
!1004 = !DILocalVariable(name: "p", scope: !997, file: !117, line: 125, type: !1000)
!1005 = !DILocation(line: 122, column: 48, scope: !997)
!1006 = !DILocation(line: 124, column: 11, scope: !997)
!1007 = !DILocation(line: 124, column: 7, scope: !997)
!1008 = !DILocation(line: 125, column: 40, scope: !997)
!1009 = !DILocation(line: 125, column: 31, scope: !997)
!1010 = !DILocation(line: 125, column: 27, scope: !997)
!1011 = !DILocation(line: 127, column: 9, scope: !997)
!1012 = !DILocation(line: 128, column: 3, scope: !997)
!1013 = distinct !DISubprogram(name: "get_quoting_style", scope: !117, file: !117, line: 133, type: !1014, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1018)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!74, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!1018 = !{!1019}
!1019 = !DILocalVariable(name: "o", arg: 1, scope: !1013, file: !117, line: 133, type: !1016)
!1020 = !DILocation(line: 133, column: 50, scope: !1013)
!1021 = !DILocation(line: 135, column: 11, scope: !1013)
!1022 = !DILocation(line: 135, column: 46, scope: !1013)
!1023 = !{!1024, !647, i64 0}
!1024 = !{!"quoting_options", !647, i64 0, !731, i64 4, !647, i64 8, !646, i64 40, !646, i64 48}
!1025 = !DILocation(line: 135, column: 3, scope: !1013)
!1026 = distinct !DISubprogram(name: "set_quoting_style", scope: !117, file: !117, line: 141, type: !1027, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1000, !74}
!1029 = !{!1030, !1031}
!1030 = !DILocalVariable(name: "o", arg: 1, scope: !1026, file: !117, line: 141, type: !1000)
!1031 = !DILocalVariable(name: "s", arg: 2, scope: !1026, file: !117, line: 141, type: !74)
!1032 = !DILocation(line: 141, column: 44, scope: !1026)
!1033 = !DILocation(line: 141, column: 66, scope: !1026)
!1034 = !DILocation(line: 143, column: 4, scope: !1026)
!1035 = !DILocation(line: 143, column: 39, scope: !1026)
!1036 = !DILocation(line: 143, column: 45, scope: !1026)
!1037 = !DILocation(line: 144, column: 1, scope: !1026)
!1038 = distinct !DISubprogram(name: "set_char_quoting", scope: !117, file: !117, line: 152, type: !1039, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1041)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!19, !1000, !8, !19}
!1041 = !{!1042, !1043, !1044, !1045, !1047, !1049, !1050}
!1042 = !DILocalVariable(name: "o", arg: 1, scope: !1038, file: !117, line: 152, type: !1000)
!1043 = !DILocalVariable(name: "c", arg: 2, scope: !1038, file: !117, line: 152, type: !8)
!1044 = !DILocalVariable(name: "i", arg: 3, scope: !1038, file: !117, line: 152, type: !19)
!1045 = !DILocalVariable(name: "uc", scope: !1038, file: !117, line: 154, type: !1046)
!1046 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1047 = !DILocalVariable(name: "p", scope: !1038, file: !117, line: 155, type: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1049 = !DILocalVariable(name: "shift", scope: !1038, file: !117, line: 157, type: !19)
!1050 = !DILocalVariable(name: "r", scope: !1038, file: !117, line: 158, type: !19)
!1051 = !DILocation(line: 152, column: 43, scope: !1038)
!1052 = !DILocation(line: 152, column: 51, scope: !1038)
!1053 = !DILocation(line: 152, column: 58, scope: !1038)
!1054 = !DILocation(line: 154, column: 17, scope: !1038)
!1055 = !DILocation(line: 156, column: 6, scope: !1038)
!1056 = !DILocation(line: 156, column: 62, scope: !1038)
!1057 = !DILocation(line: 156, column: 57, scope: !1038)
!1058 = !DILocation(line: 155, column: 17, scope: !1038)
!1059 = !DILocation(line: 157, column: 15, scope: !1038)
!1060 = !DILocation(line: 157, column: 7, scope: !1038)
!1061 = !DILocation(line: 158, column: 12, scope: !1038)
!1062 = !DILocation(line: 158, column: 15, scope: !1038)
!1063 = !DILocation(line: 158, column: 25, scope: !1038)
!1064 = !DILocation(line: 158, column: 7, scope: !1038)
!1065 = !DILocation(line: 159, column: 13, scope: !1038)
!1066 = !DILocation(line: 159, column: 18, scope: !1038)
!1067 = !DILocation(line: 159, column: 23, scope: !1038)
!1068 = !DILocation(line: 159, column: 6, scope: !1038)
!1069 = !DILocation(line: 160, column: 3, scope: !1038)
!1070 = distinct !DISubprogram(name: "set_quoting_flags", scope: !117, file: !117, line: 168, type: !1071, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!19, !1000, !19}
!1073 = !{!1074, !1075, !1076}
!1074 = !DILocalVariable(name: "o", arg: 1, scope: !1070, file: !117, line: 168, type: !1000)
!1075 = !DILocalVariable(name: "i", arg: 2, scope: !1070, file: !117, line: 168, type: !19)
!1076 = !DILocalVariable(name: "r", scope: !1070, file: !117, line: 170, type: !19)
!1077 = !DILocation(line: 168, column: 44, scope: !1070)
!1078 = !DILocation(line: 168, column: 51, scope: !1070)
!1079 = !DILocation(line: 171, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1070, file: !117, line: 171, column: 7)
!1081 = !DILocation(line: 171, column: 7, scope: !1070)
!1082 = !DILocation(line: 173, column: 10, scope: !1070)
!1083 = !{!1024, !731, i64 4}
!1084 = !DILocation(line: 170, column: 7, scope: !1070)
!1085 = !DILocation(line: 174, column: 12, scope: !1070)
!1086 = !DILocation(line: 175, column: 3, scope: !1070)
!1087 = distinct !DISubprogram(name: "set_custom_quoting", scope: !117, file: !117, line: 179, type: !1088, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1000, !6, !6}
!1090 = !{!1091, !1092, !1093}
!1091 = !DILocalVariable(name: "o", arg: 1, scope: !1087, file: !117, line: 179, type: !1000)
!1092 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1087, file: !117, line: 180, type: !6)
!1093 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1087, file: !117, line: 180, type: !6)
!1094 = !DILocation(line: 179, column: 45, scope: !1087)
!1095 = !DILocation(line: 180, column: 33, scope: !1087)
!1096 = !DILocation(line: 180, column: 57, scope: !1087)
!1097 = !DILocation(line: 182, column: 8, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1087, file: !117, line: 182, column: 7)
!1099 = !DILocation(line: 182, column: 7, scope: !1087)
!1100 = !DILocation(line: 184, column: 6, scope: !1087)
!1101 = !DILocation(line: 184, column: 12, scope: !1087)
!1102 = !DILocation(line: 185, column: 8, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1087, file: !117, line: 185, column: 7)
!1104 = !DILocation(line: 185, column: 23, scope: !1103)
!1105 = !DILocation(line: 185, column: 19, scope: !1103)
!1106 = !DILocation(line: 186, column: 5, scope: !1103)
!1107 = !DILocation(line: 187, column: 6, scope: !1087)
!1108 = !DILocation(line: 187, column: 17, scope: !1087)
!1109 = !{!1024, !646, i64 40}
!1110 = !DILocation(line: 188, column: 6, scope: !1087)
!1111 = !DILocation(line: 188, column: 18, scope: !1087)
!1112 = !{!1024, !646, i64 48}
!1113 = !DILocation(line: 189, column: 1, scope: !1087)
!1114 = distinct !DISubprogram(name: "quotearg_buffer", scope: !117, file: !117, line: 784, type: !1115, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!111, !10, !111, !6, !111, !1016}
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125}
!1118 = !DILocalVariable(name: "buffer", arg: 1, scope: !1114, file: !117, line: 784, type: !10)
!1119 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1114, file: !117, line: 784, type: !111)
!1120 = !DILocalVariable(name: "arg", arg: 3, scope: !1114, file: !117, line: 785, type: !6)
!1121 = !DILocalVariable(name: "argsize", arg: 4, scope: !1114, file: !117, line: 785, type: !111)
!1122 = !DILocalVariable(name: "o", arg: 5, scope: !1114, file: !117, line: 786, type: !1016)
!1123 = !DILocalVariable(name: "p", scope: !1114, file: !117, line: 788, type: !1016)
!1124 = !DILocalVariable(name: "e", scope: !1114, file: !117, line: 789, type: !19)
!1125 = !DILocalVariable(name: "r", scope: !1114, file: !117, line: 790, type: !111)
!1126 = !DILocation(line: 784, column: 24, scope: !1114)
!1127 = !DILocation(line: 784, column: 39, scope: !1114)
!1128 = !DILocation(line: 785, column: 30, scope: !1114)
!1129 = !DILocation(line: 785, column: 42, scope: !1114)
!1130 = !DILocation(line: 786, column: 48, scope: !1114)
!1131 = !DILocation(line: 788, column: 37, scope: !1114)
!1132 = !DILocation(line: 788, column: 33, scope: !1114)
!1133 = !DILocation(line: 789, column: 11, scope: !1114)
!1134 = !DILocation(line: 789, column: 7, scope: !1114)
!1135 = !DILocation(line: 791, column: 43, scope: !1114)
!1136 = !DILocation(line: 791, column: 53, scope: !1114)
!1137 = !DILocation(line: 791, column: 60, scope: !1114)
!1138 = !DILocation(line: 792, column: 43, scope: !1114)
!1139 = !DILocation(line: 792, column: 58, scope: !1114)
!1140 = !DILocation(line: 790, column: 14, scope: !1114)
!1141 = !DILocation(line: 790, column: 10, scope: !1114)
!1142 = !DILocation(line: 793, column: 9, scope: !1114)
!1143 = !DILocation(line: 794, column: 3, scope: !1114)
!1144 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !117, file: !117, line: 256, type: !1145, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1149)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!111, !10, !111, !6, !111, !74, !19, !1147, !6, !6}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1174, !1175, !1176, !1177, !1178, !1181, !1182, !1200, !1203, !1204, !1211}
!1150 = !DILocalVariable(name: "buffer", arg: 1, scope: !1144, file: !117, line: 256, type: !10)
!1151 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1144, file: !117, line: 256, type: !111)
!1152 = !DILocalVariable(name: "arg", arg: 3, scope: !1144, file: !117, line: 257, type: !6)
!1153 = !DILocalVariable(name: "argsize", arg: 4, scope: !1144, file: !117, line: 257, type: !111)
!1154 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1144, file: !117, line: 258, type: !74)
!1155 = !DILocalVariable(name: "flags", arg: 6, scope: !1144, file: !117, line: 258, type: !19)
!1156 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1144, file: !117, line: 259, type: !1147)
!1157 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1144, file: !117, line: 260, type: !6)
!1158 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1144, file: !117, line: 261, type: !6)
!1159 = !DILocalVariable(name: "i", scope: !1144, file: !117, line: 263, type: !111)
!1160 = !DILocalVariable(name: "len", scope: !1144, file: !117, line: 264, type: !111)
!1161 = !DILocalVariable(name: "orig_buffersize", scope: !1144, file: !117, line: 265, type: !111)
!1162 = !DILocalVariable(name: "quote_string", scope: !1144, file: !117, line: 266, type: !6)
!1163 = !DILocalVariable(name: "quote_string_len", scope: !1144, file: !117, line: 267, type: !111)
!1164 = !DILocalVariable(name: "backslash_escapes", scope: !1144, file: !117, line: 268, type: !38)
!1165 = !DILocalVariable(name: "unibyte_locale", scope: !1144, file: !117, line: 269, type: !38)
!1166 = !DILocalVariable(name: "elide_outer_quotes", scope: !1144, file: !117, line: 270, type: !38)
!1167 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1144, file: !117, line: 271, type: !38)
!1168 = !DILocalVariable(name: "encountered_single_quote", scope: !1144, file: !117, line: 272, type: !38)
!1169 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1144, file: !117, line: 273, type: !38)
!1170 = !DILocalVariable(name: "c", scope: !1171, file: !117, line: 402, type: !1046)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !117, line: 401, column: 5)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !117, line: 400, column: 3)
!1173 = distinct !DILexicalBlock(scope: !1144, file: !117, line: 400, column: 3)
!1174 = !DILocalVariable(name: "esc", scope: !1171, file: !117, line: 403, type: !1046)
!1175 = !DILocalVariable(name: "is_right_quote", scope: !1171, file: !117, line: 404, type: !38)
!1176 = !DILocalVariable(name: "escaping", scope: !1171, file: !117, line: 405, type: !38)
!1177 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1171, file: !117, line: 406, type: !38)
!1178 = !DILocalVariable(name: "m", scope: !1179, file: !117, line: 610, type: !111)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 608, column: 11)
!1180 = distinct !DILexicalBlock(scope: !1171, file: !117, line: 426, column: 9)
!1181 = !DILocalVariable(name: "printable", scope: !1179, file: !117, line: 612, type: !38)
!1182 = !DILocalVariable(name: "mbstate", scope: !1183, file: !117, line: 621, type: !1185)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !117, line: 620, column: 15)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !117, line: 614, column: 17)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1186, line: 6, baseType: !1187)
!1186 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1188, line: 21, baseType: !1189)
!1188 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 13, size: 64, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1189, file: !1188, line: 15, baseType: !19, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1189, file: !1188, line: 20, baseType: !1193, size: 32, offset: 32)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !1188, line: 16, size: 32, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1193, file: !1188, line: 18, baseType: !76, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1193, file: !1188, line: 19, baseType: !1197, size: 32)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1198)
!1198 = !{!1199}
!1199 = !DISubrange(count: 4)
!1200 = !DILocalVariable(name: "w", scope: !1201, file: !117, line: 631, type: !1202)
!1201 = distinct !DILexicalBlock(scope: !1183, file: !117, line: 630, column: 19)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !112, line: 90, baseType: !19)
!1203 = !DILocalVariable(name: "bytes", scope: !1201, file: !117, line: 632, type: !111)
!1204 = !DILocalVariable(name: "j", scope: !1205, file: !117, line: 657, type: !111)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !117, line: 656, column: 27)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !117, line: 654, column: 29)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !117, line: 649, column: 23)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !117, line: 641, column: 30)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !117, line: 636, column: 30)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !117, line: 634, column: 25)
!1211 = !DILocalVariable(name: "ilim", scope: !1212, file: !117, line: 684, type: !111)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !117, line: 681, column: 15)
!1213 = distinct !DILexicalBlock(scope: !1179, file: !117, line: 680, column: 17)
!1214 = !DILocation(line: 256, column: 33, scope: !1144)
!1215 = !DILocation(line: 256, column: 48, scope: !1144)
!1216 = !DILocation(line: 257, column: 39, scope: !1144)
!1217 = !DILocation(line: 257, column: 51, scope: !1144)
!1218 = !DILocation(line: 258, column: 46, scope: !1144)
!1219 = !DILocation(line: 258, column: 65, scope: !1144)
!1220 = !DILocation(line: 259, column: 47, scope: !1144)
!1221 = !DILocation(line: 260, column: 39, scope: !1144)
!1222 = !DILocation(line: 261, column: 39, scope: !1144)
!1223 = !DILocation(line: 264, column: 10, scope: !1144)
!1224 = !DILocation(line: 265, column: 10, scope: !1144)
!1225 = !DILocation(line: 266, column: 15, scope: !1144)
!1226 = !DILocation(line: 267, column: 10, scope: !1144)
!1227 = !DILocation(line: 268, column: 8, scope: !1144)
!1228 = !DILocation(line: 269, column: 25, scope: !1144)
!1229 = !DILocation(line: 269, column: 36, scope: !1144)
!1230 = !DILocation(line: 270, column: 8, scope: !1144)
!1231 = !DILocation(line: 271, column: 8, scope: !1144)
!1232 = !DILocation(line: 272, column: 8, scope: !1144)
!1233 = !DILocation(line: 273, column: 8, scope: !1144)
!1234 = !DILocation(line: 273, column: 3, scope: !1144)
!1235 = !DILocation(line: 0, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1144, file: !117, line: 317, column: 5)
!1237 = !DILocation(line: 316, column: 3, scope: !1144)
!1238 = !DILocation(line: 323, column: 11, scope: !1236)
!1239 = !DILocation(line: 323, column: 12, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 323, column: 11)
!1241 = !DILocation(line: 324, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !117, line: 324, column: 9)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !117, line: 324, column: 9)
!1244 = !DILocation(line: 324, column: 9, scope: !1243)
!1245 = !DILocation(line: 362, column: 26, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !117, line: 340, column: 11)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !117, line: 339, column: 13)
!1248 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 338, column: 7)
!1249 = !DILocation(line: 363, column: 27, scope: !1246)
!1250 = !DILocation(line: 364, column: 11, scope: !1246)
!1251 = !DILocation(line: 365, column: 14, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !117, line: 365, column: 13)
!1253 = !DILocation(line: 365, column: 13, scope: !1248)
!1254 = !DILocation(line: 366, column: 43, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !117, line: 366, column: 11)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !117, line: 366, column: 11)
!1257 = !DILocation(line: 366, column: 11, scope: !1256)
!1258 = !DILocation(line: 367, column: 13, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !117, line: 367, column: 13)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !117, line: 367, column: 13)
!1261 = !DILocation(line: 367, column: 13, scope: !1260)
!1262 = !DILocation(line: 366, column: 70, scope: !1255)
!1263 = distinct !{!1263, !1257, !1264}
!1264 = !DILocation(line: 367, column: 13, scope: !1256)
!1265 = !DILocation(line: 370, column: 28, scope: !1248)
!1266 = !DILocation(line: 372, column: 7, scope: !1236)
!1267 = !DILocation(line: 376, column: 7, scope: !1236)
!1268 = !DILocation(line: 379, column: 7, scope: !1236)
!1269 = !DILocation(line: 381, column: 12, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 381, column: 11)
!1271 = !DILocation(line: 381, column: 11, scope: !1236)
!1272 = !DILocation(line: 0, scope: !1270)
!1273 = !DILocation(line: 386, column: 12, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 386, column: 11)
!1275 = !DILocation(line: 386, column: 11, scope: !1236)
!1276 = !DILocation(line: 387, column: 9, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !117, line: 387, column: 9)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !117, line: 387, column: 9)
!1279 = !DILocation(line: 387, column: 9, scope: !1278)
!1280 = !DILocation(line: 394, column: 7, scope: !1236)
!1281 = !DILocation(line: 397, column: 7, scope: !1236)
!1282 = !DILocation(line: 0, scope: !1144)
!1283 = !DILocation(line: 263, column: 10, scope: !1144)
!1284 = !DILocation(line: 400, column: 8, scope: !1173)
!1285 = !DILocation(line: 0, scope: !1172)
!1286 = !DILocation(line: 400, column: 27, scope: !1172)
!1287 = !DILocation(line: 400, column: 19, scope: !1172)
!1288 = !DILocation(line: 400, column: 41, scope: !1172)
!1289 = !DILocation(line: 400, column: 48, scope: !1172)
!1290 = !DILocation(line: 400, column: 3, scope: !1173)
!1291 = !DILocation(line: 400, column: 60, scope: !1172)
!1292 = !DILocation(line: 404, column: 12, scope: !1171)
!1293 = !DILocation(line: 405, column: 12, scope: !1171)
!1294 = !DILocation(line: 406, column: 12, scope: !1171)
!1295 = !DILocation(line: 409, column: 11, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1171, file: !117, line: 408, column: 11)
!1297 = !DILocation(line: 411, column: 17, scope: !1296)
!1298 = !DILocation(line: 412, column: 39, scope: !1296)
!1299 = !DILocation(line: 416, column: 32, scope: !1296)
!1300 = !DILocation(line: 412, column: 19, scope: !1296)
!1301 = !DILocation(line: 412, column: 15, scope: !1296)
!1302 = !DILocation(line: 417, column: 11, scope: !1296)
!1303 = !DILocation(line: 417, column: 26, scope: !1296)
!1304 = !DILocation(line: 417, column: 14, scope: !1296)
!1305 = !DILocation(line: 417, column: 63, scope: !1296)
!1306 = !DILocation(line: 408, column: 11, scope: !1171)
!1307 = !DILocation(line: 0, scope: !1171)
!1308 = !DILocation(line: 424, column: 11, scope: !1171)
!1309 = !DILocation(line: 402, column: 21, scope: !1171)
!1310 = !DILocation(line: 425, column: 7, scope: !1171)
!1311 = !DILocation(line: 428, column: 15, scope: !1180)
!1312 = !DILocation(line: 430, column: 15, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !117, line: 430, column: 15)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !117, line: 429, column: 13)
!1315 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 428, column: 15)
!1316 = !DILocation(line: 430, column: 15, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !117, line: 430, column: 15)
!1318 = !DILocation(line: 430, column: 15, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !117, line: 430, column: 15)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !117, line: 430, column: 15)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !117, line: 430, column: 15)
!1322 = !DILocation(line: 430, column: 15, scope: !1320)
!1323 = !DILocation(line: 430, column: 15, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !117, line: 430, column: 15)
!1325 = distinct !DILexicalBlock(scope: !1321, file: !117, line: 430, column: 15)
!1326 = !DILocation(line: 430, column: 15, scope: !1325)
!1327 = !DILocation(line: 430, column: 15, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !117, line: 430, column: 15)
!1329 = distinct !DILexicalBlock(scope: !1321, file: !117, line: 430, column: 15)
!1330 = !DILocation(line: 430, column: 15, scope: !1329)
!1331 = !DILocation(line: 430, column: 15, scope: !1321)
!1332 = !DILocation(line: 430, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !117, line: 430, column: 15)
!1334 = distinct !DILexicalBlock(scope: !1313, file: !117, line: 430, column: 15)
!1335 = !DILocation(line: 430, column: 15, scope: !1334)
!1336 = !DILocation(line: 438, column: 19, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1314, file: !117, line: 437, column: 19)
!1338 = !DILocation(line: 438, column: 24, scope: !1337)
!1339 = !DILocation(line: 438, column: 28, scope: !1337)
!1340 = !DILocation(line: 438, column: 38, scope: !1337)
!1341 = !DILocation(line: 438, column: 48, scope: !1337)
!1342 = !DILocation(line: 438, column: 59, scope: !1337)
!1343 = !DILocation(line: 440, column: 19, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !117, line: 440, column: 19)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !117, line: 440, column: 19)
!1346 = distinct !DILexicalBlock(scope: !1337, file: !117, line: 439, column: 17)
!1347 = !DILocation(line: 440, column: 19, scope: !1345)
!1348 = !DILocation(line: 441, column: 19, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !117, line: 441, column: 19)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !117, line: 441, column: 19)
!1351 = !DILocation(line: 441, column: 19, scope: !1350)
!1352 = !DILocation(line: 442, column: 17, scope: !1346)
!1353 = !DILocation(line: 449, column: 20, scope: !1315)
!1354 = !DILocation(line: 454, column: 11, scope: !1180)
!1355 = !DILocation(line: 457, column: 19, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 455, column: 13)
!1357 = !DILocation(line: 463, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1356, file: !117, line: 462, column: 19)
!1359 = !DILocation(line: 463, column: 24, scope: !1358)
!1360 = !DILocation(line: 463, column: 28, scope: !1358)
!1361 = !DILocation(line: 463, column: 38, scope: !1358)
!1362 = !DILocation(line: 463, column: 47, scope: !1358)
!1363 = !DILocation(line: 463, column: 41, scope: !1358)
!1364 = !DILocation(line: 463, column: 52, scope: !1358)
!1365 = !DILocation(line: 462, column: 19, scope: !1356)
!1366 = !DILocation(line: 464, column: 25, scope: !1358)
!1367 = !DILocation(line: 464, column: 17, scope: !1358)
!1368 = !DILocation(line: 471, column: 25, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1358, file: !117, line: 465, column: 19)
!1370 = !DILocation(line: 475, column: 21, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !117, line: 475, column: 21)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !117, line: 475, column: 21)
!1373 = !DILocation(line: 475, column: 21, scope: !1372)
!1374 = !DILocation(line: 476, column: 21, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !117, line: 476, column: 21)
!1376 = distinct !DILexicalBlock(scope: !1369, file: !117, line: 476, column: 21)
!1377 = !DILocation(line: 476, column: 21, scope: !1376)
!1378 = !DILocation(line: 477, column: 21, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !117, line: 477, column: 21)
!1380 = distinct !DILexicalBlock(scope: !1369, file: !117, line: 477, column: 21)
!1381 = !DILocation(line: 477, column: 21, scope: !1380)
!1382 = !DILocation(line: 478, column: 21, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !117, line: 478, column: 21)
!1384 = distinct !DILexicalBlock(scope: !1369, file: !117, line: 478, column: 21)
!1385 = !DILocation(line: 478, column: 21, scope: !1384)
!1386 = !DILocation(line: 479, column: 21, scope: !1369)
!1387 = !DILocation(line: 403, column: 21, scope: !1171)
!1388 = !DILocation(line: 492, column: 31, scope: !1180)
!1389 = !DILocation(line: 493, column: 31, scope: !1180)
!1390 = !DILocation(line: 495, column: 31, scope: !1180)
!1391 = !DILocation(line: 496, column: 31, scope: !1180)
!1392 = !DILocation(line: 497, column: 31, scope: !1180)
!1393 = !DILocation(line: 500, column: 15, scope: !1180)
!1394 = !DILocation(line: 502, column: 19, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !117, line: 501, column: 13)
!1396 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 500, column: 15)
!1397 = !DILocation(line: 509, column: 33, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 509, column: 15)
!1399 = !DILocation(line: 0, scope: !1180)
!1400 = !DILocation(line: 514, column: 15, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 513, column: 15)
!1402 = !DILocation(line: 518, column: 15, scope: !1180)
!1403 = !DILocation(line: 526, column: 26, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 526, column: 15)
!1405 = !DILocation(line: 526, column: 15, scope: !1180)
!1406 = !DILocation(line: 526, column: 40, scope: !1404)
!1407 = !DILocation(line: 526, column: 47, scope: !1404)
!1408 = !DILocation(line: 530, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 530, column: 15)
!1410 = !DILocation(line: 526, column: 18, scope: !1404)
!1411 = !DILocation(line: 526, column: 65, scope: !1404)
!1412 = !DILocation(line: 530, column: 15, scope: !1180)
!1413 = !DILocation(line: 535, column: 11, scope: !1180)
!1414 = !DILocation(line: 549, column: 15, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 548, column: 15)
!1416 = !DILocation(line: 556, column: 15, scope: !1180)
!1417 = !DILocation(line: 558, column: 19, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !117, line: 557, column: 13)
!1419 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 556, column: 15)
!1420 = !DILocation(line: 561, column: 19, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !117, line: 561, column: 19)
!1422 = !DILocation(line: 561, column: 35, scope: !1421)
!1423 = !DILocation(line: 561, column: 30, scope: !1421)
!1424 = !DILocation(line: 570, column: 15, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !117, line: 570, column: 15)
!1426 = distinct !DILexicalBlock(scope: !1418, file: !117, line: 570, column: 15)
!1427 = !DILocation(line: 570, column: 15, scope: !1426)
!1428 = !DILocation(line: 571, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !117, line: 571, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1418, file: !117, line: 571, column: 15)
!1431 = !DILocation(line: 571, column: 15, scope: !1430)
!1432 = !DILocation(line: 572, column: 15, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !117, line: 572, column: 15)
!1434 = distinct !DILexicalBlock(scope: !1418, file: !117, line: 572, column: 15)
!1435 = !DILocation(line: 572, column: 15, scope: !1434)
!1436 = !DILocation(line: 574, column: 13, scope: !1418)
!1437 = !DILocation(line: 614, column: 17, scope: !1179)
!1438 = !DILocation(line: 610, column: 20, scope: !1179)
!1439 = !DILocation(line: 617, column: 29, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1184, file: !117, line: 615, column: 15)
!1441 = !{!1442, !1442, i64 0}
!1442 = !{!"short", !647, i64 0}
!1443 = !DILocation(line: 617, column: 27, scope: !1440)
!1444 = !DILocation(line: 612, column: 18, scope: !1179)
!1445 = !DILocation(line: 618, column: 15, scope: !1440)
!1446 = !DILocation(line: 621, column: 17, scope: !1183)
!1447 = !DILocation(line: 622, column: 17, scope: !1183)
!1448 = !DILocation(line: 626, column: 29, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1183, file: !117, line: 626, column: 21)
!1450 = !DILocation(line: 626, column: 21, scope: !1183)
!1451 = !DILocation(line: 627, column: 29, scope: !1449)
!1452 = !DILocation(line: 627, column: 19, scope: !1449)
!1453 = !DILocation(line: 0, scope: !1296)
!1454 = !DILocation(line: 629, column: 17, scope: !1183)
!1455 = !DILocation(line: 624, column: 19, scope: !1183)
!1456 = !DILocation(line: 625, column: 27, scope: !1183)
!1457 = !DILocation(line: 631, column: 21, scope: !1201)
!1458 = !DILocation(line: 632, column: 56, scope: !1201)
!1459 = !DILocation(line: 632, column: 50, scope: !1201)
!1460 = !DILocation(line: 633, column: 53, scope: !1201)
!1461 = !DILocation(line: 621, column: 27, scope: !1183)
!1462 = !DILocation(line: 631, column: 29, scope: !1201)
!1463 = !DILocation(line: 632, column: 36, scope: !1201)
!1464 = !DILocation(line: 632, column: 28, scope: !1201)
!1465 = !DILocation(line: 634, column: 25, scope: !1201)
!1466 = !DILocation(line: 644, column: 38, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1208, file: !117, line: 642, column: 23)
!1468 = !DILocation(line: 644, column: 48, scope: !1467)
!1469 = !DILocation(line: 644, column: 51, scope: !1467)
!1470 = !DILocation(line: 644, column: 25, scope: !1467)
!1471 = !DILocation(line: 645, column: 28, scope: !1467)
!1472 = !DILocation(line: 644, column: 34, scope: !1467)
!1473 = distinct !{!1473, !1470, !1471}
!1474 = !DILocation(line: 658, column: 43, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !117, line: 658, column: 29)
!1476 = distinct !DILexicalBlock(scope: !1205, file: !117, line: 658, column: 29)
!1477 = !DILocation(line: 655, column: 29, scope: !1206)
!1478 = !DILocation(line: 657, column: 36, scope: !1205)
!1479 = !DILocation(line: 659, column: 49, scope: !1475)
!1480 = !DILocation(line: 659, column: 39, scope: !1475)
!1481 = !DILocation(line: 659, column: 31, scope: !1475)
!1482 = !DILocation(line: 658, column: 53, scope: !1475)
!1483 = !DILocation(line: 658, column: 29, scope: !1476)
!1484 = distinct !{!1484, !1483, !1485}
!1485 = !DILocation(line: 667, column: 33, scope: !1476)
!1486 = !DILocation(line: 674, column: 19, scope: !1183)
!1487 = !DILocation(line: 670, column: 41, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1207, file: !117, line: 670, column: 29)
!1489 = !DILocation(line: 670, column: 31, scope: !1488)
!1490 = !DILocation(line: 670, column: 29, scope: !1207)
!1491 = !DILocation(line: 672, column: 27, scope: !1207)
!1492 = !DILocation(line: 675, column: 26, scope: !1183)
!1493 = !DILocation(line: 675, column: 24, scope: !1183)
!1494 = !DILocation(line: 674, column: 19, scope: !1201)
!1495 = distinct !{!1495, !1454, !1496}
!1496 = !DILocation(line: 675, column: 44, scope: !1183)
!1497 = !DILocation(line: 676, column: 15, scope: !1184)
!1498 = !DILocation(line: 0, scope: !1449)
!1499 = !DILocation(line: 0, scope: !1183)
!1500 = !DILocation(line: 678, column: 40, scope: !1179)
!1501 = !DILocation(line: 680, column: 19, scope: !1213)
!1502 = !DILocation(line: 680, column: 45, scope: !1213)
!1503 = !DILocation(line: 680, column: 23, scope: !1213)
!1504 = !DILocation(line: 684, column: 33, scope: !1212)
!1505 = !DILocation(line: 684, column: 24, scope: !1212)
!1506 = !DILocation(line: 686, column: 17, scope: !1212)
!1507 = !DILocation(line: 0, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !117, line: 687, column: 19)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !117, line: 686, column: 17)
!1510 = distinct !DILexicalBlock(scope: !1212, file: !117, line: 686, column: 17)
!1511 = !DILocation(line: 0, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !117, line: 703, column: 21)
!1513 = !DILocation(line: 0, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !117, line: 696, column: 23)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !117, line: 695, column: 30)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !117, line: 688, column: 25)
!1517 = !DILocation(line: 688, column: 43, scope: !1516)
!1518 = !DILocation(line: 690, column: 25, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !117, line: 690, column: 25)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !117, line: 689, column: 23)
!1521 = !DILocation(line: 690, column: 25, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !117, line: 690, column: 25)
!1523 = !DILocation(line: 690, column: 25, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !117, line: 690, column: 25)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !117, line: 690, column: 25)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !117, line: 690, column: 25)
!1527 = !DILocation(line: 690, column: 25, scope: !1525)
!1528 = !DILocation(line: 690, column: 25, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !117, line: 690, column: 25)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !117, line: 690, column: 25)
!1531 = !DILocation(line: 690, column: 25, scope: !1530)
!1532 = !DILocation(line: 690, column: 25, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !117, line: 690, column: 25)
!1534 = distinct !DILexicalBlock(scope: !1526, file: !117, line: 690, column: 25)
!1535 = !DILocation(line: 690, column: 25, scope: !1534)
!1536 = !DILocation(line: 690, column: 25, scope: !1526)
!1537 = !DILocation(line: 690, column: 25, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !117, line: 690, column: 25)
!1539 = distinct !DILexicalBlock(scope: !1519, file: !117, line: 690, column: 25)
!1540 = !DILocation(line: 690, column: 25, scope: !1539)
!1541 = !DILocation(line: 691, column: 25, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !117, line: 691, column: 25)
!1543 = distinct !DILexicalBlock(scope: !1520, file: !117, line: 691, column: 25)
!1544 = !DILocation(line: 691, column: 25, scope: !1543)
!1545 = !DILocation(line: 692, column: 25, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !117, line: 692, column: 25)
!1547 = distinct !DILexicalBlock(scope: !1520, file: !117, line: 692, column: 25)
!1548 = !DILocation(line: 692, column: 25, scope: !1547)
!1549 = !DILocation(line: 693, column: 38, scope: !1520)
!1550 = !DILocation(line: 693, column: 33, scope: !1520)
!1551 = !DILocation(line: 694, column: 23, scope: !1520)
!1552 = !DILocation(line: 695, column: 30, scope: !1515)
!1553 = !DILocation(line: 695, column: 30, scope: !1516)
!1554 = !DILocation(line: 697, column: 25, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !117, line: 697, column: 25)
!1556 = distinct !DILexicalBlock(scope: !1514, file: !117, line: 697, column: 25)
!1557 = !DILocation(line: 697, column: 25, scope: !1556)
!1558 = !DILocation(line: 699, column: 23, scope: !1514)
!1559 = !DILocation(line: 0, scope: !1547)
!1560 = !DILocation(line: 0, scope: !1520)
!1561 = !DILocation(line: 0, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1296, file: !117, line: 418, column: 9)
!1563 = !DILocation(line: 0, scope: !1519)
!1564 = !DILocation(line: 700, column: 35, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1508, file: !117, line: 700, column: 25)
!1566 = !DILocation(line: 700, column: 30, scope: !1565)
!1567 = !DILocation(line: 700, column: 25, scope: !1508)
!1568 = !DILocation(line: 702, column: 21, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !117, line: 702, column: 21)
!1570 = distinct !DILexicalBlock(scope: !1508, file: !117, line: 702, column: 21)
!1571 = !DILocation(line: 702, column: 21, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !117, line: 702, column: 21)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !117, line: 702, column: 21)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !117, line: 702, column: 21)
!1575 = !DILocation(line: 702, column: 21, scope: !1573)
!1576 = !DILocation(line: 702, column: 21, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !117, line: 702, column: 21)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !117, line: 702, column: 21)
!1579 = !DILocation(line: 702, column: 21, scope: !1578)
!1580 = !DILocation(line: 702, column: 21, scope: !1574)
!1581 = !DILocation(line: 0, scope: !1556)
!1582 = !DILocation(line: 703, column: 21, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1512, file: !117, line: 703, column: 21)
!1584 = !DILocation(line: 703, column: 21, scope: !1512)
!1585 = !DILocation(line: 704, column: 25, scope: !1508)
!1586 = !DILocation(line: 686, column: 17, scope: !1509)
!1587 = distinct !{!1587, !1588, !1589}
!1588 = !DILocation(line: 686, column: 17, scope: !1510)
!1589 = !DILocation(line: 705, column: 19, scope: !1510)
!1590 = !DILocation(line: 0, scope: !1173)
!1591 = !DILocation(line: 416, column: 30, scope: !1296)
!1592 = !DILocation(line: 712, column: 34, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1171, file: !117, line: 712, column: 11)
!1594 = !DILocation(line: 714, column: 14, scope: !1593)
!1595 = !DILocation(line: 715, column: 14, scope: !1593)
!1596 = !DILocation(line: 715, column: 35, scope: !1593)
!1597 = !DILocation(line: 715, column: 17, scope: !1593)
!1598 = !DILocation(line: 715, column: 47, scope: !1593)
!1599 = !DILocation(line: 715, column: 65, scope: !1593)
!1600 = !DILocation(line: 716, column: 15, scope: !1593)
!1601 = !DILocation(line: 716, column: 11, scope: !1593)
!1602 = !DILocation(line: 712, column: 11, scope: !1171)
!1603 = !DILocation(line: 400, column: 10, scope: !1173)
!1604 = !DILocation(line: 0, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !117, line: 519, column: 13)
!1606 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 518, column: 15)
!1607 = !DILocation(line: 720, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1171, file: !117, line: 720, column: 7)
!1609 = !DILocation(line: 720, column: 7, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1608, file: !117, line: 720, column: 7)
!1611 = !DILocation(line: 720, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !117, line: 720, column: 7)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !117, line: 720, column: 7)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !117, line: 720, column: 7)
!1615 = !DILocation(line: 720, column: 7, scope: !1613)
!1616 = !DILocation(line: 720, column: 7, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !117, line: 720, column: 7)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !117, line: 720, column: 7)
!1619 = !DILocation(line: 720, column: 7, scope: !1618)
!1620 = !DILocation(line: 720, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !117, line: 720, column: 7)
!1622 = distinct !DILexicalBlock(scope: !1614, file: !117, line: 720, column: 7)
!1623 = !DILocation(line: 720, column: 7, scope: !1622)
!1624 = !DILocation(line: 720, column: 7, scope: !1614)
!1625 = !DILocation(line: 720, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !117, line: 720, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1608, file: !117, line: 720, column: 7)
!1628 = !DILocation(line: 720, column: 7, scope: !1627)
!1629 = !DILocation(line: 723, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !117, line: 723, column: 7)
!1631 = distinct !DILexicalBlock(scope: !1171, file: !117, line: 723, column: 7)
!1632 = !DILocation(line: 424, column: 9, scope: !1171)
!1633 = !DILocation(line: 723, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !117, line: 723, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !117, line: 723, column: 7)
!1636 = distinct !DILexicalBlock(scope: !1630, file: !117, line: 723, column: 7)
!1637 = !DILocation(line: 723, column: 7, scope: !1635)
!1638 = !DILocation(line: 723, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !117, line: 723, column: 7)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !117, line: 723, column: 7)
!1641 = !DILocation(line: 723, column: 7, scope: !1640)
!1642 = !DILocation(line: 723, column: 7, scope: !1636)
!1643 = !DILocation(line: 724, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !117, line: 724, column: 7)
!1645 = distinct !DILexicalBlock(scope: !1171, file: !117, line: 724, column: 7)
!1646 = !DILocation(line: 724, column: 7, scope: !1645)
!1647 = !DILocation(line: 726, column: 13, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1171, file: !117, line: 726, column: 11)
!1649 = !DILocation(line: 726, column: 11, scope: !1171)
!1650 = !DILocation(line: 728, column: 5, scope: !1172)
!1651 = !DILocation(line: 400, column: 75, scope: !1172)
!1652 = !DILocation(line: 400, column: 3, scope: !1172)
!1653 = distinct !{!1653, !1290, !1654}
!1654 = !DILocation(line: 728, column: 5, scope: !1173)
!1655 = !DILocation(line: 730, column: 11, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1144, file: !117, line: 730, column: 7)
!1657 = !DILocation(line: 730, column: 16, scope: !1656)
!1658 = !DILocation(line: 738, column: 51, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1144, file: !117, line: 738, column: 7)
!1660 = !DILocation(line: 739, column: 10, scope: !1659)
!1661 = !DILocation(line: 741, column: 11, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !117, line: 741, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !117, line: 740, column: 5)
!1664 = !DILocation(line: 741, column: 11, scope: !1663)
!1665 = !DILocation(line: 742, column: 16, scope: !1662)
!1666 = !DILocation(line: 742, column: 9, scope: !1662)
!1667 = !DILocation(line: 746, column: 18, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1662, file: !117, line: 746, column: 16)
!1669 = !DILocation(line: 746, column: 32, scope: !1668)
!1670 = !DILocation(line: 746, column: 29, scope: !1668)
!1671 = !DILocation(line: 755, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1144, file: !117, line: 755, column: 7)
!1673 = !DILocation(line: 755, column: 20, scope: !1672)
!1674 = !DILocation(line: 756, column: 12, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !117, line: 756, column: 5)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !117, line: 756, column: 5)
!1677 = !DILocation(line: 756, column: 5, scope: !1676)
!1678 = !DILocation(line: 757, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !117, line: 757, column: 7)
!1680 = distinct !DILexicalBlock(scope: !1675, file: !117, line: 757, column: 7)
!1681 = !DILocation(line: 757, column: 7, scope: !1680)
!1682 = !DILocation(line: 756, column: 39, scope: !1675)
!1683 = distinct !{!1683, !1677, !1684}
!1684 = !DILocation(line: 757, column: 7, scope: !1676)
!1685 = !DILocation(line: 759, column: 11, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1144, file: !117, line: 759, column: 7)
!1687 = !DILocation(line: 759, column: 7, scope: !1144)
!1688 = !DILocation(line: 760, column: 5, scope: !1686)
!1689 = !DILocation(line: 760, column: 17, scope: !1686)
!1690 = !DILocation(line: 766, column: 21, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1144, file: !117, line: 766, column: 7)
!1692 = !DILocation(line: 766, column: 54, scope: !1691)
!1693 = !DILocation(line: 766, column: 51, scope: !1691)
!1694 = !DILocation(line: 770, column: 42, scope: !1144)
!1695 = !DILocation(line: 768, column: 10, scope: !1144)
!1696 = !DILocation(line: 768, column: 3, scope: !1144)
!1697 = !DILocation(line: 772, column: 1, scope: !1144)
!1698 = distinct !DISubprogram(name: "gettext_quote", scope: !117, file: !117, line: 207, type: !1699, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1701)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!6, !6, !74}
!1701 = !{!1702, !1703, !1704, !1705}
!1702 = !DILocalVariable(name: "msgid", arg: 1, scope: !1698, file: !117, line: 207, type: !6)
!1703 = !DILocalVariable(name: "s", arg: 2, scope: !1698, file: !117, line: 207, type: !74)
!1704 = !DILocalVariable(name: "translation", scope: !1698, file: !117, line: 209, type: !6)
!1705 = !DILocalVariable(name: "locale_code", scope: !1698, file: !117, line: 210, type: !6)
!1706 = !DILocation(line: 207, column: 28, scope: !1698)
!1707 = !DILocation(line: 207, column: 54, scope: !1698)
!1708 = !DILocation(line: 209, column: 29, scope: !1698)
!1709 = !DILocation(line: 209, column: 15, scope: !1698)
!1710 = !DILocation(line: 212, column: 19, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1698, file: !117, line: 212, column: 7)
!1712 = !DILocation(line: 212, column: 7, scope: !1698)
!1713 = !DILocation(line: 233, column: 17, scope: !1698)
!1714 = !DILocation(line: 210, column: 15, scope: !1698)
!1715 = !DILocalVariable(name: "s1", arg: 1, scope: !1716, file: !1717, line: 160, type: !6)
!1716 = distinct !DISubprogram(name: "strcaseeq0", scope: !1717, file: !1717, line: 160, type: !1718, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1720)
!1717 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!19, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1720 = !{!1715, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730}
!1721 = !DILocalVariable(name: "s2", arg: 2, scope: !1716, file: !1717, line: 160, type: !6)
!1722 = !DILocalVariable(name: "s20", arg: 3, scope: !1716, file: !1717, line: 160, type: !8)
!1723 = !DILocalVariable(name: "s21", arg: 4, scope: !1716, file: !1717, line: 160, type: !8)
!1724 = !DILocalVariable(name: "s22", arg: 5, scope: !1716, file: !1717, line: 160, type: !8)
!1725 = !DILocalVariable(name: "s23", arg: 6, scope: !1716, file: !1717, line: 160, type: !8)
!1726 = !DILocalVariable(name: "s24", arg: 7, scope: !1716, file: !1717, line: 160, type: !8)
!1727 = !DILocalVariable(name: "s25", arg: 8, scope: !1716, file: !1717, line: 160, type: !8)
!1728 = !DILocalVariable(name: "s26", arg: 9, scope: !1716, file: !1717, line: 160, type: !8)
!1729 = !DILocalVariable(name: "s27", arg: 10, scope: !1716, file: !1717, line: 160, type: !8)
!1730 = !DILocalVariable(name: "s28", arg: 11, scope: !1716, file: !1717, line: 160, type: !8)
!1731 = !DILocation(line: 160, column: 25, scope: !1716, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 234, column: 7, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1698, file: !117, line: 234, column: 7)
!1734 = !DILocation(line: 160, column: 41, scope: !1716, inlinedAt: !1732)
!1735 = !DILocation(line: 160, column: 50, scope: !1716, inlinedAt: !1732)
!1736 = !DILocation(line: 160, column: 60, scope: !1716, inlinedAt: !1732)
!1737 = !DILocation(line: 160, column: 70, scope: !1716, inlinedAt: !1732)
!1738 = !DILocation(line: 160, column: 80, scope: !1716, inlinedAt: !1732)
!1739 = !DILocation(line: 160, column: 90, scope: !1716, inlinedAt: !1732)
!1740 = !DILocation(line: 160, column: 100, scope: !1716, inlinedAt: !1732)
!1741 = !DILocation(line: 160, column: 110, scope: !1716, inlinedAt: !1732)
!1742 = !DILocation(line: 160, column: 120, scope: !1716, inlinedAt: !1732)
!1743 = !DILocation(line: 160, column: 130, scope: !1716, inlinedAt: !1732)
!1744 = !DILocation(line: 162, column: 7, scope: !1745, inlinedAt: !1732)
!1745 = distinct !DILexicalBlock(scope: !1716, file: !1717, line: 162, column: 7)
!1746 = !DILocalVariable(name: "s1", arg: 1, scope: !1747, file: !1717, line: 146, type: !6)
!1747 = distinct !DISubprogram(name: "strcaseeq1", scope: !1717, file: !1717, line: 146, type: !1748, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1750)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!19, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1750 = !{!1746, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759}
!1751 = !DILocalVariable(name: "s2", arg: 2, scope: !1747, file: !1717, line: 146, type: !6)
!1752 = !DILocalVariable(name: "s21", arg: 3, scope: !1747, file: !1717, line: 146, type: !8)
!1753 = !DILocalVariable(name: "s22", arg: 4, scope: !1747, file: !1717, line: 146, type: !8)
!1754 = !DILocalVariable(name: "s23", arg: 5, scope: !1747, file: !1717, line: 146, type: !8)
!1755 = !DILocalVariable(name: "s24", arg: 6, scope: !1747, file: !1717, line: 146, type: !8)
!1756 = !DILocalVariable(name: "s25", arg: 7, scope: !1747, file: !1717, line: 146, type: !8)
!1757 = !DILocalVariable(name: "s26", arg: 8, scope: !1747, file: !1717, line: 146, type: !8)
!1758 = !DILocalVariable(name: "s27", arg: 9, scope: !1747, file: !1717, line: 146, type: !8)
!1759 = !DILocalVariable(name: "s28", arg: 10, scope: !1747, file: !1717, line: 146, type: !8)
!1760 = !DILocation(line: 146, column: 25, scope: !1747, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 167, column: 16, scope: !1762, inlinedAt: !1732)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !1717, line: 164, column: 11)
!1763 = distinct !DILexicalBlock(scope: !1745, file: !1717, line: 163, column: 5)
!1764 = !DILocation(line: 146, column: 41, scope: !1747, inlinedAt: !1761)
!1765 = !DILocation(line: 146, column: 50, scope: !1747, inlinedAt: !1761)
!1766 = !DILocation(line: 146, column: 60, scope: !1747, inlinedAt: !1761)
!1767 = !DILocation(line: 146, column: 70, scope: !1747, inlinedAt: !1761)
!1768 = !DILocation(line: 146, column: 80, scope: !1747, inlinedAt: !1761)
!1769 = !DILocation(line: 146, column: 90, scope: !1747, inlinedAt: !1761)
!1770 = !DILocation(line: 146, column: 100, scope: !1747, inlinedAt: !1761)
!1771 = !DILocation(line: 146, column: 110, scope: !1747, inlinedAt: !1761)
!1772 = !DILocation(line: 146, column: 120, scope: !1747, inlinedAt: !1761)
!1773 = !DILocation(line: 148, column: 7, scope: !1774, inlinedAt: !1761)
!1774 = distinct !DILexicalBlock(scope: !1747, file: !1717, line: 148, column: 7)
!1775 = !DILocalVariable(name: "s1", arg: 1, scope: !1776, file: !1717, line: 132, type: !6)
!1776 = distinct !DISubprogram(name: "strcaseeq2", scope: !1717, file: !1717, line: 132, type: !1777, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!19, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1779 = !{!1775, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1780 = !DILocalVariable(name: "s2", arg: 2, scope: !1776, file: !1717, line: 132, type: !6)
!1781 = !DILocalVariable(name: "s22", arg: 3, scope: !1776, file: !1717, line: 132, type: !8)
!1782 = !DILocalVariable(name: "s23", arg: 4, scope: !1776, file: !1717, line: 132, type: !8)
!1783 = !DILocalVariable(name: "s24", arg: 5, scope: !1776, file: !1717, line: 132, type: !8)
!1784 = !DILocalVariable(name: "s25", arg: 6, scope: !1776, file: !1717, line: 132, type: !8)
!1785 = !DILocalVariable(name: "s26", arg: 7, scope: !1776, file: !1717, line: 132, type: !8)
!1786 = !DILocalVariable(name: "s27", arg: 8, scope: !1776, file: !1717, line: 132, type: !8)
!1787 = !DILocalVariable(name: "s28", arg: 9, scope: !1776, file: !1717, line: 132, type: !8)
!1788 = !DILocation(line: 132, column: 25, scope: !1776, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 153, column: 16, scope: !1790, inlinedAt: !1761)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !1717, line: 150, column: 11)
!1791 = distinct !DILexicalBlock(scope: !1774, file: !1717, line: 149, column: 5)
!1792 = !DILocation(line: 132, column: 41, scope: !1776, inlinedAt: !1789)
!1793 = !DILocation(line: 132, column: 50, scope: !1776, inlinedAt: !1789)
!1794 = !DILocation(line: 132, column: 60, scope: !1776, inlinedAt: !1789)
!1795 = !DILocation(line: 132, column: 70, scope: !1776, inlinedAt: !1789)
!1796 = !DILocation(line: 132, column: 80, scope: !1776, inlinedAt: !1789)
!1797 = !DILocation(line: 132, column: 90, scope: !1776, inlinedAt: !1789)
!1798 = !DILocation(line: 132, column: 100, scope: !1776, inlinedAt: !1789)
!1799 = !DILocation(line: 132, column: 110, scope: !1776, inlinedAt: !1789)
!1800 = !DILocation(line: 134, column: 7, scope: !1801, inlinedAt: !1789)
!1801 = distinct !DILexicalBlock(scope: !1776, file: !1717, line: 134, column: 7)
!1802 = !DILocalVariable(name: "s1", arg: 1, scope: !1803, file: !1717, line: 118, type: !6)
!1803 = distinct !DISubprogram(name: "strcaseeq3", scope: !1717, file: !1717, line: 118, type: !1804, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!19, !6, !6, !8, !8, !8, !8, !8, !8}
!1806 = !{!1802, !1807, !1808, !1809, !1810, !1811, !1812, !1813}
!1807 = !DILocalVariable(name: "s2", arg: 2, scope: !1803, file: !1717, line: 118, type: !6)
!1808 = !DILocalVariable(name: "s23", arg: 3, scope: !1803, file: !1717, line: 118, type: !8)
!1809 = !DILocalVariable(name: "s24", arg: 4, scope: !1803, file: !1717, line: 118, type: !8)
!1810 = !DILocalVariable(name: "s25", arg: 5, scope: !1803, file: !1717, line: 118, type: !8)
!1811 = !DILocalVariable(name: "s26", arg: 6, scope: !1803, file: !1717, line: 118, type: !8)
!1812 = !DILocalVariable(name: "s27", arg: 7, scope: !1803, file: !1717, line: 118, type: !8)
!1813 = !DILocalVariable(name: "s28", arg: 8, scope: !1803, file: !1717, line: 118, type: !8)
!1814 = !DILocation(line: 118, column: 25, scope: !1803, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 139, column: 16, scope: !1816, inlinedAt: !1789)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !1717, line: 136, column: 11)
!1817 = distinct !DILexicalBlock(scope: !1801, file: !1717, line: 135, column: 5)
!1818 = !DILocation(line: 118, column: 41, scope: !1803, inlinedAt: !1815)
!1819 = !DILocation(line: 118, column: 50, scope: !1803, inlinedAt: !1815)
!1820 = !DILocation(line: 118, column: 60, scope: !1803, inlinedAt: !1815)
!1821 = !DILocation(line: 118, column: 70, scope: !1803, inlinedAt: !1815)
!1822 = !DILocation(line: 118, column: 80, scope: !1803, inlinedAt: !1815)
!1823 = !DILocation(line: 118, column: 90, scope: !1803, inlinedAt: !1815)
!1824 = !DILocation(line: 118, column: 100, scope: !1803, inlinedAt: !1815)
!1825 = !DILocation(line: 120, column: 7, scope: !1826, inlinedAt: !1815)
!1826 = distinct !DILexicalBlock(scope: !1803, file: !1717, line: 120, column: 7)
!1827 = !DILocation(line: 120, column: 7, scope: !1803, inlinedAt: !1815)
!1828 = !DILocalVariable(name: "s1", arg: 1, scope: !1829, file: !1717, line: 104, type: !6)
!1829 = distinct !DISubprogram(name: "strcaseeq4", scope: !1717, file: !1717, line: 104, type: !1830, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!19, !6, !6, !8, !8, !8, !8, !8}
!1832 = !{!1828, !1833, !1834, !1835, !1836, !1837, !1838}
!1833 = !DILocalVariable(name: "s2", arg: 2, scope: !1829, file: !1717, line: 104, type: !6)
!1834 = !DILocalVariable(name: "s24", arg: 3, scope: !1829, file: !1717, line: 104, type: !8)
!1835 = !DILocalVariable(name: "s25", arg: 4, scope: !1829, file: !1717, line: 104, type: !8)
!1836 = !DILocalVariable(name: "s26", arg: 5, scope: !1829, file: !1717, line: 104, type: !8)
!1837 = !DILocalVariable(name: "s27", arg: 6, scope: !1829, file: !1717, line: 104, type: !8)
!1838 = !DILocalVariable(name: "s28", arg: 7, scope: !1829, file: !1717, line: 104, type: !8)
!1839 = !DILocation(line: 104, column: 25, scope: !1829, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 125, column: 16, scope: !1841, inlinedAt: !1815)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !1717, line: 122, column: 11)
!1842 = distinct !DILexicalBlock(scope: !1826, file: !1717, line: 121, column: 5)
!1843 = !DILocation(line: 104, column: 41, scope: !1829, inlinedAt: !1840)
!1844 = !DILocation(line: 104, column: 50, scope: !1829, inlinedAt: !1840)
!1845 = !DILocation(line: 104, column: 60, scope: !1829, inlinedAt: !1840)
!1846 = !DILocation(line: 104, column: 70, scope: !1829, inlinedAt: !1840)
!1847 = !DILocation(line: 104, column: 80, scope: !1829, inlinedAt: !1840)
!1848 = !DILocation(line: 104, column: 90, scope: !1829, inlinedAt: !1840)
!1849 = !DILocation(line: 106, column: 7, scope: !1850, inlinedAt: !1840)
!1850 = distinct !DILexicalBlock(scope: !1829, file: !1717, line: 106, column: 7)
!1851 = !DILocation(line: 106, column: 7, scope: !1829, inlinedAt: !1840)
!1852 = !DILocalVariable(name: "s1", arg: 1, scope: !1853, file: !1717, line: 90, type: !6)
!1853 = distinct !DISubprogram(name: "strcaseeq5", scope: !1717, file: !1717, line: 90, type: !1854, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!19, !6, !6, !8, !8, !8, !8}
!1856 = !{!1852, !1857, !1858, !1859, !1860, !1861}
!1857 = !DILocalVariable(name: "s2", arg: 2, scope: !1853, file: !1717, line: 90, type: !6)
!1858 = !DILocalVariable(name: "s25", arg: 3, scope: !1853, file: !1717, line: 90, type: !8)
!1859 = !DILocalVariable(name: "s26", arg: 4, scope: !1853, file: !1717, line: 90, type: !8)
!1860 = !DILocalVariable(name: "s27", arg: 5, scope: !1853, file: !1717, line: 90, type: !8)
!1861 = !DILocalVariable(name: "s28", arg: 6, scope: !1853, file: !1717, line: 90, type: !8)
!1862 = !DILocation(line: 90, column: 25, scope: !1853, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 111, column: 16, scope: !1864, inlinedAt: !1840)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !1717, line: 108, column: 11)
!1865 = distinct !DILexicalBlock(scope: !1850, file: !1717, line: 107, column: 5)
!1866 = !DILocation(line: 90, column: 41, scope: !1853, inlinedAt: !1863)
!1867 = !DILocation(line: 90, column: 50, scope: !1853, inlinedAt: !1863)
!1868 = !DILocation(line: 90, column: 60, scope: !1853, inlinedAt: !1863)
!1869 = !DILocation(line: 90, column: 70, scope: !1853, inlinedAt: !1863)
!1870 = !DILocation(line: 90, column: 80, scope: !1853, inlinedAt: !1863)
!1871 = !DILocation(line: 92, column: 7, scope: !1872, inlinedAt: !1863)
!1872 = distinct !DILexicalBlock(scope: !1853, file: !1717, line: 92, column: 7)
!1873 = !DILocation(line: 92, column: 7, scope: !1853, inlinedAt: !1863)
!1874 = !DILocation(line: 235, column: 12, scope: !1733)
!1875 = !DILocation(line: 235, column: 21, scope: !1733)
!1876 = !DILocation(line: 235, column: 5, scope: !1733)
!1877 = !DILocation(line: 146, column: 25, scope: !1747, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 167, column: 16, scope: !1762, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 236, column: 7, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1698, file: !117, line: 236, column: 7)
!1881 = !DILocation(line: 146, column: 41, scope: !1747, inlinedAt: !1878)
!1882 = !DILocation(line: 146, column: 50, scope: !1747, inlinedAt: !1878)
!1883 = !DILocation(line: 146, column: 60, scope: !1747, inlinedAt: !1878)
!1884 = !DILocation(line: 146, column: 70, scope: !1747, inlinedAt: !1878)
!1885 = !DILocation(line: 146, column: 80, scope: !1747, inlinedAt: !1878)
!1886 = !DILocation(line: 146, column: 90, scope: !1747, inlinedAt: !1878)
!1887 = !DILocation(line: 146, column: 100, scope: !1747, inlinedAt: !1878)
!1888 = !DILocation(line: 146, column: 110, scope: !1747, inlinedAt: !1878)
!1889 = !DILocation(line: 146, column: 120, scope: !1747, inlinedAt: !1878)
!1890 = !DILocation(line: 148, column: 7, scope: !1774, inlinedAt: !1878)
!1891 = !DILocation(line: 132, column: 25, scope: !1776, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 153, column: 16, scope: !1790, inlinedAt: !1878)
!1893 = !DILocation(line: 132, column: 41, scope: !1776, inlinedAt: !1892)
!1894 = !DILocation(line: 132, column: 50, scope: !1776, inlinedAt: !1892)
!1895 = !DILocation(line: 132, column: 60, scope: !1776, inlinedAt: !1892)
!1896 = !DILocation(line: 132, column: 70, scope: !1776, inlinedAt: !1892)
!1897 = !DILocation(line: 132, column: 80, scope: !1776, inlinedAt: !1892)
!1898 = !DILocation(line: 132, column: 90, scope: !1776, inlinedAt: !1892)
!1899 = !DILocation(line: 132, column: 100, scope: !1776, inlinedAt: !1892)
!1900 = !DILocation(line: 132, column: 110, scope: !1776, inlinedAt: !1892)
!1901 = !DILocation(line: 134, column: 7, scope: !1801, inlinedAt: !1892)
!1902 = !DILocation(line: 134, column: 7, scope: !1776, inlinedAt: !1892)
!1903 = !DILocation(line: 118, column: 25, scope: !1803, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 139, column: 16, scope: !1816, inlinedAt: !1892)
!1905 = !DILocation(line: 118, column: 41, scope: !1803, inlinedAt: !1904)
!1906 = !DILocation(line: 118, column: 50, scope: !1803, inlinedAt: !1904)
!1907 = !DILocation(line: 118, column: 60, scope: !1803, inlinedAt: !1904)
!1908 = !DILocation(line: 118, column: 70, scope: !1803, inlinedAt: !1904)
!1909 = !DILocation(line: 118, column: 80, scope: !1803, inlinedAt: !1904)
!1910 = !DILocation(line: 118, column: 90, scope: !1803, inlinedAt: !1904)
!1911 = !DILocation(line: 118, column: 100, scope: !1803, inlinedAt: !1904)
!1912 = !DILocation(line: 120, column: 7, scope: !1826, inlinedAt: !1904)
!1913 = !DILocation(line: 120, column: 7, scope: !1803, inlinedAt: !1904)
!1914 = !DILocation(line: 104, column: 25, scope: !1829, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 125, column: 16, scope: !1841, inlinedAt: !1904)
!1916 = !DILocation(line: 104, column: 41, scope: !1829, inlinedAt: !1915)
!1917 = !DILocation(line: 104, column: 50, scope: !1829, inlinedAt: !1915)
!1918 = !DILocation(line: 104, column: 60, scope: !1829, inlinedAt: !1915)
!1919 = !DILocation(line: 104, column: 70, scope: !1829, inlinedAt: !1915)
!1920 = !DILocation(line: 104, column: 80, scope: !1829, inlinedAt: !1915)
!1921 = !DILocation(line: 104, column: 90, scope: !1829, inlinedAt: !1915)
!1922 = !DILocation(line: 106, column: 7, scope: !1850, inlinedAt: !1915)
!1923 = !DILocation(line: 106, column: 7, scope: !1829, inlinedAt: !1915)
!1924 = !DILocation(line: 90, column: 25, scope: !1853, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 111, column: 16, scope: !1864, inlinedAt: !1915)
!1926 = !DILocation(line: 90, column: 41, scope: !1853, inlinedAt: !1925)
!1927 = !DILocation(line: 90, column: 50, scope: !1853, inlinedAt: !1925)
!1928 = !DILocation(line: 90, column: 60, scope: !1853, inlinedAt: !1925)
!1929 = !DILocation(line: 90, column: 70, scope: !1853, inlinedAt: !1925)
!1930 = !DILocation(line: 90, column: 80, scope: !1853, inlinedAt: !1925)
!1931 = !DILocation(line: 92, column: 7, scope: !1872, inlinedAt: !1925)
!1932 = !DILocation(line: 92, column: 7, scope: !1853, inlinedAt: !1925)
!1933 = !DILocalVariable(name: "s1", arg: 1, scope: !1934, file: !1717, line: 76, type: !6)
!1934 = distinct !DISubprogram(name: "strcaseeq6", scope: !1717, file: !1717, line: 76, type: !1935, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!19, !6, !6, !8, !8, !8}
!1937 = !{!1933, !1938, !1939, !1940, !1941}
!1938 = !DILocalVariable(name: "s2", arg: 2, scope: !1934, file: !1717, line: 76, type: !6)
!1939 = !DILocalVariable(name: "s26", arg: 3, scope: !1934, file: !1717, line: 76, type: !8)
!1940 = !DILocalVariable(name: "s27", arg: 4, scope: !1934, file: !1717, line: 76, type: !8)
!1941 = !DILocalVariable(name: "s28", arg: 5, scope: !1934, file: !1717, line: 76, type: !8)
!1942 = !DILocation(line: 76, column: 25, scope: !1934, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 97, column: 16, scope: !1944, inlinedAt: !1925)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !1717, line: 94, column: 11)
!1945 = distinct !DILexicalBlock(scope: !1872, file: !1717, line: 93, column: 5)
!1946 = !DILocation(line: 76, column: 41, scope: !1934, inlinedAt: !1943)
!1947 = !DILocation(line: 76, column: 50, scope: !1934, inlinedAt: !1943)
!1948 = !DILocation(line: 76, column: 60, scope: !1934, inlinedAt: !1943)
!1949 = !DILocation(line: 76, column: 70, scope: !1934, inlinedAt: !1943)
!1950 = !DILocation(line: 78, column: 7, scope: !1951, inlinedAt: !1943)
!1951 = distinct !DILexicalBlock(scope: !1934, file: !1717, line: 78, column: 7)
!1952 = !DILocation(line: 78, column: 7, scope: !1934, inlinedAt: !1943)
!1953 = !DILocalVariable(name: "s1", arg: 1, scope: !1954, file: !1717, line: 62, type: !6)
!1954 = distinct !DISubprogram(name: "strcaseeq7", scope: !1717, file: !1717, line: 62, type: !1955, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!19, !6, !6, !8, !8}
!1957 = !{!1953, !1958, !1959, !1960}
!1958 = !DILocalVariable(name: "s2", arg: 2, scope: !1954, file: !1717, line: 62, type: !6)
!1959 = !DILocalVariable(name: "s27", arg: 3, scope: !1954, file: !1717, line: 62, type: !8)
!1960 = !DILocalVariable(name: "s28", arg: 4, scope: !1954, file: !1717, line: 62, type: !8)
!1961 = !DILocation(line: 62, column: 25, scope: !1954, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 83, column: 16, scope: !1963, inlinedAt: !1943)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1717, line: 80, column: 11)
!1964 = distinct !DILexicalBlock(scope: !1951, file: !1717, line: 79, column: 5)
!1965 = !DILocation(line: 62, column: 41, scope: !1954, inlinedAt: !1962)
!1966 = !DILocation(line: 62, column: 50, scope: !1954, inlinedAt: !1962)
!1967 = !DILocation(line: 62, column: 60, scope: !1954, inlinedAt: !1962)
!1968 = !DILocation(line: 64, column: 7, scope: !1969, inlinedAt: !1962)
!1969 = distinct !DILexicalBlock(scope: !1954, file: !1717, line: 64, column: 7)
!1970 = !DILocation(line: 236, column: 7, scope: !1698)
!1971 = !DILocation(line: 237, column: 12, scope: !1880)
!1972 = !DILocation(line: 237, column: 21, scope: !1880)
!1973 = !DILocation(line: 237, column: 5, scope: !1880)
!1974 = !DILocation(line: 239, column: 13, scope: !1698)
!1975 = !DILocation(line: 239, column: 11, scope: !1698)
!1976 = !DILocation(line: 239, column: 3, scope: !1698)
!1977 = !DILocation(line: 0, scope: !1698)
!1978 = !DILocation(line: 240, column: 1, scope: !1698)
!1979 = distinct !DISubprogram(name: "quotearg_alloc", scope: !117, file: !117, line: 799, type: !1980, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!10, !6, !111, !1016}
!1982 = !{!1983, !1984, !1985}
!1983 = !DILocalVariable(name: "arg", arg: 1, scope: !1979, file: !117, line: 799, type: !6)
!1984 = !DILocalVariable(name: "argsize", arg: 2, scope: !1979, file: !117, line: 799, type: !111)
!1985 = !DILocalVariable(name: "o", arg: 3, scope: !1979, file: !117, line: 800, type: !1016)
!1986 = !DILocation(line: 799, column: 29, scope: !1979)
!1987 = !DILocation(line: 799, column: 41, scope: !1979)
!1988 = !DILocation(line: 800, column: 47, scope: !1979)
!1989 = !DILocalVariable(name: "arg", arg: 1, scope: !1990, file: !117, line: 812, type: !6)
!1990 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !117, file: !117, line: 812, type: !1991, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!10, !6, !111, !191, !1016}
!1993 = !{!1989, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1994 = !DILocalVariable(name: "argsize", arg: 2, scope: !1990, file: !117, line: 812, type: !111)
!1995 = !DILocalVariable(name: "size", arg: 3, scope: !1990, file: !117, line: 812, type: !191)
!1996 = !DILocalVariable(name: "o", arg: 4, scope: !1990, file: !117, line: 813, type: !1016)
!1997 = !DILocalVariable(name: "p", scope: !1990, file: !117, line: 815, type: !1016)
!1998 = !DILocalVariable(name: "e", scope: !1990, file: !117, line: 816, type: !19)
!1999 = !DILocalVariable(name: "flags", scope: !1990, file: !117, line: 818, type: !19)
!2000 = !DILocalVariable(name: "bufsize", scope: !1990, file: !117, line: 819, type: !111)
!2001 = !DILocalVariable(name: "buf", scope: !1990, file: !117, line: 823, type: !10)
!2002 = !DILocation(line: 812, column: 33, scope: !1990, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 802, column: 10, scope: !1979)
!2004 = !DILocation(line: 812, column: 45, scope: !1990, inlinedAt: !2003)
!2005 = !DILocation(line: 812, column: 62, scope: !1990, inlinedAt: !2003)
!2006 = !DILocation(line: 813, column: 51, scope: !1990, inlinedAt: !2003)
!2007 = !DILocation(line: 815, column: 37, scope: !1990, inlinedAt: !2003)
!2008 = !DILocation(line: 815, column: 33, scope: !1990, inlinedAt: !2003)
!2009 = !DILocation(line: 816, column: 11, scope: !1990, inlinedAt: !2003)
!2010 = !DILocation(line: 816, column: 7, scope: !1990, inlinedAt: !2003)
!2011 = !DILocation(line: 818, column: 18, scope: !1990, inlinedAt: !2003)
!2012 = !DILocation(line: 818, column: 24, scope: !1990, inlinedAt: !2003)
!2013 = !DILocation(line: 818, column: 7, scope: !1990, inlinedAt: !2003)
!2014 = !DILocation(line: 819, column: 69, scope: !1990, inlinedAt: !2003)
!2015 = !DILocation(line: 820, column: 53, scope: !1990, inlinedAt: !2003)
!2016 = !DILocation(line: 821, column: 49, scope: !1990, inlinedAt: !2003)
!2017 = !DILocation(line: 822, column: 49, scope: !1990, inlinedAt: !2003)
!2018 = !DILocation(line: 819, column: 20, scope: !1990, inlinedAt: !2003)
!2019 = !DILocation(line: 822, column: 62, scope: !1990, inlinedAt: !2003)
!2020 = !DILocation(line: 819, column: 10, scope: !1990, inlinedAt: !2003)
!2021 = !DILocalVariable(name: "n", arg: 1, scope: !2022, file: !187, line: 216, type: !111)
!2022 = distinct !DISubprogram(name: "xcharalloc", scope: !187, file: !187, line: 216, type: !2023, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!10, !111}
!2025 = !{!2021}
!2026 = !DILocation(line: 216, column: 20, scope: !2022, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 823, column: 15, scope: !1990, inlinedAt: !2003)
!2028 = !DILocation(line: 218, column: 10, scope: !2022, inlinedAt: !2027)
!2029 = !DILocation(line: 823, column: 9, scope: !1990, inlinedAt: !2003)
!2030 = !DILocation(line: 824, column: 60, scope: !1990, inlinedAt: !2003)
!2031 = !DILocation(line: 826, column: 32, scope: !1990, inlinedAt: !2003)
!2032 = !DILocation(line: 826, column: 47, scope: !1990, inlinedAt: !2003)
!2033 = !DILocation(line: 824, column: 3, scope: !1990, inlinedAt: !2003)
!2034 = !DILocation(line: 827, column: 9, scope: !1990, inlinedAt: !2003)
!2035 = !DILocation(line: 802, column: 3, scope: !1979)
!2036 = !DILocation(line: 812, column: 33, scope: !1990)
!2037 = !DILocation(line: 812, column: 45, scope: !1990)
!2038 = !DILocation(line: 812, column: 62, scope: !1990)
!2039 = !DILocation(line: 813, column: 51, scope: !1990)
!2040 = !DILocation(line: 815, column: 37, scope: !1990)
!2041 = !DILocation(line: 815, column: 33, scope: !1990)
!2042 = !DILocation(line: 816, column: 11, scope: !1990)
!2043 = !DILocation(line: 816, column: 7, scope: !1990)
!2044 = !DILocation(line: 818, column: 18, scope: !1990)
!2045 = !DILocation(line: 818, column: 27, scope: !1990)
!2046 = !DILocation(line: 818, column: 24, scope: !1990)
!2047 = !DILocation(line: 818, column: 7, scope: !1990)
!2048 = !DILocation(line: 819, column: 69, scope: !1990)
!2049 = !DILocation(line: 820, column: 53, scope: !1990)
!2050 = !DILocation(line: 821, column: 49, scope: !1990)
!2051 = !DILocation(line: 822, column: 49, scope: !1990)
!2052 = !DILocation(line: 819, column: 20, scope: !1990)
!2053 = !DILocation(line: 822, column: 62, scope: !1990)
!2054 = !DILocation(line: 819, column: 10, scope: !1990)
!2055 = !DILocation(line: 216, column: 20, scope: !2022, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 823, column: 15, scope: !1990)
!2057 = !DILocation(line: 218, column: 10, scope: !2022, inlinedAt: !2056)
!2058 = !DILocation(line: 823, column: 9, scope: !1990)
!2059 = !DILocation(line: 824, column: 60, scope: !1990)
!2060 = !DILocation(line: 826, column: 32, scope: !1990)
!2061 = !DILocation(line: 826, column: 47, scope: !1990)
!2062 = !DILocation(line: 824, column: 3, scope: !1990)
!2063 = !DILocation(line: 827, column: 9, scope: !1990)
!2064 = !DILocation(line: 828, column: 7, scope: !1990)
!2065 = !DILocation(line: 829, column: 11, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1990, file: !117, line: 828, column: 7)
!2067 = !{!2068, !2068, i64 0}
!2068 = !{!"long", !647, i64 0}
!2069 = !DILocation(line: 829, column: 5, scope: !2066)
!2070 = !DILocation(line: 830, column: 3, scope: !1990)
!2071 = distinct !DISubprogram(name: "quotearg_free", scope: !117, file: !117, line: 848, type: !833, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2072)
!2072 = !{!2073, !2074}
!2073 = !DILocalVariable(name: "sv", scope: !2071, file: !117, line: 850, type: !143)
!2074 = !DILocalVariable(name: "i", scope: !2071, file: !117, line: 851, type: !19)
!2075 = !DILocation(line: 850, column: 24, scope: !2071)
!2076 = !DILocation(line: 850, column: 19, scope: !2071)
!2077 = !DILocation(line: 851, column: 7, scope: !2071)
!2078 = !DILocation(line: 852, column: 19, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !117, line: 852, column: 3)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !117, line: 852, column: 3)
!2081 = !DILocation(line: 852, column: 17, scope: !2079)
!2082 = !DILocation(line: 852, column: 3, scope: !2080)
!2083 = !DILocation(line: 853, column: 17, scope: !2079)
!2084 = !{!2085, !646, i64 8}
!2085 = !{!"slotvec", !2068, i64 0, !646, i64 8}
!2086 = !DILocation(line: 853, column: 5, scope: !2079)
!2087 = !DILocation(line: 852, column: 28, scope: !2079)
!2088 = distinct !{!2088, !2082, !2089}
!2089 = !DILocation(line: 853, column: 20, scope: !2080)
!2090 = !DILocation(line: 854, column: 13, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2071, file: !117, line: 854, column: 7)
!2092 = !DILocation(line: 854, column: 17, scope: !2091)
!2093 = !DILocation(line: 854, column: 7, scope: !2071)
!2094 = !DILocation(line: 856, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !117, line: 855, column: 5)
!2096 = !DILocation(line: 857, column: 21, scope: !2095)
!2097 = !{!2085, !2068, i64 0}
!2098 = !DILocation(line: 858, column: 20, scope: !2095)
!2099 = !DILocation(line: 859, column: 5, scope: !2095)
!2100 = !DILocation(line: 860, column: 10, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2071, file: !117, line: 860, column: 7)
!2102 = !DILocation(line: 860, column: 7, scope: !2071)
!2103 = !DILocation(line: 862, column: 13, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !117, line: 861, column: 5)
!2105 = !DILocation(line: 862, column: 7, scope: !2104)
!2106 = !DILocation(line: 863, column: 15, scope: !2104)
!2107 = !DILocation(line: 864, column: 5, scope: !2104)
!2108 = !DILocation(line: 865, column: 10, scope: !2071)
!2109 = !DILocation(line: 866, column: 1, scope: !2071)
!2110 = distinct !DISubprogram(name: "quotearg_n", scope: !117, file: !117, line: 931, type: !2111, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2113)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!10, !19, !6}
!2113 = !{!2114, !2115}
!2114 = !DILocalVariable(name: "n", arg: 1, scope: !2110, file: !117, line: 931, type: !19)
!2115 = !DILocalVariable(name: "arg", arg: 2, scope: !2110, file: !117, line: 931, type: !6)
!2116 = !DILocation(line: 931, column: 17, scope: !2110)
!2117 = !DILocation(line: 931, column: 32, scope: !2110)
!2118 = !DILocation(line: 933, column: 10, scope: !2110)
!2119 = !DILocation(line: 933, column: 3, scope: !2110)
!2120 = distinct !DISubprogram(name: "quotearg_n_options", scope: !117, file: !117, line: 877, type: !2121, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!10, !19, !6, !111, !1016}
!2123 = !{!2124, !2125, !2126, !2127, !2128, !2129, !2130, !2133, !2134, !2136, !2137, !2138}
!2124 = !DILocalVariable(name: "n", arg: 1, scope: !2120, file: !117, line: 877, type: !19)
!2125 = !DILocalVariable(name: "arg", arg: 2, scope: !2120, file: !117, line: 877, type: !6)
!2126 = !DILocalVariable(name: "argsize", arg: 3, scope: !2120, file: !117, line: 877, type: !111)
!2127 = !DILocalVariable(name: "options", arg: 4, scope: !2120, file: !117, line: 878, type: !1016)
!2128 = !DILocalVariable(name: "e", scope: !2120, file: !117, line: 880, type: !19)
!2129 = !DILocalVariable(name: "sv", scope: !2120, file: !117, line: 882, type: !143)
!2130 = !DILocalVariable(name: "preallocated", scope: !2131, file: !117, line: 889, type: !38)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !117, line: 888, column: 5)
!2132 = distinct !DILexicalBlock(scope: !2120, file: !117, line: 887, column: 7)
!2133 = !DILocalVariable(name: "nmax", scope: !2131, file: !117, line: 890, type: !19)
!2134 = !DILocalVariable(name: "size", scope: !2135, file: !117, line: 903, type: !111)
!2135 = distinct !DILexicalBlock(scope: !2120, file: !117, line: 902, column: 3)
!2136 = !DILocalVariable(name: "val", scope: !2135, file: !117, line: 904, type: !10)
!2137 = !DILocalVariable(name: "flags", scope: !2135, file: !117, line: 906, type: !19)
!2138 = !DILocalVariable(name: "qsize", scope: !2135, file: !117, line: 907, type: !111)
!2139 = !DILocation(line: 877, column: 25, scope: !2120)
!2140 = !DILocation(line: 877, column: 40, scope: !2120)
!2141 = !DILocation(line: 877, column: 52, scope: !2120)
!2142 = !DILocation(line: 878, column: 51, scope: !2120)
!2143 = !DILocation(line: 880, column: 11, scope: !2120)
!2144 = !DILocation(line: 880, column: 7, scope: !2120)
!2145 = !DILocation(line: 882, column: 24, scope: !2120)
!2146 = !DILocation(line: 882, column: 19, scope: !2120)
!2147 = !DILocation(line: 884, column: 9, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2120, file: !117, line: 884, column: 7)
!2149 = !DILocation(line: 884, column: 7, scope: !2120)
!2150 = !DILocation(line: 885, column: 5, scope: !2148)
!2151 = !DILocation(line: 887, column: 7, scope: !2132)
!2152 = !DILocation(line: 887, column: 14, scope: !2132)
!2153 = !DILocation(line: 887, column: 7, scope: !2120)
!2154 = !DILocation(line: 889, column: 31, scope: !2131)
!2155 = !DILocation(line: 890, column: 11, scope: !2131)
!2156 = !DILocation(line: 892, column: 16, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2131, file: !117, line: 892, column: 11)
!2158 = !DILocation(line: 892, column: 11, scope: !2131)
!2159 = !DILocation(line: 893, column: 9, scope: !2157)
!2160 = !DILocation(line: 895, column: 32, scope: !2131)
!2161 = !DILocation(line: 895, column: 61, scope: !2131)
!2162 = !DILocation(line: 895, column: 58, scope: !2131)
!2163 = !DILocation(line: 895, column: 66, scope: !2131)
!2164 = !DILocation(line: 895, column: 22, scope: !2131)
!2165 = !DILocation(line: 895, column: 15, scope: !2131)
!2166 = !DILocation(line: 896, column: 11, scope: !2131)
!2167 = !DILocation(line: 897, column: 15, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2131, file: !117, line: 896, column: 11)
!2169 = !{i64 0, i64 8, !2067, i64 8, i64 8, !645}
!2170 = !DILocation(line: 897, column: 9, scope: !2168)
!2171 = !DILocation(line: 898, column: 20, scope: !2131)
!2172 = !DILocation(line: 898, column: 18, scope: !2131)
!2173 = !DILocation(line: 898, column: 7, scope: !2131)
!2174 = !DILocation(line: 898, column: 38, scope: !2131)
!2175 = !DILocation(line: 898, column: 31, scope: !2131)
!2176 = !DILocation(line: 898, column: 48, scope: !2131)
!2177 = !DILocation(line: 899, column: 14, scope: !2131)
!2178 = !DILocation(line: 900, column: 5, scope: !2131)
!2179 = !DILocation(line: 0, scope: !2120)
!2180 = !DILocation(line: 903, column: 19, scope: !2135)
!2181 = !DILocation(line: 903, column: 25, scope: !2135)
!2182 = !DILocation(line: 903, column: 12, scope: !2135)
!2183 = !DILocation(line: 904, column: 23, scope: !2135)
!2184 = !DILocation(line: 904, column: 11, scope: !2135)
!2185 = !DILocation(line: 906, column: 26, scope: !2135)
!2186 = !DILocation(line: 906, column: 32, scope: !2135)
!2187 = !DILocation(line: 906, column: 9, scope: !2135)
!2188 = !DILocation(line: 908, column: 55, scope: !2135)
!2189 = !DILocation(line: 909, column: 46, scope: !2135)
!2190 = !DILocation(line: 910, column: 55, scope: !2135)
!2191 = !DILocation(line: 911, column: 55, scope: !2135)
!2192 = !DILocation(line: 907, column: 20, scope: !2135)
!2193 = !DILocation(line: 907, column: 12, scope: !2135)
!2194 = !DILocation(line: 913, column: 14, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2135, file: !117, line: 913, column: 9)
!2196 = !DILocation(line: 913, column: 9, scope: !2135)
!2197 = !DILocation(line: 915, column: 35, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2195, file: !117, line: 914, column: 7)
!2199 = !DILocation(line: 915, column: 20, scope: !2198)
!2200 = !DILocation(line: 916, column: 17, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !117, line: 916, column: 13)
!2202 = !DILocation(line: 916, column: 13, scope: !2198)
!2203 = !DILocation(line: 917, column: 11, scope: !2201)
!2204 = !DILocation(line: 216, column: 20, scope: !2022, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 918, column: 27, scope: !2198)
!2206 = !DILocation(line: 218, column: 10, scope: !2022, inlinedAt: !2205)
!2207 = !DILocation(line: 918, column: 19, scope: !2198)
!2208 = !DILocation(line: 919, column: 69, scope: !2198)
!2209 = !DILocation(line: 921, column: 44, scope: !2198)
!2210 = !DILocation(line: 922, column: 44, scope: !2198)
!2211 = !DILocation(line: 919, column: 9, scope: !2198)
!2212 = !DILocation(line: 923, column: 7, scope: !2198)
!2213 = !DILocation(line: 0, scope: !2135)
!2214 = !DILocation(line: 925, column: 11, scope: !2135)
!2215 = !DILocation(line: 926, column: 5, scope: !2135)
!2216 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !117, file: !117, line: 937, type: !2217, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!10, !19, !6, !111}
!2219 = !{!2220, !2221, !2222}
!2220 = !DILocalVariable(name: "n", arg: 1, scope: !2216, file: !117, line: 937, type: !19)
!2221 = !DILocalVariable(name: "arg", arg: 2, scope: !2216, file: !117, line: 937, type: !6)
!2222 = !DILocalVariable(name: "argsize", arg: 3, scope: !2216, file: !117, line: 937, type: !111)
!2223 = !DILocation(line: 937, column: 21, scope: !2216)
!2224 = !DILocation(line: 937, column: 36, scope: !2216)
!2225 = !DILocation(line: 937, column: 48, scope: !2216)
!2226 = !DILocation(line: 939, column: 10, scope: !2216)
!2227 = !DILocation(line: 939, column: 3, scope: !2216)
!2228 = distinct !DISubprogram(name: "quotearg", scope: !117, file: !117, line: 943, type: !2229, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!10, !6}
!2231 = !{!2232}
!2232 = !DILocalVariable(name: "arg", arg: 1, scope: !2228, file: !117, line: 943, type: !6)
!2233 = !DILocation(line: 943, column: 23, scope: !2228)
!2234 = !DILocation(line: 931, column: 17, scope: !2110, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 945, column: 10, scope: !2228)
!2236 = !DILocation(line: 931, column: 32, scope: !2110, inlinedAt: !2235)
!2237 = !DILocation(line: 933, column: 10, scope: !2110, inlinedAt: !2235)
!2238 = !DILocation(line: 945, column: 3, scope: !2228)
!2239 = distinct !DISubprogram(name: "quotearg_mem", scope: !117, file: !117, line: 949, type: !2240, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!10, !6, !111}
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "arg", arg: 1, scope: !2239, file: !117, line: 949, type: !6)
!2244 = !DILocalVariable(name: "argsize", arg: 2, scope: !2239, file: !117, line: 949, type: !111)
!2245 = !DILocation(line: 949, column: 27, scope: !2239)
!2246 = !DILocation(line: 949, column: 39, scope: !2239)
!2247 = !DILocation(line: 937, column: 21, scope: !2216, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 951, column: 10, scope: !2239)
!2249 = !DILocation(line: 937, column: 36, scope: !2216, inlinedAt: !2248)
!2250 = !DILocation(line: 937, column: 48, scope: !2216, inlinedAt: !2248)
!2251 = !DILocation(line: 939, column: 10, scope: !2216, inlinedAt: !2248)
!2252 = !DILocation(line: 951, column: 3, scope: !2239)
!2253 = distinct !DISubprogram(name: "quotearg_n_style", scope: !117, file: !117, line: 955, type: !2254, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2256)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!10, !19, !74, !6}
!2256 = !{!2257, !2258, !2259, !2260}
!2257 = !DILocalVariable(name: "n", arg: 1, scope: !2253, file: !117, line: 955, type: !19)
!2258 = !DILocalVariable(name: "s", arg: 2, scope: !2253, file: !117, line: 955, type: !74)
!2259 = !DILocalVariable(name: "arg", arg: 3, scope: !2253, file: !117, line: 955, type: !6)
!2260 = !DILocalVariable(name: "o", scope: !2253, file: !117, line: 957, type: !1017)
!2261 = !DILocation(line: 955, column: 23, scope: !2253)
!2262 = !DILocation(line: 955, column: 45, scope: !2253)
!2263 = !DILocation(line: 955, column: 60, scope: !2253)
!2264 = !DILocation(line: 957, column: 3, scope: !2253)
!2265 = !DILocation(line: 957, column: 32, scope: !2253)
!2266 = !DILocalVariable(name: "style", arg: 1, scope: !2267, file: !117, line: 193, type: !74)
!2267 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !117, file: !117, line: 193, type: !2268, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!124, !74}
!2270 = !{!2266, !2271}
!2271 = !DILocalVariable(name: "o", scope: !2267, file: !117, line: 195, type: !124)
!2272 = !DILocation(line: 193, column: 48, scope: !2267, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 957, column: 36, scope: !2253)
!2274 = !DILocation(line: 195, column: 26, scope: !2267, inlinedAt: !2273)
!2275 = !{!2276}
!2276 = distinct !{!2276, !2277, !"quoting_options_from_style: argument 0"}
!2277 = distinct !{!2277, !"quoting_options_from_style"}
!2278 = !DILocation(line: 196, column: 13, scope: !2279, inlinedAt: !2273)
!2279 = distinct !DILexicalBlock(scope: !2267, file: !117, line: 196, column: 7)
!2280 = !DILocation(line: 196, column: 7, scope: !2267, inlinedAt: !2273)
!2281 = !DILocation(line: 197, column: 5, scope: !2279, inlinedAt: !2273)
!2282 = !DILocation(line: 198, column: 5, scope: !2267, inlinedAt: !2273)
!2283 = !DILocation(line: 198, column: 11, scope: !2267, inlinedAt: !2273)
!2284 = !DILocation(line: 958, column: 10, scope: !2253)
!2285 = !DILocation(line: 959, column: 1, scope: !2253)
!2286 = !DILocation(line: 958, column: 3, scope: !2253)
!2287 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !117, file: !117, line: 962, type: !2288, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!10, !19, !74, !6, !111}
!2290 = !{!2291, !2292, !2293, !2294, !2295}
!2291 = !DILocalVariable(name: "n", arg: 1, scope: !2287, file: !117, line: 962, type: !19)
!2292 = !DILocalVariable(name: "s", arg: 2, scope: !2287, file: !117, line: 962, type: !74)
!2293 = !DILocalVariable(name: "arg", arg: 3, scope: !2287, file: !117, line: 963, type: !6)
!2294 = !DILocalVariable(name: "argsize", arg: 4, scope: !2287, file: !117, line: 963, type: !111)
!2295 = !DILocalVariable(name: "o", scope: !2287, file: !117, line: 965, type: !1017)
!2296 = !DILocation(line: 962, column: 27, scope: !2287)
!2297 = !DILocation(line: 962, column: 49, scope: !2287)
!2298 = !DILocation(line: 963, column: 35, scope: !2287)
!2299 = !DILocation(line: 963, column: 47, scope: !2287)
!2300 = !DILocation(line: 965, column: 3, scope: !2287)
!2301 = !DILocation(line: 965, column: 32, scope: !2287)
!2302 = !DILocation(line: 193, column: 48, scope: !2267, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 965, column: 36, scope: !2287)
!2304 = !DILocation(line: 195, column: 26, scope: !2267, inlinedAt: !2303)
!2305 = !{!2306}
!2306 = distinct !{!2306, !2307, !"quoting_options_from_style: argument 0"}
!2307 = distinct !{!2307, !"quoting_options_from_style"}
!2308 = !DILocation(line: 196, column: 13, scope: !2279, inlinedAt: !2303)
!2309 = !DILocation(line: 196, column: 7, scope: !2267, inlinedAt: !2303)
!2310 = !DILocation(line: 197, column: 5, scope: !2279, inlinedAt: !2303)
!2311 = !DILocation(line: 198, column: 5, scope: !2267, inlinedAt: !2303)
!2312 = !DILocation(line: 198, column: 11, scope: !2267, inlinedAt: !2303)
!2313 = !DILocation(line: 966, column: 10, scope: !2287)
!2314 = !DILocation(line: 967, column: 1, scope: !2287)
!2315 = !DILocation(line: 966, column: 3, scope: !2287)
!2316 = distinct !DISubprogram(name: "quotearg_style", scope: !117, file: !117, line: 970, type: !2317, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!10, !74, !6}
!2319 = !{!2320, !2321}
!2320 = !DILocalVariable(name: "s", arg: 1, scope: !2316, file: !117, line: 970, type: !74)
!2321 = !DILocalVariable(name: "arg", arg: 2, scope: !2316, file: !117, line: 970, type: !6)
!2322 = !DILocation(line: 970, column: 36, scope: !2316)
!2323 = !DILocation(line: 970, column: 51, scope: !2316)
!2324 = !DILocation(line: 955, column: 23, scope: !2253, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 972, column: 10, scope: !2316)
!2326 = !DILocation(line: 955, column: 45, scope: !2253, inlinedAt: !2325)
!2327 = !DILocation(line: 955, column: 60, scope: !2253, inlinedAt: !2325)
!2328 = !DILocation(line: 957, column: 3, scope: !2253, inlinedAt: !2325)
!2329 = !DILocation(line: 957, column: 32, scope: !2253, inlinedAt: !2325)
!2330 = !DILocation(line: 193, column: 48, scope: !2267, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 957, column: 36, scope: !2253, inlinedAt: !2325)
!2332 = !DILocation(line: 195, column: 26, scope: !2267, inlinedAt: !2331)
!2333 = !{!2334}
!2334 = distinct !{!2334, !2335, !"quoting_options_from_style: argument 0"}
!2335 = distinct !{!2335, !"quoting_options_from_style"}
!2336 = !DILocation(line: 196, column: 13, scope: !2279, inlinedAt: !2331)
!2337 = !DILocation(line: 196, column: 7, scope: !2267, inlinedAt: !2331)
!2338 = !DILocation(line: 197, column: 5, scope: !2279, inlinedAt: !2331)
!2339 = !DILocation(line: 198, column: 5, scope: !2267, inlinedAt: !2331)
!2340 = !DILocation(line: 198, column: 11, scope: !2267, inlinedAt: !2331)
!2341 = !DILocation(line: 958, column: 10, scope: !2253, inlinedAt: !2325)
!2342 = !DILocation(line: 959, column: 1, scope: !2253, inlinedAt: !2325)
!2343 = !DILocation(line: 972, column: 3, scope: !2316)
!2344 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !117, file: !117, line: 976, type: !2345, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!10, !74, !6, !111}
!2347 = !{!2348, !2349, !2350}
!2348 = !DILocalVariable(name: "s", arg: 1, scope: !2344, file: !117, line: 976, type: !74)
!2349 = !DILocalVariable(name: "arg", arg: 2, scope: !2344, file: !117, line: 976, type: !6)
!2350 = !DILocalVariable(name: "argsize", arg: 3, scope: !2344, file: !117, line: 976, type: !111)
!2351 = !DILocation(line: 976, column: 40, scope: !2344)
!2352 = !DILocation(line: 976, column: 55, scope: !2344)
!2353 = !DILocation(line: 976, column: 67, scope: !2344)
!2354 = !DILocation(line: 962, column: 27, scope: !2287, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 978, column: 10, scope: !2344)
!2356 = !DILocation(line: 962, column: 49, scope: !2287, inlinedAt: !2355)
!2357 = !DILocation(line: 963, column: 35, scope: !2287, inlinedAt: !2355)
!2358 = !DILocation(line: 963, column: 47, scope: !2287, inlinedAt: !2355)
!2359 = !DILocation(line: 965, column: 3, scope: !2287, inlinedAt: !2355)
!2360 = !DILocation(line: 965, column: 32, scope: !2287, inlinedAt: !2355)
!2361 = !DILocation(line: 193, column: 48, scope: !2267, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 965, column: 36, scope: !2287, inlinedAt: !2355)
!2363 = !DILocation(line: 195, column: 26, scope: !2267, inlinedAt: !2362)
!2364 = !{!2365}
!2365 = distinct !{!2365, !2366, !"quoting_options_from_style: argument 0"}
!2366 = distinct !{!2366, !"quoting_options_from_style"}
!2367 = !DILocation(line: 196, column: 13, scope: !2279, inlinedAt: !2362)
!2368 = !DILocation(line: 196, column: 7, scope: !2267, inlinedAt: !2362)
!2369 = !DILocation(line: 197, column: 5, scope: !2279, inlinedAt: !2362)
!2370 = !DILocation(line: 198, column: 5, scope: !2267, inlinedAt: !2362)
!2371 = !DILocation(line: 198, column: 11, scope: !2267, inlinedAt: !2362)
!2372 = !DILocation(line: 966, column: 10, scope: !2287, inlinedAt: !2355)
!2373 = !DILocation(line: 967, column: 1, scope: !2287, inlinedAt: !2355)
!2374 = !DILocation(line: 978, column: 3, scope: !2344)
!2375 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !117, file: !117, line: 982, type: !2376, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!10, !6, !111, !8}
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DILocalVariable(name: "arg", arg: 1, scope: !2375, file: !117, line: 982, type: !6)
!2380 = !DILocalVariable(name: "argsize", arg: 2, scope: !2375, file: !117, line: 982, type: !111)
!2381 = !DILocalVariable(name: "ch", arg: 3, scope: !2375, file: !117, line: 982, type: !8)
!2382 = !DILocalVariable(name: "options", scope: !2375, file: !117, line: 984, type: !124)
!2383 = !DILocation(line: 982, column: 32, scope: !2375)
!2384 = !DILocation(line: 982, column: 44, scope: !2375)
!2385 = !DILocation(line: 982, column: 58, scope: !2375)
!2386 = !DILocation(line: 984, column: 3, scope: !2375)
!2387 = !DILocation(line: 985, column: 13, scope: !2375)
!2388 = !{i64 0, i64 4, !776, i64 4, i64 4, !730, i64 8, i64 32, !776, i64 40, i64 8, !645, i64 48, i64 8, !645}
!2389 = !DILocation(line: 984, column: 26, scope: !2375)
!2390 = !DILocation(line: 152, column: 43, scope: !1038, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 986, column: 3, scope: !2375)
!2392 = !DILocation(line: 152, column: 51, scope: !1038, inlinedAt: !2391)
!2393 = !DILocation(line: 152, column: 58, scope: !1038, inlinedAt: !2391)
!2394 = !DILocation(line: 154, column: 17, scope: !1038, inlinedAt: !2391)
!2395 = !DILocation(line: 156, column: 62, scope: !1038, inlinedAt: !2391)
!2396 = !DILocation(line: 156, column: 57, scope: !1038, inlinedAt: !2391)
!2397 = !DILocation(line: 155, column: 17, scope: !1038, inlinedAt: !2391)
!2398 = !DILocation(line: 157, column: 15, scope: !1038, inlinedAt: !2391)
!2399 = !DILocation(line: 157, column: 7, scope: !1038, inlinedAt: !2391)
!2400 = !DILocation(line: 158, column: 12, scope: !1038, inlinedAt: !2391)
!2401 = !DILocation(line: 158, column: 15, scope: !1038, inlinedAt: !2391)
!2402 = !DILocation(line: 158, column: 25, scope: !1038, inlinedAt: !2391)
!2403 = !DILocation(line: 158, column: 7, scope: !1038, inlinedAt: !2391)
!2404 = !DILocation(line: 159, column: 18, scope: !1038, inlinedAt: !2391)
!2405 = !DILocation(line: 159, column: 23, scope: !1038, inlinedAt: !2391)
!2406 = !DILocation(line: 159, column: 6, scope: !1038, inlinedAt: !2391)
!2407 = !DILocation(line: 987, column: 10, scope: !2375)
!2408 = !DILocation(line: 988, column: 1, scope: !2375)
!2409 = !DILocation(line: 987, column: 3, scope: !2375)
!2410 = distinct !DISubprogram(name: "quotearg_char", scope: !117, file: !117, line: 991, type: !2411, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!10, !6, !8}
!2413 = !{!2414, !2415}
!2414 = !DILocalVariable(name: "arg", arg: 1, scope: !2410, file: !117, line: 991, type: !6)
!2415 = !DILocalVariable(name: "ch", arg: 2, scope: !2410, file: !117, line: 991, type: !8)
!2416 = !DILocation(line: 991, column: 28, scope: !2410)
!2417 = !DILocation(line: 991, column: 38, scope: !2410)
!2418 = !DILocation(line: 982, column: 32, scope: !2375, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 993, column: 10, scope: !2410)
!2420 = !DILocation(line: 982, column: 44, scope: !2375, inlinedAt: !2419)
!2421 = !DILocation(line: 982, column: 58, scope: !2375, inlinedAt: !2419)
!2422 = !DILocation(line: 984, column: 3, scope: !2375, inlinedAt: !2419)
!2423 = !DILocation(line: 985, column: 13, scope: !2375, inlinedAt: !2419)
!2424 = !DILocation(line: 984, column: 26, scope: !2375, inlinedAt: !2419)
!2425 = !DILocation(line: 152, column: 43, scope: !1038, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 986, column: 3, scope: !2375, inlinedAt: !2419)
!2427 = !DILocation(line: 152, column: 51, scope: !1038, inlinedAt: !2426)
!2428 = !DILocation(line: 152, column: 58, scope: !1038, inlinedAt: !2426)
!2429 = !DILocation(line: 154, column: 17, scope: !1038, inlinedAt: !2426)
!2430 = !DILocation(line: 156, column: 62, scope: !1038, inlinedAt: !2426)
!2431 = !DILocation(line: 156, column: 57, scope: !1038, inlinedAt: !2426)
!2432 = !DILocation(line: 155, column: 17, scope: !1038, inlinedAt: !2426)
!2433 = !DILocation(line: 157, column: 15, scope: !1038, inlinedAt: !2426)
!2434 = !DILocation(line: 157, column: 7, scope: !1038, inlinedAt: !2426)
!2435 = !DILocation(line: 158, column: 12, scope: !1038, inlinedAt: !2426)
!2436 = !DILocation(line: 158, column: 15, scope: !1038, inlinedAt: !2426)
!2437 = !DILocation(line: 158, column: 25, scope: !1038, inlinedAt: !2426)
!2438 = !DILocation(line: 158, column: 7, scope: !1038, inlinedAt: !2426)
!2439 = !DILocation(line: 159, column: 18, scope: !1038, inlinedAt: !2426)
!2440 = !DILocation(line: 159, column: 23, scope: !1038, inlinedAt: !2426)
!2441 = !DILocation(line: 159, column: 6, scope: !1038, inlinedAt: !2426)
!2442 = !DILocation(line: 987, column: 10, scope: !2375, inlinedAt: !2419)
!2443 = !DILocation(line: 988, column: 1, scope: !2375, inlinedAt: !2419)
!2444 = !DILocation(line: 993, column: 3, scope: !2410)
!2445 = distinct !DISubprogram(name: "quotearg_colon", scope: !117, file: !117, line: 997, type: !2229, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2446)
!2446 = !{!2447}
!2447 = !DILocalVariable(name: "arg", arg: 1, scope: !2445, file: !117, line: 997, type: !6)
!2448 = !DILocation(line: 997, column: 29, scope: !2445)
!2449 = !DILocation(line: 991, column: 28, scope: !2410, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 999, column: 10, scope: !2445)
!2451 = !DILocation(line: 991, column: 38, scope: !2410, inlinedAt: !2450)
!2452 = !DILocation(line: 982, column: 32, scope: !2375, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 993, column: 10, scope: !2410, inlinedAt: !2450)
!2454 = !DILocation(line: 982, column: 44, scope: !2375, inlinedAt: !2453)
!2455 = !DILocation(line: 982, column: 58, scope: !2375, inlinedAt: !2453)
!2456 = !DILocation(line: 984, column: 3, scope: !2375, inlinedAt: !2453)
!2457 = !DILocation(line: 985, column: 13, scope: !2375, inlinedAt: !2453)
!2458 = !DILocation(line: 984, column: 26, scope: !2375, inlinedAt: !2453)
!2459 = !DILocation(line: 152, column: 43, scope: !1038, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 986, column: 3, scope: !2375, inlinedAt: !2453)
!2461 = !DILocation(line: 152, column: 51, scope: !1038, inlinedAt: !2460)
!2462 = !DILocation(line: 152, column: 58, scope: !1038, inlinedAt: !2460)
!2463 = !DILocation(line: 154, column: 17, scope: !1038, inlinedAt: !2460)
!2464 = !DILocation(line: 156, column: 57, scope: !1038, inlinedAt: !2460)
!2465 = !DILocation(line: 155, column: 17, scope: !1038, inlinedAt: !2460)
!2466 = !DILocation(line: 157, column: 7, scope: !1038, inlinedAt: !2460)
!2467 = !DILocation(line: 158, column: 12, scope: !1038, inlinedAt: !2460)
!2468 = !DILocation(line: 159, column: 6, scope: !1038, inlinedAt: !2460)
!2469 = !DILocation(line: 987, column: 10, scope: !2375, inlinedAt: !2453)
!2470 = !DILocation(line: 988, column: 1, scope: !2375, inlinedAt: !2453)
!2471 = !DILocation(line: 999, column: 3, scope: !2445)
!2472 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !117, file: !117, line: 1003, type: !2240, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2473)
!2473 = !{!2474, !2475}
!2474 = !DILocalVariable(name: "arg", arg: 1, scope: !2472, file: !117, line: 1003, type: !6)
!2475 = !DILocalVariable(name: "argsize", arg: 2, scope: !2472, file: !117, line: 1003, type: !111)
!2476 = !DILocation(line: 1003, column: 33, scope: !2472)
!2477 = !DILocation(line: 1003, column: 45, scope: !2472)
!2478 = !DILocation(line: 982, column: 32, scope: !2375, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1005, column: 10, scope: !2472)
!2480 = !DILocation(line: 982, column: 44, scope: !2375, inlinedAt: !2479)
!2481 = !DILocation(line: 982, column: 58, scope: !2375, inlinedAt: !2479)
!2482 = !DILocation(line: 984, column: 3, scope: !2375, inlinedAt: !2479)
!2483 = !DILocation(line: 985, column: 13, scope: !2375, inlinedAt: !2479)
!2484 = !DILocation(line: 984, column: 26, scope: !2375, inlinedAt: !2479)
!2485 = !DILocation(line: 152, column: 43, scope: !1038, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 986, column: 3, scope: !2375, inlinedAt: !2479)
!2487 = !DILocation(line: 152, column: 51, scope: !1038, inlinedAt: !2486)
!2488 = !DILocation(line: 152, column: 58, scope: !1038, inlinedAt: !2486)
!2489 = !DILocation(line: 154, column: 17, scope: !1038, inlinedAt: !2486)
!2490 = !DILocation(line: 156, column: 57, scope: !1038, inlinedAt: !2486)
!2491 = !DILocation(line: 155, column: 17, scope: !1038, inlinedAt: !2486)
!2492 = !DILocation(line: 157, column: 7, scope: !1038, inlinedAt: !2486)
!2493 = !DILocation(line: 158, column: 12, scope: !1038, inlinedAt: !2486)
!2494 = !DILocation(line: 159, column: 6, scope: !1038, inlinedAt: !2486)
!2495 = !DILocation(line: 987, column: 10, scope: !2375, inlinedAt: !2479)
!2496 = !DILocation(line: 988, column: 1, scope: !2375, inlinedAt: !2479)
!2497 = !DILocation(line: 1005, column: 3, scope: !2472)
!2498 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !117, file: !117, line: 1009, type: !2254, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2499)
!2499 = !{!2500, !2501, !2502, !2503}
!2500 = !DILocalVariable(name: "n", arg: 1, scope: !2498, file: !117, line: 1009, type: !19)
!2501 = !DILocalVariable(name: "s", arg: 2, scope: !2498, file: !117, line: 1009, type: !74)
!2502 = !DILocalVariable(name: "arg", arg: 3, scope: !2498, file: !117, line: 1009, type: !6)
!2503 = !DILocalVariable(name: "options", scope: !2498, file: !117, line: 1011, type: !124)
!2504 = !DILocation(line: 195, column: 26, scope: !2267, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 1012, column: 13, scope: !2498)
!2506 = !DILocation(line: 1009, column: 29, scope: !2498)
!2507 = !DILocation(line: 1009, column: 51, scope: !2498)
!2508 = !DILocation(line: 1009, column: 66, scope: !2498)
!2509 = !DILocation(line: 1011, column: 3, scope: !2498)
!2510 = !DILocation(line: 1012, column: 13, scope: !2498)
!2511 = !DILocation(line: 193, column: 48, scope: !2267, inlinedAt: !2505)
!2512 = !{!2513}
!2513 = distinct !{!2513, !2514, !"quoting_options_from_style: argument 0"}
!2514 = distinct !{!2514, !"quoting_options_from_style"}
!2515 = !DILocation(line: 196, column: 13, scope: !2279, inlinedAt: !2505)
!2516 = !DILocation(line: 196, column: 7, scope: !2267, inlinedAt: !2505)
!2517 = !DILocation(line: 197, column: 5, scope: !2279, inlinedAt: !2505)
!2518 = !DILocation(line: 1011, column: 26, scope: !2498)
!2519 = !DILocation(line: 152, column: 43, scope: !1038, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 1013, column: 3, scope: !2498)
!2521 = !DILocation(line: 152, column: 51, scope: !1038, inlinedAt: !2520)
!2522 = !DILocation(line: 152, column: 58, scope: !1038, inlinedAt: !2520)
!2523 = !DILocation(line: 154, column: 17, scope: !1038, inlinedAt: !2520)
!2524 = !DILocation(line: 156, column: 57, scope: !1038, inlinedAt: !2520)
!2525 = !DILocation(line: 155, column: 17, scope: !1038, inlinedAt: !2520)
!2526 = !DILocation(line: 157, column: 7, scope: !1038, inlinedAt: !2520)
!2527 = !DILocation(line: 158, column: 12, scope: !1038, inlinedAt: !2520)
!2528 = !DILocation(line: 159, column: 6, scope: !1038, inlinedAt: !2520)
!2529 = !DILocation(line: 1014, column: 10, scope: !2498)
!2530 = !DILocation(line: 1015, column: 1, scope: !2498)
!2531 = !DILocation(line: 1014, column: 3, scope: !2498)
!2532 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !117, file: !117, line: 1018, type: !2533, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!10, !19, !6, !6, !6}
!2535 = !{!2536, !2537, !2538, !2539}
!2536 = !DILocalVariable(name: "n", arg: 1, scope: !2532, file: !117, line: 1018, type: !19)
!2537 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2532, file: !117, line: 1018, type: !6)
!2538 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2532, file: !117, line: 1019, type: !6)
!2539 = !DILocalVariable(name: "arg", arg: 4, scope: !2532, file: !117, line: 1019, type: !6)
!2540 = !DILocation(line: 1018, column: 24, scope: !2532)
!2541 = !DILocation(line: 1018, column: 39, scope: !2532)
!2542 = !DILocation(line: 1019, column: 32, scope: !2532)
!2543 = !DILocation(line: 1019, column: 57, scope: !2532)
!2544 = !DILocalVariable(name: "n", arg: 1, scope: !2545, file: !117, line: 1026, type: !19)
!2545 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !117, file: !117, line: 1026, type: !2546, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2548)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!10, !19, !6, !6, !6, !111}
!2548 = !{!2544, !2549, !2550, !2551, !2552, !2553}
!2549 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2545, file: !117, line: 1026, type: !6)
!2550 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2545, file: !117, line: 1027, type: !6)
!2551 = !DILocalVariable(name: "arg", arg: 4, scope: !2545, file: !117, line: 1028, type: !6)
!2552 = !DILocalVariable(name: "argsize", arg: 5, scope: !2545, file: !117, line: 1028, type: !111)
!2553 = !DILocalVariable(name: "o", scope: !2545, file: !117, line: 1030, type: !124)
!2554 = !DILocation(line: 1026, column: 28, scope: !2545, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 1021, column: 10, scope: !2532)
!2556 = !DILocation(line: 1026, column: 43, scope: !2545, inlinedAt: !2555)
!2557 = !DILocation(line: 1027, column: 36, scope: !2545, inlinedAt: !2555)
!2558 = !DILocation(line: 1028, column: 36, scope: !2545, inlinedAt: !2555)
!2559 = !DILocation(line: 1028, column: 48, scope: !2545, inlinedAt: !2555)
!2560 = !DILocation(line: 1030, column: 3, scope: !2545, inlinedAt: !2555)
!2561 = !DILocation(line: 1030, column: 30, scope: !2545, inlinedAt: !2555)
!2562 = !DILocation(line: 1030, column: 26, scope: !2545, inlinedAt: !2555)
!2563 = !DILocation(line: 179, column: 45, scope: !1087, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 1031, column: 3, scope: !2545, inlinedAt: !2555)
!2565 = !DILocation(line: 180, column: 33, scope: !1087, inlinedAt: !2564)
!2566 = !DILocation(line: 180, column: 57, scope: !1087, inlinedAt: !2564)
!2567 = !DILocation(line: 184, column: 6, scope: !1087, inlinedAt: !2564)
!2568 = !DILocation(line: 184, column: 12, scope: !1087, inlinedAt: !2564)
!2569 = !DILocation(line: 185, column: 8, scope: !1103, inlinedAt: !2564)
!2570 = !DILocation(line: 185, column: 23, scope: !1103, inlinedAt: !2564)
!2571 = !DILocation(line: 185, column: 19, scope: !1103, inlinedAt: !2564)
!2572 = !DILocation(line: 186, column: 5, scope: !1103, inlinedAt: !2564)
!2573 = !DILocation(line: 187, column: 6, scope: !1087, inlinedAt: !2564)
!2574 = !DILocation(line: 187, column: 17, scope: !1087, inlinedAt: !2564)
!2575 = !DILocation(line: 188, column: 6, scope: !1087, inlinedAt: !2564)
!2576 = !DILocation(line: 188, column: 18, scope: !1087, inlinedAt: !2564)
!2577 = !DILocation(line: 1032, column: 10, scope: !2545, inlinedAt: !2555)
!2578 = !DILocation(line: 1033, column: 1, scope: !2545, inlinedAt: !2555)
!2579 = !DILocation(line: 1021, column: 3, scope: !2532)
!2580 = !DILocation(line: 1026, column: 28, scope: !2545)
!2581 = !DILocation(line: 1026, column: 43, scope: !2545)
!2582 = !DILocation(line: 1027, column: 36, scope: !2545)
!2583 = !DILocation(line: 1028, column: 36, scope: !2545)
!2584 = !DILocation(line: 1028, column: 48, scope: !2545)
!2585 = !DILocation(line: 1030, column: 3, scope: !2545)
!2586 = !DILocation(line: 1030, column: 30, scope: !2545)
!2587 = !DILocation(line: 1030, column: 26, scope: !2545)
!2588 = !DILocation(line: 179, column: 45, scope: !1087, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 1031, column: 3, scope: !2545)
!2590 = !DILocation(line: 180, column: 33, scope: !1087, inlinedAt: !2589)
!2591 = !DILocation(line: 180, column: 57, scope: !1087, inlinedAt: !2589)
!2592 = !DILocation(line: 184, column: 6, scope: !1087, inlinedAt: !2589)
!2593 = !DILocation(line: 184, column: 12, scope: !1087, inlinedAt: !2589)
!2594 = !DILocation(line: 185, column: 8, scope: !1103, inlinedAt: !2589)
!2595 = !DILocation(line: 185, column: 23, scope: !1103, inlinedAt: !2589)
!2596 = !DILocation(line: 185, column: 19, scope: !1103, inlinedAt: !2589)
!2597 = !DILocation(line: 186, column: 5, scope: !1103, inlinedAt: !2589)
!2598 = !DILocation(line: 187, column: 6, scope: !1087, inlinedAt: !2589)
!2599 = !DILocation(line: 187, column: 17, scope: !1087, inlinedAt: !2589)
!2600 = !DILocation(line: 188, column: 6, scope: !1087, inlinedAt: !2589)
!2601 = !DILocation(line: 188, column: 18, scope: !1087, inlinedAt: !2589)
!2602 = !DILocation(line: 1032, column: 10, scope: !2545)
!2603 = !DILocation(line: 1033, column: 1, scope: !2545)
!2604 = !DILocation(line: 1032, column: 3, scope: !2545)
!2605 = distinct !DISubprogram(name: "quotearg_custom", scope: !117, file: !117, line: 1036, type: !2606, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!10, !6, !6, !6}
!2608 = !{!2609, !2610, !2611}
!2609 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2605, file: !117, line: 1036, type: !6)
!2610 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2605, file: !117, line: 1036, type: !6)
!2611 = !DILocalVariable(name: "arg", arg: 3, scope: !2605, file: !117, line: 1037, type: !6)
!2612 = !DILocation(line: 1036, column: 30, scope: !2605)
!2613 = !DILocation(line: 1036, column: 54, scope: !2605)
!2614 = !DILocation(line: 1037, column: 30, scope: !2605)
!2615 = !DILocation(line: 1018, column: 24, scope: !2532, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1039, column: 10, scope: !2605)
!2617 = !DILocation(line: 1018, column: 39, scope: !2532, inlinedAt: !2616)
!2618 = !DILocation(line: 1019, column: 32, scope: !2532, inlinedAt: !2616)
!2619 = !DILocation(line: 1019, column: 57, scope: !2532, inlinedAt: !2616)
!2620 = !DILocation(line: 1026, column: 28, scope: !2545, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1021, column: 10, scope: !2532, inlinedAt: !2616)
!2622 = !DILocation(line: 1026, column: 43, scope: !2545, inlinedAt: !2621)
!2623 = !DILocation(line: 1027, column: 36, scope: !2545, inlinedAt: !2621)
!2624 = !DILocation(line: 1028, column: 36, scope: !2545, inlinedAt: !2621)
!2625 = !DILocation(line: 1028, column: 48, scope: !2545, inlinedAt: !2621)
!2626 = !DILocation(line: 1030, column: 3, scope: !2545, inlinedAt: !2621)
!2627 = !DILocation(line: 1030, column: 30, scope: !2545, inlinedAt: !2621)
!2628 = !DILocation(line: 1030, column: 26, scope: !2545, inlinedAt: !2621)
!2629 = !DILocation(line: 179, column: 45, scope: !1087, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 1031, column: 3, scope: !2545, inlinedAt: !2621)
!2631 = !DILocation(line: 180, column: 33, scope: !1087, inlinedAt: !2630)
!2632 = !DILocation(line: 180, column: 57, scope: !1087, inlinedAt: !2630)
!2633 = !DILocation(line: 184, column: 6, scope: !1087, inlinedAt: !2630)
!2634 = !DILocation(line: 184, column: 12, scope: !1087, inlinedAt: !2630)
!2635 = !DILocation(line: 185, column: 8, scope: !1103, inlinedAt: !2630)
!2636 = !DILocation(line: 185, column: 23, scope: !1103, inlinedAt: !2630)
!2637 = !DILocation(line: 185, column: 19, scope: !1103, inlinedAt: !2630)
!2638 = !DILocation(line: 186, column: 5, scope: !1103, inlinedAt: !2630)
!2639 = !DILocation(line: 187, column: 6, scope: !1087, inlinedAt: !2630)
!2640 = !DILocation(line: 187, column: 17, scope: !1087, inlinedAt: !2630)
!2641 = !DILocation(line: 188, column: 6, scope: !1087, inlinedAt: !2630)
!2642 = !DILocation(line: 188, column: 18, scope: !1087, inlinedAt: !2630)
!2643 = !DILocation(line: 1032, column: 10, scope: !2545, inlinedAt: !2621)
!2644 = !DILocation(line: 1033, column: 1, scope: !2545, inlinedAt: !2621)
!2645 = !DILocation(line: 1039, column: 3, scope: !2605)
!2646 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !117, file: !117, line: 1043, type: !2647, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!10, !6, !6, !6, !111}
!2649 = !{!2650, !2651, !2652, !2653}
!2650 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2646, file: !117, line: 1043, type: !6)
!2651 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2646, file: !117, line: 1043, type: !6)
!2652 = !DILocalVariable(name: "arg", arg: 3, scope: !2646, file: !117, line: 1044, type: !6)
!2653 = !DILocalVariable(name: "argsize", arg: 4, scope: !2646, file: !117, line: 1044, type: !111)
!2654 = !DILocation(line: 1043, column: 34, scope: !2646)
!2655 = !DILocation(line: 1043, column: 58, scope: !2646)
!2656 = !DILocation(line: 1044, column: 34, scope: !2646)
!2657 = !DILocation(line: 1044, column: 46, scope: !2646)
!2658 = !DILocation(line: 1026, column: 28, scope: !2545, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1046, column: 10, scope: !2646)
!2660 = !DILocation(line: 1026, column: 43, scope: !2545, inlinedAt: !2659)
!2661 = !DILocation(line: 1027, column: 36, scope: !2545, inlinedAt: !2659)
!2662 = !DILocation(line: 1028, column: 36, scope: !2545, inlinedAt: !2659)
!2663 = !DILocation(line: 1028, column: 48, scope: !2545, inlinedAt: !2659)
!2664 = !DILocation(line: 1030, column: 3, scope: !2545, inlinedAt: !2659)
!2665 = !DILocation(line: 1030, column: 30, scope: !2545, inlinedAt: !2659)
!2666 = !DILocation(line: 1030, column: 26, scope: !2545, inlinedAt: !2659)
!2667 = !DILocation(line: 179, column: 45, scope: !1087, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 1031, column: 3, scope: !2545, inlinedAt: !2659)
!2669 = !DILocation(line: 180, column: 33, scope: !1087, inlinedAt: !2668)
!2670 = !DILocation(line: 180, column: 57, scope: !1087, inlinedAt: !2668)
!2671 = !DILocation(line: 184, column: 6, scope: !1087, inlinedAt: !2668)
!2672 = !DILocation(line: 184, column: 12, scope: !1087, inlinedAt: !2668)
!2673 = !DILocation(line: 185, column: 8, scope: !1103, inlinedAt: !2668)
!2674 = !DILocation(line: 185, column: 23, scope: !1103, inlinedAt: !2668)
!2675 = !DILocation(line: 185, column: 19, scope: !1103, inlinedAt: !2668)
!2676 = !DILocation(line: 186, column: 5, scope: !1103, inlinedAt: !2668)
!2677 = !DILocation(line: 187, column: 6, scope: !1087, inlinedAt: !2668)
!2678 = !DILocation(line: 187, column: 17, scope: !1087, inlinedAt: !2668)
!2679 = !DILocation(line: 188, column: 6, scope: !1087, inlinedAt: !2668)
!2680 = !DILocation(line: 188, column: 18, scope: !1087, inlinedAt: !2668)
!2681 = !DILocation(line: 1032, column: 10, scope: !2545, inlinedAt: !2659)
!2682 = !DILocation(line: 1033, column: 1, scope: !2545, inlinedAt: !2659)
!2683 = !DILocation(line: 1046, column: 3, scope: !2646)
!2684 = distinct !DISubprogram(name: "quote_n_mem", scope: !117, file: !117, line: 1061, type: !2685, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!6, !19, !6, !111}
!2687 = !{!2688, !2689, !2690}
!2688 = !DILocalVariable(name: "n", arg: 1, scope: !2684, file: !117, line: 1061, type: !19)
!2689 = !DILocalVariable(name: "arg", arg: 2, scope: !2684, file: !117, line: 1061, type: !6)
!2690 = !DILocalVariable(name: "argsize", arg: 3, scope: !2684, file: !117, line: 1061, type: !111)
!2691 = !DILocation(line: 1061, column: 18, scope: !2684)
!2692 = !DILocation(line: 1061, column: 33, scope: !2684)
!2693 = !DILocation(line: 1061, column: 45, scope: !2684)
!2694 = !DILocation(line: 1063, column: 10, scope: !2684)
!2695 = !DILocation(line: 1063, column: 3, scope: !2684)
!2696 = distinct !DISubprogram(name: "quote_mem", scope: !117, file: !117, line: 1067, type: !2697, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!6, !6, !111}
!2699 = !{!2700, !2701}
!2700 = !DILocalVariable(name: "arg", arg: 1, scope: !2696, file: !117, line: 1067, type: !6)
!2701 = !DILocalVariable(name: "argsize", arg: 2, scope: !2696, file: !117, line: 1067, type: !111)
!2702 = !DILocation(line: 1067, column: 24, scope: !2696)
!2703 = !DILocation(line: 1067, column: 36, scope: !2696)
!2704 = !DILocation(line: 1061, column: 18, scope: !2684, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1069, column: 10, scope: !2696)
!2706 = !DILocation(line: 1061, column: 33, scope: !2684, inlinedAt: !2705)
!2707 = !DILocation(line: 1061, column: 45, scope: !2684, inlinedAt: !2705)
!2708 = !DILocation(line: 1063, column: 10, scope: !2684, inlinedAt: !2705)
!2709 = !DILocation(line: 1069, column: 3, scope: !2696)
!2710 = distinct !DISubprogram(name: "quote_n", scope: !117, file: !117, line: 1073, type: !2711, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!6, !19, !6}
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "n", arg: 1, scope: !2710, file: !117, line: 1073, type: !19)
!2715 = !DILocalVariable(name: "arg", arg: 2, scope: !2710, file: !117, line: 1073, type: !6)
!2716 = !DILocation(line: 1073, column: 14, scope: !2710)
!2717 = !DILocation(line: 1073, column: 29, scope: !2710)
!2718 = !DILocation(line: 1061, column: 18, scope: !2684, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 1075, column: 10, scope: !2710)
!2720 = !DILocation(line: 1061, column: 33, scope: !2684, inlinedAt: !2719)
!2721 = !DILocation(line: 1061, column: 45, scope: !2684, inlinedAt: !2719)
!2722 = !DILocation(line: 1063, column: 10, scope: !2684, inlinedAt: !2719)
!2723 = !DILocation(line: 1075, column: 3, scope: !2710)
!2724 = distinct !DISubprogram(name: "quote", scope: !117, file: !117, line: 1079, type: !2725, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!6, !6}
!2727 = !{!2728}
!2728 = !DILocalVariable(name: "arg", arg: 1, scope: !2724, file: !117, line: 1079, type: !6)
!2729 = !DILocation(line: 1079, column: 20, scope: !2724)
!2730 = !DILocation(line: 1073, column: 14, scope: !2710, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1081, column: 10, scope: !2724)
!2732 = !DILocation(line: 1073, column: 29, scope: !2710, inlinedAt: !2731)
!2733 = !DILocation(line: 1061, column: 18, scope: !2684, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1075, column: 10, scope: !2710, inlinedAt: !2731)
!2735 = !DILocation(line: 1061, column: 33, scope: !2684, inlinedAt: !2734)
!2736 = !DILocation(line: 1061, column: 45, scope: !2684, inlinedAt: !2734)
!2737 = !DILocation(line: 1063, column: 10, scope: !2684, inlinedAt: !2734)
!2738 = !DILocation(line: 1081, column: 3, scope: !2724)
!2739 = distinct !DISubprogram(name: "safe_write", scope: !2740, file: !2740, line: 56, type: !870, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !168, retainedNodes: !2741)
!2740 = !DIFile(filename: "./lib/safe-read.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2741 = !{!2742, !2743, !2744, !2745}
!2742 = !DILocalVariable(name: "fd", arg: 1, scope: !2739, file: !2740, line: 56, type: !19)
!2743 = !DILocalVariable(name: "buf", arg: 2, scope: !2739, file: !2740, line: 56, type: !872)
!2744 = !DILocalVariable(name: "count", arg: 3, scope: !2739, file: !2740, line: 56, type: !111)
!2745 = !DILocalVariable(name: "result", scope: !2746, file: !2740, line: 60, type: !2749)
!2746 = distinct !DILexicalBlock(scope: !2747, file: !2740, line: 59, column: 5)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !2740, line: 58, column: 3)
!2748 = distinct !DILexicalBlock(scope: !2739, file: !2740, line: 58, column: 3)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !2750, line: 108, baseType: !2751)
!2750 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2752, line: 191, baseType: !2753)
!2752 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2753 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2754 = !DILocation(line: 56, column: 14, scope: !2739)
!2755 = !DILocation(line: 56, column: 30, scope: !2739)
!2756 = !DILocation(line: 56, column: 42, scope: !2739)
!2757 = !DILocation(line: 58, column: 3, scope: !2739)
!2758 = !DILocation(line: 60, column: 24, scope: !2746)
!2759 = !DILocation(line: 60, column: 15, scope: !2746)
!2760 = !DILocation(line: 62, column: 13, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2746, file: !2740, line: 62, column: 11)
!2762 = !DILocation(line: 62, column: 11, scope: !2746)
!2763 = !DILocation(line: 64, column: 16, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !2740, line: 64, column: 16)
!2765 = !DILocation(line: 64, column: 16, scope: !2761)
!2766 = distinct !{!2766, !2767, !2768}
!2767 = !DILocation(line: 58, column: 3, scope: !2748)
!2768 = !DILocation(line: 70, column: 5, scope: !2748)
!2769 = !DILocation(line: 66, column: 22, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2764, file: !2740, line: 66, column: 16)
!2771 = !DILocation(line: 66, column: 51, scope: !2770)
!2772 = !DILocation(line: 66, column: 32, scope: !2770)
!2773 = !DILocation(line: 71, column: 1, scope: !2739)
!2774 = distinct !DISubprogram(name: "version_etc_arn", scope: !179, file: !179, line: 62, type: !2775, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !2829)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2777, !6, !6, !6, !2828, !111}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2779, line: 7, baseType: !2780)
!2779 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2781, line: 49, size: 1728, elements: !2782)
!2781 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2782 = !{!2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2798, !2800, !2801, !2802, !2804, !2805, !2807, !2809, !2812, !2814, !2817, !2820, !2821, !2822, !2823, !2824}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2780, file: !2781, line: 51, baseType: !19, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2780, file: !2781, line: 54, baseType: !10, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2780, file: !2781, line: 55, baseType: !10, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2780, file: !2781, line: 56, baseType: !10, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2780, file: !2781, line: 57, baseType: !10, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2780, file: !2781, line: 58, baseType: !10, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2780, file: !2781, line: 59, baseType: !10, size: 64, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2780, file: !2781, line: 60, baseType: !10, size: 64, offset: 448)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2780, file: !2781, line: 61, baseType: !10, size: 64, offset: 512)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2780, file: !2781, line: 64, baseType: !10, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2780, file: !2781, line: 65, baseType: !10, size: 64, offset: 640)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2780, file: !2781, line: 66, baseType: !10, size: 64, offset: 704)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2780, file: !2781, line: 68, baseType: !2796, size: 64, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2781, line: 36, flags: DIFlagFwdDecl)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2780, file: !2781, line: 70, baseType: !2799, size: 64, offset: 832)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2780, file: !2781, line: 72, baseType: !19, size: 32, offset: 896)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2780, file: !2781, line: 73, baseType: !19, size: 32, offset: 928)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2780, file: !2781, line: 74, baseType: !2803, size: 64, offset: 960)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2752, line: 150, baseType: !2753)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2780, file: !2781, line: 77, baseType: !110, size: 16, offset: 1024)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2780, file: !2781, line: 78, baseType: !2806, size: 8, offset: 1040)
!2806 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2780, file: !2781, line: 79, baseType: !2808, size: 8, offset: 1048)
!2808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !23)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2780, file: !2781, line: 81, baseType: !2810, size: 64, offset: 1088)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2781, line: 43, baseType: null)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2780, file: !2781, line: 89, baseType: !2813, size: 64, offset: 1152)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2752, line: 151, baseType: !2753)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2780, file: !2781, line: 91, baseType: !2815, size: 64, offset: 1216)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2781, line: 37, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2780, file: !2781, line: 92, baseType: !2818, size: 64, offset: 1280)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2781, line: 38, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2780, file: !2781, line: 93, baseType: !2799, size: 64, offset: 1344)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2780, file: !2781, line: 94, baseType: !9, size: 64, offset: 1408)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2780, file: !2781, line: 95, baseType: !111, size: 64, offset: 1472)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2780, file: !2781, line: 96, baseType: !19, size: 32, offset: 1536)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2780, file: !2781, line: 98, baseType: !2825, size: 160, offset: 1568)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2826)
!2826 = !{!2827}
!2827 = !DISubrange(count: 20)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835}
!2830 = !DILocalVariable(name: "stream", arg: 1, scope: !2774, file: !179, line: 62, type: !2777)
!2831 = !DILocalVariable(name: "command_name", arg: 2, scope: !2774, file: !179, line: 63, type: !6)
!2832 = !DILocalVariable(name: "package", arg: 3, scope: !2774, file: !179, line: 63, type: !6)
!2833 = !DILocalVariable(name: "version", arg: 4, scope: !2774, file: !179, line: 64, type: !6)
!2834 = !DILocalVariable(name: "authors", arg: 5, scope: !2774, file: !179, line: 65, type: !2828)
!2835 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2774, file: !179, line: 65, type: !111)
!2836 = !DILocation(line: 62, column: 24, scope: !2774)
!2837 = !DILocation(line: 63, column: 30, scope: !2774)
!2838 = !DILocation(line: 63, column: 56, scope: !2774)
!2839 = !DILocation(line: 64, column: 30, scope: !2774)
!2840 = !DILocation(line: 65, column: 39, scope: !2774)
!2841 = !DILocation(line: 65, column: 55, scope: !2774)
!2842 = !DILocation(line: 67, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2774, file: !179, line: 67, column: 7)
!2844 = !DILocation(line: 67, column: 7, scope: !2774)
!2845 = !DILocation(line: 68, column: 5, scope: !2843)
!2846 = !DILocation(line: 70, column: 5, scope: !2843)
!2847 = !DILocation(line: 84, column: 3, scope: !2774)
!2848 = !DILocation(line: 86, column: 3, scope: !2774)
!2849 = !DILocation(line: 95, column: 3, scope: !2774)
!2850 = !DILocation(line: 99, column: 7, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2774, file: !179, line: 96, column: 5)
!2852 = !DILocation(line: 102, column: 7, scope: !2851)
!2853 = !DILocation(line: 103, column: 7, scope: !2851)
!2854 = !DILocation(line: 106, column: 7, scope: !2851)
!2855 = !DILocation(line: 107, column: 7, scope: !2851)
!2856 = !DILocation(line: 110, column: 7, scope: !2851)
!2857 = !DILocation(line: 112, column: 7, scope: !2851)
!2858 = !DILocation(line: 117, column: 7, scope: !2851)
!2859 = !DILocation(line: 119, column: 7, scope: !2851)
!2860 = !DILocation(line: 124, column: 7, scope: !2851)
!2861 = !DILocation(line: 126, column: 7, scope: !2851)
!2862 = !DILocation(line: 131, column: 7, scope: !2851)
!2863 = !DILocation(line: 134, column: 7, scope: !2851)
!2864 = !DILocation(line: 139, column: 7, scope: !2851)
!2865 = !DILocation(line: 142, column: 7, scope: !2851)
!2866 = !DILocation(line: 147, column: 7, scope: !2851)
!2867 = !DILocation(line: 151, column: 7, scope: !2851)
!2868 = !DILocation(line: 156, column: 7, scope: !2851)
!2869 = !DILocation(line: 160, column: 7, scope: !2851)
!2870 = !DILocation(line: 167, column: 7, scope: !2851)
!2871 = !DILocation(line: 171, column: 7, scope: !2851)
!2872 = !DILocation(line: 173, column: 1, scope: !2774)
!2873 = distinct !DISubprogram(name: "version_etc_ar", scope: !179, file: !179, line: 180, type: !2874, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !2777, !6, !6, !6, !2828}
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2882}
!2877 = !DILocalVariable(name: "stream", arg: 1, scope: !2873, file: !179, line: 180, type: !2777)
!2878 = !DILocalVariable(name: "command_name", arg: 2, scope: !2873, file: !179, line: 181, type: !6)
!2879 = !DILocalVariable(name: "package", arg: 3, scope: !2873, file: !179, line: 181, type: !6)
!2880 = !DILocalVariable(name: "version", arg: 4, scope: !2873, file: !179, line: 182, type: !6)
!2881 = !DILocalVariable(name: "authors", arg: 5, scope: !2873, file: !179, line: 182, type: !2828)
!2882 = !DILocalVariable(name: "n_authors", scope: !2873, file: !179, line: 184, type: !111)
!2883 = !DILocation(line: 180, column: 23, scope: !2873)
!2884 = !DILocation(line: 181, column: 29, scope: !2873)
!2885 = !DILocation(line: 181, column: 55, scope: !2873)
!2886 = !DILocation(line: 182, column: 29, scope: !2873)
!2887 = !DILocation(line: 182, column: 59, scope: !2873)
!2888 = !DILocation(line: 184, column: 10, scope: !2873)
!2889 = !DILocation(line: 186, column: 8, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2873, file: !179, line: 186, column: 3)
!2891 = !DILocation(line: 0, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2890, file: !179, line: 186, column: 3)
!2893 = !DILocation(line: 186, column: 23, scope: !2892)
!2894 = !DILocation(line: 186, column: 3, scope: !2890)
!2895 = !DILocation(line: 186, column: 52, scope: !2892)
!2896 = distinct !{!2896, !2894, !2897}
!2897 = !DILocation(line: 187, column: 5, scope: !2890)
!2898 = !DILocation(line: 188, column: 3, scope: !2873)
!2899 = !DILocation(line: 189, column: 1, scope: !2873)
!2900 = distinct !DISubprogram(name: "version_etc_va", scope: !179, file: !179, line: 196, type: !2901, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !2910)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !2777, !6, !6, !6, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !176, line: 189, size: 192, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2904, file: !176, line: 189, baseType: !76, size: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2904, file: !176, line: 189, baseType: !76, size: 32, offset: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2904, file: !176, line: 189, baseType: !9, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2904, file: !176, line: 189, baseType: !9, size: 64, offset: 128)
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917}
!2911 = !DILocalVariable(name: "stream", arg: 1, scope: !2900, file: !179, line: 196, type: !2777)
!2912 = !DILocalVariable(name: "command_name", arg: 2, scope: !2900, file: !179, line: 197, type: !6)
!2913 = !DILocalVariable(name: "package", arg: 3, scope: !2900, file: !179, line: 197, type: !6)
!2914 = !DILocalVariable(name: "version", arg: 4, scope: !2900, file: !179, line: 198, type: !6)
!2915 = !DILocalVariable(name: "authors", arg: 5, scope: !2900, file: !179, line: 198, type: !2903)
!2916 = !DILocalVariable(name: "n_authors", scope: !2900, file: !179, line: 200, type: !111)
!2917 = !DILocalVariable(name: "authtab", scope: !2900, file: !179, line: 201, type: !2918)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !120)
!2919 = !DILocation(line: 196, column: 23, scope: !2900)
!2920 = !DILocation(line: 197, column: 29, scope: !2900)
!2921 = !DILocation(line: 197, column: 55, scope: !2900)
!2922 = !DILocation(line: 198, column: 29, scope: !2900)
!2923 = !DILocation(line: 198, column: 46, scope: !2900)
!2924 = !DILocation(line: 201, column: 3, scope: !2900)
!2925 = !DILocation(line: 201, column: 15, scope: !2900)
!2926 = !DILocation(line: 200, column: 10, scope: !2900)
!2927 = !DILocation(line: 205, column: 35, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !179, line: 203, column: 3)
!2929 = distinct !DILexicalBlock(scope: !2900, file: !179, line: 203, column: 3)
!2930 = !DILocation(line: 205, column: 14, scope: !2928)
!2931 = !DILocation(line: 205, column: 33, scope: !2928)
!2932 = !DILocation(line: 205, column: 67, scope: !2928)
!2933 = !DILocation(line: 203, column: 3, scope: !2929)
!2934 = !DILocation(line: 0, scope: !2928)
!2935 = !DILocation(line: 208, column: 3, scope: !2900)
!2936 = !DILocation(line: 210, column: 1, scope: !2900)
!2937 = distinct !DISubprogram(name: "version_etc", scope: !179, file: !179, line: 227, type: !2938, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2777, !6, !6, !6, null}
!2940 = !{!2941, !2942, !2943, !2944, !2945}
!2941 = !DILocalVariable(name: "stream", arg: 1, scope: !2937, file: !179, line: 227, type: !2777)
!2942 = !DILocalVariable(name: "command_name", arg: 2, scope: !2937, file: !179, line: 228, type: !6)
!2943 = !DILocalVariable(name: "package", arg: 3, scope: !2937, file: !179, line: 228, type: !6)
!2944 = !DILocalVariable(name: "version", arg: 4, scope: !2937, file: !179, line: 229, type: !6)
!2945 = !DILocalVariable(name: "authors", scope: !2937, file: !179, line: 231, type: !2946)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !922, line: 52, baseType: !2947)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !924, line: 48, baseType: !2948)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !176, line: 231, baseType: !2949)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2904, size: 192, elements: !23)
!2950 = !DILocation(line: 227, column: 20, scope: !2937)
!2951 = !DILocation(line: 228, column: 26, scope: !2937)
!2952 = !DILocation(line: 228, column: 52, scope: !2937)
!2953 = !DILocation(line: 229, column: 26, scope: !2937)
!2954 = !DILocation(line: 231, column: 3, scope: !2937)
!2955 = !DILocation(line: 231, column: 11, scope: !2937)
!2956 = !DILocation(line: 233, column: 3, scope: !2937)
!2957 = !DILocation(line: 234, column: 3, scope: !2937)
!2958 = !DILocation(line: 235, column: 3, scope: !2937)
!2959 = !DILocation(line: 236, column: 1, scope: !2937)
!2960 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !179, file: !179, line: 239, type: !833, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !4)
!2961 = !DILocation(line: 245, column: 3, scope: !2960)
!2962 = !DILocation(line: 251, column: 3, scope: !2960)
!2963 = !DILocation(line: 256, column: 3, scope: !2960)
!2964 = !DILocation(line: 258, column: 1, scope: !2960)
!2965 = distinct !DISubprogram(name: "xnmalloc", scope: !187, file: !187, line: 99, type: !2966, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!9, !111, !111}
!2968 = !{!2969, !2970}
!2969 = !DILocalVariable(name: "n", arg: 1, scope: !2965, file: !187, line: 99, type: !111)
!2970 = !DILocalVariable(name: "s", arg: 2, scope: !2965, file: !187, line: 99, type: !111)
!2971 = !DILocation(line: 99, column: 18, scope: !2965)
!2972 = !DILocation(line: 99, column: 28, scope: !2965)
!2973 = !DILocation(line: 101, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2965, file: !187, line: 101, column: 7)
!2975 = !DILocation(line: 101, column: 7, scope: !2965)
!2976 = !DILocation(line: 102, column: 5, scope: !2974)
!2977 = !DILocation(line: 103, column: 21, scope: !2965)
!2978 = !DILocalVariable(name: "n", arg: 1, scope: !2979, file: !2980, line: 39, type: !111)
!2979 = distinct !DISubprogram(name: "xmalloc", scope: !2980, file: !2980, line: 39, type: !2981, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !2983)
!2980 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!9, !111}
!2983 = !{!2978, !2984}
!2984 = !DILocalVariable(name: "p", scope: !2979, file: !2980, line: 41, type: !9)
!2985 = !DILocation(line: 39, column: 17, scope: !2979, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 103, column: 10, scope: !2965)
!2987 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !2986)
!2988 = !DILocation(line: 41, column: 9, scope: !2979, inlinedAt: !2986)
!2989 = !DILocation(line: 42, column: 8, scope: !2990, inlinedAt: !2986)
!2990 = distinct !DILexicalBlock(scope: !2979, file: !2980, line: 42, column: 7)
!2991 = !DILocation(line: 42, column: 15, scope: !2990, inlinedAt: !2986)
!2992 = !DILocation(line: 42, column: 10, scope: !2990, inlinedAt: !2986)
!2993 = !DILocation(line: 43, column: 5, scope: !2990, inlinedAt: !2986)
!2994 = !DILocation(line: 103, column: 3, scope: !2965)
!2995 = !DILocation(line: 39, column: 17, scope: !2979)
!2996 = !DILocation(line: 41, column: 13, scope: !2979)
!2997 = !DILocation(line: 41, column: 9, scope: !2979)
!2998 = !DILocation(line: 42, column: 8, scope: !2990)
!2999 = !DILocation(line: 42, column: 15, scope: !2990)
!3000 = !DILocation(line: 42, column: 10, scope: !2990)
!3001 = !DILocation(line: 43, column: 5, scope: !2990)
!3002 = !DILocation(line: 44, column: 3, scope: !2979)
!3003 = distinct !DISubprogram(name: "xnrealloc", scope: !187, file: !187, line: 112, type: !3004, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!9, !9, !111, !111}
!3006 = !{!3007, !3008, !3009}
!3007 = !DILocalVariable(name: "p", arg: 1, scope: !3003, file: !187, line: 112, type: !9)
!3008 = !DILocalVariable(name: "n", arg: 2, scope: !3003, file: !187, line: 112, type: !111)
!3009 = !DILocalVariable(name: "s", arg: 3, scope: !3003, file: !187, line: 112, type: !111)
!3010 = !DILocation(line: 112, column: 18, scope: !3003)
!3011 = !DILocation(line: 112, column: 28, scope: !3003)
!3012 = !DILocation(line: 112, column: 38, scope: !3003)
!3013 = !DILocation(line: 114, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3003, file: !187, line: 114, column: 7)
!3015 = !DILocation(line: 114, column: 7, scope: !3003)
!3016 = !DILocation(line: 115, column: 5, scope: !3014)
!3017 = !DILocation(line: 116, column: 25, scope: !3003)
!3018 = !DILocalVariable(name: "p", arg: 1, scope: !3019, file: !2980, line: 51, type: !9)
!3019 = distinct !DISubprogram(name: "xrealloc", scope: !2980, file: !2980, line: 51, type: !3020, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!9, !9, !111}
!3022 = !{!3018, !3023}
!3023 = !DILocalVariable(name: "n", arg: 2, scope: !3019, file: !2980, line: 51, type: !111)
!3024 = !DILocation(line: 51, column: 17, scope: !3019, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 116, column: 10, scope: !3003)
!3026 = !DILocation(line: 51, column: 27, scope: !3019, inlinedAt: !3025)
!3027 = !DILocation(line: 53, column: 8, scope: !3028, inlinedAt: !3025)
!3028 = distinct !DILexicalBlock(scope: !3019, file: !2980, line: 53, column: 7)
!3029 = !DILocation(line: 53, column: 13, scope: !3028, inlinedAt: !3025)
!3030 = !DILocation(line: 53, column: 10, scope: !3028, inlinedAt: !3025)
!3031 = !DILocation(line: 57, column: 7, scope: !3032, inlinedAt: !3025)
!3032 = distinct !DILexicalBlock(scope: !3028, file: !2980, line: 54, column: 5)
!3033 = !DILocation(line: 58, column: 7, scope: !3032, inlinedAt: !3025)
!3034 = !DILocation(line: 61, column: 7, scope: !3019, inlinedAt: !3025)
!3035 = !DILocation(line: 62, column: 8, scope: !3036, inlinedAt: !3025)
!3036 = distinct !DILexicalBlock(scope: !3019, file: !2980, line: 62, column: 7)
!3037 = !DILocation(line: 62, column: 13, scope: !3036, inlinedAt: !3025)
!3038 = !DILocation(line: 62, column: 10, scope: !3036, inlinedAt: !3025)
!3039 = !DILocation(line: 63, column: 5, scope: !3036, inlinedAt: !3025)
!3040 = !DILocation(line: 0, scope: !3019, inlinedAt: !3025)
!3041 = !DILocation(line: 116, column: 3, scope: !3003)
!3042 = !DILocation(line: 51, column: 17, scope: !3019)
!3043 = !DILocation(line: 51, column: 27, scope: !3019)
!3044 = !DILocation(line: 53, column: 8, scope: !3028)
!3045 = !DILocation(line: 53, column: 13, scope: !3028)
!3046 = !DILocation(line: 53, column: 10, scope: !3028)
!3047 = !DILocation(line: 57, column: 7, scope: !3032)
!3048 = !DILocation(line: 58, column: 7, scope: !3032)
!3049 = !DILocation(line: 61, column: 7, scope: !3019)
!3050 = !DILocation(line: 62, column: 8, scope: !3036)
!3051 = !DILocation(line: 62, column: 13, scope: !3036)
!3052 = !DILocation(line: 62, column: 10, scope: !3036)
!3053 = !DILocation(line: 63, column: 5, scope: !3036)
!3054 = !DILocation(line: 0, scope: !3019)
!3055 = !DILocation(line: 65, column: 1, scope: !3019)
!3056 = !DILocation(line: 174, column: 19, scope: !188)
!3057 = !DILocation(line: 174, column: 30, scope: !188)
!3058 = !DILocation(line: 174, column: 41, scope: !188)
!3059 = !DILocation(line: 176, column: 14, scope: !188)
!3060 = !DILocation(line: 176, column: 10, scope: !188)
!3061 = !DILocation(line: 178, column: 9, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !188, file: !187, line: 178, column: 7)
!3063 = !DILocation(line: 178, column: 7, scope: !188)
!3064 = !DILocation(line: 180, column: 13, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !187, line: 180, column: 11)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !187, line: 179, column: 5)
!3067 = !DILocation(line: 180, column: 11, scope: !3066)
!3068 = !DILocation(line: 188, column: 30, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3065, file: !187, line: 181, column: 9)
!3070 = !DILocation(line: 189, column: 16, scope: !3069)
!3071 = !DILocation(line: 189, column: 13, scope: !3069)
!3072 = !DILocation(line: 190, column: 9, scope: !3069)
!3073 = !DILocation(line: 0, scope: !3069)
!3074 = !DILocation(line: 191, column: 11, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3066, file: !187, line: 191, column: 11)
!3076 = !DILocation(line: 191, column: 11, scope: !3066)
!3077 = !DILocation(line: 206, column: 7, scope: !188)
!3078 = !DILocation(line: 207, column: 25, scope: !188)
!3079 = !DILocation(line: 51, column: 17, scope: !3019, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 207, column: 10, scope: !188)
!3081 = !DILocation(line: 51, column: 27, scope: !3019, inlinedAt: !3080)
!3082 = !DILocation(line: 53, column: 10, scope: !3028, inlinedAt: !3080)
!3083 = !DILocation(line: 192, column: 9, scope: !3075)
!3084 = !DILocation(line: 200, column: 69, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !187, line: 200, column: 11)
!3086 = distinct !DILexicalBlock(scope: !3062, file: !187, line: 195, column: 5)
!3087 = !DILocation(line: 201, column: 11, scope: !3085)
!3088 = !DILocation(line: 200, column: 11, scope: !3086)
!3089 = !DILocation(line: 202, column: 9, scope: !3085)
!3090 = !DILocation(line: 203, column: 14, scope: !3086)
!3091 = !DILocation(line: 203, column: 18, scope: !3086)
!3092 = !DILocation(line: 203, column: 9, scope: !3086)
!3093 = !DILocation(line: 53, column: 8, scope: !3028, inlinedAt: !3080)
!3094 = !DILocation(line: 57, column: 7, scope: !3032, inlinedAt: !3080)
!3095 = !DILocation(line: 58, column: 7, scope: !3032, inlinedAt: !3080)
!3096 = !DILocation(line: 61, column: 7, scope: !3019, inlinedAt: !3080)
!3097 = !DILocation(line: 62, column: 8, scope: !3036, inlinedAt: !3080)
!3098 = !DILocation(line: 62, column: 13, scope: !3036, inlinedAt: !3080)
!3099 = !DILocation(line: 62, column: 10, scope: !3036, inlinedAt: !3080)
!3100 = !DILocation(line: 63, column: 5, scope: !3036, inlinedAt: !3080)
!3101 = !DILocation(line: 0, scope: !3019, inlinedAt: !3080)
!3102 = !DILocation(line: 207, column: 3, scope: !188)
!3103 = distinct !DISubprogram(name: "xcharalloc", scope: !187, file: !187, line: 216, type: !2023, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3104)
!3104 = !{!3105}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !187, line: 216, type: !111)
!3106 = !DILocation(line: 216, column: 20, scope: !3103)
!3107 = !DILocation(line: 39, column: 17, scope: !2979, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 218, column: 10, scope: !3103)
!3109 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !3108)
!3110 = !DILocation(line: 41, column: 9, scope: !2979, inlinedAt: !3108)
!3111 = !DILocation(line: 42, column: 8, scope: !2990, inlinedAt: !3108)
!3112 = !DILocation(line: 42, column: 15, scope: !2990, inlinedAt: !3108)
!3113 = !DILocation(line: 42, column: 10, scope: !2990, inlinedAt: !3108)
!3114 = !DILocation(line: 43, column: 5, scope: !2990, inlinedAt: !3108)
!3115 = !DILocation(line: 218, column: 3, scope: !3103)
!3116 = distinct !DISubprogram(name: "x2realloc", scope: !2980, file: !2980, line: 74, type: !3117, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!9, !9, !191}
!3119 = !{!3120, !3121}
!3120 = !DILocalVariable(name: "p", arg: 1, scope: !3116, file: !2980, line: 74, type: !9)
!3121 = !DILocalVariable(name: "pn", arg: 2, scope: !3116, file: !2980, line: 74, type: !191)
!3122 = !DILocation(line: 74, column: 18, scope: !3116)
!3123 = !DILocation(line: 74, column: 29, scope: !3116)
!3124 = !DILocation(line: 174, column: 19, scope: !188, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 76, column: 10, scope: !3116)
!3126 = !DILocation(line: 174, column: 30, scope: !188, inlinedAt: !3125)
!3127 = !DILocation(line: 174, column: 41, scope: !188, inlinedAt: !3125)
!3128 = !DILocation(line: 176, column: 14, scope: !188, inlinedAt: !3125)
!3129 = !DILocation(line: 176, column: 10, scope: !188, inlinedAt: !3125)
!3130 = !DILocation(line: 178, column: 9, scope: !3062, inlinedAt: !3125)
!3131 = !DILocation(line: 178, column: 7, scope: !188, inlinedAt: !3125)
!3132 = !DILocation(line: 180, column: 13, scope: !3065, inlinedAt: !3125)
!3133 = !DILocation(line: 180, column: 11, scope: !3066, inlinedAt: !3125)
!3134 = !DILocation(line: 191, column: 11, scope: !3075, inlinedAt: !3125)
!3135 = !DILocation(line: 191, column: 11, scope: !3066, inlinedAt: !3125)
!3136 = !DILocation(line: 206, column: 7, scope: !188, inlinedAt: !3125)
!3137 = !DILocation(line: 51, column: 17, scope: !3019, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 207, column: 10, scope: !188, inlinedAt: !3125)
!3139 = !DILocation(line: 51, column: 27, scope: !3019, inlinedAt: !3138)
!3140 = !DILocation(line: 53, column: 10, scope: !3028, inlinedAt: !3138)
!3141 = !DILocation(line: 192, column: 9, scope: !3075, inlinedAt: !3125)
!3142 = !DILocation(line: 201, column: 11, scope: !3085, inlinedAt: !3125)
!3143 = !DILocation(line: 200, column: 11, scope: !3086, inlinedAt: !3125)
!3144 = !DILocation(line: 202, column: 9, scope: !3085, inlinedAt: !3125)
!3145 = !DILocation(line: 203, column: 14, scope: !3086, inlinedAt: !3125)
!3146 = !DILocation(line: 203, column: 18, scope: !3086, inlinedAt: !3125)
!3147 = !DILocation(line: 203, column: 9, scope: !3086, inlinedAt: !3125)
!3148 = !DILocation(line: 53, column: 8, scope: !3028, inlinedAt: !3138)
!3149 = !DILocation(line: 57, column: 7, scope: !3032, inlinedAt: !3138)
!3150 = !DILocation(line: 58, column: 7, scope: !3032, inlinedAt: !3138)
!3151 = !DILocation(line: 61, column: 7, scope: !3019, inlinedAt: !3138)
!3152 = !DILocation(line: 62, column: 8, scope: !3036, inlinedAt: !3138)
!3153 = !DILocation(line: 62, column: 13, scope: !3036, inlinedAt: !3138)
!3154 = !DILocation(line: 62, column: 10, scope: !3036, inlinedAt: !3138)
!3155 = !DILocation(line: 63, column: 5, scope: !3036, inlinedAt: !3138)
!3156 = !DILocation(line: 0, scope: !3019, inlinedAt: !3138)
!3157 = !DILocation(line: 76, column: 3, scope: !3116)
!3158 = distinct !DISubprogram(name: "xzalloc", scope: !2980, file: !2980, line: 84, type: !2981, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3159)
!3159 = !{!3160}
!3160 = !DILocalVariable(name: "s", arg: 1, scope: !3158, file: !2980, line: 84, type: !111)
!3161 = !DILocation(line: 84, column: 17, scope: !3158)
!3162 = !DILocation(line: 39, column: 17, scope: !2979, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 86, column: 18, scope: !3158)
!3164 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !3163)
!3165 = !DILocation(line: 41, column: 9, scope: !2979, inlinedAt: !3163)
!3166 = !DILocation(line: 42, column: 8, scope: !2990, inlinedAt: !3163)
!3167 = !DILocation(line: 42, column: 15, scope: !2990, inlinedAt: !3163)
!3168 = !DILocation(line: 42, column: 10, scope: !2990, inlinedAt: !3163)
!3169 = !DILocation(line: 43, column: 5, scope: !2990, inlinedAt: !3163)
!3170 = !DILocation(line: 86, column: 10, scope: !3158)
!3171 = !DILocation(line: 86, column: 3, scope: !3158)
!3172 = distinct !DISubprogram(name: "xcalloc", scope: !2980, file: !2980, line: 93, type: !2966, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3173)
!3173 = !{!3174, !3175, !3176}
!3174 = !DILocalVariable(name: "n", arg: 1, scope: !3172, file: !2980, line: 93, type: !111)
!3175 = !DILocalVariable(name: "s", arg: 2, scope: !3172, file: !2980, line: 93, type: !111)
!3176 = !DILocalVariable(name: "p", scope: !3172, file: !2980, line: 95, type: !9)
!3177 = !DILocation(line: 93, column: 17, scope: !3172)
!3178 = !DILocation(line: 93, column: 27, scope: !3172)
!3179 = !DILocation(line: 100, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3172, file: !2980, line: 100, column: 7)
!3181 = !DILocation(line: 101, column: 7, scope: !3180)
!3182 = !DILocation(line: 101, column: 18, scope: !3180)
!3183 = !DILocation(line: 95, column: 9, scope: !3172)
!3184 = !DILocation(line: 101, column: 16, scope: !3180)
!3185 = !DILocation(line: 100, column: 7, scope: !3172)
!3186 = !DILocation(line: 102, column: 5, scope: !3180)
!3187 = !DILocation(line: 103, column: 3, scope: !3172)
!3188 = distinct !DISubprogram(name: "xmemdup", scope: !2980, file: !2980, line: 111, type: !3189, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3191)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!9, !872, !111}
!3191 = !{!3192, !3193}
!3192 = !DILocalVariable(name: "p", arg: 1, scope: !3188, file: !2980, line: 111, type: !872)
!3193 = !DILocalVariable(name: "s", arg: 2, scope: !3188, file: !2980, line: 111, type: !111)
!3194 = !DILocation(line: 111, column: 22, scope: !3188)
!3195 = !DILocation(line: 111, column: 32, scope: !3188)
!3196 = !DILocation(line: 39, column: 17, scope: !2979, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 113, column: 18, scope: !3188)
!3198 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !3197)
!3199 = !DILocation(line: 41, column: 9, scope: !2979, inlinedAt: !3197)
!3200 = !DILocation(line: 42, column: 8, scope: !2990, inlinedAt: !3197)
!3201 = !DILocation(line: 42, column: 15, scope: !2990, inlinedAt: !3197)
!3202 = !DILocation(line: 42, column: 10, scope: !2990, inlinedAt: !3197)
!3203 = !DILocation(line: 43, column: 5, scope: !2990, inlinedAt: !3197)
!3204 = !DILocation(line: 113, column: 10, scope: !3188)
!3205 = !DILocation(line: 113, column: 3, scope: !3188)
!3206 = distinct !DISubprogram(name: "xstrdup", scope: !2980, file: !2980, line: 119, type: !2229, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3207)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "string", arg: 1, scope: !3206, file: !2980, line: 119, type: !6)
!3209 = !DILocation(line: 119, column: 22, scope: !3206)
!3210 = !DILocation(line: 121, column: 27, scope: !3206)
!3211 = !DILocation(line: 121, column: 43, scope: !3206)
!3212 = !DILocation(line: 111, column: 22, scope: !3188, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 121, column: 10, scope: !3206)
!3214 = !DILocation(line: 111, column: 32, scope: !3188, inlinedAt: !3213)
!3215 = !DILocation(line: 39, column: 17, scope: !2979, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 113, column: 18, scope: !3188, inlinedAt: !3213)
!3217 = !DILocation(line: 41, column: 13, scope: !2979, inlinedAt: !3216)
!3218 = !DILocation(line: 41, column: 9, scope: !2979, inlinedAt: !3216)
!3219 = !DILocation(line: 42, column: 8, scope: !2990, inlinedAt: !3216)
!3220 = !DILocation(line: 42, column: 15, scope: !2990, inlinedAt: !3216)
!3221 = !DILocation(line: 42, column: 10, scope: !2990, inlinedAt: !3216)
!3222 = !DILocation(line: 43, column: 5, scope: !2990, inlinedAt: !3216)
!3223 = !DILocation(line: 113, column: 10, scope: !3188, inlinedAt: !3213)
!3224 = !DILocation(line: 121, column: 3, scope: !3206)
!3225 = distinct !DISubprogram(name: "xalloc_die", scope: !3226, file: !3226, line: 32, type: !833, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !200, retainedNodes: !4)
!3226 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3227 = !DILocation(line: 34, column: 10, scope: !3225)
!3228 = !DILocation(line: 34, column: 33, scope: !3225)
!3229 = !DILocation(line: 34, column: 3, scope: !3225)
!3230 = !DILocation(line: 40, column: 3, scope: !3225)
!3231 = distinct !DISubprogram(name: "rpl_calloc", scope: !3232, file: !3232, line: 42, type: !2966, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3233)
!3232 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3233 = !{!3234, !3235, !3236, !3237}
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !3232, line: 42, type: !111)
!3235 = !DILocalVariable(name: "s", arg: 2, scope: !3231, file: !3232, line: 42, type: !111)
!3236 = !DILocalVariable(name: "result", scope: !3231, file: !3232, line: 44, type: !9)
!3237 = !DILocalVariable(name: "bytes", scope: !3238, file: !3232, line: 56, type: !111)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !3232, line: 53, column: 5)
!3239 = distinct !DILexicalBlock(scope: !3231, file: !3232, line: 47, column: 7)
!3240 = !DILocation(line: 42, column: 20, scope: !3231)
!3241 = !DILocation(line: 42, column: 30, scope: !3231)
!3242 = !DILocation(line: 47, column: 9, scope: !3239)
!3243 = !DILocation(line: 47, column: 19, scope: !3239)
!3244 = !DILocation(line: 47, column: 14, scope: !3239)
!3245 = !DILocation(line: 56, column: 24, scope: !3238)
!3246 = !DILocation(line: 56, column: 14, scope: !3238)
!3247 = !DILocation(line: 57, column: 17, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3238, file: !3232, line: 57, column: 11)
!3249 = !DILocation(line: 57, column: 21, scope: !3248)
!3250 = !DILocation(line: 57, column: 11, scope: !3238)
!3251 = !DILocation(line: 59, column: 11, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3248, file: !3232, line: 58, column: 9)
!3253 = !DILocation(line: 59, column: 17, scope: !3252)
!3254 = !DILocation(line: 65, column: 12, scope: !3231)
!3255 = !DILocation(line: 44, column: 9, scope: !3231)
!3256 = !DILocation(line: 72, column: 3, scope: !3231)
!3257 = !DILocation(line: 0, scope: !3252)
!3258 = !DILocation(line: 73, column: 1, scope: !3231)
!3259 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3260, file: !3260, line: 385, type: !3261, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !204, retainedNodes: !3275)
!3260 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!111, !3263, !6, !111, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1186, line: 6, baseType: !3266)
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1188, line: 21, baseType: !3267)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 13, size: 64, elements: !3268)
!3268 = !{!3269, !3270}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3267, file: !1188, line: 15, baseType: !19, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3267, file: !1188, line: 20, baseType: !3271, size: 32, offset: 32)
!3271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3267, file: !1188, line: 16, size: 32, elements: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3271, file: !1188, line: 18, baseType: !76, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3271, file: !1188, line: 19, baseType: !1197, size: 32)
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3281, !3282}
!3276 = !DILocalVariable(name: "pwc", arg: 1, scope: !3259, file: !3260, line: 385, type: !3263)
!3277 = !DILocalVariable(name: "s", arg: 2, scope: !3259, file: !3260, line: 385, type: !6)
!3278 = !DILocalVariable(name: "n", arg: 3, scope: !3259, file: !3260, line: 385, type: !111)
!3279 = !DILocalVariable(name: "ps", arg: 4, scope: !3259, file: !3260, line: 385, type: !3264)
!3280 = !DILocalVariable(name: "ret", scope: !3259, file: !3260, line: 387, type: !111)
!3281 = !DILocalVariable(name: "wc", scope: !3259, file: !3260, line: 388, type: !1202)
!3282 = !DILocalVariable(name: "uc", scope: !3283, file: !3260, line: 449, type: !1046)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !3260, line: 448, column: 5)
!3284 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 447, column: 7)
!3285 = !DILocation(line: 385, column: 23, scope: !3259)
!3286 = !DILocation(line: 385, column: 40, scope: !3259)
!3287 = !DILocation(line: 385, column: 50, scope: !3259)
!3288 = !DILocation(line: 385, column: 64, scope: !3259)
!3289 = !DILocation(line: 388, column: 3, scope: !3259)
!3290 = !DILocation(line: 404, column: 9, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 404, column: 7)
!3292 = !DILocation(line: 404, column: 7, scope: !3259)
!3293 = !DILocation(line: 439, column: 9, scope: !3259)
!3294 = !DILocation(line: 387, column: 10, scope: !3259)
!3295 = !DILocation(line: 447, column: 19, scope: !3284)
!3296 = !DILocation(line: 447, column: 31, scope: !3284)
!3297 = !DILocation(line: 447, column: 26, scope: !3284)
!3298 = !DILocation(line: 447, column: 41, scope: !3284)
!3299 = !DILocation(line: 447, column: 7, scope: !3259)
!3300 = !DILocation(line: 449, column: 26, scope: !3283)
!3301 = !DILocation(line: 449, column: 21, scope: !3283)
!3302 = !DILocation(line: 450, column: 14, scope: !3283)
!3303 = !DILocation(line: 450, column: 12, scope: !3283)
!3304 = !DILocation(line: 0, scope: !3283)
!3305 = !DILocation(line: 456, column: 1, scope: !3259)
!3306 = distinct !DISubprogram(name: "close_stream", scope: !3307, file: !3307, line: 56, type: !3308, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !207, retainedNodes: !3344)
!3307 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!19, !3310}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2779, line: 7, baseType: !3312)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2781, line: 49, size: 1728, elements: !3313)
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3312, file: !2781, line: 51, baseType: !19, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3312, file: !2781, line: 54, baseType: !10, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3312, file: !2781, line: 55, baseType: !10, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3312, file: !2781, line: 56, baseType: !10, size: 64, offset: 192)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3312, file: !2781, line: 57, baseType: !10, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3312, file: !2781, line: 58, baseType: !10, size: 64, offset: 320)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3312, file: !2781, line: 59, baseType: !10, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3312, file: !2781, line: 60, baseType: !10, size: 64, offset: 448)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3312, file: !2781, line: 61, baseType: !10, size: 64, offset: 512)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3312, file: !2781, line: 64, baseType: !10, size: 64, offset: 576)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3312, file: !2781, line: 65, baseType: !10, size: 64, offset: 640)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3312, file: !2781, line: 66, baseType: !10, size: 64, offset: 704)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3312, file: !2781, line: 68, baseType: !2796, size: 64, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3312, file: !2781, line: 70, baseType: !3328, size: 64, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3312, file: !2781, line: 72, baseType: !19, size: 32, offset: 896)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3312, file: !2781, line: 73, baseType: !19, size: 32, offset: 928)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3312, file: !2781, line: 74, baseType: !2803, size: 64, offset: 960)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3312, file: !2781, line: 77, baseType: !110, size: 16, offset: 1024)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3312, file: !2781, line: 78, baseType: !2806, size: 8, offset: 1040)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3312, file: !2781, line: 79, baseType: !2808, size: 8, offset: 1048)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3312, file: !2781, line: 81, baseType: !2810, size: 64, offset: 1088)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3312, file: !2781, line: 89, baseType: !2813, size: 64, offset: 1152)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3312, file: !2781, line: 91, baseType: !2815, size: 64, offset: 1216)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3312, file: !2781, line: 92, baseType: !2818, size: 64, offset: 1280)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3312, file: !2781, line: 93, baseType: !3328, size: 64, offset: 1344)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3312, file: !2781, line: 94, baseType: !9, size: 64, offset: 1408)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3312, file: !2781, line: 95, baseType: !111, size: 64, offset: 1472)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3312, file: !2781, line: 96, baseType: !19, size: 32, offset: 1536)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3312, file: !2781, line: 98, baseType: !2825, size: 160, offset: 1568)
!3344 = !{!3345, !3346, !3348, !3349}
!3345 = !DILocalVariable(name: "stream", arg: 1, scope: !3306, file: !3307, line: 56, type: !3310)
!3346 = !DILocalVariable(name: "some_pending", scope: !3306, file: !3307, line: 58, type: !3347)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3348 = !DILocalVariable(name: "prev_fail", scope: !3306, file: !3307, line: 59, type: !3347)
!3349 = !DILocalVariable(name: "fclose_fail", scope: !3306, file: !3307, line: 60, type: !3347)
!3350 = !DILocation(line: 56, column: 21, scope: !3306)
!3351 = !DILocation(line: 58, column: 30, scope: !3306)
!3352 = !DILocalVariable(name: "__stream", arg: 1, scope: !3353, file: !3354, line: 135, type: !3310)
!3353 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3354, file: !3354, line: 135, type: !3308, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !207, retainedNodes: !3355)
!3354 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3355 = !{!3352}
!3356 = !DILocation(line: 135, column: 1, scope: !3353, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 59, column: 27, scope: !3306)
!3358 = !DILocation(line: 137, column: 10, scope: !3353, inlinedAt: !3357)
!3359 = !{!3360, !731, i64 0}
!3360 = !{!"_IO_FILE", !731, i64 0, !646, i64 8, !646, i64 16, !646, i64 24, !646, i64 32, !646, i64 40, !646, i64 48, !646, i64 56, !646, i64 64, !646, i64 72, !646, i64 80, !646, i64 88, !646, i64 96, !646, i64 104, !731, i64 112, !731, i64 116, !2068, i64 120, !1442, i64 128, !647, i64 130, !647, i64 131, !646, i64 136, !2068, i64 144, !646, i64 152, !646, i64 160, !646, i64 168, !646, i64 176, !2068, i64 184, !731, i64 192, !647, i64 196}
!3361 = !DILocation(line: 59, column: 43, scope: !3306)
!3362 = !DILocation(line: 60, column: 29, scope: !3306)
!3363 = !DILocation(line: 60, column: 45, scope: !3306)
!3364 = !DILocation(line: 70, column: 17, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3306, file: !3307, line: 70, column: 7)
!3366 = !DILocation(line: 58, column: 50, scope: !3306)
!3367 = !DILocation(line: 70, column: 33, scope: !3365)
!3368 = !DILocation(line: 70, column: 53, scope: !3365)
!3369 = !DILocation(line: 70, column: 59, scope: !3365)
!3370 = !DILocation(line: 70, column: 7, scope: !3306)
!3371 = !DILocation(line: 72, column: 11, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3365, file: !3307, line: 71, column: 5)
!3373 = !DILocation(line: 73, column: 9, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3372, file: !3307, line: 72, column: 11)
!3375 = !DILocation(line: 73, column: 15, scope: !3374)
!3376 = !DILocation(line: 0, scope: !3306)
!3377 = !DILocation(line: 78, column: 1, scope: !3306)
!3378 = distinct !DISubprogram(name: "hard_locale", scope: !3379, file: !3379, line: 38, type: !3380, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3382)
!3379 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!38, !19}
!3382 = !{!3383, !3384, !3385}
!3383 = !DILocalVariable(name: "category", arg: 1, scope: !3378, file: !3379, line: 38, type: !19)
!3384 = !DILocalVariable(name: "hard", scope: !3378, file: !3379, line: 40, type: !38)
!3385 = !DILocalVariable(name: "p", scope: !3378, file: !3379, line: 41, type: !6)
!3386 = !DILocation(line: 38, column: 18, scope: !3378)
!3387 = !DILocation(line: 40, column: 8, scope: !3378)
!3388 = !DILocation(line: 41, column: 19, scope: !3378)
!3389 = !DILocation(line: 41, column: 15, scope: !3378)
!3390 = !DILocation(line: 43, column: 7, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3378, file: !3379, line: 43, column: 7)
!3392 = !DILocation(line: 43, column: 7, scope: !3378)
!3393 = !DILocation(line: 47, column: 15, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3379, line: 47, column: 15)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3379, line: 46, column: 9)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3379, line: 45, column: 11)
!3397 = distinct !DILexicalBlock(scope: !3391, file: !3379, line: 44, column: 5)
!3398 = !DILocation(line: 47, column: 31, scope: !3394)
!3399 = !DILocation(line: 47, column: 36, scope: !3394)
!3400 = !DILocation(line: 47, column: 39, scope: !3394)
!3401 = !DILocation(line: 47, column: 59, scope: !3394)
!3402 = !DILocation(line: 47, column: 15, scope: !3395)
!3403 = !DILocation(line: 48, column: 13, scope: !3394)
!3404 = !DILocation(line: 71, column: 3, scope: !3378)
!3405 = distinct !DISubprogram(name: "locale_charset", scope: !3406, file: !3406, line: 687, type: !3407, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !211, retainedNodes: !3409)
!3406 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!6}
!3409 = !{!3410}
!3410 = !DILocalVariable(name: "codeset", scope: !3405, file: !3406, line: 689, type: !6)
!3411 = !DILocation(line: 696, column: 13, scope: !3405)
!3412 = !DILocation(line: 689, column: 15, scope: !3405)
!3413 = !DILocation(line: 754, column: 15, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3405, file: !3406, line: 754, column: 7)
!3415 = !DILocation(line: 754, column: 7, scope: !3405)
!3416 = !DILocation(line: 907, column: 13, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !3406, line: 907, column: 13)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3406, line: 897, column: 7)
!3419 = distinct !DILexicalBlock(scope: !3405, file: !3406, line: 856, column: 3)
!3420 = !DILocation(line: 907, column: 24, scope: !3417)
!3421 = !DILocation(line: 907, column: 13, scope: !3418)
!3422 = !DILocation(line: 995, column: 3, scope: !3405)
!3423 = distinct !DISubprogram(name: "rpl_fclose", scope: !3424, file: !3424, line: 58, type: !3425, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !600, retainedNodes: !3461)
!3424 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!19, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2779, line: 7, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2781, line: 49, size: 1728, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3429, file: !2781, line: 51, baseType: !19, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3429, file: !2781, line: 54, baseType: !10, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3429, file: !2781, line: 55, baseType: !10, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3429, file: !2781, line: 56, baseType: !10, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3429, file: !2781, line: 57, baseType: !10, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3429, file: !2781, line: 58, baseType: !10, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3429, file: !2781, line: 59, baseType: !10, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3429, file: !2781, line: 60, baseType: !10, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3429, file: !2781, line: 61, baseType: !10, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3429, file: !2781, line: 64, baseType: !10, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3429, file: !2781, line: 65, baseType: !10, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3429, file: !2781, line: 66, baseType: !10, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3429, file: !2781, line: 68, baseType: !2796, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3429, file: !2781, line: 70, baseType: !3445, size: 64, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3429, file: !2781, line: 72, baseType: !19, size: 32, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3429, file: !2781, line: 73, baseType: !19, size: 32, offset: 928)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3429, file: !2781, line: 74, baseType: !2803, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3429, file: !2781, line: 77, baseType: !110, size: 16, offset: 1024)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3429, file: !2781, line: 78, baseType: !2806, size: 8, offset: 1040)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3429, file: !2781, line: 79, baseType: !2808, size: 8, offset: 1048)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3429, file: !2781, line: 81, baseType: !2810, size: 64, offset: 1088)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3429, file: !2781, line: 89, baseType: !2813, size: 64, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3429, file: !2781, line: 91, baseType: !2815, size: 64, offset: 1216)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3429, file: !2781, line: 92, baseType: !2818, size: 64, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3429, file: !2781, line: 93, baseType: !3445, size: 64, offset: 1344)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3429, file: !2781, line: 94, baseType: !9, size: 64, offset: 1408)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3429, file: !2781, line: 95, baseType: !111, size: 64, offset: 1472)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3429, file: !2781, line: 96, baseType: !19, size: 32, offset: 1536)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3429, file: !2781, line: 98, baseType: !2825, size: 160, offset: 1568)
!3461 = !{!3462, !3463, !3464, !3465}
!3462 = !DILocalVariable(name: "fp", arg: 1, scope: !3423, file: !3424, line: 58, type: !3427)
!3463 = !DILocalVariable(name: "saved_errno", scope: !3423, file: !3424, line: 60, type: !19)
!3464 = !DILocalVariable(name: "fd", scope: !3423, file: !3424, line: 61, type: !19)
!3465 = !DILocalVariable(name: "result", scope: !3423, file: !3424, line: 62, type: !19)
!3466 = !DILocation(line: 58, column: 19, scope: !3423)
!3467 = !DILocation(line: 60, column: 7, scope: !3423)
!3468 = !DILocation(line: 62, column: 7, scope: !3423)
!3469 = !DILocation(line: 65, column: 8, scope: !3423)
!3470 = !DILocation(line: 61, column: 7, scope: !3423)
!3471 = !DILocation(line: 66, column: 10, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3423, file: !3424, line: 66, column: 7)
!3473 = !DILocation(line: 66, column: 7, scope: !3423)
!3474 = !DILocation(line: 67, column: 12, scope: !3472)
!3475 = !DILocation(line: 67, column: 5, scope: !3472)
!3476 = !DILocation(line: 72, column: 9, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3423, file: !3424, line: 72, column: 7)
!3478 = !DILocation(line: 72, column: 23, scope: !3477)
!3479 = !DILocation(line: 72, column: 33, scope: !3477)
!3480 = !DILocation(line: 72, column: 26, scope: !3477)
!3481 = !DILocation(line: 72, column: 59, scope: !3477)
!3482 = !DILocation(line: 73, column: 7, scope: !3477)
!3483 = !DILocation(line: 73, column: 10, scope: !3477)
!3484 = !DILocation(line: 72, column: 7, scope: !3423)
!3485 = !DILocation(line: 100, column: 12, scope: !3423)
!3486 = !DILocation(line: 105, column: 7, scope: !3423)
!3487 = !DILocation(line: 74, column: 19, scope: !3477)
!3488 = !DILocation(line: 105, column: 19, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3423, file: !3424, line: 105, column: 7)
!3490 = !DILocation(line: 107, column: 13, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3489, file: !3424, line: 106, column: 5)
!3492 = !DILocation(line: 109, column: 5, scope: !3491)
!3493 = !DILocation(line: 0, scope: !3423)
!3494 = !DILocation(line: 112, column: 1, scope: !3423)
!3495 = distinct !DISubprogram(name: "rpl_fflush", scope: !3496, file: !3496, line: 129, type: !3497, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !602, retainedNodes: !3533)
!3496 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!19, !3499}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2779, line: 7, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2781, line: 49, size: 1728, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3501, file: !2781, line: 51, baseType: !19, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3501, file: !2781, line: 54, baseType: !10, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3501, file: !2781, line: 55, baseType: !10, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3501, file: !2781, line: 56, baseType: !10, size: 64, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3501, file: !2781, line: 57, baseType: !10, size: 64, offset: 256)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3501, file: !2781, line: 58, baseType: !10, size: 64, offset: 320)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3501, file: !2781, line: 59, baseType: !10, size: 64, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3501, file: !2781, line: 60, baseType: !10, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3501, file: !2781, line: 61, baseType: !10, size: 64, offset: 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3501, file: !2781, line: 64, baseType: !10, size: 64, offset: 576)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3501, file: !2781, line: 65, baseType: !10, size: 64, offset: 640)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3501, file: !2781, line: 66, baseType: !10, size: 64, offset: 704)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3501, file: !2781, line: 68, baseType: !2796, size: 64, offset: 768)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3501, file: !2781, line: 70, baseType: !3517, size: 64, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3501, file: !2781, line: 72, baseType: !19, size: 32, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3501, file: !2781, line: 73, baseType: !19, size: 32, offset: 928)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3501, file: !2781, line: 74, baseType: !2803, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3501, file: !2781, line: 77, baseType: !110, size: 16, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3501, file: !2781, line: 78, baseType: !2806, size: 8, offset: 1040)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3501, file: !2781, line: 79, baseType: !2808, size: 8, offset: 1048)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3501, file: !2781, line: 81, baseType: !2810, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3501, file: !2781, line: 89, baseType: !2813, size: 64, offset: 1152)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3501, file: !2781, line: 91, baseType: !2815, size: 64, offset: 1216)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3501, file: !2781, line: 92, baseType: !2818, size: 64, offset: 1280)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3501, file: !2781, line: 93, baseType: !3517, size: 64, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3501, file: !2781, line: 94, baseType: !9, size: 64, offset: 1408)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3501, file: !2781, line: 95, baseType: !111, size: 64, offset: 1472)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3501, file: !2781, line: 96, baseType: !19, size: 32, offset: 1536)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3501, file: !2781, line: 98, baseType: !2825, size: 160, offset: 1568)
!3533 = !{!3534}
!3534 = !DILocalVariable(name: "stream", arg: 1, scope: !3495, file: !3496, line: 129, type: !3499)
!3535 = !DILocation(line: 129, column: 19, scope: !3495)
!3536 = !DILocation(line: 150, column: 14, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3495, file: !3496, line: 150, column: 7)
!3538 = !DILocation(line: 150, column: 22, scope: !3537)
!3539 = !DILocation(line: 150, column: 27, scope: !3537)
!3540 = !DILocation(line: 150, column: 7, scope: !3495)
!3541 = !DILocation(line: 151, column: 12, scope: !3537)
!3542 = !DILocation(line: 151, column: 5, scope: !3537)
!3543 = !DILocalVariable(name: "fp", arg: 1, scope: !3544, file: !3496, line: 41, type: !3499)
!3544 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3496, file: !3496, line: 41, type: !3545, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !602, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !3499}
!3547 = !{!3543}
!3548 = !DILocation(line: 41, column: 48, scope: !3544, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 156, column: 3, scope: !3495)
!3550 = !DILocation(line: 43, column: 11, scope: !3551, inlinedAt: !3549)
!3551 = distinct !DILexicalBlock(scope: !3544, file: !3496, line: 43, column: 7)
!3552 = !DILocation(line: 43, column: 18, scope: !3551, inlinedAt: !3549)
!3553 = !DILocation(line: 43, column: 7, scope: !3544, inlinedAt: !3549)
!3554 = !DILocation(line: 45, column: 5, scope: !3551, inlinedAt: !3549)
!3555 = !DILocation(line: 158, column: 10, scope: !3495)
!3556 = !DILocation(line: 158, column: 3, scope: !3495)
!3557 = !DILocation(line: 0, scope: !3495)
!3558 = !DILocation(line: 232, column: 1, scope: !3495)
!3559 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3560, file: !3560, line: 28, type: !3561, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !604, retainedNodes: !3598)
!3560 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!19, !3563, !3597, !19}
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2779, line: 7, baseType: !3565)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2781, line: 49, size: 1728, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3565, file: !2781, line: 51, baseType: !19, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3565, file: !2781, line: 54, baseType: !10, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3565, file: !2781, line: 55, baseType: !10, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3565, file: !2781, line: 56, baseType: !10, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3565, file: !2781, line: 57, baseType: !10, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3565, file: !2781, line: 58, baseType: !10, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3565, file: !2781, line: 59, baseType: !10, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3565, file: !2781, line: 60, baseType: !10, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3565, file: !2781, line: 61, baseType: !10, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3565, file: !2781, line: 64, baseType: !10, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3565, file: !2781, line: 65, baseType: !10, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3565, file: !2781, line: 66, baseType: !10, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3565, file: !2781, line: 68, baseType: !2796, size: 64, offset: 768)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3565, file: !2781, line: 70, baseType: !3581, size: 64, offset: 832)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3565, file: !2781, line: 72, baseType: !19, size: 32, offset: 896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3565, file: !2781, line: 73, baseType: !19, size: 32, offset: 928)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3565, file: !2781, line: 74, baseType: !2803, size: 64, offset: 960)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3565, file: !2781, line: 77, baseType: !110, size: 16, offset: 1024)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3565, file: !2781, line: 78, baseType: !2806, size: 8, offset: 1040)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3565, file: !2781, line: 79, baseType: !2808, size: 8, offset: 1048)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3565, file: !2781, line: 81, baseType: !2810, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3565, file: !2781, line: 89, baseType: !2813, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3565, file: !2781, line: 91, baseType: !2815, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3565, file: !2781, line: 92, baseType: !2818, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3565, file: !2781, line: 93, baseType: !3581, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3565, file: !2781, line: 94, baseType: !9, size: 64, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3565, file: !2781, line: 95, baseType: !111, size: 64, offset: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3565, file: !2781, line: 96, baseType: !19, size: 32, offset: 1536)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3565, file: !2781, line: 98, baseType: !2825, size: 160, offset: 1568)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !922, line: 63, baseType: !2803)
!3598 = !{!3599, !3600, !3601, !3602}
!3599 = !DILocalVariable(name: "fp", arg: 1, scope: !3559, file: !3560, line: 28, type: !3563)
!3600 = !DILocalVariable(name: "offset", arg: 2, scope: !3559, file: !3560, line: 28, type: !3597)
!3601 = !DILocalVariable(name: "whence", arg: 3, scope: !3559, file: !3560, line: 28, type: !19)
!3602 = !DILocalVariable(name: "pos", scope: !3603, file: !3560, line: 117, type: !3597)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !3560, line: 113, column: 5)
!3604 = distinct !DILexicalBlock(scope: !3559, file: !3560, line: 52, column: 7)
!3605 = !DILocation(line: 28, column: 15, scope: !3559)
!3606 = !DILocation(line: 28, column: 25, scope: !3559)
!3607 = !DILocation(line: 28, column: 37, scope: !3559)
!3608 = !DILocation(line: 52, column: 11, scope: !3604)
!3609 = !{!3360, !646, i64 16}
!3610 = !DILocation(line: 52, column: 31, scope: !3604)
!3611 = !{!3360, !646, i64 8}
!3612 = !DILocation(line: 52, column: 24, scope: !3604)
!3613 = !DILocation(line: 53, column: 7, scope: !3604)
!3614 = !DILocation(line: 53, column: 14, scope: !3604)
!3615 = !{!3360, !646, i64 40}
!3616 = !DILocation(line: 53, column: 35, scope: !3604)
!3617 = !{!3360, !646, i64 32}
!3618 = !DILocation(line: 53, column: 28, scope: !3604)
!3619 = !DILocation(line: 54, column: 7, scope: !3604)
!3620 = !DILocation(line: 54, column: 14, scope: !3604)
!3621 = !{!3360, !646, i64 72}
!3622 = !DILocation(line: 54, column: 28, scope: !3604)
!3623 = !DILocation(line: 52, column: 7, scope: !3559)
!3624 = !DILocation(line: 117, column: 26, scope: !3603)
!3625 = !DILocation(line: 117, column: 19, scope: !3603)
!3626 = !DILocation(line: 117, column: 13, scope: !3603)
!3627 = !DILocation(line: 118, column: 15, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3603, file: !3560, line: 118, column: 11)
!3629 = !DILocation(line: 118, column: 11, scope: !3603)
!3630 = !DILocation(line: 129, column: 11, scope: !3603)
!3631 = !DILocation(line: 129, column: 18, scope: !3603)
!3632 = !DILocation(line: 130, column: 11, scope: !3603)
!3633 = !DILocation(line: 130, column: 19, scope: !3603)
!3634 = !{!3360, !2068, i64 144}
!3635 = !DILocation(line: 161, column: 7, scope: !3603)
!3636 = !DILocation(line: 163, column: 10, scope: !3559)
!3637 = !DILocation(line: 163, column: 3, scope: !3559)
!3638 = !DILocation(line: 0, scope: !3559)
!3639 = !DILocation(line: 164, column: 1, scope: !3559)
