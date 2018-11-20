; ModuleID = 'coreutils-8.30/src/rmdir.bc'
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
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [187 x i8] c"Remove the DIRECTORY(ies), if they are empty.\0A\0A      --ignore-fail-on-non-empty\0A                  ignore each failure that is solely because a directory\0A                    is non-empty\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [200 x i8] c"  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is\0A                    similar to 'rmdir a/b/c a/b a'\0A  -v, --verbose   output a diagnostic for every directory processed\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@remove_empty_parents = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.10 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !31
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !48
@ignore_fail_on_non_empty = internal unnamed_addr global i1 false, align 1, !dbg !49
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"removing directory, %s\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"failed to remove %s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"failed to remove directory %s\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"ignore-fail-on-non-empty\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c": \00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), align 8, !dbg !50
@.str.41 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !56
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !61
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !64
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !71
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !78
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !109
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !116
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !128
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !135
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !142
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !130
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !144
@.str.79 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.82 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.83 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.84 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.85 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.86 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.87 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.88 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.89 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.90 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.91 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.92 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.95 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.96 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.97 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.98 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.99 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.100 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !150
@.str.1.111 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.130 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !605 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !610, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i32 %0, metadata !609, metadata !DIExpression()), !dbg !631
  %3 = icmp eq i32 %0, 0, !dbg !632
  br i1 %3, label %9, label %4, !dbg !633

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634, !tbaa !636
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9, !dbg !634
  %7 = load i8*, i8** @program_name, align 8, !dbg !634, !tbaa !636
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #9, !dbg !634
  br label %60, !dbg !634

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #9, !dbg !640
  %11 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !636
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #9, !dbg !640
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.2, i64 0, i64 0), i32 5) #9, !dbg !641
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !636
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !641
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.3, i64 0, i64 0), i32 5) #9, !dbg !642
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !636
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !642
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #9, !dbg !643
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !636
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !643
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #9, !dbg !644
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !636
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !644
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !645
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #9, !dbg !645
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %25, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #9, !dbg !627
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !646
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !618, metadata !DIExpression()) #9, !dbg !647
  br label %27, !dbg !648

; <label>:27:                                     ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !618, metadata !DIExpression()) #9, !dbg !647
  %30 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #14, !dbg !648
  %31 = icmp eq i32 %30, 0, !dbg !648
  br i1 %31, label %37, label %32, !dbg !649

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !650
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !618, metadata !DIExpression()) #9, !dbg !647
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !651
  %35 = load i8*, i8** %34, align 8, !dbg !651, !tbaa !652
  %36 = icmp eq i8* %35, null, !dbg !654
  br i1 %36, label %37, label %27, !dbg !655, !llvm.loop !656

; <label>:37:                                     ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !618, metadata !DIExpression()) #9, !dbg !647
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !618, metadata !DIExpression()) #9, !dbg !647
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !659
  %40 = load i8*, i8** %39, align 8, !dbg !659, !tbaa !661
  %41 = icmp eq i8* %40, null, !dbg !662
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !663
  call void @llvm.dbg.value(metadata i8* %42, metadata !617, metadata !DIExpression()) #9, !dbg !664
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #9, !dbg !665
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !665
  %45 = tail call i8* @setlocale(i32 5, i8* null) #9, !dbg !666
  call void @llvm.dbg.value(metadata i8* %45, metadata !625, metadata !DIExpression()) #9, !dbg !667
  %46 = icmp eq i8* %45, null, !dbg !668
  br i1 %46, label %53, label %47, !dbg !670

; <label>:47:                                     ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #14, !dbg !671
  %49 = icmp eq i32 %48, 0, !dbg !671
  br i1 %49, label %53, label %50, !dbg !672

; <label>:50:                                     ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.27, i64 0, i64 0), i32 5) #9, !dbg !673
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !673
  br label %53, !dbg !675

; <label>:53:                                     ; preds = %37, %47, %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 5) #9, !dbg !676
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !676
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #9, !dbg !677
  %57 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !677
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !677
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* %42, i8* %58) #9, !dbg !677
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #9, !dbg !678
  br label %60

; <label>:60:                                     ; preds = %53, %4
  tail call void @exit(i32 %0) #15, !dbg !679
  unreachable, !dbg !679
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !680 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !685, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8** %1, metadata !686, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i8 1, metadata !687, metadata !DIExpression()), !dbg !695
  %3 = load i8*, i8** %1, align 8, !dbg !696, !tbaa !636
  tail call void @set_program_name(i8* %3) #9, !dbg !697
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !698
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !699
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !700
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9, !dbg !701
  store i1 false, i1* @remove_empty_parents, align 1
  br label %8, !dbg !702

; <label>:8:                                      ; preds = %17, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #9, !dbg !703
  call void @llvm.dbg.value(metadata i32 %9, metadata !688, metadata !DIExpression()), !dbg !704
  switch i32 %9, label %16 [
    i32 -1, label %19
    i32 112, label %17
    i32 128, label %10
    i32 118, label %11
    i32 -130, label %12
    i32 -131, label %13
  ], !dbg !702

; <label>:10:                                     ; preds = %8
  br label %17, !dbg !705

; <label>:11:                                     ; preds = %8
  br label %17, !dbg !708

; <label>:12:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !709
  unreachable, !dbg !709

; <label>:13:                                     ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !710, !tbaa !636
  %15 = load i8*, i8** @Version, align 8, !dbg !710, !tbaa !636
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #9, !dbg !710
  tail call void @exit(i32 0) #15, !dbg !710
  unreachable, !dbg !710

; <label>:16:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !711
  unreachable, !dbg !711

; <label>:17:                                     ; preds = %8, %11, %10
  %18 = phi i1* [ @verbose, %11 ], [ @ignore_fail_on_non_empty, %10 ], [ @remove_empty_parents, %8 ]
  store i1 true, i1* %18, align 1
  br label %8, !dbg !702, !llvm.loop !712

; <label>:19:                                     ; preds = %8
  %20 = load i32, i32* @optind, align 4, !dbg !714, !tbaa !716
  %21 = icmp eq i32 %20, %0, !dbg !718
  br i1 %21, label %24, label %22, !dbg !719

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8 1, metadata !687, metadata !DIExpression()), !dbg !695
  %23 = icmp slt i32 %20, %0, !dbg !720
  br i1 %23, label %26, label %91, !dbg !721

; <label>:24:                                     ; preds = %19
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 5) #9, !dbg !722
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25) #9, !dbg !724
  tail call void @usage(i32 1) #16, !dbg !725
  unreachable, !dbg !725

; <label>:26:                                     ; preds = %22, %86
  %27 = phi i32 [ %89, %86 ], [ %20, %22 ]
  %28 = phi i8 [ %87, %86 ], [ 1, %22 ]
  call void @llvm.dbg.value(metadata i8 %28, metadata !687, metadata !DIExpression()), !dbg !695
  %29 = sext i32 %27 to i64, !dbg !726
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !726
  %31 = load i8*, i8** %30, align 8, !dbg !726, !tbaa !636
  call void @llvm.dbg.value(metadata i8* %31, metadata !689, metadata !DIExpression()), !dbg !727
  %32 = load i1, i1* @verbose, align 1
  br i1 %32, label %33, label %37, !dbg !728

; <label>:33:                                     ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !636
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #9, !dbg !731
  %36 = tail call i8* @quotearg_style(i32 4, i8* %31) #9, !dbg !732
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %34, i8* %35, i8* %36) #9, !dbg !733
  br label %37, !dbg !733

; <label>:37:                                     ; preds = %33, %26
  %38 = tail call i32 @rmdir(i8* %31) #9, !dbg !734
  %39 = icmp eq i32 %38, 0, !dbg !736
  br i1 %39, label %48, label %40, !dbg !737

; <label>:40:                                     ; preds = %37
  %41 = tail call i32* @__errno_location() #17, !dbg !738
  %42 = load i32, i32* %41, align 4, !dbg !738, !tbaa !716
  %43 = tail call fastcc zeroext i1 @ignorable_failure(i32 %42, i8* %31), !dbg !741
  br i1 %43, label %86, label %44, !dbg !742

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* %41, align 4, !dbg !743, !tbaa !716
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 5) #9, !dbg !744
  %47 = tail call i8* @quotearg_style(i32 4, i8* %31) #9, !dbg !745
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %45, i8* %46, i8* %47) #9, !dbg !746
  call void @llvm.dbg.value(metadata i8 0, metadata !687, metadata !DIExpression()), !dbg !695
  br label %86, !dbg !747

; <label>:48:                                     ; preds = %37
  %49 = load i1, i1* @remove_empty_parents, align 1
  br i1 %49, label %50, label %86, !dbg !748

; <label>:50:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %31, metadata !749, metadata !DIExpression()) #9, !dbg !756
  call void @llvm.dbg.value(metadata i8 1, metadata !755, metadata !DIExpression()) #9, !dbg !760
  %51 = tail call zeroext i1 @strip_trailing_slashes(i8* %31) #9, !dbg !761
  br label %52, !dbg !762

; <label>:52:                                     ; preds = %72, %50
  %53 = tail call i8* @strrchr(i8* %31, i32 47) #14, !dbg !763
  call void @llvm.dbg.value(metadata i8* %53, metadata !754, metadata !DIExpression()) #9, !dbg !765
  %54 = icmp eq i8* %53, null, !dbg !766
  br i1 %54, label %83, label %55, !dbg !768

; <label>:55:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %53, metadata !754, metadata !DIExpression()) #9, !dbg !765
  %56 = icmp ugt i8* %53, %31, !dbg !769
  br i1 %56, label %57, label %64, !dbg !770

; <label>:57:                                     ; preds = %55, %61
  %58 = phi i8* [ %62, %61 ], [ %53, %55 ]
  call void @llvm.dbg.value(metadata i8* %58, metadata !754, metadata !DIExpression()) #9, !dbg !765
  %59 = load i8, i8* %58, align 1, !dbg !771, !tbaa !772
  %60 = icmp eq i8 %59, 47, !dbg !773
  br i1 %60, label %61, label %64, !dbg !774

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %58, i64 -1, !dbg !775
  call void @llvm.dbg.value(metadata i8* %62, metadata !754, metadata !DIExpression()) #9, !dbg !765
  %63 = icmp ugt i8* %62, %31, !dbg !769
  br i1 %63, label %57, label %64, !dbg !770, !llvm.loop !776

; <label>:64:                                     ; preds = %61, %57, %55
  %65 = phi i8* [ %53, %55 ], [ %58, %57 ], [ %62, %61 ], !dbg !779
  call void @llvm.dbg.value(metadata i8* %65, metadata !754, metadata !DIExpression()) #9, !dbg !765
  call void @llvm.dbg.value(metadata i8* %65, metadata !754, metadata !DIExpression()) #9, !dbg !765
  %66 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !780
  store i8 0, i8* %66, align 1, !dbg !781, !tbaa !772
  %67 = load i1, i1* @verbose, align 1
  br i1 %67, label %68, label %72, !dbg !782

; <label>:68:                                     ; preds = %64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !783, !tbaa !636
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #9, !dbg !785
  %71 = tail call i8* @quotearg_style(i32 4, i8* %31) #9, !dbg !786
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %69, i8* %70, i8* %71) #9, !dbg !787
  br label %72, !dbg !787

; <label>:72:                                     ; preds = %68, %64
  %73 = tail call i32 @rmdir(i8* %31) #9, !dbg !788
  %74 = icmp eq i32 %73, 0, !dbg !789
  br i1 %74, label %52, label %75, !dbg !790, !llvm.loop !791

; <label>:75:                                     ; preds = %72
  %76 = tail call i32* @__errno_location() #17, !dbg !794
  %77 = load i32, i32* %76, align 4, !dbg !794, !tbaa !716
  %78 = tail call fastcc zeroext i1 @ignorable_failure(i32 %77, i8* %31) #9, !dbg !798
  br i1 %78, label %83, label %79, !dbg !799

; <label>:79:                                     ; preds = %75
  %80 = load i32, i32* %76, align 4, !dbg !800, !tbaa !716
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 5) #9, !dbg !802
  %82 = tail call i8* @quotearg_style(i32 4, i8* %31) #9, !dbg !803
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %80, i8* %81, i8* %82) #9, !dbg !804
  br label %83

; <label>:83:                                     ; preds = %52, %75, %79
  %84 = phi i8 [ 0, %79 ], [ 1, %75 ], [ 1, %52 ]
  %85 = and i8 %84, %28, !dbg !805
  call void @llvm.dbg.value(metadata i8 %85, metadata !687, metadata !DIExpression()), !dbg !695
  br label %86, !dbg !806

; <label>:86:                                     ; preds = %44, %83, %48, %40
  %87 = phi i8 [ %28, %40 ], [ 0, %44 ], [ %85, %83 ], [ %28, %48 ], !dbg !807
  %88 = load i32, i32* @optind, align 4, !dbg !808, !tbaa !716
  %89 = add nsw i32 %88, 1, !dbg !808
  store i32 %89, i32* @optind, align 4, !dbg !808, !tbaa !716
  call void @llvm.dbg.value(metadata i8 %87, metadata !687, metadata !DIExpression()), !dbg !695
  %90 = icmp slt i32 %89, %0, !dbg !720
  br i1 %90, label %26, label %91, !dbg !721, !llvm.loop !809

; <label>:91:                                     ; preds = %86, %22
  %92 = phi i8 [ 1, %22 ], [ %87, %86 ], !dbg !695
  call void @llvm.dbg.value(metadata i8 %92, metadata !687, metadata !DIExpression()), !dbg !695
  %93 = and i8 %92, 1, !dbg !811
  %94 = xor i8 %93, 1, !dbg !811
  %95 = zext i8 %94 to i32, !dbg !811
  ret i32 %95, !dbg !812
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
declare i32 @rmdir(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @ignorable_failure(i32, i8*) unnamed_addr #7 !dbg !813 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !817, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i8* %1, metadata !818, metadata !DIExpression()), !dbg !820
  %3 = load i1, i1* @ignore_fail_on_non_empty, align 1
  br i1 %3, label %4, label %39, !dbg !821

; <label>:4:                                      ; preds = %2
  switch i32 %0, label %38 [
    i32 39, label %39
    i32 17, label %39
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !822

; <label>:5:                                      ; preds = %4, %4, %4, %4
  call void @llvm.dbg.value(metadata i32 -100, metadata !823, metadata !DIExpression()) #9, !dbg !849
  call void @llvm.dbg.value(metadata i8* %1, metadata !826, metadata !DIExpression()) #9, !dbg !851
  %6 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* %1, i32 198912) #9, !dbg !852
  call void @llvm.dbg.value(metadata i32 %6, metadata !848, metadata !DIExpression()) #9, !dbg !853
  %7 = icmp slt i32 %6, 0, !dbg !854
  br i1 %7, label %39, label %8, !dbg !856

; <label>:8:                                      ; preds = %5
  %9 = tail call %struct.__dirstream* @fdopendir(i32 %6) #9, !dbg !857
  call void @llvm.dbg.value(metadata %struct.__dirstream* %9, metadata !827, metadata !DIExpression()) #9, !dbg !858
  %10 = icmp eq %struct.__dirstream* %9, null, !dbg !859
  br i1 %10, label %11, label %13, !dbg !861

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @close(i32 %6) #9, !dbg !862
  br label %39, !dbg !864

; <label>:13:                                     ; preds = %8
  %14 = tail call i32* @__errno_location() #17, !dbg !865
  store i32 0, i32* %14, align 4, !dbg !866, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.__dirstream* %9, metadata !867, metadata !DIExpression()) #9, !dbg !874
  %15 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %9) #9, !dbg !876
  call void @llvm.dbg.value(metadata %struct.dirent* %15, metadata !872, metadata !DIExpression()) #9, !dbg !877
  %16 = icmp eq %struct.dirent* %15, null, !dbg !878
  br i1 %16, label %34, label %17, !dbg !880

; <label>:17:                                     ; preds = %13, %29
  %18 = phi %struct.dirent* [ %30, %29 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 0, !dbg !881
  call void @llvm.dbg.value(metadata i8* %19, metadata !882, metadata !DIExpression()) #9, !dbg !890
  %20 = load i8, i8* %19, align 1, !dbg !892, !tbaa !772
  %21 = icmp eq i8 %20, 46, !dbg !893
  br i1 %21, label %22, label %32, !dbg !894

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 1, !dbg !895
  %24 = load i8, i8* %23, align 1, !dbg !895, !tbaa !772
  %25 = icmp eq i8 %24, 46, !dbg !896
  %26 = select i1 %25, i64 2, i64 1, !dbg !897
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 %26, !dbg !897
  %28 = load i8, i8* %27, align 1, !dbg !897, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %28, metadata !887, metadata !DIExpression()) #9, !dbg !898
  switch i8 %28, label %32 [
    i8 47, label %29
    i8 0, label %29
  ], !dbg !899

; <label>:29:                                     ; preds = %22, %22
  %30 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %9) #9, !dbg !876
  call void @llvm.dbg.value(metadata %struct.dirent* %30, metadata !872, metadata !DIExpression()) #9, !dbg !877
  %31 = icmp eq %struct.dirent* %30, null, !dbg !878
  br i1 %31, label %34, label %17, !dbg !880

; <label>:32:                                     ; preds = %22, %17
  call void @llvm.dbg.value(metadata %struct.dirent* %18, metadata !832, metadata !DIExpression()) #9, !dbg !900
  call void @llvm.dbg.value(metadata i32* %14, metadata !847, metadata !DIExpression(DW_OP_deref)) #9, !dbg !901
  %33 = tail call i32 @closedir(%struct.__dirstream* nonnull %9) #9, !dbg !902
  br label %39

; <label>:34:                                     ; preds = %29, %13
  call void @llvm.dbg.value(metadata %struct.dirent* %18, metadata !832, metadata !DIExpression()) #9, !dbg !900
  %35 = load i32, i32* %14, align 4, !dbg !903, !tbaa !716
  call void @llvm.dbg.value(metadata i32* %14, metadata !847, metadata !DIExpression(DW_OP_deref)) #9, !dbg !901
  %36 = tail call i32 @closedir(%struct.__dirstream* nonnull %9) #9, !dbg !902
  %37 = icmp eq i32 %35, 0, !dbg !904
  br label %39, !dbg !905

; <label>:38:                                     ; preds = %4
  br label %39, !dbg !906

; <label>:39:                                     ; preds = %4, %4, %38, %34, %32, %11, %5, %2
  %40 = phi i1 [ false, %2 ], [ true, %4 ], [ false, %11 ], [ %37, %34 ], [ false, %5 ], [ false, %32 ], [ true, %4 ], [ false, %38 ], !dbg !907
  ret i1 %40, !dbg !906
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

declare i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

declare %struct.__dirstream* @fdopendir(i32) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #7 !dbg !908 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !964, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i8* %1, metadata !965, metadata !DIExpression()), !dbg !980
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !981
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #9, !dbg !981
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !966, metadata !DIExpression()), !dbg !982
  %5 = load i8*, i8** @program_name, align 8, !dbg !983, !tbaa !636
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0), !dbg !983
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !984
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !985
  call void @llvm.va_start(i8* nonnull %4), !dbg !985
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !986, metadata !DIExpression()) #9, !dbg !997
  call void @llvm.dbg.value(metadata i8* %1, metadata !995, metadata !DIExpression()) #9, !dbg !999
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, metadata !996, metadata !DIExpression()) #9, !dbg !1000
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #9, !dbg !1001
  call void @llvm.va_end(i8* nonnull %4), !dbg !1002
  call void @llvm.dbg.value(metadata i32 10, metadata !1003, metadata !DIExpression()) #9, !dbg !1010
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1009, metadata !DIExpression()) #9, !dbg !1012
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1013
  %11 = load i8*, i8** %10, align 8, !dbg !1013, !tbaa !1014
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1013
  %13 = load i8*, i8** %12, align 8, !dbg !1013, !tbaa !1018
  %14 = icmp ult i8* %11, %13, !dbg !1013
  br i1 %14, label %17, label %15, !dbg !1013, !prof !1019

; <label>:15:                                     ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #9, !dbg !1013
  br label %19, !dbg !1013

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1013
  store i8* %18, i8** %10, align 8, !dbg !1013, !tbaa !1014
  store i8 10, i8* %11, align 1, !dbg !1013, !tbaa !772
  br label %19, !dbg !1013

; <label>:19:                                     ; preds = %15, %17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #9, !dbg !1020
  ret void, !dbg !1020
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1021 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1023, metadata !DIExpression()), !dbg !1024
  store i8* %0, i8** @file_name, align 8, !dbg !1025, !tbaa !636
  ret void, !dbg !1026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1027 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1031, metadata !DIExpression()), !dbg !1032
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1033, !tbaa !1034
  ret void, !dbg !1036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1037 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1044, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9, !dbg !1045
  %3 = icmp eq i32 %2, 0, !dbg !1046
  br i1 %3, label %22, label %4, !dbg !1047

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1048, !tbaa !1034, !range !1049
  %6 = icmp eq i8 %5, 0, !dbg !1048
  br i1 %6, label %11, label %7, !dbg !1050

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1051
  %9 = load i32, i32* %8, align 4, !dbg !1051, !tbaa !716
  %10 = icmp eq i32 %9, 32, !dbg !1052
  br i1 %10, label %22, label %11, !dbg !1053

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #9, !dbg !1054
  call void @llvm.dbg.value(metadata i8* %12, metadata !1041, metadata !DIExpression()), !dbg !1055
  %13 = load i8*, i8** @file_name, align 8, !dbg !1056, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !1056
  %15 = tail call i32* @__errno_location() #17, !dbg !1058
  %16 = load i32, i32* %15, align 4, !dbg !1058, !tbaa !716
  br i1 %14, label %19, label %17, !dbg !1059

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #9, !dbg !1060
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %18, i8* %12) #9, !dbg !1061
  br label %20, !dbg !1061

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #9, !dbg !1062
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1063, !tbaa !716
  tail call void @_exit(i32 %21) #15, !dbg !1064
  unreachable, !dbg !1064

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1065, !tbaa !636
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #9, !dbg !1067
  %25 = icmp eq i32 %24, 0, !dbg !1068
  br i1 %25, label %28, label %26, !dbg !1069

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1070, !tbaa !716
  tail call void @_exit(i32 %27) #15, !dbg !1071
  unreachable, !dbg !1071

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1072
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @strip_trailing_slashes(i8*) local_unnamed_addr #7 !dbg !1073 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1076, metadata !DIExpression()), !dbg !1080
  %2 = tail call i8* @last_component(i8* %0) #14, !dbg !1081
  call void @llvm.dbg.value(metadata i8* %2, metadata !1077, metadata !DIExpression()), !dbg !1082
  %3 = load i8, i8* %2, align 1, !dbg !1083, !tbaa !772
  %4 = icmp eq i8 %3, 0, !dbg !1083
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %5, metadata !1077, metadata !DIExpression()), !dbg !1082
  %6 = tail call i64 @base_len(i8* %5) #14, !dbg !1086
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1087
  call void @llvm.dbg.value(metadata i8* %7, metadata !1078, metadata !DIExpression()), !dbg !1088
  %8 = load i8, i8* %7, align 1, !dbg !1089, !tbaa !772
  %9 = icmp ne i8 %8, 0, !dbg !1090
  store i8 0, i8* %7, align 1, !dbg !1091, !tbaa !772
  ret i1 %9, !dbg !1092
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1093 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1095, metadata !DIExpression()), !dbg !1098
  %2 = icmp eq i8* %0, null, !dbg !1099
  br i1 %2, label %3, label %6, !dbg !1101

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1102, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1104
  tail call void @abort() #15, !dbg !1105
  unreachable, !dbg !1105

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1106
  call void @llvm.dbg.value(metadata i8* %7, metadata !1096, metadata !DIExpression()), !dbg !1107
  %8 = icmp eq i8* %7, null, !dbg !1108
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1109
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %10, metadata !1097, metadata !DIExpression()), !dbg !1111
  %11 = ptrtoint i8* %10 to i64, !dbg !1112
  %12 = ptrtoint i8* %0 to i64, !dbg !1112
  %13 = sub i64 %11, %12, !dbg !1112
  %14 = icmp sgt i64 %13, 6, !dbg !1114
  br i1 %14, label %15, label %24, !dbg !1115

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1116
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #14, !dbg !1117
  %18 = icmp eq i32 %17, 0, !dbg !1118
  br i1 %18, label %19, label %24, !dbg !1119

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1095, metadata !DIExpression()), !dbg !1098
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #14, !dbg !1120
  %21 = icmp eq i32 %20, 0, !dbg !1123
  br i1 %21, label %22, label %24, !dbg !1124

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %23, metadata !1095, metadata !DIExpression()), !dbg !1098
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1127, !tbaa !636
  br label %24, !dbg !1128

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1095, metadata !DIExpression()), !dbg !1098
  store i8* %25, i8** @program_name, align 8, !dbg !1129, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1130, !tbaa !636
  ret void, !dbg !1131
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1132 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1137, metadata !DIExpression()), !dbg !1140
  %2 = tail call i32* @__errno_location() #17, !dbg !1141
  %3 = load i32, i32* %2, align 4, !dbg !1141, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %3, metadata !1138, metadata !DIExpression()), !dbg !1142
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1143
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1143
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1143
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9, !dbg !1144
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1139, metadata !DIExpression()), !dbg !1145
  store i32 %3, i32* %2, align 4, !dbg !1146, !tbaa !716
  ret %struct.quoting_options* %8, !dbg !1147
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1148 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1154, metadata !DIExpression()), !dbg !1155
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1156
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1156
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1157
  %5 = load i32, i32* %4, align 8, !dbg !1157, !tbaa !1158
  ret i32 %5, !dbg !1160
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1161 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1165, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %1, metadata !1166, metadata !DIExpression()), !dbg !1168
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1169
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1169
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1170
  store i32 %1, i32* %5, align 8, !dbg !1171, !tbaa !1158
  ret void, !dbg !1172
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1173 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1177, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata i8 %1, metadata !1178, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata i32 %2, metadata !1179, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i8 %1, metadata !1180, metadata !DIExpression()), !dbg !1188
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1189
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1189
  %6 = lshr i8 %1, 5, !dbg !1190
  %7 = zext i8 %6 to i64, !dbg !1190
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1191
  call void @llvm.dbg.value(metadata i32* %8, metadata !1181, metadata !DIExpression()), !dbg !1192
  %9 = and i8 %1, 31, !dbg !1193
  %10 = zext i8 %9 to i32, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %10, metadata !1183, metadata !DIExpression()), !dbg !1194
  %11 = load i32, i32* %8, align 4, !dbg !1195, !tbaa !716
  %12 = lshr i32 %11, %10, !dbg !1196
  %13 = and i32 %12, 1, !dbg !1197
  call void @llvm.dbg.value(metadata i32 %13, metadata !1184, metadata !DIExpression()), !dbg !1198
  %14 = and i32 %2, 1, !dbg !1199
  %15 = xor i32 %13, %14, !dbg !1200
  %16 = shl i32 %15, %10, !dbg !1201
  %17 = xor i32 %16, %11, !dbg !1202
  store i32 %17, i32* %8, align 4, !dbg !1202, !tbaa !716
  ret i32 %13, !dbg !1203
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1204 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1208, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %1, metadata !1209, metadata !DIExpression()), !dbg !1212
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1213
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1215
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1208, metadata !DIExpression()), !dbg !1211
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1216
  %6 = load i32, i32* %5, align 4, !dbg !1216, !tbaa !1217
  call void @llvm.dbg.value(metadata i32 %6, metadata !1210, metadata !DIExpression()), !dbg !1218
  store i32 %1, i32* %5, align 4, !dbg !1219, !tbaa !1217
  ret i32 %6, !dbg !1220
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1221 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1225, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i8* %1, metadata !1226, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %2, metadata !1227, metadata !DIExpression()), !dbg !1230
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1231
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1225, metadata !DIExpression()), !dbg !1228
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1234
  store i32 10, i32* %6, align 8, !dbg !1235, !tbaa !1158
  %7 = icmp ne i8* %1, null, !dbg !1236
  %8 = icmp ne i8* %2, null, !dbg !1238
  %9 = and i1 %7, %8, !dbg !1239
  br i1 %9, label %11, label %10, !dbg !1239

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1240
  unreachable, !dbg !1240

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1241
  store i8* %1, i8** %12, align 8, !dbg !1242, !tbaa !1243
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1244
  store i8* %2, i8** %13, align 8, !dbg !1245, !tbaa !1246
  ret void, !dbg !1247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1248 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1252, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %1, metadata !1253, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8* %2, metadata !1254, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata i64 %3, metadata !1255, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1256, metadata !DIExpression()), !dbg !1264
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1265
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1265
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1257, metadata !DIExpression()), !dbg !1266
  %8 = tail call i32* @__errno_location() #17, !dbg !1267
  %9 = load i32, i32* %8, align 4, !dbg !1267, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %9, metadata !1258, metadata !DIExpression()), !dbg !1268
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1269
  %11 = load i32, i32* %10, align 8, !dbg !1269, !tbaa !1158
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1270
  %13 = load i32, i32* %12, align 4, !dbg !1270, !tbaa !1217
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1271
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1272
  %16 = load i8*, i8** %15, align 8, !dbg !1272, !tbaa !1243
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1273
  %18 = load i8*, i8** %17, align 8, !dbg !1273, !tbaa !1246
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %19, metadata !1259, metadata !DIExpression()), !dbg !1275
  store i32 %9, i32* %8, align 4, !dbg !1276, !tbaa !716
  ret i64 %19, !dbg !1277
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1278 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1284, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %1, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8* %2, metadata !1286, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %3, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i32 %4, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %5, metadata !1289, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i32* %6, metadata !1290, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i8* %7, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %8, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 0, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 0, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8* null, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 0, metadata !1297, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8 0, metadata !1298, metadata !DIExpression()), !dbg !1361
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9, !dbg !1362
  %14 = icmp eq i64 %13, 1, !dbg !1363
  %15 = lshr i32 %5, 1, !dbg !1364
  %16 = trunc i32 %15 to i8, !dbg !1364
  %17 = and i8 %16, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i8 %17, metadata !1300, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8 0, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 0, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 1, metadata !1303, metadata !DIExpression()), !dbg !1367
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1368

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1358
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1359
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1360
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1361
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1369
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1365
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1366
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1367
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %39, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %38, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %37, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %36, metadata !1300, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %35, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8 %34, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %33, metadata !1297, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8* %32, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %31, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 0, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8* %30, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %29, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %28, metadata !1288, metadata !DIExpression()), !dbg !1352
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
  ], !dbg !1371

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8 1, metadata !1300, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %36, metadata !1300, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i32 5, metadata !1288, metadata !DIExpression()), !dbg !1352
  br label %93, !dbg !1372

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1300, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i32 5, metadata !1288, metadata !DIExpression()), !dbg !1352
  %43 = and i8 %36, 1, !dbg !1373
  %44 = icmp eq i8 %43, 0, !dbg !1373
  br i1 %44, label %45, label %93, !dbg !1372

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1375
  br i1 %46, label %93, label %47, !dbg !1378

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1375, !tbaa !772
  br label %93, !dbg !1375

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %28), !dbg !1379
  call void @llvm.dbg.value(metadata i8* %49, metadata !1291, metadata !DIExpression()), !dbg !1355
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %28), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %50, metadata !1292, metadata !DIExpression()), !dbg !1356
  br label %51, !dbg !1384

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %52, metadata !1291, metadata !DIExpression()), !dbg !1355
  %54 = and i8 %36, 1, !dbg !1385
  %55 = icmp eq i8 %54, 0, !dbg !1385
  br i1 %55, label %56, label %71, !dbg !1387

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 0, metadata !1294, metadata !DIExpression()), !dbg !1357
  %57 = load i8, i8* %52, align 1, !dbg !1388, !tbaa !772
  %58 = icmp eq i8 %57, 0, !dbg !1391
  br i1 %58, label %71, label %59, !dbg !1391

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %62, metadata !1294, metadata !DIExpression()), !dbg !1357
  %63 = icmp ult i64 %62, %40, !dbg !1392
  br i1 %63, label %64, label %66, !dbg !1395

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1392
  store i8 %60, i8* %65, align 1, !dbg !1392, !tbaa !772
  br label %66, !dbg !1392

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1395
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1396
  call void @llvm.dbg.value(metadata i8* %68, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %67, metadata !1294, metadata !DIExpression()), !dbg !1357
  %69 = load i8, i8* %68, align 1, !dbg !1388, !tbaa !772
  %70 = icmp eq i8 %69, 0, !dbg !1391
  br i1 %70, label %71, label %59, !dbg !1391, !llvm.loop !1397

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1357
  call void @llvm.dbg.value(metadata i64 %72, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 1, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8* %53, metadata !1296, metadata !DIExpression()), !dbg !1359
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %73, metadata !1297, metadata !DIExpression()), !dbg !1360
  br label %93, !dbg !1400

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1298, metadata !DIExpression()), !dbg !1361
  br label %75, !dbg !1401

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1369
  call void @llvm.dbg.value(metadata i8 %76, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 1, metadata !1300, metadata !DIExpression()), !dbg !1364
  br label %77, !dbg !1402

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1361
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1369
  call void @llvm.dbg.value(metadata i8 %79, metadata !1300, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %78, metadata !1298, metadata !DIExpression()), !dbg !1361
  %80 = and i8 %79, 1, !dbg !1403
  %81 = icmp eq i8 %80, 0, !dbg !1403
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1405
  br label %83, !dbg !1405

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1406
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1364
  call void @llvm.dbg.value(metadata i8 %85, metadata !1300, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %84, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i32 2, metadata !1288, metadata !DIExpression()), !dbg !1352
  %86 = and i8 %85, 1, !dbg !1407
  %87 = icmp eq i8 %86, 0, !dbg !1407
  br i1 %87, label %88, label %93, !dbg !1409

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1410
  br i1 %89, label %93, label %90, !dbg !1413

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1410, !tbaa !772
  br label %93, !dbg !1410

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1300, metadata !DIExpression()), !dbg !1364
  br label %93, !dbg !1414

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1415
  unreachable, !dbg !1415

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1357
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ], !dbg !1369
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1369
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1369
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %101, metadata !1300, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %99, metadata !1297, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %97, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i32 %94, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 0, metadata !1293, metadata !DIExpression()), !dbg !1417
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
  br label %121, !dbg !1418

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1419
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1357
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1358
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1365
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1366
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1367
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %125, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %122, metadata !1293, metadata !DIExpression()), !dbg !1417
  %130 = icmp eq i64 %125, -1, !dbg !1420
  br i1 %130, label %131, label %135, !dbg !1421

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1422
  %133 = load i8, i8* %132, align 1, !dbg !1422, !tbaa !772
  %134 = icmp eq i8 %133, 0, !dbg !1423
  br i1 %134, label %617, label %137, !dbg !1424

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1425
  br i1 %136, label %617, label %137, !dbg !1424

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1309, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 0, metadata !1310, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8 0, metadata !1311, metadata !DIExpression()), !dbg !1428
  br i1 %107, label %138, label %153, !dbg !1429

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1431
  %140 = and i1 %108, %130, !dbg !1432
  br i1 %140, label %141, label %143, !dbg !1432

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %142, metadata !1287, metadata !DIExpression()), !dbg !1351
  br label %143, !dbg !1434

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1287, metadata !DIExpression()), !dbg !1351
  %145 = icmp ugt i64 %139, %144, !dbg !1435
  br i1 %145, label %153, label %146, !dbg !1436

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1437
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1438
  %149 = icmp ne i32 %148, 0, !dbg !1439
  %150 = or i1 %149, %110, !dbg !1440
  %151 = xor i1 %149, true, !dbg !1440
  %152 = zext i1 %151 to i8, !dbg !1440
  br i1 %150, label %153, label %661, !dbg !1440

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1441
  call void @llvm.dbg.value(metadata i8 %155, metadata !1309, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i64 %154, metadata !1287, metadata !DIExpression()), !dbg !1351
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1442
  %157 = load i8, i8* %156, align 1, !dbg !1442, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %157, metadata !1304, metadata !DIExpression()), !dbg !1443
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
  ], !dbg !1444

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1445

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1446

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1310, metadata !DIExpression()), !dbg !1427
  %161 = and i8 %126, 1, !dbg !1450
  %162 = icmp eq i8 %161, 0, !dbg !1450
  %163 = and i1 %114, %162, !dbg !1450
  br i1 %163, label %164, label %180, !dbg !1450

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1452
  br i1 %165, label %166, label %168, !dbg !1456

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1452
  store i8 39, i8* %167, align 1, !dbg !1452, !tbaa !772
  br label %168, !dbg !1452

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %169, metadata !1294, metadata !DIExpression()), !dbg !1357
  %170 = icmp ult i64 %169, %129, !dbg !1457
  br i1 %170, label %171, label %173, !dbg !1460

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1457
  store i8 36, i8* %172, align 1, !dbg !1457, !tbaa !772
  br label %173, !dbg !1457

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %174, metadata !1294, metadata !DIExpression()), !dbg !1357
  %175 = icmp ult i64 %174, %129, !dbg !1461
  br i1 %175, label %176, label %178, !dbg !1464

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1461
  store i8 39, i8* %177, align 1, !dbg !1461, !tbaa !772
  br label %178, !dbg !1461

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %179, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 1, metadata !1301, metadata !DIExpression()), !dbg !1365
  br label %180, !dbg !1465

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1416
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %182, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %181, metadata !1294, metadata !DIExpression()), !dbg !1357
  %183 = icmp ult i64 %181, %129, !dbg !1466
  br i1 %183, label %184, label %186, !dbg !1469

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1466
  store i8 92, i8* %185, align 1, !dbg !1466, !tbaa !772
  br label %186, !dbg !1466

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %187, metadata !1294, metadata !DIExpression()), !dbg !1357
  br i1 %104, label %188, label %478, !dbg !1470

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1472
  %190 = icmp ult i64 %189, %154, !dbg !1473
  br i1 %190, label %191, label %467, !dbg !1474

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1475
  %193 = load i8, i8* %192, align 1, !dbg !1475, !tbaa !772
  %194 = add i8 %193, -48, !dbg !1476
  %195 = icmp ult i8 %194, 10, !dbg !1476
  br i1 %195, label %196, label %467, !dbg !1476

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1477
  br i1 %197, label %198, label %200, !dbg !1481

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1477
  store i8 48, i8* %199, align 1, !dbg !1477, !tbaa !772
  br label %200, !dbg !1477

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %201, metadata !1294, metadata !DIExpression()), !dbg !1357
  %202 = icmp ult i64 %201, %129, !dbg !1482
  br i1 %202, label %203, label %205, !dbg !1485

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1482
  store i8 48, i8* %204, align 1, !dbg !1482, !tbaa !772
  br label %205, !dbg !1482

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %206, metadata !1294, metadata !DIExpression()), !dbg !1357
  br label %467, !dbg !1486

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1487

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1488

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1489

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1491

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1493
  %213 = icmp ult i64 %212, %154, !dbg !1494
  br i1 %213, label %214, label %467, !dbg !1495

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1496
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1497
  %217 = load i8, i8* %216, align 1, !dbg !1497, !tbaa !772
  %218 = icmp eq i8 %217, 63, !dbg !1498
  br i1 %218, label %219, label %467, !dbg !1499

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1500
  %221 = load i8, i8* %220, align 1, !dbg !1500, !tbaa !772
  %222 = sext i8 %221 to i32, !dbg !1500
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
  ], !dbg !1501

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1502

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1304, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %212, metadata !1293, metadata !DIExpression()), !dbg !1417
  %225 = icmp ult i64 %123, %129, !dbg !1504
  br i1 %225, label %226, label %228, !dbg !1507

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1504
  store i8 63, i8* %227, align 1, !dbg !1504, !tbaa !772
  br label %228, !dbg !1504

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %229, metadata !1294, metadata !DIExpression()), !dbg !1357
  %230 = icmp ult i64 %229, %129, !dbg !1508
  br i1 %230, label %231, label %233, !dbg !1511

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1508
  store i8 34, i8* %232, align 1, !dbg !1508, !tbaa !772
  br label %233, !dbg !1508

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %234, metadata !1294, metadata !DIExpression()), !dbg !1357
  %235 = icmp ult i64 %234, %129, !dbg !1512
  br i1 %235, label %236, label %238, !dbg !1515

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1512
  store i8 34, i8* %237, align 1, !dbg !1512, !tbaa !772
  br label %238, !dbg !1512

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %239, metadata !1294, metadata !DIExpression()), !dbg !1357
  %240 = icmp ult i64 %239, %129, !dbg !1516
  br i1 %240, label %241, label %243, !dbg !1519

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1516
  store i8 63, i8* %242, align 1, !dbg !1516, !tbaa !772
  br label %243, !dbg !1516

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %244, metadata !1294, metadata !DIExpression()), !dbg !1357
  br label %467, !dbg !1520

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1308, metadata !DIExpression()), !dbg !1521
  br label %255, !dbg !1522

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1308, metadata !DIExpression()), !dbg !1521
  br label %255, !dbg !1523

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1308, metadata !DIExpression()), !dbg !1521
  br label %253, !dbg !1524

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1308, metadata !DIExpression()), !dbg !1521
  br label %253, !dbg !1525

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1308, metadata !DIExpression()), !dbg !1521
  br label %255, !dbg !1526

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1308, metadata !DIExpression()), !dbg !1521
  br i1 %114, label %251, label %252, !dbg !1527

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1528

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1531

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1533
  call void @llvm.dbg.value(metadata i8 %254, metadata !1308, metadata !DIExpression()), !dbg !1521
  br i1 %113, label %255, label %661, !dbg !1534

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1533
  call void @llvm.dbg.value(metadata i8 %256, metadata !1308, metadata !DIExpression()), !dbg !1521
  br i1 %103, label %524, label %478, !dbg !1536

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1537
  br i1 %258, label %259, label %264, !dbg !1539

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1540, !tbaa !772
  %261 = icmp ne i8 %260, 0, !dbg !1541
  %262 = icmp ne i64 %122, 0, !dbg !1542
  %263 = or i1 %262, %261, !dbg !1544
  br i1 %263, label %467, label %270, !dbg !1544

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1545
  %266 = icmp ne i64 %122, 0, !dbg !1542
  %267 = or i1 %266, %265, !dbg !1539
  br i1 %267, label %467, label %270, !dbg !1539

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1542
  br i1 %269, label %270, label %467, !dbg !1546

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1311, metadata !DIExpression()), !dbg !1428
  br label %271, !dbg !1547

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1533
  call void @llvm.dbg.value(metadata i8 %272, metadata !1311, metadata !DIExpression()), !dbg !1428
  br i1 %113, label %467, label %661, !dbg !1548

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 1, metadata !1311, metadata !DIExpression()), !dbg !1428
  br i1 %114, label %274, label %467, !dbg !1550

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1551

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1554
  %277 = icmp ne i64 %124, 0, !dbg !1556
  %278 = or i1 %277, %276, !dbg !1557
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1557
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %280, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %279, metadata !1295, metadata !DIExpression()), !dbg !1358
  %281 = icmp ult i64 %123, %280, !dbg !1558
  br i1 %281, label %282, label %284, !dbg !1561

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1558
  store i8 39, i8* %283, align 1, !dbg !1558, !tbaa !772
  br label %284, !dbg !1558

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %285, metadata !1294, metadata !DIExpression()), !dbg !1357
  %286 = icmp ult i64 %285, %280, !dbg !1562
  br i1 %286, label %287, label %289, !dbg !1565

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1562
  store i8 92, i8* %288, align 1, !dbg !1562, !tbaa !772
  br label %289, !dbg !1562

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %290, metadata !1294, metadata !DIExpression()), !dbg !1357
  %291 = icmp ult i64 %290, %280, !dbg !1566
  br i1 %291, label %292, label %294, !dbg !1569

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1566
  store i8 39, i8* %293, align 1, !dbg !1566, !tbaa !772
  br label %294, !dbg !1566

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %295, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, metadata !1301, metadata !DIExpression()), !dbg !1365
  br label %467, !dbg !1570

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1571

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1312, metadata !DIExpression()), !dbg !1572
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1573
  %299 = load i16*, i16** %298, align 8, !dbg !1573, !tbaa !636
  %300 = zext i8 %157 to i64, !dbg !1573
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1573
  %302 = load i16, i16* %301, align 2, !dbg !1573, !tbaa !1575
  %303 = lshr i16 %302, 14, !dbg !1576
  %304 = trunc i16 %303 to i8, !dbg !1576
  %305 = and i8 %304, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i8 %305, metadata !1315, metadata !DIExpression()), !dbg !1577
  br label %359, !dbg !1578

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #9, !dbg !1579
  store i64 0, i64* %10, align 8, !dbg !1580
  call void @llvm.dbg.value(metadata i64 0, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8 1, metadata !1315, metadata !DIExpression()), !dbg !1577
  %307 = icmp eq i64 %154, -1, !dbg !1581
  br i1 %307, label %308, label %310, !dbg !1583

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %309, metadata !1287, metadata !DIExpression()), !dbg !1351
  br label %310, !dbg !1585

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1586
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  br label %312, !dbg !1587

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1588
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1589
  call void @llvm.dbg.value(metadata i8 %314, metadata !1315, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #9, !dbg !1590
  %315 = add i64 %313, %122, !dbg !1591
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1592
  %317 = sub i64 %311, %315, !dbg !1593
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1316, metadata !DIExpression(DW_OP_deref)), !dbg !1594
  call void @llvm.dbg.value(metadata i32* %12, metadata !1334, metadata !DIExpression(DW_OP_deref)), !dbg !1595
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #9, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %318, metadata !1337, metadata !DIExpression()), !dbg !1597
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1598

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  %320 = icmp ugt i64 %311, %315, !dbg !1599
  br i1 %320, label %321, label %344, !dbg !1601

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1312, metadata !DIExpression()), !dbg !1572
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1602
  %325 = load i8, i8* %324, align 1, !dbg !1602, !tbaa !772
  %326 = icmp eq i8 %325, 0, !dbg !1601
  br i1 %326, label %344, label %327, !dbg !1603

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %328, metadata !1312, metadata !DIExpression()), !dbg !1572
  %329 = add i64 %328, %122, !dbg !1605
  %330 = icmp ult i64 %329, %311, !dbg !1599
  br i1 %330, label %321, label %344, !dbg !1601, !llvm.loop !1606

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1607
  %333 = and i1 %116, %332, !dbg !1610
  call void @llvm.dbg.value(metadata i64 1, metadata !1338, metadata !DIExpression()), !dbg !1611
  br i1 %333, label %334, label %347, !dbg !1610

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1338, metadata !DIExpression()), !dbg !1611
  %336 = add i64 %335, %315, !dbg !1612
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1613
  %338 = load i8, i8* %337, align 1, !dbg !1613, !tbaa !772
  %339 = sext i8 %338 to i32, !dbg !1613
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1614

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1615
  call void @llvm.dbg.value(metadata i64 %341, metadata !1338, metadata !DIExpression()), !dbg !1611
  %342 = icmp ult i64 %341, %318, !dbg !1607
  br i1 %342, label %334, label %347, !dbg !1616, !llvm.loop !1617

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %314, metadata !1315, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %313, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %314, metadata !1315, metadata !DIExpression()), !dbg !1577
  br label %344, !dbg !1619

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1315, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %352, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #9, !dbg !1619
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1620, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %348, metadata !1334, metadata !DIExpression()), !dbg !1595
  %349 = call i32 @iswprint(i32 %348) #9, !dbg !1622
  %350 = icmp eq i32 %349, 0, !dbg !1622
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1623
  call void @llvm.dbg.value(metadata i8 %351, metadata !1315, metadata !DIExpression()), !dbg !1577
  %352 = add i64 %318, %313, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %352, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8 %351, metadata !1315, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %352, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #9, !dbg !1619
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1316, metadata !DIExpression(DW_OP_deref)), !dbg !1594
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1625
  %354 = icmp eq i32 %353, 0, !dbg !1626
  br i1 %354, label %312, label %355, !dbg !1627, !llvm.loop !1628

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #9, !dbg !1630
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i32 2, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 2, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 2, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 2, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 2, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i32 %94, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %94, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %94, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %94, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i32 %94, metadata !1288, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i8 %100, metadata !1298, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %311, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8 %351, metadata !1315, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %352, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #9, !dbg !1619
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #9, !dbg !1630
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1631
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1632
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1632
  call void @llvm.dbg.value(metadata i8 %362, metadata !1315, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %361, metadata !1312, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i64 %360, metadata !1287, metadata !DIExpression()), !dbg !1351
  %363 = and i8 %362, 1, !dbg !1633
  %364 = icmp ne i8 %363, 0, !dbg !1633
  call void @llvm.dbg.value(metadata i8 %363, metadata !1311, metadata !DIExpression()), !dbg !1428
  %365 = icmp ult i64 %361, 2, !dbg !1634
  %366 = or i1 %364, %115, !dbg !1635
  %367 = and i1 %365, %366, !dbg !1636
  br i1 %367, label %467, label %368, !dbg !1636

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %369, metadata !1345, metadata !DIExpression()), !dbg !1638
  br label %370, !dbg !1639

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1640
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1644
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1365
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1640
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1646
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1427
  call void @llvm.dbg.value(metadata i8 %376, metadata !1310, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8 %375, metadata !1309, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %374, metadata !1304, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %373, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %372, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %371, metadata !1293, metadata !DIExpression()), !dbg !1417
  br i1 %366, label %423, label %377, !dbg !1650

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1651

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1310, metadata !DIExpression()), !dbg !1427
  %379 = and i8 %373, 1, !dbg !1654
  %380 = icmp eq i8 %379, 0, !dbg !1654
  %381 = and i1 %114, %380, !dbg !1654
  br i1 %381, label %382, label %398, !dbg !1654

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1656
  br i1 %383, label %384, label %386, !dbg !1660

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1656
  store i8 39, i8* %385, align 1, !dbg !1656, !tbaa !772
  br label %386, !dbg !1656

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %387, metadata !1294, metadata !DIExpression()), !dbg !1357
  %388 = icmp ult i64 %387, %129, !dbg !1661
  br i1 %388, label %389, label %391, !dbg !1664

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1661
  store i8 36, i8* %390, align 1, !dbg !1661, !tbaa !772
  br label %391, !dbg !1661

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %392, metadata !1294, metadata !DIExpression()), !dbg !1357
  %393 = icmp ult i64 %392, %129, !dbg !1665
  br i1 %393, label %394, label %396, !dbg !1668

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1665
  store i8 39, i8* %395, align 1, !dbg !1665, !tbaa !772
  br label %396, !dbg !1665

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %397, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 1, metadata !1301, metadata !DIExpression()), !dbg !1365
  br label %398, !dbg !1669

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1416
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %400, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %399, metadata !1294, metadata !DIExpression()), !dbg !1357
  %401 = icmp ult i64 %399, %129, !dbg !1670
  br i1 %401, label %402, label %404, !dbg !1673

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1670
  store i8 92, i8* %403, align 1, !dbg !1670, !tbaa !772
  br label %404, !dbg !1670

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %405, metadata !1294, metadata !DIExpression()), !dbg !1357
  %406 = icmp ult i64 %405, %129, !dbg !1674
  br i1 %406, label %407, label %411, !dbg !1677

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1674
  %409 = or i8 %408, 48, !dbg !1674
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1674
  store i8 %409, i8* %410, align 1, !dbg !1674, !tbaa !772
  br label %411, !dbg !1674

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %412, metadata !1294, metadata !DIExpression()), !dbg !1357
  %413 = icmp ult i64 %412, %129, !dbg !1678
  br i1 %413, label %414, label %419, !dbg !1681

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1678
  %416 = and i8 %415, 7, !dbg !1678
  %417 = or i8 %416, 48, !dbg !1678
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1678
  store i8 %417, i8* %418, align 1, !dbg !1678, !tbaa !772
  br label %419, !dbg !1678

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %420, metadata !1294, metadata !DIExpression()), !dbg !1357
  %421 = and i8 %374, 7, !dbg !1682
  %422 = or i8 %421, 48, !dbg !1683
  call void @llvm.dbg.value(metadata i8 %422, metadata !1304, metadata !DIExpression()), !dbg !1443
  br label %432, !dbg !1684

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1685
  %425 = icmp eq i8 %424, 0, !dbg !1685
  br i1 %425, label %432, label %426, !dbg !1686

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1687
  br i1 %427, label %428, label %430, !dbg !1690

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1687
  store i8 92, i8* %429, align 1, !dbg !1687, !tbaa !772
  br label %430, !dbg !1687

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %431, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, metadata !1309, metadata !DIExpression()), !dbg !1426
  br label %432, !dbg !1691

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1692
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1365
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1693
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1694
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1696
  call void @llvm.dbg.value(metadata i8 %437, metadata !1310, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8 %436, metadata !1309, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %435, metadata !1304, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %434, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %433, metadata !1294, metadata !DIExpression()), !dbg !1357
  %438 = add i64 %371, 1, !dbg !1697
  %439 = icmp ugt i64 %369, %438, !dbg !1699
  br i1 %439, label %440, label %562, !dbg !1700

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1701
  %442 = icmp ne i8 %441, 0, !dbg !1701
  %443 = and i8 %437, 1, !dbg !1701
  %444 = icmp eq i8 %443, 0, !dbg !1701
  %445 = and i1 %442, %444, !dbg !1701
  br i1 %445, label %446, label %457, !dbg !1701

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1704
  br i1 %447, label %448, label %450, !dbg !1708

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1704
  store i8 39, i8* %449, align 1, !dbg !1704, !tbaa !772
  br label %450, !dbg !1704

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %451, metadata !1294, metadata !DIExpression()), !dbg !1357
  %452 = icmp ult i64 %451, %129, !dbg !1709
  br i1 %452, label %453, label %455, !dbg !1712

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1709
  store i8 39, i8* %454, align 1, !dbg !1709, !tbaa !772
  br label %455, !dbg !1709

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %456, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, metadata !1301, metadata !DIExpression()), !dbg !1365
  br label %457, !dbg !1713

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1714
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %459, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %458, metadata !1294, metadata !DIExpression()), !dbg !1357
  %460 = icmp ult i64 %458, %129, !dbg !1715
  br i1 %460, label %461, label %463, !dbg !1717

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1715
  store i8 %435, i8* %462, align 1, !dbg !1715, !tbaa !772
  br label %463, !dbg !1715

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %464, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %438, metadata !1293, metadata !DIExpression()), !dbg !1417
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1718
  %466 = load i8, i8* %465, align 1, !dbg !1718, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %466, metadata !1304, metadata !DIExpression()), !dbg !1443
  br label %370, !dbg !1719, !llvm.loop !1720

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1723
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1416
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1358
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1724
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1416
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1416
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1441
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1441
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1441
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %476, metadata !1311, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %475, metadata !1310, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8 %155, metadata !1309, metadata !DIExpression()), !dbg !1426
  call void @llvm.dbg.value(metadata i8 %474, metadata !1304, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %473, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %472, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %471, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %470, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %469, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %468, metadata !1293, metadata !DIExpression()), !dbg !1417
  br i1 %105, label %489, label %478, !dbg !1725

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
  br i1 %112, label %490, label %512, !dbg !1727

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1728

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
  %501 = lshr i8 %494, 5, !dbg !1729
  %502 = zext i8 %501 to i64, !dbg !1729
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1730
  %504 = load i32, i32* %503, align 4, !dbg !1730, !tbaa !716
  %505 = and i8 %494, 31, !dbg !1731
  %506 = zext i8 %505 to i32, !dbg !1731
  %507 = shl i32 1, %506, !dbg !1732
  %508 = and i32 %504, %507, !dbg !1732
  %509 = icmp eq i32 %508, 0, !dbg !1732
  %510 = icmp eq i8 %155, 0, !dbg !1733
  %511 = and i1 %510, %509, !dbg !1734
  br i1 %511, label %562, label %524, !dbg !1734

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
  %523 = icmp eq i8 %155, 0, !dbg !1733
  br i1 %523, label %562, label %524, !dbg !1735

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1736
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1416
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1358
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1724
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1365
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1366
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1737
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1441
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %532, metadata !1311, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %531, metadata !1304, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %530, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %529, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %528, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %527, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %526, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %525, metadata !1293, metadata !DIExpression()), !dbg !1417
  br i1 %110, label %534, label %661, !dbg !1740

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1310, metadata !DIExpression()), !dbg !1427
  %535 = and i8 %529, 1, !dbg !1742
  %536 = icmp eq i8 %535, 0, !dbg !1742
  %537 = and i1 %114, %536, !dbg !1742
  br i1 %537, label %538, label %554, !dbg !1742

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1744
  br i1 %539, label %540, label %542, !dbg !1748

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1744
  store i8 39, i8* %541, align 1, !dbg !1744, !tbaa !772
  br label %542, !dbg !1744

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %543, metadata !1294, metadata !DIExpression()), !dbg !1357
  %544 = icmp ult i64 %543, %533, !dbg !1749
  br i1 %544, label %545, label %547, !dbg !1752

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1749
  store i8 36, i8* %546, align 1, !dbg !1749, !tbaa !772
  br label %547, !dbg !1749

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %548, metadata !1294, metadata !DIExpression()), !dbg !1357
  %549 = icmp ult i64 %548, %533, !dbg !1753
  br i1 %549, label %550, label %552, !dbg !1756

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1753
  store i8 39, i8* %551, align 1, !dbg !1753, !tbaa !772
  br label %552, !dbg !1753

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %553, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 1, metadata !1301, metadata !DIExpression()), !dbg !1365
  br label %554, !dbg !1757

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1714
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %556, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %555, metadata !1294, metadata !DIExpression()), !dbg !1357
  %557 = icmp ult i64 %555, %533, !dbg !1758
  br i1 %557, label %558, label %560, !dbg !1761

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1758
  store i8 92, i8* %559, align 1, !dbg !1758, !tbaa !772
  br label %560, !dbg !1758

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %561, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %572, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %571, metadata !1311, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %570, metadata !1310, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8 %569, metadata !1304, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %568, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %567, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %566, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %565, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %564, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %563, metadata !1293, metadata !DIExpression()), !dbg !1417
  br label %589, !dbg !1762

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1736
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1416
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1358
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1724
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1365
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1366
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1765
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1441
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1441
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %571, metadata !1311, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %570, metadata !1310, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i8 %569, metadata !1304, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %568, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %567, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %566, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %565, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %564, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %563, metadata !1293, metadata !DIExpression()), !dbg !1417
  %573 = and i8 %567, 1, !dbg !1762
  %574 = icmp ne i8 %573, 0, !dbg !1762
  %575 = and i8 %570, 1, !dbg !1762
  %576 = icmp eq i8 %575, 0, !dbg !1762
  %577 = and i1 %574, %576, !dbg !1762
  br i1 %577, label %578, label %589, !dbg !1762

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1766
  br i1 %579, label %580, label %582, !dbg !1770

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1766
  store i8 39, i8* %581, align 1, !dbg !1766, !tbaa !772
  br label %582, !dbg !1766

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %583, metadata !1294, metadata !DIExpression()), !dbg !1357
  %584 = icmp ult i64 %583, %572, !dbg !1771
  br i1 %584, label %585, label %587, !dbg !1774

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1771
  store i8 39, i8* %586, align 1, !dbg !1771, !tbaa !772
  br label %587, !dbg !1771

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %588, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i8 0, metadata !1301, metadata !DIExpression()), !dbg !1365
  br label %589, !dbg !1775

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1714
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8 %598, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %597, metadata !1294, metadata !DIExpression()), !dbg !1357
  %599 = icmp ult i64 %597, %590, !dbg !1776
  br i1 %599, label %600, label %602, !dbg !1779

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1776
  store i8 %592, i8* %601, align 1, !dbg !1776, !tbaa !772
  br label %602, !dbg !1776

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %603, metadata !1294, metadata !DIExpression()), !dbg !1357
  %604 = and i8 %591, 1, !dbg !1780
  %605 = icmp eq i8 %604, 0, !dbg !1780
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1782
  call void @llvm.dbg.value(metadata i8 %606, metadata !1303, metadata !DIExpression()), !dbg !1367
  br label %607, !dbg !1783

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1736
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1416
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1358
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1724
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1365
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1416
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1367
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 %614, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %613, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %612, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %611, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %610, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %609, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %608, metadata !1293, metadata !DIExpression()), !dbg !1417
  %616 = add i64 %608, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %616, metadata !1293, metadata !DIExpression()), !dbg !1417
  br label %121, !dbg !1785, !llvm.loop !1786

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %618, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %618, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %125, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %125, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %126, metadata !1301, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %127, metadata !1302, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %128, metadata !1303, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  %619 = icmp eq i64 %123, 0, !dbg !1788
  %620 = and i1 %114, %619, !dbg !1790
  %621 = xor i1 %620, true, !dbg !1790
  %622 = or i1 %110, %621, !dbg !1790
  br i1 %622, label %623, label %661, !dbg !1790

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1791
  %625 = xor i1 %624, true, !dbg !1791
  %626 = and i8 %127, 1, !dbg !1793
  %627 = icmp eq i8 %626, 0, !dbg !1793
  %628 = or i1 %627, %625, !dbg !1791
  br i1 %628, label %638, label %629, !dbg !1791

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1794
  %631 = icmp eq i8 %630, 0, !dbg !1794
  br i1 %631, label %634, label %632, !dbg !1797

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %618, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %618, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %618, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %618, metadata !1287, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %95, metadata !1291, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata i8* %96, metadata !1292, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.value(metadata i64 %124, metadata !1295, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %125, metadata !1287, metadata !DIExpression()), !dbg !1351
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1798
  br label %671, !dbg !1799

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1800
  %636 = icmp ne i64 %124, 0, !dbg !1802
  %637 = and i1 %636, %635, !dbg !1803
  br i1 %637, label %27, label %638, !dbg !1803

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %129, metadata !1285, metadata !DIExpression()), !dbg !1349
  %639 = icmp ne i8* %98, null, !dbg !1804
  %640 = and i1 %639, %110, !dbg !1806
  br i1 %640, label %641, label %656, !dbg !1806

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %123, metadata !1294, metadata !DIExpression()), !dbg !1357
  %642 = load i8, i8* %98, align 1, !dbg !1807, !tbaa !772
  %643 = icmp eq i8 %642, 0, !dbg !1810
  br i1 %643, label %656, label %644, !dbg !1810

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %647, metadata !1294, metadata !DIExpression()), !dbg !1357
  %648 = icmp ult i64 %647, %129, !dbg !1811
  br i1 %648, label %649, label %651, !dbg !1814

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1811
  store i8 %645, i8* %650, align 1, !dbg !1811, !tbaa !772
  br label %651, !dbg !1811

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1814
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1815
  call void @llvm.dbg.value(metadata i8* %653, metadata !1296, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %652, metadata !1294, metadata !DIExpression()), !dbg !1357
  %654 = load i8, i8* %653, align 1, !dbg !1807, !tbaa !772
  %655 = icmp eq i8 %654, 0, !dbg !1810
  br i1 %655, label %656, label %644, !dbg !1810, !llvm.loop !1816

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1357
  call void @llvm.dbg.value(metadata i64 %657, metadata !1294, metadata !DIExpression()), !dbg !1357
  %658 = icmp ult i64 %657, %129, !dbg !1818
  br i1 %658, label %659, label %671, !dbg !1820

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1821
  store i8 0, i8* %660, align 1, !dbg !1822, !tbaa !772
  br label %671, !dbg !1821

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1285, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %663, metadata !1287, metadata !DIExpression()), !dbg !1351
  %665 = icmp ne i32 %662, 2, !dbg !1823
  %666 = icmp eq i8 %102, 0, !dbg !1825
  %667 = or i1 %665, %666, !dbg !1826
  call void @llvm.dbg.value(metadata i32 4, metadata !1288, metadata !DIExpression()), !dbg !1352
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %668, metadata !1288, metadata !DIExpression()), !dbg !1352
  %669 = and i32 %5, -3, !dbg !1827
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1828
  br label %671, !dbg !1829

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1830
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1831 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1835, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 %1, metadata !1836, metadata !DIExpression()), !dbg !1840
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9, !dbg !1841
  call void @llvm.dbg.value(metadata i8* %3, metadata !1837, metadata !DIExpression()), !dbg !1842
  %4 = icmp eq i8* %3, %0, !dbg !1843
  br i1 %4, label %5, label %71, !dbg !1845

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9, !dbg !1846
  call void @llvm.dbg.value(metadata i8* %6, metadata !1838, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i8* %6, metadata !1848, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* null, metadata !1854, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 85, metadata !1855, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 84, metadata !1856, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 70, metadata !1857, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8 45, metadata !1858, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 56, metadata !1859, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 0, metadata !1860, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 0, metadata !1861, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 0, metadata !1862, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1863, metadata !DIExpression()), !dbg !1876
  %7 = load i8, i8* %6, align 1, !dbg !1877, !tbaa !772
  %8 = and i8 %7, -33, !dbg !1877
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1877

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1879, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* null, metadata !1884, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 84, metadata !1885, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 70, metadata !1886, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 45, metadata !1887, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 56, metadata !1888, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 0, metadata !1890, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8 0, metadata !1892, metadata !DIExpression()), !dbg !1905
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1906
  %11 = load i8, i8* %10, align 1, !dbg !1906, !tbaa !772
  %12 = and i8 %11, -33, !dbg !1906
  %13 = icmp eq i8 %12, 84, !dbg !1906
  br i1 %13, label %14, label %68, !dbg !1906

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1908, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8* null, metadata !1913, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i8 70, metadata !1914, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 45, metadata !1915, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8 56, metadata !1916, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 0, metadata !1917, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 0, metadata !1918, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, metadata !1919, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 0, metadata !1920, metadata !DIExpression()), !dbg !1932
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1933
  %16 = load i8, i8* %15, align 1, !dbg !1933, !tbaa !772
  %17 = and i8 %16, -33, !dbg !1933
  %18 = icmp eq i8 %17, 70, !dbg !1933
  br i1 %18, label %19, label %68, !dbg !1933

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1935, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8* null, metadata !1940, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 45, metadata !1941, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 56, metadata !1942, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, metadata !1943, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1944, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 0, metadata !1945, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !1957
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1958
  %21 = load i8, i8* %20, align 1, !dbg !1958, !tbaa !772
  %22 = icmp eq i8 %21, 45, !dbg !1958
  br i1 %22, label %23, label %68, !dbg !1960

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1961, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8* null, metadata !1966, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 56, metadata !1967, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 0, metadata !1969, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 0, metadata !1971, metadata !DIExpression()), !dbg !1981
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1982
  %25 = load i8, i8* %24, align 1, !dbg !1982, !tbaa !772
  %26 = icmp eq i8 %25, 56, !dbg !1982
  br i1 %26, label %27, label %68, !dbg !1984

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1985, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* null, metadata !1990, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 0, metadata !1991, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 0, metadata !1992, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !2003
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2004
  %29 = load i8, i8* %28, align 1, !dbg !2004, !tbaa !772
  %30 = icmp eq i8 %29, 0, !dbg !2004
  br i1 %30, label %31, label %68, !dbg !2006

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2007, !tbaa !772
  %33 = icmp eq i8 %32, 96, !dbg !2008
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !2007
  br label %71, !dbg !2009

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1879, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8* null, metadata !1884, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i8 66, metadata !1885, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8 49, metadata !1886, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i8 56, metadata !1887, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 48, metadata !1888, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8 51, metadata !1889, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 48, metadata !1890, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i8 0, metadata !1891, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i8 0, metadata !1892, metadata !DIExpression()), !dbg !2022
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2023
  %37 = load i8, i8* %36, align 1, !dbg !2023, !tbaa !772
  %38 = and i8 %37, -33, !dbg !2023
  %39 = icmp eq i8 %38, 66, !dbg !2023
  br i1 %39, label %40, label %68, !dbg !2023

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1908, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8* null, metadata !1913, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8 49, metadata !1914, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 56, metadata !1915, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 48, metadata !1916, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8 51, metadata !1917, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i8 48, metadata !1918, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 0, metadata !1919, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1920, metadata !DIExpression()), !dbg !2033
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2034
  %42 = load i8, i8* %41, align 1, !dbg !2034, !tbaa !772
  %43 = icmp eq i8 %42, 49, !dbg !2034
  br i1 %43, label %44, label %68, !dbg !2035

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1935, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* null, metadata !1940, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 56, metadata !1941, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 48, metadata !1942, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 51, metadata !1943, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8 48, metadata !1944, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i8 0, metadata !1945, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 0, metadata !1946, metadata !DIExpression()), !dbg !2044
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2045
  %46 = load i8, i8* %45, align 1, !dbg !2045, !tbaa !772
  %47 = icmp eq i8 %46, 56, !dbg !2045
  br i1 %47, label %48, label %68, !dbg !2046

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1961, metadata !DIExpression()), !dbg !2047
  call void @llvm.dbg.value(metadata i8* null, metadata !1966, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 48, metadata !1967, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i8 51, metadata !1968, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 48, metadata !1969, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i8 0, metadata !1971, metadata !DIExpression()), !dbg !2054
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2055
  %50 = load i8, i8* %49, align 1, !dbg !2055, !tbaa !772
  %51 = icmp eq i8 %50, 48, !dbg !2055
  br i1 %51, label %52, label %68, !dbg !2056

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1985, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* null, metadata !1990, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 51, metadata !1991, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 48, metadata !1992, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 0, metadata !1993, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 0, metadata !1994, metadata !DIExpression()), !dbg !2063
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2064
  %54 = load i8, i8* %53, align 1, !dbg !2064, !tbaa !772
  %55 = icmp eq i8 %54, 51, !dbg !2064
  br i1 %55, label %56, label %68, !dbg !2065

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2066, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* null, metadata !2071, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 48, metadata !2072, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !2074, metadata !DIExpression()), !dbg !2082
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2083
  %58 = load i8, i8* %57, align 1, !dbg !2083, !tbaa !772
  %59 = icmp eq i8 %58, 48, !dbg !2083
  br i1 %59, label %60, label %68, !dbg !2085

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2086, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8* null, metadata !2091, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 0, metadata !2092, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !2093, metadata !DIExpression()), !dbg !2100
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2101
  %62 = load i8, i8* %61, align 1, !dbg !2101, !tbaa !772
  %63 = icmp eq i8 %62, 0, !dbg !2101
  br i1 %63, label %64, label %68, !dbg !2103

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2104, !tbaa !772
  %66 = icmp eq i8 %65, 96, !dbg !2105
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2104
  br label %71, !dbg !2106

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2107
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2108
  br label %71, !dbg !2109

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2110
  ret i8* %72, !dbg !2111
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2112 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2116, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %1, metadata !2117, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2118, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8* %0, metadata !2122, metadata !DIExpression()) #9, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %1, metadata !2127, metadata !DIExpression()) #9, !dbg !2137
  call void @llvm.dbg.value(metadata i64* null, metadata !2128, metadata !DIExpression()) #9, !dbg !2138
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2129, metadata !DIExpression()) #9, !dbg !2139
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2140
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2140
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2130, metadata !DIExpression()) #9, !dbg !2141
  %6 = tail call i32* @__errno_location() #17, !dbg !2142
  %7 = load i32, i32* %6, align 4, !dbg !2142, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %7, metadata !2131, metadata !DIExpression()) #9, !dbg !2143
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2144
  %9 = load i32, i32* %8, align 4, !dbg !2144, !tbaa !1217
  %10 = or i32 %9, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %10, metadata !2132, metadata !DIExpression()) #9, !dbg !2146
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2147
  %12 = load i32, i32* %11, align 8, !dbg !2147, !tbaa !1158
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2148
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2149
  %15 = load i8*, i8** %14, align 8, !dbg !2149, !tbaa !1243
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2150
  %17 = load i8*, i8** %16, align 8, !dbg !2150, !tbaa !1246
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #9, !dbg !2151
  %19 = add i64 %18, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %19, metadata !2133, metadata !DIExpression()) #9, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %19, metadata !2154, metadata !DIExpression()) #9, !dbg !2159
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9, !dbg !2161
  call void @llvm.dbg.value(metadata i8* %20, metadata !2134, metadata !DIExpression()) #9, !dbg !2162
  %21 = load i32, i32* %11, align 8, !dbg !2163, !tbaa !1158
  %22 = load i8*, i8** %14, align 8, !dbg !2164, !tbaa !1243
  %23 = load i8*, i8** %16, align 8, !dbg !2165, !tbaa !1246
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #9, !dbg !2166
  store i32 %7, i32* %6, align 4, !dbg !2167, !tbaa !716
  ret i8* %20, !dbg !2168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2123 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2122, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %1, metadata !2127, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64* %2, metadata !2128, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2129, metadata !DIExpression()), !dbg !2172
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2173
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2130, metadata !DIExpression()), !dbg !2174
  %7 = tail call i32* @__errno_location() #17, !dbg !2175
  %8 = load i32, i32* %7, align 4, !dbg !2175, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %8, metadata !2131, metadata !DIExpression()), !dbg !2176
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2177
  %10 = load i32, i32* %9, align 4, !dbg !2177, !tbaa !1217
  %11 = icmp ne i64* %2, null, !dbg !2178
  %12 = xor i1 %11, true, !dbg !2178
  %13 = zext i1 %12 to i32, !dbg !2178
  %14 = or i32 %10, %13, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %14, metadata !2132, metadata !DIExpression()), !dbg !2180
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2181
  %16 = load i32, i32* %15, align 8, !dbg !2181, !tbaa !1158
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2182
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2183
  %19 = load i8*, i8** %18, align 8, !dbg !2183, !tbaa !1243
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2184
  %21 = load i8*, i8** %20, align 8, !dbg !2184, !tbaa !1246
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2185
  %23 = add i64 %22, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %23, metadata !2133, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64 %23, metadata !2154, metadata !DIExpression()) #9, !dbg !2188
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9, !dbg !2190
  call void @llvm.dbg.value(metadata i8* %24, metadata !2134, metadata !DIExpression()), !dbg !2191
  %25 = load i32, i32* %15, align 8, !dbg !2192, !tbaa !1158
  %26 = load i8*, i8** %18, align 8, !dbg !2193, !tbaa !1243
  %27 = load i8*, i8** %20, align 8, !dbg !2194, !tbaa !1246
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2195
  store i32 %8, i32* %7, align 4, !dbg !2196, !tbaa !716
  br i1 %11, label %29, label %30, !dbg !2197

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2198, !tbaa !2200
  br label %30, !dbg !2201

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2203 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2207, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2205, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i32 1, metadata !2206, metadata !DIExpression()), !dbg !2209
  %2 = load i32, i32* @nslots, align 4, !dbg !2210, !tbaa !716
  %3 = icmp sgt i32 %2, 1, !dbg !2213
  br i1 %3, label %4, label %12, !dbg !2214

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2206, metadata !DIExpression()), !dbg !2209
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2215
  %7 = load i8*, i8** %6, align 8, !dbg !2215, !tbaa !2216
  tail call void @free(i8* %7) #9, !dbg !2218
  %8 = add nuw nsw i64 %5, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i32 undef, metadata !2206, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2209
  %9 = load i32, i32* @nslots, align 4, !dbg !2210, !tbaa !716
  %10 = sext i32 %9 to i64, !dbg !2213
  %11 = icmp slt i64 %8, %10, !dbg !2213
  br i1 %11, label %4, label %12, !dbg !2214, !llvm.loop !2220

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2222
  %14 = load i8*, i8** %13, align 8, !dbg !2222, !tbaa !2216
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2224
  br i1 %15, label %17, label %16, !dbg !2225

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #9, !dbg !2226
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2228, !tbaa !2229
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2230, !tbaa !2216
  br label %17, !dbg !2231

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2232
  br i1 %18, label %21, label %19, !dbg !2234

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2235
  tail call void @free(i8* %20) #9, !dbg !2237
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2238, !tbaa !636
  br label %21, !dbg !2239

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2240, !tbaa !716
  ret void, !dbg !2241
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2242 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2246, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %1, metadata !2247, metadata !DIExpression()), !dbg !2249
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2250
  ret i8* %3, !dbg !2251
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2252 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i8* %1, metadata !2257, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %2, metadata !2258, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2259, metadata !DIExpression()), !dbg !2274
  %5 = tail call i32* @__errno_location() #17, !dbg !2275
  %6 = load i32, i32* %5, align 4, !dbg !2275, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %6, metadata !2260, metadata !DIExpression()), !dbg !2276
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2277, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2261, metadata !DIExpression()), !dbg !2278
  %8 = icmp slt i32 %0, 0, !dbg !2279
  br i1 %8, label %9, label %10, !dbg !2281

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2282
  unreachable, !dbg !2282

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2283, !tbaa !716
  %12 = icmp sgt i32 %11, %0, !dbg !2284
  br i1 %12, label %34, label %13, !dbg !2285

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2286
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2265, metadata !DIExpression()), !dbg !2287
  %15 = icmp eq i32 %0, 2147483647, !dbg !2288
  br i1 %15, label %16, label %17, !dbg !2290

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2291
  unreachable, !dbg !2291

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2292
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2292
  %20 = add nsw i32 %0, 1, !dbg !2293
  %21 = sext i32 %20 to i64, !dbg !2294
  %22 = shl nsw i64 %21, 4, !dbg !2295
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9, !dbg !2296
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2296
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2261, metadata !DIExpression()), !dbg !2278
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2297, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2298

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2299, !tbaa.struct !2301
  br label %26, !dbg !2302

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2303, !tbaa !716
  %28 = sext i32 %27 to i64, !dbg !2304
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2304
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2305
  %31 = sub nsw i32 %20, %27, !dbg !2306
  %32 = sext i32 %31 to i64, !dbg !2307
  %33 = shl nsw i64 %32, 4, !dbg !2308
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2305
  store i32 %20, i32* @nslots, align 4, !dbg !2309, !tbaa !716
  br label %34, !dbg !2310

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2311
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2261, metadata !DIExpression()), !dbg !2278
  %36 = sext i32 %0 to i64, !dbg !2312
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2313
  %38 = load i64, i64* %37, align 8, !dbg !2313, !tbaa !2229
  call void @llvm.dbg.value(metadata i64 %38, metadata !2266, metadata !DIExpression()), !dbg !2314
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2315
  %40 = load i8*, i8** %39, align 8, !dbg !2315, !tbaa !2216
  call void @llvm.dbg.value(metadata i8* %40, metadata !2268, metadata !DIExpression()), !dbg !2316
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2317
  %42 = load i32, i32* %41, align 4, !dbg !2317, !tbaa !1217
  %43 = or i32 %42, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i32 %43, metadata !2269, metadata !DIExpression()), !dbg !2319
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2320
  %45 = load i32, i32* %44, align 8, !dbg !2320, !tbaa !1158
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2321
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2322
  %48 = load i8*, i8** %47, align 8, !dbg !2322, !tbaa !1243
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2323
  %50 = load i8*, i8** %49, align 8, !dbg !2323, !tbaa !1246
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %51, metadata !2270, metadata !DIExpression()), !dbg !2325
  %52 = icmp ugt i64 %38, %51, !dbg !2326
  br i1 %52, label %63, label %53, !dbg !2328

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %54, metadata !2266, metadata !DIExpression()), !dbg !2314
  store i64 %54, i64* %37, align 8, !dbg !2331, !tbaa !2229
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2332
  br i1 %55, label %57, label %56, !dbg !2334

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #9, !dbg !2335
  br label %57, !dbg !2335

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2154, metadata !DIExpression()) #9, !dbg !2336
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9, !dbg !2338
  call void @llvm.dbg.value(metadata i8* %58, metadata !2268, metadata !DIExpression()), !dbg !2316
  store i8* %58, i8** %39, align 8, !dbg !2339, !tbaa !2216
  %59 = load i32, i32* %44, align 8, !dbg !2340, !tbaa !1158
  %60 = load i8*, i8** %47, align 8, !dbg !2341, !tbaa !1243
  %61 = load i8*, i8** %49, align 8, !dbg !2342, !tbaa !1246
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2343
  br label %63, !dbg !2344

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2345
  call void @llvm.dbg.value(metadata i8* %64, metadata !2268, metadata !DIExpression()), !dbg !2316
  store i32 %6, i32* %5, align 4, !dbg !2346, !tbaa !716
  ret i8* %64, !dbg !2347
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i8* %1, metadata !2353, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %2, metadata !2354, metadata !DIExpression()), !dbg !2357
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2358
  ret i8* %4, !dbg !2359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2360 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2364, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 0, metadata !2246, metadata !DIExpression()) #9, !dbg !2366
  call void @llvm.dbg.value(metadata i8* %0, metadata !2247, metadata !DIExpression()) #9, !dbg !2368
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2369
  ret i8* %2, !dbg !2370
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2375, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %1, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 0, metadata !2352, metadata !DIExpression()) #9, !dbg !2379
  call void @llvm.dbg.value(metadata i8* %0, metadata !2353, metadata !DIExpression()) #9, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %1, metadata !2354, metadata !DIExpression()) #9, !dbg !2382
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9, !dbg !2383
  ret i8* %3, !dbg !2384
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2385 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2389, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %2, metadata !2391, metadata !DIExpression()), !dbg !2395
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2396
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2396
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2392, metadata !DIExpression(DW_OP_deref)), !dbg !2397
  call void @llvm.dbg.value(metadata i32 %1, metadata !2398, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #9, !dbg !2406, !alias.scope !2407
  %6 = icmp eq i32 %1, 10, !dbg !2410
  br i1 %6, label %7, label %8, !dbg !2412

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2413, !noalias !2407
  unreachable, !dbg !2413

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2414
  store i32 %1, i32* %9, align 8, !dbg !2415, !tbaa !1158, !alias.scope !2407
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2392, metadata !DIExpression(DW_OP_deref)), !dbg !2397
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2403, metadata !DIExpression(DW_OP_deref)), !dbg !2406
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2416
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2417
  ret i8* %10, !dbg !2418
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2419 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %1, metadata !2424, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %2, metadata !2425, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i64 %3, metadata !2426, metadata !DIExpression()), !dbg !2431
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2432
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2427, metadata !DIExpression(DW_OP_deref)), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %1, metadata !2398, metadata !DIExpression()) #9, !dbg !2434
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #9, !dbg !2436, !alias.scope !2437
  %7 = icmp eq i32 %1, 10, !dbg !2440
  br i1 %7, label %8, label %9, !dbg !2441

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2442, !noalias !2437
  unreachable, !dbg !2442

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2443
  store i32 %1, i32* %10, align 8, !dbg !2444, !tbaa !1158, !alias.scope !2437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2427, metadata !DIExpression(DW_OP_deref)), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2403, metadata !DIExpression(DW_OP_deref)), !dbg !2436
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2445
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2446
  ret i8* %11, !dbg !2447
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2448 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2452, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %1, metadata !2453, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 0, metadata !2389, metadata !DIExpression()) #9, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()) #9, !dbg !2458
  call void @llvm.dbg.value(metadata i8* %1, metadata !2391, metadata !DIExpression()) #9, !dbg !2459
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2460
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2460
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2392, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %0, metadata !2398, metadata !DIExpression()) #9, !dbg !2462
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #9, !dbg !2464, !alias.scope !2465
  %5 = icmp eq i32 %0, 10, !dbg !2468
  br i1 %5, label %6, label %7, !dbg !2469

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2470, !noalias !2465
  unreachable, !dbg !2470

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2471
  store i32 %0, i32* %8, align 8, !dbg !2472, !tbaa !1158, !alias.scope !2465
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2392, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2403, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2464
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2473
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2474
  ret i8* %9, !dbg !2475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2476 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2480, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %1, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %2, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()) #9, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %0, metadata !2424, metadata !DIExpression()) #9, !dbg !2488
  call void @llvm.dbg.value(metadata i8* %1, metadata !2425, metadata !DIExpression()) #9, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %2, metadata !2426, metadata !DIExpression()) #9, !dbg !2490
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2491
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2427, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %0, metadata !2398, metadata !DIExpression()) #9, !dbg !2493
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #9, !dbg !2495, !alias.scope !2496
  %6 = icmp eq i32 %0, 10, !dbg !2499
  br i1 %6, label %7, label %8, !dbg !2500

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2501, !noalias !2496
  unreachable, !dbg !2501

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2502
  store i32 %0, i32* %9, align 8, !dbg !2503, !tbaa !1158, !alias.scope !2496
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2427, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2492
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2403, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2495
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #9, !dbg !2504
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2505
  ret i8* %10, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2507 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %2, metadata !2513, metadata !DIExpression()), !dbg !2517
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2518
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2519, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2521
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1177, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 %2, metadata !1178, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 1, metadata !1179, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %2, metadata !1180, metadata !DIExpression()), !dbg !2526
  %6 = lshr i8 %2, 5, !dbg !2527
  %7 = zext i8 %6 to i64, !dbg !2527
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2528
  call void @llvm.dbg.value(metadata i32* %8, metadata !1181, metadata !DIExpression()), !dbg !2529
  %9 = and i8 %2, 31, !dbg !2530
  %10 = zext i8 %9 to i32, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %10, metadata !1183, metadata !DIExpression()), !dbg !2531
  %11 = load i32, i32* %8, align 4, !dbg !2532, !tbaa !716
  %12 = lshr i32 %11, %10, !dbg !2533
  %13 = and i32 %12, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i32 %13, metadata !1184, metadata !DIExpression()), !dbg !2535
  %14 = xor i32 %13, 1, !dbg !2536
  %15 = shl i32 %14, %10, !dbg !2537
  %16 = xor i32 %15, %11, !dbg !2538
  store i32 %16, i32* %8, align 4, !dbg !2538, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2521
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2539
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2540
  ret i8* %17, !dbg !2541
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2542 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2546, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 %1, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()) #9, !dbg !2550
  call void @llvm.dbg.value(metadata i64 -1, metadata !2512, metadata !DIExpression()) #9, !dbg !2552
  call void @llvm.dbg.value(metadata i8 %1, metadata !2513, metadata !DIExpression()) #9, !dbg !2553
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2554
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !2555, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2514, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1177, metadata !DIExpression()) #9, !dbg !2557
  call void @llvm.dbg.value(metadata i8 %1, metadata !1178, metadata !DIExpression()) #9, !dbg !2559
  call void @llvm.dbg.value(metadata i32 1, metadata !1179, metadata !DIExpression()) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i8 %1, metadata !1180, metadata !DIExpression()) #9, !dbg !2561
  %5 = lshr i8 %1, 5, !dbg !2562
  %6 = zext i8 %5 to i64, !dbg !2562
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2563
  call void @llvm.dbg.value(metadata i32* %7, metadata !1181, metadata !DIExpression()) #9, !dbg !2564
  %8 = and i8 %1, 31, !dbg !2565
  %9 = zext i8 %8 to i32, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %9, metadata !1183, metadata !DIExpression()) #9, !dbg !2566
  %10 = load i32, i32* %7, align 4, !dbg !2567, !tbaa !716
  %11 = lshr i32 %10, %9, !dbg !2568
  %12 = and i32 %11, 1, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %12, metadata !1184, metadata !DIExpression()) #9, !dbg !2570
  %13 = xor i32 %12, 1, !dbg !2571
  %14 = shl i32 %13, %9, !dbg !2572
  %15 = xor i32 %14, %10, !dbg !2573
  store i32 %15, i32* %7, align 4, !dbg !2573, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2514, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2556
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9, !dbg !2574
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2575
  ret i8* %16, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2577 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2579, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* %0, metadata !2546, metadata !DIExpression()) #9, !dbg !2581
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()) #9, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()) #9, !dbg !2584
  call void @llvm.dbg.value(metadata i64 -1, metadata !2512, metadata !DIExpression()) #9, !dbg !2586
  call void @llvm.dbg.value(metadata i8 58, metadata !2513, metadata !DIExpression()) #9, !dbg !2587
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2588
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !2589, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2514, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2590
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1177, metadata !DIExpression()) #9, !dbg !2591
  call void @llvm.dbg.value(metadata i8 58, metadata !1178, metadata !DIExpression()) #9, !dbg !2593
  call void @llvm.dbg.value(metadata i32 1, metadata !1179, metadata !DIExpression()) #9, !dbg !2594
  call void @llvm.dbg.value(metadata i8 58, metadata !1180, metadata !DIExpression()) #9, !dbg !2595
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2596
  call void @llvm.dbg.value(metadata i32* %4, metadata !1181, metadata !DIExpression()) #9, !dbg !2597
  call void @llvm.dbg.value(metadata i32 26, metadata !1183, metadata !DIExpression()) #9, !dbg !2598
  %5 = load i32, i32* %4, align 4, !dbg !2599, !tbaa !716
  %6 = or i32 %5, 67108864, !dbg !2600
  store i32 %6, i32* %4, align 4, !dbg !2600, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2514, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2590
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #9, !dbg !2602
  ret i8* %7, !dbg !2603
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2604 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2606, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i64 %1, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()) #9, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()) #9, !dbg !2612
  call void @llvm.dbg.value(metadata i8 58, metadata !2513, metadata !DIExpression()) #9, !dbg !2613
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2614
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !2615, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2514, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1177, metadata !DIExpression()) #9, !dbg !2617
  call void @llvm.dbg.value(metadata i8 58, metadata !1178, metadata !DIExpression()) #9, !dbg !2619
  call void @llvm.dbg.value(metadata i32 1, metadata !1179, metadata !DIExpression()) #9, !dbg !2620
  call void @llvm.dbg.value(metadata i8 58, metadata !1180, metadata !DIExpression()) #9, !dbg !2621
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2622
  call void @llvm.dbg.value(metadata i32* %5, metadata !1181, metadata !DIExpression()) #9, !dbg !2623
  call void @llvm.dbg.value(metadata i32 26, metadata !1183, metadata !DIExpression()) #9, !dbg !2624
  %6 = load i32, i32* %5, align 4, !dbg !2625, !tbaa !716
  %7 = or i32 %6, 67108864, !dbg !2626
  store i32 %7, i32* %5, align 4, !dbg !2626, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2514, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2616
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9, !dbg !2627
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #9, !dbg !2628
  ret i8* %8, !dbg !2629
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2630 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2403, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2636
  call void @llvm.dbg.value(metadata i32 %0, metadata !2632, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %1, metadata !2633, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8* %2, metadata !2634, metadata !DIExpression()), !dbg !2640
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2641
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2641
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2642
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2642
  call void @llvm.dbg.value(metadata i32 %1, metadata !2398, metadata !DIExpression()) #9, !dbg !2643
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2636
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2636, !alias.scope !2644
  %8 = icmp eq i32 %1, 10, !dbg !2647
  br i1 %8, label %9, label %10, !dbg !2648

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2649, !noalias !2644
  unreachable, !dbg !2649

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2403, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2636
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2642
  store i32 %1, i32* %11, align 8, !dbg !2642
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2642
  %13 = bitcast i32* %12 to i8*, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2642
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2635, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1177, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 58, metadata !1178, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 1, metadata !1179, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 58, metadata !1180, metadata !DIExpression()), !dbg !2655
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2656
  call void @llvm.dbg.value(metadata i32* %14, metadata !1181, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i32 26, metadata !1183, metadata !DIExpression()), !dbg !2658
  %15 = load i32, i32* %14, align 4, !dbg !2659, !tbaa !716
  %16 = or i32 %15, 67108864, !dbg !2660
  store i32 %16, i32* %14, align 4, !dbg !2660, !tbaa !716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2635, metadata !DIExpression(DW_OP_deref)), !dbg !2650
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2661
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2662
  ret i8* %17, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2664 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2668, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8* %1, metadata !2669, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8* %2, metadata !2670, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %3, metadata !2671, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 %0, metadata !2676, metadata !DIExpression()) #9, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %1, metadata !2681, metadata !DIExpression()) #9, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %2, metadata !2682, metadata !DIExpression()) #9, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %3, metadata !2683, metadata !DIExpression()) #9, !dbg !2690
  call void @llvm.dbg.value(metadata i64 -1, metadata !2684, metadata !DIExpression()) #9, !dbg !2691
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2692
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !2693, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2685, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1225, metadata !DIExpression()) #9, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %1, metadata !1226, metadata !DIExpression()) #9, !dbg !2697
  call void @llvm.dbg.value(metadata i8* %2, metadata !1227, metadata !DIExpression()) #9, !dbg !2698
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1225, metadata !DIExpression()) #9, !dbg !2695
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2699
  store i32 10, i32* %7, align 8, !dbg !2700, !tbaa !1158
  %8 = icmp ne i8* %1, null, !dbg !2701
  %9 = icmp ne i8* %2, null, !dbg !2702
  %10 = and i1 %8, %9, !dbg !2703
  br i1 %10, label %12, label %11, !dbg !2703

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2704
  unreachable, !dbg !2704

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2705
  store i8* %1, i8** %13, align 8, !dbg !2706, !tbaa !1243
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2707
  store i8* %2, i8** %14, align 8, !dbg !2708, !tbaa !1246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2685, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2694
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9, !dbg !2709
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2710
  ret i8* %15, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2677 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2676, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i8* %1, metadata !2681, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i8* %2, metadata !2682, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i8* %3, metadata !2683, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %4, metadata !2684, metadata !DIExpression()), !dbg !2716
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2717
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2718, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2685, metadata !DIExpression(DW_OP_deref)), !dbg !2719
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1225, metadata !DIExpression()) #9, !dbg !2720
  call void @llvm.dbg.value(metadata i8* %1, metadata !1226, metadata !DIExpression()) #9, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %2, metadata !1227, metadata !DIExpression()) #9, !dbg !2723
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1225, metadata !DIExpression()) #9, !dbg !2720
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2724
  store i32 10, i32* %8, align 8, !dbg !2725, !tbaa !1158
  %9 = icmp ne i8* %1, null, !dbg !2726
  %10 = icmp ne i8* %2, null, !dbg !2727
  %11 = and i1 %9, %10, !dbg !2728
  br i1 %11, label %13, label %12, !dbg !2728

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2729
  unreachable, !dbg !2729

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2730
  store i8* %1, i8** %14, align 8, !dbg !2731, !tbaa !1243
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2732
  store i8* %2, i8** %15, align 8, !dbg !2733, !tbaa !1246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2685, metadata !DIExpression(DW_OP_deref)), !dbg !2719
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #9, !dbg !2735
  ret i8* %16, !dbg !2736
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2737 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8* %1, metadata !2742, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* %2, metadata !2743, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 0, metadata !2668, metadata !DIExpression()) #9, !dbg !2747
  call void @llvm.dbg.value(metadata i8* %0, metadata !2669, metadata !DIExpression()) #9, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %1, metadata !2670, metadata !DIExpression()) #9, !dbg !2750
  call void @llvm.dbg.value(metadata i8* %2, metadata !2671, metadata !DIExpression()) #9, !dbg !2751
  call void @llvm.dbg.value(metadata i32 0, metadata !2676, metadata !DIExpression()) #9, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %0, metadata !2681, metadata !DIExpression()) #9, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %1, metadata !2682, metadata !DIExpression()) #9, !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2683, metadata !DIExpression()) #9, !dbg !2756
  call void @llvm.dbg.value(metadata i64 -1, metadata !2684, metadata !DIExpression()) #9, !dbg !2757
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2758
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !2759, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2685, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2760
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1225, metadata !DIExpression()) #9, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %0, metadata !1226, metadata !DIExpression()) #9, !dbg !2763
  call void @llvm.dbg.value(metadata i8* %1, metadata !1227, metadata !DIExpression()) #9, !dbg !2764
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1225, metadata !DIExpression()) #9, !dbg !2761
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2765
  store i32 10, i32* %6, align 8, !dbg !2766, !tbaa !1158
  %7 = icmp ne i8* %0, null, !dbg !2767
  %8 = icmp ne i8* %1, null, !dbg !2768
  %9 = and i1 %7, %8, !dbg !2769
  br i1 %9, label %11, label %10, !dbg !2769

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2770
  unreachable, !dbg !2770

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2771
  store i8* %0, i8** %12, align 8, !dbg !2772, !tbaa !1243
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2773
  store i8* %1, i8** %13, align 8, !dbg !2774, !tbaa !1246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2685, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2760
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9, !dbg !2775
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #9, !dbg !2776
  ret i8* %14, !dbg !2777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2778 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2782, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %1, metadata !2783, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %2, metadata !2784, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i64 %3, metadata !2785, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32 0, metadata !2676, metadata !DIExpression()) #9, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %0, metadata !2681, metadata !DIExpression()) #9, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %1, metadata !2682, metadata !DIExpression()) #9, !dbg !2793
  call void @llvm.dbg.value(metadata i8* %2, metadata !2683, metadata !DIExpression()) #9, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %3, metadata !2684, metadata !DIExpression()) #9, !dbg !2795
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2796
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #9, !dbg !2797, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2685, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2798
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1225, metadata !DIExpression()) #9, !dbg !2799
  call void @llvm.dbg.value(metadata i8* %0, metadata !1226, metadata !DIExpression()) #9, !dbg !2801
  call void @llvm.dbg.value(metadata i8* %1, metadata !1227, metadata !DIExpression()) #9, !dbg !2802
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1225, metadata !DIExpression()) #9, !dbg !2799
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2803
  store i32 10, i32* %7, align 8, !dbg !2804, !tbaa !1158
  %8 = icmp ne i8* %0, null, !dbg !2805
  %9 = icmp ne i8* %1, null, !dbg !2806
  %10 = and i1 %8, %9, !dbg !2807
  br i1 %10, label %12, label %11, !dbg !2807

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2808
  unreachable, !dbg !2808

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2809
  store i8* %0, i8** %13, align 8, !dbg !2810, !tbaa !1243
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2811
  store i8* %1, i8** %14, align 8, !dbg !2812, !tbaa !1246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2685, metadata !DIExpression(DW_OP_deref)) #9, !dbg !2798
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9, !dbg !2813
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #9, !dbg !2814
  ret i8* %15, !dbg !2815
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2816 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %1, metadata !2821, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i64 %2, metadata !2822, metadata !DIExpression()), !dbg !2825
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2826
  ret i8* %4, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2828 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 %1, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i32 0, metadata !2820, metadata !DIExpression()) #9, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %0, metadata !2821, metadata !DIExpression()) #9, !dbg !2838
  call void @llvm.dbg.value(metadata i64 %1, metadata !2822, metadata !DIExpression()) #9, !dbg !2839
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2840
  ret i8* %3, !dbg !2841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i8* %1, metadata !2847, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()) #9, !dbg !2850
  call void @llvm.dbg.value(metadata i8* %1, metadata !2821, metadata !DIExpression()) #9, !dbg !2852
  call void @llvm.dbg.value(metadata i64 -1, metadata !2822, metadata !DIExpression()) #9, !dbg !2853
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2854
  ret i8* %3, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2856 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2846, metadata !DIExpression()) #9, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %0, metadata !2847, metadata !DIExpression()) #9, !dbg !2864
  call void @llvm.dbg.value(metadata i32 0, metadata !2820, metadata !DIExpression()) #9, !dbg !2865
  call void @llvm.dbg.value(metadata i8* %0, metadata !2821, metadata !DIExpression()) #9, !dbg !2867
  call void @llvm.dbg.value(metadata i64 -1, metadata !2822, metadata !DIExpression()) #9, !dbg !2868
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9, !dbg !2869
  ret i8* %2, !dbg !2870
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2871 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2910, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata i8* %1, metadata !2911, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8* %2, metadata !2912, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* %3, metadata !2913, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i8** %4, metadata !2914, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %5, metadata !2915, metadata !DIExpression()), !dbg !2921
  %7 = icmp eq i8* %1, null, !dbg !2922
  br i1 %7, label %10, label %8, !dbg !2924

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9, !dbg !2925
  br label %12, !dbg !2925

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.80, i64 0, i64 0), i8* %2, i8* %3) #9, !dbg !2926
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i32 5) #9, !dbg !2927
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #9, !dbg !2927
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.82, i64 0, i64 0), i32 5) #9, !dbg !2928
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2928
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
  ], !dbg !2929

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2930
  unreachable, !dbg !2930

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.83, i64 0, i64 0), i32 5) #9, !dbg !2932
  %20 = load i8*, i8** %4, align 8, !dbg !2932, !tbaa !636
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9, !dbg !2932
  br label %146, !dbg !2933

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.84, i64 0, i64 0), i32 5) #9, !dbg !2934
  %24 = load i8*, i8** %4, align 8, !dbg !2934, !tbaa !636
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2934
  %26 = load i8*, i8** %25, align 8, !dbg !2934, !tbaa !636
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9, !dbg !2934
  br label %146, !dbg !2935

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.85, i64 0, i64 0), i32 5) #9, !dbg !2936
  %30 = load i8*, i8** %4, align 8, !dbg !2936, !tbaa !636
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2936
  %32 = load i8*, i8** %31, align 8, !dbg !2936, !tbaa !636
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2936
  %34 = load i8*, i8** %33, align 8, !dbg !2936, !tbaa !636
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9, !dbg !2936
  br label %146, !dbg !2937

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.86, i64 0, i64 0), i32 5) #9, !dbg !2938
  %38 = load i8*, i8** %4, align 8, !dbg !2938, !tbaa !636
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2938
  %40 = load i8*, i8** %39, align 8, !dbg !2938, !tbaa !636
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2938
  %42 = load i8*, i8** %41, align 8, !dbg !2938, !tbaa !636
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2938
  %44 = load i8*, i8** %43, align 8, !dbg !2938, !tbaa !636
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9, !dbg !2938
  br label %146, !dbg !2939

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.87, i64 0, i64 0), i32 5) #9, !dbg !2940
  %48 = load i8*, i8** %4, align 8, !dbg !2940, !tbaa !636
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2940
  %50 = load i8*, i8** %49, align 8, !dbg !2940, !tbaa !636
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2940
  %52 = load i8*, i8** %51, align 8, !dbg !2940, !tbaa !636
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2940
  %54 = load i8*, i8** %53, align 8, !dbg !2940, !tbaa !636
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2940
  %56 = load i8*, i8** %55, align 8, !dbg !2940, !tbaa !636
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9, !dbg !2940
  br label %146, !dbg !2941

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.88, i64 0, i64 0), i32 5) #9, !dbg !2942
  %60 = load i8*, i8** %4, align 8, !dbg !2942, !tbaa !636
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2942
  %62 = load i8*, i8** %61, align 8, !dbg !2942, !tbaa !636
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2942
  %64 = load i8*, i8** %63, align 8, !dbg !2942, !tbaa !636
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2942
  %66 = load i8*, i8** %65, align 8, !dbg !2942, !tbaa !636
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2942
  %68 = load i8*, i8** %67, align 8, !dbg !2942, !tbaa !636
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2942
  %70 = load i8*, i8** %69, align 8, !dbg !2942, !tbaa !636
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9, !dbg !2942
  br label %146, !dbg !2943

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.89, i64 0, i64 0), i32 5) #9, !dbg !2944
  %74 = load i8*, i8** %4, align 8, !dbg !2944, !tbaa !636
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2944
  %76 = load i8*, i8** %75, align 8, !dbg !2944, !tbaa !636
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2944
  %78 = load i8*, i8** %77, align 8, !dbg !2944, !tbaa !636
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2944
  %80 = load i8*, i8** %79, align 8, !dbg !2944, !tbaa !636
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2944
  %82 = load i8*, i8** %81, align 8, !dbg !2944, !tbaa !636
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2944
  %84 = load i8*, i8** %83, align 8, !dbg !2944, !tbaa !636
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2944
  %86 = load i8*, i8** %85, align 8, !dbg !2944, !tbaa !636
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9, !dbg !2944
  br label %146, !dbg !2945

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.90, i64 0, i64 0), i32 5) #9, !dbg !2946
  %90 = load i8*, i8** %4, align 8, !dbg !2946, !tbaa !636
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2946
  %92 = load i8*, i8** %91, align 8, !dbg !2946, !tbaa !636
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2946
  %94 = load i8*, i8** %93, align 8, !dbg !2946, !tbaa !636
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2946
  %96 = load i8*, i8** %95, align 8, !dbg !2946, !tbaa !636
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2946
  %98 = load i8*, i8** %97, align 8, !dbg !2946, !tbaa !636
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2946
  %100 = load i8*, i8** %99, align 8, !dbg !2946, !tbaa !636
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2946
  %102 = load i8*, i8** %101, align 8, !dbg !2946, !tbaa !636
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2946
  %104 = load i8*, i8** %103, align 8, !dbg !2946, !tbaa !636
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9, !dbg !2946
  br label %146, !dbg !2947

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.91, i64 0, i64 0), i32 5) #9, !dbg !2948
  %108 = load i8*, i8** %4, align 8, !dbg !2948, !tbaa !636
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2948
  %110 = load i8*, i8** %109, align 8, !dbg !2948, !tbaa !636
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2948
  %112 = load i8*, i8** %111, align 8, !dbg !2948, !tbaa !636
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2948
  %114 = load i8*, i8** %113, align 8, !dbg !2948, !tbaa !636
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2948
  %116 = load i8*, i8** %115, align 8, !dbg !2948, !tbaa !636
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2948
  %118 = load i8*, i8** %117, align 8, !dbg !2948, !tbaa !636
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2948
  %120 = load i8*, i8** %119, align 8, !dbg !2948, !tbaa !636
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2948
  %122 = load i8*, i8** %121, align 8, !dbg !2948, !tbaa !636
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2948
  %124 = load i8*, i8** %123, align 8, !dbg !2948, !tbaa !636
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9, !dbg !2948
  br label %146, !dbg !2949

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.92, i64 0, i64 0), i32 5) #9, !dbg !2950
  %128 = load i8*, i8** %4, align 8, !dbg !2950, !tbaa !636
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2950
  %130 = load i8*, i8** %129, align 8, !dbg !2950, !tbaa !636
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2950
  %132 = load i8*, i8** %131, align 8, !dbg !2950, !tbaa !636
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2950
  %134 = load i8*, i8** %133, align 8, !dbg !2950, !tbaa !636
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2950
  %136 = load i8*, i8** %135, align 8, !dbg !2950, !tbaa !636
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2950
  %138 = load i8*, i8** %137, align 8, !dbg !2950, !tbaa !636
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2950
  %140 = load i8*, i8** %139, align 8, !dbg !2950, !tbaa !636
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2950
  %142 = load i8*, i8** %141, align 8, !dbg !2950, !tbaa !636
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2950
  %144 = load i8*, i8** %143, align 8, !dbg !2950, !tbaa !636
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9, !dbg !2950
  br label %146, !dbg !2951

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2952
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2953 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2957, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* %1, metadata !2958, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %2, metadata !2959, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %3, metadata !2960, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8** %4, metadata !2961, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 0, metadata !2962, metadata !DIExpression()), !dbg !2968
  br label %6, !dbg !2969

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2971
  call void @llvm.dbg.value(metadata i64 %7, metadata !2962, metadata !DIExpression()), !dbg !2968
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2973
  %9 = load i8*, i8** %8, align 8, !dbg !2973, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !2974
  %11 = add i64 %7, 1, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %11, metadata !2962, metadata !DIExpression()), !dbg !2968
  br i1 %10, label %12, label %6, !dbg !2974, !llvm.loop !2976

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %7, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %7, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %7, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %7, metadata !2962, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %7, metadata !2962, metadata !DIExpression()), !dbg !2968
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2978
  ret void, !dbg !2979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2980 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2991, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8* %1, metadata !2992, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8* %2, metadata !2993, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8* %3, metadata !2994, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2995, metadata !DIExpression()), !dbg !3003
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #9, !dbg !3004
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2997, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 0, metadata !2996, metadata !DIExpression()), !dbg !3006
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2996, metadata !DIExpression()), !dbg !3006
  %11 = load i32, i32* %8, align 8, !dbg !3007
  %12 = icmp ult i32 %11, 41, !dbg !3007
  br i1 %12, label %13, label %18, !dbg !3007

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3007
  %15 = sext i32 %11 to i64, !dbg !3007
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3007
  %17 = add i32 %11, 8, !dbg !3007
  store i32 %17, i32* %8, align 8, !dbg !3007
  br label %21, !dbg !3007

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3007
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3007
  store i8* %20, i8** %10, align 8, !dbg !3007
  br label %21, !dbg !3007

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3007
  %25 = load i8*, i8** %24, align 8, !dbg !3007
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3010
  store i8* %25, i8** %26, align 16, !dbg !3011, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !3012
  br i1 %27, label %30, label %28, !dbg !3013

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 1, metadata !2996, metadata !DIExpression()), !dbg !3006
  %29 = icmp ult i32 %22, 41, !dbg !3007
  br i1 %29, label %35, label %32, !dbg !3007

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3014
  call void @llvm.dbg.value(metadata i64 %31, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %31, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3015
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #9, !dbg !3016
  ret void, !dbg !3016

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3007
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3007
  store i8* %34, i8** %10, align 8, !dbg !3007
  br label %40, !dbg !3007

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3007
  %37 = sext i32 %22 to i64, !dbg !3007
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3007
  %39 = add i32 %22, 8, !dbg !3007
  store i32 %39, i32* %8, align 8, !dbg !3007
  br label %40, !dbg !3007

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3007
  %44 = load i8*, i8** %43, align 8, !dbg !3007
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3010
  store i8* %44, i8** %45, align 8, !dbg !3011, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !3012
  br i1 %46, label %30, label %47, !dbg !3013

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 2, metadata !2996, metadata !DIExpression()), !dbg !3006
  %48 = icmp ult i32 %41, 41, !dbg !3007
  br i1 %48, label %52, label %49, !dbg !3007

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3007
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3007
  store i8* %51, i8** %10, align 8, !dbg !3007
  br label %57, !dbg !3007

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3007
  %54 = sext i32 %41 to i64, !dbg !3007
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3007
  %56 = add i32 %41, 8, !dbg !3007
  store i32 %56, i32* %8, align 8, !dbg !3007
  br label %57, !dbg !3007

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3007
  %61 = load i8*, i8** %60, align 8, !dbg !3007
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3010
  store i8* %61, i8** %62, align 16, !dbg !3011, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !3012
  br i1 %63, label %30, label %64, !dbg !3013

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 3, metadata !2996, metadata !DIExpression()), !dbg !3006
  %65 = icmp ult i32 %58, 41, !dbg !3007
  br i1 %65, label %69, label %66, !dbg !3007

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3007
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3007
  store i8* %68, i8** %10, align 8, !dbg !3007
  br label %74, !dbg !3007

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3007
  %71 = sext i32 %58 to i64, !dbg !3007
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3007
  %73 = add i32 %58, 8, !dbg !3007
  store i32 %73, i32* %8, align 8, !dbg !3007
  br label %74, !dbg !3007

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3007
  %78 = load i8*, i8** %77, align 8, !dbg !3007
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3010
  store i8* %78, i8** %79, align 8, !dbg !3011, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !3012
  br i1 %80, label %30, label %81, !dbg !3013

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 4, metadata !2996, metadata !DIExpression()), !dbg !3006
  %82 = icmp ult i32 %75, 41, !dbg !3007
  br i1 %82, label %86, label %83, !dbg !3007

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3007
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3007
  store i8* %85, i8** %10, align 8, !dbg !3007
  br label %91, !dbg !3007

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3007
  %88 = sext i32 %75 to i64, !dbg !3007
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3007
  %90 = add i32 %75, 8, !dbg !3007
  store i32 %90, i32* %8, align 8, !dbg !3007
  br label %91, !dbg !3007

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3007
  %95 = load i8*, i8** %94, align 8, !dbg !3007
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3010
  store i8* %95, i8** %96, align 16, !dbg !3011, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !3012
  br i1 %97, label %30, label %98, !dbg !3013

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 5, metadata !2996, metadata !DIExpression()), !dbg !3006
  %99 = icmp ult i32 %92, 41, !dbg !3007
  br i1 %99, label %103, label %100, !dbg !3007

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3007
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3007
  store i8* %102, i8** %10, align 8, !dbg !3007
  br label %108, !dbg !3007

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3007
  %105 = sext i32 %92 to i64, !dbg !3007
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3007
  %107 = add i32 %92, 8, !dbg !3007
  store i32 %107, i32* %8, align 8, !dbg !3007
  br label %108, !dbg !3007

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3007
  %111 = load i8*, i8** %110, align 8, !dbg !3007
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3010
  store i8* %111, i8** %112, align 8, !dbg !3011, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !3012
  br i1 %113, label %30, label %114, !dbg !3013

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 6, metadata !2996, metadata !DIExpression()), !dbg !3006
  %115 = load i8*, i8** %10, align 8, !dbg !3007
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3007
  store i8* %116, i8** %10, align 8, !dbg !3007
  %117 = bitcast i8* %115 to i8**, !dbg !3007
  %118 = load i8*, i8** %117, align 8, !dbg !3007
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3010
  store i8* %118, i8** %119, align 16, !dbg !3011, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !3012
  br i1 %120, label %30, label %121, !dbg !3013

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 7, metadata !2996, metadata !DIExpression()), !dbg !3006
  %122 = load i8*, i8** %10, align 8, !dbg !3007
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3007
  store i8* %123, i8** %10, align 8, !dbg !3007
  %124 = bitcast i8* %122 to i8**, !dbg !3007
  %125 = load i8*, i8** %124, align 8, !dbg !3007
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3010
  store i8* %125, i8** %126, align 8, !dbg !3011, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !3012
  br i1 %127, label %30, label %128, !dbg !3013

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 8, metadata !2996, metadata !DIExpression()), !dbg !3006
  %129 = load i8*, i8** %10, align 8, !dbg !3007
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3007
  store i8* %130, i8** %10, align 8, !dbg !3007
  %131 = bitcast i8* %129 to i8**, !dbg !3007
  %132 = load i8*, i8** %131, align 8, !dbg !3007
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3010
  store i8* %132, i8** %133, align 16, !dbg !3011, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !3012
  br i1 %134, label %30, label %135, !dbg !3013

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2996, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 9, metadata !2996, metadata !DIExpression()), !dbg !3006
  %136 = load i8*, i8** %10, align 8, !dbg !3007
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3007
  store i8* %137, i8** %10, align 8, !dbg !3007
  %138 = bitcast i8* %136 to i8**, !dbg !3007
  %139 = load i8*, i8** %138, align 8, !dbg !3007
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3010
  store i8* %139, i8** %140, align 8, !dbg !3011, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !3012
  %142 = select i1 %141, i64 9, i64 10, !dbg !3013
  br label %30, !dbg !3013
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3017 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3021, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %1, metadata !3022, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i8* %2, metadata !3023, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* %3, metadata !3024, metadata !DIExpression()), !dbg !3033
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3034
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9, !dbg !3034
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3025, metadata !DIExpression()), !dbg !3035
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3036
  call void @llvm.va_start(i8* nonnull %6), !dbg !3036
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3037
  call void @llvm.va_end(i8* nonnull %6), !dbg !3038
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !3039
  ret void, !dbg !3039
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3040 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.95, i64 0, i64 0), i32 5) #9, !dbg !3041
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.96, i64 0, i64 0)) #9, !dbg !3041
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.97, i64 0, i64 0), i32 5) #9, !dbg !3042
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.98, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.99, i64 0, i64 0)) #9, !dbg !3042
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.100, i64 0, i64 0), i32 5) #9, !dbg !3043
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3043, !tbaa !636
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3043
  ret void, !dbg !3044
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3045 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3049, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3052
  %3 = udiv i64 9223372036854775807, %1, !dbg !3053
  %4 = icmp ult i64 %3, %0, !dbg !3053
  br i1 %4, label %5, label %6, !dbg !3055

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3056
  unreachable, !dbg !3056

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %7, metadata !3058, metadata !DIExpression()) #9, !dbg !3065
  %8 = tail call noalias i8* @malloc(i64 %7) #9, !dbg !3067
  call void @llvm.dbg.value(metadata i8* %8, metadata !3064, metadata !DIExpression()) #9, !dbg !3068
  %9 = icmp eq i8* %8, null, !dbg !3069
  %10 = icmp ne i64 %7, 0, !dbg !3071
  %11 = and i1 %10, %9, !dbg !3072
  br i1 %11, label %12, label %13, !dbg !3072

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3073
  unreachable, !dbg !3073

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3074
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3059 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3058, metadata !DIExpression()), !dbg !3075
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %2, metadata !3064, metadata !DIExpression()), !dbg !3077
  %3 = icmp eq i8* %2, null, !dbg !3078
  %4 = icmp ne i64 %0, 0, !dbg !3079
  %5 = and i1 %4, %3, !dbg !3080
  br i1 %5, label %6, label %7, !dbg !3080

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3081
  unreachable, !dbg !3081

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3082
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3083 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %2, metadata !3089, metadata !DIExpression()), !dbg !3092
  %4 = udiv i64 9223372036854775807, %2, !dbg !3093
  %5 = icmp ult i64 %4, %1, !dbg !3093
  br i1 %5, label %6, label %7, !dbg !3095

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3096
  unreachable, !dbg !3096

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()) #9, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %8, metadata !3103, metadata !DIExpression()) #9, !dbg !3106
  %9 = icmp eq i64 %8, 0, !dbg !3107
  %10 = icmp ne i8* %0, null, !dbg !3109
  %11 = and i1 %10, %9, !dbg !3110
  br i1 %11, label %12, label %13, !dbg !3110

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #9, !dbg !3111
  br label %19, !dbg !3113

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9, !dbg !3114
  call void @llvm.dbg.value(metadata i8* %14, metadata !3098, metadata !DIExpression()) #9, !dbg !3104
  %15 = icmp eq i8* %14, null, !dbg !3115
  %16 = icmp ne i64 %8, 0, !dbg !3117
  %17 = and i1 %16, %15, !dbg !3118
  br i1 %17, label %18, label %19, !dbg !3118

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3119
  unreachable, !dbg !3119

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3120
  ret i8* %20, !dbg !3121
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3099 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3103, metadata !DIExpression()), !dbg !3123
  %3 = icmp eq i64 %1, 0, !dbg !3124
  %4 = icmp ne i8* %0, null, !dbg !3125
  %5 = and i1 %4, %3, !dbg !3126
  br i1 %5, label %6, label %7, !dbg !3126

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #9, !dbg !3127
  br label %13, !dbg !3128

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %8, metadata !3098, metadata !DIExpression()), !dbg !3122
  %9 = icmp eq i8* %8, null, !dbg !3130
  %10 = icmp ne i64 %1, 0, !dbg !3131
  %11 = and i1 %10, %9, !dbg !3132
  br i1 %11, label %12, label %13, !dbg !3132

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3133
  unreachable, !dbg !3133

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3134
  ret i8* %14, !dbg !3135
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %2, metadata !185, metadata !DIExpression()), !dbg !3138
  %4 = load i64, i64* %1, align 8, !dbg !3139, !tbaa !2200
  call void @llvm.dbg.value(metadata i64 %4, metadata !186, metadata !DIExpression()), !dbg !3140
  %5 = icmp eq i8* %0, null, !dbg !3141
  br i1 %5, label %6, label %20, !dbg !3143

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3144
  br i1 %7, label %8, label %13, !dbg !3147

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %9, metadata !186, metadata !DIExpression()), !dbg !3140
  %10 = icmp ugt i64 %2, 128, !dbg !3150
  %11 = zext i1 %10 to i64, !dbg !3150
  %12 = add nuw nsw i64 %9, %11, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %12, metadata !186, metadata !DIExpression()), !dbg !3140
  br label %13, !dbg !3152

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3153
  call void @llvm.dbg.value(metadata i64 %14, metadata !186, metadata !DIExpression()), !dbg !3140
  %15 = udiv i64 9223372036854775807, %2, !dbg !3154
  %16 = icmp ult i64 %15, %14, !dbg !3154
  br i1 %16, label %19, label %17, !dbg !3156

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !3140
  store i64 %14, i64* %1, align 8, !dbg !3157, !tbaa !2200
  %18 = mul i64 %14, %2, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()) #9, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %28, metadata !3103, metadata !DIExpression()) #9, !dbg !3161
  br label %31, !dbg !3162

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3163
  unreachable, !dbg !3163

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3164
  %22 = icmp ugt i64 %21, %4, !dbg !3167
  br i1 %22, label %24, label %23, !dbg !3168

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3169
  unreachable, !dbg !3169

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3170
  %26 = add i64 %4, 1, !dbg !3171
  %27 = add i64 %26, %25, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !3140
  store i64 %27, i64* %1, align 8, !dbg !3157, !tbaa !2200
  %28 = mul i64 %27, %2, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()) #9, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %28, metadata !3103, metadata !DIExpression()) #9, !dbg !3161
  %29 = icmp eq i64 %28, 0, !dbg !3173
  br i1 %29, label %30, label %31, !dbg !3162

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #9, !dbg !3174
  br label %38, !dbg !3175

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #9, !dbg !3176
  call void @llvm.dbg.value(metadata i8* %33, metadata !3098, metadata !DIExpression()) #9, !dbg !3159
  %34 = icmp eq i8* %33, null, !dbg !3177
  %35 = icmp ne i64 %32, 0, !dbg !3178
  %36 = and i1 %35, %34, !dbg !3179
  br i1 %36, label %37, label %38, !dbg !3179

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3180
  unreachable, !dbg !3180

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3181
  ret i8* %39, !dbg !3182
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3183 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %0, metadata !3058, metadata !DIExpression()) #9, !dbg !3187
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3189
  call void @llvm.dbg.value(metadata i8* %2, metadata !3064, metadata !DIExpression()) #9, !dbg !3190
  %3 = icmp eq i8* %2, null, !dbg !3191
  %4 = icmp ne i64 %0, 0, !dbg !3192
  %5 = and i1 %4, %3, !dbg !3193
  br i1 %5, label %6, label %7, !dbg !3193

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3194
  unreachable, !dbg !3194

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3196 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3200, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64* %1, metadata !3201, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()) #9, !dbg !3204
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()) #9, !dbg !3206
  call void @llvm.dbg.value(metadata i64 1, metadata !185, metadata !DIExpression()) #9, !dbg !3207
  %3 = load i64, i64* %1, align 8, !dbg !3208, !tbaa !2200
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #9, !dbg !3209
  %4 = icmp eq i8* %0, null, !dbg !3210
  br i1 %4, label %5, label %12, !dbg !3211

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3212
  br i1 %6, label %9, label %7, !dbg !3213

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #9, !dbg !3209
  %8 = icmp slt i64 %3, 0, !dbg !3214
  br i1 %8, label %11, label %9, !dbg !3215

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #9, !dbg !3209
  store i64 %10, i64* %1, align 8, !dbg !3216, !tbaa !2200
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()) #9, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %18, metadata !3103, metadata !DIExpression()) #9, !dbg !3219
  br label %21, !dbg !3220

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3221
  unreachable, !dbg !3221

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3222
  br i1 %13, label %15, label %14, !dbg !3223

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3224
  unreachable, !dbg !3224

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3225
  %17 = add i64 %3, 1, !dbg !3226
  %18 = add i64 %17, %16, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #9, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #9, !dbg !3209
  store i64 %18, i64* %1, align 8, !dbg !3216, !tbaa !2200
  call void @llvm.dbg.value(metadata i8* %0, metadata !3098, metadata !DIExpression()) #9, !dbg !3217
  call void @llvm.dbg.value(metadata i64 %18, metadata !3103, metadata !DIExpression()) #9, !dbg !3219
  %19 = icmp eq i64 %18, 0, !dbg !3228
  br i1 %19, label %20, label %21, !dbg !3220

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #9, !dbg !3229
  br label %28, !dbg !3230

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #9, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %23, metadata !3098, metadata !DIExpression()) #9, !dbg !3217
  %24 = icmp eq i8* %23, null, !dbg !3232
  %25 = icmp ne i64 %22, 0, !dbg !3233
  %26 = and i1 %25, %24, !dbg !3234
  br i1 %26, label %27, label %28, !dbg !3234

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3235
  unreachable, !dbg !3235

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3236
  ret i8* %29, !dbg !3237
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3238 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i64 %0, metadata !3058, metadata !DIExpression()) #9, !dbg !3242
  %2 = tail call noalias i8* @malloc(i64 %0) #9, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %2, metadata !3064, metadata !DIExpression()) #9, !dbg !3245
  %3 = icmp eq i8* %2, null, !dbg !3246
  %4 = icmp ne i64 %0, 0, !dbg !3247
  %5 = and i1 %4, %3, !dbg !3248
  br i1 %5, label %6, label %7, !dbg !3248

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3249
  unreachable, !dbg !3249

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3250
  ret i8* %2, !dbg !3251
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3252 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3254, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3258
  %3 = udiv i64 9223372036854775807, %1, !dbg !3259
  %4 = icmp ult i64 %3, %0, !dbg !3259
  br i1 %4, label %8, label %5, !dbg !3261

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9, !dbg !3262
  call void @llvm.dbg.value(metadata i8* %6, metadata !3256, metadata !DIExpression()), !dbg !3263
  %7 = icmp eq i8* %6, null, !dbg !3264
  br i1 %7, label %8, label %9, !dbg !3265

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3266
  unreachable, !dbg !3266

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3267
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3268 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3274, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %1, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()) #9, !dbg !3278
  %3 = tail call noalias i8* @malloc(i64 %1) #9, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %3, metadata !3064, metadata !DIExpression()) #9, !dbg !3281
  %4 = icmp eq i8* %3, null, !dbg !3282
  %5 = icmp ne i64 %1, 0, !dbg !3283
  %6 = and i1 %5, %4, !dbg !3284
  br i1 %6, label %7, label %8, !dbg !3284

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3285
  unreachable, !dbg !3285

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3286
  ret i8* %3, !dbg !3287
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3288 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3290, metadata !DIExpression()), !dbg !3291
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3292
  %3 = add i64 %2, 1, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %0, metadata !3274, metadata !DIExpression()) #9, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %3, metadata !3275, metadata !DIExpression()) #9, !dbg !3296
  call void @llvm.dbg.value(metadata i64 %3, metadata !3058, metadata !DIExpression()) #9, !dbg !3297
  %4 = tail call noalias i8* @malloc(i64 %3) #9, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %4, metadata !3064, metadata !DIExpression()) #9, !dbg !3300
  %5 = icmp eq i8* %4, null, !dbg !3301
  %6 = icmp ne i64 %3, 0, !dbg !3302
  %7 = and i1 %6, %5, !dbg !3303
  br i1 %7, label %8, label %9, !dbg !3303

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3304
  unreachable, !dbg !3304

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #9, !dbg !3305
  ret i8* %4, !dbg !3306
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3307 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3309, !tbaa !716
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.111, i64 0, i64 0), i32 5) #9, !dbg !3310
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i64 0, i64 0), i8* %2) #9, !dbg !3311
  tail call void @abort() #15, !dbg !3312
  unreachable, !dbg !3312
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3313 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3316, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3323
  %3 = icmp eq i64 %0, 0, !dbg !3324
  %4 = icmp eq i64 %1, 0, !dbg !3325
  %5 = or i1 %3, %4, !dbg !3326
  br i1 %5, label %12, label %6, !dbg !3326

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %7, metadata !3319, metadata !DIExpression()), !dbg !3328
  %8 = udiv i64 %7, %1, !dbg !3329
  %9 = icmp eq i64 %8, %0, !dbg !3331
  br i1 %9, label %12, label %10, !dbg !3332

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3333
  store i32 12, i32* %11, align 4, !dbg !3335, !tbaa !716
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3316, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %13, metadata !3317, metadata !DIExpression()), !dbg !3323
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %15, metadata !3318, metadata !DIExpression()), !dbg !3337
  br label %16, !dbg !3338

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3339
  ret i8* %17, !dbg !3340
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3341 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3358, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i8* %1, metadata !3359, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %2, metadata !3360, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3361, metadata !DIExpression()), !dbg !3370
  %6 = bitcast i32* %5 to i8*, !dbg !3371
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3371
  %7 = icmp eq i32* %0, null, !dbg !3372
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3374
  call void @llvm.dbg.value(metadata i32* %8, metadata !3358, metadata !DIExpression()), !dbg !3367
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %9, metadata !3362, metadata !DIExpression()), !dbg !3376
  %10 = icmp ugt i64 %9, -3, !dbg !3377
  %11 = icmp ne i64 %2, 0, !dbg !3378
  %12 = and i1 %11, %10, !dbg !3379
  br i1 %12, label %13, label %18, !dbg !3379

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9, !dbg !3380
  br i1 %14, label %18, label %15, !dbg !3381

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3382, !tbaa !772
  call void @llvm.dbg.value(metadata i8 %16, metadata !3364, metadata !DIExpression()), !dbg !3383
  %17 = zext i8 %16 to i32, !dbg !3384
  store i32 %17, i32* %8, align 4, !dbg !3385, !tbaa !716
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3386
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !3387
  ret i64 %19, !dbg !3387
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3388 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3427, metadata !DIExpression()), !dbg !3432
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9, !dbg !3433
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3434, metadata !DIExpression()), !dbg !3437
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3439
  %4 = load i32, i32* %3, align 8, !dbg !3439, !tbaa !3440
  %5 = and i32 %4, 32, !dbg !3439
  %6 = icmp eq i32 %5, 0, !dbg !3441
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9, !dbg !3442
  %8 = icmp ne i32 %7, 0, !dbg !3443
  br i1 %6, label %9, label %19, !dbg !3444

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3446
  %11 = xor i1 %8, true, !dbg !3447
  %12 = or i1 %10, %11, !dbg !3447
  %13 = sext i1 %8 to i32, !dbg !3447
  br i1 %12, label %22, label %14, !dbg !3447

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3448
  %16 = load i32, i32* %15, align 4, !dbg !3448, !tbaa !716
  %17 = icmp ne i32 %16, 9, !dbg !3449
  %18 = sext i1 %17 to i32, !dbg !3450
  br label %22, !dbg !3450

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3451

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3453
  store i32 0, i32* %21, align 4, !dbg !3455, !tbaa !716
  br label %22, !dbg !3453

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3456
  ret i32 %23, !dbg !3457
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly) local_unnamed_addr #11 !dbg !3458 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3461, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i8* %0, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8 0, metadata !3464, metadata !DIExpression()), !dbg !3467
  br label %2, !dbg !3468

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3469
  call void @llvm.dbg.value(metadata i8* %3, metadata !3462, metadata !DIExpression()), !dbg !3466
  %4 = load i8, i8* %3, align 1, !dbg !3470, !tbaa !772
  %5 = icmp eq i8 %4, 47, !dbg !3470
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %6, metadata !3462, metadata !DIExpression()), !dbg !3466
  br i1 %5, label %2, label %7, !dbg !3468, !llvm.loop !3472

; <label>:7:                                      ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !3473
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !3466
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !3476
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !3477
  call void @llvm.dbg.value(metadata i8 %11, metadata !3464, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %10, metadata !3463, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i8* %9, metadata !3462, metadata !DIExpression()), !dbg !3466
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !3481

; <label>:12:                                     ; preds = %7
  %13 = and i8 %11, 1, !dbg !3482
  %14 = icmp eq i8 %13, 0, !dbg !3482
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !3484
  %16 = select i1 %14, i8 %11, i8 0, !dbg !3484
  br label %17, !dbg !3484

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !3469
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !3469
  call void @llvm.dbg.value(metadata i8 %19, metadata !3464, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i8* %18, metadata !3462, metadata !DIExpression()), !dbg !3466
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !3485
  call void @llvm.dbg.value(metadata i8* %20, metadata !3463, metadata !DIExpression()), !dbg !3480
  %21 = load i8, i8* %20, align 1, !dbg !3473, !tbaa !772
  br label %7, !dbg !3486, !llvm.loop !3487

; <label>:22:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %9, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %9, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %9, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %9, metadata !3462, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %9, metadata !3462, metadata !DIExpression()), !dbg !3466
  ret i8* %9, !dbg !3489
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly) local_unnamed_addr #11 !dbg !3490 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3494, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 0, metadata !3496, metadata !DIExpression()), !dbg !3498
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3499
  call void @llvm.dbg.value(metadata i64 %2, metadata !3495, metadata !DIExpression()), !dbg !3501
  br label %3, !dbg !3502

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !3503
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  %5 = icmp ugt i64 %4, 1, !dbg !3505
  br i1 %5, label %6, label %11, !dbg !3506

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !3507
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !3507
  %9 = load i8, i8* %8, align 1, !dbg !3507, !tbaa !772
  %10 = icmp eq i8 %9, 47, !dbg !3507
  br i1 %10, label %3, label %11, !dbg !3508, !llvm.loop !3509

; <label>:11:                                     ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %4, metadata !3495, metadata !DIExpression()), !dbg !3501
  ret i64 %4, !dbg !3511
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3512 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3517, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i8 1, metadata !3518, metadata !DIExpression()), !dbg !3521
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9, !dbg !3522
  call void @llvm.dbg.value(metadata i8* %2, metadata !3519, metadata !DIExpression()), !dbg !3523
  %3 = icmp eq i8* %2, null, !dbg !3524
  br i1 %3, label %11, label %4, !dbg !3526

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.125, i64 0, i64 0)) #14, !dbg !3527
  %6 = icmp eq i32 %5, 0, !dbg !3532
  br i1 %6, label %10, label %7, !dbg !3533

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0)) #14, !dbg !3534
  %9 = icmp eq i32 %8, 0, !dbg !3535
  br i1 %9, label %10, label %11, !dbg !3536

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3518, metadata !DIExpression()), !dbg !3521
  br label %11, !dbg !3537

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3538
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3539 {
  %1 = tail call i8* @nl_langinfo(i32 14) #9, !dbg !3545
  call void @llvm.dbg.value(metadata i8* %1, metadata !3544, metadata !DIExpression()), !dbg !3546
  %2 = icmp eq i8* %1, null, !dbg !3547
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.129, i64 0, i64 0), i8* %1, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %3, metadata !3544, metadata !DIExpression()), !dbg !3546
  %4 = load i8, i8* %3, align 1, !dbg !3550, !tbaa !772
  %5 = icmp eq i8 %4, 0, !dbg !3554
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.130, i64 0, i64 0), i8* %3, !dbg !3555
  call void @llvm.dbg.value(metadata i8* %6, metadata !3544, metadata !DIExpression()), !dbg !3546
  ret i8* %6, !dbg !3556
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3557 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3596, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i32 0, metadata !3597, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()), !dbg !3602
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3603
  call void @llvm.dbg.value(metadata i32 %2, metadata !3598, metadata !DIExpression()), !dbg !3604
  %3 = icmp slt i32 %2, 0, !dbg !3605
  br i1 %3, label %4, label %6, !dbg !3607

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3608
  br label %24, !dbg !3609

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3610
  %8 = icmp eq i32 %7, 0, !dbg !3610
  br i1 %8, label %13, label %9, !dbg !3612

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3613
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9, !dbg !3614
  %12 = icmp eq i64 %11, -1, !dbg !3615
  br i1 %12, label %16, label %13, !dbg !3616

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9, !dbg !3617
  %15 = icmp eq i32 %14, 0, !dbg !3617
  br i1 %15, label %16, label %18, !dbg !3618

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3597, metadata !DIExpression()), !dbg !3601
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %21, metadata !3599, metadata !DIExpression()), !dbg !3602
  br label %24, !dbg !3620

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3621
  %20 = load i32, i32* %19, align 4, !dbg !3621, !tbaa !716
  call void @llvm.dbg.value(metadata i32 %20, metadata !3597, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %20, metadata !3597, metadata !DIExpression()), !dbg !3601
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %21, metadata !3599, metadata !DIExpression()), !dbg !3602
  %22 = icmp eq i32 %20, 0, !dbg !3622
  br i1 %22, label %24, label %23, !dbg !3620

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3624, !tbaa !716
  call void @llvm.dbg.value(metadata i32 -1, metadata !3599, metadata !DIExpression()), !dbg !3602
  br label %24, !dbg !3626

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3627
  ret i32 %25, !dbg !3628
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3629 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3668, metadata !DIExpression()), !dbg !3669
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3670
  br i1 %2, label %6, label %3, !dbg !3672

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9, !dbg !3673
  %5 = icmp eq i32 %4, 0, !dbg !3673
  br i1 %5, label %6, label %8, !dbg !3674

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3675
  br label %17, !dbg !3676

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3677, metadata !DIExpression()) #9, !dbg !3682
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3684
  %10 = load i32, i32* %9, align 8, !dbg !3684, !tbaa !3440
  %11 = and i32 %10, 256, !dbg !3686
  %12 = icmp eq i32 %11, 0, !dbg !3686
  br i1 %12, label %15, label %13, !dbg !3687

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9, !dbg !3688
  br label %15, !dbg !3688

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3689
  br label %17, !dbg !3690

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3691
  ret i32 %18, !dbg !3692
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3693 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3733, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %1, metadata !3734, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i32 %2, metadata !3735, metadata !DIExpression()), !dbg !3741
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3742
  %5 = load i8*, i8** %4, align 8, !dbg !3742, !tbaa !3743
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3744
  %7 = load i8*, i8** %6, align 8, !dbg !3744, !tbaa !3745
  %8 = icmp eq i8* %5, %7, !dbg !3746
  br i1 %8, label %9, label %28, !dbg !3747

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3748
  %11 = load i8*, i8** %10, align 8, !dbg !3748, !tbaa !1014
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3749
  %13 = load i8*, i8** %12, align 8, !dbg !3749, !tbaa !3750
  %14 = icmp eq i8* %11, %13, !dbg !3751
  br i1 %14, label %15, label %28, !dbg !3752

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3753
  %17 = load i8*, i8** %16, align 8, !dbg !3753, !tbaa !3754
  %18 = icmp eq i8* %17, null, !dbg !3755
  br i1 %18, label %19, label %28, !dbg !3756

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9, !dbg !3757
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9, !dbg !3758
  call void @llvm.dbg.value(metadata i64 %21, metadata !3736, metadata !DIExpression()), !dbg !3759
  %22 = icmp eq i64 %21, -1, !dbg !3760
  br i1 %22, label %30, label %23, !dbg !3762

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3763
  %25 = load i32, i32* %24, align 8, !dbg !3764, !tbaa !3440
  %26 = and i32 %25, -17, !dbg !3764
  store i32 %26, i32* %24, align 8, !dbg !3764, !tbaa !3440
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3765
  store i64 %21, i64* %27, align 8, !dbg !3766, !tbaa !3767
  br label %30, !dbg !3768

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3769
  br label %30, !dbg !3770

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3771
  ret i32 %31, !dbg !3772
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
attributes #9 = { nounwind }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !159, !52, !58, !163, !66, !73, !80, !165, !152, !173, !190, !192, !194, !197, !199, !202, !204, !593, !595, !597}
!llvm.ident = !{!599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599, !599}
!llvm.module.flags = !{!600, !601, !602, !603, !604}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "remove_empty_parents", scope: !2, file: !3, line: 40, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !24)
!3 = !DIFile(filename: "src/rmdir.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
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
!20 = !{!21, !23}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !{!25, !26, !29, !31}
!25 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "ignore_fail_on_non_empty", scope: !2, file: !3, line: 44, type: !28, isLocal: true, isDefinition: true)
!28 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 47, type: !28, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 56, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1792, elements: !46)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !36, line: 50, size: 256, elements: !37)
!36 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!37 = !{!38, !41, !43, !45}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !35, file: !36, line: 52, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !35, file: !36, line: 55, baseType: !42, size: 32, offset: 64)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !35, file: !36, line: 56, baseType: !44, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !35, file: !36, line: 57, baseType: !42, size: 32, offset: 192)
!46 = !{!47}
!47 = !DISubrange(count: 7)
!48 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!49 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "Version", scope: !52, file: !53, line: 2, type: !39, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !55)
!53 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!54 = !{}
!55 = !{!50}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "file_name", scope: !58, file: !63, line: 46, type: !39, isLocal: true, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !60)
!59 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!60 = !{!56, !61}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !58, file: !63, line: 56, type: !28, isLocal: true, isDefinition: true)
!63 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "exit_failure", scope: !66, file: !69, line: 24, type: !70, isLocal: false, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C99, file: !67, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !68)
!67 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!68 = !{!64}
!69 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!70 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "program_name", scope: !73, file: !77, line: 33, type: !39, isLocal: false, isDefinition: true)
!73 = distinct !DICompileUnit(language: DW_LANG_C99, file: !74, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !75, globals: !76)
!74 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!75 = !{!23, !21}
!76 = !{!71}
!77 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !80, file: !111, line: 85, type: !146, isLocal: false, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !103, globals: !108)
!81 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!82 = !{!5, !83, !88}
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 46, baseType: !7, size: 32, elements: !90)
!89 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!91 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!100 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!103 = !{!42, !104, !105, !21}
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 62, baseType: !107)
!106 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!107 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!108 = !{!78, !109, !116, !128, !130, !135, !142, !144}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !80, file: !111, line: 101, type: !112, isLocal: false, isDefinition: true)
!111 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 320, elements: !114)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!114 = !{!115}
!115 = !DISubrange(count: 10)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !80, file: !111, line: 1052, type: !118, isLocal: false, isDefinition: true)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !111, line: 65, size: 448, elements: !119)
!119 = !{!120, !121, !122, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !118, file: !111, line: 68, baseType: !5, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !111, line: 71, baseType: !42, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !118, file: !111, line: 75, baseType: !123, size: 256, offset: 64)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !118, file: !111, line: 78, baseType: !39, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !118, file: !111, line: 81, baseType: !39, size: 64, offset: 384)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !80, file: !111, line: 116, type: !118, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "slot0", scope: !80, file: !111, line: 842, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 256)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "slotvec", scope: !80, file: !111, line: 845, type: !137, isLocal: true, isDefinition: true)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !111, line: 834, size: 128, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !138, file: !111, line: 836, baseType: !105, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !138, file: !111, line: 837, baseType: !21, size: 64, offset: 64)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "nslots", scope: !80, file: !111, line: 843, type: !42, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "slotvec0", scope: !80, file: !111, line: 844, type: !138, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 704, elements: !148)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!148 = !{!149}
!149 = !DISubrange(count: 11)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !152, file: !155, line: 26, type: !156, isLocal: false, isDefinition: true)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !154)
!153 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!154 = !{!150}
!155 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 376, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 47)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !161)
!160 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!161 = !{!162}
!162 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!164 = !DIFile(filename: "./lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !172)
!166 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!167 = !{!168}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 41, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!170 = !{!171}
!171 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!172 = !{!23}
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !175, retainedTypes: !189)
!174 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!175 = !{!176}
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !178, file: !177, line: 186, baseType: !7, size: 32, elements: !187)
!177 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!178 = distinct !DISubprogram(name: "x2nrealloc", scope: !177, file: !177, line: 174, type: !179, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !182)
!179 = !DISubroutineType(types: !180)
!180 = !{!23, !23, !181, !105}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!182 = !{!183, !184, !185, !186}
!183 = !DILocalVariable(name: "p", arg: 1, scope: !178, file: !177, line: 174, type: !23)
!184 = !DILocalVariable(name: "pn", arg: 2, scope: !178, file: !177, line: 174, type: !181)
!185 = !DILocalVariable(name: "s", arg: 3, scope: !178, file: !177, line: 174, type: !105)
!186 = !DILocalVariable(name: "n", scope: !178, file: !177, line: 176, type: !105)
!187 = !{!188}
!188 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!189 = !{!105, !21, !23}
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!191 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !172)
!193 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !196)
!195 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!196 = !{!105}
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!198 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !201)
!200 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!201 = !{!21}
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!203 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !206, retainedTypes: !172)
!205 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!206 = !{!207}
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !208, line: 41, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!210 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!211 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!213 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!214 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!215 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!216 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!221 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!222 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!223 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!248 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!249 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!250 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!251 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!252 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!253 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!254 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!255 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!256 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!257 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!258 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!259 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!318 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!405 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!478 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!479 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!480 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!481 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!482 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!483 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!484 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!486 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!487 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!488 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!489 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!490 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!491 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!492 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!497 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!498 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!499 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!525 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!526 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!527 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!528 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!529 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!534 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!535 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!536 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!537 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54)
!594 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !172)
!596 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !172)
!598 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!599 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!600 = !{i32 2, !"Dwarf Version", i32 4}
!601 = !{i32 2, !"Debug Info Version", i32 3}
!602 = !{i32 1, !"wchar_size", i32 4}
!603 = !{i32 7, !"PIC Level", i32 2}
!604 = !{i32 7, !"PIE Level", i32 2}
!605 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 157, type: !606, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !42}
!608 = !{!609}
!609 = !DILocalVariable(name: "status", arg: 1, scope: !605, file: !3, line: 157, type: !42)
!610 = !DILocalVariable(name: "infomap", scope: !611, file: !612, line: 632, type: !626)
!611 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !612, file: !612, line: 630, type: !613, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !615)
!612 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!613 = !DISubroutineType(types: !614)
!614 = !{null, !39}
!615 = !{!616, !610, !617, !618, !625}
!616 = !DILocalVariable(name: "program", arg: 1, scope: !611, file: !612, line: 630, type: !39)
!617 = !DILocalVariable(name: "node", scope: !611, file: !612, line: 642, type: !39)
!618 = !DILocalVariable(name: "map_prog", scope: !611, file: !612, line: 643, type: !619)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !611, file: !612, line: 632, size: 128, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !621, file: !612, line: 632, baseType: !39, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !612, line: 632, baseType: !39, size: 64, offset: 64)
!625 = !DILocalVariable(name: "lc_messages", scope: !611, file: !612, line: 655, type: !39)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 896, elements: !46)
!627 = !DILocation(line: 632, column: 67, scope: !611, inlinedAt: !628)
!628 = distinct !DILocation(line: 179, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 162, column: 5)
!630 = distinct !DILexicalBlock(scope: !605, file: !3, line: 159, column: 7)
!631 = !DILocation(line: 157, column: 12, scope: !605)
!632 = !DILocation(line: 159, column: 14, scope: !630)
!633 = !DILocation(line: 159, column: 7, scope: !605)
!634 = !DILocation(line: 160, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !3, line: 160, column: 5)
!636 = !{!637, !637, i64 0}
!637 = !{!"any pointer", !638, i64 0}
!638 = !{!"omnipotent char", !639, i64 0}
!639 = !{!"Simple C/C++ TBAA"}
!640 = !DILocation(line: 163, column: 7, scope: !629)
!641 = !DILocation(line: 164, column: 7, scope: !629)
!642 = !DILocation(line: 171, column: 7, scope: !629)
!643 = !DILocation(line: 177, column: 7, scope: !629)
!644 = !DILocation(line: 178, column: 7, scope: !629)
!645 = !DILocation(line: 632, column: 3, scope: !611, inlinedAt: !628)
!646 = !DILocation(line: 643, column: 36, scope: !611, inlinedAt: !628)
!647 = !DILocation(line: 643, column: 25, scope: !611, inlinedAt: !628)
!648 = !DILocation(line: 645, column: 33, scope: !611, inlinedAt: !628)
!649 = !DILocation(line: 645, column: 3, scope: !611, inlinedAt: !628)
!650 = !DILocation(line: 646, column: 13, scope: !611, inlinedAt: !628)
!651 = !DILocation(line: 645, column: 20, scope: !611, inlinedAt: !628)
!652 = !{!653, !637, i64 0}
!653 = !{!"infomap", !637, i64 0, !637, i64 8}
!654 = !DILocation(line: 645, column: 10, scope: !611, inlinedAt: !628)
!655 = !DILocation(line: 645, column: 28, scope: !611, inlinedAt: !628)
!656 = distinct !{!656, !657, !658}
!657 = !DILocation(line: 645, column: 3, scope: !611)
!658 = !DILocation(line: 646, column: 13, scope: !611)
!659 = !DILocation(line: 648, column: 17, scope: !660, inlinedAt: !628)
!660 = distinct !DILexicalBlock(scope: !611, file: !612, line: 648, column: 7)
!661 = !{!653, !637, i64 8}
!662 = !DILocation(line: 648, column: 7, scope: !660, inlinedAt: !628)
!663 = !DILocation(line: 648, column: 7, scope: !611, inlinedAt: !628)
!664 = !DILocation(line: 642, column: 15, scope: !611, inlinedAt: !628)
!665 = !DILocation(line: 651, column: 3, scope: !611, inlinedAt: !628)
!666 = !DILocation(line: 655, column: 29, scope: !611, inlinedAt: !628)
!667 = !DILocation(line: 655, column: 15, scope: !611, inlinedAt: !628)
!668 = !DILocation(line: 656, column: 7, scope: !669, inlinedAt: !628)
!669 = distinct !DILexicalBlock(scope: !611, file: !612, line: 656, column: 7)
!670 = !DILocation(line: 656, column: 19, scope: !669, inlinedAt: !628)
!671 = !DILocation(line: 656, column: 22, scope: !669, inlinedAt: !628)
!672 = !DILocation(line: 656, column: 7, scope: !611, inlinedAt: !628)
!673 = !DILocation(line: 662, column: 7, scope: !674, inlinedAt: !628)
!674 = distinct !DILexicalBlock(scope: !669, file: !612, line: 657, column: 5)
!675 = !DILocation(line: 664, column: 5, scope: !674, inlinedAt: !628)
!676 = !DILocation(line: 665, column: 3, scope: !611, inlinedAt: !628)
!677 = !DILocation(line: 667, column: 3, scope: !611, inlinedAt: !628)
!678 = !DILocation(line: 669, column: 1, scope: !611, inlinedAt: !628)
!679 = !DILocation(line: 181, column: 3, scope: !605)
!680 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 185, type: !681, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !684)
!681 = !DISubroutineType(types: !682)
!682 = !{!42, !42, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!684 = !{!685, !686, !687, !688, !689}
!685 = !DILocalVariable(name: "argc", arg: 1, scope: !680, file: !3, line: 185, type: !42)
!686 = !DILocalVariable(name: "argv", arg: 2, scope: !680, file: !3, line: 185, type: !683)
!687 = !DILocalVariable(name: "ok", scope: !680, file: !3, line: 187, type: !28)
!688 = !DILocalVariable(name: "optc", scope: !680, file: !3, line: 188, type: !42)
!689 = !DILocalVariable(name: "dir", scope: !690, file: !3, line: 228, type: !21)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 227, column: 5)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 226, column: 3)
!692 = distinct !DILexicalBlock(scope: !680, file: !3, line: 226, column: 3)
!693 = !DILocation(line: 185, column: 11, scope: !680)
!694 = !DILocation(line: 185, column: 24, scope: !680)
!695 = !DILocation(line: 187, column: 8, scope: !680)
!696 = !DILocation(line: 191, column: 21, scope: !680)
!697 = !DILocation(line: 191, column: 3, scope: !680)
!698 = !DILocation(line: 192, column: 3, scope: !680)
!699 = !DILocation(line: 193, column: 3, scope: !680)
!700 = !DILocation(line: 194, column: 3, scope: !680)
!701 = !DILocation(line: 196, column: 3, scope: !680)
!702 = !DILocation(line: 200, column: 3, scope: !680)
!703 = !DILocation(line: 200, column: 18, scope: !680)
!704 = !DILocation(line: 188, column: 7, scope: !680)
!705 = !DILocation(line: 209, column: 11, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 203, column: 9)
!707 = distinct !DILexicalBlock(scope: !680, file: !3, line: 201, column: 5)
!708 = !DILocation(line: 212, column: 11, scope: !706)
!709 = !DILocation(line: 213, column: 9, scope: !706)
!710 = !DILocation(line: 214, column: 9, scope: !706)
!711 = !DILocation(line: 216, column: 11, scope: !706)
!712 = distinct !{!712, !702, !713}
!713 = !DILocation(line: 218, column: 5, scope: !680)
!714 = !DILocation(line: 220, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !680, file: !3, line: 220, column: 7)
!716 = !{!717, !717, i64 0}
!717 = !{!"int", !638, i64 0}
!718 = !DILocation(line: 220, column: 14, scope: !715)
!719 = !DILocation(line: 220, column: 7, scope: !680)
!720 = !DILocation(line: 226, column: 17, scope: !691)
!721 = !DILocation(line: 226, column: 3, scope: !692)
!722 = !DILocation(line: 222, column: 20, scope: !723)
!723 = distinct !DILexicalBlock(scope: !715, file: !3, line: 221, column: 5)
!724 = !DILocation(line: 222, column: 7, scope: !723)
!725 = !DILocation(line: 223, column: 7, scope: !723)
!726 = !DILocation(line: 228, column: 19, scope: !690)
!727 = !DILocation(line: 228, column: 13, scope: !690)
!728 = !DILocation(line: 231, column: 11, scope: !690)
!729 = !DILocation(line: 232, column: 23, scope: !730)
!730 = distinct !DILexicalBlock(scope: !690, file: !3, line: 231, column: 11)
!731 = !DILocation(line: 232, column: 31, scope: !730)
!732 = !DILocation(line: 232, column: 60, scope: !730)
!733 = !DILocation(line: 232, column: 9, scope: !730)
!734 = !DILocation(line: 234, column: 11, scope: !735)
!735 = distinct !DILexicalBlock(scope: !690, file: !3, line: 234, column: 11)
!736 = !DILocation(line: 234, column: 23, scope: !735)
!737 = !DILocation(line: 234, column: 11, scope: !690)
!738 = !DILocation(line: 236, column: 34, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 236, column: 15)
!740 = distinct !DILexicalBlock(scope: !735, file: !3, line: 235, column: 9)
!741 = !DILocation(line: 236, column: 15, scope: !739)
!742 = !DILocation(line: 236, column: 15, scope: !740)
!743 = !DILocation(line: 241, column: 21, scope: !740)
!744 = !DILocation(line: 241, column: 28, scope: !740)
!745 = !DILocation(line: 241, column: 54, scope: !740)
!746 = !DILocation(line: 241, column: 11, scope: !740)
!747 = !DILocation(line: 243, column: 9, scope: !740)
!748 = !DILocation(line: 244, column: 16, scope: !735)
!749 = !DILocalVariable(name: "dir", arg: 1, scope: !750, file: !3, line: 114, type: !21)
!750 = distinct !DISubprogram(name: "remove_parents", scope: !3, file: !3, line: 114, type: !751, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!28, !21}
!753 = !{!749, !754, !755}
!754 = !DILocalVariable(name: "slash", scope: !750, file: !3, line: 116, type: !21)
!755 = !DILocalVariable(name: "ok", scope: !750, file: !3, line: 117, type: !28)
!756 = !DILocation(line: 114, column: 23, scope: !750, inlinedAt: !757)
!757 = distinct !DILocation(line: 246, column: 17, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 245, column: 9)
!759 = distinct !DILexicalBlock(scope: !735, file: !3, line: 244, column: 16)
!760 = !DILocation(line: 117, column: 8, scope: !750, inlinedAt: !757)
!761 = !DILocation(line: 119, column: 3, scope: !750, inlinedAt: !757)
!762 = !DILocation(line: 120, column: 3, scope: !750, inlinedAt: !757)
!763 = !DILocation(line: 122, column: 15, scope: !764, inlinedAt: !757)
!764 = distinct !DILexicalBlock(scope: !750, file: !3, line: 121, column: 5)
!765 = !DILocation(line: 116, column: 9, scope: !750, inlinedAt: !757)
!766 = !DILocation(line: 123, column: 17, scope: !767, inlinedAt: !757)
!767 = distinct !DILexicalBlock(scope: !764, file: !3, line: 123, column: 11)
!768 = !DILocation(line: 123, column: 11, scope: !764, inlinedAt: !757)
!769 = !DILocation(line: 127, column: 20, scope: !764, inlinedAt: !757)
!770 = !DILocation(line: 127, column: 26, scope: !764, inlinedAt: !757)
!771 = !DILocation(line: 127, column: 29, scope: !764, inlinedAt: !757)
!772 = !{!638, !638, i64 0}
!773 = !DILocation(line: 127, column: 36, scope: !764, inlinedAt: !757)
!774 = !DILocation(line: 127, column: 7, scope: !764, inlinedAt: !757)
!775 = !DILocation(line: 128, column: 9, scope: !764, inlinedAt: !757)
!776 = distinct !{!776, !777, !778}
!777 = !DILocation(line: 127, column: 7, scope: !764)
!778 = !DILocation(line: 128, column: 11, scope: !764)
!779 = !DILocation(line: 0, scope: !764, inlinedAt: !757)
!780 = !DILocation(line: 129, column: 7, scope: !764, inlinedAt: !757)
!781 = !DILocation(line: 129, column: 16, scope: !764, inlinedAt: !757)
!782 = !DILocation(line: 132, column: 11, scope: !764, inlinedAt: !757)
!783 = !DILocation(line: 133, column: 23, scope: !784, inlinedAt: !757)
!784 = distinct !DILexicalBlock(scope: !764, file: !3, line: 132, column: 11)
!785 = !DILocation(line: 133, column: 31, scope: !784, inlinedAt: !757)
!786 = !DILocation(line: 133, column: 60, scope: !784, inlinedAt: !757)
!787 = !DILocation(line: 133, column: 9, scope: !784, inlinedAt: !757)
!788 = !DILocation(line: 135, column: 13, scope: !764, inlinedAt: !757)
!789 = !DILocation(line: 135, column: 25, scope: !764, inlinedAt: !757)
!790 = !DILocation(line: 137, column: 11, scope: !764, inlinedAt: !757)
!791 = distinct !{!791, !792, !793}
!792 = !DILocation(line: 120, column: 3, scope: !750)
!793 = !DILocation(line: 152, column: 5, scope: !750)
!794 = !DILocation(line: 140, column: 34, scope: !795, inlinedAt: !757)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 140, column: 15)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 138, column: 9)
!797 = distinct !DILexicalBlock(scope: !764, file: !3, line: 137, column: 11)
!798 = !DILocation(line: 140, column: 15, scope: !795, inlinedAt: !757)
!799 = !DILocation(line: 140, column: 15, scope: !796, inlinedAt: !757)
!800 = !DILocation(line: 147, column: 25, scope: !801, inlinedAt: !757)
!801 = distinct !DILexicalBlock(scope: !795, file: !3, line: 145, column: 13)
!802 = !DILocation(line: 147, column: 32, scope: !801, inlinedAt: !757)
!803 = !DILocation(line: 148, column: 22, scope: !801, inlinedAt: !757)
!804 = !DILocation(line: 147, column: 15, scope: !801, inlinedAt: !757)
!805 = !DILocation(line: 246, column: 14, scope: !758)
!806 = !DILocation(line: 247, column: 9, scope: !758)
!807 = !DILocation(line: 0, scope: !740)
!808 = !DILocation(line: 226, column: 25, scope: !691)
!809 = distinct !{!809, !721, !810}
!810 = !DILocation(line: 248, column: 5, scope: !692)
!811 = !DILocation(line: 250, column: 10, scope: !680)
!812 = !DILocation(line: 251, column: 1, scope: !680)
!813 = distinct !DISubprogram(name: "ignorable_failure", scope: !3, file: !3, line: 100, type: !814, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{!28, !42, !39}
!816 = !{!817, !818}
!817 = !DILocalVariable(name: "error_number", arg: 1, scope: !813, file: !3, line: 100, type: !42)
!818 = !DILocalVariable(name: "dir", arg: 2, scope: !813, file: !3, line: 100, type: !39)
!819 = !DILocation(line: 100, column: 24, scope: !813)
!820 = !DILocation(line: 100, column: 50, scope: !813)
!821 = !DILocation(line: 103, column: 11, scope: !813)
!822 = !DILocation(line: 104, column: 15, scope: !813)
!823 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !824, file: !612, line: 290, type: !42)
!824 = distinct !DISubprogram(name: "is_empty_dir", scope: !612, file: !612, line: 290, type: !814, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !825)
!825 = !{!823, !826, !827, !832, !847, !848}
!826 = !DILocalVariable(name: "dir", arg: 2, scope: !824, file: !612, line: 290, type: !39)
!827 = !DILocalVariable(name: "dirp", scope: !824, file: !612, line: 292, type: !828)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !830, line: 127, baseType: !831)
!830 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !830, line: 127, flags: DIFlagFwdDecl)
!832 = !DILocalVariable(name: "dp", scope: !824, file: !612, line: 293, type: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !836, line: 22, size: 2240, elements: !837)
!836 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!837 = !{!838, !841, !844, !845, !846}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !835, file: !836, line: 25, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !840, line: 146, baseType: !107)
!840 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!841 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !835, file: !836, line: 26, baseType: !842, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !840, line: 150, baseType: !843)
!843 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !835, file: !836, line: 31, baseType: !104, size: 16, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !835, file: !836, line: 32, baseType: !162, size: 8, offset: 144)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !835, file: !836, line: 33, baseType: !132, size: 2048, offset: 152)
!847 = !DILocalVariable(name: "saved_errno", scope: !824, file: !612, line: 294, type: !42)
!848 = !DILocalVariable(name: "fd", scope: !824, file: !612, line: 295, type: !42)
!849 = !DILocation(line: 290, column: 19, scope: !824, inlinedAt: !850)
!850 = distinct !DILocation(line: 105, column: 22, scope: !813)
!851 = !DILocation(line: 290, column: 39, scope: !824, inlinedAt: !850)
!852 = !DILocation(line: 295, column: 12, scope: !824, inlinedAt: !850)
!853 = !DILocation(line: 295, column: 7, scope: !824, inlinedAt: !850)
!854 = !DILocation(line: 299, column: 10, scope: !855, inlinedAt: !850)
!855 = distinct !DILexicalBlock(scope: !824, file: !612, line: 299, column: 7)
!856 = !DILocation(line: 299, column: 7, scope: !824, inlinedAt: !850)
!857 = !DILocation(line: 302, column: 10, scope: !824, inlinedAt: !850)
!858 = !DILocation(line: 292, column: 8, scope: !824, inlinedAt: !850)
!859 = !DILocation(line: 303, column: 12, scope: !860, inlinedAt: !850)
!860 = distinct !DILexicalBlock(scope: !824, file: !612, line: 303, column: 7)
!861 = !DILocation(line: 303, column: 7, scope: !824, inlinedAt: !850)
!862 = !DILocation(line: 305, column: 7, scope: !863, inlinedAt: !850)
!863 = distinct !DILexicalBlock(scope: !860, file: !612, line: 304, column: 5)
!864 = !DILocation(line: 306, column: 7, scope: !863, inlinedAt: !850)
!865 = !DILocation(line: 309, column: 3, scope: !824, inlinedAt: !850)
!866 = !DILocation(line: 309, column: 9, scope: !824, inlinedAt: !850)
!867 = !DILocalVariable(name: "dirp", arg: 1, scope: !868, file: !612, line: 278, type: !828)
!868 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !612, file: !612, line: 278, type: !869, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{!833, !828}
!871 = !{!867, !872}
!872 = !DILocalVariable(name: "dp", scope: !873, file: !612, line: 282, type: !833)
!873 = distinct !DILexicalBlock(scope: !868, file: !612, line: 281, column: 5)
!874 = !DILocation(line: 278, column: 39, scope: !868, inlinedAt: !875)
!875 = distinct !DILocation(line: 310, column: 8, scope: !824, inlinedAt: !850)
!876 = !DILocation(line: 282, column: 33, scope: !873, inlinedAt: !875)
!877 = !DILocation(line: 282, column: 28, scope: !873, inlinedAt: !875)
!878 = !DILocation(line: 283, column: 14, scope: !879, inlinedAt: !875)
!879 = distinct !DILexicalBlock(scope: !873, file: !612, line: 283, column: 11)
!880 = !DILocation(line: 283, column: 22, scope: !879, inlinedAt: !875)
!881 = !DILocation(line: 283, column: 42, scope: !879, inlinedAt: !875)
!882 = !DILocalVariable(name: "file_name", arg: 1, scope: !883, file: !612, line: 265, type: !39)
!883 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !612, file: !612, line: 265, type: !884, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{!28, !39}
!886 = !{!882, !887}
!887 = !DILocalVariable(name: "sep", scope: !888, file: !612, line: 269, type: !22)
!888 = distinct !DILexicalBlock(scope: !889, file: !612, line: 268, column: 5)
!889 = distinct !DILexicalBlock(scope: !883, file: !612, line: 267, column: 7)
!890 = !DILocation(line: 265, column: 28, scope: !883, inlinedAt: !891)
!891 = distinct !DILocation(line: 283, column: 27, scope: !879, inlinedAt: !875)
!892 = !DILocation(line: 267, column: 7, scope: !889, inlinedAt: !891)
!893 = !DILocation(line: 267, column: 20, scope: !889, inlinedAt: !891)
!894 = !DILocation(line: 267, column: 7, scope: !883, inlinedAt: !891)
!895 = !DILocation(line: 269, column: 29, scope: !888, inlinedAt: !891)
!896 = !DILocation(line: 269, column: 42, scope: !888, inlinedAt: !891)
!897 = !DILocation(line: 269, column: 18, scope: !888, inlinedAt: !891)
!898 = !DILocation(line: 269, column: 12, scope: !888, inlinedAt: !891)
!899 = !DILocation(line: 283, column: 11, scope: !873, inlinedAt: !875)
!900 = !DILocation(line: 293, column: 24, scope: !824, inlinedAt: !850)
!901 = !DILocation(line: 294, column: 7, scope: !824, inlinedAt: !850)
!902 = !DILocation(line: 312, column: 3, scope: !824, inlinedAt: !850)
!903 = !DILocation(line: 311, column: 17, scope: !824, inlinedAt: !850)
!904 = !DILocation(line: 315, column: 22, scope: !824, inlinedAt: !850)
!905 = !DILocation(line: 315, column: 3, scope: !824, inlinedAt: !850)
!906 = !DILocation(line: 102, column: 3, scope: !813)
!907 = !DILocation(line: 0, scope: !813)
!908 = distinct !DISubprogram(name: "prog_fprintf", scope: !160, file: !160, line: 28, type: !909, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !159, retainedNodes: !963)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !911, !39, null}
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !913, line: 7, baseType: !914)
!913 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !915, line: 49, size: 1728, elements: !916)
!915 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!916 = !{!917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !932, !934, !935, !936, !937, !938, !940, !944, !947, !949, !952, !955, !956, !957, !958, !959}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !914, file: !915, line: 51, baseType: !42, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !914, file: !915, line: 54, baseType: !21, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !914, file: !915, line: 55, baseType: !21, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !914, file: !915, line: 56, baseType: !21, size: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !914, file: !915, line: 57, baseType: !21, size: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !914, file: !915, line: 58, baseType: !21, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !914, file: !915, line: 59, baseType: !21, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !914, file: !915, line: 60, baseType: !21, size: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !914, file: !915, line: 61, baseType: !21, size: 64, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !914, file: !915, line: 64, baseType: !21, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !914, file: !915, line: 65, baseType: !21, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !914, file: !915, line: 66, baseType: !21, size: 64, offset: 704)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !914, file: !915, line: 68, baseType: !930, size: 64, offset: 768)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !915, line: 36, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !914, file: !915, line: 70, baseType: !933, size: 64, offset: 832)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !914, file: !915, line: 72, baseType: !42, size: 32, offset: 896)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !914, file: !915, line: 73, baseType: !42, size: 32, offset: 928)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !914, file: !915, line: 74, baseType: !842, size: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !914, file: !915, line: 77, baseType: !104, size: 16, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !914, file: !915, line: 78, baseType: !939, size: 8, offset: 1040)
!939 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !914, file: !915, line: 79, baseType: !941, size: 8, offset: 1048)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 1)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !914, file: !915, line: 81, baseType: !945, size: 64, offset: 1088)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !915, line: 43, baseType: null)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !914, file: !915, line: 89, baseType: !948, size: 64, offset: 1152)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !840, line: 151, baseType: !843)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !914, file: !915, line: 91, baseType: !950, size: 64, offset: 1216)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !915, line: 37, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !914, file: !915, line: 92, baseType: !953, size: 64, offset: 1280)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !915, line: 38, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !914, file: !915, line: 93, baseType: !933, size: 64, offset: 1344)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !914, file: !915, line: 94, baseType: !23, size: 64, offset: 1408)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !914, file: !915, line: 95, baseType: !105, size: 64, offset: 1472)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !914, file: !915, line: 96, baseType: !42, size: 32, offset: 1536)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !914, file: !915, line: 98, baseType: !960, size: 160, offset: 1568)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 20)
!963 = !{!964, !965, !966}
!964 = !DILocalVariable(name: "fp", arg: 1, scope: !908, file: !160, line: 28, type: !911)
!965 = !DILocalVariable(name: "fmt", arg: 2, scope: !908, file: !160, line: 28, type: !39)
!966 = !DILocalVariable(name: "ap", scope: !908, file: !160, line: 30, type: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !968, line: 52, baseType: !969)
!968 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !970, line: 48, baseType: !971)
!970 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !160, line: 30, baseType: !972)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !973, size: 192, elements: !942)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !160, line: 30, size: 192, elements: !974)
!974 = !{!975, !976, !977, !978}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !973, file: !160, line: 30, baseType: !7, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !973, file: !160, line: 30, baseType: !7, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !973, file: !160, line: 30, baseType: !23, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !973, file: !160, line: 30, baseType: !23, size: 64, offset: 128)
!979 = !DILocation(line: 28, column: 21, scope: !908)
!980 = !DILocation(line: 28, column: 37, scope: !908)
!981 = !DILocation(line: 30, column: 3, scope: !908)
!982 = !DILocation(line: 30, column: 11, scope: !908)
!983 = !DILocation(line: 31, column: 3, scope: !908)
!984 = !DILocation(line: 32, column: 3, scope: !908)
!985 = !DILocation(line: 33, column: 3, scope: !908)
!986 = !DILocalVariable(name: "__stream", arg: 1, scope: !987, file: !988, line: 127, type: !991)
!987 = distinct !DISubprogram(name: "vfprintf", scope: !988, file: !988, line: 127, type: !989, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !159, retainedNodes: !994)
!988 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!989 = !DISubroutineType(types: !990)
!990 = !{!42, !991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !911)
!992 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!994 = !{!986, !995, !996}
!995 = !DILocalVariable(name: "__fmt", arg: 2, scope: !987, file: !988, line: 128, type: !992)
!996 = !DILocalVariable(name: "__ap", arg: 3, scope: !987, file: !988, line: 128, type: !993)
!997 = !DILocation(line: 127, column: 28, scope: !987, inlinedAt: !998)
!998 = distinct !DILocation(line: 34, column: 3, scope: !908)
!999 = !DILocation(line: 128, column: 27, scope: !987, inlinedAt: !998)
!1000 = !DILocation(line: 128, column: 49, scope: !987, inlinedAt: !998)
!1001 = !DILocation(line: 130, column: 10, scope: !987, inlinedAt: !998)
!1002 = !DILocation(line: 35, column: 3, scope: !908)
!1003 = !DILocalVariable(name: "__c", arg: 1, scope: !1004, file: !1005, line: 91, type: !42)
!1004 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1005, file: !1005, line: 91, type: !1006, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !159, retainedNodes: !1008)
!1005 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!42, !42, !911}
!1008 = !{!1003, !1009}
!1009 = !DILocalVariable(name: "__stream", arg: 2, scope: !1004, file: !1005, line: 91, type: !911)
!1010 = !DILocation(line: 91, column: 21, scope: !1004, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 36, column: 3, scope: !908)
!1012 = !DILocation(line: 91, column: 32, scope: !1004, inlinedAt: !1011)
!1013 = !DILocation(line: 93, column: 10, scope: !1004, inlinedAt: !1011)
!1014 = !{!1015, !637, i64 40}
!1015 = !{!"_IO_FILE", !717, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !717, i64 112, !717, i64 116, !1016, i64 120, !1017, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !1016, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !1016, i64 184, !717, i64 192, !638, i64 196}
!1016 = !{!"long", !638, i64 0}
!1017 = !{!"short", !638, i64 0}
!1018 = !{!1015, !637, i64 48}
!1019 = !{!"branch_weights", i32 2000, i32 1}
!1020 = !DILocation(line: 37, column: 1, scope: !908)
!1021 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !63, file: !63, line: 51, type: !613, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1022)
!1022 = !{!1023}
!1023 = !DILocalVariable(name: "file", arg: 1, scope: !1021, file: !63, line: 51, type: !39)
!1024 = !DILocation(line: 51, column: 41, scope: !1021)
!1025 = !DILocation(line: 53, column: 13, scope: !1021)
!1026 = !DILocation(line: 54, column: 1, scope: !1021)
!1027 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !63, file: !63, line: 88, type: !1028, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !28}
!1030 = !{!1031}
!1031 = !DILocalVariable(name: "ignore", arg: 1, scope: !1027, file: !63, line: 88, type: !28)
!1032 = !DILocation(line: 88, column: 37, scope: !1027)
!1033 = !DILocation(line: 90, column: 16, scope: !1027)
!1034 = !{!1035, !1035, i64 0}
!1035 = !{!"_Bool", !638, i64 0}
!1036 = !DILocation(line: 91, column: 1, scope: !1027)
!1037 = distinct !DISubprogram(name: "close_stdout", scope: !63, file: !63, line: 117, type: !1038, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !58, retainedNodes: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null}
!1040 = !{!1041}
!1041 = !DILocalVariable(name: "write_error", scope: !1042, file: !63, line: 122, type: !39)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !63, line: 121, column: 5)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !63, line: 119, column: 7)
!1044 = !DILocation(line: 119, column: 21, scope: !1043)
!1045 = !DILocation(line: 119, column: 7, scope: !1043)
!1046 = !DILocation(line: 119, column: 29, scope: !1043)
!1047 = !DILocation(line: 120, column: 7, scope: !1043)
!1048 = !DILocation(line: 120, column: 12, scope: !1043)
!1049 = !{i8 0, i8 2}
!1050 = !DILocation(line: 120, column: 25, scope: !1043)
!1051 = !DILocation(line: 120, column: 28, scope: !1043)
!1052 = !DILocation(line: 120, column: 34, scope: !1043)
!1053 = !DILocation(line: 119, column: 7, scope: !1037)
!1054 = !DILocation(line: 122, column: 33, scope: !1042)
!1055 = !DILocation(line: 122, column: 19, scope: !1042)
!1056 = !DILocation(line: 123, column: 11, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1042, file: !63, line: 123, column: 11)
!1058 = !DILocation(line: 0, scope: !1057)
!1059 = !DILocation(line: 123, column: 11, scope: !1042)
!1060 = !DILocation(line: 124, column: 36, scope: !1057)
!1061 = !DILocation(line: 124, column: 9, scope: !1057)
!1062 = !DILocation(line: 127, column: 9, scope: !1057)
!1063 = !DILocation(line: 129, column: 14, scope: !1042)
!1064 = !DILocation(line: 129, column: 7, scope: !1042)
!1065 = !DILocation(line: 134, column: 42, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1037, file: !63, line: 134, column: 7)
!1067 = !DILocation(line: 134, column: 28, scope: !1066)
!1068 = !DILocation(line: 134, column: 50, scope: !1066)
!1069 = !DILocation(line: 134, column: 7, scope: !1037)
!1070 = !DILocation(line: 135, column: 12, scope: !1066)
!1071 = !DILocation(line: 135, column: 5, scope: !1066)
!1072 = !DILocation(line: 136, column: 1, scope: !1037)
!1073 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !1074, file: !1074, line: 31, type: !751, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !163, retainedNodes: !1075)
!1074 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1075 = !{!1076, !1077, !1078, !1079}
!1076 = !DILocalVariable(name: "file", arg: 1, scope: !1073, file: !1074, line: 31, type: !21)
!1077 = !DILocalVariable(name: "base", scope: !1073, file: !1074, line: 33, type: !21)
!1078 = !DILocalVariable(name: "base_lim", scope: !1073, file: !1074, line: 34, type: !21)
!1079 = !DILocalVariable(name: "had_slash", scope: !1073, file: !1074, line: 35, type: !28)
!1080 = !DILocation(line: 31, column: 31, scope: !1073)
!1081 = !DILocation(line: 33, column: 16, scope: !1073)
!1082 = !DILocation(line: 33, column: 9, scope: !1073)
!1083 = !DILocation(line: 39, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1073, file: !1074, line: 39, column: 7)
!1085 = !DILocation(line: 39, column: 7, scope: !1073)
!1086 = !DILocation(line: 41, column: 21, scope: !1073)
!1087 = !DILocation(line: 41, column: 19, scope: !1073)
!1088 = !DILocation(line: 34, column: 9, scope: !1073)
!1089 = !DILocation(line: 42, column: 16, scope: !1073)
!1090 = !DILocation(line: 42, column: 26, scope: !1073)
!1091 = !DILocation(line: 43, column: 13, scope: !1073)
!1092 = !DILocation(line: 44, column: 3, scope: !1073)
!1093 = distinct !DISubprogram(name: "set_program_name", scope: !77, file: !77, line: 39, type: !613, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !73, retainedNodes: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DILocalVariable(name: "argv0", arg: 1, scope: !1093, file: !77, line: 39, type: !39)
!1096 = !DILocalVariable(name: "slash", scope: !1093, file: !77, line: 46, type: !39)
!1097 = !DILocalVariable(name: "base", scope: !1093, file: !77, line: 47, type: !39)
!1098 = !DILocation(line: 39, column: 31, scope: !1093)
!1099 = !DILocation(line: 51, column: 13, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !77, line: 51, column: 7)
!1101 = !DILocation(line: 51, column: 7, scope: !1093)
!1102 = !DILocation(line: 55, column: 14, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !77, line: 52, column: 5)
!1104 = !DILocation(line: 54, column: 7, scope: !1103)
!1105 = !DILocation(line: 56, column: 7, scope: !1103)
!1106 = !DILocation(line: 59, column: 11, scope: !1093)
!1107 = !DILocation(line: 46, column: 15, scope: !1093)
!1108 = !DILocation(line: 60, column: 17, scope: !1093)
!1109 = !DILocation(line: 60, column: 33, scope: !1093)
!1110 = !DILocation(line: 60, column: 11, scope: !1093)
!1111 = !DILocation(line: 47, column: 15, scope: !1093)
!1112 = !DILocation(line: 61, column: 12, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1093, file: !77, line: 61, column: 7)
!1114 = !DILocation(line: 61, column: 20, scope: !1113)
!1115 = !DILocation(line: 61, column: 25, scope: !1113)
!1116 = !DILocation(line: 61, column: 42, scope: !1113)
!1117 = !DILocation(line: 61, column: 28, scope: !1113)
!1118 = !DILocation(line: 61, column: 61, scope: !1113)
!1119 = !DILocation(line: 61, column: 7, scope: !1093)
!1120 = !DILocation(line: 64, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !77, line: 64, column: 11)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !77, line: 62, column: 5)
!1123 = !DILocation(line: 64, column: 36, scope: !1121)
!1124 = !DILocation(line: 64, column: 11, scope: !1122)
!1125 = !DILocation(line: 66, column: 24, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !77, line: 65, column: 9)
!1127 = !DILocation(line: 70, column: 41, scope: !1126)
!1128 = !DILocation(line: 72, column: 9, scope: !1126)
!1129 = !DILocation(line: 84, column: 16, scope: !1093)
!1130 = !DILocation(line: 90, column: 27, scope: !1093)
!1131 = !DILocation(line: 92, column: 1, scope: !1093)
!1132 = distinct !DISubprogram(name: "clone_quoting_options", scope: !111, file: !111, line: 122, type: !1133, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1136)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!1135, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(name: "o", arg: 1, scope: !1132, file: !111, line: 122, type: !1135)
!1138 = !DILocalVariable(name: "e", scope: !1132, file: !111, line: 124, type: !42)
!1139 = !DILocalVariable(name: "p", scope: !1132, file: !111, line: 125, type: !1135)
!1140 = !DILocation(line: 122, column: 48, scope: !1132)
!1141 = !DILocation(line: 124, column: 11, scope: !1132)
!1142 = !DILocation(line: 124, column: 7, scope: !1132)
!1143 = !DILocation(line: 125, column: 40, scope: !1132)
!1144 = !DILocation(line: 125, column: 31, scope: !1132)
!1145 = !DILocation(line: 125, column: 27, scope: !1132)
!1146 = !DILocation(line: 127, column: 9, scope: !1132)
!1147 = !DILocation(line: 128, column: 3, scope: !1132)
!1148 = distinct !DISubprogram(name: "get_quoting_style", scope: !111, file: !111, line: 133, type: !1149, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1153)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!5, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1153 = !{!1154}
!1154 = !DILocalVariable(name: "o", arg: 1, scope: !1148, file: !111, line: 133, type: !1151)
!1155 = !DILocation(line: 133, column: 50, scope: !1148)
!1156 = !DILocation(line: 135, column: 11, scope: !1148)
!1157 = !DILocation(line: 135, column: 46, scope: !1148)
!1158 = !{!1159, !638, i64 0}
!1159 = !{!"quoting_options", !638, i64 0, !717, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!1160 = !DILocation(line: 135, column: 3, scope: !1148)
!1161 = distinct !DISubprogram(name: "set_quoting_style", scope: !111, file: !111, line: 141, type: !1162, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1135, !5}
!1164 = !{!1165, !1166}
!1165 = !DILocalVariable(name: "o", arg: 1, scope: !1161, file: !111, line: 141, type: !1135)
!1166 = !DILocalVariable(name: "s", arg: 2, scope: !1161, file: !111, line: 141, type: !5)
!1167 = !DILocation(line: 141, column: 44, scope: !1161)
!1168 = !DILocation(line: 141, column: 66, scope: !1161)
!1169 = !DILocation(line: 143, column: 4, scope: !1161)
!1170 = !DILocation(line: 143, column: 39, scope: !1161)
!1171 = !DILocation(line: 143, column: 45, scope: !1161)
!1172 = !DILocation(line: 144, column: 1, scope: !1161)
!1173 = distinct !DISubprogram(name: "set_char_quoting", scope: !111, file: !111, line: 152, type: !1174, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!42, !1135, !22, !42}
!1176 = !{!1177, !1178, !1179, !1180, !1181, !1183, !1184}
!1177 = !DILocalVariable(name: "o", arg: 1, scope: !1173, file: !111, line: 152, type: !1135)
!1178 = !DILocalVariable(name: "c", arg: 2, scope: !1173, file: !111, line: 152, type: !22)
!1179 = !DILocalVariable(name: "i", arg: 3, scope: !1173, file: !111, line: 152, type: !42)
!1180 = !DILocalVariable(name: "uc", scope: !1173, file: !111, line: 154, type: !162)
!1181 = !DILocalVariable(name: "p", scope: !1173, file: !111, line: 155, type: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1183 = !DILocalVariable(name: "shift", scope: !1173, file: !111, line: 157, type: !42)
!1184 = !DILocalVariable(name: "r", scope: !1173, file: !111, line: 158, type: !42)
!1185 = !DILocation(line: 152, column: 43, scope: !1173)
!1186 = !DILocation(line: 152, column: 51, scope: !1173)
!1187 = !DILocation(line: 152, column: 58, scope: !1173)
!1188 = !DILocation(line: 154, column: 17, scope: !1173)
!1189 = !DILocation(line: 156, column: 6, scope: !1173)
!1190 = !DILocation(line: 156, column: 62, scope: !1173)
!1191 = !DILocation(line: 156, column: 57, scope: !1173)
!1192 = !DILocation(line: 155, column: 17, scope: !1173)
!1193 = !DILocation(line: 157, column: 15, scope: !1173)
!1194 = !DILocation(line: 157, column: 7, scope: !1173)
!1195 = !DILocation(line: 158, column: 12, scope: !1173)
!1196 = !DILocation(line: 158, column: 15, scope: !1173)
!1197 = !DILocation(line: 158, column: 25, scope: !1173)
!1198 = !DILocation(line: 158, column: 7, scope: !1173)
!1199 = !DILocation(line: 159, column: 13, scope: !1173)
!1200 = !DILocation(line: 159, column: 18, scope: !1173)
!1201 = !DILocation(line: 159, column: 23, scope: !1173)
!1202 = !DILocation(line: 159, column: 6, scope: !1173)
!1203 = !DILocation(line: 160, column: 3, scope: !1173)
!1204 = distinct !DISubprogram(name: "set_quoting_flags", scope: !111, file: !111, line: 168, type: !1205, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!42, !1135, !42}
!1207 = !{!1208, !1209, !1210}
!1208 = !DILocalVariable(name: "o", arg: 1, scope: !1204, file: !111, line: 168, type: !1135)
!1209 = !DILocalVariable(name: "i", arg: 2, scope: !1204, file: !111, line: 168, type: !42)
!1210 = !DILocalVariable(name: "r", scope: !1204, file: !111, line: 170, type: !42)
!1211 = !DILocation(line: 168, column: 44, scope: !1204)
!1212 = !DILocation(line: 168, column: 51, scope: !1204)
!1213 = !DILocation(line: 171, column: 8, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1204, file: !111, line: 171, column: 7)
!1215 = !DILocation(line: 171, column: 7, scope: !1204)
!1216 = !DILocation(line: 173, column: 10, scope: !1204)
!1217 = !{!1159, !717, i64 4}
!1218 = !DILocation(line: 170, column: 7, scope: !1204)
!1219 = !DILocation(line: 174, column: 12, scope: !1204)
!1220 = !DILocation(line: 175, column: 3, scope: !1204)
!1221 = distinct !DISubprogram(name: "set_custom_quoting", scope: !111, file: !111, line: 179, type: !1222, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1224)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{null, !1135, !39, !39}
!1224 = !{!1225, !1226, !1227}
!1225 = !DILocalVariable(name: "o", arg: 1, scope: !1221, file: !111, line: 179, type: !1135)
!1226 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1221, file: !111, line: 180, type: !39)
!1227 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1221, file: !111, line: 180, type: !39)
!1228 = !DILocation(line: 179, column: 45, scope: !1221)
!1229 = !DILocation(line: 180, column: 33, scope: !1221)
!1230 = !DILocation(line: 180, column: 57, scope: !1221)
!1231 = !DILocation(line: 182, column: 8, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1221, file: !111, line: 182, column: 7)
!1233 = !DILocation(line: 182, column: 7, scope: !1221)
!1234 = !DILocation(line: 184, column: 6, scope: !1221)
!1235 = !DILocation(line: 184, column: 12, scope: !1221)
!1236 = !DILocation(line: 185, column: 8, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1221, file: !111, line: 185, column: 7)
!1238 = !DILocation(line: 185, column: 23, scope: !1237)
!1239 = !DILocation(line: 185, column: 19, scope: !1237)
!1240 = !DILocation(line: 186, column: 5, scope: !1237)
!1241 = !DILocation(line: 187, column: 6, scope: !1221)
!1242 = !DILocation(line: 187, column: 17, scope: !1221)
!1243 = !{!1159, !637, i64 40}
!1244 = !DILocation(line: 188, column: 6, scope: !1221)
!1245 = !DILocation(line: 188, column: 18, scope: !1221)
!1246 = !{!1159, !637, i64 48}
!1247 = !DILocation(line: 189, column: 1, scope: !1221)
!1248 = distinct !DISubprogram(name: "quotearg_buffer", scope: !111, file: !111, line: 784, type: !1249, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!105, !21, !105, !39, !105, !1151}
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1252 = !DILocalVariable(name: "buffer", arg: 1, scope: !1248, file: !111, line: 784, type: !21)
!1253 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1248, file: !111, line: 784, type: !105)
!1254 = !DILocalVariable(name: "arg", arg: 3, scope: !1248, file: !111, line: 785, type: !39)
!1255 = !DILocalVariable(name: "argsize", arg: 4, scope: !1248, file: !111, line: 785, type: !105)
!1256 = !DILocalVariable(name: "o", arg: 5, scope: !1248, file: !111, line: 786, type: !1151)
!1257 = !DILocalVariable(name: "p", scope: !1248, file: !111, line: 788, type: !1151)
!1258 = !DILocalVariable(name: "e", scope: !1248, file: !111, line: 789, type: !42)
!1259 = !DILocalVariable(name: "r", scope: !1248, file: !111, line: 790, type: !105)
!1260 = !DILocation(line: 784, column: 24, scope: !1248)
!1261 = !DILocation(line: 784, column: 39, scope: !1248)
!1262 = !DILocation(line: 785, column: 30, scope: !1248)
!1263 = !DILocation(line: 785, column: 42, scope: !1248)
!1264 = !DILocation(line: 786, column: 48, scope: !1248)
!1265 = !DILocation(line: 788, column: 37, scope: !1248)
!1266 = !DILocation(line: 788, column: 33, scope: !1248)
!1267 = !DILocation(line: 789, column: 11, scope: !1248)
!1268 = !DILocation(line: 789, column: 7, scope: !1248)
!1269 = !DILocation(line: 791, column: 43, scope: !1248)
!1270 = !DILocation(line: 791, column: 53, scope: !1248)
!1271 = !DILocation(line: 791, column: 60, scope: !1248)
!1272 = !DILocation(line: 792, column: 43, scope: !1248)
!1273 = !DILocation(line: 792, column: 58, scope: !1248)
!1274 = !DILocation(line: 790, column: 14, scope: !1248)
!1275 = !DILocation(line: 790, column: 10, scope: !1248)
!1276 = !DILocation(line: 793, column: 9, scope: !1248)
!1277 = !DILocation(line: 794, column: 3, scope: !1248)
!1278 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !111, file: !111, line: 256, type: !1279, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1283)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!105, !21, !105, !39, !105, !5, !42, !1281, !39, !39}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1308, !1309, !1310, !1311, !1312, !1315, !1316, !1334, !1337, !1338, !1345}
!1284 = !DILocalVariable(name: "buffer", arg: 1, scope: !1278, file: !111, line: 256, type: !21)
!1285 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1278, file: !111, line: 256, type: !105)
!1286 = !DILocalVariable(name: "arg", arg: 3, scope: !1278, file: !111, line: 257, type: !39)
!1287 = !DILocalVariable(name: "argsize", arg: 4, scope: !1278, file: !111, line: 257, type: !105)
!1288 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1278, file: !111, line: 258, type: !5)
!1289 = !DILocalVariable(name: "flags", arg: 6, scope: !1278, file: !111, line: 258, type: !42)
!1290 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1278, file: !111, line: 259, type: !1281)
!1291 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1278, file: !111, line: 260, type: !39)
!1292 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1278, file: !111, line: 261, type: !39)
!1293 = !DILocalVariable(name: "i", scope: !1278, file: !111, line: 263, type: !105)
!1294 = !DILocalVariable(name: "len", scope: !1278, file: !111, line: 264, type: !105)
!1295 = !DILocalVariable(name: "orig_buffersize", scope: !1278, file: !111, line: 265, type: !105)
!1296 = !DILocalVariable(name: "quote_string", scope: !1278, file: !111, line: 266, type: !39)
!1297 = !DILocalVariable(name: "quote_string_len", scope: !1278, file: !111, line: 267, type: !105)
!1298 = !DILocalVariable(name: "backslash_escapes", scope: !1278, file: !111, line: 268, type: !28)
!1299 = !DILocalVariable(name: "unibyte_locale", scope: !1278, file: !111, line: 269, type: !28)
!1300 = !DILocalVariable(name: "elide_outer_quotes", scope: !1278, file: !111, line: 270, type: !28)
!1301 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1278, file: !111, line: 271, type: !28)
!1302 = !DILocalVariable(name: "encountered_single_quote", scope: !1278, file: !111, line: 272, type: !28)
!1303 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1278, file: !111, line: 273, type: !28)
!1304 = !DILocalVariable(name: "c", scope: !1305, file: !111, line: 402, type: !162)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !111, line: 401, column: 5)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !111, line: 400, column: 3)
!1307 = distinct !DILexicalBlock(scope: !1278, file: !111, line: 400, column: 3)
!1308 = !DILocalVariable(name: "esc", scope: !1305, file: !111, line: 403, type: !162)
!1309 = !DILocalVariable(name: "is_right_quote", scope: !1305, file: !111, line: 404, type: !28)
!1310 = !DILocalVariable(name: "escaping", scope: !1305, file: !111, line: 405, type: !28)
!1311 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1305, file: !111, line: 406, type: !28)
!1312 = !DILocalVariable(name: "m", scope: !1313, file: !111, line: 610, type: !105)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 608, column: 11)
!1314 = distinct !DILexicalBlock(scope: !1305, file: !111, line: 426, column: 9)
!1315 = !DILocalVariable(name: "printable", scope: !1313, file: !111, line: 612, type: !28)
!1316 = !DILocalVariable(name: "mbstate", scope: !1317, file: !111, line: 621, type: !1319)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !111, line: 620, column: 15)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !111, line: 614, column: 17)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1320, line: 6, baseType: !1321)
!1320 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1322, line: 21, baseType: !1323)
!1322 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1322, line: 13, size: 64, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1323, file: !1322, line: 15, baseType: !42, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1323, file: !1322, line: 20, baseType: !1327, size: 32, offset: 32)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1323, file: !1322, line: 16, size: 32, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1327, file: !1322, line: 18, baseType: !7, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1327, file: !1322, line: 19, baseType: !1331, size: 32)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 4)
!1334 = !DILocalVariable(name: "w", scope: !1335, file: !111, line: 631, type: !1336)
!1335 = distinct !DILexicalBlock(scope: !1317, file: !111, line: 630, column: 19)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !106, line: 90, baseType: !42)
!1337 = !DILocalVariable(name: "bytes", scope: !1335, file: !111, line: 632, type: !105)
!1338 = !DILocalVariable(name: "j", scope: !1339, file: !111, line: 657, type: !105)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !111, line: 656, column: 27)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !111, line: 654, column: 29)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !111, line: 649, column: 23)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !111, line: 641, column: 30)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !111, line: 636, column: 30)
!1344 = distinct !DILexicalBlock(scope: !1335, file: !111, line: 634, column: 25)
!1345 = !DILocalVariable(name: "ilim", scope: !1346, file: !111, line: 684, type: !105)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !111, line: 681, column: 15)
!1347 = distinct !DILexicalBlock(scope: !1313, file: !111, line: 680, column: 17)
!1348 = !DILocation(line: 256, column: 33, scope: !1278)
!1349 = !DILocation(line: 256, column: 48, scope: !1278)
!1350 = !DILocation(line: 257, column: 39, scope: !1278)
!1351 = !DILocation(line: 257, column: 51, scope: !1278)
!1352 = !DILocation(line: 258, column: 46, scope: !1278)
!1353 = !DILocation(line: 258, column: 65, scope: !1278)
!1354 = !DILocation(line: 259, column: 47, scope: !1278)
!1355 = !DILocation(line: 260, column: 39, scope: !1278)
!1356 = !DILocation(line: 261, column: 39, scope: !1278)
!1357 = !DILocation(line: 264, column: 10, scope: !1278)
!1358 = !DILocation(line: 265, column: 10, scope: !1278)
!1359 = !DILocation(line: 266, column: 15, scope: !1278)
!1360 = !DILocation(line: 267, column: 10, scope: !1278)
!1361 = !DILocation(line: 268, column: 8, scope: !1278)
!1362 = !DILocation(line: 269, column: 25, scope: !1278)
!1363 = !DILocation(line: 269, column: 36, scope: !1278)
!1364 = !DILocation(line: 270, column: 8, scope: !1278)
!1365 = !DILocation(line: 271, column: 8, scope: !1278)
!1366 = !DILocation(line: 272, column: 8, scope: !1278)
!1367 = !DILocation(line: 273, column: 8, scope: !1278)
!1368 = !DILocation(line: 273, column: 3, scope: !1278)
!1369 = !DILocation(line: 0, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1278, file: !111, line: 317, column: 5)
!1371 = !DILocation(line: 316, column: 3, scope: !1278)
!1372 = !DILocation(line: 323, column: 11, scope: !1370)
!1373 = !DILocation(line: 323, column: 12, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !111, line: 323, column: 11)
!1375 = !DILocation(line: 324, column: 9, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !111, line: 324, column: 9)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !111, line: 324, column: 9)
!1378 = !DILocation(line: 324, column: 9, scope: !1377)
!1379 = !DILocation(line: 362, column: 26, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !111, line: 340, column: 11)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !111, line: 339, column: 13)
!1382 = distinct !DILexicalBlock(scope: !1370, file: !111, line: 338, column: 7)
!1383 = !DILocation(line: 363, column: 27, scope: !1380)
!1384 = !DILocation(line: 364, column: 11, scope: !1380)
!1385 = !DILocation(line: 365, column: 14, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !111, line: 365, column: 13)
!1387 = !DILocation(line: 365, column: 13, scope: !1382)
!1388 = !DILocation(line: 366, column: 43, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !111, line: 366, column: 11)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !111, line: 366, column: 11)
!1391 = !DILocation(line: 366, column: 11, scope: !1390)
!1392 = !DILocation(line: 367, column: 13, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !111, line: 367, column: 13)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !111, line: 367, column: 13)
!1395 = !DILocation(line: 367, column: 13, scope: !1394)
!1396 = !DILocation(line: 366, column: 70, scope: !1389)
!1397 = distinct !{!1397, !1391, !1398}
!1398 = !DILocation(line: 367, column: 13, scope: !1390)
!1399 = !DILocation(line: 370, column: 28, scope: !1382)
!1400 = !DILocation(line: 372, column: 7, scope: !1370)
!1401 = !DILocation(line: 376, column: 7, scope: !1370)
!1402 = !DILocation(line: 379, column: 7, scope: !1370)
!1403 = !DILocation(line: 381, column: 12, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1370, file: !111, line: 381, column: 11)
!1405 = !DILocation(line: 381, column: 11, scope: !1370)
!1406 = !DILocation(line: 0, scope: !1404)
!1407 = !DILocation(line: 386, column: 12, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1370, file: !111, line: 386, column: 11)
!1409 = !DILocation(line: 386, column: 11, scope: !1370)
!1410 = !DILocation(line: 387, column: 9, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !111, line: 387, column: 9)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !111, line: 387, column: 9)
!1413 = !DILocation(line: 387, column: 9, scope: !1412)
!1414 = !DILocation(line: 394, column: 7, scope: !1370)
!1415 = !DILocation(line: 397, column: 7, scope: !1370)
!1416 = !DILocation(line: 0, scope: !1278)
!1417 = !DILocation(line: 263, column: 10, scope: !1278)
!1418 = !DILocation(line: 400, column: 8, scope: !1307)
!1419 = !DILocation(line: 0, scope: !1306)
!1420 = !DILocation(line: 400, column: 27, scope: !1306)
!1421 = !DILocation(line: 400, column: 19, scope: !1306)
!1422 = !DILocation(line: 400, column: 41, scope: !1306)
!1423 = !DILocation(line: 400, column: 48, scope: !1306)
!1424 = !DILocation(line: 400, column: 3, scope: !1307)
!1425 = !DILocation(line: 400, column: 60, scope: !1306)
!1426 = !DILocation(line: 404, column: 12, scope: !1305)
!1427 = !DILocation(line: 405, column: 12, scope: !1305)
!1428 = !DILocation(line: 406, column: 12, scope: !1305)
!1429 = !DILocation(line: 409, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1305, file: !111, line: 408, column: 11)
!1431 = !DILocation(line: 411, column: 17, scope: !1430)
!1432 = !DILocation(line: 412, column: 39, scope: !1430)
!1433 = !DILocation(line: 416, column: 32, scope: !1430)
!1434 = !DILocation(line: 412, column: 19, scope: !1430)
!1435 = !DILocation(line: 412, column: 15, scope: !1430)
!1436 = !DILocation(line: 417, column: 11, scope: !1430)
!1437 = !DILocation(line: 417, column: 26, scope: !1430)
!1438 = !DILocation(line: 417, column: 14, scope: !1430)
!1439 = !DILocation(line: 417, column: 63, scope: !1430)
!1440 = !DILocation(line: 408, column: 11, scope: !1305)
!1441 = !DILocation(line: 0, scope: !1305)
!1442 = !DILocation(line: 424, column: 11, scope: !1305)
!1443 = !DILocation(line: 402, column: 21, scope: !1305)
!1444 = !DILocation(line: 425, column: 7, scope: !1305)
!1445 = !DILocation(line: 428, column: 15, scope: !1314)
!1446 = !DILocation(line: 430, column: 15, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !111, line: 430, column: 15)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !111, line: 429, column: 13)
!1449 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 428, column: 15)
!1450 = !DILocation(line: 430, column: 15, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !111, line: 430, column: 15)
!1452 = !DILocation(line: 430, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !111, line: 430, column: 15)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !111, line: 430, column: 15)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !111, line: 430, column: 15)
!1456 = !DILocation(line: 430, column: 15, scope: !1454)
!1457 = !DILocation(line: 430, column: 15, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !111, line: 430, column: 15)
!1459 = distinct !DILexicalBlock(scope: !1455, file: !111, line: 430, column: 15)
!1460 = !DILocation(line: 430, column: 15, scope: !1459)
!1461 = !DILocation(line: 430, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !111, line: 430, column: 15)
!1463 = distinct !DILexicalBlock(scope: !1455, file: !111, line: 430, column: 15)
!1464 = !DILocation(line: 430, column: 15, scope: !1463)
!1465 = !DILocation(line: 430, column: 15, scope: !1455)
!1466 = !DILocation(line: 430, column: 15, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !111, line: 430, column: 15)
!1468 = distinct !DILexicalBlock(scope: !1447, file: !111, line: 430, column: 15)
!1469 = !DILocation(line: 430, column: 15, scope: !1468)
!1470 = !DILocation(line: 438, column: 19, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1448, file: !111, line: 437, column: 19)
!1472 = !DILocation(line: 438, column: 24, scope: !1471)
!1473 = !DILocation(line: 438, column: 28, scope: !1471)
!1474 = !DILocation(line: 438, column: 38, scope: !1471)
!1475 = !DILocation(line: 438, column: 48, scope: !1471)
!1476 = !DILocation(line: 438, column: 59, scope: !1471)
!1477 = !DILocation(line: 440, column: 19, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !111, line: 440, column: 19)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !111, line: 440, column: 19)
!1480 = distinct !DILexicalBlock(scope: !1471, file: !111, line: 439, column: 17)
!1481 = !DILocation(line: 440, column: 19, scope: !1479)
!1482 = !DILocation(line: 441, column: 19, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !111, line: 441, column: 19)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !111, line: 441, column: 19)
!1485 = !DILocation(line: 441, column: 19, scope: !1484)
!1486 = !DILocation(line: 442, column: 17, scope: !1480)
!1487 = !DILocation(line: 449, column: 20, scope: !1449)
!1488 = !DILocation(line: 454, column: 11, scope: !1314)
!1489 = !DILocation(line: 457, column: 19, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 455, column: 13)
!1491 = !DILocation(line: 463, column: 19, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1490, file: !111, line: 462, column: 19)
!1493 = !DILocation(line: 463, column: 24, scope: !1492)
!1494 = !DILocation(line: 463, column: 28, scope: !1492)
!1495 = !DILocation(line: 463, column: 38, scope: !1492)
!1496 = !DILocation(line: 463, column: 47, scope: !1492)
!1497 = !DILocation(line: 463, column: 41, scope: !1492)
!1498 = !DILocation(line: 463, column: 52, scope: !1492)
!1499 = !DILocation(line: 462, column: 19, scope: !1490)
!1500 = !DILocation(line: 464, column: 25, scope: !1492)
!1501 = !DILocation(line: 464, column: 17, scope: !1492)
!1502 = !DILocation(line: 471, column: 25, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1492, file: !111, line: 465, column: 19)
!1504 = !DILocation(line: 475, column: 21, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !111, line: 475, column: 21)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !111, line: 475, column: 21)
!1507 = !DILocation(line: 475, column: 21, scope: !1506)
!1508 = !DILocation(line: 476, column: 21, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !111, line: 476, column: 21)
!1510 = distinct !DILexicalBlock(scope: !1503, file: !111, line: 476, column: 21)
!1511 = !DILocation(line: 476, column: 21, scope: !1510)
!1512 = !DILocation(line: 477, column: 21, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !111, line: 477, column: 21)
!1514 = distinct !DILexicalBlock(scope: !1503, file: !111, line: 477, column: 21)
!1515 = !DILocation(line: 477, column: 21, scope: !1514)
!1516 = !DILocation(line: 478, column: 21, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !111, line: 478, column: 21)
!1518 = distinct !DILexicalBlock(scope: !1503, file: !111, line: 478, column: 21)
!1519 = !DILocation(line: 478, column: 21, scope: !1518)
!1520 = !DILocation(line: 479, column: 21, scope: !1503)
!1521 = !DILocation(line: 403, column: 21, scope: !1305)
!1522 = !DILocation(line: 492, column: 31, scope: !1314)
!1523 = !DILocation(line: 493, column: 31, scope: !1314)
!1524 = !DILocation(line: 495, column: 31, scope: !1314)
!1525 = !DILocation(line: 496, column: 31, scope: !1314)
!1526 = !DILocation(line: 497, column: 31, scope: !1314)
!1527 = !DILocation(line: 500, column: 15, scope: !1314)
!1528 = !DILocation(line: 502, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !111, line: 501, column: 13)
!1530 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 500, column: 15)
!1531 = !DILocation(line: 509, column: 33, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 509, column: 15)
!1533 = !DILocation(line: 0, scope: !1314)
!1534 = !DILocation(line: 514, column: 15, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 513, column: 15)
!1536 = !DILocation(line: 518, column: 15, scope: !1314)
!1537 = !DILocation(line: 526, column: 26, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 526, column: 15)
!1539 = !DILocation(line: 526, column: 15, scope: !1314)
!1540 = !DILocation(line: 526, column: 40, scope: !1538)
!1541 = !DILocation(line: 526, column: 47, scope: !1538)
!1542 = !DILocation(line: 530, column: 17, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 530, column: 15)
!1544 = !DILocation(line: 526, column: 18, scope: !1538)
!1545 = !DILocation(line: 526, column: 65, scope: !1538)
!1546 = !DILocation(line: 530, column: 15, scope: !1314)
!1547 = !DILocation(line: 535, column: 11, scope: !1314)
!1548 = !DILocation(line: 549, column: 15, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 548, column: 15)
!1550 = !DILocation(line: 556, column: 15, scope: !1314)
!1551 = !DILocation(line: 558, column: 19, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !111, line: 557, column: 13)
!1553 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 556, column: 15)
!1554 = !DILocation(line: 561, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !111, line: 561, column: 19)
!1556 = !DILocation(line: 561, column: 35, scope: !1555)
!1557 = !DILocation(line: 561, column: 30, scope: !1555)
!1558 = !DILocation(line: 570, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !111, line: 570, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1552, file: !111, line: 570, column: 15)
!1561 = !DILocation(line: 570, column: 15, scope: !1560)
!1562 = !DILocation(line: 571, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !111, line: 571, column: 15)
!1564 = distinct !DILexicalBlock(scope: !1552, file: !111, line: 571, column: 15)
!1565 = !DILocation(line: 571, column: 15, scope: !1564)
!1566 = !DILocation(line: 572, column: 15, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !111, line: 572, column: 15)
!1568 = distinct !DILexicalBlock(scope: !1552, file: !111, line: 572, column: 15)
!1569 = !DILocation(line: 572, column: 15, scope: !1568)
!1570 = !DILocation(line: 574, column: 13, scope: !1552)
!1571 = !DILocation(line: 614, column: 17, scope: !1313)
!1572 = !DILocation(line: 610, column: 20, scope: !1313)
!1573 = !DILocation(line: 617, column: 29, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1318, file: !111, line: 615, column: 15)
!1575 = !{!1017, !1017, i64 0}
!1576 = !DILocation(line: 617, column: 27, scope: !1574)
!1577 = !DILocation(line: 612, column: 18, scope: !1313)
!1578 = !DILocation(line: 618, column: 15, scope: !1574)
!1579 = !DILocation(line: 621, column: 17, scope: !1317)
!1580 = !DILocation(line: 622, column: 17, scope: !1317)
!1581 = !DILocation(line: 626, column: 29, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1317, file: !111, line: 626, column: 21)
!1583 = !DILocation(line: 626, column: 21, scope: !1317)
!1584 = !DILocation(line: 627, column: 29, scope: !1582)
!1585 = !DILocation(line: 627, column: 19, scope: !1582)
!1586 = !DILocation(line: 0, scope: !1430)
!1587 = !DILocation(line: 629, column: 17, scope: !1317)
!1588 = !DILocation(line: 624, column: 19, scope: !1317)
!1589 = !DILocation(line: 625, column: 27, scope: !1317)
!1590 = !DILocation(line: 631, column: 21, scope: !1335)
!1591 = !DILocation(line: 632, column: 56, scope: !1335)
!1592 = !DILocation(line: 632, column: 50, scope: !1335)
!1593 = !DILocation(line: 633, column: 53, scope: !1335)
!1594 = !DILocation(line: 621, column: 27, scope: !1317)
!1595 = !DILocation(line: 631, column: 29, scope: !1335)
!1596 = !DILocation(line: 632, column: 36, scope: !1335)
!1597 = !DILocation(line: 632, column: 28, scope: !1335)
!1598 = !DILocation(line: 634, column: 25, scope: !1335)
!1599 = !DILocation(line: 644, column: 38, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1342, file: !111, line: 642, column: 23)
!1601 = !DILocation(line: 644, column: 48, scope: !1600)
!1602 = !DILocation(line: 644, column: 51, scope: !1600)
!1603 = !DILocation(line: 644, column: 25, scope: !1600)
!1604 = !DILocation(line: 645, column: 28, scope: !1600)
!1605 = !DILocation(line: 644, column: 34, scope: !1600)
!1606 = distinct !{!1606, !1603, !1604}
!1607 = !DILocation(line: 658, column: 43, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !111, line: 658, column: 29)
!1609 = distinct !DILexicalBlock(scope: !1339, file: !111, line: 658, column: 29)
!1610 = !DILocation(line: 655, column: 29, scope: !1340)
!1611 = !DILocation(line: 657, column: 36, scope: !1339)
!1612 = !DILocation(line: 659, column: 49, scope: !1608)
!1613 = !DILocation(line: 659, column: 39, scope: !1608)
!1614 = !DILocation(line: 659, column: 31, scope: !1608)
!1615 = !DILocation(line: 658, column: 53, scope: !1608)
!1616 = !DILocation(line: 658, column: 29, scope: !1609)
!1617 = distinct !{!1617, !1616, !1618}
!1618 = !DILocation(line: 667, column: 33, scope: !1609)
!1619 = !DILocation(line: 674, column: 19, scope: !1317)
!1620 = !DILocation(line: 670, column: 41, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1341, file: !111, line: 670, column: 29)
!1622 = !DILocation(line: 670, column: 31, scope: !1621)
!1623 = !DILocation(line: 670, column: 29, scope: !1341)
!1624 = !DILocation(line: 672, column: 27, scope: !1341)
!1625 = !DILocation(line: 675, column: 26, scope: !1317)
!1626 = !DILocation(line: 675, column: 24, scope: !1317)
!1627 = !DILocation(line: 674, column: 19, scope: !1335)
!1628 = distinct !{!1628, !1587, !1629}
!1629 = !DILocation(line: 675, column: 44, scope: !1317)
!1630 = !DILocation(line: 676, column: 15, scope: !1318)
!1631 = !DILocation(line: 0, scope: !1582)
!1632 = !DILocation(line: 0, scope: !1317)
!1633 = !DILocation(line: 678, column: 40, scope: !1313)
!1634 = !DILocation(line: 680, column: 19, scope: !1347)
!1635 = !DILocation(line: 680, column: 45, scope: !1347)
!1636 = !DILocation(line: 680, column: 23, scope: !1347)
!1637 = !DILocation(line: 684, column: 33, scope: !1346)
!1638 = !DILocation(line: 684, column: 24, scope: !1346)
!1639 = !DILocation(line: 686, column: 17, scope: !1346)
!1640 = !DILocation(line: 0, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !111, line: 687, column: 19)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !111, line: 686, column: 17)
!1643 = distinct !DILexicalBlock(scope: !1346, file: !111, line: 686, column: 17)
!1644 = !DILocation(line: 0, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !111, line: 703, column: 21)
!1646 = !DILocation(line: 0, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !111, line: 696, column: 23)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !111, line: 695, column: 30)
!1649 = distinct !DILexicalBlock(scope: !1641, file: !111, line: 688, column: 25)
!1650 = !DILocation(line: 688, column: 43, scope: !1649)
!1651 = !DILocation(line: 690, column: 25, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !111, line: 690, column: 25)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !111, line: 689, column: 23)
!1654 = !DILocation(line: 690, column: 25, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !111, line: 690, column: 25)
!1656 = !DILocation(line: 690, column: 25, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !111, line: 690, column: 25)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !111, line: 690, column: 25)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !111, line: 690, column: 25)
!1660 = !DILocation(line: 690, column: 25, scope: !1658)
!1661 = !DILocation(line: 690, column: 25, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !111, line: 690, column: 25)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !111, line: 690, column: 25)
!1664 = !DILocation(line: 690, column: 25, scope: !1663)
!1665 = !DILocation(line: 690, column: 25, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !111, line: 690, column: 25)
!1667 = distinct !DILexicalBlock(scope: !1659, file: !111, line: 690, column: 25)
!1668 = !DILocation(line: 690, column: 25, scope: !1667)
!1669 = !DILocation(line: 690, column: 25, scope: !1659)
!1670 = !DILocation(line: 690, column: 25, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !111, line: 690, column: 25)
!1672 = distinct !DILexicalBlock(scope: !1652, file: !111, line: 690, column: 25)
!1673 = !DILocation(line: 690, column: 25, scope: !1672)
!1674 = !DILocation(line: 691, column: 25, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !111, line: 691, column: 25)
!1676 = distinct !DILexicalBlock(scope: !1653, file: !111, line: 691, column: 25)
!1677 = !DILocation(line: 691, column: 25, scope: !1676)
!1678 = !DILocation(line: 692, column: 25, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !111, line: 692, column: 25)
!1680 = distinct !DILexicalBlock(scope: !1653, file: !111, line: 692, column: 25)
!1681 = !DILocation(line: 692, column: 25, scope: !1680)
!1682 = !DILocation(line: 693, column: 38, scope: !1653)
!1683 = !DILocation(line: 693, column: 33, scope: !1653)
!1684 = !DILocation(line: 694, column: 23, scope: !1653)
!1685 = !DILocation(line: 695, column: 30, scope: !1648)
!1686 = !DILocation(line: 695, column: 30, scope: !1649)
!1687 = !DILocation(line: 697, column: 25, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !111, line: 697, column: 25)
!1689 = distinct !DILexicalBlock(scope: !1647, file: !111, line: 697, column: 25)
!1690 = !DILocation(line: 697, column: 25, scope: !1689)
!1691 = !DILocation(line: 699, column: 23, scope: !1647)
!1692 = !DILocation(line: 0, scope: !1680)
!1693 = !DILocation(line: 0, scope: !1653)
!1694 = !DILocation(line: 0, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1430, file: !111, line: 418, column: 9)
!1696 = !DILocation(line: 0, scope: !1652)
!1697 = !DILocation(line: 700, column: 35, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1641, file: !111, line: 700, column: 25)
!1699 = !DILocation(line: 700, column: 30, scope: !1698)
!1700 = !DILocation(line: 700, column: 25, scope: !1641)
!1701 = !DILocation(line: 702, column: 21, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !111, line: 702, column: 21)
!1703 = distinct !DILexicalBlock(scope: !1641, file: !111, line: 702, column: 21)
!1704 = !DILocation(line: 702, column: 21, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !111, line: 702, column: 21)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !111, line: 702, column: 21)
!1707 = distinct !DILexicalBlock(scope: !1702, file: !111, line: 702, column: 21)
!1708 = !DILocation(line: 702, column: 21, scope: !1706)
!1709 = !DILocation(line: 702, column: 21, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !111, line: 702, column: 21)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !111, line: 702, column: 21)
!1712 = !DILocation(line: 702, column: 21, scope: !1711)
!1713 = !DILocation(line: 702, column: 21, scope: !1707)
!1714 = !DILocation(line: 0, scope: !1689)
!1715 = !DILocation(line: 703, column: 21, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1645, file: !111, line: 703, column: 21)
!1717 = !DILocation(line: 703, column: 21, scope: !1645)
!1718 = !DILocation(line: 704, column: 25, scope: !1641)
!1719 = !DILocation(line: 686, column: 17, scope: !1642)
!1720 = distinct !{!1720, !1721, !1722}
!1721 = !DILocation(line: 686, column: 17, scope: !1643)
!1722 = !DILocation(line: 705, column: 19, scope: !1643)
!1723 = !DILocation(line: 0, scope: !1307)
!1724 = !DILocation(line: 416, column: 30, scope: !1430)
!1725 = !DILocation(line: 712, column: 34, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1305, file: !111, line: 712, column: 11)
!1727 = !DILocation(line: 714, column: 14, scope: !1726)
!1728 = !DILocation(line: 715, column: 14, scope: !1726)
!1729 = !DILocation(line: 715, column: 35, scope: !1726)
!1730 = !DILocation(line: 715, column: 17, scope: !1726)
!1731 = !DILocation(line: 715, column: 47, scope: !1726)
!1732 = !DILocation(line: 715, column: 65, scope: !1726)
!1733 = !DILocation(line: 716, column: 15, scope: !1726)
!1734 = !DILocation(line: 716, column: 11, scope: !1726)
!1735 = !DILocation(line: 712, column: 11, scope: !1305)
!1736 = !DILocation(line: 400, column: 10, scope: !1307)
!1737 = !DILocation(line: 0, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !111, line: 519, column: 13)
!1739 = distinct !DILexicalBlock(scope: !1314, file: !111, line: 518, column: 15)
!1740 = !DILocation(line: 720, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1305, file: !111, line: 720, column: 7)
!1742 = !DILocation(line: 720, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1741, file: !111, line: 720, column: 7)
!1744 = !DILocation(line: 720, column: 7, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !111, line: 720, column: 7)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !111, line: 720, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !111, line: 720, column: 7)
!1748 = !DILocation(line: 720, column: 7, scope: !1746)
!1749 = !DILocation(line: 720, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !111, line: 720, column: 7)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !111, line: 720, column: 7)
!1752 = !DILocation(line: 720, column: 7, scope: !1751)
!1753 = !DILocation(line: 720, column: 7, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !111, line: 720, column: 7)
!1755 = distinct !DILexicalBlock(scope: !1747, file: !111, line: 720, column: 7)
!1756 = !DILocation(line: 720, column: 7, scope: !1755)
!1757 = !DILocation(line: 720, column: 7, scope: !1747)
!1758 = !DILocation(line: 720, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !111, line: 720, column: 7)
!1760 = distinct !DILexicalBlock(scope: !1741, file: !111, line: 720, column: 7)
!1761 = !DILocation(line: 720, column: 7, scope: !1760)
!1762 = !DILocation(line: 723, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !111, line: 723, column: 7)
!1764 = distinct !DILexicalBlock(scope: !1305, file: !111, line: 723, column: 7)
!1765 = !DILocation(line: 424, column: 9, scope: !1305)
!1766 = !DILocation(line: 723, column: 7, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !111, line: 723, column: 7)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !111, line: 723, column: 7)
!1769 = distinct !DILexicalBlock(scope: !1763, file: !111, line: 723, column: 7)
!1770 = !DILocation(line: 723, column: 7, scope: !1768)
!1771 = !DILocation(line: 723, column: 7, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !111, line: 723, column: 7)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !111, line: 723, column: 7)
!1774 = !DILocation(line: 723, column: 7, scope: !1773)
!1775 = !DILocation(line: 723, column: 7, scope: !1769)
!1776 = !DILocation(line: 724, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !111, line: 724, column: 7)
!1778 = distinct !DILexicalBlock(scope: !1305, file: !111, line: 724, column: 7)
!1779 = !DILocation(line: 724, column: 7, scope: !1778)
!1780 = !DILocation(line: 726, column: 13, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1305, file: !111, line: 726, column: 11)
!1782 = !DILocation(line: 726, column: 11, scope: !1305)
!1783 = !DILocation(line: 728, column: 5, scope: !1306)
!1784 = !DILocation(line: 400, column: 75, scope: !1306)
!1785 = !DILocation(line: 400, column: 3, scope: !1306)
!1786 = distinct !{!1786, !1424, !1787}
!1787 = !DILocation(line: 728, column: 5, scope: !1307)
!1788 = !DILocation(line: 730, column: 11, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1278, file: !111, line: 730, column: 7)
!1790 = !DILocation(line: 730, column: 16, scope: !1789)
!1791 = !DILocation(line: 738, column: 51, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1278, file: !111, line: 738, column: 7)
!1793 = !DILocation(line: 739, column: 10, scope: !1792)
!1794 = !DILocation(line: 741, column: 11, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !111, line: 741, column: 11)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !111, line: 740, column: 5)
!1797 = !DILocation(line: 741, column: 11, scope: !1796)
!1798 = !DILocation(line: 742, column: 16, scope: !1795)
!1799 = !DILocation(line: 742, column: 9, scope: !1795)
!1800 = !DILocation(line: 746, column: 18, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1795, file: !111, line: 746, column: 16)
!1802 = !DILocation(line: 746, column: 32, scope: !1801)
!1803 = !DILocation(line: 746, column: 29, scope: !1801)
!1804 = !DILocation(line: 755, column: 7, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1278, file: !111, line: 755, column: 7)
!1806 = !DILocation(line: 755, column: 20, scope: !1805)
!1807 = !DILocation(line: 756, column: 12, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !111, line: 756, column: 5)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !111, line: 756, column: 5)
!1810 = !DILocation(line: 756, column: 5, scope: !1809)
!1811 = !DILocation(line: 757, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !111, line: 757, column: 7)
!1813 = distinct !DILexicalBlock(scope: !1808, file: !111, line: 757, column: 7)
!1814 = !DILocation(line: 757, column: 7, scope: !1813)
!1815 = !DILocation(line: 756, column: 39, scope: !1808)
!1816 = distinct !{!1816, !1810, !1817}
!1817 = !DILocation(line: 757, column: 7, scope: !1809)
!1818 = !DILocation(line: 759, column: 11, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1278, file: !111, line: 759, column: 7)
!1820 = !DILocation(line: 759, column: 7, scope: !1278)
!1821 = !DILocation(line: 760, column: 5, scope: !1819)
!1822 = !DILocation(line: 760, column: 17, scope: !1819)
!1823 = !DILocation(line: 766, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1278, file: !111, line: 766, column: 7)
!1825 = !DILocation(line: 766, column: 54, scope: !1824)
!1826 = !DILocation(line: 766, column: 51, scope: !1824)
!1827 = !DILocation(line: 770, column: 42, scope: !1278)
!1828 = !DILocation(line: 768, column: 10, scope: !1278)
!1829 = !DILocation(line: 768, column: 3, scope: !1278)
!1830 = !DILocation(line: 772, column: 1, scope: !1278)
!1831 = distinct !DISubprogram(name: "gettext_quote", scope: !111, file: !111, line: 207, type: !1832, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1834)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!39, !39, !5}
!1834 = !{!1835, !1836, !1837, !1838}
!1835 = !DILocalVariable(name: "msgid", arg: 1, scope: !1831, file: !111, line: 207, type: !39)
!1836 = !DILocalVariable(name: "s", arg: 2, scope: !1831, file: !111, line: 207, type: !5)
!1837 = !DILocalVariable(name: "translation", scope: !1831, file: !111, line: 209, type: !39)
!1838 = !DILocalVariable(name: "locale_code", scope: !1831, file: !111, line: 210, type: !39)
!1839 = !DILocation(line: 207, column: 28, scope: !1831)
!1840 = !DILocation(line: 207, column: 54, scope: !1831)
!1841 = !DILocation(line: 209, column: 29, scope: !1831)
!1842 = !DILocation(line: 209, column: 15, scope: !1831)
!1843 = !DILocation(line: 212, column: 19, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1831, file: !111, line: 212, column: 7)
!1845 = !DILocation(line: 212, column: 7, scope: !1831)
!1846 = !DILocation(line: 233, column: 17, scope: !1831)
!1847 = !DILocation(line: 210, column: 15, scope: !1831)
!1848 = !DILocalVariable(name: "s1", arg: 1, scope: !1849, file: !1850, line: 160, type: !39)
!1849 = distinct !DISubprogram(name: "strcaseeq0", scope: !1850, file: !1850, line: 160, type: !1851, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1853)
!1850 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!42, !39, !39, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!1853 = !{!1848, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863}
!1854 = !DILocalVariable(name: "s2", arg: 2, scope: !1849, file: !1850, line: 160, type: !39)
!1855 = !DILocalVariable(name: "s20", arg: 3, scope: !1849, file: !1850, line: 160, type: !22)
!1856 = !DILocalVariable(name: "s21", arg: 4, scope: !1849, file: !1850, line: 160, type: !22)
!1857 = !DILocalVariable(name: "s22", arg: 5, scope: !1849, file: !1850, line: 160, type: !22)
!1858 = !DILocalVariable(name: "s23", arg: 6, scope: !1849, file: !1850, line: 160, type: !22)
!1859 = !DILocalVariable(name: "s24", arg: 7, scope: !1849, file: !1850, line: 160, type: !22)
!1860 = !DILocalVariable(name: "s25", arg: 8, scope: !1849, file: !1850, line: 160, type: !22)
!1861 = !DILocalVariable(name: "s26", arg: 9, scope: !1849, file: !1850, line: 160, type: !22)
!1862 = !DILocalVariable(name: "s27", arg: 10, scope: !1849, file: !1850, line: 160, type: !22)
!1863 = !DILocalVariable(name: "s28", arg: 11, scope: !1849, file: !1850, line: 160, type: !22)
!1864 = !DILocation(line: 160, column: 25, scope: !1849, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 234, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1831, file: !111, line: 234, column: 7)
!1867 = !DILocation(line: 160, column: 41, scope: !1849, inlinedAt: !1865)
!1868 = !DILocation(line: 160, column: 50, scope: !1849, inlinedAt: !1865)
!1869 = !DILocation(line: 160, column: 60, scope: !1849, inlinedAt: !1865)
!1870 = !DILocation(line: 160, column: 70, scope: !1849, inlinedAt: !1865)
!1871 = !DILocation(line: 160, column: 80, scope: !1849, inlinedAt: !1865)
!1872 = !DILocation(line: 160, column: 90, scope: !1849, inlinedAt: !1865)
!1873 = !DILocation(line: 160, column: 100, scope: !1849, inlinedAt: !1865)
!1874 = !DILocation(line: 160, column: 110, scope: !1849, inlinedAt: !1865)
!1875 = !DILocation(line: 160, column: 120, scope: !1849, inlinedAt: !1865)
!1876 = !DILocation(line: 160, column: 130, scope: !1849, inlinedAt: !1865)
!1877 = !DILocation(line: 162, column: 7, scope: !1878, inlinedAt: !1865)
!1878 = distinct !DILexicalBlock(scope: !1849, file: !1850, line: 162, column: 7)
!1879 = !DILocalVariable(name: "s1", arg: 1, scope: !1880, file: !1850, line: 146, type: !39)
!1880 = distinct !DISubprogram(name: "strcaseeq1", scope: !1850, file: !1850, line: 146, type: !1881, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!42, !39, !39, !22, !22, !22, !22, !22, !22, !22, !22}
!1883 = !{!1879, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892}
!1884 = !DILocalVariable(name: "s2", arg: 2, scope: !1880, file: !1850, line: 146, type: !39)
!1885 = !DILocalVariable(name: "s21", arg: 3, scope: !1880, file: !1850, line: 146, type: !22)
!1886 = !DILocalVariable(name: "s22", arg: 4, scope: !1880, file: !1850, line: 146, type: !22)
!1887 = !DILocalVariable(name: "s23", arg: 5, scope: !1880, file: !1850, line: 146, type: !22)
!1888 = !DILocalVariable(name: "s24", arg: 6, scope: !1880, file: !1850, line: 146, type: !22)
!1889 = !DILocalVariable(name: "s25", arg: 7, scope: !1880, file: !1850, line: 146, type: !22)
!1890 = !DILocalVariable(name: "s26", arg: 8, scope: !1880, file: !1850, line: 146, type: !22)
!1891 = !DILocalVariable(name: "s27", arg: 9, scope: !1880, file: !1850, line: 146, type: !22)
!1892 = !DILocalVariable(name: "s28", arg: 10, scope: !1880, file: !1850, line: 146, type: !22)
!1893 = !DILocation(line: 146, column: 25, scope: !1880, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 167, column: 16, scope: !1895, inlinedAt: !1865)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !1850, line: 164, column: 11)
!1896 = distinct !DILexicalBlock(scope: !1878, file: !1850, line: 163, column: 5)
!1897 = !DILocation(line: 146, column: 41, scope: !1880, inlinedAt: !1894)
!1898 = !DILocation(line: 146, column: 50, scope: !1880, inlinedAt: !1894)
!1899 = !DILocation(line: 146, column: 60, scope: !1880, inlinedAt: !1894)
!1900 = !DILocation(line: 146, column: 70, scope: !1880, inlinedAt: !1894)
!1901 = !DILocation(line: 146, column: 80, scope: !1880, inlinedAt: !1894)
!1902 = !DILocation(line: 146, column: 90, scope: !1880, inlinedAt: !1894)
!1903 = !DILocation(line: 146, column: 100, scope: !1880, inlinedAt: !1894)
!1904 = !DILocation(line: 146, column: 110, scope: !1880, inlinedAt: !1894)
!1905 = !DILocation(line: 146, column: 120, scope: !1880, inlinedAt: !1894)
!1906 = !DILocation(line: 148, column: 7, scope: !1907, inlinedAt: !1894)
!1907 = distinct !DILexicalBlock(scope: !1880, file: !1850, line: 148, column: 7)
!1908 = !DILocalVariable(name: "s1", arg: 1, scope: !1909, file: !1850, line: 132, type: !39)
!1909 = distinct !DISubprogram(name: "strcaseeq2", scope: !1850, file: !1850, line: 132, type: !1910, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!42, !39, !39, !22, !22, !22, !22, !22, !22, !22}
!1912 = !{!1908, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920}
!1913 = !DILocalVariable(name: "s2", arg: 2, scope: !1909, file: !1850, line: 132, type: !39)
!1914 = !DILocalVariable(name: "s22", arg: 3, scope: !1909, file: !1850, line: 132, type: !22)
!1915 = !DILocalVariable(name: "s23", arg: 4, scope: !1909, file: !1850, line: 132, type: !22)
!1916 = !DILocalVariable(name: "s24", arg: 5, scope: !1909, file: !1850, line: 132, type: !22)
!1917 = !DILocalVariable(name: "s25", arg: 6, scope: !1909, file: !1850, line: 132, type: !22)
!1918 = !DILocalVariable(name: "s26", arg: 7, scope: !1909, file: !1850, line: 132, type: !22)
!1919 = !DILocalVariable(name: "s27", arg: 8, scope: !1909, file: !1850, line: 132, type: !22)
!1920 = !DILocalVariable(name: "s28", arg: 9, scope: !1909, file: !1850, line: 132, type: !22)
!1921 = !DILocation(line: 132, column: 25, scope: !1909, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 153, column: 16, scope: !1923, inlinedAt: !1894)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !1850, line: 150, column: 11)
!1924 = distinct !DILexicalBlock(scope: !1907, file: !1850, line: 149, column: 5)
!1925 = !DILocation(line: 132, column: 41, scope: !1909, inlinedAt: !1922)
!1926 = !DILocation(line: 132, column: 50, scope: !1909, inlinedAt: !1922)
!1927 = !DILocation(line: 132, column: 60, scope: !1909, inlinedAt: !1922)
!1928 = !DILocation(line: 132, column: 70, scope: !1909, inlinedAt: !1922)
!1929 = !DILocation(line: 132, column: 80, scope: !1909, inlinedAt: !1922)
!1930 = !DILocation(line: 132, column: 90, scope: !1909, inlinedAt: !1922)
!1931 = !DILocation(line: 132, column: 100, scope: !1909, inlinedAt: !1922)
!1932 = !DILocation(line: 132, column: 110, scope: !1909, inlinedAt: !1922)
!1933 = !DILocation(line: 134, column: 7, scope: !1934, inlinedAt: !1922)
!1934 = distinct !DILexicalBlock(scope: !1909, file: !1850, line: 134, column: 7)
!1935 = !DILocalVariable(name: "s1", arg: 1, scope: !1936, file: !1850, line: 118, type: !39)
!1936 = distinct !DISubprogram(name: "strcaseeq3", scope: !1850, file: !1850, line: 118, type: !1937, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1939)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!42, !39, !39, !22, !22, !22, !22, !22, !22}
!1939 = !{!1935, !1940, !1941, !1942, !1943, !1944, !1945, !1946}
!1940 = !DILocalVariable(name: "s2", arg: 2, scope: !1936, file: !1850, line: 118, type: !39)
!1941 = !DILocalVariable(name: "s23", arg: 3, scope: !1936, file: !1850, line: 118, type: !22)
!1942 = !DILocalVariable(name: "s24", arg: 4, scope: !1936, file: !1850, line: 118, type: !22)
!1943 = !DILocalVariable(name: "s25", arg: 5, scope: !1936, file: !1850, line: 118, type: !22)
!1944 = !DILocalVariable(name: "s26", arg: 6, scope: !1936, file: !1850, line: 118, type: !22)
!1945 = !DILocalVariable(name: "s27", arg: 7, scope: !1936, file: !1850, line: 118, type: !22)
!1946 = !DILocalVariable(name: "s28", arg: 8, scope: !1936, file: !1850, line: 118, type: !22)
!1947 = !DILocation(line: 118, column: 25, scope: !1936, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 139, column: 16, scope: !1949, inlinedAt: !1922)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !1850, line: 136, column: 11)
!1950 = distinct !DILexicalBlock(scope: !1934, file: !1850, line: 135, column: 5)
!1951 = !DILocation(line: 118, column: 41, scope: !1936, inlinedAt: !1948)
!1952 = !DILocation(line: 118, column: 50, scope: !1936, inlinedAt: !1948)
!1953 = !DILocation(line: 118, column: 60, scope: !1936, inlinedAt: !1948)
!1954 = !DILocation(line: 118, column: 70, scope: !1936, inlinedAt: !1948)
!1955 = !DILocation(line: 118, column: 80, scope: !1936, inlinedAt: !1948)
!1956 = !DILocation(line: 118, column: 90, scope: !1936, inlinedAt: !1948)
!1957 = !DILocation(line: 118, column: 100, scope: !1936, inlinedAt: !1948)
!1958 = !DILocation(line: 120, column: 7, scope: !1959, inlinedAt: !1948)
!1959 = distinct !DILexicalBlock(scope: !1936, file: !1850, line: 120, column: 7)
!1960 = !DILocation(line: 120, column: 7, scope: !1936, inlinedAt: !1948)
!1961 = !DILocalVariable(name: "s1", arg: 1, scope: !1962, file: !1850, line: 104, type: !39)
!1962 = distinct !DISubprogram(name: "strcaseeq4", scope: !1850, file: !1850, line: 104, type: !1963, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!42, !39, !39, !22, !22, !22, !22, !22}
!1965 = !{!1961, !1966, !1967, !1968, !1969, !1970, !1971}
!1966 = !DILocalVariable(name: "s2", arg: 2, scope: !1962, file: !1850, line: 104, type: !39)
!1967 = !DILocalVariable(name: "s24", arg: 3, scope: !1962, file: !1850, line: 104, type: !22)
!1968 = !DILocalVariable(name: "s25", arg: 4, scope: !1962, file: !1850, line: 104, type: !22)
!1969 = !DILocalVariable(name: "s26", arg: 5, scope: !1962, file: !1850, line: 104, type: !22)
!1970 = !DILocalVariable(name: "s27", arg: 6, scope: !1962, file: !1850, line: 104, type: !22)
!1971 = !DILocalVariable(name: "s28", arg: 7, scope: !1962, file: !1850, line: 104, type: !22)
!1972 = !DILocation(line: 104, column: 25, scope: !1962, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 125, column: 16, scope: !1974, inlinedAt: !1948)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !1850, line: 122, column: 11)
!1975 = distinct !DILexicalBlock(scope: !1959, file: !1850, line: 121, column: 5)
!1976 = !DILocation(line: 104, column: 41, scope: !1962, inlinedAt: !1973)
!1977 = !DILocation(line: 104, column: 50, scope: !1962, inlinedAt: !1973)
!1978 = !DILocation(line: 104, column: 60, scope: !1962, inlinedAt: !1973)
!1979 = !DILocation(line: 104, column: 70, scope: !1962, inlinedAt: !1973)
!1980 = !DILocation(line: 104, column: 80, scope: !1962, inlinedAt: !1973)
!1981 = !DILocation(line: 104, column: 90, scope: !1962, inlinedAt: !1973)
!1982 = !DILocation(line: 106, column: 7, scope: !1983, inlinedAt: !1973)
!1983 = distinct !DILexicalBlock(scope: !1962, file: !1850, line: 106, column: 7)
!1984 = !DILocation(line: 106, column: 7, scope: !1962, inlinedAt: !1973)
!1985 = !DILocalVariable(name: "s1", arg: 1, scope: !1986, file: !1850, line: 90, type: !39)
!1986 = distinct !DISubprogram(name: "strcaseeq5", scope: !1850, file: !1850, line: 90, type: !1987, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!42, !39, !39, !22, !22, !22, !22}
!1989 = !{!1985, !1990, !1991, !1992, !1993, !1994}
!1990 = !DILocalVariable(name: "s2", arg: 2, scope: !1986, file: !1850, line: 90, type: !39)
!1991 = !DILocalVariable(name: "s25", arg: 3, scope: !1986, file: !1850, line: 90, type: !22)
!1992 = !DILocalVariable(name: "s26", arg: 4, scope: !1986, file: !1850, line: 90, type: !22)
!1993 = !DILocalVariable(name: "s27", arg: 5, scope: !1986, file: !1850, line: 90, type: !22)
!1994 = !DILocalVariable(name: "s28", arg: 6, scope: !1986, file: !1850, line: 90, type: !22)
!1995 = !DILocation(line: 90, column: 25, scope: !1986, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 111, column: 16, scope: !1997, inlinedAt: !1973)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !1850, line: 108, column: 11)
!1998 = distinct !DILexicalBlock(scope: !1983, file: !1850, line: 107, column: 5)
!1999 = !DILocation(line: 90, column: 41, scope: !1986, inlinedAt: !1996)
!2000 = !DILocation(line: 90, column: 50, scope: !1986, inlinedAt: !1996)
!2001 = !DILocation(line: 90, column: 60, scope: !1986, inlinedAt: !1996)
!2002 = !DILocation(line: 90, column: 70, scope: !1986, inlinedAt: !1996)
!2003 = !DILocation(line: 90, column: 80, scope: !1986, inlinedAt: !1996)
!2004 = !DILocation(line: 92, column: 7, scope: !2005, inlinedAt: !1996)
!2005 = distinct !DILexicalBlock(scope: !1986, file: !1850, line: 92, column: 7)
!2006 = !DILocation(line: 92, column: 7, scope: !1986, inlinedAt: !1996)
!2007 = !DILocation(line: 235, column: 12, scope: !1866)
!2008 = !DILocation(line: 235, column: 21, scope: !1866)
!2009 = !DILocation(line: 235, column: 5, scope: !1866)
!2010 = !DILocation(line: 146, column: 25, scope: !1880, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 167, column: 16, scope: !1895, inlinedAt: !2012)
!2012 = distinct !DILocation(line: 236, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1831, file: !111, line: 236, column: 7)
!2014 = !DILocation(line: 146, column: 41, scope: !1880, inlinedAt: !2011)
!2015 = !DILocation(line: 146, column: 50, scope: !1880, inlinedAt: !2011)
!2016 = !DILocation(line: 146, column: 60, scope: !1880, inlinedAt: !2011)
!2017 = !DILocation(line: 146, column: 70, scope: !1880, inlinedAt: !2011)
!2018 = !DILocation(line: 146, column: 80, scope: !1880, inlinedAt: !2011)
!2019 = !DILocation(line: 146, column: 90, scope: !1880, inlinedAt: !2011)
!2020 = !DILocation(line: 146, column: 100, scope: !1880, inlinedAt: !2011)
!2021 = !DILocation(line: 146, column: 110, scope: !1880, inlinedAt: !2011)
!2022 = !DILocation(line: 146, column: 120, scope: !1880, inlinedAt: !2011)
!2023 = !DILocation(line: 148, column: 7, scope: !1907, inlinedAt: !2011)
!2024 = !DILocation(line: 132, column: 25, scope: !1909, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 153, column: 16, scope: !1923, inlinedAt: !2011)
!2026 = !DILocation(line: 132, column: 41, scope: !1909, inlinedAt: !2025)
!2027 = !DILocation(line: 132, column: 50, scope: !1909, inlinedAt: !2025)
!2028 = !DILocation(line: 132, column: 60, scope: !1909, inlinedAt: !2025)
!2029 = !DILocation(line: 132, column: 70, scope: !1909, inlinedAt: !2025)
!2030 = !DILocation(line: 132, column: 80, scope: !1909, inlinedAt: !2025)
!2031 = !DILocation(line: 132, column: 90, scope: !1909, inlinedAt: !2025)
!2032 = !DILocation(line: 132, column: 100, scope: !1909, inlinedAt: !2025)
!2033 = !DILocation(line: 132, column: 110, scope: !1909, inlinedAt: !2025)
!2034 = !DILocation(line: 134, column: 7, scope: !1934, inlinedAt: !2025)
!2035 = !DILocation(line: 134, column: 7, scope: !1909, inlinedAt: !2025)
!2036 = !DILocation(line: 118, column: 25, scope: !1936, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 139, column: 16, scope: !1949, inlinedAt: !2025)
!2038 = !DILocation(line: 118, column: 41, scope: !1936, inlinedAt: !2037)
!2039 = !DILocation(line: 118, column: 50, scope: !1936, inlinedAt: !2037)
!2040 = !DILocation(line: 118, column: 60, scope: !1936, inlinedAt: !2037)
!2041 = !DILocation(line: 118, column: 70, scope: !1936, inlinedAt: !2037)
!2042 = !DILocation(line: 118, column: 80, scope: !1936, inlinedAt: !2037)
!2043 = !DILocation(line: 118, column: 90, scope: !1936, inlinedAt: !2037)
!2044 = !DILocation(line: 118, column: 100, scope: !1936, inlinedAt: !2037)
!2045 = !DILocation(line: 120, column: 7, scope: !1959, inlinedAt: !2037)
!2046 = !DILocation(line: 120, column: 7, scope: !1936, inlinedAt: !2037)
!2047 = !DILocation(line: 104, column: 25, scope: !1962, inlinedAt: !2048)
!2048 = distinct !DILocation(line: 125, column: 16, scope: !1974, inlinedAt: !2037)
!2049 = !DILocation(line: 104, column: 41, scope: !1962, inlinedAt: !2048)
!2050 = !DILocation(line: 104, column: 50, scope: !1962, inlinedAt: !2048)
!2051 = !DILocation(line: 104, column: 60, scope: !1962, inlinedAt: !2048)
!2052 = !DILocation(line: 104, column: 70, scope: !1962, inlinedAt: !2048)
!2053 = !DILocation(line: 104, column: 80, scope: !1962, inlinedAt: !2048)
!2054 = !DILocation(line: 104, column: 90, scope: !1962, inlinedAt: !2048)
!2055 = !DILocation(line: 106, column: 7, scope: !1983, inlinedAt: !2048)
!2056 = !DILocation(line: 106, column: 7, scope: !1962, inlinedAt: !2048)
!2057 = !DILocation(line: 90, column: 25, scope: !1986, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 111, column: 16, scope: !1997, inlinedAt: !2048)
!2059 = !DILocation(line: 90, column: 41, scope: !1986, inlinedAt: !2058)
!2060 = !DILocation(line: 90, column: 50, scope: !1986, inlinedAt: !2058)
!2061 = !DILocation(line: 90, column: 60, scope: !1986, inlinedAt: !2058)
!2062 = !DILocation(line: 90, column: 70, scope: !1986, inlinedAt: !2058)
!2063 = !DILocation(line: 90, column: 80, scope: !1986, inlinedAt: !2058)
!2064 = !DILocation(line: 92, column: 7, scope: !2005, inlinedAt: !2058)
!2065 = !DILocation(line: 92, column: 7, scope: !1986, inlinedAt: !2058)
!2066 = !DILocalVariable(name: "s1", arg: 1, scope: !2067, file: !1850, line: 76, type: !39)
!2067 = distinct !DISubprogram(name: "strcaseeq6", scope: !1850, file: !1850, line: 76, type: !2068, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!42, !39, !39, !22, !22, !22}
!2070 = !{!2066, !2071, !2072, !2073, !2074}
!2071 = !DILocalVariable(name: "s2", arg: 2, scope: !2067, file: !1850, line: 76, type: !39)
!2072 = !DILocalVariable(name: "s26", arg: 3, scope: !2067, file: !1850, line: 76, type: !22)
!2073 = !DILocalVariable(name: "s27", arg: 4, scope: !2067, file: !1850, line: 76, type: !22)
!2074 = !DILocalVariable(name: "s28", arg: 5, scope: !2067, file: !1850, line: 76, type: !22)
!2075 = !DILocation(line: 76, column: 25, scope: !2067, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 97, column: 16, scope: !2077, inlinedAt: !2058)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !1850, line: 94, column: 11)
!2078 = distinct !DILexicalBlock(scope: !2005, file: !1850, line: 93, column: 5)
!2079 = !DILocation(line: 76, column: 41, scope: !2067, inlinedAt: !2076)
!2080 = !DILocation(line: 76, column: 50, scope: !2067, inlinedAt: !2076)
!2081 = !DILocation(line: 76, column: 60, scope: !2067, inlinedAt: !2076)
!2082 = !DILocation(line: 76, column: 70, scope: !2067, inlinedAt: !2076)
!2083 = !DILocation(line: 78, column: 7, scope: !2084, inlinedAt: !2076)
!2084 = distinct !DILexicalBlock(scope: !2067, file: !1850, line: 78, column: 7)
!2085 = !DILocation(line: 78, column: 7, scope: !2067, inlinedAt: !2076)
!2086 = !DILocalVariable(name: "s1", arg: 1, scope: !2087, file: !1850, line: 62, type: !39)
!2087 = distinct !DISubprogram(name: "strcaseeq7", scope: !1850, file: !1850, line: 62, type: !2088, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2090)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!42, !39, !39, !22, !22}
!2090 = !{!2086, !2091, !2092, !2093}
!2091 = !DILocalVariable(name: "s2", arg: 2, scope: !2087, file: !1850, line: 62, type: !39)
!2092 = !DILocalVariable(name: "s27", arg: 3, scope: !2087, file: !1850, line: 62, type: !22)
!2093 = !DILocalVariable(name: "s28", arg: 4, scope: !2087, file: !1850, line: 62, type: !22)
!2094 = !DILocation(line: 62, column: 25, scope: !2087, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 83, column: 16, scope: !2096, inlinedAt: !2076)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !1850, line: 80, column: 11)
!2097 = distinct !DILexicalBlock(scope: !2084, file: !1850, line: 79, column: 5)
!2098 = !DILocation(line: 62, column: 41, scope: !2087, inlinedAt: !2095)
!2099 = !DILocation(line: 62, column: 50, scope: !2087, inlinedAt: !2095)
!2100 = !DILocation(line: 62, column: 60, scope: !2087, inlinedAt: !2095)
!2101 = !DILocation(line: 64, column: 7, scope: !2102, inlinedAt: !2095)
!2102 = distinct !DILexicalBlock(scope: !2087, file: !1850, line: 64, column: 7)
!2103 = !DILocation(line: 236, column: 7, scope: !1831)
!2104 = !DILocation(line: 237, column: 12, scope: !2013)
!2105 = !DILocation(line: 237, column: 21, scope: !2013)
!2106 = !DILocation(line: 237, column: 5, scope: !2013)
!2107 = !DILocation(line: 239, column: 13, scope: !1831)
!2108 = !DILocation(line: 239, column: 11, scope: !1831)
!2109 = !DILocation(line: 239, column: 3, scope: !1831)
!2110 = !DILocation(line: 0, scope: !1831)
!2111 = !DILocation(line: 240, column: 1, scope: !1831)
!2112 = distinct !DISubprogram(name: "quotearg_alloc", scope: !111, file: !111, line: 799, type: !2113, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!21, !39, !105, !1151}
!2115 = !{!2116, !2117, !2118}
!2116 = !DILocalVariable(name: "arg", arg: 1, scope: !2112, file: !111, line: 799, type: !39)
!2117 = !DILocalVariable(name: "argsize", arg: 2, scope: !2112, file: !111, line: 799, type: !105)
!2118 = !DILocalVariable(name: "o", arg: 3, scope: !2112, file: !111, line: 800, type: !1151)
!2119 = !DILocation(line: 799, column: 29, scope: !2112)
!2120 = !DILocation(line: 799, column: 41, scope: !2112)
!2121 = !DILocation(line: 800, column: 47, scope: !2112)
!2122 = !DILocalVariable(name: "arg", arg: 1, scope: !2123, file: !111, line: 812, type: !39)
!2123 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !111, file: !111, line: 812, type: !2124, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!21, !39, !105, !181, !1151}
!2126 = !{!2122, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2127 = !DILocalVariable(name: "argsize", arg: 2, scope: !2123, file: !111, line: 812, type: !105)
!2128 = !DILocalVariable(name: "size", arg: 3, scope: !2123, file: !111, line: 812, type: !181)
!2129 = !DILocalVariable(name: "o", arg: 4, scope: !2123, file: !111, line: 813, type: !1151)
!2130 = !DILocalVariable(name: "p", scope: !2123, file: !111, line: 815, type: !1151)
!2131 = !DILocalVariable(name: "e", scope: !2123, file: !111, line: 816, type: !42)
!2132 = !DILocalVariable(name: "flags", scope: !2123, file: !111, line: 818, type: !42)
!2133 = !DILocalVariable(name: "bufsize", scope: !2123, file: !111, line: 819, type: !105)
!2134 = !DILocalVariable(name: "buf", scope: !2123, file: !111, line: 823, type: !21)
!2135 = !DILocation(line: 812, column: 33, scope: !2123, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 802, column: 10, scope: !2112)
!2137 = !DILocation(line: 812, column: 45, scope: !2123, inlinedAt: !2136)
!2138 = !DILocation(line: 812, column: 62, scope: !2123, inlinedAt: !2136)
!2139 = !DILocation(line: 813, column: 51, scope: !2123, inlinedAt: !2136)
!2140 = !DILocation(line: 815, column: 37, scope: !2123, inlinedAt: !2136)
!2141 = !DILocation(line: 815, column: 33, scope: !2123, inlinedAt: !2136)
!2142 = !DILocation(line: 816, column: 11, scope: !2123, inlinedAt: !2136)
!2143 = !DILocation(line: 816, column: 7, scope: !2123, inlinedAt: !2136)
!2144 = !DILocation(line: 818, column: 18, scope: !2123, inlinedAt: !2136)
!2145 = !DILocation(line: 818, column: 24, scope: !2123, inlinedAt: !2136)
!2146 = !DILocation(line: 818, column: 7, scope: !2123, inlinedAt: !2136)
!2147 = !DILocation(line: 819, column: 69, scope: !2123, inlinedAt: !2136)
!2148 = !DILocation(line: 820, column: 53, scope: !2123, inlinedAt: !2136)
!2149 = !DILocation(line: 821, column: 49, scope: !2123, inlinedAt: !2136)
!2150 = !DILocation(line: 822, column: 49, scope: !2123, inlinedAt: !2136)
!2151 = !DILocation(line: 819, column: 20, scope: !2123, inlinedAt: !2136)
!2152 = !DILocation(line: 822, column: 62, scope: !2123, inlinedAt: !2136)
!2153 = !DILocation(line: 819, column: 10, scope: !2123, inlinedAt: !2136)
!2154 = !DILocalVariable(name: "n", arg: 1, scope: !2155, file: !177, line: 216, type: !105)
!2155 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !2156, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!21, !105}
!2158 = !{!2154}
!2159 = !DILocation(line: 216, column: 20, scope: !2155, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 823, column: 15, scope: !2123, inlinedAt: !2136)
!2161 = !DILocation(line: 218, column: 10, scope: !2155, inlinedAt: !2160)
!2162 = !DILocation(line: 823, column: 9, scope: !2123, inlinedAt: !2136)
!2163 = !DILocation(line: 824, column: 60, scope: !2123, inlinedAt: !2136)
!2164 = !DILocation(line: 826, column: 32, scope: !2123, inlinedAt: !2136)
!2165 = !DILocation(line: 826, column: 47, scope: !2123, inlinedAt: !2136)
!2166 = !DILocation(line: 824, column: 3, scope: !2123, inlinedAt: !2136)
!2167 = !DILocation(line: 827, column: 9, scope: !2123, inlinedAt: !2136)
!2168 = !DILocation(line: 802, column: 3, scope: !2112)
!2169 = !DILocation(line: 812, column: 33, scope: !2123)
!2170 = !DILocation(line: 812, column: 45, scope: !2123)
!2171 = !DILocation(line: 812, column: 62, scope: !2123)
!2172 = !DILocation(line: 813, column: 51, scope: !2123)
!2173 = !DILocation(line: 815, column: 37, scope: !2123)
!2174 = !DILocation(line: 815, column: 33, scope: !2123)
!2175 = !DILocation(line: 816, column: 11, scope: !2123)
!2176 = !DILocation(line: 816, column: 7, scope: !2123)
!2177 = !DILocation(line: 818, column: 18, scope: !2123)
!2178 = !DILocation(line: 818, column: 27, scope: !2123)
!2179 = !DILocation(line: 818, column: 24, scope: !2123)
!2180 = !DILocation(line: 818, column: 7, scope: !2123)
!2181 = !DILocation(line: 819, column: 69, scope: !2123)
!2182 = !DILocation(line: 820, column: 53, scope: !2123)
!2183 = !DILocation(line: 821, column: 49, scope: !2123)
!2184 = !DILocation(line: 822, column: 49, scope: !2123)
!2185 = !DILocation(line: 819, column: 20, scope: !2123)
!2186 = !DILocation(line: 822, column: 62, scope: !2123)
!2187 = !DILocation(line: 819, column: 10, scope: !2123)
!2188 = !DILocation(line: 216, column: 20, scope: !2155, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 823, column: 15, scope: !2123)
!2190 = !DILocation(line: 218, column: 10, scope: !2155, inlinedAt: !2189)
!2191 = !DILocation(line: 823, column: 9, scope: !2123)
!2192 = !DILocation(line: 824, column: 60, scope: !2123)
!2193 = !DILocation(line: 826, column: 32, scope: !2123)
!2194 = !DILocation(line: 826, column: 47, scope: !2123)
!2195 = !DILocation(line: 824, column: 3, scope: !2123)
!2196 = !DILocation(line: 827, column: 9, scope: !2123)
!2197 = !DILocation(line: 828, column: 7, scope: !2123)
!2198 = !DILocation(line: 829, column: 11, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2123, file: !111, line: 828, column: 7)
!2200 = !{!1016, !1016, i64 0}
!2201 = !DILocation(line: 829, column: 5, scope: !2199)
!2202 = !DILocation(line: 830, column: 3, scope: !2123)
!2203 = distinct !DISubprogram(name: "quotearg_free", scope: !111, file: !111, line: 848, type: !1038, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2204)
!2204 = !{!2205, !2206}
!2205 = !DILocalVariable(name: "sv", scope: !2203, file: !111, line: 850, type: !137)
!2206 = !DILocalVariable(name: "i", scope: !2203, file: !111, line: 851, type: !42)
!2207 = !DILocation(line: 850, column: 24, scope: !2203)
!2208 = !DILocation(line: 850, column: 19, scope: !2203)
!2209 = !DILocation(line: 851, column: 7, scope: !2203)
!2210 = !DILocation(line: 852, column: 19, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !111, line: 852, column: 3)
!2212 = distinct !DILexicalBlock(scope: !2203, file: !111, line: 852, column: 3)
!2213 = !DILocation(line: 852, column: 17, scope: !2211)
!2214 = !DILocation(line: 852, column: 3, scope: !2212)
!2215 = !DILocation(line: 853, column: 17, scope: !2211)
!2216 = !{!2217, !637, i64 8}
!2217 = !{!"slotvec", !1016, i64 0, !637, i64 8}
!2218 = !DILocation(line: 853, column: 5, scope: !2211)
!2219 = !DILocation(line: 852, column: 28, scope: !2211)
!2220 = distinct !{!2220, !2214, !2221}
!2221 = !DILocation(line: 853, column: 20, scope: !2212)
!2222 = !DILocation(line: 854, column: 13, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2203, file: !111, line: 854, column: 7)
!2224 = !DILocation(line: 854, column: 17, scope: !2223)
!2225 = !DILocation(line: 854, column: 7, scope: !2203)
!2226 = !DILocation(line: 856, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !111, line: 855, column: 5)
!2228 = !DILocation(line: 857, column: 21, scope: !2227)
!2229 = !{!2217, !1016, i64 0}
!2230 = !DILocation(line: 858, column: 20, scope: !2227)
!2231 = !DILocation(line: 859, column: 5, scope: !2227)
!2232 = !DILocation(line: 860, column: 10, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2203, file: !111, line: 860, column: 7)
!2234 = !DILocation(line: 860, column: 7, scope: !2203)
!2235 = !DILocation(line: 862, column: 13, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !111, line: 861, column: 5)
!2237 = !DILocation(line: 862, column: 7, scope: !2236)
!2238 = !DILocation(line: 863, column: 15, scope: !2236)
!2239 = !DILocation(line: 864, column: 5, scope: !2236)
!2240 = !DILocation(line: 865, column: 10, scope: !2203)
!2241 = !DILocation(line: 866, column: 1, scope: !2203)
!2242 = distinct !DISubprogram(name: "quotearg_n", scope: !111, file: !111, line: 931, type: !2243, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!21, !42, !39}
!2245 = !{!2246, !2247}
!2246 = !DILocalVariable(name: "n", arg: 1, scope: !2242, file: !111, line: 931, type: !42)
!2247 = !DILocalVariable(name: "arg", arg: 2, scope: !2242, file: !111, line: 931, type: !39)
!2248 = !DILocation(line: 931, column: 17, scope: !2242)
!2249 = !DILocation(line: 931, column: 32, scope: !2242)
!2250 = !DILocation(line: 933, column: 10, scope: !2242)
!2251 = !DILocation(line: 933, column: 3, scope: !2242)
!2252 = distinct !DISubprogram(name: "quotearg_n_options", scope: !111, file: !111, line: 877, type: !2253, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!21, !42, !39, !105, !1151}
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2265, !2266, !2268, !2269, !2270}
!2256 = !DILocalVariable(name: "n", arg: 1, scope: !2252, file: !111, line: 877, type: !42)
!2257 = !DILocalVariable(name: "arg", arg: 2, scope: !2252, file: !111, line: 877, type: !39)
!2258 = !DILocalVariable(name: "argsize", arg: 3, scope: !2252, file: !111, line: 877, type: !105)
!2259 = !DILocalVariable(name: "options", arg: 4, scope: !2252, file: !111, line: 878, type: !1151)
!2260 = !DILocalVariable(name: "e", scope: !2252, file: !111, line: 880, type: !42)
!2261 = !DILocalVariable(name: "sv", scope: !2252, file: !111, line: 882, type: !137)
!2262 = !DILocalVariable(name: "preallocated", scope: !2263, file: !111, line: 889, type: !28)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !111, line: 888, column: 5)
!2264 = distinct !DILexicalBlock(scope: !2252, file: !111, line: 887, column: 7)
!2265 = !DILocalVariable(name: "nmax", scope: !2263, file: !111, line: 890, type: !42)
!2266 = !DILocalVariable(name: "size", scope: !2267, file: !111, line: 903, type: !105)
!2267 = distinct !DILexicalBlock(scope: !2252, file: !111, line: 902, column: 3)
!2268 = !DILocalVariable(name: "val", scope: !2267, file: !111, line: 904, type: !21)
!2269 = !DILocalVariable(name: "flags", scope: !2267, file: !111, line: 906, type: !42)
!2270 = !DILocalVariable(name: "qsize", scope: !2267, file: !111, line: 907, type: !105)
!2271 = !DILocation(line: 877, column: 25, scope: !2252)
!2272 = !DILocation(line: 877, column: 40, scope: !2252)
!2273 = !DILocation(line: 877, column: 52, scope: !2252)
!2274 = !DILocation(line: 878, column: 51, scope: !2252)
!2275 = !DILocation(line: 880, column: 11, scope: !2252)
!2276 = !DILocation(line: 880, column: 7, scope: !2252)
!2277 = !DILocation(line: 882, column: 24, scope: !2252)
!2278 = !DILocation(line: 882, column: 19, scope: !2252)
!2279 = !DILocation(line: 884, column: 9, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2252, file: !111, line: 884, column: 7)
!2281 = !DILocation(line: 884, column: 7, scope: !2252)
!2282 = !DILocation(line: 885, column: 5, scope: !2280)
!2283 = !DILocation(line: 887, column: 7, scope: !2264)
!2284 = !DILocation(line: 887, column: 14, scope: !2264)
!2285 = !DILocation(line: 887, column: 7, scope: !2252)
!2286 = !DILocation(line: 889, column: 31, scope: !2263)
!2287 = !DILocation(line: 890, column: 11, scope: !2263)
!2288 = !DILocation(line: 892, column: 16, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2263, file: !111, line: 892, column: 11)
!2290 = !DILocation(line: 892, column: 11, scope: !2263)
!2291 = !DILocation(line: 893, column: 9, scope: !2289)
!2292 = !DILocation(line: 895, column: 32, scope: !2263)
!2293 = !DILocation(line: 895, column: 61, scope: !2263)
!2294 = !DILocation(line: 895, column: 58, scope: !2263)
!2295 = !DILocation(line: 895, column: 66, scope: !2263)
!2296 = !DILocation(line: 895, column: 22, scope: !2263)
!2297 = !DILocation(line: 895, column: 15, scope: !2263)
!2298 = !DILocation(line: 896, column: 11, scope: !2263)
!2299 = !DILocation(line: 897, column: 15, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2263, file: !111, line: 896, column: 11)
!2301 = !{i64 0, i64 8, !2200, i64 8, i64 8, !636}
!2302 = !DILocation(line: 897, column: 9, scope: !2300)
!2303 = !DILocation(line: 898, column: 20, scope: !2263)
!2304 = !DILocation(line: 898, column: 18, scope: !2263)
!2305 = !DILocation(line: 898, column: 7, scope: !2263)
!2306 = !DILocation(line: 898, column: 38, scope: !2263)
!2307 = !DILocation(line: 898, column: 31, scope: !2263)
!2308 = !DILocation(line: 898, column: 48, scope: !2263)
!2309 = !DILocation(line: 899, column: 14, scope: !2263)
!2310 = !DILocation(line: 900, column: 5, scope: !2263)
!2311 = !DILocation(line: 0, scope: !2252)
!2312 = !DILocation(line: 903, column: 19, scope: !2267)
!2313 = !DILocation(line: 903, column: 25, scope: !2267)
!2314 = !DILocation(line: 903, column: 12, scope: !2267)
!2315 = !DILocation(line: 904, column: 23, scope: !2267)
!2316 = !DILocation(line: 904, column: 11, scope: !2267)
!2317 = !DILocation(line: 906, column: 26, scope: !2267)
!2318 = !DILocation(line: 906, column: 32, scope: !2267)
!2319 = !DILocation(line: 906, column: 9, scope: !2267)
!2320 = !DILocation(line: 908, column: 55, scope: !2267)
!2321 = !DILocation(line: 909, column: 46, scope: !2267)
!2322 = !DILocation(line: 910, column: 55, scope: !2267)
!2323 = !DILocation(line: 911, column: 55, scope: !2267)
!2324 = !DILocation(line: 907, column: 20, scope: !2267)
!2325 = !DILocation(line: 907, column: 12, scope: !2267)
!2326 = !DILocation(line: 913, column: 14, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2267, file: !111, line: 913, column: 9)
!2328 = !DILocation(line: 913, column: 9, scope: !2267)
!2329 = !DILocation(line: 915, column: 35, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !111, line: 914, column: 7)
!2331 = !DILocation(line: 915, column: 20, scope: !2330)
!2332 = !DILocation(line: 916, column: 17, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !111, line: 916, column: 13)
!2334 = !DILocation(line: 916, column: 13, scope: !2330)
!2335 = !DILocation(line: 917, column: 11, scope: !2333)
!2336 = !DILocation(line: 216, column: 20, scope: !2155, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 918, column: 27, scope: !2330)
!2338 = !DILocation(line: 218, column: 10, scope: !2155, inlinedAt: !2337)
!2339 = !DILocation(line: 918, column: 19, scope: !2330)
!2340 = !DILocation(line: 919, column: 69, scope: !2330)
!2341 = !DILocation(line: 921, column: 44, scope: !2330)
!2342 = !DILocation(line: 922, column: 44, scope: !2330)
!2343 = !DILocation(line: 919, column: 9, scope: !2330)
!2344 = !DILocation(line: 923, column: 7, scope: !2330)
!2345 = !DILocation(line: 0, scope: !2267)
!2346 = !DILocation(line: 925, column: 11, scope: !2267)
!2347 = !DILocation(line: 926, column: 5, scope: !2267)
!2348 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !111, file: !111, line: 937, type: !2349, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!21, !42, !39, !105}
!2351 = !{!2352, !2353, !2354}
!2352 = !DILocalVariable(name: "n", arg: 1, scope: !2348, file: !111, line: 937, type: !42)
!2353 = !DILocalVariable(name: "arg", arg: 2, scope: !2348, file: !111, line: 937, type: !39)
!2354 = !DILocalVariable(name: "argsize", arg: 3, scope: !2348, file: !111, line: 937, type: !105)
!2355 = !DILocation(line: 937, column: 21, scope: !2348)
!2356 = !DILocation(line: 937, column: 36, scope: !2348)
!2357 = !DILocation(line: 937, column: 48, scope: !2348)
!2358 = !DILocation(line: 939, column: 10, scope: !2348)
!2359 = !DILocation(line: 939, column: 3, scope: !2348)
!2360 = distinct !DISubprogram(name: "quotearg", scope: !111, file: !111, line: 943, type: !2361, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!21, !39}
!2363 = !{!2364}
!2364 = !DILocalVariable(name: "arg", arg: 1, scope: !2360, file: !111, line: 943, type: !39)
!2365 = !DILocation(line: 943, column: 23, scope: !2360)
!2366 = !DILocation(line: 931, column: 17, scope: !2242, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 945, column: 10, scope: !2360)
!2368 = !DILocation(line: 931, column: 32, scope: !2242, inlinedAt: !2367)
!2369 = !DILocation(line: 933, column: 10, scope: !2242, inlinedAt: !2367)
!2370 = !DILocation(line: 945, column: 3, scope: !2360)
!2371 = distinct !DISubprogram(name: "quotearg_mem", scope: !111, file: !111, line: 949, type: !2372, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!21, !39, !105}
!2374 = !{!2375, !2376}
!2375 = !DILocalVariable(name: "arg", arg: 1, scope: !2371, file: !111, line: 949, type: !39)
!2376 = !DILocalVariable(name: "argsize", arg: 2, scope: !2371, file: !111, line: 949, type: !105)
!2377 = !DILocation(line: 949, column: 27, scope: !2371)
!2378 = !DILocation(line: 949, column: 39, scope: !2371)
!2379 = !DILocation(line: 937, column: 21, scope: !2348, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 951, column: 10, scope: !2371)
!2381 = !DILocation(line: 937, column: 36, scope: !2348, inlinedAt: !2380)
!2382 = !DILocation(line: 937, column: 48, scope: !2348, inlinedAt: !2380)
!2383 = !DILocation(line: 939, column: 10, scope: !2348, inlinedAt: !2380)
!2384 = !DILocation(line: 951, column: 3, scope: !2371)
!2385 = distinct !DISubprogram(name: "quotearg_n_style", scope: !111, file: !111, line: 955, type: !2386, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!21, !42, !5, !39}
!2388 = !{!2389, !2390, !2391, !2392}
!2389 = !DILocalVariable(name: "n", arg: 1, scope: !2385, file: !111, line: 955, type: !42)
!2390 = !DILocalVariable(name: "s", arg: 2, scope: !2385, file: !111, line: 955, type: !5)
!2391 = !DILocalVariable(name: "arg", arg: 3, scope: !2385, file: !111, line: 955, type: !39)
!2392 = !DILocalVariable(name: "o", scope: !2385, file: !111, line: 957, type: !1152)
!2393 = !DILocation(line: 955, column: 23, scope: !2385)
!2394 = !DILocation(line: 955, column: 45, scope: !2385)
!2395 = !DILocation(line: 955, column: 60, scope: !2385)
!2396 = !DILocation(line: 957, column: 3, scope: !2385)
!2397 = !DILocation(line: 957, column: 32, scope: !2385)
!2398 = !DILocalVariable(name: "style", arg: 1, scope: !2399, file: !111, line: 193, type: !5)
!2399 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !111, file: !111, line: 193, type: !2400, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!118, !5}
!2402 = !{!2398, !2403}
!2403 = !DILocalVariable(name: "o", scope: !2399, file: !111, line: 195, type: !118)
!2404 = !DILocation(line: 193, column: 48, scope: !2399, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 957, column: 36, scope: !2385)
!2406 = !DILocation(line: 195, column: 26, scope: !2399, inlinedAt: !2405)
!2407 = !{!2408}
!2408 = distinct !{!2408, !2409, !"quoting_options_from_style: argument 0"}
!2409 = distinct !{!2409, !"quoting_options_from_style"}
!2410 = !DILocation(line: 196, column: 13, scope: !2411, inlinedAt: !2405)
!2411 = distinct !DILexicalBlock(scope: !2399, file: !111, line: 196, column: 7)
!2412 = !DILocation(line: 196, column: 7, scope: !2399, inlinedAt: !2405)
!2413 = !DILocation(line: 197, column: 5, scope: !2411, inlinedAt: !2405)
!2414 = !DILocation(line: 198, column: 5, scope: !2399, inlinedAt: !2405)
!2415 = !DILocation(line: 198, column: 11, scope: !2399, inlinedAt: !2405)
!2416 = !DILocation(line: 958, column: 10, scope: !2385)
!2417 = !DILocation(line: 959, column: 1, scope: !2385)
!2418 = !DILocation(line: 958, column: 3, scope: !2385)
!2419 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !111, file: !111, line: 962, type: !2420, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!21, !42, !5, !39, !105}
!2422 = !{!2423, !2424, !2425, !2426, !2427}
!2423 = !DILocalVariable(name: "n", arg: 1, scope: !2419, file: !111, line: 962, type: !42)
!2424 = !DILocalVariable(name: "s", arg: 2, scope: !2419, file: !111, line: 962, type: !5)
!2425 = !DILocalVariable(name: "arg", arg: 3, scope: !2419, file: !111, line: 963, type: !39)
!2426 = !DILocalVariable(name: "argsize", arg: 4, scope: !2419, file: !111, line: 963, type: !105)
!2427 = !DILocalVariable(name: "o", scope: !2419, file: !111, line: 965, type: !1152)
!2428 = !DILocation(line: 962, column: 27, scope: !2419)
!2429 = !DILocation(line: 962, column: 49, scope: !2419)
!2430 = !DILocation(line: 963, column: 35, scope: !2419)
!2431 = !DILocation(line: 963, column: 47, scope: !2419)
!2432 = !DILocation(line: 965, column: 3, scope: !2419)
!2433 = !DILocation(line: 965, column: 32, scope: !2419)
!2434 = !DILocation(line: 193, column: 48, scope: !2399, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 965, column: 36, scope: !2419)
!2436 = !DILocation(line: 195, column: 26, scope: !2399, inlinedAt: !2435)
!2437 = !{!2438}
!2438 = distinct !{!2438, !2439, !"quoting_options_from_style: argument 0"}
!2439 = distinct !{!2439, !"quoting_options_from_style"}
!2440 = !DILocation(line: 196, column: 13, scope: !2411, inlinedAt: !2435)
!2441 = !DILocation(line: 196, column: 7, scope: !2399, inlinedAt: !2435)
!2442 = !DILocation(line: 197, column: 5, scope: !2411, inlinedAt: !2435)
!2443 = !DILocation(line: 198, column: 5, scope: !2399, inlinedAt: !2435)
!2444 = !DILocation(line: 198, column: 11, scope: !2399, inlinedAt: !2435)
!2445 = !DILocation(line: 966, column: 10, scope: !2419)
!2446 = !DILocation(line: 967, column: 1, scope: !2419)
!2447 = !DILocation(line: 966, column: 3, scope: !2419)
!2448 = distinct !DISubprogram(name: "quotearg_style", scope: !111, file: !111, line: 970, type: !2449, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!21, !5, !39}
!2451 = !{!2452, !2453}
!2452 = !DILocalVariable(name: "s", arg: 1, scope: !2448, file: !111, line: 970, type: !5)
!2453 = !DILocalVariable(name: "arg", arg: 2, scope: !2448, file: !111, line: 970, type: !39)
!2454 = !DILocation(line: 970, column: 36, scope: !2448)
!2455 = !DILocation(line: 970, column: 51, scope: !2448)
!2456 = !DILocation(line: 955, column: 23, scope: !2385, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 972, column: 10, scope: !2448)
!2458 = !DILocation(line: 955, column: 45, scope: !2385, inlinedAt: !2457)
!2459 = !DILocation(line: 955, column: 60, scope: !2385, inlinedAt: !2457)
!2460 = !DILocation(line: 957, column: 3, scope: !2385, inlinedAt: !2457)
!2461 = !DILocation(line: 957, column: 32, scope: !2385, inlinedAt: !2457)
!2462 = !DILocation(line: 193, column: 48, scope: !2399, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 957, column: 36, scope: !2385, inlinedAt: !2457)
!2464 = !DILocation(line: 195, column: 26, scope: !2399, inlinedAt: !2463)
!2465 = !{!2466}
!2466 = distinct !{!2466, !2467, !"quoting_options_from_style: argument 0"}
!2467 = distinct !{!2467, !"quoting_options_from_style"}
!2468 = !DILocation(line: 196, column: 13, scope: !2411, inlinedAt: !2463)
!2469 = !DILocation(line: 196, column: 7, scope: !2399, inlinedAt: !2463)
!2470 = !DILocation(line: 197, column: 5, scope: !2411, inlinedAt: !2463)
!2471 = !DILocation(line: 198, column: 5, scope: !2399, inlinedAt: !2463)
!2472 = !DILocation(line: 198, column: 11, scope: !2399, inlinedAt: !2463)
!2473 = !DILocation(line: 958, column: 10, scope: !2385, inlinedAt: !2457)
!2474 = !DILocation(line: 959, column: 1, scope: !2385, inlinedAt: !2457)
!2475 = !DILocation(line: 972, column: 3, scope: !2448)
!2476 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !111, file: !111, line: 976, type: !2477, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!21, !5, !39, !105}
!2479 = !{!2480, !2481, !2482}
!2480 = !DILocalVariable(name: "s", arg: 1, scope: !2476, file: !111, line: 976, type: !5)
!2481 = !DILocalVariable(name: "arg", arg: 2, scope: !2476, file: !111, line: 976, type: !39)
!2482 = !DILocalVariable(name: "argsize", arg: 3, scope: !2476, file: !111, line: 976, type: !105)
!2483 = !DILocation(line: 976, column: 40, scope: !2476)
!2484 = !DILocation(line: 976, column: 55, scope: !2476)
!2485 = !DILocation(line: 976, column: 67, scope: !2476)
!2486 = !DILocation(line: 962, column: 27, scope: !2419, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 978, column: 10, scope: !2476)
!2488 = !DILocation(line: 962, column: 49, scope: !2419, inlinedAt: !2487)
!2489 = !DILocation(line: 963, column: 35, scope: !2419, inlinedAt: !2487)
!2490 = !DILocation(line: 963, column: 47, scope: !2419, inlinedAt: !2487)
!2491 = !DILocation(line: 965, column: 3, scope: !2419, inlinedAt: !2487)
!2492 = !DILocation(line: 965, column: 32, scope: !2419, inlinedAt: !2487)
!2493 = !DILocation(line: 193, column: 48, scope: !2399, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 965, column: 36, scope: !2419, inlinedAt: !2487)
!2495 = !DILocation(line: 195, column: 26, scope: !2399, inlinedAt: !2494)
!2496 = !{!2497}
!2497 = distinct !{!2497, !2498, !"quoting_options_from_style: argument 0"}
!2498 = distinct !{!2498, !"quoting_options_from_style"}
!2499 = !DILocation(line: 196, column: 13, scope: !2411, inlinedAt: !2494)
!2500 = !DILocation(line: 196, column: 7, scope: !2399, inlinedAt: !2494)
!2501 = !DILocation(line: 197, column: 5, scope: !2411, inlinedAt: !2494)
!2502 = !DILocation(line: 198, column: 5, scope: !2399, inlinedAt: !2494)
!2503 = !DILocation(line: 198, column: 11, scope: !2399, inlinedAt: !2494)
!2504 = !DILocation(line: 966, column: 10, scope: !2419, inlinedAt: !2487)
!2505 = !DILocation(line: 967, column: 1, scope: !2419, inlinedAt: !2487)
!2506 = !DILocation(line: 978, column: 3, scope: !2476)
!2507 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !111, file: !111, line: 982, type: !2508, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!21, !39, !105, !22}
!2510 = !{!2511, !2512, !2513, !2514}
!2511 = !DILocalVariable(name: "arg", arg: 1, scope: !2507, file: !111, line: 982, type: !39)
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2507, file: !111, line: 982, type: !105)
!2513 = !DILocalVariable(name: "ch", arg: 3, scope: !2507, file: !111, line: 982, type: !22)
!2514 = !DILocalVariable(name: "options", scope: !2507, file: !111, line: 984, type: !118)
!2515 = !DILocation(line: 982, column: 32, scope: !2507)
!2516 = !DILocation(line: 982, column: 44, scope: !2507)
!2517 = !DILocation(line: 982, column: 58, scope: !2507)
!2518 = !DILocation(line: 984, column: 3, scope: !2507)
!2519 = !DILocation(line: 985, column: 13, scope: !2507)
!2520 = !{i64 0, i64 4, !772, i64 4, i64 4, !716, i64 8, i64 32, !772, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2521 = !DILocation(line: 984, column: 26, scope: !2507)
!2522 = !DILocation(line: 152, column: 43, scope: !1173, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 986, column: 3, scope: !2507)
!2524 = !DILocation(line: 152, column: 51, scope: !1173, inlinedAt: !2523)
!2525 = !DILocation(line: 152, column: 58, scope: !1173, inlinedAt: !2523)
!2526 = !DILocation(line: 154, column: 17, scope: !1173, inlinedAt: !2523)
!2527 = !DILocation(line: 156, column: 62, scope: !1173, inlinedAt: !2523)
!2528 = !DILocation(line: 156, column: 57, scope: !1173, inlinedAt: !2523)
!2529 = !DILocation(line: 155, column: 17, scope: !1173, inlinedAt: !2523)
!2530 = !DILocation(line: 157, column: 15, scope: !1173, inlinedAt: !2523)
!2531 = !DILocation(line: 157, column: 7, scope: !1173, inlinedAt: !2523)
!2532 = !DILocation(line: 158, column: 12, scope: !1173, inlinedAt: !2523)
!2533 = !DILocation(line: 158, column: 15, scope: !1173, inlinedAt: !2523)
!2534 = !DILocation(line: 158, column: 25, scope: !1173, inlinedAt: !2523)
!2535 = !DILocation(line: 158, column: 7, scope: !1173, inlinedAt: !2523)
!2536 = !DILocation(line: 159, column: 18, scope: !1173, inlinedAt: !2523)
!2537 = !DILocation(line: 159, column: 23, scope: !1173, inlinedAt: !2523)
!2538 = !DILocation(line: 159, column: 6, scope: !1173, inlinedAt: !2523)
!2539 = !DILocation(line: 987, column: 10, scope: !2507)
!2540 = !DILocation(line: 988, column: 1, scope: !2507)
!2541 = !DILocation(line: 987, column: 3, scope: !2507)
!2542 = distinct !DISubprogram(name: "quotearg_char", scope: !111, file: !111, line: 991, type: !2543, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!21, !39, !22}
!2545 = !{!2546, !2547}
!2546 = !DILocalVariable(name: "arg", arg: 1, scope: !2542, file: !111, line: 991, type: !39)
!2547 = !DILocalVariable(name: "ch", arg: 2, scope: !2542, file: !111, line: 991, type: !22)
!2548 = !DILocation(line: 991, column: 28, scope: !2542)
!2549 = !DILocation(line: 991, column: 38, scope: !2542)
!2550 = !DILocation(line: 982, column: 32, scope: !2507, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 993, column: 10, scope: !2542)
!2552 = !DILocation(line: 982, column: 44, scope: !2507, inlinedAt: !2551)
!2553 = !DILocation(line: 982, column: 58, scope: !2507, inlinedAt: !2551)
!2554 = !DILocation(line: 984, column: 3, scope: !2507, inlinedAt: !2551)
!2555 = !DILocation(line: 985, column: 13, scope: !2507, inlinedAt: !2551)
!2556 = !DILocation(line: 984, column: 26, scope: !2507, inlinedAt: !2551)
!2557 = !DILocation(line: 152, column: 43, scope: !1173, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 986, column: 3, scope: !2507, inlinedAt: !2551)
!2559 = !DILocation(line: 152, column: 51, scope: !1173, inlinedAt: !2558)
!2560 = !DILocation(line: 152, column: 58, scope: !1173, inlinedAt: !2558)
!2561 = !DILocation(line: 154, column: 17, scope: !1173, inlinedAt: !2558)
!2562 = !DILocation(line: 156, column: 62, scope: !1173, inlinedAt: !2558)
!2563 = !DILocation(line: 156, column: 57, scope: !1173, inlinedAt: !2558)
!2564 = !DILocation(line: 155, column: 17, scope: !1173, inlinedAt: !2558)
!2565 = !DILocation(line: 157, column: 15, scope: !1173, inlinedAt: !2558)
!2566 = !DILocation(line: 157, column: 7, scope: !1173, inlinedAt: !2558)
!2567 = !DILocation(line: 158, column: 12, scope: !1173, inlinedAt: !2558)
!2568 = !DILocation(line: 158, column: 15, scope: !1173, inlinedAt: !2558)
!2569 = !DILocation(line: 158, column: 25, scope: !1173, inlinedAt: !2558)
!2570 = !DILocation(line: 158, column: 7, scope: !1173, inlinedAt: !2558)
!2571 = !DILocation(line: 159, column: 18, scope: !1173, inlinedAt: !2558)
!2572 = !DILocation(line: 159, column: 23, scope: !1173, inlinedAt: !2558)
!2573 = !DILocation(line: 159, column: 6, scope: !1173, inlinedAt: !2558)
!2574 = !DILocation(line: 987, column: 10, scope: !2507, inlinedAt: !2551)
!2575 = !DILocation(line: 988, column: 1, scope: !2507, inlinedAt: !2551)
!2576 = !DILocation(line: 993, column: 3, scope: !2542)
!2577 = distinct !DISubprogram(name: "quotearg_colon", scope: !111, file: !111, line: 997, type: !2361, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2578)
!2578 = !{!2579}
!2579 = !DILocalVariable(name: "arg", arg: 1, scope: !2577, file: !111, line: 997, type: !39)
!2580 = !DILocation(line: 997, column: 29, scope: !2577)
!2581 = !DILocation(line: 991, column: 28, scope: !2542, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 999, column: 10, scope: !2577)
!2583 = !DILocation(line: 991, column: 38, scope: !2542, inlinedAt: !2582)
!2584 = !DILocation(line: 982, column: 32, scope: !2507, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 993, column: 10, scope: !2542, inlinedAt: !2582)
!2586 = !DILocation(line: 982, column: 44, scope: !2507, inlinedAt: !2585)
!2587 = !DILocation(line: 982, column: 58, scope: !2507, inlinedAt: !2585)
!2588 = !DILocation(line: 984, column: 3, scope: !2507, inlinedAt: !2585)
!2589 = !DILocation(line: 985, column: 13, scope: !2507, inlinedAt: !2585)
!2590 = !DILocation(line: 984, column: 26, scope: !2507, inlinedAt: !2585)
!2591 = !DILocation(line: 152, column: 43, scope: !1173, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 986, column: 3, scope: !2507, inlinedAt: !2585)
!2593 = !DILocation(line: 152, column: 51, scope: !1173, inlinedAt: !2592)
!2594 = !DILocation(line: 152, column: 58, scope: !1173, inlinedAt: !2592)
!2595 = !DILocation(line: 154, column: 17, scope: !1173, inlinedAt: !2592)
!2596 = !DILocation(line: 156, column: 57, scope: !1173, inlinedAt: !2592)
!2597 = !DILocation(line: 155, column: 17, scope: !1173, inlinedAt: !2592)
!2598 = !DILocation(line: 157, column: 7, scope: !1173, inlinedAt: !2592)
!2599 = !DILocation(line: 158, column: 12, scope: !1173, inlinedAt: !2592)
!2600 = !DILocation(line: 159, column: 6, scope: !1173, inlinedAt: !2592)
!2601 = !DILocation(line: 987, column: 10, scope: !2507, inlinedAt: !2585)
!2602 = !DILocation(line: 988, column: 1, scope: !2507, inlinedAt: !2585)
!2603 = !DILocation(line: 999, column: 3, scope: !2577)
!2604 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !111, file: !111, line: 1003, type: !2372, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2605)
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "arg", arg: 1, scope: !2604, file: !111, line: 1003, type: !39)
!2607 = !DILocalVariable(name: "argsize", arg: 2, scope: !2604, file: !111, line: 1003, type: !105)
!2608 = !DILocation(line: 1003, column: 33, scope: !2604)
!2609 = !DILocation(line: 1003, column: 45, scope: !2604)
!2610 = !DILocation(line: 982, column: 32, scope: !2507, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1005, column: 10, scope: !2604)
!2612 = !DILocation(line: 982, column: 44, scope: !2507, inlinedAt: !2611)
!2613 = !DILocation(line: 982, column: 58, scope: !2507, inlinedAt: !2611)
!2614 = !DILocation(line: 984, column: 3, scope: !2507, inlinedAt: !2611)
!2615 = !DILocation(line: 985, column: 13, scope: !2507, inlinedAt: !2611)
!2616 = !DILocation(line: 984, column: 26, scope: !2507, inlinedAt: !2611)
!2617 = !DILocation(line: 152, column: 43, scope: !1173, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 986, column: 3, scope: !2507, inlinedAt: !2611)
!2619 = !DILocation(line: 152, column: 51, scope: !1173, inlinedAt: !2618)
!2620 = !DILocation(line: 152, column: 58, scope: !1173, inlinedAt: !2618)
!2621 = !DILocation(line: 154, column: 17, scope: !1173, inlinedAt: !2618)
!2622 = !DILocation(line: 156, column: 57, scope: !1173, inlinedAt: !2618)
!2623 = !DILocation(line: 155, column: 17, scope: !1173, inlinedAt: !2618)
!2624 = !DILocation(line: 157, column: 7, scope: !1173, inlinedAt: !2618)
!2625 = !DILocation(line: 158, column: 12, scope: !1173, inlinedAt: !2618)
!2626 = !DILocation(line: 159, column: 6, scope: !1173, inlinedAt: !2618)
!2627 = !DILocation(line: 987, column: 10, scope: !2507, inlinedAt: !2611)
!2628 = !DILocation(line: 988, column: 1, scope: !2507, inlinedAt: !2611)
!2629 = !DILocation(line: 1005, column: 3, scope: !2604)
!2630 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !111, file: !111, line: 1009, type: !2386, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2631)
!2631 = !{!2632, !2633, !2634, !2635}
!2632 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !111, line: 1009, type: !42)
!2633 = !DILocalVariable(name: "s", arg: 2, scope: !2630, file: !111, line: 1009, type: !5)
!2634 = !DILocalVariable(name: "arg", arg: 3, scope: !2630, file: !111, line: 1009, type: !39)
!2635 = !DILocalVariable(name: "options", scope: !2630, file: !111, line: 1011, type: !118)
!2636 = !DILocation(line: 195, column: 26, scope: !2399, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1012, column: 13, scope: !2630)
!2638 = !DILocation(line: 1009, column: 29, scope: !2630)
!2639 = !DILocation(line: 1009, column: 51, scope: !2630)
!2640 = !DILocation(line: 1009, column: 66, scope: !2630)
!2641 = !DILocation(line: 1011, column: 3, scope: !2630)
!2642 = !DILocation(line: 1012, column: 13, scope: !2630)
!2643 = !DILocation(line: 193, column: 48, scope: !2399, inlinedAt: !2637)
!2644 = !{!2645}
!2645 = distinct !{!2645, !2646, !"quoting_options_from_style: argument 0"}
!2646 = distinct !{!2646, !"quoting_options_from_style"}
!2647 = !DILocation(line: 196, column: 13, scope: !2411, inlinedAt: !2637)
!2648 = !DILocation(line: 196, column: 7, scope: !2399, inlinedAt: !2637)
!2649 = !DILocation(line: 197, column: 5, scope: !2411, inlinedAt: !2637)
!2650 = !DILocation(line: 1011, column: 26, scope: !2630)
!2651 = !DILocation(line: 152, column: 43, scope: !1173, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 1013, column: 3, scope: !2630)
!2653 = !DILocation(line: 152, column: 51, scope: !1173, inlinedAt: !2652)
!2654 = !DILocation(line: 152, column: 58, scope: !1173, inlinedAt: !2652)
!2655 = !DILocation(line: 154, column: 17, scope: !1173, inlinedAt: !2652)
!2656 = !DILocation(line: 156, column: 57, scope: !1173, inlinedAt: !2652)
!2657 = !DILocation(line: 155, column: 17, scope: !1173, inlinedAt: !2652)
!2658 = !DILocation(line: 157, column: 7, scope: !1173, inlinedAt: !2652)
!2659 = !DILocation(line: 158, column: 12, scope: !1173, inlinedAt: !2652)
!2660 = !DILocation(line: 159, column: 6, scope: !1173, inlinedAt: !2652)
!2661 = !DILocation(line: 1014, column: 10, scope: !2630)
!2662 = !DILocation(line: 1015, column: 1, scope: !2630)
!2663 = !DILocation(line: 1014, column: 3, scope: !2630)
!2664 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !111, file: !111, line: 1018, type: !2665, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!21, !42, !39, !39, !39}
!2667 = !{!2668, !2669, !2670, !2671}
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2664, file: !111, line: 1018, type: !42)
!2669 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2664, file: !111, line: 1018, type: !39)
!2670 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2664, file: !111, line: 1019, type: !39)
!2671 = !DILocalVariable(name: "arg", arg: 4, scope: !2664, file: !111, line: 1019, type: !39)
!2672 = !DILocation(line: 1018, column: 24, scope: !2664)
!2673 = !DILocation(line: 1018, column: 39, scope: !2664)
!2674 = !DILocation(line: 1019, column: 32, scope: !2664)
!2675 = !DILocation(line: 1019, column: 57, scope: !2664)
!2676 = !DILocalVariable(name: "n", arg: 1, scope: !2677, file: !111, line: 1026, type: !42)
!2677 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !111, file: !111, line: 1026, type: !2678, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!21, !42, !39, !39, !39, !105}
!2680 = !{!2676, !2681, !2682, !2683, !2684, !2685}
!2681 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2677, file: !111, line: 1026, type: !39)
!2682 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2677, file: !111, line: 1027, type: !39)
!2683 = !DILocalVariable(name: "arg", arg: 4, scope: !2677, file: !111, line: 1028, type: !39)
!2684 = !DILocalVariable(name: "argsize", arg: 5, scope: !2677, file: !111, line: 1028, type: !105)
!2685 = !DILocalVariable(name: "o", scope: !2677, file: !111, line: 1030, type: !118)
!2686 = !DILocation(line: 1026, column: 28, scope: !2677, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1021, column: 10, scope: !2664)
!2688 = !DILocation(line: 1026, column: 43, scope: !2677, inlinedAt: !2687)
!2689 = !DILocation(line: 1027, column: 36, scope: !2677, inlinedAt: !2687)
!2690 = !DILocation(line: 1028, column: 36, scope: !2677, inlinedAt: !2687)
!2691 = !DILocation(line: 1028, column: 48, scope: !2677, inlinedAt: !2687)
!2692 = !DILocation(line: 1030, column: 3, scope: !2677, inlinedAt: !2687)
!2693 = !DILocation(line: 1030, column: 30, scope: !2677, inlinedAt: !2687)
!2694 = !DILocation(line: 1030, column: 26, scope: !2677, inlinedAt: !2687)
!2695 = !DILocation(line: 179, column: 45, scope: !1221, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1031, column: 3, scope: !2677, inlinedAt: !2687)
!2697 = !DILocation(line: 180, column: 33, scope: !1221, inlinedAt: !2696)
!2698 = !DILocation(line: 180, column: 57, scope: !1221, inlinedAt: !2696)
!2699 = !DILocation(line: 184, column: 6, scope: !1221, inlinedAt: !2696)
!2700 = !DILocation(line: 184, column: 12, scope: !1221, inlinedAt: !2696)
!2701 = !DILocation(line: 185, column: 8, scope: !1237, inlinedAt: !2696)
!2702 = !DILocation(line: 185, column: 23, scope: !1237, inlinedAt: !2696)
!2703 = !DILocation(line: 185, column: 19, scope: !1237, inlinedAt: !2696)
!2704 = !DILocation(line: 186, column: 5, scope: !1237, inlinedAt: !2696)
!2705 = !DILocation(line: 187, column: 6, scope: !1221, inlinedAt: !2696)
!2706 = !DILocation(line: 187, column: 17, scope: !1221, inlinedAt: !2696)
!2707 = !DILocation(line: 188, column: 6, scope: !1221, inlinedAt: !2696)
!2708 = !DILocation(line: 188, column: 18, scope: !1221, inlinedAt: !2696)
!2709 = !DILocation(line: 1032, column: 10, scope: !2677, inlinedAt: !2687)
!2710 = !DILocation(line: 1033, column: 1, scope: !2677, inlinedAt: !2687)
!2711 = !DILocation(line: 1021, column: 3, scope: !2664)
!2712 = !DILocation(line: 1026, column: 28, scope: !2677)
!2713 = !DILocation(line: 1026, column: 43, scope: !2677)
!2714 = !DILocation(line: 1027, column: 36, scope: !2677)
!2715 = !DILocation(line: 1028, column: 36, scope: !2677)
!2716 = !DILocation(line: 1028, column: 48, scope: !2677)
!2717 = !DILocation(line: 1030, column: 3, scope: !2677)
!2718 = !DILocation(line: 1030, column: 30, scope: !2677)
!2719 = !DILocation(line: 1030, column: 26, scope: !2677)
!2720 = !DILocation(line: 179, column: 45, scope: !1221, inlinedAt: !2721)
!2721 = distinct !DILocation(line: 1031, column: 3, scope: !2677)
!2722 = !DILocation(line: 180, column: 33, scope: !1221, inlinedAt: !2721)
!2723 = !DILocation(line: 180, column: 57, scope: !1221, inlinedAt: !2721)
!2724 = !DILocation(line: 184, column: 6, scope: !1221, inlinedAt: !2721)
!2725 = !DILocation(line: 184, column: 12, scope: !1221, inlinedAt: !2721)
!2726 = !DILocation(line: 185, column: 8, scope: !1237, inlinedAt: !2721)
!2727 = !DILocation(line: 185, column: 23, scope: !1237, inlinedAt: !2721)
!2728 = !DILocation(line: 185, column: 19, scope: !1237, inlinedAt: !2721)
!2729 = !DILocation(line: 186, column: 5, scope: !1237, inlinedAt: !2721)
!2730 = !DILocation(line: 187, column: 6, scope: !1221, inlinedAt: !2721)
!2731 = !DILocation(line: 187, column: 17, scope: !1221, inlinedAt: !2721)
!2732 = !DILocation(line: 188, column: 6, scope: !1221, inlinedAt: !2721)
!2733 = !DILocation(line: 188, column: 18, scope: !1221, inlinedAt: !2721)
!2734 = !DILocation(line: 1032, column: 10, scope: !2677)
!2735 = !DILocation(line: 1033, column: 1, scope: !2677)
!2736 = !DILocation(line: 1032, column: 3, scope: !2677)
!2737 = distinct !DISubprogram(name: "quotearg_custom", scope: !111, file: !111, line: 1036, type: !2738, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!21, !39, !39, !39}
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2737, file: !111, line: 1036, type: !39)
!2742 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2737, file: !111, line: 1036, type: !39)
!2743 = !DILocalVariable(name: "arg", arg: 3, scope: !2737, file: !111, line: 1037, type: !39)
!2744 = !DILocation(line: 1036, column: 30, scope: !2737)
!2745 = !DILocation(line: 1036, column: 54, scope: !2737)
!2746 = !DILocation(line: 1037, column: 30, scope: !2737)
!2747 = !DILocation(line: 1018, column: 24, scope: !2664, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 1039, column: 10, scope: !2737)
!2749 = !DILocation(line: 1018, column: 39, scope: !2664, inlinedAt: !2748)
!2750 = !DILocation(line: 1019, column: 32, scope: !2664, inlinedAt: !2748)
!2751 = !DILocation(line: 1019, column: 57, scope: !2664, inlinedAt: !2748)
!2752 = !DILocation(line: 1026, column: 28, scope: !2677, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1021, column: 10, scope: !2664, inlinedAt: !2748)
!2754 = !DILocation(line: 1026, column: 43, scope: !2677, inlinedAt: !2753)
!2755 = !DILocation(line: 1027, column: 36, scope: !2677, inlinedAt: !2753)
!2756 = !DILocation(line: 1028, column: 36, scope: !2677, inlinedAt: !2753)
!2757 = !DILocation(line: 1028, column: 48, scope: !2677, inlinedAt: !2753)
!2758 = !DILocation(line: 1030, column: 3, scope: !2677, inlinedAt: !2753)
!2759 = !DILocation(line: 1030, column: 30, scope: !2677, inlinedAt: !2753)
!2760 = !DILocation(line: 1030, column: 26, scope: !2677, inlinedAt: !2753)
!2761 = !DILocation(line: 179, column: 45, scope: !1221, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 1031, column: 3, scope: !2677, inlinedAt: !2753)
!2763 = !DILocation(line: 180, column: 33, scope: !1221, inlinedAt: !2762)
!2764 = !DILocation(line: 180, column: 57, scope: !1221, inlinedAt: !2762)
!2765 = !DILocation(line: 184, column: 6, scope: !1221, inlinedAt: !2762)
!2766 = !DILocation(line: 184, column: 12, scope: !1221, inlinedAt: !2762)
!2767 = !DILocation(line: 185, column: 8, scope: !1237, inlinedAt: !2762)
!2768 = !DILocation(line: 185, column: 23, scope: !1237, inlinedAt: !2762)
!2769 = !DILocation(line: 185, column: 19, scope: !1237, inlinedAt: !2762)
!2770 = !DILocation(line: 186, column: 5, scope: !1237, inlinedAt: !2762)
!2771 = !DILocation(line: 187, column: 6, scope: !1221, inlinedAt: !2762)
!2772 = !DILocation(line: 187, column: 17, scope: !1221, inlinedAt: !2762)
!2773 = !DILocation(line: 188, column: 6, scope: !1221, inlinedAt: !2762)
!2774 = !DILocation(line: 188, column: 18, scope: !1221, inlinedAt: !2762)
!2775 = !DILocation(line: 1032, column: 10, scope: !2677, inlinedAt: !2753)
!2776 = !DILocation(line: 1033, column: 1, scope: !2677, inlinedAt: !2753)
!2777 = !DILocation(line: 1039, column: 3, scope: !2737)
!2778 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !111, file: !111, line: 1043, type: !2779, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!21, !39, !39, !39, !105}
!2781 = !{!2782, !2783, !2784, !2785}
!2782 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2778, file: !111, line: 1043, type: !39)
!2783 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2778, file: !111, line: 1043, type: !39)
!2784 = !DILocalVariable(name: "arg", arg: 3, scope: !2778, file: !111, line: 1044, type: !39)
!2785 = !DILocalVariable(name: "argsize", arg: 4, scope: !2778, file: !111, line: 1044, type: !105)
!2786 = !DILocation(line: 1043, column: 34, scope: !2778)
!2787 = !DILocation(line: 1043, column: 58, scope: !2778)
!2788 = !DILocation(line: 1044, column: 34, scope: !2778)
!2789 = !DILocation(line: 1044, column: 46, scope: !2778)
!2790 = !DILocation(line: 1026, column: 28, scope: !2677, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1046, column: 10, scope: !2778)
!2792 = !DILocation(line: 1026, column: 43, scope: !2677, inlinedAt: !2791)
!2793 = !DILocation(line: 1027, column: 36, scope: !2677, inlinedAt: !2791)
!2794 = !DILocation(line: 1028, column: 36, scope: !2677, inlinedAt: !2791)
!2795 = !DILocation(line: 1028, column: 48, scope: !2677, inlinedAt: !2791)
!2796 = !DILocation(line: 1030, column: 3, scope: !2677, inlinedAt: !2791)
!2797 = !DILocation(line: 1030, column: 30, scope: !2677, inlinedAt: !2791)
!2798 = !DILocation(line: 1030, column: 26, scope: !2677, inlinedAt: !2791)
!2799 = !DILocation(line: 179, column: 45, scope: !1221, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 1031, column: 3, scope: !2677, inlinedAt: !2791)
!2801 = !DILocation(line: 180, column: 33, scope: !1221, inlinedAt: !2800)
!2802 = !DILocation(line: 180, column: 57, scope: !1221, inlinedAt: !2800)
!2803 = !DILocation(line: 184, column: 6, scope: !1221, inlinedAt: !2800)
!2804 = !DILocation(line: 184, column: 12, scope: !1221, inlinedAt: !2800)
!2805 = !DILocation(line: 185, column: 8, scope: !1237, inlinedAt: !2800)
!2806 = !DILocation(line: 185, column: 23, scope: !1237, inlinedAt: !2800)
!2807 = !DILocation(line: 185, column: 19, scope: !1237, inlinedAt: !2800)
!2808 = !DILocation(line: 186, column: 5, scope: !1237, inlinedAt: !2800)
!2809 = !DILocation(line: 187, column: 6, scope: !1221, inlinedAt: !2800)
!2810 = !DILocation(line: 187, column: 17, scope: !1221, inlinedAt: !2800)
!2811 = !DILocation(line: 188, column: 6, scope: !1221, inlinedAt: !2800)
!2812 = !DILocation(line: 188, column: 18, scope: !1221, inlinedAt: !2800)
!2813 = !DILocation(line: 1032, column: 10, scope: !2677, inlinedAt: !2791)
!2814 = !DILocation(line: 1033, column: 1, scope: !2677, inlinedAt: !2791)
!2815 = !DILocation(line: 1046, column: 3, scope: !2778)
!2816 = distinct !DISubprogram(name: "quote_n_mem", scope: !111, file: !111, line: 1061, type: !2817, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!39, !42, !39, !105}
!2819 = !{!2820, !2821, !2822}
!2820 = !DILocalVariable(name: "n", arg: 1, scope: !2816, file: !111, line: 1061, type: !42)
!2821 = !DILocalVariable(name: "arg", arg: 2, scope: !2816, file: !111, line: 1061, type: !39)
!2822 = !DILocalVariable(name: "argsize", arg: 3, scope: !2816, file: !111, line: 1061, type: !105)
!2823 = !DILocation(line: 1061, column: 18, scope: !2816)
!2824 = !DILocation(line: 1061, column: 33, scope: !2816)
!2825 = !DILocation(line: 1061, column: 45, scope: !2816)
!2826 = !DILocation(line: 1063, column: 10, scope: !2816)
!2827 = !DILocation(line: 1063, column: 3, scope: !2816)
!2828 = distinct !DISubprogram(name: "quote_mem", scope: !111, file: !111, line: 1067, type: !2829, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2831)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!39, !39, !105}
!2831 = !{!2832, !2833}
!2832 = !DILocalVariable(name: "arg", arg: 1, scope: !2828, file: !111, line: 1067, type: !39)
!2833 = !DILocalVariable(name: "argsize", arg: 2, scope: !2828, file: !111, line: 1067, type: !105)
!2834 = !DILocation(line: 1067, column: 24, scope: !2828)
!2835 = !DILocation(line: 1067, column: 36, scope: !2828)
!2836 = !DILocation(line: 1061, column: 18, scope: !2816, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 1069, column: 10, scope: !2828)
!2838 = !DILocation(line: 1061, column: 33, scope: !2816, inlinedAt: !2837)
!2839 = !DILocation(line: 1061, column: 45, scope: !2816, inlinedAt: !2837)
!2840 = !DILocation(line: 1063, column: 10, scope: !2816, inlinedAt: !2837)
!2841 = !DILocation(line: 1069, column: 3, scope: !2828)
!2842 = distinct !DISubprogram(name: "quote_n", scope: !111, file: !111, line: 1073, type: !2843, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!39, !42, !39}
!2845 = !{!2846, !2847}
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2842, file: !111, line: 1073, type: !42)
!2847 = !DILocalVariable(name: "arg", arg: 2, scope: !2842, file: !111, line: 1073, type: !39)
!2848 = !DILocation(line: 1073, column: 14, scope: !2842)
!2849 = !DILocation(line: 1073, column: 29, scope: !2842)
!2850 = !DILocation(line: 1061, column: 18, scope: !2816, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 1075, column: 10, scope: !2842)
!2852 = !DILocation(line: 1061, column: 33, scope: !2816, inlinedAt: !2851)
!2853 = !DILocation(line: 1061, column: 45, scope: !2816, inlinedAt: !2851)
!2854 = !DILocation(line: 1063, column: 10, scope: !2816, inlinedAt: !2851)
!2855 = !DILocation(line: 1075, column: 3, scope: !2842)
!2856 = distinct !DISubprogram(name: "quote", scope: !111, file: !111, line: 1079, type: !2857, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !80, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!39, !39}
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "arg", arg: 1, scope: !2856, file: !111, line: 1079, type: !39)
!2861 = !DILocation(line: 1079, column: 20, scope: !2856)
!2862 = !DILocation(line: 1073, column: 14, scope: !2842, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1081, column: 10, scope: !2856)
!2864 = !DILocation(line: 1073, column: 29, scope: !2842, inlinedAt: !2863)
!2865 = !DILocation(line: 1061, column: 18, scope: !2816, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 1075, column: 10, scope: !2842, inlinedAt: !2863)
!2867 = !DILocation(line: 1061, column: 33, scope: !2816, inlinedAt: !2866)
!2868 = !DILocation(line: 1061, column: 45, scope: !2816, inlinedAt: !2866)
!2869 = !DILocation(line: 1063, column: 10, scope: !2816, inlinedAt: !2866)
!2870 = !DILocation(line: 1081, column: 3, scope: !2856)
!2871 = distinct !DISubprogram(name: "version_etc_arn", scope: !169, file: !169, line: 62, type: !2872, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2909)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2874, !39, !39, !39, !2908, !105}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !913, line: 7, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !915, line: 49, size: 1728, elements: !2877)
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2876, file: !915, line: 51, baseType: !42, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2876, file: !915, line: 54, baseType: !21, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2876, file: !915, line: 55, baseType: !21, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2876, file: !915, line: 56, baseType: !21, size: 64, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2876, file: !915, line: 57, baseType: !21, size: 64, offset: 256)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2876, file: !915, line: 58, baseType: !21, size: 64, offset: 320)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2876, file: !915, line: 59, baseType: !21, size: 64, offset: 384)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2876, file: !915, line: 60, baseType: !21, size: 64, offset: 448)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2876, file: !915, line: 61, baseType: !21, size: 64, offset: 512)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2876, file: !915, line: 64, baseType: !21, size: 64, offset: 576)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2876, file: !915, line: 65, baseType: !21, size: 64, offset: 640)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2876, file: !915, line: 66, baseType: !21, size: 64, offset: 704)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2876, file: !915, line: 68, baseType: !930, size: 64, offset: 768)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2876, file: !915, line: 70, baseType: !2892, size: 64, offset: 832)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2876, file: !915, line: 72, baseType: !42, size: 32, offset: 896)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2876, file: !915, line: 73, baseType: !42, size: 32, offset: 928)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2876, file: !915, line: 74, baseType: !842, size: 64, offset: 960)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2876, file: !915, line: 77, baseType: !104, size: 16, offset: 1024)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2876, file: !915, line: 78, baseType: !939, size: 8, offset: 1040)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2876, file: !915, line: 79, baseType: !941, size: 8, offset: 1048)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2876, file: !915, line: 81, baseType: !945, size: 64, offset: 1088)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2876, file: !915, line: 89, baseType: !948, size: 64, offset: 1152)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2876, file: !915, line: 91, baseType: !950, size: 64, offset: 1216)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2876, file: !915, line: 92, baseType: !953, size: 64, offset: 1280)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2876, file: !915, line: 93, baseType: !2892, size: 64, offset: 1344)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2876, file: !915, line: 94, baseType: !23, size: 64, offset: 1408)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2876, file: !915, line: 95, baseType: !105, size: 64, offset: 1472)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2876, file: !915, line: 96, baseType: !42, size: 32, offset: 1536)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2876, file: !915, line: 98, baseType: !960, size: 160, offset: 1568)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2909 = !{!2910, !2911, !2912, !2913, !2914, !2915}
!2910 = !DILocalVariable(name: "stream", arg: 1, scope: !2871, file: !169, line: 62, type: !2874)
!2911 = !DILocalVariable(name: "command_name", arg: 2, scope: !2871, file: !169, line: 63, type: !39)
!2912 = !DILocalVariable(name: "package", arg: 3, scope: !2871, file: !169, line: 63, type: !39)
!2913 = !DILocalVariable(name: "version", arg: 4, scope: !2871, file: !169, line: 64, type: !39)
!2914 = !DILocalVariable(name: "authors", arg: 5, scope: !2871, file: !169, line: 65, type: !2908)
!2915 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2871, file: !169, line: 65, type: !105)
!2916 = !DILocation(line: 62, column: 24, scope: !2871)
!2917 = !DILocation(line: 63, column: 30, scope: !2871)
!2918 = !DILocation(line: 63, column: 56, scope: !2871)
!2919 = !DILocation(line: 64, column: 30, scope: !2871)
!2920 = !DILocation(line: 65, column: 39, scope: !2871)
!2921 = !DILocation(line: 65, column: 55, scope: !2871)
!2922 = !DILocation(line: 67, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2871, file: !169, line: 67, column: 7)
!2924 = !DILocation(line: 67, column: 7, scope: !2871)
!2925 = !DILocation(line: 68, column: 5, scope: !2923)
!2926 = !DILocation(line: 70, column: 5, scope: !2923)
!2927 = !DILocation(line: 84, column: 3, scope: !2871)
!2928 = !DILocation(line: 86, column: 3, scope: !2871)
!2929 = !DILocation(line: 95, column: 3, scope: !2871)
!2930 = !DILocation(line: 99, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2871, file: !169, line: 96, column: 5)
!2932 = !DILocation(line: 102, column: 7, scope: !2931)
!2933 = !DILocation(line: 103, column: 7, scope: !2931)
!2934 = !DILocation(line: 106, column: 7, scope: !2931)
!2935 = !DILocation(line: 107, column: 7, scope: !2931)
!2936 = !DILocation(line: 110, column: 7, scope: !2931)
!2937 = !DILocation(line: 112, column: 7, scope: !2931)
!2938 = !DILocation(line: 117, column: 7, scope: !2931)
!2939 = !DILocation(line: 119, column: 7, scope: !2931)
!2940 = !DILocation(line: 124, column: 7, scope: !2931)
!2941 = !DILocation(line: 126, column: 7, scope: !2931)
!2942 = !DILocation(line: 131, column: 7, scope: !2931)
!2943 = !DILocation(line: 134, column: 7, scope: !2931)
!2944 = !DILocation(line: 139, column: 7, scope: !2931)
!2945 = !DILocation(line: 142, column: 7, scope: !2931)
!2946 = !DILocation(line: 147, column: 7, scope: !2931)
!2947 = !DILocation(line: 151, column: 7, scope: !2931)
!2948 = !DILocation(line: 156, column: 7, scope: !2931)
!2949 = !DILocation(line: 160, column: 7, scope: !2931)
!2950 = !DILocation(line: 167, column: 7, scope: !2931)
!2951 = !DILocation(line: 171, column: 7, scope: !2931)
!2952 = !DILocation(line: 173, column: 1, scope: !2871)
!2953 = distinct !DISubprogram(name: "version_etc_ar", scope: !169, file: !169, line: 180, type: !2954, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2874, !39, !39, !39, !2908}
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2962}
!2957 = !DILocalVariable(name: "stream", arg: 1, scope: !2953, file: !169, line: 180, type: !2874)
!2958 = !DILocalVariable(name: "command_name", arg: 2, scope: !2953, file: !169, line: 181, type: !39)
!2959 = !DILocalVariable(name: "package", arg: 3, scope: !2953, file: !169, line: 181, type: !39)
!2960 = !DILocalVariable(name: "version", arg: 4, scope: !2953, file: !169, line: 182, type: !39)
!2961 = !DILocalVariable(name: "authors", arg: 5, scope: !2953, file: !169, line: 182, type: !2908)
!2962 = !DILocalVariable(name: "n_authors", scope: !2953, file: !169, line: 184, type: !105)
!2963 = !DILocation(line: 180, column: 23, scope: !2953)
!2964 = !DILocation(line: 181, column: 29, scope: !2953)
!2965 = !DILocation(line: 181, column: 55, scope: !2953)
!2966 = !DILocation(line: 182, column: 29, scope: !2953)
!2967 = !DILocation(line: 182, column: 59, scope: !2953)
!2968 = !DILocation(line: 184, column: 10, scope: !2953)
!2969 = !DILocation(line: 186, column: 8, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2953, file: !169, line: 186, column: 3)
!2971 = !DILocation(line: 0, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2970, file: !169, line: 186, column: 3)
!2973 = !DILocation(line: 186, column: 23, scope: !2972)
!2974 = !DILocation(line: 186, column: 3, scope: !2970)
!2975 = !DILocation(line: 186, column: 52, scope: !2972)
!2976 = distinct !{!2976, !2974, !2977}
!2977 = !DILocation(line: 187, column: 5, scope: !2970)
!2978 = !DILocation(line: 188, column: 3, scope: !2953)
!2979 = !DILocation(line: 189, column: 1, scope: !2953)
!2980 = distinct !DISubprogram(name: "version_etc_va", scope: !169, file: !169, line: 196, type: !2981, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2990)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !2874, !39, !39, !39, !2983}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !166, line: 189, size: 192, elements: !2985)
!2985 = !{!2986, !2987, !2988, !2989}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2984, file: !166, line: 189, baseType: !7, size: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2984, file: !166, line: 189, baseType: !7, size: 32, offset: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2984, file: !166, line: 189, baseType: !23, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2984, file: !166, line: 189, baseType: !23, size: 64, offset: 128)
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997}
!2991 = !DILocalVariable(name: "stream", arg: 1, scope: !2980, file: !169, line: 196, type: !2874)
!2992 = !DILocalVariable(name: "command_name", arg: 2, scope: !2980, file: !169, line: 197, type: !39)
!2993 = !DILocalVariable(name: "package", arg: 3, scope: !2980, file: !169, line: 197, type: !39)
!2994 = !DILocalVariable(name: "version", arg: 4, scope: !2980, file: !169, line: 198, type: !39)
!2995 = !DILocalVariable(name: "authors", arg: 5, scope: !2980, file: !169, line: 198, type: !2983)
!2996 = !DILocalVariable(name: "n_authors", scope: !2980, file: !169, line: 200, type: !105)
!2997 = !DILocalVariable(name: "authtab", scope: !2980, file: !169, line: 201, type: !2998)
!2998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 640, elements: !114)
!2999 = !DILocation(line: 196, column: 23, scope: !2980)
!3000 = !DILocation(line: 197, column: 29, scope: !2980)
!3001 = !DILocation(line: 197, column: 55, scope: !2980)
!3002 = !DILocation(line: 198, column: 29, scope: !2980)
!3003 = !DILocation(line: 198, column: 46, scope: !2980)
!3004 = !DILocation(line: 201, column: 3, scope: !2980)
!3005 = !DILocation(line: 201, column: 15, scope: !2980)
!3006 = !DILocation(line: 200, column: 10, scope: !2980)
!3007 = !DILocation(line: 205, column: 35, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !169, line: 203, column: 3)
!3009 = distinct !DILexicalBlock(scope: !2980, file: !169, line: 203, column: 3)
!3010 = !DILocation(line: 205, column: 14, scope: !3008)
!3011 = !DILocation(line: 205, column: 33, scope: !3008)
!3012 = !DILocation(line: 205, column: 67, scope: !3008)
!3013 = !DILocation(line: 203, column: 3, scope: !3009)
!3014 = !DILocation(line: 0, scope: !3008)
!3015 = !DILocation(line: 208, column: 3, scope: !2980)
!3016 = !DILocation(line: 210, column: 1, scope: !2980)
!3017 = distinct !DISubprogram(name: "version_etc", scope: !169, file: !169, line: 227, type: !3018, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{null, !2874, !39, !39, !39, null}
!3020 = !{!3021, !3022, !3023, !3024, !3025}
!3021 = !DILocalVariable(name: "stream", arg: 1, scope: !3017, file: !169, line: 227, type: !2874)
!3022 = !DILocalVariable(name: "command_name", arg: 2, scope: !3017, file: !169, line: 228, type: !39)
!3023 = !DILocalVariable(name: "package", arg: 3, scope: !3017, file: !169, line: 228, type: !39)
!3024 = !DILocalVariable(name: "version", arg: 4, scope: !3017, file: !169, line: 229, type: !39)
!3025 = !DILocalVariable(name: "authors", scope: !3017, file: !169, line: 231, type: !3026)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !968, line: 52, baseType: !3027)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !970, line: 48, baseType: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !166, line: 231, baseType: !3029)
!3029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2984, size: 192, elements: !942)
!3030 = !DILocation(line: 227, column: 20, scope: !3017)
!3031 = !DILocation(line: 228, column: 26, scope: !3017)
!3032 = !DILocation(line: 228, column: 52, scope: !3017)
!3033 = !DILocation(line: 229, column: 26, scope: !3017)
!3034 = !DILocation(line: 231, column: 3, scope: !3017)
!3035 = !DILocation(line: 231, column: 11, scope: !3017)
!3036 = !DILocation(line: 233, column: 3, scope: !3017)
!3037 = !DILocation(line: 234, column: 3, scope: !3017)
!3038 = !DILocation(line: 235, column: 3, scope: !3017)
!3039 = !DILocation(line: 236, column: 1, scope: !3017)
!3040 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !169, file: !169, line: 239, type: !1038, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !54)
!3041 = !DILocation(line: 245, column: 3, scope: !3040)
!3042 = !DILocation(line: 251, column: 3, scope: !3040)
!3043 = !DILocation(line: 256, column: 3, scope: !3040)
!3044 = !DILocation(line: 258, column: 1, scope: !3040)
!3045 = distinct !DISubprogram(name: "xnmalloc", scope: !177, file: !177, line: 99, type: !3046, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!23, !105, !105}
!3048 = !{!3049, !3050}
!3049 = !DILocalVariable(name: "n", arg: 1, scope: !3045, file: !177, line: 99, type: !105)
!3050 = !DILocalVariable(name: "s", arg: 2, scope: !3045, file: !177, line: 99, type: !105)
!3051 = !DILocation(line: 99, column: 18, scope: !3045)
!3052 = !DILocation(line: 99, column: 28, scope: !3045)
!3053 = !DILocation(line: 101, column: 7, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3045, file: !177, line: 101, column: 7)
!3055 = !DILocation(line: 101, column: 7, scope: !3045)
!3056 = !DILocation(line: 102, column: 5, scope: !3054)
!3057 = !DILocation(line: 103, column: 21, scope: !3045)
!3058 = !DILocalVariable(name: "n", arg: 1, scope: !3059, file: !3060, line: 39, type: !105)
!3059 = distinct !DISubprogram(name: "xmalloc", scope: !3060, file: !3060, line: 39, type: !3061, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3063)
!3060 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!23, !105}
!3063 = !{!3058, !3064}
!3064 = !DILocalVariable(name: "p", scope: !3059, file: !3060, line: 41, type: !23)
!3065 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 103, column: 10, scope: !3045)
!3067 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3066)
!3068 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3066)
!3069 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3066)
!3070 = distinct !DILexicalBlock(scope: !3059, file: !3060, line: 42, column: 7)
!3071 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3066)
!3072 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3066)
!3073 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3066)
!3074 = !DILocation(line: 103, column: 3, scope: !3045)
!3075 = !DILocation(line: 39, column: 17, scope: !3059)
!3076 = !DILocation(line: 41, column: 13, scope: !3059)
!3077 = !DILocation(line: 41, column: 9, scope: !3059)
!3078 = !DILocation(line: 42, column: 8, scope: !3070)
!3079 = !DILocation(line: 42, column: 15, scope: !3070)
!3080 = !DILocation(line: 42, column: 10, scope: !3070)
!3081 = !DILocation(line: 43, column: 5, scope: !3070)
!3082 = !DILocation(line: 44, column: 3, scope: !3059)
!3083 = distinct !DISubprogram(name: "xnrealloc", scope: !177, file: !177, line: 112, type: !3084, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!23, !23, !105, !105}
!3086 = !{!3087, !3088, !3089}
!3087 = !DILocalVariable(name: "p", arg: 1, scope: !3083, file: !177, line: 112, type: !23)
!3088 = !DILocalVariable(name: "n", arg: 2, scope: !3083, file: !177, line: 112, type: !105)
!3089 = !DILocalVariable(name: "s", arg: 3, scope: !3083, file: !177, line: 112, type: !105)
!3090 = !DILocation(line: 112, column: 18, scope: !3083)
!3091 = !DILocation(line: 112, column: 28, scope: !3083)
!3092 = !DILocation(line: 112, column: 38, scope: !3083)
!3093 = !DILocation(line: 114, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3083, file: !177, line: 114, column: 7)
!3095 = !DILocation(line: 114, column: 7, scope: !3083)
!3096 = !DILocation(line: 115, column: 5, scope: !3094)
!3097 = !DILocation(line: 116, column: 25, scope: !3083)
!3098 = !DILocalVariable(name: "p", arg: 1, scope: !3099, file: !3060, line: 51, type: !23)
!3099 = distinct !DISubprogram(name: "xrealloc", scope: !3060, file: !3060, line: 51, type: !3100, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!23, !23, !105}
!3102 = !{!3098, !3103}
!3103 = !DILocalVariable(name: "n", arg: 2, scope: !3099, file: !3060, line: 51, type: !105)
!3104 = !DILocation(line: 51, column: 17, scope: !3099, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 116, column: 10, scope: !3083)
!3106 = !DILocation(line: 51, column: 27, scope: !3099, inlinedAt: !3105)
!3107 = !DILocation(line: 53, column: 8, scope: !3108, inlinedAt: !3105)
!3108 = distinct !DILexicalBlock(scope: !3099, file: !3060, line: 53, column: 7)
!3109 = !DILocation(line: 53, column: 13, scope: !3108, inlinedAt: !3105)
!3110 = !DILocation(line: 53, column: 10, scope: !3108, inlinedAt: !3105)
!3111 = !DILocation(line: 57, column: 7, scope: !3112, inlinedAt: !3105)
!3112 = distinct !DILexicalBlock(scope: !3108, file: !3060, line: 54, column: 5)
!3113 = !DILocation(line: 58, column: 7, scope: !3112, inlinedAt: !3105)
!3114 = !DILocation(line: 61, column: 7, scope: !3099, inlinedAt: !3105)
!3115 = !DILocation(line: 62, column: 8, scope: !3116, inlinedAt: !3105)
!3116 = distinct !DILexicalBlock(scope: !3099, file: !3060, line: 62, column: 7)
!3117 = !DILocation(line: 62, column: 13, scope: !3116, inlinedAt: !3105)
!3118 = !DILocation(line: 62, column: 10, scope: !3116, inlinedAt: !3105)
!3119 = !DILocation(line: 63, column: 5, scope: !3116, inlinedAt: !3105)
!3120 = !DILocation(line: 0, scope: !3099, inlinedAt: !3105)
!3121 = !DILocation(line: 116, column: 3, scope: !3083)
!3122 = !DILocation(line: 51, column: 17, scope: !3099)
!3123 = !DILocation(line: 51, column: 27, scope: !3099)
!3124 = !DILocation(line: 53, column: 8, scope: !3108)
!3125 = !DILocation(line: 53, column: 13, scope: !3108)
!3126 = !DILocation(line: 53, column: 10, scope: !3108)
!3127 = !DILocation(line: 57, column: 7, scope: !3112)
!3128 = !DILocation(line: 58, column: 7, scope: !3112)
!3129 = !DILocation(line: 61, column: 7, scope: !3099)
!3130 = !DILocation(line: 62, column: 8, scope: !3116)
!3131 = !DILocation(line: 62, column: 13, scope: !3116)
!3132 = !DILocation(line: 62, column: 10, scope: !3116)
!3133 = !DILocation(line: 63, column: 5, scope: !3116)
!3134 = !DILocation(line: 0, scope: !3099)
!3135 = !DILocation(line: 65, column: 1, scope: !3099)
!3136 = !DILocation(line: 174, column: 19, scope: !178)
!3137 = !DILocation(line: 174, column: 30, scope: !178)
!3138 = !DILocation(line: 174, column: 41, scope: !178)
!3139 = !DILocation(line: 176, column: 14, scope: !178)
!3140 = !DILocation(line: 176, column: 10, scope: !178)
!3141 = !DILocation(line: 178, column: 9, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !178, file: !177, line: 178, column: 7)
!3143 = !DILocation(line: 178, column: 7, scope: !178)
!3144 = !DILocation(line: 180, column: 13, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !177, line: 180, column: 11)
!3146 = distinct !DILexicalBlock(scope: !3142, file: !177, line: 179, column: 5)
!3147 = !DILocation(line: 180, column: 11, scope: !3146)
!3148 = !DILocation(line: 188, column: 30, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !177, line: 181, column: 9)
!3150 = !DILocation(line: 189, column: 16, scope: !3149)
!3151 = !DILocation(line: 189, column: 13, scope: !3149)
!3152 = !DILocation(line: 190, column: 9, scope: !3149)
!3153 = !DILocation(line: 0, scope: !3149)
!3154 = !DILocation(line: 191, column: 11, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3146, file: !177, line: 191, column: 11)
!3156 = !DILocation(line: 191, column: 11, scope: !3146)
!3157 = !DILocation(line: 206, column: 7, scope: !178)
!3158 = !DILocation(line: 207, column: 25, scope: !178)
!3159 = !DILocation(line: 51, column: 17, scope: !3099, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 207, column: 10, scope: !178)
!3161 = !DILocation(line: 51, column: 27, scope: !3099, inlinedAt: !3160)
!3162 = !DILocation(line: 53, column: 10, scope: !3108, inlinedAt: !3160)
!3163 = !DILocation(line: 192, column: 9, scope: !3155)
!3164 = !DILocation(line: 200, column: 69, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !177, line: 200, column: 11)
!3166 = distinct !DILexicalBlock(scope: !3142, file: !177, line: 195, column: 5)
!3167 = !DILocation(line: 201, column: 11, scope: !3165)
!3168 = !DILocation(line: 200, column: 11, scope: !3166)
!3169 = !DILocation(line: 202, column: 9, scope: !3165)
!3170 = !DILocation(line: 203, column: 14, scope: !3166)
!3171 = !DILocation(line: 203, column: 18, scope: !3166)
!3172 = !DILocation(line: 203, column: 9, scope: !3166)
!3173 = !DILocation(line: 53, column: 8, scope: !3108, inlinedAt: !3160)
!3174 = !DILocation(line: 57, column: 7, scope: !3112, inlinedAt: !3160)
!3175 = !DILocation(line: 58, column: 7, scope: !3112, inlinedAt: !3160)
!3176 = !DILocation(line: 61, column: 7, scope: !3099, inlinedAt: !3160)
!3177 = !DILocation(line: 62, column: 8, scope: !3116, inlinedAt: !3160)
!3178 = !DILocation(line: 62, column: 13, scope: !3116, inlinedAt: !3160)
!3179 = !DILocation(line: 62, column: 10, scope: !3116, inlinedAt: !3160)
!3180 = !DILocation(line: 63, column: 5, scope: !3116, inlinedAt: !3160)
!3181 = !DILocation(line: 0, scope: !3099, inlinedAt: !3160)
!3182 = !DILocation(line: 207, column: 3, scope: !178)
!3183 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !2156, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3184)
!3184 = !{!3185}
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3183, file: !177, line: 216, type: !105)
!3186 = !DILocation(line: 216, column: 20, scope: !3183)
!3187 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 218, column: 10, scope: !3183)
!3189 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3188)
!3190 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3188)
!3191 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3188)
!3192 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3188)
!3193 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3188)
!3194 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3188)
!3195 = !DILocation(line: 218, column: 3, scope: !3183)
!3196 = distinct !DISubprogram(name: "x2realloc", scope: !3060, file: !3060, line: 74, type: !3197, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!23, !23, !181}
!3199 = !{!3200, !3201}
!3200 = !DILocalVariable(name: "p", arg: 1, scope: !3196, file: !3060, line: 74, type: !23)
!3201 = !DILocalVariable(name: "pn", arg: 2, scope: !3196, file: !3060, line: 74, type: !181)
!3202 = !DILocation(line: 74, column: 18, scope: !3196)
!3203 = !DILocation(line: 74, column: 29, scope: !3196)
!3204 = !DILocation(line: 174, column: 19, scope: !178, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 76, column: 10, scope: !3196)
!3206 = !DILocation(line: 174, column: 30, scope: !178, inlinedAt: !3205)
!3207 = !DILocation(line: 174, column: 41, scope: !178, inlinedAt: !3205)
!3208 = !DILocation(line: 176, column: 14, scope: !178, inlinedAt: !3205)
!3209 = !DILocation(line: 176, column: 10, scope: !178, inlinedAt: !3205)
!3210 = !DILocation(line: 178, column: 9, scope: !3142, inlinedAt: !3205)
!3211 = !DILocation(line: 178, column: 7, scope: !178, inlinedAt: !3205)
!3212 = !DILocation(line: 180, column: 13, scope: !3145, inlinedAt: !3205)
!3213 = !DILocation(line: 180, column: 11, scope: !3146, inlinedAt: !3205)
!3214 = !DILocation(line: 191, column: 11, scope: !3155, inlinedAt: !3205)
!3215 = !DILocation(line: 191, column: 11, scope: !3146, inlinedAt: !3205)
!3216 = !DILocation(line: 206, column: 7, scope: !178, inlinedAt: !3205)
!3217 = !DILocation(line: 51, column: 17, scope: !3099, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 207, column: 10, scope: !178, inlinedAt: !3205)
!3219 = !DILocation(line: 51, column: 27, scope: !3099, inlinedAt: !3218)
!3220 = !DILocation(line: 53, column: 10, scope: !3108, inlinedAt: !3218)
!3221 = !DILocation(line: 192, column: 9, scope: !3155, inlinedAt: !3205)
!3222 = !DILocation(line: 201, column: 11, scope: !3165, inlinedAt: !3205)
!3223 = !DILocation(line: 200, column: 11, scope: !3166, inlinedAt: !3205)
!3224 = !DILocation(line: 202, column: 9, scope: !3165, inlinedAt: !3205)
!3225 = !DILocation(line: 203, column: 14, scope: !3166, inlinedAt: !3205)
!3226 = !DILocation(line: 203, column: 18, scope: !3166, inlinedAt: !3205)
!3227 = !DILocation(line: 203, column: 9, scope: !3166, inlinedAt: !3205)
!3228 = !DILocation(line: 53, column: 8, scope: !3108, inlinedAt: !3218)
!3229 = !DILocation(line: 57, column: 7, scope: !3112, inlinedAt: !3218)
!3230 = !DILocation(line: 58, column: 7, scope: !3112, inlinedAt: !3218)
!3231 = !DILocation(line: 61, column: 7, scope: !3099, inlinedAt: !3218)
!3232 = !DILocation(line: 62, column: 8, scope: !3116, inlinedAt: !3218)
!3233 = !DILocation(line: 62, column: 13, scope: !3116, inlinedAt: !3218)
!3234 = !DILocation(line: 62, column: 10, scope: !3116, inlinedAt: !3218)
!3235 = !DILocation(line: 63, column: 5, scope: !3116, inlinedAt: !3218)
!3236 = !DILocation(line: 0, scope: !3099, inlinedAt: !3218)
!3237 = !DILocation(line: 76, column: 3, scope: !3196)
!3238 = distinct !DISubprogram(name: "xzalloc", scope: !3060, file: !3060, line: 84, type: !3061, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3239)
!3239 = !{!3240}
!3240 = !DILocalVariable(name: "s", arg: 1, scope: !3238, file: !3060, line: 84, type: !105)
!3241 = !DILocation(line: 84, column: 17, scope: !3238)
!3242 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 86, column: 18, scope: !3238)
!3244 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3243)
!3245 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3243)
!3246 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3243)
!3247 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3243)
!3248 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3243)
!3249 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3243)
!3250 = !DILocation(line: 86, column: 10, scope: !3238)
!3251 = !DILocation(line: 86, column: 3, scope: !3238)
!3252 = distinct !DISubprogram(name: "xcalloc", scope: !3060, file: !3060, line: 93, type: !3046, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DILocalVariable(name: "n", arg: 1, scope: !3252, file: !3060, line: 93, type: !105)
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3252, file: !3060, line: 93, type: !105)
!3256 = !DILocalVariable(name: "p", scope: !3252, file: !3060, line: 95, type: !23)
!3257 = !DILocation(line: 93, column: 17, scope: !3252)
!3258 = !DILocation(line: 93, column: 27, scope: !3252)
!3259 = !DILocation(line: 100, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3252, file: !3060, line: 100, column: 7)
!3261 = !DILocation(line: 101, column: 7, scope: !3260)
!3262 = !DILocation(line: 101, column: 18, scope: !3260)
!3263 = !DILocation(line: 95, column: 9, scope: !3252)
!3264 = !DILocation(line: 101, column: 16, scope: !3260)
!3265 = !DILocation(line: 100, column: 7, scope: !3252)
!3266 = !DILocation(line: 102, column: 5, scope: !3260)
!3267 = !DILocation(line: 103, column: 3, scope: !3252)
!3268 = distinct !DISubprogram(name: "xmemdup", scope: !3060, file: !3060, line: 111, type: !3269, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3273)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!23, !3271, !105}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "p", arg: 1, scope: !3268, file: !3060, line: 111, type: !3271)
!3275 = !DILocalVariable(name: "s", arg: 2, scope: !3268, file: !3060, line: 111, type: !105)
!3276 = !DILocation(line: 111, column: 22, scope: !3268)
!3277 = !DILocation(line: 111, column: 32, scope: !3268)
!3278 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 113, column: 18, scope: !3268)
!3280 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3279)
!3281 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3279)
!3282 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3279)
!3283 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3279)
!3284 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3279)
!3285 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3279)
!3286 = !DILocation(line: 113, column: 10, scope: !3268)
!3287 = !DILocation(line: 113, column: 3, scope: !3268)
!3288 = distinct !DISubprogram(name: "xstrdup", scope: !3060, file: !3060, line: 119, type: !2361, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3289)
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "string", arg: 1, scope: !3288, file: !3060, line: 119, type: !39)
!3291 = !DILocation(line: 119, column: 22, scope: !3288)
!3292 = !DILocation(line: 121, column: 27, scope: !3288)
!3293 = !DILocation(line: 121, column: 43, scope: !3288)
!3294 = !DILocation(line: 111, column: 22, scope: !3268, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 121, column: 10, scope: !3288)
!3296 = !DILocation(line: 111, column: 32, scope: !3268, inlinedAt: !3295)
!3297 = !DILocation(line: 39, column: 17, scope: !3059, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 113, column: 18, scope: !3268, inlinedAt: !3295)
!3299 = !DILocation(line: 41, column: 13, scope: !3059, inlinedAt: !3298)
!3300 = !DILocation(line: 41, column: 9, scope: !3059, inlinedAt: !3298)
!3301 = !DILocation(line: 42, column: 8, scope: !3070, inlinedAt: !3298)
!3302 = !DILocation(line: 42, column: 15, scope: !3070, inlinedAt: !3298)
!3303 = !DILocation(line: 42, column: 10, scope: !3070, inlinedAt: !3298)
!3304 = !DILocation(line: 43, column: 5, scope: !3070, inlinedAt: !3298)
!3305 = !DILocation(line: 113, column: 10, scope: !3268, inlinedAt: !3295)
!3306 = !DILocation(line: 121, column: 3, scope: !3288)
!3307 = distinct !DISubprogram(name: "xalloc_die", scope: !3308, file: !3308, line: 32, type: !1038, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !190, retainedNodes: !54)
!3308 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3309 = !DILocation(line: 34, column: 10, scope: !3307)
!3310 = !DILocation(line: 34, column: 33, scope: !3307)
!3311 = !DILocation(line: 34, column: 3, scope: !3307)
!3312 = !DILocation(line: 40, column: 3, scope: !3307)
!3313 = distinct !DISubprogram(name: "rpl_calloc", scope: !3314, file: !3314, line: 42, type: !3046, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3315)
!3314 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3315 = !{!3316, !3317, !3318, !3319}
!3316 = !DILocalVariable(name: "n", arg: 1, scope: !3313, file: !3314, line: 42, type: !105)
!3317 = !DILocalVariable(name: "s", arg: 2, scope: !3313, file: !3314, line: 42, type: !105)
!3318 = !DILocalVariable(name: "result", scope: !3313, file: !3314, line: 44, type: !23)
!3319 = !DILocalVariable(name: "bytes", scope: !3320, file: !3314, line: 56, type: !105)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3314, line: 53, column: 5)
!3321 = distinct !DILexicalBlock(scope: !3313, file: !3314, line: 47, column: 7)
!3322 = !DILocation(line: 42, column: 20, scope: !3313)
!3323 = !DILocation(line: 42, column: 30, scope: !3313)
!3324 = !DILocation(line: 47, column: 9, scope: !3321)
!3325 = !DILocation(line: 47, column: 19, scope: !3321)
!3326 = !DILocation(line: 47, column: 14, scope: !3321)
!3327 = !DILocation(line: 56, column: 24, scope: !3320)
!3328 = !DILocation(line: 56, column: 14, scope: !3320)
!3329 = !DILocation(line: 57, column: 17, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3320, file: !3314, line: 57, column: 11)
!3331 = !DILocation(line: 57, column: 21, scope: !3330)
!3332 = !DILocation(line: 57, column: 11, scope: !3320)
!3333 = !DILocation(line: 59, column: 11, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3330, file: !3314, line: 58, column: 9)
!3335 = !DILocation(line: 59, column: 17, scope: !3334)
!3336 = !DILocation(line: 65, column: 12, scope: !3313)
!3337 = !DILocation(line: 44, column: 9, scope: !3313)
!3338 = !DILocation(line: 72, column: 3, scope: !3313)
!3339 = !DILocation(line: 0, scope: !3334)
!3340 = !DILocation(line: 73, column: 1, scope: !3313)
!3341 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3342, file: !3342, line: 385, type: !3343, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3357)
!3342 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!105, !3345, !39, !105, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1320, line: 6, baseType: !3348)
!3348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1322, line: 21, baseType: !3349)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1322, line: 13, size: 64, elements: !3350)
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3349, file: !1322, line: 15, baseType: !42, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3349, file: !1322, line: 20, baseType: !3353, size: 32, offset: 32)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3349, file: !1322, line: 16, size: 32, elements: !3354)
!3354 = !{!3355, !3356}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3353, file: !1322, line: 18, baseType: !7, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3353, file: !1322, line: 19, baseType: !1331, size: 32)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3358 = !DILocalVariable(name: "pwc", arg: 1, scope: !3341, file: !3342, line: 385, type: !3345)
!3359 = !DILocalVariable(name: "s", arg: 2, scope: !3341, file: !3342, line: 385, type: !39)
!3360 = !DILocalVariable(name: "n", arg: 3, scope: !3341, file: !3342, line: 385, type: !105)
!3361 = !DILocalVariable(name: "ps", arg: 4, scope: !3341, file: !3342, line: 385, type: !3346)
!3362 = !DILocalVariable(name: "ret", scope: !3341, file: !3342, line: 387, type: !105)
!3363 = !DILocalVariable(name: "wc", scope: !3341, file: !3342, line: 388, type: !1336)
!3364 = !DILocalVariable(name: "uc", scope: !3365, file: !3342, line: 449, type: !162)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3342, line: 448, column: 5)
!3366 = distinct !DILexicalBlock(scope: !3341, file: !3342, line: 447, column: 7)
!3367 = !DILocation(line: 385, column: 23, scope: !3341)
!3368 = !DILocation(line: 385, column: 40, scope: !3341)
!3369 = !DILocation(line: 385, column: 50, scope: !3341)
!3370 = !DILocation(line: 385, column: 64, scope: !3341)
!3371 = !DILocation(line: 388, column: 3, scope: !3341)
!3372 = !DILocation(line: 404, column: 9, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3341, file: !3342, line: 404, column: 7)
!3374 = !DILocation(line: 404, column: 7, scope: !3341)
!3375 = !DILocation(line: 439, column: 9, scope: !3341)
!3376 = !DILocation(line: 387, column: 10, scope: !3341)
!3377 = !DILocation(line: 447, column: 19, scope: !3366)
!3378 = !DILocation(line: 447, column: 31, scope: !3366)
!3379 = !DILocation(line: 447, column: 26, scope: !3366)
!3380 = !DILocation(line: 447, column: 41, scope: !3366)
!3381 = !DILocation(line: 447, column: 7, scope: !3341)
!3382 = !DILocation(line: 449, column: 26, scope: !3365)
!3383 = !DILocation(line: 449, column: 21, scope: !3365)
!3384 = !DILocation(line: 450, column: 14, scope: !3365)
!3385 = !DILocation(line: 450, column: 12, scope: !3365)
!3386 = !DILocation(line: 0, scope: !3365)
!3387 = !DILocation(line: 456, column: 1, scope: !3341)
!3388 = distinct !DISubprogram(name: "close_stream", scope: !3389, file: !3389, line: 56, type: !3390, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3426)
!3389 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!42, !3392}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !913, line: 7, baseType: !3394)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !915, line: 49, size: 1728, elements: !3395)
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3394, file: !915, line: 51, baseType: !42, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3394, file: !915, line: 54, baseType: !21, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3394, file: !915, line: 55, baseType: !21, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3394, file: !915, line: 56, baseType: !21, size: 64, offset: 192)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3394, file: !915, line: 57, baseType: !21, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3394, file: !915, line: 58, baseType: !21, size: 64, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3394, file: !915, line: 59, baseType: !21, size: 64, offset: 384)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3394, file: !915, line: 60, baseType: !21, size: 64, offset: 448)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3394, file: !915, line: 61, baseType: !21, size: 64, offset: 512)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3394, file: !915, line: 64, baseType: !21, size: 64, offset: 576)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3394, file: !915, line: 65, baseType: !21, size: 64, offset: 640)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3394, file: !915, line: 66, baseType: !21, size: 64, offset: 704)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3394, file: !915, line: 68, baseType: !930, size: 64, offset: 768)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3394, file: !915, line: 70, baseType: !3410, size: 64, offset: 832)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3394, file: !915, line: 72, baseType: !42, size: 32, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3394, file: !915, line: 73, baseType: !42, size: 32, offset: 928)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3394, file: !915, line: 74, baseType: !842, size: 64, offset: 960)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3394, file: !915, line: 77, baseType: !104, size: 16, offset: 1024)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3394, file: !915, line: 78, baseType: !939, size: 8, offset: 1040)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3394, file: !915, line: 79, baseType: !941, size: 8, offset: 1048)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3394, file: !915, line: 81, baseType: !945, size: 64, offset: 1088)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3394, file: !915, line: 89, baseType: !948, size: 64, offset: 1152)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3394, file: !915, line: 91, baseType: !950, size: 64, offset: 1216)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3394, file: !915, line: 92, baseType: !953, size: 64, offset: 1280)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3394, file: !915, line: 93, baseType: !3410, size: 64, offset: 1344)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3394, file: !915, line: 94, baseType: !23, size: 64, offset: 1408)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3394, file: !915, line: 95, baseType: !105, size: 64, offset: 1472)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3394, file: !915, line: 96, baseType: !42, size: 32, offset: 1536)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3394, file: !915, line: 98, baseType: !960, size: 160, offset: 1568)
!3426 = !{!3427, !3428, !3430, !3431}
!3427 = !DILocalVariable(name: "stream", arg: 1, scope: !3388, file: !3389, line: 56, type: !3392)
!3428 = !DILocalVariable(name: "some_pending", scope: !3388, file: !3389, line: 58, type: !3429)
!3429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!3430 = !DILocalVariable(name: "prev_fail", scope: !3388, file: !3389, line: 59, type: !3429)
!3431 = !DILocalVariable(name: "fclose_fail", scope: !3388, file: !3389, line: 60, type: !3429)
!3432 = !DILocation(line: 56, column: 21, scope: !3388)
!3433 = !DILocation(line: 58, column: 30, scope: !3388)
!3434 = !DILocalVariable(name: "__stream", arg: 1, scope: !3435, file: !1005, line: 135, type: !3392)
!3435 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1005, file: !1005, line: 135, type: !3390, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3436)
!3436 = !{!3434}
!3437 = !DILocation(line: 135, column: 1, scope: !3435, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 59, column: 27, scope: !3388)
!3439 = !DILocation(line: 137, column: 10, scope: !3435, inlinedAt: !3438)
!3440 = !{!1015, !717, i64 0}
!3441 = !DILocation(line: 59, column: 43, scope: !3388)
!3442 = !DILocation(line: 60, column: 29, scope: !3388)
!3443 = !DILocation(line: 60, column: 45, scope: !3388)
!3444 = !DILocation(line: 70, column: 17, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3388, file: !3389, line: 70, column: 7)
!3446 = !DILocation(line: 58, column: 50, scope: !3388)
!3447 = !DILocation(line: 70, column: 33, scope: !3445)
!3448 = !DILocation(line: 70, column: 53, scope: !3445)
!3449 = !DILocation(line: 70, column: 59, scope: !3445)
!3450 = !DILocation(line: 70, column: 7, scope: !3388)
!3451 = !DILocation(line: 72, column: 11, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3445, file: !3389, line: 71, column: 5)
!3453 = !DILocation(line: 73, column: 9, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3452, file: !3389, line: 72, column: 11)
!3455 = !DILocation(line: 73, column: 15, scope: !3454)
!3456 = !DILocation(line: 0, scope: !3388)
!3457 = !DILocation(line: 78, column: 1, scope: !3388)
!3458 = distinct !DISubprogram(name: "last_component", scope: !3459, file: !3459, line: 30, type: !2361, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !199, retainedNodes: !3460)
!3459 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3460 = !{!3461, !3462, !3463, !3464}
!3461 = !DILocalVariable(name: "name", arg: 1, scope: !3458, file: !3459, line: 30, type: !39)
!3462 = !DILocalVariable(name: "base", scope: !3458, file: !3459, line: 32, type: !39)
!3463 = !DILocalVariable(name: "p", scope: !3458, file: !3459, line: 33, type: !39)
!3464 = !DILocalVariable(name: "saw_slash", scope: !3458, file: !3459, line: 34, type: !28)
!3465 = !DILocation(line: 30, column: 29, scope: !3458)
!3466 = !DILocation(line: 32, column: 15, scope: !3458)
!3467 = !DILocation(line: 34, column: 8, scope: !3458)
!3468 = !DILocation(line: 36, column: 3, scope: !3458)
!3469 = !DILocation(line: 0, scope: !3458)
!3470 = !DILocation(line: 36, column: 10, scope: !3458)
!3471 = !DILocation(line: 37, column: 9, scope: !3458)
!3472 = distinct !{!3472, !3468, !3471}
!3473 = !DILocation(line: 39, column: 18, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !3459, line: 39, column: 3)
!3475 = distinct !DILexicalBlock(scope: !3458, file: !3459, line: 39, column: 3)
!3476 = !DILocation(line: 0, scope: !3474)
!3477 = !DILocation(line: 0, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3459, line: 41, column: 11)
!3479 = distinct !DILexicalBlock(scope: !3474, file: !3459, line: 40, column: 5)
!3480 = !DILocation(line: 33, column: 15, scope: !3458)
!3481 = !DILocation(line: 39, column: 3, scope: !3475)
!3482 = !DILocation(line: 43, column: 16, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3478, file: !3459, line: 43, column: 16)
!3484 = !DILocation(line: 43, column: 16, scope: !3478)
!3485 = !DILocation(line: 39, column: 23, scope: !3474)
!3486 = !DILocation(line: 39, column: 3, scope: !3474)
!3487 = distinct !{!3487, !3481, !3488}
!3488 = !DILocation(line: 48, column: 5, scope: !3475)
!3489 = !DILocation(line: 50, column: 3, scope: !3458)
!3490 = distinct !DISubprogram(name: "base_len", scope: !3459, file: !3459, line: 58, type: !3491, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !199, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!105, !39}
!3493 = !{!3494, !3495, !3496}
!3494 = !DILocalVariable(name: "name", arg: 1, scope: !3490, file: !3459, line: 58, type: !39)
!3495 = !DILocalVariable(name: "len", scope: !3490, file: !3459, line: 60, type: !105)
!3496 = !DILocalVariable(name: "prefix_len", scope: !3490, file: !3459, line: 61, type: !105)
!3497 = !DILocation(line: 58, column: 23, scope: !3490)
!3498 = !DILocation(line: 61, column: 10, scope: !3490)
!3499 = !DILocation(line: 63, column: 14, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3490, file: !3459, line: 63, column: 3)
!3501 = !DILocation(line: 60, column: 10, scope: !3490)
!3502 = !DILocation(line: 63, column: 8, scope: !3500)
!3503 = !DILocation(line: 0, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !3459, line: 63, column: 3)
!3505 = !DILocation(line: 63, column: 32, scope: !3504)
!3506 = !DILocation(line: 63, column: 38, scope: !3504)
!3507 = !DILocation(line: 63, column: 41, scope: !3504)
!3508 = !DILocation(line: 63, column: 3, scope: !3500)
!3509 = distinct !{!3509, !3508, !3510}
!3510 = !DILocation(line: 64, column: 5, scope: !3500)
!3511 = !DILocation(line: 74, column: 3, scope: !3490)
!3512 = distinct !DISubprogram(name: "hard_locale", scope: !3513, file: !3513, line: 38, type: !3514, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3516)
!3513 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!28, !42}
!3516 = !{!3517, !3518, !3519}
!3517 = !DILocalVariable(name: "category", arg: 1, scope: !3512, file: !3513, line: 38, type: !42)
!3518 = !DILocalVariable(name: "hard", scope: !3512, file: !3513, line: 40, type: !28)
!3519 = !DILocalVariable(name: "p", scope: !3512, file: !3513, line: 41, type: !39)
!3520 = !DILocation(line: 38, column: 18, scope: !3512)
!3521 = !DILocation(line: 40, column: 8, scope: !3512)
!3522 = !DILocation(line: 41, column: 19, scope: !3512)
!3523 = !DILocation(line: 41, column: 15, scope: !3512)
!3524 = !DILocation(line: 43, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3512, file: !3513, line: 43, column: 7)
!3526 = !DILocation(line: 43, column: 7, scope: !3512)
!3527 = !DILocation(line: 47, column: 15, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3513, line: 47, column: 15)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !3513, line: 46, column: 9)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !3513, line: 45, column: 11)
!3531 = distinct !DILexicalBlock(scope: !3525, file: !3513, line: 44, column: 5)
!3532 = !DILocation(line: 47, column: 31, scope: !3528)
!3533 = !DILocation(line: 47, column: 36, scope: !3528)
!3534 = !DILocation(line: 47, column: 39, scope: !3528)
!3535 = !DILocation(line: 47, column: 59, scope: !3528)
!3536 = !DILocation(line: 47, column: 15, scope: !3529)
!3537 = !DILocation(line: 48, column: 13, scope: !3528)
!3538 = !DILocation(line: 71, column: 3, scope: !3512)
!3539 = distinct !DISubprogram(name: "locale_charset", scope: !3540, file: !3540, line: 687, type: !3541, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !204, retainedNodes: !3543)
!3540 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!39}
!3543 = !{!3544}
!3544 = !DILocalVariable(name: "codeset", scope: !3539, file: !3540, line: 689, type: !39)
!3545 = !DILocation(line: 696, column: 13, scope: !3539)
!3546 = !DILocation(line: 689, column: 15, scope: !3539)
!3547 = !DILocation(line: 754, column: 15, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3539, file: !3540, line: 754, column: 7)
!3549 = !DILocation(line: 754, column: 7, scope: !3539)
!3550 = !DILocation(line: 907, column: 13, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !3540, line: 907, column: 13)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3540, line: 897, column: 7)
!3553 = distinct !DILexicalBlock(scope: !3539, file: !3540, line: 856, column: 3)
!3554 = !DILocation(line: 907, column: 24, scope: !3551)
!3555 = !DILocation(line: 907, column: 13, scope: !3552)
!3556 = !DILocation(line: 995, column: 3, scope: !3539)
!3557 = distinct !DISubprogram(name: "rpl_fclose", scope: !3558, file: !3558, line: 58, type: !3559, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !593, retainedNodes: !3595)
!3558 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!42, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !913, line: 7, baseType: !3563)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !915, line: 49, size: 1728, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3563, file: !915, line: 51, baseType: !42, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3563, file: !915, line: 54, baseType: !21, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3563, file: !915, line: 55, baseType: !21, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3563, file: !915, line: 56, baseType: !21, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3563, file: !915, line: 57, baseType: !21, size: 64, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3563, file: !915, line: 58, baseType: !21, size: 64, offset: 320)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3563, file: !915, line: 59, baseType: !21, size: 64, offset: 384)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3563, file: !915, line: 60, baseType: !21, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3563, file: !915, line: 61, baseType: !21, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3563, file: !915, line: 64, baseType: !21, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3563, file: !915, line: 65, baseType: !21, size: 64, offset: 640)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3563, file: !915, line: 66, baseType: !21, size: 64, offset: 704)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3563, file: !915, line: 68, baseType: !930, size: 64, offset: 768)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3563, file: !915, line: 70, baseType: !3579, size: 64, offset: 832)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3563, file: !915, line: 72, baseType: !42, size: 32, offset: 896)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3563, file: !915, line: 73, baseType: !42, size: 32, offset: 928)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3563, file: !915, line: 74, baseType: !842, size: 64, offset: 960)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3563, file: !915, line: 77, baseType: !104, size: 16, offset: 1024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3563, file: !915, line: 78, baseType: !939, size: 8, offset: 1040)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3563, file: !915, line: 79, baseType: !941, size: 8, offset: 1048)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3563, file: !915, line: 81, baseType: !945, size: 64, offset: 1088)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3563, file: !915, line: 89, baseType: !948, size: 64, offset: 1152)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3563, file: !915, line: 91, baseType: !950, size: 64, offset: 1216)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3563, file: !915, line: 92, baseType: !953, size: 64, offset: 1280)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3563, file: !915, line: 93, baseType: !3579, size: 64, offset: 1344)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3563, file: !915, line: 94, baseType: !23, size: 64, offset: 1408)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3563, file: !915, line: 95, baseType: !105, size: 64, offset: 1472)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3563, file: !915, line: 96, baseType: !42, size: 32, offset: 1536)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3563, file: !915, line: 98, baseType: !960, size: 160, offset: 1568)
!3595 = !{!3596, !3597, !3598, !3599}
!3596 = !DILocalVariable(name: "fp", arg: 1, scope: !3557, file: !3558, line: 58, type: !3561)
!3597 = !DILocalVariable(name: "saved_errno", scope: !3557, file: !3558, line: 60, type: !42)
!3598 = !DILocalVariable(name: "fd", scope: !3557, file: !3558, line: 61, type: !42)
!3599 = !DILocalVariable(name: "result", scope: !3557, file: !3558, line: 62, type: !42)
!3600 = !DILocation(line: 58, column: 19, scope: !3557)
!3601 = !DILocation(line: 60, column: 7, scope: !3557)
!3602 = !DILocation(line: 62, column: 7, scope: !3557)
!3603 = !DILocation(line: 65, column: 8, scope: !3557)
!3604 = !DILocation(line: 61, column: 7, scope: !3557)
!3605 = !DILocation(line: 66, column: 10, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3557, file: !3558, line: 66, column: 7)
!3607 = !DILocation(line: 66, column: 7, scope: !3557)
!3608 = !DILocation(line: 67, column: 12, scope: !3606)
!3609 = !DILocation(line: 67, column: 5, scope: !3606)
!3610 = !DILocation(line: 72, column: 9, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3557, file: !3558, line: 72, column: 7)
!3612 = !DILocation(line: 72, column: 23, scope: !3611)
!3613 = !DILocation(line: 72, column: 33, scope: !3611)
!3614 = !DILocation(line: 72, column: 26, scope: !3611)
!3615 = !DILocation(line: 72, column: 59, scope: !3611)
!3616 = !DILocation(line: 73, column: 7, scope: !3611)
!3617 = !DILocation(line: 73, column: 10, scope: !3611)
!3618 = !DILocation(line: 72, column: 7, scope: !3557)
!3619 = !DILocation(line: 100, column: 12, scope: !3557)
!3620 = !DILocation(line: 105, column: 7, scope: !3557)
!3621 = !DILocation(line: 74, column: 19, scope: !3611)
!3622 = !DILocation(line: 105, column: 19, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3557, file: !3558, line: 105, column: 7)
!3624 = !DILocation(line: 107, column: 13, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3623, file: !3558, line: 106, column: 5)
!3626 = !DILocation(line: 109, column: 5, scope: !3625)
!3627 = !DILocation(line: 0, scope: !3557)
!3628 = !DILocation(line: 112, column: 1, scope: !3557)
!3629 = distinct !DISubprogram(name: "rpl_fflush", scope: !3630, file: !3630, line: 129, type: !3631, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !595, retainedNodes: !3667)
!3630 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!42, !3633}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !913, line: 7, baseType: !3635)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !915, line: 49, size: 1728, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3635, file: !915, line: 51, baseType: !42, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3635, file: !915, line: 54, baseType: !21, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3635, file: !915, line: 55, baseType: !21, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3635, file: !915, line: 56, baseType: !21, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3635, file: !915, line: 57, baseType: !21, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3635, file: !915, line: 58, baseType: !21, size: 64, offset: 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3635, file: !915, line: 59, baseType: !21, size: 64, offset: 384)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3635, file: !915, line: 60, baseType: !21, size: 64, offset: 448)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3635, file: !915, line: 61, baseType: !21, size: 64, offset: 512)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3635, file: !915, line: 64, baseType: !21, size: 64, offset: 576)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3635, file: !915, line: 65, baseType: !21, size: 64, offset: 640)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3635, file: !915, line: 66, baseType: !21, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3635, file: !915, line: 68, baseType: !930, size: 64, offset: 768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3635, file: !915, line: 70, baseType: !3651, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3635, file: !915, line: 72, baseType: !42, size: 32, offset: 896)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3635, file: !915, line: 73, baseType: !42, size: 32, offset: 928)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3635, file: !915, line: 74, baseType: !842, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3635, file: !915, line: 77, baseType: !104, size: 16, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3635, file: !915, line: 78, baseType: !939, size: 8, offset: 1040)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3635, file: !915, line: 79, baseType: !941, size: 8, offset: 1048)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3635, file: !915, line: 81, baseType: !945, size: 64, offset: 1088)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3635, file: !915, line: 89, baseType: !948, size: 64, offset: 1152)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3635, file: !915, line: 91, baseType: !950, size: 64, offset: 1216)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3635, file: !915, line: 92, baseType: !953, size: 64, offset: 1280)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3635, file: !915, line: 93, baseType: !3651, size: 64, offset: 1344)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3635, file: !915, line: 94, baseType: !23, size: 64, offset: 1408)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3635, file: !915, line: 95, baseType: !105, size: 64, offset: 1472)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3635, file: !915, line: 96, baseType: !42, size: 32, offset: 1536)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3635, file: !915, line: 98, baseType: !960, size: 160, offset: 1568)
!3667 = !{!3668}
!3668 = !DILocalVariable(name: "stream", arg: 1, scope: !3629, file: !3630, line: 129, type: !3633)
!3669 = !DILocation(line: 129, column: 19, scope: !3629)
!3670 = !DILocation(line: 150, column: 14, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3629, file: !3630, line: 150, column: 7)
!3672 = !DILocation(line: 150, column: 22, scope: !3671)
!3673 = !DILocation(line: 150, column: 27, scope: !3671)
!3674 = !DILocation(line: 150, column: 7, scope: !3629)
!3675 = !DILocation(line: 151, column: 12, scope: !3671)
!3676 = !DILocation(line: 151, column: 5, scope: !3671)
!3677 = !DILocalVariable(name: "fp", arg: 1, scope: !3678, file: !3630, line: 41, type: !3633)
!3678 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3630, file: !3630, line: 41, type: !3679, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !595, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !3633}
!3681 = !{!3677}
!3682 = !DILocation(line: 41, column: 48, scope: !3678, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 156, column: 3, scope: !3629)
!3684 = !DILocation(line: 43, column: 11, scope: !3685, inlinedAt: !3683)
!3685 = distinct !DILexicalBlock(scope: !3678, file: !3630, line: 43, column: 7)
!3686 = !DILocation(line: 43, column: 18, scope: !3685, inlinedAt: !3683)
!3687 = !DILocation(line: 43, column: 7, scope: !3678, inlinedAt: !3683)
!3688 = !DILocation(line: 45, column: 5, scope: !3685, inlinedAt: !3683)
!3689 = !DILocation(line: 158, column: 10, scope: !3629)
!3690 = !DILocation(line: 158, column: 3, scope: !3629)
!3691 = !DILocation(line: 0, scope: !3629)
!3692 = !DILocation(line: 232, column: 1, scope: !3629)
!3693 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3694, file: !3694, line: 28, type: !3695, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !597, retainedNodes: !3732)
!3694 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/testdata/coreutils/coreutils-8.30")
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!42, !3697, !3731, !42}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !913, line: 7, baseType: !3699)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !915, line: 49, size: 1728, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3699, file: !915, line: 51, baseType: !42, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3699, file: !915, line: 54, baseType: !21, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3699, file: !915, line: 55, baseType: !21, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3699, file: !915, line: 56, baseType: !21, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3699, file: !915, line: 57, baseType: !21, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3699, file: !915, line: 58, baseType: !21, size: 64, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3699, file: !915, line: 59, baseType: !21, size: 64, offset: 384)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3699, file: !915, line: 60, baseType: !21, size: 64, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3699, file: !915, line: 61, baseType: !21, size: 64, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3699, file: !915, line: 64, baseType: !21, size: 64, offset: 576)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3699, file: !915, line: 65, baseType: !21, size: 64, offset: 640)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3699, file: !915, line: 66, baseType: !21, size: 64, offset: 704)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3699, file: !915, line: 68, baseType: !930, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3699, file: !915, line: 70, baseType: !3715, size: 64, offset: 832)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3699, file: !915, line: 72, baseType: !42, size: 32, offset: 896)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3699, file: !915, line: 73, baseType: !42, size: 32, offset: 928)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3699, file: !915, line: 74, baseType: !842, size: 64, offset: 960)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3699, file: !915, line: 77, baseType: !104, size: 16, offset: 1024)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3699, file: !915, line: 78, baseType: !939, size: 8, offset: 1040)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3699, file: !915, line: 79, baseType: !941, size: 8, offset: 1048)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3699, file: !915, line: 81, baseType: !945, size: 64, offset: 1088)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3699, file: !915, line: 89, baseType: !948, size: 64, offset: 1152)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3699, file: !915, line: 91, baseType: !950, size: 64, offset: 1216)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3699, file: !915, line: 92, baseType: !953, size: 64, offset: 1280)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3699, file: !915, line: 93, baseType: !3715, size: 64, offset: 1344)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3699, file: !915, line: 94, baseType: !23, size: 64, offset: 1408)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3699, file: !915, line: 95, baseType: !105, size: 64, offset: 1472)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3699, file: !915, line: 96, baseType: !42, size: 32, offset: 1536)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3699, file: !915, line: 98, baseType: !960, size: 160, offset: 1568)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !968, line: 63, baseType: !842)
!3732 = !{!3733, !3734, !3735, !3736}
!3733 = !DILocalVariable(name: "fp", arg: 1, scope: !3693, file: !3694, line: 28, type: !3697)
!3734 = !DILocalVariable(name: "offset", arg: 2, scope: !3693, file: !3694, line: 28, type: !3731)
!3735 = !DILocalVariable(name: "whence", arg: 3, scope: !3693, file: !3694, line: 28, type: !42)
!3736 = !DILocalVariable(name: "pos", scope: !3737, file: !3694, line: 117, type: !3731)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !3694, line: 113, column: 5)
!3738 = distinct !DILexicalBlock(scope: !3693, file: !3694, line: 52, column: 7)
!3739 = !DILocation(line: 28, column: 15, scope: !3693)
!3740 = !DILocation(line: 28, column: 25, scope: !3693)
!3741 = !DILocation(line: 28, column: 37, scope: !3693)
!3742 = !DILocation(line: 52, column: 11, scope: !3738)
!3743 = !{!1015, !637, i64 16}
!3744 = !DILocation(line: 52, column: 31, scope: !3738)
!3745 = !{!1015, !637, i64 8}
!3746 = !DILocation(line: 52, column: 24, scope: !3738)
!3747 = !DILocation(line: 53, column: 7, scope: !3738)
!3748 = !DILocation(line: 53, column: 14, scope: !3738)
!3749 = !DILocation(line: 53, column: 35, scope: !3738)
!3750 = !{!1015, !637, i64 32}
!3751 = !DILocation(line: 53, column: 28, scope: !3738)
!3752 = !DILocation(line: 54, column: 7, scope: !3738)
!3753 = !DILocation(line: 54, column: 14, scope: !3738)
!3754 = !{!1015, !637, i64 72}
!3755 = !DILocation(line: 54, column: 28, scope: !3738)
!3756 = !DILocation(line: 52, column: 7, scope: !3693)
!3757 = !DILocation(line: 117, column: 26, scope: !3737)
!3758 = !DILocation(line: 117, column: 19, scope: !3737)
!3759 = !DILocation(line: 117, column: 13, scope: !3737)
!3760 = !DILocation(line: 118, column: 15, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3737, file: !3694, line: 118, column: 11)
!3762 = !DILocation(line: 118, column: 11, scope: !3737)
!3763 = !DILocation(line: 129, column: 11, scope: !3737)
!3764 = !DILocation(line: 129, column: 18, scope: !3737)
!3765 = !DILocation(line: 130, column: 11, scope: !3737)
!3766 = !DILocation(line: 130, column: 19, scope: !3737)
!3767 = !{!1015, !1016, i64 144}
!3768 = !DILocation(line: 161, column: 7, scope: !3737)
!3769 = !DILocation(line: 163, column: 10, scope: !3693)
!3770 = !DILocation(line: 163, column: 3, scope: !3693)
!3771 = !DILocation(line: 0, scope: !3693)
!3772 = !DILocation(line: 164, column: 1, scope: !3693)
