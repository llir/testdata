; ModuleID = 'coreutils-8.32/src/rmdir.bc'
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
@.str.6 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.27 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
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
@.str.41 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !56
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !61
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !63
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !69
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !75
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !106
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !112
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !124
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !131
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !138
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !126
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !140
@.str.79 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.81 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.82 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.83 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.84 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.85 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.86 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.87 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.88 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.89 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.90 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.91 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.92 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.93 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.94 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.97 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.100 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.101 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.102 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.103 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !146
@.str.1.114 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !601 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !605, metadata !DIExpression()), !dbg !606
  %3 = icmp eq i32 %0, 0, !dbg !607
  br i1 %3, label %9, label %4, !dbg !609

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !610, !tbaa !612
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !610
  %7 = load i8*, i8** @program_name, align 8, !dbg !610, !tbaa !612
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !610
  br label %61, !dbg !610

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !616
  %11 = load i8*, i8** @program_name, align 8, !dbg !616, !tbaa !612
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !616
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !618
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !612
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !618
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([200 x i8], [200 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !619
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !612
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !619
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !620
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !612
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !620
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #25, !dbg !621
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !612
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !622, metadata !DIExpression()) #25, !dbg !639
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !641
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #25, !dbg !641
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !628, metadata !DIExpression()) #25, !dbg !642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), metadata !635, metadata !DIExpression()) #25, !dbg !639
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !636, metadata !DIExpression()) #25, !dbg !639
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !643
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !636, metadata !DIExpression()) #25, !dbg !639
  br label %27, !dbg !644

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !636, metadata !DIExpression()) #25, !dbg !639
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #26, !dbg !645
  %31 = icmp eq i32 %30, 0, !dbg !645
  br i1 %31, label %37, label %32, !dbg !644

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !646
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !636, metadata !DIExpression()) #25, !dbg !639
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !647
  %35 = load i8*, i8** %34, align 8, !dbg !647, !tbaa !648
  %36 = icmp eq i8* %35, null, !dbg !650
  br i1 %36, label %37, label %27, !dbg !651, !llvm.loop !652

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !654
  %40 = load i8*, i8** %39, align 8, !dbg !654, !tbaa !656
  %41 = icmp eq i8* %40, null, !dbg !657
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !658
  call void @llvm.dbg.value(metadata i8* %42, metadata !635, metadata !DIExpression()) #25, !dbg !639
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 5) #25, !dbg !659
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0)) #25, !dbg !659
  %45 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !660
  call void @llvm.dbg.value(metadata i8* %45, metadata !638, metadata !DIExpression()) #25, !dbg !639
  %46 = icmp eq i8* %45, null, !dbg !661
  br i1 %46, label %54, label %47, !dbg !663

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i64 3) #26, !dbg !664
  %49 = icmp eq i32 %48, 0, !dbg !664
  br i1 %49, label %54, label %50, !dbg !665

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.27, i64 0, i64 0), i32 5) #25, !dbg !666
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666, !tbaa !612
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #25, !dbg !666
  br label %54, !dbg !668

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0), i32 5) #25, !dbg !669
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #25, !dbg !669
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !670
  %58 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), !dbg !670
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !670
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #25, !dbg !670
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #25, !dbg !671
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #27, !dbg !672
  unreachable, !dbg !672
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !673 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !677 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !733 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !742, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata i8** %1, metadata !743, metadata !DIExpression()), !dbg !753
  call void @llvm.dbg.value(metadata i8 1, metadata !744, metadata !DIExpression()), !dbg !753
  %3 = load i8*, i8** %1, align 8, !dbg !754, !tbaa !612
  tail call void @set_program_name(i8* %3) #25, !dbg !755
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !756
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #25, !dbg !757
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !758
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !759
  store i1 false, i1* @remove_empty_parents, align 1, !dbg !760
  br label %8, !dbg !761

8:                                                ; preds = %17, %2
  %9 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #25, !dbg !762
  call void @llvm.dbg.value(metadata i32 %9, metadata !745, metadata !DIExpression()), !dbg !753
  switch i32 %9, label %16 [
    i32 -1, label %19
    i32 112, label %17
    i32 128, label %10
    i32 118, label %11
    i32 -130, label %12
    i32 -131, label %13
  ], !dbg !761

10:                                               ; preds = %8
  br label %17, !dbg !763

11:                                               ; preds = %8
  br label %17, !dbg !766

12:                                               ; preds = %8
  tail call void @usage(i32 0) #28, !dbg !767
  unreachable, !dbg !767

13:                                               ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !612
  %15 = load i8*, i8** @Version, align 8, !dbg !768, !tbaa !612
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* null) #25, !dbg !768
  tail call void @exit(i32 0) #27, !dbg !768
  unreachable, !dbg !768

16:                                               ; preds = %8
  tail call void @usage(i32 1) #28, !dbg !769
  unreachable, !dbg !769

17:                                               ; preds = %8, %11, %10
  %18 = phi i1* [ @verbose, %11 ], [ @ignore_fail_on_non_empty, %10 ], [ @remove_empty_parents, %8 ]
  store i1 true, i1* %18, align 1, !dbg !770
  br label %8, !dbg !761, !llvm.loop !771

19:                                               ; preds = %8
  %20 = load i32, i32* @optind, align 4, !dbg !773, !tbaa !775
  %21 = icmp eq i32 %20, %0, !dbg !777
  br i1 %21, label %24, label %22, !dbg !778

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8 1, metadata !744, metadata !DIExpression()), !dbg !753
  %23 = icmp slt i32 %20, %0, !dbg !779
  br i1 %23, label %26, label %89, !dbg !780

24:                                               ; preds = %19
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 5) #25, !dbg !781
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25) #25, !dbg !783
  tail call void @usage(i32 1) #28, !dbg !784
  unreachable, !dbg !784

26:                                               ; preds = %22, %84
  %27 = phi i32 [ %87, %84 ], [ %20, %22 ]
  %28 = phi i8 [ %85, %84 ], [ 1, %22 ]
  call void @llvm.dbg.value(metadata i8 %28, metadata !744, metadata !DIExpression()), !dbg !753
  %29 = sext i32 %27 to i64, !dbg !785
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !785
  %31 = load i8*, i8** %30, align 8, !dbg !785, !tbaa !612
  call void @llvm.dbg.value(metadata i8* %31, metadata !746, metadata !DIExpression()), !dbg !786
  %32 = load i1, i1* @verbose, align 1, !dbg !787
  br i1 %32, label %33, label %37, !dbg !789

33:                                               ; preds = %26
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !790, !tbaa !612
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #25, !dbg !791
  %36 = tail call i8* @quotearg_style(i32 4, i8* %31) #25, !dbg !792
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %34, i8* %35, i8* %36) #25, !dbg !793
  br label %37, !dbg !793

37:                                               ; preds = %33, %26
  %38 = tail call i32 @rmdir(i8* %31) #25, !dbg !794
  %39 = icmp eq i32 %38, 0, !dbg !795
  br i1 %39, label %47, label %40, !dbg !796

40:                                               ; preds = %37
  %41 = tail call i32* @__errno_location() #29, !dbg !797
  %42 = load i32, i32* %41, align 4, !dbg !797, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %42, metadata !750, metadata !DIExpression()), !dbg !798
  %43 = tail call fastcc zeroext i1 @ignorable_failure(i32 %42, i8* %31), !dbg !799
  br i1 %43, label %84, label %44, !dbg !801

44:                                               ; preds = %40
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 5) #25, !dbg !802
  %46 = tail call i8* @quotearg_style(i32 4, i8* %31) #25, !dbg !803
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %42, i8* %45, i8* %46) #25, !dbg !804
  call void @llvm.dbg.value(metadata i8 0, metadata !744, metadata !DIExpression()), !dbg !753
  br label %84, !dbg !805

47:                                               ; preds = %37
  %48 = load i1, i1* @remove_empty_parents, align 1, !dbg !806
  br i1 %48, label %49, label %84, !dbg !808

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8* %31, metadata !809, metadata !DIExpression()) #25, !dbg !818
  call void @llvm.dbg.value(metadata i8 1, metadata !815, metadata !DIExpression()) #25, !dbg !818
  %50 = tail call zeroext i1 @strip_trailing_slashes(i8* %31) #25, !dbg !821
  br label %51, !dbg !822

51:                                               ; preds = %71, %49
  call void @llvm.dbg.value(metadata i8 1, metadata !815, metadata !DIExpression()) #25, !dbg !818
  %52 = tail call i8* @strrchr(i8* nonnull dereferenceable(1) %31, i32 47) #26, !dbg !823
  call void @llvm.dbg.value(metadata i8* %52, metadata !814, metadata !DIExpression()) #25, !dbg !818
  %53 = icmp eq i8* %52, null, !dbg !824
  br i1 %53, label %81, label %54, !dbg !826

54:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !814, metadata !DIExpression()) #25, !dbg !818
  %55 = icmp ugt i8* %52, %31, !dbg !827
  br i1 %55, label %56, label %63, !dbg !828

56:                                               ; preds = %54, %60
  %57 = phi i8* [ %61, %60 ], [ %52, %54 ]
  call void @llvm.dbg.value(metadata i8* %57, metadata !814, metadata !DIExpression()) #25, !dbg !818
  %58 = load i8, i8* %57, align 1, !dbg !829, !tbaa !830
  %59 = icmp eq i8 %58, 47, !dbg !831
  br i1 %59, label %60, label %63, !dbg !832

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, i8* %57, i64 -1, !dbg !833
  call void @llvm.dbg.value(metadata i8* %61, metadata !814, metadata !DIExpression()) #25, !dbg !818
  %62 = icmp ugt i8* %61, %31, !dbg !827
  br i1 %62, label %56, label %63, !dbg !828, !llvm.loop !834

63:                                               ; preds = %60, %56, %54
  %64 = phi i8* [ %52, %54 ], [ %57, %56 ], [ %61, %60 ], !dbg !836
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !837
  store i8 0, i8* %65, align 1, !dbg !838, !tbaa !830
  %66 = load i1, i1* @verbose, align 1, !dbg !839
  br i1 %66, label %67, label %71, !dbg !841

67:                                               ; preds = %63
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !842, !tbaa !612
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 5) #25, !dbg !843
  %70 = tail call i8* @quotearg_style(i32 4, i8* %31) #25, !dbg !844
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* %68, i8* %69, i8* %70) #25, !dbg !845
  br label %71, !dbg !845

71:                                               ; preds = %67, %63
  %72 = tail call i32 @rmdir(i8* %31) #25, !dbg !846
  %73 = icmp eq i32 %72, 0, !dbg !847
  call void @llvm.dbg.value(metadata i1 %73, metadata !815, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !818
  %74 = tail call i32* @__errno_location() #29, !dbg !848
  %75 = load i32, i32* %74, align 4, !dbg !848, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %75, metadata !816, metadata !DIExpression()) #25, !dbg !836
  br i1 %73, label %51, label %76, !dbg !849

76:                                               ; preds = %71
  %77 = tail call fastcc zeroext i1 @ignorable_failure(i32 %75, i8* %31) #25, !dbg !850
  br i1 %77, label %81, label %78, !dbg !854

78:                                               ; preds = %76
  %79 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i32 5) #25, !dbg !855
  %80 = tail call i8* @quotearg_style(i32 4, i8* %31) #25, !dbg !857
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %75, i8* %79, i8* %80) #25, !dbg !858
  br label %81

81:                                               ; preds = %51, %76, %78
  %82 = phi i8 [ 1, %76 ], [ 0, %78 ], [ 1, %51 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !815, metadata !DIExpression()) #25, !dbg !818
  %83 = and i8 %82, %28, !dbg !859
  call void @llvm.dbg.value(metadata i8 %83, metadata !744, metadata !DIExpression()), !dbg !753
  br label %84, !dbg !860

84:                                               ; preds = %44, %40, %81, %47
  %85 = phi i8 [ %83, %81 ], [ %28, %47 ], [ 0, %44 ], [ %28, %40 ], !dbg !861
  call void @llvm.dbg.value(metadata i8 %85, metadata !744, metadata !DIExpression()), !dbg !753
  %86 = load i32, i32* @optind, align 4, !dbg !862, !tbaa !775
  %87 = add nsw i32 %86, 1, !dbg !862
  store i32 %87, i32* @optind, align 4, !dbg !862, !tbaa !775
  %88 = icmp slt i32 %87, %0, !dbg !779
  br i1 %88, label %26, label %89, !dbg !780, !llvm.loop !863

89:                                               ; preds = %84, %22
  %90 = phi i8 [ 1, %22 ], [ %85, %84 ], !dbg !861
  %91 = and i8 %90, 1, !dbg !865
  %92 = xor i8 %91, 1, !dbg !865
  %93 = zext i8 %92 to i32, !dbg !865
  ret i32 %93, !dbg !866
}

; Function Attrs: nounwind
declare !dbg !867 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !870 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !873 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !880 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !886 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !890 noundef i32 @rmdir(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @ignorable_failure(i32 %0, i8* %1) unnamed_addr #8 !dbg !894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !898, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i8* %1, metadata !899, metadata !DIExpression()), !dbg !900
  %3 = load i1, i1* @ignore_fail_on_non_empty, align 1, !dbg !901
  br i1 %3, label %4, label %44, !dbg !902

4:                                                ; preds = %2
  switch i32 %0, label %43 [
    i32 39, label %44
    i32 17, label %44
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !903

5:                                                ; preds = %4, %4, %4, %4
  call void @llvm.dbg.value(metadata i32 -100, metadata !904, metadata !DIExpression()) #25, !dbg !927
  call void @llvm.dbg.value(metadata i8* %1, metadata !907, metadata !DIExpression()) #25, !dbg !927
  %6 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* %1, i32 198912) #25, !dbg !929
  call void @llvm.dbg.value(metadata i32 %6, metadata !926, metadata !DIExpression()) #25, !dbg !927
  %7 = icmp slt i32 %6, 0, !dbg !930
  br i1 %7, label %39, label %8, !dbg !932

8:                                                ; preds = %5
  %9 = tail call %struct.__dirstream* @fdopendir(i32 %6) #25, !dbg !933
  call void @llvm.dbg.value(metadata %struct.__dirstream* %9, metadata !908, metadata !DIExpression()) #25, !dbg !927
  %10 = icmp eq %struct.__dirstream* %9, null, !dbg !934
  br i1 %10, label %11, label %13, !dbg !936

11:                                               ; preds = %8
  %12 = tail call i32 @close(i32 %6) #25, !dbg !937
  br label %39, !dbg !939

13:                                               ; preds = %8
  %14 = tail call i32* @__errno_location() #29, !dbg !940
  store i32 0, i32* %14, align 4, !dbg !941, !tbaa !775
  call void @llvm.dbg.value(metadata %struct.__dirstream* %9, metadata !942, metadata !DIExpression()) #25, !dbg !949
  %15 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %9) #25, !dbg !951
  call void @llvm.dbg.value(metadata %struct.dirent* %15, metadata !947, metadata !DIExpression()) #25, !dbg !952
  %16 = icmp eq %struct.dirent* %15, null, !dbg !953
  br i1 %16, label %32, label %17, !dbg !955

17:                                               ; preds = %13, %29
  %18 = phi %struct.dirent* [ %30, %29 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 0, !dbg !956
  call void @llvm.dbg.value(metadata i8* %19, metadata !957, metadata !DIExpression()) #25, !dbg !965
  %20 = load i8, i8* %19, align 1, !dbg !967, !tbaa !830
  %21 = icmp eq i8 %20, 46, !dbg !968
  br i1 %21, label %22, label %32, !dbg !969

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 1, !dbg !970
  %24 = load i8, i8* %23, align 1, !dbg !970, !tbaa !830
  %25 = icmp eq i8 %24, 46, !dbg !971
  %26 = select i1 %25, i64 2, i64 1, !dbg !972
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i64 0, i32 4, i64 %26, !dbg !972
  %28 = load i8, i8* %27, align 1, !dbg !972, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %28, metadata !962, metadata !DIExpression()) #25, !dbg !973
  switch i8 %28, label %32 [
    i8 47, label %29
    i8 0, label %29
  ], !dbg !974

29:                                               ; preds = %22, %22
  %30 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %9) #25, !dbg !951
  call void @llvm.dbg.value(metadata %struct.dirent* %30, metadata !947, metadata !DIExpression()) #25, !dbg !952
  %31 = icmp eq %struct.dirent* %30, null, !dbg !953
  br i1 %31, label %32, label %17, !dbg !955

32:                                               ; preds = %17, %22, %29, %13
  %33 = phi %struct.dirent* [ null, %13 ], [ %18, %22 ], [ %18, %17 ], [ null, %29 ], !dbg !951
  call void @llvm.dbg.value(metadata %struct.dirent* %33, metadata !913, metadata !DIExpression()) #25, !dbg !927
  %34 = load i32, i32* %14, align 4, !dbg !975, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %34, metadata !925, metadata !DIExpression()) #25, !dbg !927
  %35 = tail call i32 @closedir(%struct.__dirstream* nonnull %9) #25, !dbg !976
  store i32 %34, i32* %14, align 4, !dbg !977, !tbaa !775
  %36 = icmp eq %struct.dirent* %33, null, !dbg !978
  %37 = icmp eq i32 %34, 0
  %38 = and i1 %36, %37, !dbg !980
  br i1 %38, label %44, label %39, !dbg !981

39:                                               ; preds = %5, %11, %32
  %40 = tail call i32* @__errno_location() #29, !dbg !982
  %41 = load i32, i32* %40, align 4, !dbg !982, !tbaa !775
  %42 = icmp eq i32 %41, 0, !dbg !983
  br label %44

43:                                               ; preds = %4
  br label %44, !dbg !984

44:                                               ; preds = %4, %4, %43, %39, %32, %2
  %45 = phi i1 [ false, %2 ], [ true, %4 ], [ false, %32 ], [ %42, %39 ], [ true, %4 ], [ false, %43 ], !dbg !900
  ret i1 %45, !dbg !984
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

declare !dbg !985 i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

declare !dbg !989 %struct.__dirstream* @fdopendir(i32) local_unnamed_addr #3

declare !dbg !993 i32 @close(i32) local_unnamed_addr #3

declare !dbg !996 %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1000 noundef i32 @closedir(%struct.__dirstream* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE* %0, i8* %1, ...) local_unnamed_addr #8 !dbg !1003 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1042, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8* %1, metadata !1043, metadata !DIExpression()), !dbg !1056
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1057
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #25, !dbg !1057
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1044, metadata !DIExpression()), !dbg !1058
  %5 = load i8*, i8** @program_name, align 8, !dbg !1059, !tbaa !612
  %6 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %0), !dbg !1059
  %7 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !1060
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1061
  call void @llvm.va_start(i8* nonnull %4), !dbg !1061
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1062, metadata !DIExpression()) #25, !dbg !1073
  call void @llvm.dbg.value(metadata i8* %1, metadata !1071, metadata !DIExpression()) #25, !dbg !1073
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %8, metadata !1072, metadata !DIExpression()) #25, !dbg !1073
  %9 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %8) #25, !dbg !1075
  call void @llvm.va_end(i8* nonnull %4), !dbg !1076
  call void @llvm.dbg.value(metadata i32 10, metadata !1077, metadata !DIExpression()) #25, !dbg !1084
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1083, metadata !DIExpression()) #25, !dbg !1084
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1086
  %11 = load i8*, i8** %10, align 8, !dbg !1086, !tbaa !1087
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1086
  %13 = load i8*, i8** %12, align 8, !dbg !1086, !tbaa !1091
  %14 = icmp ult i8* %11, %13, !dbg !1086
  br i1 %14, label %17, label %15, !dbg !1086, !prof !1092

15:                                               ; preds = %2
  %16 = call i32 @__overflow(%struct._IO_FILE* nonnull %0, i32 10) #25, !dbg !1086
  br label %19, !dbg !1086

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1086
  store i8* %18, i8** %10, align 8, !dbg !1086, !tbaa !1087
  store i8 10, i8* %11, align 1, !dbg !1086, !tbaa !830
  br label %19, !dbg !1086

19:                                               ; preds = %15, %17
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #25, !dbg !1093
  ret void, !dbg !1093
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #10

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #10

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1094 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1096, metadata !DIExpression()), !dbg !1097
  store i8* %0, i8** @file_name, align 8, !dbg !1098, !tbaa !612
  ret void, !dbg !1099
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1100 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1106, !tbaa !1107
  ret void, !dbg !1109
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1110 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1115, !tbaa !612
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !1116
  %3 = icmp eq i32 %2, 0, !dbg !1117
  br i1 %3, label %22, label %4, !dbg !1118

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1119, !tbaa !1107, !range !1120
  %6 = icmp eq i8 %5, 0, !dbg !1119
  br i1 %6, label %11, label %7, !dbg !1121

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !1122
  %9 = load i32, i32* %8, align 4, !dbg !1122, !tbaa !775
  %10 = icmp eq i32 %9, 32, !dbg !1123
  br i1 %10, label %22, label %11, !dbg !1124

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #25, !dbg !1125
  call void @llvm.dbg.value(metadata i8* %12, metadata !1112, metadata !DIExpression()), !dbg !1126
  %13 = load i8*, i8** @file_name, align 8, !dbg !1127, !tbaa !612
  %14 = icmp eq i8* %13, null, !dbg !1127
  %15 = tail call i32* @__errno_location() #29, !dbg !1129
  %16 = load i32, i32* %15, align 4, !dbg !1129, !tbaa !775
  br i1 %14, label %19, label %17, !dbg !1130

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !1131
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !1132
  br label %20, !dbg !1132

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #25, !dbg !1133
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1134, !tbaa !775
  tail call void @_exit(i32 %21) #27, !dbg !1135
  unreachable, !dbg !1135

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1136, !tbaa !612
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !1138
  %25 = icmp eq i32 %24, 0, !dbg !1139
  br i1 %25, label %28, label %26, !dbg !1140

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1141, !tbaa !775
  tail call void @_exit(i32 %27) #27, !dbg !1142
  unreachable, !dbg !1142

28:                                               ; preds = %22
  ret void, !dbg !1143
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local zeroext i1 @strip_trailing_slashes(i8* %0) local_unnamed_addr #13 !dbg !1144 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1146, metadata !DIExpression()), !dbg !1150
  %2 = tail call i8* @last_component(i8* %0) #26, !dbg !1151
  call void @llvm.dbg.value(metadata i8* %2, metadata !1147, metadata !DIExpression()), !dbg !1150
  %3 = load i8, i8* %2, align 1, !dbg !1152, !tbaa !830
  %4 = icmp eq i8 %3, 0, !dbg !1152
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %5, metadata !1147, metadata !DIExpression()), !dbg !1150
  %6 = tail call i64 @base_len(i8* %5) #26, !dbg !1155
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1156
  call void @llvm.dbg.value(metadata i8* %7, metadata !1148, metadata !DIExpression()), !dbg !1150
  %8 = load i8, i8* %7, align 1, !dbg !1157, !tbaa !830
  %9 = icmp ne i8 %8, 0, !dbg !1158
  call void @llvm.dbg.value(metadata i1 %9, metadata !1149, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1150
  store i8 0, i8* %7, align 1, !dbg !1159, !tbaa !830
  ret i1 %9, !dbg !1160
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1163, metadata !DIExpression()), !dbg !1166
  %2 = icmp eq i8* %0, null, !dbg !1167
  br i1 %2, label %3, label %6, !dbg !1169

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1170, !tbaa !612
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1172
  tail call void @abort() #27, !dbg !1173
  unreachable, !dbg !1173

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %7, metadata !1164, metadata !DIExpression()), !dbg !1166
  %8 = icmp eq i8* %7, null, !dbg !1175
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1176
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1176
  call void @llvm.dbg.value(metadata i8* %10, metadata !1165, metadata !DIExpression()), !dbg !1166
  %11 = ptrtoint i8* %10 to i64, !dbg !1177
  %12 = ptrtoint i8* %0 to i64, !dbg !1177
  %13 = sub i64 %11, %12, !dbg !1177
  %14 = icmp sgt i64 %13, 6, !dbg !1179
  br i1 %14, label %15, label %24, !dbg !1180

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1181
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #26, !dbg !1182
  %18 = icmp eq i32 %17, 0, !dbg !1183
  br i1 %18, label %19, label %24, !dbg !1184

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1163, metadata !DIExpression()), !dbg !1166
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #26, !dbg !1185
  %21 = icmp eq i32 %20, 0, !dbg !1188
  br i1 %21, label %22, label %24, !dbg !1189

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1190
  call void @llvm.dbg.value(metadata i8* %23, metadata !1163, metadata !DIExpression()), !dbg !1166
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1192, !tbaa !612
  br label %24, !dbg !1193

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1163, metadata !DIExpression()), !dbg !1166
  store i8* %25, i8** @program_name, align 8, !dbg !1194, !tbaa !612
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1195, !tbaa !612
  ret void, !dbg !1196
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1197 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1202, metadata !DIExpression()), !dbg !1205
  %2 = tail call i32* @__errno_location() #29, !dbg !1206
  %3 = load i32, i32* %2, align 4, !dbg !1206, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %3, metadata !1203, metadata !DIExpression()), !dbg !1205
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1207
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1207
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1207
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !1208
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1204, metadata !DIExpression()), !dbg !1205
  store i32 %3, i32* %2, align 4, !dbg !1209, !tbaa !775
  ret %struct.quoting_options* %8, !dbg !1210
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1211 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1217, metadata !DIExpression()), !dbg !1218
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1219
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1219
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1220
  %5 = load i32, i32* %4, align 8, !dbg !1220, !tbaa !1221
  ret i32 %5, !dbg !1223
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1224 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1228, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i32 %1, metadata !1229, metadata !DIExpression()), !dbg !1230
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1231
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1231
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1232
  store i32 %1, i32* %5, align 8, !dbg !1233, !tbaa !1221
  ret void, !dbg !1234
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1235 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1239, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %1, metadata !1240, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 %2, metadata !1241, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %1, metadata !1242, metadata !DIExpression()), !dbg !1247
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1248
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1248
  %6 = lshr i8 %1, 5, !dbg !1249
  %7 = zext i8 %6 to i64, !dbg !1249
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1250
  call void @llvm.dbg.value(metadata i32* %8, metadata !1243, metadata !DIExpression()), !dbg !1247
  %9 = and i8 %1, 31, !dbg !1251
  %10 = zext i8 %9 to i32, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %10, metadata !1245, metadata !DIExpression()), !dbg !1247
  %11 = load i32, i32* %8, align 4, !dbg !1252, !tbaa !775
  %12 = lshr i32 %11, %10, !dbg !1253
  %13 = and i32 %12, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %13, metadata !1246, metadata !DIExpression()), !dbg !1247
  %14 = and i32 %2, 1, !dbg !1255
  %15 = xor i32 %13, %14, !dbg !1256
  %16 = shl i32 %15, %10, !dbg !1257
  %17 = xor i32 %16, %11, !dbg !1258
  store i32 %17, i32* %8, align 4, !dbg !1258, !tbaa !775
  ret i32 %13, !dbg !1259
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1260 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1264, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata i32 %1, metadata !1265, metadata !DIExpression()), !dbg !1267
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1268
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1270
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1264, metadata !DIExpression()), !dbg !1267
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1271
  %6 = load i32, i32* %5, align 4, !dbg !1271, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %6, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i32 %1, i32* %5, align 4, !dbg !1273, !tbaa !1272
  ret i32 %6, !dbg !1274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1275 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1279, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8* %1, metadata !1280, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i8* %2, metadata !1281, metadata !DIExpression()), !dbg !1282
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1283
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1285
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1279, metadata !DIExpression()), !dbg !1282
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1286
  store i32 10, i32* %6, align 8, !dbg !1287, !tbaa !1221
  %7 = icmp ne i8* %1, null, !dbg !1288
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1290
  br i1 %9, label %11, label %10, !dbg !1290

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1291
  unreachable, !dbg !1291

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1292
  store i8* %1, i8** %12, align 8, !dbg !1293, !tbaa !1294
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1295
  store i8* %2, i8** %13, align 8, !dbg !1296, !tbaa !1297
  ret void, !dbg !1298
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1303, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %1, metadata !1304, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i8* %2, metadata !1305, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %3, metadata !1306, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1307, metadata !DIExpression()), !dbg !1311
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1312
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1308, metadata !DIExpression()), !dbg !1311
  %8 = tail call i32* @__errno_location() #29, !dbg !1313
  %9 = load i32, i32* %8, align 4, !dbg !1313, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %9, metadata !1309, metadata !DIExpression()), !dbg !1311
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1314
  %11 = load i32, i32* %10, align 8, !dbg !1314, !tbaa !1221
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1315
  %13 = load i32, i32* %12, align 4, !dbg !1315, !tbaa !1272
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1316
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1317
  %16 = load i8*, i8** %15, align 8, !dbg !1317, !tbaa !1294
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1318
  %18 = load i8*, i8** %17, align 8, !dbg !1318, !tbaa !1297
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %19, metadata !1310, metadata !DIExpression()), !dbg !1311
  store i32 %9, i32* %8, align 4, !dbg !1320, !tbaa !775
  ret i64 %19, !dbg !1321
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1322 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1328, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %1, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %2, metadata !1330, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %3, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %4, metadata !1332, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %5, metadata !1333, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32* %6, metadata !1334, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %7, metadata !1335, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %8, metadata !1336, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 0, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 0, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* null, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 0, metadata !1341, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1342, metadata !DIExpression()), !dbg !1398
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1399
  %14 = icmp eq i64 %13, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i1 %14, metadata !1343, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1398
  %15 = lshr i32 %5, 1, !dbg !1401
  %16 = trunc i32 %15 to i8, !dbg !1401
  %17 = and i8 %16, 1, !dbg !1401
  call void @llvm.dbg.value(metadata i8 %17, metadata !1344, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, metadata !1347, metadata !DIExpression()), !dbg !1398
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1402

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1403
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1404
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1405
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1406
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1398
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1407
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1408
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1409
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %38, metadata !1347, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %37, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %36, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %35, metadata !1344, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %34, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %33, metadata !1342, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %32, metadata !1341, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %31, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %30, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 0, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %29, metadata !1336, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %28, metadata !1335, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %27, metadata !1332, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.label(metadata !1392), !dbg !1410
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
  ], !dbg !1411

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1344, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 5, metadata !1332, metadata !DIExpression()), !dbg !1398
  br label %92, !dbg !1412

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1344, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 5, metadata !1332, metadata !DIExpression()), !dbg !1398
  %42 = and i8 %35, 1, !dbg !1414
  %43 = icmp eq i8 %42, 0, !dbg !1414
  br i1 %43, label %44, label %92, !dbg !1412

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1416
  br i1 %45, label %92, label %46, !dbg !1419

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1416, !tbaa !830
  br label %92, !dbg !1416

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %27), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %48, metadata !1335, metadata !DIExpression()), !dbg !1398
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %27), !dbg !1424
  call void @llvm.dbg.value(metadata i8* %49, metadata !1336, metadata !DIExpression()), !dbg !1398
  br label %50, !dbg !1425

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1336, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %51, metadata !1335, metadata !DIExpression()), !dbg !1398
  %53 = and i8 %35, 1, !dbg !1426
  %54 = icmp eq i8 %53, 0, !dbg !1426
  br i1 %54, label %55, label %70, !dbg !1428

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 0, metadata !1338, metadata !DIExpression()), !dbg !1398
  %56 = load i8, i8* %51, align 1, !dbg !1429, !tbaa !830
  %57 = icmp eq i8 %56, 0, !dbg !1432
  br i1 %57, label %70, label %58, !dbg !1432

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %61, metadata !1338, metadata !DIExpression()), !dbg !1398
  %62 = icmp ult i64 %61, %39, !dbg !1433
  br i1 %62, label %63, label %65, !dbg !1436

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1433
  store i8 %59, i8* %64, align 1, !dbg !1433, !tbaa !830
  br label %65, !dbg !1433

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %66, metadata !1338, metadata !DIExpression()), !dbg !1398
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1437
  call void @llvm.dbg.value(metadata i8* %67, metadata !1340, metadata !DIExpression()), !dbg !1398
  %68 = load i8, i8* %67, align 1, !dbg !1429, !tbaa !830
  %69 = icmp eq i8 %68, 0, !dbg !1432
  br i1 %69, label %70, label %58, !dbg !1432, !llvm.loop !1438

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1440
  call void @llvm.dbg.value(metadata i64 %71, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, metadata !1342, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %52, metadata !1340, metadata !DIExpression()), !dbg !1398
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %72, metadata !1341, metadata !DIExpression()), !dbg !1398
  br label %92, !dbg !1442

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1342, metadata !DIExpression()), !dbg !1398
  br label %74, !dbg !1443

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %75, metadata !1342, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, metadata !1344, metadata !DIExpression()), !dbg !1398
  br label %76, !dbg !1444

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1406
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %78, metadata !1344, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %77, metadata !1342, metadata !DIExpression()), !dbg !1398
  %79 = and i8 %78, 1, !dbg !1445
  %80 = icmp eq i8 %79, 0, !dbg !1445
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1447
  br label %82, !dbg !1447

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1398
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1401
  call void @llvm.dbg.value(metadata i8 %84, metadata !1344, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %83, metadata !1342, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 2, metadata !1332, metadata !DIExpression()), !dbg !1398
  %85 = and i8 %84, 1, !dbg !1448
  %86 = icmp eq i8 %85, 0, !dbg !1448
  br i1 %86, label %87, label %92, !dbg !1450

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1451
  br i1 %88, label %92, label %89, !dbg !1454

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1451, !tbaa !830
  br label %92, !dbg !1451

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1344, metadata !DIExpression()), !dbg !1398
  br label %92, !dbg !1455

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1456
  unreachable, !dbg !1456

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1440
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %40 ], !dbg !1398
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1398
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1398
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %100, metadata !1344, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %99, metadata !1342, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %98, metadata !1341, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %96, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %95, metadata !1336, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8* %94, metadata !1335, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %93, metadata !1332, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 0, metadata !1337, metadata !DIExpression()), !dbg !1398
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
  br label %121, !dbg !1457

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1458
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1440
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1403
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1407
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1408
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1409
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %128, metadata !1347, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %127, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %126, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %125, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %124, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %123, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %122, metadata !1337, metadata !DIExpression()), !dbg !1398
  %130 = icmp eq i64 %125, -1, !dbg !1459
  br i1 %130, label %131, label %135, !dbg !1460

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1461
  %133 = load i8, i8* %132, align 1, !dbg !1461, !tbaa !830
  %134 = icmp eq i8 %133, 0, !dbg !1462
  br i1 %134, label %587, label %137, !dbg !1463

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1464
  br i1 %136, label %587, label %137, !dbg !1463

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 0, metadata !1354, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 0, metadata !1355, metadata !DIExpression()), !dbg !1465
  br i1 %106, label %138, label %153, !dbg !1466

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1468
  %140 = and i1 %107, %130, !dbg !1469
  br i1 %140, label %141, label %143, !dbg !1469

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %142, metadata !1331, metadata !DIExpression()), !dbg !1398
  br label %143, !dbg !1471

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1471
  call void @llvm.dbg.value(metadata i64 %144, metadata !1331, metadata !DIExpression()), !dbg !1398
  %145 = icmp ugt i64 %139, %144, !dbg !1472
  br i1 %145, label %153, label %146, !dbg !1473

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1474
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1475
  %149 = icmp ne i32 %148, 0, !dbg !1476
  %150 = or i1 %149, %109, !dbg !1477
  %151 = xor i1 %149, true, !dbg !1477
  %152 = zext i1 %151 to i8, !dbg !1477
  br i1 %150, label %153, label %646, !dbg !1477

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1465
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1465
  call void @llvm.dbg.value(metadata i8 %156, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 %154, metadata !1331, metadata !DIExpression()), !dbg !1398
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1478
  %158 = load i8, i8* %157, align 1, !dbg !1478, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %158, metadata !1348, metadata !DIExpression()), !dbg !1465
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
  ], !dbg !1479

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1480

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1481

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1465
  %162 = and i8 %126, 1, !dbg !1485
  %163 = icmp eq i8 %162, 0, !dbg !1485
  %164 = and i1 %110, %163, !dbg !1485
  br i1 %164, label %165, label %181, !dbg !1485

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1487
  br i1 %166, label %167, label %169, !dbg !1491

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1487
  store i8 39, i8* %168, align 1, !dbg !1487, !tbaa !830
  br label %169, !dbg !1487

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %170, metadata !1338, metadata !DIExpression()), !dbg !1398
  %171 = icmp ult i64 %170, %129, !dbg !1492
  br i1 %171, label %172, label %174, !dbg !1495

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1492
  store i8 36, i8* %173, align 1, !dbg !1492, !tbaa !830
  br label %174, !dbg !1492

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %175, metadata !1338, metadata !DIExpression()), !dbg !1398
  %176 = icmp ult i64 %175, %129, !dbg !1496
  br i1 %176, label %177, label %179, !dbg !1499

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1496
  store i8 39, i8* %178, align 1, !dbg !1496, !tbaa !830
  br label %179, !dbg !1496

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %180, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, metadata !1345, metadata !DIExpression()), !dbg !1398
  br label %181, !dbg !1500

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1398
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %183, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %182, metadata !1338, metadata !DIExpression()), !dbg !1398
  %184 = icmp ult i64 %182, %129, !dbg !1501
  br i1 %184, label %185, label %187, !dbg !1504

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1501
  store i8 92, i8* %186, align 1, !dbg !1501, !tbaa !830
  br label %187, !dbg !1501

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %188, metadata !1338, metadata !DIExpression()), !dbg !1398
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1505
  br i1 %191, label %192, label %473, !dbg !1505

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1507
  %194 = load i8, i8* %193, align 1, !dbg !1507, !tbaa !830
  %195 = add i8 %194, -48, !dbg !1508
  %196 = icmp ult i8 %195, 10, !dbg !1508
  br i1 %196, label %197, label %473, !dbg !1508

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1509
  br i1 %198, label %199, label %201, !dbg !1513

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1509
  store i8 48, i8* %200, align 1, !dbg !1509, !tbaa !830
  br label %201, !dbg !1509

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %202, metadata !1338, metadata !DIExpression()), !dbg !1398
  %203 = icmp ult i64 %202, %129, !dbg !1514
  br i1 %203, label %204, label %206, !dbg !1517

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1514
  store i8 48, i8* %205, align 1, !dbg !1514, !tbaa !830
  br label %206, !dbg !1514

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %207, metadata !1338, metadata !DIExpression()), !dbg !1398
  br label %473, !dbg !1518

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1519

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1520

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1521

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1523
  br i1 %214, label %215, label %473, !dbg !1523

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1525
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1526
  %218 = load i8, i8* %217, align 1, !dbg !1526, !tbaa !830
  %219 = icmp eq i8 %218, 63, !dbg !1527
  br i1 %219, label %220, label %473, !dbg !1528

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1529
  %222 = load i8, i8* %221, align 1, !dbg !1529, !tbaa !830
  %223 = sext i8 %222 to i32, !dbg !1529
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
  ], !dbg !1530

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1531

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i64 undef, metadata !1337, metadata !DIExpression()), !dbg !1398
  %226 = icmp ult i64 %123, %129, !dbg !1533
  br i1 %226, label %227, label %229, !dbg !1536

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1533
  store i8 63, i8* %228, align 1, !dbg !1533, !tbaa !830
  br label %229, !dbg !1533

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %230, metadata !1338, metadata !DIExpression()), !dbg !1398
  %231 = icmp ult i64 %230, %129, !dbg !1537
  br i1 %231, label %232, label %234, !dbg !1540

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1537
  store i8 34, i8* %233, align 1, !dbg !1537, !tbaa !830
  br label %234, !dbg !1537

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %235, metadata !1338, metadata !DIExpression()), !dbg !1398
  %236 = icmp ult i64 %235, %129, !dbg !1541
  br i1 %236, label %237, label %239, !dbg !1544

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1541
  store i8 34, i8* %238, align 1, !dbg !1541, !tbaa !830
  br label %239, !dbg !1541

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %240, metadata !1338, metadata !DIExpression()), !dbg !1398
  %241 = icmp ult i64 %240, %129, !dbg !1545
  br i1 %241, label %242, label %244, !dbg !1548

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1545
  store i8 63, i8* %243, align 1, !dbg !1545, !tbaa !830
  br label %244, !dbg !1545

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %245, metadata !1338, metadata !DIExpression()), !dbg !1398
  br label %473, !dbg !1549

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1352, metadata !DIExpression()), !dbg !1465
  br label %256, !dbg !1550

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1352, metadata !DIExpression()), !dbg !1465
  br label %256, !dbg !1551

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1352, metadata !DIExpression()), !dbg !1465
  br label %254, !dbg !1552

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1352, metadata !DIExpression()), !dbg !1465
  br label %254, !dbg !1553

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1352, metadata !DIExpression()), !dbg !1465
  br label %256, !dbg !1554

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1352, metadata !DIExpression()), !dbg !1465
  br i1 %110, label %252, label %253, !dbg !1555

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1556

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1559

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1561
  call void @llvm.dbg.value(metadata i8 %255, metadata !1352, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.label(metadata !1393), !dbg !1562
  br i1 %111, label %256, label %631, !dbg !1563

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1561
  call void @llvm.dbg.value(metadata i8 %257, metadata !1352, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.label(metadata !1394), !dbg !1565
  br i1 %102, label %495, label %473, !dbg !1566

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1567

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1568, !tbaa !830
  %261 = icmp eq i8 %260, 0, !dbg !1570
  br i1 %261, label %262, label %473, !dbg !1571

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1572
  br i1 %263, label %264, label %473, !dbg !1574

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1355, metadata !DIExpression()), !dbg !1465
  br label %265, !dbg !1575

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1465
  call void @llvm.dbg.value(metadata i8 %266, metadata !1355, metadata !DIExpression()), !dbg !1465
  br i1 %111, label %473, label %631, !dbg !1576

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, metadata !1355, metadata !DIExpression()), !dbg !1465
  br i1 %110, label %268, label %473, !dbg !1578

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1579

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1582
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1584
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1584
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %274, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %273, metadata !1339, metadata !DIExpression()), !dbg !1398
  %275 = icmp ult i64 %123, %274, !dbg !1585
  br i1 %275, label %276, label %278, !dbg !1588

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1585
  store i8 39, i8* %277, align 1, !dbg !1585, !tbaa !830
  br label %278, !dbg !1585

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %279, metadata !1338, metadata !DIExpression()), !dbg !1398
  %280 = icmp ult i64 %279, %274, !dbg !1589
  br i1 %280, label %281, label %283, !dbg !1592

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1589
  store i8 92, i8* %282, align 1, !dbg !1589, !tbaa !830
  br label %283, !dbg !1589

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %284, metadata !1338, metadata !DIExpression()), !dbg !1398
  %285 = icmp ult i64 %284, %274, !dbg !1593
  br i1 %285, label %286, label %288, !dbg !1596

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1593
  store i8 39, i8* %287, align 1, !dbg !1593, !tbaa !830
  br label %288, !dbg !1593

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %289, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1398
  br label %473, !dbg !1597

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1598

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1356, metadata !DIExpression()), !dbg !1599
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !1600
  %293 = load i16*, i16** %292, align 8, !dbg !1600, !tbaa !612
  %294 = zext i8 %158 to i64, !dbg !1600
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1600
  %296 = load i16, i16* %295, align 2, !dbg !1600, !tbaa !1602
  %297 = lshr i16 %296, 14, !dbg !1603
  %298 = trunc i16 %297 to i8, !dbg !1603
  %299 = and i8 %298, 1, !dbg !1603
  call void @llvm.dbg.value(metadata i8 %354, metadata !1359, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %355, metadata !1356, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %306, metadata !1331, metadata !DIExpression()), !dbg !1398
  %300 = icmp eq i8 %299, 0, !dbg !1604
  call void @llvm.dbg.value(metadata i1 %357, metadata !1355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1465
  br label %359, !dbg !1605

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1606
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1360, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8* %23, metadata !1608, metadata !DIExpression()) #25, !dbg !1616
  call void @llvm.dbg.value(metadata i32 0, metadata !1614, metadata !DIExpression()) #25, !dbg !1616
  call void @llvm.dbg.value(metadata i64 8, metadata !1615, metadata !DIExpression()) #25, !dbg !1616
  store i64 0, i64* %10, align 8, !dbg !1618
  call void @llvm.dbg.value(metadata i64 0, metadata !1356, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i8 1, metadata !1359, metadata !DIExpression()), !dbg !1599
  %302 = icmp eq i64 %154, -1, !dbg !1619
  br i1 %302, label %303, label %305, !dbg !1621

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %304, metadata !1331, metadata !DIExpression()), !dbg !1398
  br label %305, !dbg !1623

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1465
  call void @llvm.dbg.value(metadata i64 %306, metadata !1331, metadata !DIExpression()), !dbg !1398
  br label %307, !dbg !1624

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1625
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1626
  call void @llvm.dbg.value(metadata i8 %309, metadata !1359, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %308, metadata !1356, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1627
  %310 = add i64 %308, %122, !dbg !1628
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1629
  %312 = sub i64 %306, %310, !dbg !1630
  call void @llvm.dbg.value(metadata i32* %12, metadata !1378, metadata !DIExpression(DW_OP_deref)), !dbg !1631
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %313, metadata !1381, metadata !DIExpression()), !dbg !1631
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1633

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1356, metadata !DIExpression()), !dbg !1599
  %315 = icmp ugt i64 %306, %310, !dbg !1634
  br i1 %315, label %316, label %341, !dbg !1636

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1637
  br label %318, !dbg !1637

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1356, metadata !DIExpression()), !dbg !1599
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1638
  %322 = load i8, i8* %321, align 1, !dbg !1638, !tbaa !830
  %323 = icmp eq i8 %322, 0, !dbg !1636
  br i1 %323, label %341, label %324, !dbg !1637

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1639
  call void @llvm.dbg.value(metadata i64 %325, metadata !1356, metadata !DIExpression()), !dbg !1599
  %326 = add i64 %325, %122, !dbg !1640
  %327 = icmp ult i64 %326, %306, !dbg !1634
  br i1 %327, label %318, label %341, !dbg !1636, !llvm.loop !1641

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1642
  call void @llvm.dbg.value(metadata i64 1, metadata !1382, metadata !DIExpression()), !dbg !1643
  br i1 %330, label %331, label %344, !dbg !1642

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1382, metadata !DIExpression()), !dbg !1643
  %333 = add i64 %332, %310, !dbg !1644
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1647
  %335 = load i8, i8* %334, align 1, !dbg !1647, !tbaa !830
  %336 = sext i8 %335 to i32, !dbg !1647
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1648

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %338, metadata !1382, metadata !DIExpression()), !dbg !1643
  %339 = icmp eq i64 %338, %313, !dbg !1650
  br i1 %339, label %344, label %331, !dbg !1651, !llvm.loop !1652

340:                                              ; preds = %307
  br label %341, !dbg !1654

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1359, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 undef, metadata !1356, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1654
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1655, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %345, metadata !1378, metadata !DIExpression()), !dbg !1631
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !1657
  %347 = icmp eq i32 %346, 0, !dbg !1657
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1658
  call void @llvm.dbg.value(metadata i8 %348, metadata !1359, metadata !DIExpression()), !dbg !1599
  %349 = add i64 %313, %308, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %349, metadata !1356, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1654
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1660
  %351 = icmp eq i32 %350, 0, !dbg !1661
  br i1 %351, label %307, label %353, !dbg !1662, !llvm.loop !1663

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1359, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 undef, metadata !1356, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1654
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1665
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1665
  call void @llvm.dbg.value(metadata i8 %354, metadata !1359, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %355, metadata !1356, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %306, metadata !1331, metadata !DIExpression()), !dbg !1398
  %356 = and i8 %354, 1, !dbg !1604
  %357 = icmp eq i8 %356, 0, !dbg !1604
  call void @llvm.dbg.value(metadata i1 %357, metadata !1355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1465
  %358 = icmp ugt i64 %355, 1, !dbg !1666
  br i1 %358, label %367, label %359, !dbg !1605

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1667
  br i1 %364, label %367, label %365, !dbg !1667

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i8 %472, metadata !1355, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %441, metadata !1354, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %440, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %439, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %438, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %371, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %437, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %375, metadata !1337, metadata !DIExpression()), !dbg !1398
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %372, metadata !1389, metadata !DIExpression()), !dbg !1669
  %373 = and i1 %102, %368
  br label %374, !dbg !1670

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1458
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1398
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1407
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1465
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1465
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1671
  call void @llvm.dbg.value(metadata i8 %380, metadata !1354, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %379, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %378, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %377, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %376, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %375, metadata !1337, metadata !DIExpression()), !dbg !1398
  br i1 %373, label %381, label %427, !dbg !1672

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1677

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1465
  %383 = and i8 %377, 1, !dbg !1680
  %384 = icmp eq i8 %383, 0, !dbg !1680
  %385 = and i1 %110, %384, !dbg !1680
  br i1 %385, label %386, label %402, !dbg !1680

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1682
  br i1 %387, label %388, label %390, !dbg !1686

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1682
  store i8 39, i8* %389, align 1, !dbg !1682, !tbaa !830
  br label %390, !dbg !1682

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %391, metadata !1338, metadata !DIExpression()), !dbg !1398
  %392 = icmp ult i64 %391, %129, !dbg !1687
  br i1 %392, label %393, label %395, !dbg !1690

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1687
  store i8 36, i8* %394, align 1, !dbg !1687, !tbaa !830
  br label %395, !dbg !1687

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1690
  call void @llvm.dbg.value(metadata i64 %396, metadata !1338, metadata !DIExpression()), !dbg !1398
  %397 = icmp ult i64 %396, %129, !dbg !1691
  br i1 %397, label %398, label %400, !dbg !1694

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1691
  store i8 39, i8* %399, align 1, !dbg !1691, !tbaa !830
  br label %400, !dbg !1691

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %401, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, metadata !1345, metadata !DIExpression()), !dbg !1398
  br label %402, !dbg !1695

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1398
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %404, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %403, metadata !1338, metadata !DIExpression()), !dbg !1398
  %405 = icmp ult i64 %403, %129, !dbg !1696
  br i1 %405, label %406, label %408, !dbg !1699

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1696
  store i8 92, i8* %407, align 1, !dbg !1696, !tbaa !830
  br label %408, !dbg !1696

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %409, metadata !1338, metadata !DIExpression()), !dbg !1398
  %410 = icmp ult i64 %409, %129, !dbg !1700
  br i1 %410, label %411, label %415, !dbg !1703

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1700
  %413 = or i8 %412, 48, !dbg !1700
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1700
  store i8 %413, i8* %414, align 1, !dbg !1700, !tbaa !830
  br label %415, !dbg !1700

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %416, metadata !1338, metadata !DIExpression()), !dbg !1398
  %417 = icmp ult i64 %416, %129, !dbg !1704
  br i1 %417, label %418, label %423, !dbg !1707

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1704
  %420 = and i8 %419, 7, !dbg !1704
  %421 = or i8 %420, 48, !dbg !1704
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1704
  store i8 %421, i8* %422, align 1, !dbg !1704, !tbaa !830
  br label %423, !dbg !1704

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %424, metadata !1338, metadata !DIExpression()), !dbg !1398
  %425 = and i8 %378, 7, !dbg !1708
  %426 = or i8 %425, 48, !dbg !1709
  call void @llvm.dbg.value(metadata i8 %426, metadata !1348, metadata !DIExpression()), !dbg !1465
  br label %436, !dbg !1710

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1711
  %429 = icmp eq i8 %428, 0, !dbg !1711
  br i1 %429, label %436, label %430, !dbg !1713

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1714
  br i1 %431, label %432, label %434, !dbg !1718

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1714
  store i8 92, i8* %433, align 1, !dbg !1714, !tbaa !830
  br label %434, !dbg !1714

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i64 %435, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1353, metadata !DIExpression()), !dbg !1465
  br label %436, !dbg !1719

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1398
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1407
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1465
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1465
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1465
  call void @llvm.dbg.value(metadata i8 %441, metadata !1354, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %440, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %439, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %438, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %437, metadata !1338, metadata !DIExpression()), !dbg !1398
  %442 = add i64 %375, 1, !dbg !1720
  %443 = icmp ugt i64 %372, %442, !dbg !1722
  br i1 %443, label %444, label %471, !dbg !1723

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1724
  %446 = icmp ne i8 %445, 0, !dbg !1724
  %447 = and i8 %441, 1, !dbg !1724
  %448 = icmp eq i8 %447, 0, !dbg !1724
  %449 = and i1 %446, %448, !dbg !1724
  br i1 %449, label %450, label %461, !dbg !1724

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1727
  br i1 %451, label %452, label %454, !dbg !1731

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1727
  store i8 39, i8* %453, align 1, !dbg !1727, !tbaa !830
  br label %454, !dbg !1727

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %455, metadata !1338, metadata !DIExpression()), !dbg !1398
  %456 = icmp ult i64 %455, %129, !dbg !1732
  br i1 %456, label %457, label %459, !dbg !1735

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1732
  store i8 39, i8* %458, align 1, !dbg !1732, !tbaa !830
  br label %459, !dbg !1732

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %460, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1398
  br label %461, !dbg !1736

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1737
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %463, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %462, metadata !1338, metadata !DIExpression()), !dbg !1398
  %464 = icmp ult i64 %462, %129, !dbg !1738
  br i1 %464, label %465, label %467, !dbg !1741

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1738
  store i8 %439, i8* %466, align 1, !dbg !1738, !tbaa !830
  br label %467, !dbg !1738

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %468, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %442, metadata !1337, metadata !DIExpression()), !dbg !1398
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1742
  %470 = load i8, i8* %469, align 1, !dbg !1742, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %470, metadata !1348, metadata !DIExpression()), !dbg !1465
  br label %374, !dbg !1743, !llvm.loop !1744

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i8 %472, metadata !1355, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %441, metadata !1354, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %440, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %439, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %438, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %371, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %437, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %375, metadata !1337, metadata !DIExpression()), !dbg !1398
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1458
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1398
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1403
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1747
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1398
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1398
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1465
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1465
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1465
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %482, metadata !1355, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %481, metadata !1354, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %156, metadata !1353, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %480, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %479, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %478, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %477, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %476, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %475, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %474, metadata !1337, metadata !DIExpression()), !dbg !1398
  br i1 %116, label %494, label %484, !dbg !1748

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1750
  %486 = zext i8 %485 to i64, !dbg !1750
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1751
  %488 = load i32, i32* %487, align 4, !dbg !1751, !tbaa !775
  %489 = and i8 %480, 31, !dbg !1752
  %490 = zext i8 %489 to i32, !dbg !1752
  %491 = shl nuw i32 1, %490, !dbg !1753
  %492 = and i32 %488, %491, !dbg !1753
  %493 = icmp eq i32 %492, 0, !dbg !1753
  br i1 %493, label %494, label %495, !dbg !1754

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1755

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1756
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1398
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1403
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1747
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1407
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1408
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1465
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1465
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %503, metadata !1355, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %502, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %501, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %500, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %499, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %498, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %497, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %496, metadata !1337, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.label(metadata !1395), !dbg !1757
  br i1 %109, label %505, label %635, !dbg !1758

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1354, metadata !DIExpression()), !dbg !1465
  %506 = and i8 %500, 1, !dbg !1760
  %507 = icmp eq i8 %506, 0, !dbg !1760
  %508 = and i1 %110, %507, !dbg !1760
  br i1 %508, label %509, label %525, !dbg !1760

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1762
  br i1 %510, label %511, label %513, !dbg !1766

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1762
  store i8 39, i8* %512, align 1, !dbg !1762, !tbaa !830
  br label %513, !dbg !1762

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %514, metadata !1338, metadata !DIExpression()), !dbg !1398
  %515 = icmp ult i64 %514, %504, !dbg !1767
  br i1 %515, label %516, label %518, !dbg !1770

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1767
  store i8 36, i8* %517, align 1, !dbg !1767, !tbaa !830
  br label %518, !dbg !1767

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %519, metadata !1338, metadata !DIExpression()), !dbg !1398
  %520 = icmp ult i64 %519, %504, !dbg !1771
  br i1 %520, label %521, label %523, !dbg !1774

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1771
  store i8 39, i8* %522, align 1, !dbg !1771, !tbaa !830
  br label %523, !dbg !1771

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %524, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 1, metadata !1345, metadata !DIExpression()), !dbg !1398
  br label %525, !dbg !1775

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1465
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %527, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %526, metadata !1338, metadata !DIExpression()), !dbg !1398
  %528 = icmp ult i64 %526, %504, !dbg !1776
  br i1 %528, label %529, label %531, !dbg !1779

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1776
  store i8 92, i8* %530, align 1, !dbg !1776, !tbaa !830
  br label %531, !dbg !1776

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %543, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %542, metadata !1355, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %541, metadata !1354, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %540, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %539, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %538, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %537, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %536, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %535, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %534, metadata !1337, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.label(metadata !1396), !dbg !1780
  br label %560, !dbg !1781

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1756
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1398
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1403
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1747
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1407
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1408
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1784
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1465
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1465
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %542, metadata !1355, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %541, metadata !1354, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %540, metadata !1348, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.value(metadata i8 %539, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %538, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %537, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %536, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %535, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %534, metadata !1337, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.label(metadata !1396), !dbg !1780
  %544 = and i8 %538, 1, !dbg !1781
  %545 = icmp ne i8 %544, 0, !dbg !1781
  %546 = and i8 %541, 1, !dbg !1781
  %547 = icmp eq i8 %546, 0, !dbg !1781
  %548 = and i1 %545, %547, !dbg !1781
  br i1 %548, label %549, label %560, !dbg !1781

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1785
  br i1 %550, label %551, label %553, !dbg !1789

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1785
  store i8 39, i8* %552, align 1, !dbg !1785, !tbaa !830
  br label %553, !dbg !1785

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %554, metadata !1338, metadata !DIExpression()), !dbg !1398
  %555 = icmp ult i64 %554, %543, !dbg !1790
  br i1 %555, label %556, label %558, !dbg !1793

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1790
  store i8 39, i8* %557, align 1, !dbg !1790, !tbaa !830
  br label %558, !dbg !1790

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %559, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 0, metadata !1345, metadata !DIExpression()), !dbg !1398
  br label %560, !dbg !1794

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1465
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1398
  call void @llvm.dbg.value(metadata i8 %569, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %568, metadata !1338, metadata !DIExpression()), !dbg !1398
  %570 = icmp ult i64 %568, %561, !dbg !1795
  br i1 %570, label %571, label %573, !dbg !1798

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1795
  store i8 %563, i8* %572, align 1, !dbg !1795, !tbaa !830
  br label %573, !dbg !1795

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %574, metadata !1338, metadata !DIExpression()), !dbg !1398
  %575 = icmp eq i8 %562, 0, !dbg !1799
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1801
  call void @llvm.dbg.value(metadata i8 %576, metadata !1347, metadata !DIExpression()), !dbg !1398
  br label %577, !dbg !1802

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1756
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1398
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1403
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1747
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1407
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1398
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1409
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %584, metadata !1347, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %583, metadata !1346, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i8 %582, metadata !1345, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %581, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %580, metadata !1339, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %579, metadata !1338, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %578, metadata !1337, metadata !DIExpression()), !dbg !1398
  %586 = add i64 %578, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %586, metadata !1337, metadata !DIExpression()), !dbg !1398
  br label %121, !dbg !1804, !llvm.loop !1805

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1807
  %590 = and i1 %110, %589, !dbg !1809
  %591 = xor i1 %590, true, !dbg !1809
  %592 = or i1 %109, %591, !dbg !1809
  br i1 %592, label %593, label %635, !dbg !1809

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1810
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1810
  br i1 %597, label %598, label %607, !dbg !1810

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1812
  %600 = icmp eq i8 %599, 0, !dbg !1812
  br i1 %600, label %603, label %601, !dbg !1815

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1816
  br label %652, !dbg !1817

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1818
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1820
  br i1 %606, label %26, label %607, !dbg !1820

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1821
  %610 = and i1 %609, %608, !dbg !1823
  br i1 %610, label %611, label %626, !dbg !1823

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %123, metadata !1338, metadata !DIExpression()), !dbg !1398
  %612 = load i8, i8* %97, align 1, !dbg !1824, !tbaa !830
  %613 = icmp eq i8 %612, 0, !dbg !1827
  br i1 %613, label %626, label %614, !dbg !1827

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1340, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %617, metadata !1338, metadata !DIExpression()), !dbg !1398
  %618 = icmp ult i64 %617, %129, !dbg !1828
  br i1 %618, label %619, label %621, !dbg !1831

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1828
  store i8 %615, i8* %620, align 1, !dbg !1828, !tbaa !830
  br label %621, !dbg !1828

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %622, metadata !1338, metadata !DIExpression()), !dbg !1398
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1832
  call void @llvm.dbg.value(metadata i8* %623, metadata !1340, metadata !DIExpression()), !dbg !1398
  %624 = load i8, i8* %623, align 1, !dbg !1824, !tbaa !830
  %625 = icmp eq i8 %624, 0, !dbg !1827
  br i1 %625, label %626, label %614, !dbg !1827, !llvm.loop !1833

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1440
  call void @llvm.dbg.value(metadata i64 %627, metadata !1338, metadata !DIExpression()), !dbg !1398
  %628 = icmp ult i64 %627, %129, !dbg !1835
  br i1 %628, label %629, label %652, !dbg !1837

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1838
  store i8 0, i8* %630, align 1, !dbg !1839, !tbaa !830
  br label %652, !dbg !1838

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %637, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.label(metadata !1397), !dbg !1840
  %633 = icmp eq i8 %101, 0, !dbg !1841
  %634 = select i1 %633, i32 2, i32 4, !dbg !1841
  br label %642, !dbg !1841

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1329, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i64 %637, metadata !1331, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.label(metadata !1397), !dbg !1840
  %639 = icmp eq i32 %93, 2, !dbg !1843
  %640 = icmp eq i8 %636, 0, !dbg !1841
  %641 = select i1 %640, i32 2, i32 4, !dbg !1841
  br i1 %639, label %642, label %646, !dbg !1841

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1841

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1332, metadata !DIExpression()), !dbg !1398
  %650 = and i32 %5, -3, !dbg !1844
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1845
  br label %652, !dbg !1846

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1847
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1848 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1852, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i32 %1, metadata !1853, metadata !DIExpression()), !dbg !1856
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !1857
  call void @llvm.dbg.value(metadata i8* %3, metadata !1854, metadata !DIExpression()), !dbg !1856
  %4 = icmp eq i8* %3, %0, !dbg !1858
  br i1 %4, label %5, label %72, !dbg !1860

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !1861
  call void @llvm.dbg.value(metadata i8* %6, metadata !1855, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8* %6, metadata !1862, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8* undef, metadata !1868, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 85, metadata !1869, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 84, metadata !1870, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 70, metadata !1871, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 45, metadata !1872, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 56, metadata !1873, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1875, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1876, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1878
  %7 = load i8, i8* %6, align 1, !dbg !1881, !tbaa !830
  %8 = and i8 %7, -33, !dbg !1881
  %9 = sext i8 %8 to i32, !dbg !1881
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1881

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1883, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* undef, metadata !1888, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 84, metadata !1889, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 70, metadata !1890, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 45, metadata !1891, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 56, metadata !1892, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1893, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1894, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1895, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1896, metadata !DIExpression()), !dbg !1897
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1901
  %12 = load i8, i8* %11, align 1, !dbg !1901, !tbaa !830
  %13 = and i8 %12, -33, !dbg !1901
  %14 = icmp eq i8 %13, 84, !dbg !1901
  br i1 %14, label %15, label %69, !dbg !1901

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1903, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8* undef, metadata !1908, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 70, metadata !1909, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 45, metadata !1910, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 56, metadata !1911, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1914, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1915, metadata !DIExpression()), !dbg !1916
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1920
  %17 = load i8, i8* %16, align 1, !dbg !1920, !tbaa !830
  %18 = and i8 %17, -33, !dbg !1920
  %19 = icmp eq i8 %18, 70, !dbg !1920
  br i1 %19, label %20, label %69, !dbg !1920

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1922, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8* undef, metadata !1927, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 45, metadata !1928, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 56, metadata !1929, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8 0, metadata !1933, metadata !DIExpression()), !dbg !1934
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1938
  %22 = load i8, i8* %21, align 1, !dbg !1938, !tbaa !830
  %23 = icmp eq i8 %22, 45, !dbg !1938
  br i1 %23, label %24, label %69, !dbg !1940

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1941, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8* undef, metadata !1946, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 56, metadata !1947, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 0, metadata !1951, metadata !DIExpression()), !dbg !1952
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1956
  %26 = load i8, i8* %25, align 1, !dbg !1956, !tbaa !830
  %27 = icmp eq i8 %26, 56, !dbg !1956
  br i1 %27, label %28, label %69, !dbg !1958

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1959, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* undef, metadata !1964, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1965, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1966, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1969
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1973
  %30 = load i8, i8* %29, align 1, !dbg !1973, !tbaa !830
  %31 = icmp eq i8 %30, 0, !dbg !1973
  br i1 %31, label %32, label %69, !dbg !1975

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1976, !tbaa !830
  %34 = icmp eq i8 %33, 96, !dbg !1977
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !1976
  br label %72, !dbg !1978

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1883, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8* undef, metadata !1888, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 66, metadata !1889, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 49, metadata !1890, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 56, metadata !1891, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 48, metadata !1892, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 51, metadata !1893, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 48, metadata !1894, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1895, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1896, metadata !DIExpression()), !dbg !1979
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1983
  %38 = load i8, i8* %37, align 1, !dbg !1983, !tbaa !830
  %39 = and i8 %38, -33, !dbg !1983
  %40 = icmp eq i8 %39, 66, !dbg !1983
  br i1 %40, label %41, label %69, !dbg !1983

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1903, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8* undef, metadata !1908, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 49, metadata !1909, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 56, metadata !1910, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 48, metadata !1911, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 51, metadata !1912, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 48, metadata !1913, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 0, metadata !1914, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i8 0, metadata !1915, metadata !DIExpression()), !dbg !1984
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1986
  %43 = load i8, i8* %42, align 1, !dbg !1986, !tbaa !830
  %44 = icmp eq i8 %43, 49, !dbg !1986
  br i1 %44, label %45, label %69, !dbg !1987

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1922, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* undef, metadata !1927, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 56, metadata !1928, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 48, metadata !1929, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 51, metadata !1930, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 48, metadata !1931, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1932, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8 0, metadata !1933, metadata !DIExpression()), !dbg !1988
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1990
  %47 = load i8, i8* %46, align 1, !dbg !1990, !tbaa !830
  %48 = icmp eq i8 %47, 56, !dbg !1990
  br i1 %48, label %49, label %69, !dbg !1991

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1941, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8* undef, metadata !1946, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 48, metadata !1947, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 51, metadata !1948, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 48, metadata !1949, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 0, metadata !1951, metadata !DIExpression()), !dbg !1992
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1994
  %51 = load i8, i8* %50, align 1, !dbg !1994, !tbaa !830
  %52 = icmp eq i8 %51, 48, !dbg !1994
  br i1 %52, label %53, label %69, !dbg !1995

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1959, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* undef, metadata !1964, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 51, metadata !1965, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 48, metadata !1966, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 0, metadata !1967, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1996
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1998
  %55 = load i8, i8* %54, align 1, !dbg !1998, !tbaa !830
  %56 = icmp eq i8 %55, 51, !dbg !1998
  br i1 %56, label %57, label %69, !dbg !1999

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2000, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8* undef, metadata !2005, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 48, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !2008, metadata !DIExpression()), !dbg !2009
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2013
  %59 = load i8, i8* %58, align 1, !dbg !2013, !tbaa !830
  %60 = icmp eq i8 %59, 48, !dbg !2013
  br i1 %60, label %61, label %69, !dbg !2015

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2016, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8* undef, metadata !2021, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2024
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2028
  %63 = load i8, i8* %62, align 1, !dbg !2028, !tbaa !830
  %64 = icmp eq i8 %63, 0, !dbg !2028
  br i1 %64, label %65, label %69, !dbg !2030

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2031, !tbaa !830
  %67 = icmp eq i8 %66, 96, !dbg !2032
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2031
  br label %72, !dbg !2033

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2034
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2035
  br label %72, !dbg !2036

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1856
  ret i8* %73, !dbg !2037
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2038 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2042 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2048 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2052, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %1, metadata !2053, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2054, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %0, metadata !2056, metadata !DIExpression()) #25, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %1, metadata !2061, metadata !DIExpression()) #25, !dbg !2069
  call void @llvm.dbg.value(metadata i64* null, metadata !2062, metadata !DIExpression()) #25, !dbg !2069
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2063, metadata !DIExpression()) #25, !dbg !2069
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2071
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2064, metadata !DIExpression()) #25, !dbg !2069
  %6 = tail call i32* @__errno_location() #29, !dbg !2072
  %7 = load i32, i32* %6, align 4, !dbg !2072, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %7, metadata !2065, metadata !DIExpression()) #25, !dbg !2069
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2073
  %9 = load i32, i32* %8, align 4, !dbg !2073, !tbaa !1272
  %10 = or i32 %9, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %10, metadata !2066, metadata !DIExpression()) #25, !dbg !2069
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2075
  %12 = load i32, i32* %11, align 8, !dbg !2075, !tbaa !1221
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2076
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2077
  %15 = load i8*, i8** %14, align 8, !dbg !2077, !tbaa !1294
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2078
  %17 = load i8*, i8** %16, align 8, !dbg !2078, !tbaa !1297
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !2079
  %19 = add i64 %18, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %19, metadata !2067, metadata !DIExpression()) #25, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %19, metadata !2081, metadata !DIExpression()) #25, !dbg !2086
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !2088
  call void @llvm.dbg.value(metadata i8* %20, metadata !2068, metadata !DIExpression()) #25, !dbg !2069
  %21 = load i32, i32* %11, align 8, !dbg !2089, !tbaa !1221
  %22 = load i8*, i8** %14, align 8, !dbg !2090, !tbaa !1294
  %23 = load i8*, i8** %16, align 8, !dbg !2091, !tbaa !1297
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !2092
  store i32 %7, i32* %6, align 4, !dbg !2093, !tbaa !775
  ret i8* %20, !dbg !2094
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2057 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2056, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %1, metadata !2061, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64* %2, metadata !2062, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2063, metadata !DIExpression()), !dbg !2095
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2096
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2096
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2064, metadata !DIExpression()), !dbg !2095
  %7 = tail call i32* @__errno_location() #29, !dbg !2097
  %8 = load i32, i32* %7, align 4, !dbg !2097, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %8, metadata !2065, metadata !DIExpression()), !dbg !2095
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2098
  %10 = load i32, i32* %9, align 4, !dbg !2098, !tbaa !1272
  %11 = icmp eq i64* %2, null, !dbg !2099
  %12 = zext i1 %11 to i32, !dbg !2099
  %13 = or i32 %10, %12, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %13, metadata !2066, metadata !DIExpression()), !dbg !2095
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2101
  %15 = load i32, i32* %14, align 8, !dbg !2101, !tbaa !1221
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2102
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2103
  %18 = load i8*, i8** %17, align 8, !dbg !2103, !tbaa !1294
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2104
  %20 = load i8*, i8** %19, align 8, !dbg !2104, !tbaa !1297
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2105
  %22 = add i64 %21, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %22, metadata !2067, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %22, metadata !2081, metadata !DIExpression()) #25, !dbg !2107
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !2109
  call void @llvm.dbg.value(metadata i8* %23, metadata !2068, metadata !DIExpression()), !dbg !2095
  %24 = load i32, i32* %14, align 8, !dbg !2110, !tbaa !1221
  %25 = load i8*, i8** %17, align 8, !dbg !2111, !tbaa !1294
  %26 = load i8*, i8** %19, align 8, !dbg !2112, !tbaa !1297
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2113
  store i32 %8, i32* %7, align 4, !dbg !2114, !tbaa !775
  br i1 %11, label %29, label %28, !dbg !2115

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2116, !tbaa !2118
  br label %29, !dbg !2119

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2120
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2121 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2125, !tbaa !612
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2123, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 1, metadata !2124, metadata !DIExpression()), !dbg !2126
  %2 = load i32, i32* @nslots, align 4, !dbg !2127, !tbaa !775
  %3 = icmp sgt i32 %2, 1, !dbg !2130
  br i1 %3, label %4, label %12, !dbg !2131

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2130
  br label %6, !dbg !2131

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2124, metadata !DIExpression()), !dbg !2126
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2132
  %9 = load i8*, i8** %8, align 8, !dbg !2132, !tbaa !2133
  tail call void @free(i8* %9) #25, !dbg !2135
  %10 = add nuw nsw i64 %7, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %10, metadata !2124, metadata !DIExpression()), !dbg !2126
  %11 = icmp eq i64 %10, %5, !dbg !2130
  br i1 %11, label %12, label %6, !dbg !2131, !llvm.loop !2137

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2139
  %14 = load i8*, i8** %13, align 8, !dbg !2139, !tbaa !2133
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2141
  br i1 %15, label %17, label %16, !dbg !2142

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !2143
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2145, !tbaa !2146
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2147, !tbaa !2133
  br label %17, !dbg !2148

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2149
  br i1 %18, label %21, label %19, !dbg !2151

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2152
  tail call void @free(i8* %20) #25, !dbg !2154
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2155, !tbaa !612
  br label %21, !dbg !2156

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2157, !tbaa !775
  ret void, !dbg !2158
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2159 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2161, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8* %1, metadata !2162, metadata !DIExpression()), !dbg !2163
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2164
  ret i8* %3, !dbg !2165
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2170, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i8* %1, metadata !2171, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata i64 %2, metadata !2172, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2173, metadata !DIExpression()), !dbg !2185
  %5 = tail call i32* @__errno_location() #29, !dbg !2186
  %6 = load i32, i32* %5, align 4, !dbg !2186, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %6, metadata !2174, metadata !DIExpression()), !dbg !2185
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2187, !tbaa !612
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2175, metadata !DIExpression()), !dbg !2185
  %8 = icmp slt i32 %0, 0, !dbg !2188
  br i1 %8, label %9, label %10, !dbg !2190

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2191
  unreachable, !dbg !2191

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2192, !tbaa !775
  %12 = icmp sgt i32 %11, %0, !dbg !2193
  br i1 %12, label %34, label %13, !dbg !2194

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2195
  call void @llvm.dbg.value(metadata i1 %14, metadata !2176, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2196
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2179, metadata !DIExpression()), !dbg !2196
  %15 = icmp eq i32 %0, 2147483647, !dbg !2197
  br i1 %15, label %16, label %17, !dbg !2199

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2200
  unreachable, !dbg !2200

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2201
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2201
  %20 = add nuw nsw i32 %0, 1, !dbg !2202
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2203
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !2204
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2204
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2175, metadata !DIExpression()), !dbg !2185
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2205, !tbaa !612
  br i1 %14, label %25, label %26, !dbg !2206

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2207, !tbaa.struct !2209
  br label %26, !dbg !2210

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2211, !tbaa !775
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2212
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2213
  %31 = sub nsw i32 %20, %27, !dbg !2214
  %32 = sext i32 %31 to i64, !dbg !2215
  %33 = shl nsw i64 %32, 4, !dbg !2216
  call void @llvm.dbg.value(metadata i8* %30, metadata !1608, metadata !DIExpression()) #25, !dbg !2217
  call void @llvm.dbg.value(metadata i32 0, metadata !1614, metadata !DIExpression()) #25, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %33, metadata !1615, metadata !DIExpression()) #25, !dbg !2217
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2219
  store i32 %20, i32* @nslots, align 4, !dbg !2220, !tbaa !775
  br label %34, !dbg !2221

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2185
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2175, metadata !DIExpression()), !dbg !2185
  %36 = zext i32 %0 to i64, !dbg !2222
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2223
  %38 = load i64, i64* %37, align 8, !dbg !2223, !tbaa !2146
  call void @llvm.dbg.value(metadata i64 %38, metadata !2180, metadata !DIExpression()), !dbg !2224
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2225
  %40 = load i8*, i8** %39, align 8, !dbg !2225, !tbaa !2133
  call void @llvm.dbg.value(metadata i8* %40, metadata !2182, metadata !DIExpression()), !dbg !2224
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2226
  %42 = load i32, i32* %41, align 4, !dbg !2226, !tbaa !1272
  %43 = or i32 %42, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %43, metadata !2183, metadata !DIExpression()), !dbg !2224
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2228
  %45 = load i32, i32* %44, align 8, !dbg !2228, !tbaa !1221
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2229
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2230
  %48 = load i8*, i8** %47, align 8, !dbg !2230, !tbaa !1294
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2231
  %50 = load i8*, i8** %49, align 8, !dbg !2231, !tbaa !1297
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2232
  call void @llvm.dbg.value(metadata i64 %51, metadata !2184, metadata !DIExpression()), !dbg !2224
  %52 = icmp ugt i64 %38, %51, !dbg !2233
  br i1 %52, label %63, label %53, !dbg !2235

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %54, metadata !2180, metadata !DIExpression()), !dbg !2224
  store i64 %54, i64* %37, align 8, !dbg !2238, !tbaa !2146
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2239
  br i1 %55, label %57, label %56, !dbg !2241

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2242
  br label %57, !dbg !2242

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2081, metadata !DIExpression()) #25, !dbg !2243
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2245
  call void @llvm.dbg.value(metadata i8* %58, metadata !2182, metadata !DIExpression()), !dbg !2224
  store i8* %58, i8** %39, align 8, !dbg !2246, !tbaa !2133
  %59 = load i32, i32* %44, align 8, !dbg !2247, !tbaa !1221
  %60 = load i8*, i8** %47, align 8, !dbg !2248, !tbaa !1294
  %61 = load i8*, i8** %49, align 8, !dbg !2249, !tbaa !1297
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2250
  br label %63, !dbg !2251

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2224
  call void @llvm.dbg.value(metadata i8* %64, metadata !2182, metadata !DIExpression()), !dbg !2224
  store i32 %6, i32* %5, align 4, !dbg !2252, !tbaa !775
  ret i8* %64, !dbg !2253
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2258, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8* %1, metadata !2259, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 %2, metadata !2260, metadata !DIExpression()), !dbg !2261
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2262
  ret i8* %4, !dbg !2263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2264 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2266, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 0, metadata !2161, metadata !DIExpression()) #25, !dbg !2268
  call void @llvm.dbg.value(metadata i8* %0, metadata !2162, metadata !DIExpression()) #25, !dbg !2268
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2270
  ret i8* %2, !dbg !2271
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2272 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i64 %1, metadata !2277, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 0, metadata !2258, metadata !DIExpression()) #25, !dbg !2279
  call void @llvm.dbg.value(metadata i8* %0, metadata !2259, metadata !DIExpression()) #25, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %1, metadata !2260, metadata !DIExpression()) #25, !dbg !2279
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2281
  ret i8* %3, !dbg !2282
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2283 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2287, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 %1, metadata !2288, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i8* %2, metadata !2289, metadata !DIExpression()), !dbg !2291
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2292
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2292
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2290, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %1, metadata !2298, metadata !DIExpression()) #25, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2303, metadata !DIExpression()) #25, !dbg !2306
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2306, !alias.scope !2294
  %6 = icmp eq i32 %1, 10, !dbg !2307
  br i1 %6, label %7, label %8, !dbg !2309

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2310, !noalias !2294
  unreachable, !dbg !2310

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2311
  store i32 %1, i32* %9, align 8, !dbg !2312, !tbaa !1221, !alias.scope !2294
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2313
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2314
  ret i8* %10, !dbg !2315
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2316 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2320, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %1, metadata !2321, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8* %2, metadata !2322, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i64 %3, metadata !2323, metadata !DIExpression()), !dbg !2325
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2326
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2324, metadata !DIExpression()), !dbg !2327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %1, metadata !2298, metadata !DIExpression()) #25, !dbg !2332
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2303, metadata !DIExpression()) #25, !dbg !2334
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2334, !alias.scope !2328
  %7 = icmp eq i32 %1, 10, !dbg !2335
  br i1 %7, label %8, label %9, !dbg !2336

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2337, !noalias !2328
  unreachable, !dbg !2337

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2338
  store i32 %1, i32* %10, align 8, !dbg !2339, !tbaa !1221, !alias.scope !2328
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2340
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2341
  ret i8* %11, !dbg !2342
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2343 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %1, metadata !2348, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i32 0, metadata !2287, metadata !DIExpression()) #25, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %0, metadata !2288, metadata !DIExpression()) #25, !dbg !2350
  call void @llvm.dbg.value(metadata i8* %1, metadata !2289, metadata !DIExpression()) #25, !dbg !2350
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2352
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2352
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2290, metadata !DIExpression()) #25, !dbg !2353
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2354) #25, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %0, metadata !2298, metadata !DIExpression()) #25, !dbg !2358
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2303, metadata !DIExpression()) #25, !dbg !2360
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2360, !alias.scope !2354
  %5 = icmp eq i32 %0, 10, !dbg !2361
  br i1 %5, label %6, label %7, !dbg !2362

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2363, !noalias !2354
  unreachable, !dbg !2363

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2364
  store i32 %0, i32* %8, align 8, !dbg !2365, !tbaa !1221, !alias.scope !2354
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2366
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2367
  ret i8* %9, !dbg !2368
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2369 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %1, metadata !2374, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i64 %2, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 0, metadata !2320, metadata !DIExpression()) #25, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %0, metadata !2321, metadata !DIExpression()) #25, !dbg !2377
  call void @llvm.dbg.value(metadata i8* %1, metadata !2322, metadata !DIExpression()) #25, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %2, metadata !2323, metadata !DIExpression()) #25, !dbg !2377
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2379
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2379
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2324, metadata !DIExpression()) #25, !dbg !2380
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381) #25, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %0, metadata !2298, metadata !DIExpression()) #25, !dbg !2385
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2303, metadata !DIExpression()) #25, !dbg !2387
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2387, !alias.scope !2381
  %6 = icmp eq i32 %0, 10, !dbg !2388
  br i1 %6, label %7, label %8, !dbg !2389

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2390, !noalias !2381
  unreachable, !dbg !2390

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2391
  store i32 %0, i32* %9, align 8, !dbg !2392, !tbaa !1221, !alias.scope !2381
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2393
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2394
  ret i8* %10, !dbg !2395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2396 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i64 %1, metadata !2401, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8 %2, metadata !2402, metadata !DIExpression()), !dbg !2404
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2405
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2405
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2403, metadata !DIExpression()), !dbg !2406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2407, !tbaa.struct !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1239, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 %2, metadata !1240, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 1, metadata !1241, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 %2, metadata !1242, metadata !DIExpression()), !dbg !2409
  %6 = lshr i8 %2, 5, !dbg !2411
  %7 = zext i8 %6 to i64, !dbg !2411
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2412
  call void @llvm.dbg.value(metadata i32* %8, metadata !1243, metadata !DIExpression()), !dbg !2409
  %9 = and i8 %2, 31, !dbg !2413
  %10 = zext i8 %9 to i32, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %10, metadata !1245, metadata !DIExpression()), !dbg !2409
  %11 = load i32, i32* %8, align 4, !dbg !2414, !tbaa !775
  %12 = lshr i32 %11, %10, !dbg !2415
  %13 = and i32 %12, 1, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %13, metadata !1246, metadata !DIExpression()), !dbg !2409
  %14 = xor i32 %13, 1, !dbg !2417
  %15 = shl i32 %14, %10, !dbg !2418
  %16 = xor i32 %15, %11, !dbg !2419
  store i32 %16, i32* %8, align 4, !dbg !2419, !tbaa !775
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2420
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2421
  ret i8* %17, !dbg !2422
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2423 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8 %1, metadata !2428, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i8* %0, metadata !2400, metadata !DIExpression()) #25, !dbg !2430
  call void @llvm.dbg.value(metadata i64 -1, metadata !2401, metadata !DIExpression()) #25, !dbg !2430
  call void @llvm.dbg.value(metadata i8 %1, metadata !2402, metadata !DIExpression()) #25, !dbg !2430
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2432
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2403, metadata !DIExpression()) #25, !dbg !2433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2434, !tbaa.struct !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1239, metadata !DIExpression()) #25, !dbg !2435
  call void @llvm.dbg.value(metadata i8 %1, metadata !1240, metadata !DIExpression()) #25, !dbg !2435
  call void @llvm.dbg.value(metadata i32 1, metadata !1241, metadata !DIExpression()) #25, !dbg !2435
  call void @llvm.dbg.value(metadata i8 %1, metadata !1242, metadata !DIExpression()) #25, !dbg !2435
  %5 = lshr i8 %1, 5, !dbg !2437
  %6 = zext i8 %5 to i64, !dbg !2437
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2438
  call void @llvm.dbg.value(metadata i32* %7, metadata !1243, metadata !DIExpression()) #25, !dbg !2435
  %8 = and i8 %1, 31, !dbg !2439
  %9 = zext i8 %8 to i32, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %9, metadata !1245, metadata !DIExpression()) #25, !dbg !2435
  %10 = load i32, i32* %7, align 4, !dbg !2440, !tbaa !775
  %11 = lshr i32 %10, %9, !dbg !2441
  %12 = and i32 %11, 1, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %12, metadata !1246, metadata !DIExpression()) #25, !dbg !2435
  %13 = xor i32 %12, 1, !dbg !2443
  %14 = shl i32 %13, %9, !dbg !2444
  %15 = xor i32 %14, %10, !dbg !2445
  store i32 %15, i32* %7, align 4, !dbg !2445, !tbaa !775
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2446
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2447
  ret i8* %16, !dbg !2448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2449 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2451, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %0, metadata !2427, metadata !DIExpression()) #25, !dbg !2453
  call void @llvm.dbg.value(metadata i8 58, metadata !2428, metadata !DIExpression()) #25, !dbg !2453
  call void @llvm.dbg.value(metadata i8* %0, metadata !2400, metadata !DIExpression()) #25, !dbg !2455
  call void @llvm.dbg.value(metadata i64 -1, metadata !2401, metadata !DIExpression()) #25, !dbg !2455
  call void @llvm.dbg.value(metadata i8 58, metadata !2402, metadata !DIExpression()) #25, !dbg !2455
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2457
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2403, metadata !DIExpression()) #25, !dbg !2458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2459, !tbaa.struct !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1239, metadata !DIExpression()) #25, !dbg !2460
  call void @llvm.dbg.value(metadata i8 58, metadata !1240, metadata !DIExpression()) #25, !dbg !2460
  call void @llvm.dbg.value(metadata i32 1, metadata !1241, metadata !DIExpression()) #25, !dbg !2460
  call void @llvm.dbg.value(metadata i8 58, metadata !1242, metadata !DIExpression()) #25, !dbg !2460
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2462
  call void @llvm.dbg.value(metadata i32* %4, metadata !1243, metadata !DIExpression()) #25, !dbg !2460
  call void @llvm.dbg.value(metadata i32 26, metadata !1245, metadata !DIExpression()) #25, !dbg !2460
  %5 = load i32, i32* %4, align 4, !dbg !2463, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %5, metadata !1246, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2460
  %6 = or i32 %5, 67108864, !dbg !2464
  store i32 %6, i32* %4, align 4, !dbg !2464, !tbaa !775
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2465
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2466
  ret i8* %7, !dbg !2467
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2468 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1, metadata !2471, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %0, metadata !2400, metadata !DIExpression()) #25, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %1, metadata !2401, metadata !DIExpression()) #25, !dbg !2473
  call void @llvm.dbg.value(metadata i8 58, metadata !2402, metadata !DIExpression()) #25, !dbg !2473
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2475
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2475
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2403, metadata !DIExpression()) #25, !dbg !2476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2477, !tbaa.struct !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1239, metadata !DIExpression()) #25, !dbg !2478
  call void @llvm.dbg.value(metadata i8 58, metadata !1240, metadata !DIExpression()) #25, !dbg !2478
  call void @llvm.dbg.value(metadata i32 1, metadata !1241, metadata !DIExpression()) #25, !dbg !2478
  call void @llvm.dbg.value(metadata i8 58, metadata !1242, metadata !DIExpression()) #25, !dbg !2478
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2480
  call void @llvm.dbg.value(metadata i32* %5, metadata !1243, metadata !DIExpression()) #25, !dbg !2478
  call void @llvm.dbg.value(metadata i32 26, metadata !1245, metadata !DIExpression()) #25, !dbg !2478
  %6 = load i32, i32* %5, align 4, !dbg !2481, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %6, metadata !1246, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2478
  %7 = or i32 %6, 67108864, !dbg !2482
  store i32 %7, i32* %5, align 4, !dbg !2482, !tbaa !775
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2483
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2484
  ret i8* %8, !dbg !2485
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2486 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2303, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2492
  call void @llvm.dbg.value(metadata i32 %0, metadata !2488, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %1, metadata !2489, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8* %2, metadata !2490, metadata !DIExpression()), !dbg !2494
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2495
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2495
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2491, metadata !DIExpression()), !dbg !2496
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2498), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %1, metadata !2298, metadata !DIExpression()) #25, !dbg !2501
  call void @llvm.dbg.value(metadata i32 0, metadata !2303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2501
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2492, !alias.scope !2498
  %8 = icmp eq i32 %1, 10, !dbg !2502
  br i1 %8, label %9, label %10, !dbg !2503

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2504, !noalias !2498
  unreachable, !dbg !2504

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2303, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2501
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2497
  store i32 %1, i32* %11, align 8, !dbg !2497, !tbaa.struct !2408
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2497
  %13 = bitcast i32* %12 to i8*, !dbg !2497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2497, !tbaa.struct !2505
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2497
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1239, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 58, metadata !1240, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 1, metadata !1241, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 58, metadata !1242, metadata !DIExpression()), !dbg !2506
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2508
  call void @llvm.dbg.value(metadata i32* %14, metadata !1243, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 26, metadata !1245, metadata !DIExpression()), !dbg !2506
  %15 = load i32, i32* %14, align 4, !dbg !2509, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %15, metadata !1246, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2506
  %16 = or i32 %15, 67108864, !dbg !2510
  store i32 %16, i32* %14, align 4, !dbg !2510, !tbaa !775
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2511
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2512
  ret i8* %17, !dbg !2513
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2514 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2518, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8* %1, metadata !2519, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8* %2, metadata !2520, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8* %3, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i32 %0, metadata !2523, metadata !DIExpression()) #25, !dbg !2533
  call void @llvm.dbg.value(metadata i8* %1, metadata !2528, metadata !DIExpression()) #25, !dbg !2533
  call void @llvm.dbg.value(metadata i8* %2, metadata !2529, metadata !DIExpression()) #25, !dbg !2533
  call void @llvm.dbg.value(metadata i8* %3, metadata !2530, metadata !DIExpression()) #25, !dbg !2533
  call void @llvm.dbg.value(metadata i64 -1, metadata !2531, metadata !DIExpression()) #25, !dbg !2533
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2535
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2532, metadata !DIExpression()) #25, !dbg !2536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2537, !tbaa.struct !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1279, metadata !DIExpression()) #25, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %1, metadata !1280, metadata !DIExpression()) #25, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %2, metadata !1281, metadata !DIExpression()) #25, !dbg !2538
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1279, metadata !DIExpression()) #25, !dbg !2538
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2540
  store i32 10, i32* %7, align 8, !dbg !2541, !tbaa !1221
  %8 = icmp ne i8* %1, null, !dbg !2542
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2543
  br i1 %10, label %12, label %11, !dbg !2543

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2544
  unreachable, !dbg !2544

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2545
  store i8* %1, i8** %13, align 8, !dbg !2546, !tbaa !1294
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2547
  store i8* %2, i8** %14, align 8, !dbg !2548, !tbaa !1297
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !2549
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2550
  ret i8* %15, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2524 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2523, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %1, metadata !2528, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %2, metadata !2529, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %3, metadata !2530, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %4, metadata !2531, metadata !DIExpression()), !dbg !2552
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2553
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2553
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2532, metadata !DIExpression()), !dbg !2554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2555, !tbaa.struct !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1279, metadata !DIExpression()) #25, !dbg !2556
  call void @llvm.dbg.value(metadata i8* %1, metadata !1280, metadata !DIExpression()) #25, !dbg !2556
  call void @llvm.dbg.value(metadata i8* %2, metadata !1281, metadata !DIExpression()) #25, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1279, metadata !DIExpression()) #25, !dbg !2556
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2558
  store i32 10, i32* %8, align 8, !dbg !2559, !tbaa !1221
  %9 = icmp ne i8* %1, null, !dbg !2560
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2561
  br i1 %11, label %13, label %12, !dbg !2561

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !2562
  unreachable, !dbg !2562

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2563
  store i8* %1, i8** %14, align 8, !dbg !2564, !tbaa !1294
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2565
  store i8* %2, i8** %15, align 8, !dbg !2566, !tbaa !1297
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2567
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2568
  ret i8* %16, !dbg !2569
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2570 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %1, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %2, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2518, metadata !DIExpression()) #25, !dbg !2578
  call void @llvm.dbg.value(metadata i8* %0, metadata !2519, metadata !DIExpression()) #25, !dbg !2578
  call void @llvm.dbg.value(metadata i8* %1, metadata !2520, metadata !DIExpression()) #25, !dbg !2578
  call void @llvm.dbg.value(metadata i8* %2, metadata !2521, metadata !DIExpression()) #25, !dbg !2578
  call void @llvm.dbg.value(metadata i32 0, metadata !2523, metadata !DIExpression()) #25, !dbg !2580
  call void @llvm.dbg.value(metadata i8* %0, metadata !2528, metadata !DIExpression()) #25, !dbg !2580
  call void @llvm.dbg.value(metadata i8* %1, metadata !2529, metadata !DIExpression()) #25, !dbg !2580
  call void @llvm.dbg.value(metadata i8* %2, metadata !2530, metadata !DIExpression()) #25, !dbg !2580
  call void @llvm.dbg.value(metadata i64 -1, metadata !2531, metadata !DIExpression()) #25, !dbg !2580
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2582
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2582
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2532, metadata !DIExpression()) #25, !dbg !2583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2584, !tbaa.struct !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1279, metadata !DIExpression()) #25, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %0, metadata !1280, metadata !DIExpression()) #25, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %1, metadata !1281, metadata !DIExpression()) #25, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1279, metadata !DIExpression()) #25, !dbg !2585
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2587
  store i32 10, i32* %6, align 8, !dbg !2588, !tbaa !1221
  %7 = icmp ne i8* %0, null, !dbg !2589
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2590
  br i1 %9, label %11, label %10, !dbg !2590

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2591
  unreachable, !dbg !2591

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2592
  store i8* %0, i8** %12, align 8, !dbg !2593, !tbaa !1294
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2594
  store i8* %1, i8** %13, align 8, !dbg !2595, !tbaa !1297
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !2596
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2597
  ret i8* %14, !dbg !2598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2599 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2603, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8* %1, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8* %2, metadata !2605, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i64 %3, metadata !2606, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 0, metadata !2523, metadata !DIExpression()) #25, !dbg !2608
  call void @llvm.dbg.value(metadata i8* %0, metadata !2528, metadata !DIExpression()) #25, !dbg !2608
  call void @llvm.dbg.value(metadata i8* %1, metadata !2529, metadata !DIExpression()) #25, !dbg !2608
  call void @llvm.dbg.value(metadata i8* %2, metadata !2530, metadata !DIExpression()) #25, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %3, metadata !2531, metadata !DIExpression()) #25, !dbg !2608
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2610
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2610
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2532, metadata !DIExpression()) #25, !dbg !2611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2612, !tbaa.struct !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1279, metadata !DIExpression()) #25, !dbg !2613
  call void @llvm.dbg.value(metadata i8* %0, metadata !1280, metadata !DIExpression()) #25, !dbg !2613
  call void @llvm.dbg.value(metadata i8* %1, metadata !1281, metadata !DIExpression()) #25, !dbg !2613
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1279, metadata !DIExpression()) #25, !dbg !2613
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2615
  store i32 10, i32* %7, align 8, !dbg !2616, !tbaa !1221
  %8 = icmp ne i8* %0, null, !dbg !2617
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2618
  br i1 %10, label %12, label %11, !dbg !2618

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2619
  unreachable, !dbg !2619

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2620
  store i8* %0, i8** %13, align 8, !dbg !2621, !tbaa !1294
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2622
  store i8* %1, i8** %14, align 8, !dbg !2623, !tbaa !1297
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !2624
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2625
  ret i8* %15, !dbg !2626
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2627 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2631, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i8* %1, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 %2, metadata !2633, metadata !DIExpression()), !dbg !2634
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2635
  ret i8* %4, !dbg !2636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2637 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2641, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64 %1, metadata !2642, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i32 0, metadata !2631, metadata !DIExpression()) #25, !dbg !2644
  call void @llvm.dbg.value(metadata i8* %0, metadata !2632, metadata !DIExpression()) #25, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %1, metadata !2633, metadata !DIExpression()) #25, !dbg !2644
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2646
  ret i8* %3, !dbg !2647
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2652, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8* %1, metadata !2653, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i32 %0, metadata !2631, metadata !DIExpression()) #25, !dbg !2655
  call void @llvm.dbg.value(metadata i8* %1, metadata !2632, metadata !DIExpression()) #25, !dbg !2655
  call void @llvm.dbg.value(metadata i64 -1, metadata !2633, metadata !DIExpression()) #25, !dbg !2655
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2657
  ret i8* %3, !dbg !2658
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2659 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 0, metadata !2652, metadata !DIExpression()) #25, !dbg !2665
  call void @llvm.dbg.value(metadata i8* %0, metadata !2653, metadata !DIExpression()) #25, !dbg !2665
  call void @llvm.dbg.value(metadata i32 0, metadata !2631, metadata !DIExpression()) #25, !dbg !2667
  call void @llvm.dbg.value(metadata i8* %0, metadata !2632, metadata !DIExpression()) #25, !dbg !2667
  call void @llvm.dbg.value(metadata i64 -1, metadata !2633, metadata !DIExpression()) #25, !dbg !2667
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2669
  ret i8* %2, !dbg !2670
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2671 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2710, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8* %1, metadata !2711, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8* %2, metadata !2712, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8* %3, metadata !2713, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8** %4, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %5, metadata !2715, metadata !DIExpression()), !dbg !2716
  %7 = icmp eq i8* %1, null, !dbg !2717
  br i1 %7, label %10, label %8, !dbg !2719

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !2720
  br label %12, !dbg !2720

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.80, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !2721
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.81, i64 0, i64 0), i32 5) #25, !dbg !2722
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !2722
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2723
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.83, i64 0, i64 0), i32 5) #25, !dbg !2724
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.84, i64 0, i64 0)) #25, !dbg !2724
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2725
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
  ], !dbg !2726

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.85, i64 0, i64 0), i32 5) #25, !dbg !2727
  %21 = load i8*, i8** %4, align 8, !dbg !2727, !tbaa !612
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !2727
  br label %147, !dbg !2729

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.86, i64 0, i64 0), i32 5) #25, !dbg !2730
  %25 = load i8*, i8** %4, align 8, !dbg !2730, !tbaa !612
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2730
  %27 = load i8*, i8** %26, align 8, !dbg !2730, !tbaa !612
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !2730
  br label %147, !dbg !2731

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.87, i64 0, i64 0), i32 5) #25, !dbg !2732
  %31 = load i8*, i8** %4, align 8, !dbg !2732, !tbaa !612
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2732
  %33 = load i8*, i8** %32, align 8, !dbg !2732, !tbaa !612
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2732
  %35 = load i8*, i8** %34, align 8, !dbg !2732, !tbaa !612
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !2732
  br label %147, !dbg !2733

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.88, i64 0, i64 0), i32 5) #25, !dbg !2734
  %39 = load i8*, i8** %4, align 8, !dbg !2734, !tbaa !612
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2734
  %41 = load i8*, i8** %40, align 8, !dbg !2734, !tbaa !612
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2734
  %43 = load i8*, i8** %42, align 8, !dbg !2734, !tbaa !612
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2734
  %45 = load i8*, i8** %44, align 8, !dbg !2734, !tbaa !612
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !2734
  br label %147, !dbg !2735

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.89, i64 0, i64 0), i32 5) #25, !dbg !2736
  %49 = load i8*, i8** %4, align 8, !dbg !2736, !tbaa !612
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2736
  %51 = load i8*, i8** %50, align 8, !dbg !2736, !tbaa !612
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2736
  %53 = load i8*, i8** %52, align 8, !dbg !2736, !tbaa !612
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2736
  %55 = load i8*, i8** %54, align 8, !dbg !2736, !tbaa !612
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2736
  %57 = load i8*, i8** %56, align 8, !dbg !2736, !tbaa !612
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !2736
  br label %147, !dbg !2737

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.90, i64 0, i64 0), i32 5) #25, !dbg !2738
  %61 = load i8*, i8** %4, align 8, !dbg !2738, !tbaa !612
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2738
  %63 = load i8*, i8** %62, align 8, !dbg !2738, !tbaa !612
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2738
  %65 = load i8*, i8** %64, align 8, !dbg !2738, !tbaa !612
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2738
  %67 = load i8*, i8** %66, align 8, !dbg !2738, !tbaa !612
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2738
  %69 = load i8*, i8** %68, align 8, !dbg !2738, !tbaa !612
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2738
  %71 = load i8*, i8** %70, align 8, !dbg !2738, !tbaa !612
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !2738
  br label %147, !dbg !2739

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.91, i64 0, i64 0), i32 5) #25, !dbg !2740
  %75 = load i8*, i8** %4, align 8, !dbg !2740, !tbaa !612
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2740
  %77 = load i8*, i8** %76, align 8, !dbg !2740, !tbaa !612
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2740
  %79 = load i8*, i8** %78, align 8, !dbg !2740, !tbaa !612
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2740
  %81 = load i8*, i8** %80, align 8, !dbg !2740, !tbaa !612
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2740
  %83 = load i8*, i8** %82, align 8, !dbg !2740, !tbaa !612
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2740
  %85 = load i8*, i8** %84, align 8, !dbg !2740, !tbaa !612
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2740
  %87 = load i8*, i8** %86, align 8, !dbg !2740, !tbaa !612
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !2740
  br label %147, !dbg !2741

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.92, i64 0, i64 0), i32 5) #25, !dbg !2742
  %91 = load i8*, i8** %4, align 8, !dbg !2742, !tbaa !612
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2742
  %93 = load i8*, i8** %92, align 8, !dbg !2742, !tbaa !612
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2742
  %95 = load i8*, i8** %94, align 8, !dbg !2742, !tbaa !612
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2742
  %97 = load i8*, i8** %96, align 8, !dbg !2742, !tbaa !612
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2742
  %99 = load i8*, i8** %98, align 8, !dbg !2742, !tbaa !612
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2742
  %101 = load i8*, i8** %100, align 8, !dbg !2742, !tbaa !612
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2742
  %103 = load i8*, i8** %102, align 8, !dbg !2742, !tbaa !612
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2742
  %105 = load i8*, i8** %104, align 8, !dbg !2742, !tbaa !612
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !2742
  br label %147, !dbg !2743

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.93, i64 0, i64 0), i32 5) #25, !dbg !2744
  %109 = load i8*, i8** %4, align 8, !dbg !2744, !tbaa !612
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2744
  %111 = load i8*, i8** %110, align 8, !dbg !2744, !tbaa !612
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2744
  %113 = load i8*, i8** %112, align 8, !dbg !2744, !tbaa !612
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2744
  %115 = load i8*, i8** %114, align 8, !dbg !2744, !tbaa !612
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2744
  %117 = load i8*, i8** %116, align 8, !dbg !2744, !tbaa !612
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2744
  %119 = load i8*, i8** %118, align 8, !dbg !2744, !tbaa !612
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2744
  %121 = load i8*, i8** %120, align 8, !dbg !2744, !tbaa !612
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2744
  %123 = load i8*, i8** %122, align 8, !dbg !2744, !tbaa !612
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2744
  %125 = load i8*, i8** %124, align 8, !dbg !2744, !tbaa !612
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !2744
  br label %147, !dbg !2745

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.94, i64 0, i64 0), i32 5) #25, !dbg !2746
  %129 = load i8*, i8** %4, align 8, !dbg !2746, !tbaa !612
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2746
  %131 = load i8*, i8** %130, align 8, !dbg !2746, !tbaa !612
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2746
  %133 = load i8*, i8** %132, align 8, !dbg !2746, !tbaa !612
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2746
  %135 = load i8*, i8** %134, align 8, !dbg !2746, !tbaa !612
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2746
  %137 = load i8*, i8** %136, align 8, !dbg !2746, !tbaa !612
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2746
  %139 = load i8*, i8** %138, align 8, !dbg !2746, !tbaa !612
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2746
  %141 = load i8*, i8** %140, align 8, !dbg !2746, !tbaa !612
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2746
  %143 = load i8*, i8** %142, align 8, !dbg !2746, !tbaa !612
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2746
  %145 = load i8*, i8** %144, align 8, !dbg !2746, !tbaa !612
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !2746
  br label %147, !dbg !2747

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2749 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2753, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !2754, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %2, metadata !2755, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %3, metadata !2756, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8** %4, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 0, metadata !2758, metadata !DIExpression()), !dbg !2759
  br label %6, !dbg !2760

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2762
  call void @llvm.dbg.value(metadata i64 %7, metadata !2758, metadata !DIExpression()), !dbg !2759
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2763
  %9 = load i8*, i8** %8, align 8, !dbg !2763, !tbaa !612
  %10 = icmp eq i8* %9, null, !dbg !2765
  %11 = add i64 %7, 1, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %11, metadata !2758, metadata !DIExpression()), !dbg !2759
  br i1 %10, label %12, label %6, !dbg !2765, !llvm.loop !2767

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2769
  ret void, !dbg !2770
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2771 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2782, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %1, metadata !2783, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %2, metadata !2784, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %3, metadata !2785, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2786, metadata !DIExpression()), !dbg !2790
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2791
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2788, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 0, metadata !2787, metadata !DIExpression()), !dbg !2790
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2787, metadata !DIExpression()), !dbg !2790
  %11 = load i32, i32* %8, align 8, !dbg !2793
  %12 = icmp ult i32 %11, 41, !dbg !2793
  br i1 %12, label %13, label %18, !dbg !2793

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2793
  %15 = zext i32 %11 to i64, !dbg !2793
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2793
  %17 = add nuw nsw i32 %11, 8, !dbg !2793
  store i32 %17, i32* %8, align 8, !dbg !2793
  br label %21, !dbg !2793

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2793
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2793
  store i8* %20, i8** %9, align 8, !dbg !2793
  br label %21, !dbg !2793

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2793
  %25 = load i8*, i8** %24, align 8, !dbg !2793
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2796
  store i8* %25, i8** %26, align 16, !dbg !2797, !tbaa !612
  %27 = icmp eq i8* %25, null, !dbg !2798
  br i1 %27, label %30, label %28, !dbg !2799

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 1, metadata !2787, metadata !DIExpression()), !dbg !2790
  %29 = icmp ult i32 %22, 41, !dbg !2793
  br i1 %29, label %35, label %32, !dbg !2793

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2800
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2801
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2802
  ret void, !dbg !2802

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2793
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2793
  store i8* %34, i8** %9, align 8, !dbg !2793
  br label %40, !dbg !2793

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2793
  %37 = zext i32 %22 to i64, !dbg !2793
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2793
  %39 = add nuw nsw i32 %22, 8, !dbg !2793
  store i32 %39, i32* %8, align 8, !dbg !2793
  br label %40, !dbg !2793

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2793
  %44 = load i8*, i8** %43, align 8, !dbg !2793
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2796
  store i8* %44, i8** %45, align 8, !dbg !2797, !tbaa !612
  %46 = icmp eq i8* %44, null, !dbg !2798
  br i1 %46, label %30, label %47, !dbg !2799

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 2, metadata !2787, metadata !DIExpression()), !dbg !2790
  %48 = icmp ult i32 %41, 41, !dbg !2793
  br i1 %48, label %52, label %49, !dbg !2793

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2793
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2793
  store i8* %51, i8** %9, align 8, !dbg !2793
  br label %57, !dbg !2793

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2793
  %54 = zext i32 %41 to i64, !dbg !2793
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2793
  %56 = add nuw nsw i32 %41, 8, !dbg !2793
  store i32 %56, i32* %8, align 8, !dbg !2793
  br label %57, !dbg !2793

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2793
  %61 = load i8*, i8** %60, align 8, !dbg !2793
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2796
  store i8* %61, i8** %62, align 16, !dbg !2797, !tbaa !612
  %63 = icmp eq i8* %61, null, !dbg !2798
  br i1 %63, label %30, label %64, !dbg !2799

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 3, metadata !2787, metadata !DIExpression()), !dbg !2790
  %65 = icmp ult i32 %58, 41, !dbg !2793
  br i1 %65, label %69, label %66, !dbg !2793

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2793
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2793
  store i8* %68, i8** %9, align 8, !dbg !2793
  br label %74, !dbg !2793

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2793
  %71 = zext i32 %58 to i64, !dbg !2793
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2793
  %73 = add nuw nsw i32 %58, 8, !dbg !2793
  store i32 %73, i32* %8, align 8, !dbg !2793
  br label %74, !dbg !2793

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2793
  %78 = load i8*, i8** %77, align 8, !dbg !2793
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2796
  store i8* %78, i8** %79, align 8, !dbg !2797, !tbaa !612
  %80 = icmp eq i8* %78, null, !dbg !2798
  br i1 %80, label %30, label %81, !dbg !2799

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 4, metadata !2787, metadata !DIExpression()), !dbg !2790
  %82 = icmp ult i32 %75, 41, !dbg !2793
  br i1 %82, label %86, label %83, !dbg !2793

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2793
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2793
  store i8* %85, i8** %9, align 8, !dbg !2793
  br label %91, !dbg !2793

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2793
  %88 = zext i32 %75 to i64, !dbg !2793
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2793
  %90 = add nuw nsw i32 %75, 8, !dbg !2793
  store i32 %90, i32* %8, align 8, !dbg !2793
  br label %91, !dbg !2793

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2793
  %95 = load i8*, i8** %94, align 8, !dbg !2793
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2796
  store i8* %95, i8** %96, align 16, !dbg !2797, !tbaa !612
  %97 = icmp eq i8* %95, null, !dbg !2798
  br i1 %97, label %30, label %98, !dbg !2799

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2787, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 5, metadata !2787, metadata !DIExpression()), !dbg !2790
  %99 = icmp ult i32 %92, 41, !dbg !2793
  br i1 %99, label %103, label %100, !dbg !2793

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2793
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2793
  store i8* %102, i8** %9, align 8, !dbg !2793
  br label %108, !dbg !2793

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2793
  %105 = zext i32 %92 to i64, !dbg !2793
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2793
  %107 = add nuw nsw i32 %92, 8, !dbg !2793
  store i32 %107, i32* %8, align 8, !dbg !2793
  br label %108, !dbg !2793

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2793
  %111 = load i8*, i8** %110, align 8, !dbg !2793
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2796
  store i8* %111, i8** %112, align 8, !dbg !2797, !tbaa !612
  %113 = icmp eq i8* %111, null, !dbg !2798
  br i1 %113, label %30, label %114, !dbg !2799

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2787, metadata !DIExpression()), !dbg !2790
  %115 = load i8*, i8** %9, align 8, !dbg !2793
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2793
  store i8* %116, i8** %9, align 8, !dbg !2793
  %117 = bitcast i8* %115 to i8**, !dbg !2793
  %118 = load i8*, i8** %117, align 8, !dbg !2793
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2796
  store i8* %118, i8** %119, align 16, !dbg !2797, !tbaa !612
  %120 = icmp eq i8* %118, null, !dbg !2798
  br i1 %120, label %30, label %121, !dbg !2799

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2787, metadata !DIExpression()), !dbg !2790
  %122 = load i8*, i8** %9, align 8, !dbg !2793
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2793
  store i8* %123, i8** %9, align 8, !dbg !2793
  %124 = bitcast i8* %122 to i8**, !dbg !2793
  %125 = load i8*, i8** %124, align 8, !dbg !2793
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2796
  store i8* %125, i8** %126, align 8, !dbg !2797, !tbaa !612
  %127 = icmp eq i8* %125, null, !dbg !2798
  br i1 %127, label %30, label %128, !dbg !2799

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2787, metadata !DIExpression()), !dbg !2790
  %129 = load i8*, i8** %9, align 8, !dbg !2793
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2793
  store i8* %130, i8** %9, align 8, !dbg !2793
  %131 = bitcast i8* %129 to i8**, !dbg !2793
  %132 = load i8*, i8** %131, align 8, !dbg !2793
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2796
  store i8* %132, i8** %133, align 16, !dbg !2797, !tbaa !612
  %134 = icmp eq i8* %132, null, !dbg !2798
  br i1 %134, label %30, label %135, !dbg !2799

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2787, metadata !DIExpression()), !dbg !2790
  %136 = load i8*, i8** %9, align 8, !dbg !2793
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2793
  store i8* %137, i8** %9, align 8, !dbg !2793
  %138 = bitcast i8* %136 to i8**, !dbg !2793
  %139 = load i8*, i8** %138, align 8, !dbg !2793
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2796
  store i8* %139, i8** %140, align 8, !dbg !2797, !tbaa !612
  %141 = icmp eq i8* %139, null, !dbg !2798
  %142 = select i1 %141, i64 9, i64 10, !dbg !2799
  br label %30, !dbg !2799
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2803 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2807, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* %1, metadata !2808, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* %2, metadata !2809, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* %3, metadata !2810, metadata !DIExpression()), !dbg !2816
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2817
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2817
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2811, metadata !DIExpression()), !dbg !2818
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2819
  call void @llvm.va_start(i8* nonnull %6), !dbg !2819
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2820
  call void @llvm.va_end(i8* nonnull %6), !dbg !2821
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2822
  ret void, !dbg !2822
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2823 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2824, !tbaa !612
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.82, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2824
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.97, i64 0, i64 0), i32 5) #25, !dbg !2825
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.98, i64 0, i64 0)) #25, !dbg !2825
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.99, i64 0, i64 0), i32 5) #25, !dbg !2826
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.100, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.101, i64 0, i64 0)) #25, !dbg !2826
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.102, i64 0, i64 0), i32 5) #25, !dbg !2827
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.103, i64 0, i64 0)) #25, !dbg !2827
  ret void, !dbg !2828
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !2829 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i64 %1, metadata !2834, metadata !DIExpression()), !dbg !2835
  %3 = udiv i64 9223372036854775807, %1, !dbg !2836
  %4 = icmp ult i64 %3, %0, !dbg !2836
  br i1 %4, label %5, label %6, !dbg !2838

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2839
  unreachable, !dbg !2839

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()) #25, !dbg !2847
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !2849
  call void @llvm.dbg.value(metadata i8* %8, metadata !2846, metadata !DIExpression()) #25, !dbg !2847
  %9 = icmp eq i8* %8, null, !dbg !2850
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2852
  br i1 %11, label %12, label %13, !dbg !2852

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !2853
  unreachable, !dbg !2853

13:                                               ; preds = %6
  ret i8* %8, !dbg !2854
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2842 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2841, metadata !DIExpression()), !dbg !2855
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2856
  call void @llvm.dbg.value(metadata i8* %2, metadata !2846, metadata !DIExpression()), !dbg !2855
  %3 = icmp eq i8* %2, null, !dbg !2857
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2858
  br i1 %5, label %6, label %7, !dbg !2858

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2859
  unreachable, !dbg !2859

7:                                                ; preds = %1
  ret i8* %2, !dbg !2860
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !2861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %1, metadata !2866, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %2, metadata !2867, metadata !DIExpression()), !dbg !2868
  %4 = udiv i64 9223372036854775807, %2, !dbg !2869
  %5 = icmp ult i64 %4, %1, !dbg !2869
  br i1 %5, label %6, label %7, !dbg !2871

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !2872
  unreachable, !dbg !2872

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()) #25, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %8, metadata !2879, metadata !DIExpression()) #25, !dbg !2880
  %9 = icmp eq i64 %8, 0, !dbg !2882
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2884
  br i1 %11, label %12, label %13, !dbg !2884

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !2885
  br label %19, !dbg !2887

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %14, metadata !2874, metadata !DIExpression()) #25, !dbg !2880
  %15 = icmp eq i8* %14, null, !dbg !2889
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2891
  br i1 %17, label %18, label %19, !dbg !2891

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2892
  unreachable, !dbg !2892

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2880
  ret i8* %20, !dbg !2893
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2875 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %1, metadata !2879, metadata !DIExpression()), !dbg !2894
  %3 = icmp eq i64 %1, 0, !dbg !2895
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2896
  br i1 %5, label %6, label %7, !dbg !2896

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !2897
  br label %13, !dbg !2898

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %8, metadata !2874, metadata !DIExpression()), !dbg !2894
  %9 = icmp eq i8* %8, null, !dbg !2900
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2901
  br i1 %11, label %12, label %13, !dbg !2901

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2902
  unreachable, !dbg !2902

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2894
  ret i8* %14, !dbg !2903
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !177, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64* %1, metadata !178, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %2, metadata !179, metadata !DIExpression()), !dbg !2904
  %4 = load i64, i64* %1, align 8, !dbg !2905, !tbaa !2118
  call void @llvm.dbg.value(metadata i64 %4, metadata !180, metadata !DIExpression()), !dbg !2904
  %5 = icmp eq i8* %0, null, !dbg !2906
  br i1 %5, label %6, label %20, !dbg !2908

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2909
  br i1 %7, label %8, label %13, !dbg !2912

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %9, metadata !180, metadata !DIExpression()), !dbg !2904
  %10 = icmp ugt i64 %2, 128, !dbg !2915
  %11 = zext i1 %10 to i64, !dbg !2915
  %12 = add nuw nsw i64 %9, %11, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %12, metadata !180, metadata !DIExpression()), !dbg !2904
  br label %13, !dbg !2917

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2904
  call void @llvm.dbg.value(metadata i64 %14, metadata !180, metadata !DIExpression()), !dbg !2904
  %15 = udiv i64 9223372036854775807, %2, !dbg !2918
  %16 = icmp ult i64 %15, %14, !dbg !2918
  br i1 %16, label %19, label %17, !dbg !2920

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !180, metadata !DIExpression()), !dbg !2904
  store i64 %14, i64* %1, align 8, !dbg !2921, !tbaa !2118
  %18 = mul i64 %14, %2, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()) #25, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %28, metadata !2879, metadata !DIExpression()) #25, !dbg !2923
  br label %31, !dbg !2925

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2926
  unreachable, !dbg !2926

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2927
  %22 = icmp ugt i64 %21, %4, !dbg !2930
  br i1 %22, label %24, label %23, !dbg !2931

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !2932
  unreachable, !dbg !2932

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2933
  %26 = add nuw i64 %4, 1, !dbg !2934
  %27 = add i64 %26, %25, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %27, metadata !180, metadata !DIExpression()), !dbg !2904
  store i64 %27, i64* %1, align 8, !dbg !2921, !tbaa !2118
  %28 = mul i64 %27, %2, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()) #25, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %28, metadata !2879, metadata !DIExpression()) #25, !dbg !2923
  %29 = icmp eq i64 %28, 0, !dbg !2936
  br i1 %29, label %30, label %31, !dbg !2925

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !2937
  br label %38, !dbg !2938

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %33, metadata !2874, metadata !DIExpression()) #25, !dbg !2923
  %34 = icmp eq i8* %33, null, !dbg !2940
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2941
  br i1 %36, label %37, label %38, !dbg !2941

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !2942
  unreachable, !dbg !2942

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2923
  ret i8* %39, !dbg !2943
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !2944 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %0, metadata !2841, metadata !DIExpression()) #25, !dbg !2948
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2950
  call void @llvm.dbg.value(metadata i8* %2, metadata !2846, metadata !DIExpression()) #25, !dbg !2948
  %3 = icmp eq i8* %2, null, !dbg !2951
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2952
  br i1 %5, label %6, label %7, !dbg !2952

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2953
  unreachable, !dbg !2953

7:                                                ; preds = %1
  ret i8* %2, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64* %1, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %0, metadata !177, metadata !DIExpression()) #25, !dbg !2962
  call void @llvm.dbg.value(metadata i64* %1, metadata !178, metadata !DIExpression()) #25, !dbg !2962
  call void @llvm.dbg.value(metadata i64 1, metadata !179, metadata !DIExpression()) #25, !dbg !2962
  %3 = load i64, i64* %1, align 8, !dbg !2964, !tbaa !2118
  call void @llvm.dbg.value(metadata i64 %3, metadata !180, metadata !DIExpression()) #25, !dbg !2962
  %4 = icmp eq i8* %0, null, !dbg !2965
  br i1 %4, label %5, label %10, !dbg !2966

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2967
  br i1 %6, label %17, label %7, !dbg !2968

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !180, metadata !DIExpression()) #25, !dbg !2962
  %8 = icmp slt i64 %3, 0, !dbg !2969
  br i1 %8, label %9, label %17, !dbg !2970

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2971
  unreachable, !dbg !2971

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2972
  br i1 %11, label %13, label %12, !dbg !2973

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !2974
  unreachable, !dbg !2974

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2975
  %15 = add nuw nsw i64 %3, 1, !dbg !2976
  %16 = add nuw nsw i64 %15, %14, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %16, metadata !180, metadata !DIExpression()) #25, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()) #25, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %16, metadata !2879, metadata !DIExpression()) #25, !dbg !2978
  br label %17, !dbg !2980

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2981
  store i64 %18, i64* %1, align 8, !dbg !2981, !tbaa !2118
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !2982
  call void @llvm.dbg.value(metadata i8* %19, metadata !2874, metadata !DIExpression()) #25, !dbg !2978
  %20 = icmp eq i8* %19, null, !dbg !2983
  br i1 %20, label %21, label %22, !dbg !2984

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !2985
  unreachable, !dbg !2985

22:                                               ; preds = %17
  ret i8* %19, !dbg !2986
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2987 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()) #25, !dbg !2996
  call void @llvm.dbg.value(metadata i64 1, metadata !2994, metadata !DIExpression()) #25, !dbg !2996
  %2 = icmp slt i64 %0, 0, !dbg !2998
  br i1 %2, label %6, label %3, !dbg !3000

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %4, metadata !2995, metadata !DIExpression()) #25, !dbg !2996
  %5 = icmp eq i8* %4, null, !dbg !3002
  br i1 %5, label %6, label %7, !dbg !3003

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !3004
  unreachable, !dbg !3004

7:                                                ; preds = %3
  ret i8* %4, !dbg !3005
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2992 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %1, metadata !2994, metadata !DIExpression()), !dbg !3006
  %3 = udiv i64 9223372036854775807, %1, !dbg !3007
  %4 = icmp ult i64 %3, %0, !dbg !3007
  br i1 %4, label %8, label %5, !dbg !3008

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !3009
  call void @llvm.dbg.value(metadata i8* %6, metadata !2995, metadata !DIExpression()), !dbg !3006
  %7 = icmp eq i8* %6, null, !dbg !3010
  br i1 %7, label %8, label %9, !dbg !3011

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !3012
  unreachable, !dbg !3012

9:                                                ; preds = %5
  ret i8* %6, !dbg !3013
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3014 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i64 %1, metadata !3021, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.value(metadata i64 %1, metadata !2841, metadata !DIExpression()) #25, !dbg !3023
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !3025
  call void @llvm.dbg.value(metadata i8* %3, metadata !2846, metadata !DIExpression()) #25, !dbg !3023
  %4 = icmp eq i8* %3, null, !dbg !3026
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3027
  br i1 %6, label %7, label %8, !dbg !3027

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3028
  unreachable, !dbg !3028

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3029, metadata !DIExpression()) #25, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()) #25, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()) #25, !dbg !3038
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !3040
  ret i8* %3, !dbg !3041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3042 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()), !dbg !3045
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !3046
  %3 = add i64 %2, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !3020, metadata !DIExpression()) #25, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %3, metadata !3021, metadata !DIExpression()) #25, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %3, metadata !2841, metadata !DIExpression()) #25, !dbg !3050
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %4, metadata !2846, metadata !DIExpression()) #25, !dbg !3050
  %5 = icmp eq i8* %4, null, !dbg !3053
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3054
  br i1 %7, label %8, label %9, !dbg !3054

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3055
  unreachable, !dbg !3055

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3029, metadata !DIExpression()) #25, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()) #25, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %3, metadata !3037, metadata !DIExpression()) #25, !dbg !3056
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !3058
  ret i8* %4, !dbg !3059
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3060 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3061, !tbaa !775
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.114, i64 0, i64 0), i32 5) #25, !dbg !3062
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.115, i64 0, i64 0), i8* %2) #25, !dbg !3063
  tail call void @abort() #27, !dbg !3064
  unreachable, !dbg !3064
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #13 !dbg !3065 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3073
  %3 = icmp eq i64 %0, 0, !dbg !3074
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3075
  br i1 %5, label %11, label %6, !dbg !3075

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3070, metadata !DIExpression()), !dbg !3076
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3077
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3077
  br i1 %8, label %9, label %11, !dbg !3079

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !3080
  store i32 12, i32* %10, align 4, !dbg !3082, !tbaa !775
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3067, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %12, metadata !3068, metadata !DIExpression()), !dbg !3073
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %14, metadata !3069, metadata !DIExpression()), !dbg !3073
  br label %15, !dbg !3084

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3073
  ret i8* %16, !dbg !3085
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3086 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3102, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i8* %1, metadata !3103, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %2, metadata !3104, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3105, metadata !DIExpression()), !dbg !3111
  %6 = bitcast i32* %5 to i8*, !dbg !3112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3112
  %7 = icmp eq i32* %0, null, !dbg !3113
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3115
  call void @llvm.dbg.value(metadata i32* %8, metadata !3102, metadata !DIExpression()), !dbg !3111
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %9, metadata !3106, metadata !DIExpression()), !dbg !3111
  %10 = icmp ugt i64 %9, -3, !dbg !3117
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3118
  br i1 %12, label %13, label %18, !dbg !3118

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !3119
  br i1 %14, label %18, label %15, !dbg !3120

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3121, !tbaa !830
  call void @llvm.dbg.value(metadata i8 %16, metadata !3108, metadata !DIExpression()), !dbg !3122
  %17 = zext i8 %16 to i32, !dbg !3123
  store i32 %17, i32* %8, align 4, !dbg !3124, !tbaa !775
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3125
  ret i64 %19, !dbg !3125
}

; Function Attrs: nounwind
declare !dbg !3126 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3130 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3168, metadata !DIExpression()), !dbg !3173
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !3174
  call void @llvm.dbg.value(metadata i1 undef, metadata !3169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3173
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3175, metadata !DIExpression()), !dbg !3178
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3180
  %4 = load i32, i32* %3, align 8, !dbg !3180, !tbaa !3181
  %5 = and i32 %4, 32, !dbg !3182
  %6 = icmp eq i32 %5, 0, !dbg !3182
  call void @llvm.dbg.value(metadata i1 %6, metadata !3171, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3173
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !3183
  %8 = icmp eq i32 %7, 0, !dbg !3184
  call void @llvm.dbg.value(metadata i1 %8, metadata !3172, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3173
  br i1 %6, label %9, label %19, !dbg !3185

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3187
  call void @llvm.dbg.value(metadata i1 %10, metadata !3169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3173
  %11 = or i1 %10, %8, !dbg !3188
  %12 = xor i1 %8, true, !dbg !3188
  %13 = sext i1 %12 to i32, !dbg !3188
  br i1 %11, label %22, label %14, !dbg !3188

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !3189
  %16 = load i32, i32* %15, align 4, !dbg !3189, !tbaa !775
  %17 = icmp ne i32 %16, 9, !dbg !3190
  %18 = sext i1 %17 to i32, !dbg !3191
  br label %22, !dbg !3191

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3192

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !3194
  store i32 0, i32* %21, align 4, !dbg !3196, !tbaa !775
  br label %22, !dbg !3194

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3173
  ret i32 %23, !dbg !3197
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #15 !dbg !3198 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3200, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %0, metadata !3201, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8 0, metadata !3203, metadata !DIExpression()), !dbg !3204
  br label %2, !dbg !3205

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3204
  call void @llvm.dbg.value(metadata i8* %3, metadata !3201, metadata !DIExpression()), !dbg !3204
  %4 = load i8, i8* %3, align 1, !dbg !3206, !tbaa !830
  %5 = icmp eq i8 %4, 47, !dbg !3206
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %6, metadata !3201, metadata !DIExpression()), !dbg !3204
  br i1 %5, label %2, label %7, !dbg !3205, !llvm.loop !3208

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !3209
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !3212
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !3213
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !3204
  call void @llvm.dbg.value(metadata i8 %11, metadata !3203, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %10, metadata !3202, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %9, metadata !3201, metadata !DIExpression()), !dbg !3204
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !3214

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !3215
  %14 = icmp eq i8 %13, 0, !dbg !3215
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !3219
  %16 = select i1 %14, i8 %11, i8 0, !dbg !3219
  br label %17, !dbg !3219

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !3204
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !3204
  call void @llvm.dbg.value(metadata i8 %19, metadata !3203, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8* %18, metadata !3201, metadata !DIExpression()), !dbg !3204
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %20, metadata !3202, metadata !DIExpression()), !dbg !3204
  %21 = load i8, i8* %20, align 1, !dbg !3209, !tbaa !830
  br label %7, !dbg !3221, !llvm.loop !3222

22:                                               ; preds = %7
  ret i8* %9, !dbg !3224
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #24 !dbg !3225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 0, metadata !3231, metadata !DIExpression()), !dbg !3232
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !3233
  call void @llvm.dbg.value(metadata i64 %2, metadata !3230, metadata !DIExpression()), !dbg !3232
  %3 = icmp ne i64 %2, 0, !dbg !3235
  %4 = zext i1 %3 to i64, !dbg !3235
  br label %5, !dbg !3235

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3236
  call void @llvm.dbg.value(metadata i64 %6, metadata !3230, metadata !DIExpression()), !dbg !3232
  %7 = icmp ugt i64 %6, 1, !dbg !3237
  br i1 %7, label %8, label %13, !dbg !3239

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3240
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !3240
  %11 = load i8, i8* %10, align 1, !dbg !3240, !tbaa !830
  %12 = icmp eq i8 %11, 47, !dbg !3240
  br i1 %12, label %5, label %13, !dbg !3241, !llvm.loop !3242

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3236
  ret i64 %14, !dbg !3244
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3245 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3249, metadata !DIExpression()), !dbg !3254
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3255
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3255
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3250, metadata !DIExpression()), !dbg !3256
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !3257
  %5 = icmp eq i32 %4, 0, !dbg !3257
  br i1 %5, label %6, label %13, !dbg !3259

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3260
  %8 = load i16, i16* %7, align 16, !dbg !3260
  %9 = icmp eq i16 %8, 67, !dbg !3260
  br i1 %9, label %13, label %10, !dbg !3261

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6), !dbg !3262
  %12 = icmp ne i32 %11, 0, !dbg !3263
  br label %13, !dbg !3261

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3254
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3264
  ret i1 %14, !dbg !3264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3265 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %1, metadata !3269, metadata !DIExpression()), !dbg !3271
  %2 = icmp eq i8* %1, null, !dbg !3272
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %1, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %3, metadata !3269, metadata !DIExpression()), !dbg !3271
  %4 = load i8, i8* %3, align 1, !dbg !3275, !tbaa !830
  %5 = icmp eq i8 %4, 0, !dbg !3279
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0), i8* %3, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %6, metadata !3269, metadata !DIExpression()), !dbg !3271
  ret i8* %6, !dbg !3281
}

; Function Attrs: nounwind
declare !dbg !3282 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3289, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3290, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %2, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %0, metadata !3293, metadata !DIExpression()) #25, !dbg !3302
  call void @llvm.dbg.value(metadata i8* %1, metadata !3296, metadata !DIExpression()) #25, !dbg !3302
  call void @llvm.dbg.value(metadata i64 %2, metadata !3297, metadata !DIExpression()) #25, !dbg !3302
  call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()) #25, !dbg !3310
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %4, metadata !3309, metadata !DIExpression()) #25, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %4, metadata !3298, metadata !DIExpression()) #25, !dbg !3302
  %5 = icmp eq i8* %4, null, !dbg !3313
  br i1 %5, label %6, label %9, !dbg !3314

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3315
  br i1 %7, label %19, label %8, !dbg !3318

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3319, !tbaa !830
  br label %19, !dbg !3320

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !3321
  call void @llvm.dbg.value(metadata i64 %10, metadata !3299, metadata !DIExpression()) #25, !dbg !3322
  %11 = icmp ult i64 %10, %2, !dbg !3323
  br i1 %11, label %12, label %14, !dbg !3325

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3326
  call void @llvm.dbg.value(metadata i8* %1, metadata !3328, metadata !DIExpression()) #25, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %4, metadata !3331, metadata !DIExpression()) #25, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %13, metadata !3332, metadata !DIExpression()) #25, !dbg !3333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !3335
  br label %19, !dbg !3336

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3337
  br i1 %15, label %19, label %16, !dbg !3340

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %1, metadata !3328, metadata !DIExpression()) #25, !dbg !3343
  call void @llvm.dbg.value(metadata i8* %4, metadata !3331, metadata !DIExpression()) #25, !dbg !3343
  call void @llvm.dbg.value(metadata i64 %17, metadata !3332, metadata !DIExpression()) #25, !dbg !3343
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !3345
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3346
  store i8 0, i8* %18, align 1, !dbg !3347, !tbaa !830
  br label %19, !dbg !3348

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3349
  ret i32 %20, !dbg !3350
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3351 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %0, metadata !3304, metadata !DIExpression()) #25, !dbg !3355
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %2, metadata !3309, metadata !DIExpression()) #25, !dbg !3355
  ret i8* %2, !dbg !3358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3359 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3397, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 0, metadata !3398, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i32 0, metadata !3400, metadata !DIExpression()), !dbg !3401
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3402
  call void @llvm.dbg.value(metadata i32 %2, metadata !3399, metadata !DIExpression()), !dbg !3401
  %3 = icmp slt i32 %2, 0, !dbg !3403
  br i1 %3, label %4, label %6, !dbg !3405

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3406
  br label %24, !dbg !3407

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3408
  %8 = icmp eq i32 %7, 0, !dbg !3408
  br i1 %8, label %13, label %9, !dbg !3410

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3411
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3412
  %12 = icmp eq i64 %11, -1, !dbg !3413
  br i1 %12, label %16, label %13, !dbg !3414

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3415
  %15 = icmp eq i32 %14, 0, !dbg !3415
  br i1 %15, label %16, label %18, !dbg !3416

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3398, metadata !DIExpression()), !dbg !3401
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %21, metadata !3400, metadata !DIExpression()), !dbg !3401
  br label %24, !dbg !3418

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3419
  %20 = load i32, i32* %19, align 4, !dbg !3419, !tbaa !775
  call void @llvm.dbg.value(metadata i32 %20, metadata !3398, metadata !DIExpression()), !dbg !3401
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %21, metadata !3400, metadata !DIExpression()), !dbg !3401
  %22 = icmp eq i32 %20, 0, !dbg !3420
  br i1 %22, label %24, label %23, !dbg !3418

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3422, !tbaa !775
  call void @llvm.dbg.value(metadata i32 -1, metadata !3400, metadata !DIExpression()), !dbg !3401
  br label %24, !dbg !3424

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3401
  ret i32 %25, !dbg !3425
}

; Function Attrs: nofree nounwind
declare !dbg !3426 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3429 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3430 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3433 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3471, metadata !DIExpression()), !dbg !3472
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3473
  br i1 %2, label %6, label %3, !dbg !3475

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3476
  %5 = icmp eq i32 %4, 0, !dbg !3476
  br i1 %5, label %6, label %8, !dbg !3477

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3478
  br label %17, !dbg !3479

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3480, metadata !DIExpression()) #25, !dbg !3485
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3487
  %10 = load i32, i32* %9, align 8, !dbg !3487, !tbaa !3181
  %11 = and i32 %10, 256, !dbg !3489
  %12 = icmp eq i32 %11, 0, !dbg !3489
  br i1 %12, label %15, label %13, !dbg !3490

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !3491
  br label %15, !dbg !3491

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3492
  br label %17, !dbg !3493

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3472
  ret i32 %18, !dbg !3494
}

; Function Attrs: nofree nounwind
declare !dbg !3495 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3498 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3537, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i64 %1, metadata !3538, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %2, metadata !3539, metadata !DIExpression()), !dbg !3543
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3544
  %5 = load i8*, i8** %4, align 8, !dbg !3544, !tbaa !3545
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3546
  %7 = load i8*, i8** %6, align 8, !dbg !3546, !tbaa !3547
  %8 = icmp eq i8* %5, %7, !dbg !3548
  br i1 %8, label %9, label %28, !dbg !3549

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3550
  %11 = load i8*, i8** %10, align 8, !dbg !3550, !tbaa !1087
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3551
  %13 = load i8*, i8** %12, align 8, !dbg !3551, !tbaa !3552
  %14 = icmp eq i8* %11, %13, !dbg !3553
  br i1 %14, label %15, label %28, !dbg !3554

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3555
  %17 = load i8*, i8** %16, align 8, !dbg !3555, !tbaa !3556
  %18 = icmp eq i8* %17, null, !dbg !3557
  br i1 %18, label %19, label %28, !dbg !3558

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3559
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !3560
  call void @llvm.dbg.value(metadata i64 %21, metadata !3540, metadata !DIExpression()), !dbg !3561
  %22 = icmp eq i64 %21, -1, !dbg !3562
  br i1 %22, label %30, label %23, !dbg !3564

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3565
  %25 = load i32, i32* %24, align 8, !dbg !3566, !tbaa !3181
  %26 = and i32 %25, -17, !dbg !3566
  store i32 %26, i32* %24, align 8, !dbg !3566, !tbaa !3181
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3567
  store i64 %21, i64* %27, align 8, !dbg !3568, !tbaa !3569
  br label %30, !dbg !3570

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3571
  br label %30, !dbg !3572

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3543
  ret i32 %31, !dbg !3573
}

; Function Attrs: nofree nounwind
declare !dbg !3574 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree nosync nounwind willreturn }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !154, !52, !58, !158, !65, !71, !77, !160, !148, !167, !184, !186, !188, !191, !193, !196, !198, !587, !589, !591, !593}
!llvm.ident = !{!595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595, !595}
!llvm.module.flags = !{!596, !597, !598, !599, !600}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "remove_empty_parents", scope: !2, file: !3, line: 40, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/rmdir.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5}
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
!36 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
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
!48 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!49 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "Version", scope: !52, file: !53, line: 2, type: !39, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !55, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!54 = !{}
!55 = !{!50}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "file_name", scope: !58, file: !59, line: 46, type: !39, isLocal: true, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !60, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!60 = !{!56, !61}
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !58, file: !59, line: 56, type: !28, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "exit_failure", scope: !65, file: !66, line: 24, type: !68, isLocal: false, isDefinition: true)
!65 = distinct !DICompileUnit(language: DW_LANG_C99, file: !66, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !67, splitDebugInlining: false, nameTableKind: None)
!66 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!67 = !{!63}
!68 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "program_name", scope: !71, file: !72, line: 33, type: !39, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !73, globals: !74, splitDebugInlining: false, nameTableKind: None)
!72 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!73 = !{!23, !21}
!74 = !{!69}
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !77, file: !78, line: 85, type: !142, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !79, retainedTypes: !100, globals: !105, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!79 = !{!5, !80, !85}
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 46, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!88 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!100 = !{!42, !101, !102, !21}
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 46, baseType: !104)
!103 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!104 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!105 = !{!75, !106, !112, !124, !126, !131, !138, !140}
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !77, file: !78, line: 101, type: !108, isLocal: false, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 320, elements: !110)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!110 = !{!111}
!111 = !DISubrange(count: 10)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !77, file: !78, line: 1052, type: !114, isLocal: false, isDefinition: true)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !78, line: 65, size: 448, elements: !115)
!115 = !{!116, !117, !118, !122, !123}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !114, file: !78, line: 68, baseType: !5, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !78, line: 71, baseType: !42, size: 32, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !114, file: !78, line: 75, baseType: !119, size: 256, offset: 64)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 8)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !114, file: !78, line: 78, baseType: !39, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !114, file: !78, line: 81, baseType: !39, size: 64, offset: 384)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !77, file: !78, line: 116, type: !114, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "slot0", scope: !77, file: !78, line: 842, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 256)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "slotvec", scope: !77, file: !78, line: 845, type: !133, isLocal: true, isDefinition: true)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !78, line: 834, size: 128, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !134, file: !78, line: 836, baseType: !102, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !134, file: !78, line: 837, baseType: !21, size: 64, offset: 64)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "nslots", scope: !77, file: !78, line: 843, type: !42, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "slotvec0", scope: !77, file: !78, line: 844, type: !134, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 704, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!144 = !{!145}
!145 = !DISubrange(count: 11)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !148, file: !149, line: 26, type: !151, isLocal: false, isDefinition: true)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !150, splitDebugInlining: false, nameTableKind: None)
!149 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!150 = !{!146}
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 376, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 47)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !156, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "src/prog-fprintf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!156 = !{!157}
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, splitDebugInlining: false, nameTableKind: None)
!159 = !DIFile(filename: "lib/stripslash.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !162, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !{!163}
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !161, line: 40, baseType: !7, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!166 = !{!23}
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !169, retainedTypes: !183, splitDebugInlining: false, nameTableKind: None)
!168 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!169 = !{!170}
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !172, file: !171, line: 186, baseType: !7, size: 32, elements: !181)
!171 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!172 = distinct !DISubprogram(name: "x2nrealloc", scope: !171, file: !171, line: 174, type: !173, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !176)
!173 = !DISubroutineType(types: !174)
!174 = !{!23, !23, !175, !102}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!176 = !{!177, !178, !179, !180}
!177 = !DILocalVariable(name: "p", arg: 1, scope: !172, file: !171, line: 174, type: !23)
!178 = !DILocalVariable(name: "pn", arg: 2, scope: !172, file: !171, line: 174, type: !175)
!179 = !DILocalVariable(name: "s", arg: 3, scope: !172, file: !171, line: 174, type: !102)
!180 = !DILocalVariable(name: "n", scope: !172, file: !171, line: 176, type: !102)
!181 = !{!182}
!182 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!183 = !{!102, !21, !23}
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, splitDebugInlining: false, nameTableKind: None)
!185 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!187 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!188 = distinct !DICompileUnit(language: DW_LANG_C99, file: !189, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !190, splitDebugInlining: false, nameTableKind: None)
!189 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!190 = !{!102}
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !195, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = !{!21}
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, splitDebugInlining: false, nameTableKind: None)
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
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!588 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, splitDebugInlining: false, nameTableKind: None)
!590 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!592 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !166, splitDebugInlining: false, nameTableKind: None)
!594 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!595 = !{!"clang version 12.0.1"}
!596 = !{i32 7, !"Dwarf Version", i32 4}
!597 = !{i32 2, !"Debug Info Version", i32 3}
!598 = !{i32 1, !"wchar_size", i32 4}
!599 = !{i32 7, !"PIC Level", i32 2}
!600 = !{i32 7, !"PIE Level", i32 2}
!601 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 158, type: !602, scopeLine: 159, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !42}
!604 = !{!605}
!605 = !DILocalVariable(name: "status", arg: 1, scope: !601, file: !3, line: 158, type: !42)
!606 = !DILocation(line: 0, scope: !601)
!607 = !DILocation(line: 160, column: 14, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !3, line: 160, column: 7)
!609 = !DILocation(line: 160, column: 7, scope: !601)
!610 = !DILocation(line: 161, column: 5, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !3, line: 161, column: 5)
!612 = !{!613, !613, i64 0}
!613 = !{!"any pointer", !614, i64 0}
!614 = !{!"omnipotent char", !615, i64 0}
!615 = !{!"Simple C/C++ TBAA"}
!616 = !DILocation(line: 164, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !608, file: !3, line: 163, column: 5)
!618 = !DILocation(line: 165, column: 7, scope: !617)
!619 = !DILocation(line: 172, column: 7, scope: !617)
!620 = !DILocation(line: 178, column: 7, scope: !617)
!621 = !DILocation(line: 179, column: 7, scope: !617)
!622 = !DILocalVariable(name: "program", arg: 1, scope: !623, file: !624, line: 634, type: !39)
!623 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !624, file: !624, line: 634, type: !625, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!624 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!625 = !DISubroutineType(types: !626)
!626 = !{null, !39}
!627 = !{!622, !628, !635, !636, !638}
!628 = !DILocalVariable(name: "infomap", scope: !623, file: !624, line: 636, type: !629)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 896, elements: !46)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !623, file: !624, line: 636, size: 128, elements: !632)
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !631, file: !624, line: 636, baseType: !39, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !624, line: 636, baseType: !39, size: 64, offset: 64)
!635 = !DILocalVariable(name: "node", scope: !623, file: !624, line: 646, type: !39)
!636 = !DILocalVariable(name: "map_prog", scope: !623, file: !624, line: 647, type: !637)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!638 = !DILocalVariable(name: "lc_messages", scope: !623, file: !624, line: 659, type: !39)
!639 = !DILocation(line: 0, scope: !623, inlinedAt: !640)
!640 = distinct !DILocation(line: 180, column: 7, scope: !617)
!641 = !DILocation(line: 636, column: 3, scope: !623, inlinedAt: !640)
!642 = !DILocation(line: 636, column: 67, scope: !623, inlinedAt: !640)
!643 = !DILocation(line: 647, column: 36, scope: !623, inlinedAt: !640)
!644 = !DILocation(line: 649, column: 3, scope: !623, inlinedAt: !640)
!645 = !DILocation(line: 649, column: 33, scope: !623, inlinedAt: !640)
!646 = !DILocation(line: 650, column: 13, scope: !623, inlinedAt: !640)
!647 = !DILocation(line: 649, column: 20, scope: !623, inlinedAt: !640)
!648 = !{!649, !613, i64 0}
!649 = !{!"infomap", !613, i64 0, !613, i64 8}
!650 = !DILocation(line: 649, column: 10, scope: !623, inlinedAt: !640)
!651 = !DILocation(line: 649, column: 28, scope: !623, inlinedAt: !640)
!652 = distinct !{!652, !644, !646, !653}
!653 = !{!"llvm.loop.mustprogress"}
!654 = !DILocation(line: 652, column: 17, scope: !655, inlinedAt: !640)
!655 = distinct !DILexicalBlock(scope: !623, file: !624, line: 652, column: 7)
!656 = !{!649, !613, i64 8}
!657 = !DILocation(line: 652, column: 7, scope: !655, inlinedAt: !640)
!658 = !DILocation(line: 652, column: 7, scope: !623, inlinedAt: !640)
!659 = !DILocation(line: 655, column: 3, scope: !623, inlinedAt: !640)
!660 = !DILocation(line: 659, column: 29, scope: !623, inlinedAt: !640)
!661 = !DILocation(line: 660, column: 7, scope: !662, inlinedAt: !640)
!662 = distinct !DILexicalBlock(scope: !623, file: !624, line: 660, column: 7)
!663 = !DILocation(line: 660, column: 19, scope: !662, inlinedAt: !640)
!664 = !DILocation(line: 660, column: 22, scope: !662, inlinedAt: !640)
!665 = !DILocation(line: 660, column: 7, scope: !623, inlinedAt: !640)
!666 = !DILocation(line: 666, column: 7, scope: !667, inlinedAt: !640)
!667 = distinct !DILexicalBlock(scope: !662, file: !624, line: 661, column: 5)
!668 = !DILocation(line: 668, column: 5, scope: !667, inlinedAt: !640)
!669 = !DILocation(line: 669, column: 3, scope: !623, inlinedAt: !640)
!670 = !DILocation(line: 671, column: 3, scope: !623, inlinedAt: !640)
!671 = !DILocation(line: 673, column: 1, scope: !623, inlinedAt: !640)
!672 = !DILocation(line: 182, column: 3, scope: !601)
!673 = !DISubprogram(name: "dcgettext", scope: !674, file: !674, line: 51, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!674 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!675 = !DISubroutineType(types: !676)
!676 = !{!21, !39, !39, !42}
!677 = !DISubprogram(name: "fputs_unlocked", scope: !678, file: !678, line: 667, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!678 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!679 = !DISubroutineType(types: !680)
!680 = !{!42, !39, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !683, line: 49, size: 1728, elements: !684)
!683 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !700, !701, !702, !703, !707, !708, !710, !714, !717, !719, !722, !725, !726, !727, !728, !729}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !682, file: !683, line: 51, baseType: !42, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !682, file: !683, line: 54, baseType: !21, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !682, file: !683, line: 55, baseType: !21, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !682, file: !683, line: 56, baseType: !21, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !682, file: !683, line: 57, baseType: !21, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !682, file: !683, line: 58, baseType: !21, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !682, file: !683, line: 59, baseType: !21, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !682, file: !683, line: 60, baseType: !21, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !682, file: !683, line: 61, baseType: !21, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !682, file: !683, line: 64, baseType: !21, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !682, file: !683, line: 65, baseType: !21, size: 64, offset: 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !682, file: !683, line: 66, baseType: !21, size: 64, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !682, file: !683, line: 68, baseType: !698, size: 64, offset: 768)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !683, line: 36, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !682, file: !683, line: 70, baseType: !681, size: 64, offset: 832)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !682, file: !683, line: 72, baseType: !42, size: 32, offset: 896)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !682, file: !683, line: 73, baseType: !42, size: 32, offset: 928)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !682, file: !683, line: 74, baseType: !704, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !705, line: 152, baseType: !706)
!705 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!706 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !682, file: !683, line: 77, baseType: !101, size: 16, offset: 1024)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !682, file: !683, line: 78, baseType: !709, size: 8, offset: 1040)
!709 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !682, file: !683, line: 79, baseType: !711, size: 8, offset: 1048)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 1)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !682, file: !683, line: 81, baseType: !715, size: 64, offset: 1088)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !683, line: 43, baseType: null)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !682, file: !683, line: 89, baseType: !718, size: 64, offset: 1152)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !705, line: 153, baseType: !706)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !682, file: !683, line: 91, baseType: !720, size: 64, offset: 1216)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !683, line: 37, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !682, file: !683, line: 92, baseType: !723, size: 64, offset: 1280)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !683, line: 38, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !682, file: !683, line: 93, baseType: !681, size: 64, offset: 1344)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !682, file: !683, line: 94, baseType: !23, size: 64, offset: 1408)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !682, file: !683, line: 95, baseType: !102, size: 64, offset: 1472)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !682, file: !683, line: 96, baseType: !42, size: 32, offset: 1536)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !682, file: !683, line: 98, baseType: !730, size: 160, offset: 1568)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 20)
!733 = !DISubprogram(name: "setlocale", scope: !734, file: !734, line: 122, type: !735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!734 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!735 = !DISubroutineType(types: !736)
!736 = !{!21, !42, !39}
!737 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 186, type: !738, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!738 = !DISubroutineType(types: !739)
!739 = !{!42, !42, !740}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!741 = !{!742, !743, !744, !745, !746, !750}
!742 = !DILocalVariable(name: "argc", arg: 1, scope: !737, file: !3, line: 186, type: !42)
!743 = !DILocalVariable(name: "argv", arg: 2, scope: !737, file: !3, line: 186, type: !740)
!744 = !DILocalVariable(name: "ok", scope: !737, file: !3, line: 188, type: !28)
!745 = !DILocalVariable(name: "optc", scope: !737, file: !3, line: 189, type: !42)
!746 = !DILocalVariable(name: "dir", scope: !747, file: !3, line: 229, type: !21)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 228, column: 5)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 227, column: 3)
!749 = distinct !DILexicalBlock(scope: !737, file: !3, line: 227, column: 3)
!750 = !DILocalVariable(name: "rmdir_errno", scope: !751, file: !3, line: 237, type: !42)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 236, column: 9)
!752 = distinct !DILexicalBlock(scope: !747, file: !3, line: 235, column: 11)
!753 = !DILocation(line: 0, scope: !737)
!754 = !DILocation(line: 192, column: 21, scope: !737)
!755 = !DILocation(line: 192, column: 3, scope: !737)
!756 = !DILocation(line: 193, column: 3, scope: !737)
!757 = !DILocation(line: 194, column: 3, scope: !737)
!758 = !DILocation(line: 195, column: 3, scope: !737)
!759 = !DILocation(line: 197, column: 3, scope: !737)
!760 = !DILocation(line: 199, column: 24, scope: !737)
!761 = !DILocation(line: 201, column: 3, scope: !737)
!762 = !DILocation(line: 201, column: 18, scope: !737)
!763 = !DILocation(line: 210, column: 11, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 204, column: 9)
!765 = distinct !DILexicalBlock(scope: !737, file: !3, line: 202, column: 5)
!766 = !DILocation(line: 213, column: 11, scope: !764)
!767 = !DILocation(line: 214, column: 9, scope: !764)
!768 = !DILocation(line: 215, column: 9, scope: !764)
!769 = !DILocation(line: 217, column: 11, scope: !764)
!770 = !DILocation(line: 0, scope: !764)
!771 = distinct !{!771, !761, !772, !653}
!772 = !DILocation(line: 219, column: 5, scope: !737)
!773 = !DILocation(line: 221, column: 7, scope: !774)
!774 = distinct !DILexicalBlock(scope: !737, file: !3, line: 221, column: 7)
!775 = !{!776, !776, i64 0}
!776 = !{!"int", !614, i64 0}
!777 = !DILocation(line: 221, column: 14, scope: !774)
!778 = !DILocation(line: 221, column: 7, scope: !737)
!779 = !DILocation(line: 227, column: 17, scope: !748)
!780 = !DILocation(line: 227, column: 3, scope: !749)
!781 = !DILocation(line: 223, column: 20, scope: !782)
!782 = distinct !DILexicalBlock(scope: !774, file: !3, line: 222, column: 5)
!783 = !DILocation(line: 223, column: 7, scope: !782)
!784 = !DILocation(line: 224, column: 7, scope: !782)
!785 = !DILocation(line: 229, column: 19, scope: !747)
!786 = !DILocation(line: 0, scope: !747)
!787 = !DILocation(line: 232, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !747, file: !3, line: 232, column: 11)
!789 = !DILocation(line: 232, column: 11, scope: !747)
!790 = !DILocation(line: 233, column: 23, scope: !788)
!791 = !DILocation(line: 233, column: 31, scope: !788)
!792 = !DILocation(line: 233, column: 60, scope: !788)
!793 = !DILocation(line: 233, column: 9, scope: !788)
!794 = !DILocation(line: 235, column: 11, scope: !752)
!795 = !DILocation(line: 235, column: 23, scope: !752)
!796 = !DILocation(line: 235, column: 11, scope: !747)
!797 = !DILocation(line: 237, column: 29, scope: !751)
!798 = !DILocation(line: 0, scope: !751)
!799 = !DILocation(line: 238, column: 15, scope: !800)
!800 = distinct !DILexicalBlock(scope: !751, file: !3, line: 238, column: 15)
!801 = !DILocation(line: 238, column: 15, scope: !751)
!802 = !DILocation(line: 243, column: 34, scope: !751)
!803 = !DILocation(line: 243, column: 60, scope: !751)
!804 = !DILocation(line: 243, column: 11, scope: !751)
!805 = !DILocation(line: 245, column: 9, scope: !752)
!806 = !DILocation(line: 246, column: 16, scope: !807)
!807 = distinct !DILexicalBlock(scope: !752, file: !3, line: 246, column: 16)
!808 = !DILocation(line: 246, column: 16, scope: !752)
!809 = !DILocalVariable(name: "dir", arg: 1, scope: !810, file: !3, line: 114, type: !21)
!810 = distinct !DISubprogram(name: "remove_parents", scope: !3, file: !3, line: 114, type: !811, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!28, !21}
!813 = !{!809, !814, !815, !816}
!814 = !DILocalVariable(name: "slash", scope: !810, file: !3, line: 116, type: !21)
!815 = !DILocalVariable(name: "ok", scope: !810, file: !3, line: 117, type: !28)
!816 = !DILocalVariable(name: "rmdir_errno", scope: !817, file: !3, line: 136, type: !42)
!817 = distinct !DILexicalBlock(scope: !810, file: !3, line: 121, column: 5)
!818 = !DILocation(line: 0, scope: !810, inlinedAt: !819)
!819 = distinct !DILocation(line: 248, column: 17, scope: !820)
!820 = distinct !DILexicalBlock(scope: !807, file: !3, line: 247, column: 9)
!821 = !DILocation(line: 119, column: 3, scope: !810, inlinedAt: !819)
!822 = !DILocation(line: 120, column: 3, scope: !810, inlinedAt: !819)
!823 = !DILocation(line: 122, column: 15, scope: !817, inlinedAt: !819)
!824 = !DILocation(line: 123, column: 17, scope: !825, inlinedAt: !819)
!825 = distinct !DILexicalBlock(scope: !817, file: !3, line: 123, column: 11)
!826 = !DILocation(line: 123, column: 11, scope: !817, inlinedAt: !819)
!827 = !DILocation(line: 127, column: 20, scope: !817, inlinedAt: !819)
!828 = !DILocation(line: 127, column: 26, scope: !817, inlinedAt: !819)
!829 = !DILocation(line: 127, column: 29, scope: !817, inlinedAt: !819)
!830 = !{!614, !614, i64 0}
!831 = !DILocation(line: 127, column: 36, scope: !817, inlinedAt: !819)
!832 = !DILocation(line: 127, column: 7, scope: !817, inlinedAt: !819)
!833 = !DILocation(line: 128, column: 9, scope: !817, inlinedAt: !819)
!834 = distinct !{!834, !832, !835, !653}
!835 = !DILocation(line: 128, column: 11, scope: !817, inlinedAt: !819)
!836 = !DILocation(line: 0, scope: !817, inlinedAt: !819)
!837 = !DILocation(line: 129, column: 7, scope: !817, inlinedAt: !819)
!838 = !DILocation(line: 129, column: 16, scope: !817, inlinedAt: !819)
!839 = !DILocation(line: 132, column: 11, scope: !840, inlinedAt: !819)
!840 = distinct !DILexicalBlock(scope: !817, file: !3, line: 132, column: 11)
!841 = !DILocation(line: 132, column: 11, scope: !817, inlinedAt: !819)
!842 = !DILocation(line: 133, column: 23, scope: !840, inlinedAt: !819)
!843 = !DILocation(line: 133, column: 31, scope: !840, inlinedAt: !819)
!844 = !DILocation(line: 133, column: 60, scope: !840, inlinedAt: !819)
!845 = !DILocation(line: 133, column: 9, scope: !840, inlinedAt: !819)
!846 = !DILocation(line: 135, column: 13, scope: !817, inlinedAt: !819)
!847 = !DILocation(line: 135, column: 25, scope: !817, inlinedAt: !819)
!848 = !DILocation(line: 136, column: 25, scope: !817, inlinedAt: !819)
!849 = !DILocation(line: 138, column: 11, scope: !817, inlinedAt: !819)
!850 = !DILocation(line: 141, column: 15, scope: !851, inlinedAt: !819)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 141, column: 15)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 139, column: 9)
!853 = distinct !DILexicalBlock(scope: !817, file: !3, line: 138, column: 11)
!854 = !DILocation(line: 141, column: 15, scope: !852, inlinedAt: !819)
!855 = !DILocation(line: 148, column: 38, scope: !856, inlinedAt: !819)
!856 = distinct !DILexicalBlock(scope: !851, file: !3, line: 146, column: 13)
!857 = !DILocation(line: 149, column: 22, scope: !856, inlinedAt: !819)
!858 = !DILocation(line: 148, column: 15, scope: !856, inlinedAt: !819)
!859 = !DILocation(line: 248, column: 14, scope: !820)
!860 = !DILocation(line: 249, column: 9, scope: !820)
!861 = !DILocation(line: 188, column: 8, scope: !737)
!862 = !DILocation(line: 227, column: 25, scope: !748)
!863 = distinct !{!863, !780, !864, !653}
!864 = !DILocation(line: 250, column: 5, scope: !749)
!865 = !DILocation(line: 252, column: 10, scope: !737)
!866 = !DILocation(line: 253, column: 1, scope: !737)
!867 = !DISubprogram(name: "bindtextdomain", scope: !674, file: !674, line: 86, type: !868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!868 = !DISubroutineType(types: !869)
!869 = !{!21, !39, !39}
!870 = !DISubprogram(name: "textdomain", scope: !674, file: !674, line: 82, type: !871, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!871 = !DISubroutineType(types: !872)
!872 = !{!21, !39}
!873 = !DISubprogram(name: "atexit", scope: !874, file: !874, line: 595, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!874 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!875 = !DISubroutineType(types: !876)
!876 = !{!42, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null}
!880 = !DISubprogram(name: "getopt_long", scope: !36, file: !36, line: 66, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!881 = !DISubroutineType(types: !882)
!882 = !{!42, !42, !883, !39, !885, !44}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!886 = !DISubprogram(name: "error", scope: !887, file: !887, line: 52, type: !888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!887 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!888 = !DISubroutineType(types: !889)
!889 = !{null, !42, !42, !39, null}
!890 = !DISubprogram(name: "rmdir", scope: !891, file: !891, line: 847, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!891 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!892 = !DISubroutineType(types: !893)
!893 = !{!42, !39}
!894 = distinct !DISubprogram(name: "ignorable_failure", scope: !3, file: !3, line: 99, type: !895, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!28, !42, !39}
!897 = !{!898, !899}
!898 = !DILocalVariable(name: "error_number", arg: 1, scope: !894, file: !3, line: 99, type: !42)
!899 = !DILocalVariable(name: "dir", arg: 2, scope: !894, file: !3, line: 99, type: !39)
!900 = !DILocation(line: 0, scope: !894)
!901 = !DILocation(line: 101, column: 11, scope: !894)
!902 = !DILocation(line: 102, column: 11, scope: !894)
!903 = !DILocation(line: 103, column: 15, scope: !894)
!904 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !905, file: !624, line: 292, type: !42)
!905 = distinct !DISubprogram(name: "is_empty_dir", scope: !624, file: !624, line: 292, type: !895, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !906)
!906 = !{!904, !907, !908, !913, !925, !926}
!907 = !DILocalVariable(name: "dir", arg: 2, scope: !905, file: !624, line: 292, type: !39)
!908 = !DILocalVariable(name: "dirp", scope: !905, file: !624, line: 294, type: !909)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !911, line: 127, baseType: !912)
!911 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !911, line: 127, flags: DIFlagFwdDecl)
!913 = !DILocalVariable(name: "dp", scope: !905, file: !624, line: 295, type: !914)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !917, line: 22, size: 2240, elements: !918)
!917 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "")
!918 = !{!919, !921, !922, !923, !924}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !916, file: !917, line: 25, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !705, line: 148, baseType: !104)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !916, file: !917, line: 26, baseType: !704, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !916, file: !917, line: 31, baseType: !101, size: 16, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !916, file: !917, line: 32, baseType: !157, size: 8, offset: 144)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !916, file: !917, line: 33, baseType: !128, size: 2048, offset: 152)
!925 = !DILocalVariable(name: "saved_errno", scope: !905, file: !624, line: 296, type: !42)
!926 = !DILocalVariable(name: "fd", scope: !905, file: !624, line: 297, type: !42)
!927 = !DILocation(line: 0, scope: !905, inlinedAt: !928)
!928 = distinct !DILocation(line: 104, column: 24, scope: !894)
!929 = !DILocation(line: 297, column: 12, scope: !905, inlinedAt: !928)
!930 = !DILocation(line: 301, column: 10, scope: !931, inlinedAt: !928)
!931 = distinct !DILexicalBlock(scope: !905, file: !624, line: 301, column: 7)
!932 = !DILocation(line: 301, column: 7, scope: !905, inlinedAt: !928)
!933 = !DILocation(line: 304, column: 10, scope: !905, inlinedAt: !928)
!934 = !DILocation(line: 305, column: 12, scope: !935, inlinedAt: !928)
!935 = distinct !DILexicalBlock(scope: !905, file: !624, line: 305, column: 7)
!936 = !DILocation(line: 305, column: 7, scope: !905, inlinedAt: !928)
!937 = !DILocation(line: 307, column: 7, scope: !938, inlinedAt: !928)
!938 = distinct !DILexicalBlock(scope: !935, file: !624, line: 306, column: 5)
!939 = !DILocation(line: 308, column: 7, scope: !938, inlinedAt: !928)
!940 = !DILocation(line: 311, column: 3, scope: !905, inlinedAt: !928)
!941 = !DILocation(line: 311, column: 9, scope: !905, inlinedAt: !928)
!942 = !DILocalVariable(name: "dirp", arg: 1, scope: !943, file: !624, line: 278, type: !909)
!943 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !624, file: !624, line: 278, type: !944, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!914, !909}
!946 = !{!942, !947}
!947 = !DILocalVariable(name: "dp", scope: !948, file: !624, line: 282, type: !914)
!948 = distinct !DILexicalBlock(scope: !943, file: !624, line: 281, column: 5)
!949 = !DILocation(line: 0, scope: !943, inlinedAt: !950)
!950 = distinct !DILocation(line: 312, column: 8, scope: !905, inlinedAt: !928)
!951 = !DILocation(line: 282, column: 33, scope: !948, inlinedAt: !950)
!952 = !DILocation(line: 0, scope: !948, inlinedAt: !950)
!953 = !DILocation(line: 283, column: 14, scope: !954, inlinedAt: !950)
!954 = distinct !DILexicalBlock(scope: !948, file: !624, line: 283, column: 11)
!955 = !DILocation(line: 283, column: 22, scope: !954, inlinedAt: !950)
!956 = !DILocation(line: 283, column: 42, scope: !954, inlinedAt: !950)
!957 = !DILocalVariable(name: "file_name", arg: 1, scope: !958, file: !624, line: 265, type: !39)
!958 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !624, file: !624, line: 265, type: !959, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{!28, !39}
!961 = !{!957, !962}
!962 = !DILocalVariable(name: "sep", scope: !963, file: !624, line: 269, type: !22)
!963 = distinct !DILexicalBlock(scope: !964, file: !624, line: 268, column: 5)
!964 = distinct !DILexicalBlock(scope: !958, file: !624, line: 267, column: 7)
!965 = !DILocation(line: 0, scope: !958, inlinedAt: !966)
!966 = distinct !DILocation(line: 283, column: 27, scope: !954, inlinedAt: !950)
!967 = !DILocation(line: 267, column: 7, scope: !964, inlinedAt: !966)
!968 = !DILocation(line: 267, column: 20, scope: !964, inlinedAt: !966)
!969 = !DILocation(line: 267, column: 7, scope: !958, inlinedAt: !966)
!970 = !DILocation(line: 269, column: 29, scope: !963, inlinedAt: !966)
!971 = !DILocation(line: 269, column: 42, scope: !963, inlinedAt: !966)
!972 = !DILocation(line: 269, column: 18, scope: !963, inlinedAt: !966)
!973 = !DILocation(line: 0, scope: !963, inlinedAt: !966)
!974 = !DILocation(line: 283, column: 11, scope: !948, inlinedAt: !950)
!975 = !DILocation(line: 313, column: 17, scope: !905, inlinedAt: !928)
!976 = !DILocation(line: 314, column: 3, scope: !905, inlinedAt: !928)
!977 = !DILocation(line: 315, column: 9, scope: !905, inlinedAt: !928)
!978 = !DILocation(line: 316, column: 10, scope: !979, inlinedAt: !928)
!979 = distinct !DILexicalBlock(scope: !905, file: !624, line: 316, column: 7)
!980 = !DILocation(line: 316, column: 7, scope: !905, inlinedAt: !928)
!981 = !DILocation(line: 105, column: 19, scope: !894)
!982 = !DILocation(line: 105, column: 22, scope: !894)
!983 = !DILocation(line: 105, column: 28, scope: !894)
!984 = !DILocation(line: 101, column: 3, scope: !894)
!985 = !DISubprogram(name: "openat", scope: !986, file: !986, line: 220, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!986 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!987 = !DISubroutineType(types: !988)
!988 = !{!42, !42, !39, !42, null}
!989 = !DISubprogram(name: "fdopendir", scope: !911, file: !911, line: 141, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!990 = !DISubroutineType(types: !991)
!991 = !{!992, !42}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!993 = !DISubprogram(name: "close", scope: !891, file: !891, line: 353, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!994 = !DISubroutineType(types: !995)
!995 = !{!42, !42}
!996 = !DISubprogram(name: "readdir", scope: !911, file: !911, line: 162, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!997 = !DISubroutineType(types: !998)
!998 = !{!999, !992}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!1000 = !DISubprogram(name: "closedir", scope: !911, file: !911, line: 149, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!42, !992}
!1003 = distinct !DISubprogram(name: "prog_fprintf", scope: !155, file: !155, line: 28, type: !1004, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !1041)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !1006, !39, null}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1008, line: 7, baseType: !1009)
!1008 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !683, line: 49, size: 1728, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1009, file: !683, line: 51, baseType: !42, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1009, file: !683, line: 54, baseType: !21, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1009, file: !683, line: 55, baseType: !21, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1009, file: !683, line: 56, baseType: !21, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1009, file: !683, line: 57, baseType: !21, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1009, file: !683, line: 58, baseType: !21, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1009, file: !683, line: 59, baseType: !21, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1009, file: !683, line: 60, baseType: !21, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1009, file: !683, line: 61, baseType: !21, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1009, file: !683, line: 64, baseType: !21, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1009, file: !683, line: 65, baseType: !21, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1009, file: !683, line: 66, baseType: !21, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1009, file: !683, line: 68, baseType: !698, size: 64, offset: 768)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1009, file: !683, line: 70, baseType: !1025, size: 64, offset: 832)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1009, file: !683, line: 72, baseType: !42, size: 32, offset: 896)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1009, file: !683, line: 73, baseType: !42, size: 32, offset: 928)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1009, file: !683, line: 74, baseType: !704, size: 64, offset: 960)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1009, file: !683, line: 77, baseType: !101, size: 16, offset: 1024)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1009, file: !683, line: 78, baseType: !709, size: 8, offset: 1040)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1009, file: !683, line: 79, baseType: !711, size: 8, offset: 1048)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1009, file: !683, line: 81, baseType: !715, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1009, file: !683, line: 89, baseType: !718, size: 64, offset: 1152)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1009, file: !683, line: 91, baseType: !720, size: 64, offset: 1216)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1009, file: !683, line: 92, baseType: !723, size: 64, offset: 1280)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1009, file: !683, line: 93, baseType: !1025, size: 64, offset: 1344)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1009, file: !683, line: 94, baseType: !23, size: 64, offset: 1408)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1009, file: !683, line: 95, baseType: !102, size: 64, offset: 1472)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1009, file: !683, line: 96, baseType: !42, size: 32, offset: 1536)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1009, file: !683, line: 98, baseType: !730, size: 160, offset: 1568)
!1041 = !{!1042, !1043, !1044}
!1042 = !DILocalVariable(name: "fp", arg: 1, scope: !1003, file: !155, line: 28, type: !1006)
!1043 = !DILocalVariable(name: "fmt", arg: 2, scope: !1003, file: !155, line: 28, type: !39)
!1044 = !DILocalVariable(name: "ap", scope: !1003, file: !155, line: 30, type: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !678, line: 52, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1047, line: 32, baseType: !1048)
!1047 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !155, baseType: !1049)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 192, elements: !712)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1050, file: !155, line: 30, baseType: !7, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1050, file: !155, line: 30, baseType: !7, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1050, file: !155, line: 30, baseType: !23, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1050, file: !155, line: 30, baseType: !23, size: 64, offset: 128)
!1056 = !DILocation(line: 0, scope: !1003)
!1057 = !DILocation(line: 30, column: 3, scope: !1003)
!1058 = !DILocation(line: 30, column: 11, scope: !1003)
!1059 = !DILocation(line: 31, column: 3, scope: !1003)
!1060 = !DILocation(line: 32, column: 3, scope: !1003)
!1061 = !DILocation(line: 33, column: 3, scope: !1003)
!1062 = !DILocalVariable(name: "__stream", arg: 1, scope: !1063, file: !1064, line: 132, type: !1067)
!1063 = distinct !DISubprogram(name: "vfprintf", scope: !1064, file: !1064, line: 132, type: !1065, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !1070)
!1064 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "")
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!42, !1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1006)
!1068 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1070 = !{!1062, !1071, !1072}
!1071 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1063, file: !1064, line: 133, type: !1068)
!1072 = !DILocalVariable(name: "__ap", arg: 3, scope: !1063, file: !1064, line: 133, type: !1069)
!1073 = !DILocation(line: 0, scope: !1063, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 34, column: 3, scope: !1003)
!1075 = !DILocation(line: 135, column: 10, scope: !1063, inlinedAt: !1074)
!1076 = !DILocation(line: 35, column: 3, scope: !1003)
!1077 = !DILocalVariable(name: "__c", arg: 1, scope: !1078, file: !1079, line: 91, type: !42)
!1078 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1079, file: !1079, line: 91, type: !1080, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !1082)
!1079 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!42, !42, !1006}
!1082 = !{!1077, !1083}
!1083 = !DILocalVariable(name: "__stream", arg: 2, scope: !1078, file: !1079, line: 91, type: !1006)
!1084 = !DILocation(line: 0, scope: !1078, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 36, column: 3, scope: !1003)
!1086 = !DILocation(line: 93, column: 10, scope: !1078, inlinedAt: !1085)
!1087 = !{!1088, !613, i64 40}
!1088 = !{!"_IO_FILE", !776, i64 0, !613, i64 8, !613, i64 16, !613, i64 24, !613, i64 32, !613, i64 40, !613, i64 48, !613, i64 56, !613, i64 64, !613, i64 72, !613, i64 80, !613, i64 88, !613, i64 96, !613, i64 104, !776, i64 112, !776, i64 116, !1089, i64 120, !1090, i64 128, !614, i64 130, !614, i64 131, !613, i64 136, !1089, i64 144, !613, i64 152, !613, i64 160, !613, i64 168, !613, i64 176, !1089, i64 184, !776, i64 192, !614, i64 196}
!1089 = !{!"long", !614, i64 0}
!1090 = !{!"short", !614, i64 0}
!1091 = !{!1088, !613, i64 48}
!1092 = !{!"branch_weights", i32 2000, i32 1}
!1093 = !DILocation(line: 37, column: 1, scope: !1003)
!1094 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !59, file: !59, line: 51, type: !625, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1095)
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "file", arg: 1, scope: !1094, file: !59, line: 51, type: !39)
!1097 = !DILocation(line: 0, scope: !1094)
!1098 = !DILocation(line: 53, column: 13, scope: !1094)
!1099 = !DILocation(line: 54, column: 1, scope: !1094)
!1100 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !59, file: !59, line: 88, type: !1101, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1103)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !28}
!1103 = !{!1104}
!1104 = !DILocalVariable(name: "ignore", arg: 1, scope: !1100, file: !59, line: 88, type: !28)
!1105 = !DILocation(line: 0, scope: !1100)
!1106 = !DILocation(line: 90, column: 16, scope: !1100)
!1107 = !{!1108, !1108, i64 0}
!1108 = !{!"_Bool", !614, i64 0}
!1109 = !DILocation(line: 91, column: 1, scope: !1100)
!1110 = distinct !DISubprogram(name: "close_stdout", scope: !59, file: !59, line: 117, type: !878, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1111)
!1111 = !{!1112}
!1112 = !DILocalVariable(name: "write_error", scope: !1113, file: !59, line: 122, type: !39)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !59, line: 121, column: 5)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !59, line: 119, column: 7)
!1115 = !DILocation(line: 119, column: 21, scope: !1114)
!1116 = !DILocation(line: 119, column: 7, scope: !1114)
!1117 = !DILocation(line: 119, column: 29, scope: !1114)
!1118 = !DILocation(line: 120, column: 7, scope: !1114)
!1119 = !DILocation(line: 120, column: 12, scope: !1114)
!1120 = !{i8 0, i8 2}
!1121 = !DILocation(line: 120, column: 25, scope: !1114)
!1122 = !DILocation(line: 120, column: 28, scope: !1114)
!1123 = !DILocation(line: 120, column: 34, scope: !1114)
!1124 = !DILocation(line: 119, column: 7, scope: !1110)
!1125 = !DILocation(line: 122, column: 33, scope: !1113)
!1126 = !DILocation(line: 0, scope: !1113)
!1127 = !DILocation(line: 123, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1113, file: !59, line: 123, column: 11)
!1129 = !DILocation(line: 0, scope: !1128)
!1130 = !DILocation(line: 123, column: 11, scope: !1113)
!1131 = !DILocation(line: 124, column: 36, scope: !1128)
!1132 = !DILocation(line: 124, column: 9, scope: !1128)
!1133 = !DILocation(line: 127, column: 9, scope: !1128)
!1134 = !DILocation(line: 129, column: 14, scope: !1113)
!1135 = !DILocation(line: 129, column: 7, scope: !1113)
!1136 = !DILocation(line: 134, column: 42, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1110, file: !59, line: 134, column: 7)
!1138 = !DILocation(line: 134, column: 28, scope: !1137)
!1139 = !DILocation(line: 134, column: 50, scope: !1137)
!1140 = !DILocation(line: 134, column: 7, scope: !1110)
!1141 = !DILocation(line: 135, column: 12, scope: !1137)
!1142 = !DILocation(line: 135, column: 5, scope: !1137)
!1143 = !DILocation(line: 136, column: 1, scope: !1110)
!1144 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !159, file: !159, line: 31, type: !811, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !158, retainedNodes: !1145)
!1145 = !{!1146, !1147, !1148, !1149}
!1146 = !DILocalVariable(name: "file", arg: 1, scope: !1144, file: !159, line: 31, type: !21)
!1147 = !DILocalVariable(name: "base", scope: !1144, file: !159, line: 33, type: !21)
!1148 = !DILocalVariable(name: "base_lim", scope: !1144, file: !159, line: 34, type: !21)
!1149 = !DILocalVariable(name: "had_slash", scope: !1144, file: !159, line: 35, type: !28)
!1150 = !DILocation(line: 0, scope: !1144)
!1151 = !DILocation(line: 33, column: 16, scope: !1144)
!1152 = !DILocation(line: 39, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1144, file: !159, line: 39, column: 7)
!1154 = !DILocation(line: 39, column: 7, scope: !1144)
!1155 = !DILocation(line: 41, column: 21, scope: !1144)
!1156 = !DILocation(line: 41, column: 19, scope: !1144)
!1157 = !DILocation(line: 42, column: 16, scope: !1144)
!1158 = !DILocation(line: 42, column: 26, scope: !1144)
!1159 = !DILocation(line: 43, column: 13, scope: !1144)
!1160 = !DILocation(line: 44, column: 3, scope: !1144)
!1161 = distinct !DISubprogram(name: "set_program_name", scope: !72, file: !72, line: 39, type: !625, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !71, retainedNodes: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DILocalVariable(name: "argv0", arg: 1, scope: !1161, file: !72, line: 39, type: !39)
!1164 = !DILocalVariable(name: "slash", scope: !1161, file: !72, line: 46, type: !39)
!1165 = !DILocalVariable(name: "base", scope: !1161, file: !72, line: 47, type: !39)
!1166 = !DILocation(line: 0, scope: !1161)
!1167 = !DILocation(line: 51, column: 13, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1161, file: !72, line: 51, column: 7)
!1169 = !DILocation(line: 51, column: 7, scope: !1161)
!1170 = !DILocation(line: 55, column: 14, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !72, line: 52, column: 5)
!1172 = !DILocation(line: 54, column: 7, scope: !1171)
!1173 = !DILocation(line: 56, column: 7, scope: !1171)
!1174 = !DILocation(line: 59, column: 11, scope: !1161)
!1175 = !DILocation(line: 60, column: 17, scope: !1161)
!1176 = !DILocation(line: 60, column: 11, scope: !1161)
!1177 = !DILocation(line: 61, column: 12, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1161, file: !72, line: 61, column: 7)
!1179 = !DILocation(line: 61, column: 20, scope: !1178)
!1180 = !DILocation(line: 61, column: 25, scope: !1178)
!1181 = !DILocation(line: 61, column: 42, scope: !1178)
!1182 = !DILocation(line: 61, column: 28, scope: !1178)
!1183 = !DILocation(line: 61, column: 61, scope: !1178)
!1184 = !DILocation(line: 61, column: 7, scope: !1161)
!1185 = !DILocation(line: 64, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !72, line: 64, column: 11)
!1187 = distinct !DILexicalBlock(scope: !1178, file: !72, line: 62, column: 5)
!1188 = !DILocation(line: 64, column: 36, scope: !1186)
!1189 = !DILocation(line: 64, column: 11, scope: !1187)
!1190 = !DILocation(line: 66, column: 24, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !72, line: 65, column: 9)
!1192 = !DILocation(line: 70, column: 41, scope: !1191)
!1193 = !DILocation(line: 72, column: 9, scope: !1191)
!1194 = !DILocation(line: 84, column: 16, scope: !1161)
!1195 = !DILocation(line: 90, column: 27, scope: !1161)
!1196 = !DILocation(line: 92, column: 1, scope: !1161)
!1197 = distinct !DISubprogram(name: "clone_quoting_options", scope: !78, file: !78, line: 122, type: !1198, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1201)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!1200, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1201 = !{!1202, !1203, !1204}
!1202 = !DILocalVariable(name: "o", arg: 1, scope: !1197, file: !78, line: 122, type: !1200)
!1203 = !DILocalVariable(name: "e", scope: !1197, file: !78, line: 124, type: !42)
!1204 = !DILocalVariable(name: "p", scope: !1197, file: !78, line: 125, type: !1200)
!1205 = !DILocation(line: 0, scope: !1197)
!1206 = !DILocation(line: 124, column: 11, scope: !1197)
!1207 = !DILocation(line: 125, column: 40, scope: !1197)
!1208 = !DILocation(line: 125, column: 31, scope: !1197)
!1209 = !DILocation(line: 127, column: 9, scope: !1197)
!1210 = !DILocation(line: 128, column: 3, scope: !1197)
!1211 = distinct !DISubprogram(name: "get_quoting_style", scope: !78, file: !78, line: 133, type: !1212, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1216)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!5, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!1216 = !{!1217}
!1217 = !DILocalVariable(name: "o", arg: 1, scope: !1211, file: !78, line: 133, type: !1214)
!1218 = !DILocation(line: 0, scope: !1211)
!1219 = !DILocation(line: 135, column: 11, scope: !1211)
!1220 = !DILocation(line: 135, column: 46, scope: !1211)
!1221 = !{!1222, !614, i64 0}
!1222 = !{!"quoting_options", !614, i64 0, !776, i64 4, !614, i64 8, !613, i64 40, !613, i64 48}
!1223 = !DILocation(line: 135, column: 3, scope: !1211)
!1224 = distinct !DISubprogram(name: "set_quoting_style", scope: !78, file: !78, line: 141, type: !1225, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !1200, !5}
!1227 = !{!1228, !1229}
!1228 = !DILocalVariable(name: "o", arg: 1, scope: !1224, file: !78, line: 141, type: !1200)
!1229 = !DILocalVariable(name: "s", arg: 2, scope: !1224, file: !78, line: 141, type: !5)
!1230 = !DILocation(line: 0, scope: !1224)
!1231 = !DILocation(line: 143, column: 4, scope: !1224)
!1232 = !DILocation(line: 143, column: 39, scope: !1224)
!1233 = !DILocation(line: 143, column: 45, scope: !1224)
!1234 = !DILocation(line: 144, column: 1, scope: !1224)
!1235 = distinct !DISubprogram(name: "set_char_quoting", scope: !78, file: !78, line: 152, type: !1236, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!42, !1200, !22, !42}
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1245, !1246}
!1239 = !DILocalVariable(name: "o", arg: 1, scope: !1235, file: !78, line: 152, type: !1200)
!1240 = !DILocalVariable(name: "c", arg: 2, scope: !1235, file: !78, line: 152, type: !22)
!1241 = !DILocalVariable(name: "i", arg: 3, scope: !1235, file: !78, line: 152, type: !42)
!1242 = !DILocalVariable(name: "uc", scope: !1235, file: !78, line: 154, type: !157)
!1243 = !DILocalVariable(name: "p", scope: !1235, file: !78, line: 155, type: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1245 = !DILocalVariable(name: "shift", scope: !1235, file: !78, line: 157, type: !42)
!1246 = !DILocalVariable(name: "r", scope: !1235, file: !78, line: 158, type: !42)
!1247 = !DILocation(line: 0, scope: !1235)
!1248 = !DILocation(line: 156, column: 6, scope: !1235)
!1249 = !DILocation(line: 156, column: 62, scope: !1235)
!1250 = !DILocation(line: 156, column: 57, scope: !1235)
!1251 = !DILocation(line: 157, column: 15, scope: !1235)
!1252 = !DILocation(line: 158, column: 12, scope: !1235)
!1253 = !DILocation(line: 158, column: 15, scope: !1235)
!1254 = !DILocation(line: 158, column: 25, scope: !1235)
!1255 = !DILocation(line: 159, column: 13, scope: !1235)
!1256 = !DILocation(line: 159, column: 18, scope: !1235)
!1257 = !DILocation(line: 159, column: 23, scope: !1235)
!1258 = !DILocation(line: 159, column: 6, scope: !1235)
!1259 = !DILocation(line: 160, column: 3, scope: !1235)
!1260 = distinct !DISubprogram(name: "set_quoting_flags", scope: !78, file: !78, line: 168, type: !1261, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!42, !1200, !42}
!1263 = !{!1264, !1265, !1266}
!1264 = !DILocalVariable(name: "o", arg: 1, scope: !1260, file: !78, line: 168, type: !1200)
!1265 = !DILocalVariable(name: "i", arg: 2, scope: !1260, file: !78, line: 168, type: !42)
!1266 = !DILocalVariable(name: "r", scope: !1260, file: !78, line: 170, type: !42)
!1267 = !DILocation(line: 0, scope: !1260)
!1268 = !DILocation(line: 171, column: 8, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1260, file: !78, line: 171, column: 7)
!1270 = !DILocation(line: 171, column: 7, scope: !1260)
!1271 = !DILocation(line: 173, column: 10, scope: !1260)
!1272 = !{!1222, !776, i64 4}
!1273 = !DILocation(line: 174, column: 12, scope: !1260)
!1274 = !DILocation(line: 175, column: 3, scope: !1260)
!1275 = distinct !DISubprogram(name: "set_custom_quoting", scope: !78, file: !78, line: 179, type: !1276, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{null, !1200, !39, !39}
!1278 = !{!1279, !1280, !1281}
!1279 = !DILocalVariable(name: "o", arg: 1, scope: !1275, file: !78, line: 179, type: !1200)
!1280 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1275, file: !78, line: 180, type: !39)
!1281 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1275, file: !78, line: 180, type: !39)
!1282 = !DILocation(line: 0, scope: !1275)
!1283 = !DILocation(line: 182, column: 8, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1275, file: !78, line: 182, column: 7)
!1285 = !DILocation(line: 182, column: 7, scope: !1275)
!1286 = !DILocation(line: 184, column: 6, scope: !1275)
!1287 = !DILocation(line: 184, column: 12, scope: !1275)
!1288 = !DILocation(line: 185, column: 8, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1275, file: !78, line: 185, column: 7)
!1290 = !DILocation(line: 185, column: 19, scope: !1289)
!1291 = !DILocation(line: 186, column: 5, scope: !1289)
!1292 = !DILocation(line: 187, column: 6, scope: !1275)
!1293 = !DILocation(line: 187, column: 17, scope: !1275)
!1294 = !{!1222, !613, i64 40}
!1295 = !DILocation(line: 188, column: 6, scope: !1275)
!1296 = !DILocation(line: 188, column: 18, scope: !1275)
!1297 = !{!1222, !613, i64 48}
!1298 = !DILocation(line: 189, column: 1, scope: !1275)
!1299 = distinct !DISubprogram(name: "quotearg_buffer", scope: !78, file: !78, line: 784, type: !1300, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!102, !21, !102, !39, !102, !1214}
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1303 = !DILocalVariable(name: "buffer", arg: 1, scope: !1299, file: !78, line: 784, type: !21)
!1304 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1299, file: !78, line: 784, type: !102)
!1305 = !DILocalVariable(name: "arg", arg: 3, scope: !1299, file: !78, line: 785, type: !39)
!1306 = !DILocalVariable(name: "argsize", arg: 4, scope: !1299, file: !78, line: 785, type: !102)
!1307 = !DILocalVariable(name: "o", arg: 5, scope: !1299, file: !78, line: 786, type: !1214)
!1308 = !DILocalVariable(name: "p", scope: !1299, file: !78, line: 788, type: !1214)
!1309 = !DILocalVariable(name: "e", scope: !1299, file: !78, line: 789, type: !42)
!1310 = !DILocalVariable(name: "r", scope: !1299, file: !78, line: 790, type: !102)
!1311 = !DILocation(line: 0, scope: !1299)
!1312 = !DILocation(line: 788, column: 37, scope: !1299)
!1313 = !DILocation(line: 789, column: 11, scope: !1299)
!1314 = !DILocation(line: 791, column: 43, scope: !1299)
!1315 = !DILocation(line: 791, column: 53, scope: !1299)
!1316 = !DILocation(line: 791, column: 60, scope: !1299)
!1317 = !DILocation(line: 792, column: 43, scope: !1299)
!1318 = !DILocation(line: 792, column: 58, scope: !1299)
!1319 = !DILocation(line: 790, column: 14, scope: !1299)
!1320 = !DILocation(line: 793, column: 9, scope: !1299)
!1321 = !DILocation(line: 794, column: 3, scope: !1299)
!1322 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !78, file: !78, line: 256, type: !1323, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1327)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!102, !21, !102, !39, !102, !5, !42, !1325, !39, !39}
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1352, !1353, !1354, !1355, !1356, !1359, !1360, !1378, !1381, !1382, !1389, !1392, !1393, !1394, !1395, !1396, !1397}
!1328 = !DILocalVariable(name: "buffer", arg: 1, scope: !1322, file: !78, line: 256, type: !21)
!1329 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1322, file: !78, line: 256, type: !102)
!1330 = !DILocalVariable(name: "arg", arg: 3, scope: !1322, file: !78, line: 257, type: !39)
!1331 = !DILocalVariable(name: "argsize", arg: 4, scope: !1322, file: !78, line: 257, type: !102)
!1332 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1322, file: !78, line: 258, type: !5)
!1333 = !DILocalVariable(name: "flags", arg: 6, scope: !1322, file: !78, line: 258, type: !42)
!1334 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1322, file: !78, line: 259, type: !1325)
!1335 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1322, file: !78, line: 260, type: !39)
!1336 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1322, file: !78, line: 261, type: !39)
!1337 = !DILocalVariable(name: "i", scope: !1322, file: !78, line: 263, type: !102)
!1338 = !DILocalVariable(name: "len", scope: !1322, file: !78, line: 264, type: !102)
!1339 = !DILocalVariable(name: "orig_buffersize", scope: !1322, file: !78, line: 265, type: !102)
!1340 = !DILocalVariable(name: "quote_string", scope: !1322, file: !78, line: 266, type: !39)
!1341 = !DILocalVariable(name: "quote_string_len", scope: !1322, file: !78, line: 267, type: !102)
!1342 = !DILocalVariable(name: "backslash_escapes", scope: !1322, file: !78, line: 268, type: !28)
!1343 = !DILocalVariable(name: "unibyte_locale", scope: !1322, file: !78, line: 269, type: !28)
!1344 = !DILocalVariable(name: "elide_outer_quotes", scope: !1322, file: !78, line: 270, type: !28)
!1345 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1322, file: !78, line: 271, type: !28)
!1346 = !DILocalVariable(name: "encountered_single_quote", scope: !1322, file: !78, line: 272, type: !28)
!1347 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1322, file: !78, line: 273, type: !28)
!1348 = !DILocalVariable(name: "c", scope: !1349, file: !78, line: 402, type: !157)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !78, line: 401, column: 5)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !78, line: 400, column: 3)
!1351 = distinct !DILexicalBlock(scope: !1322, file: !78, line: 400, column: 3)
!1352 = !DILocalVariable(name: "esc", scope: !1349, file: !78, line: 403, type: !157)
!1353 = !DILocalVariable(name: "is_right_quote", scope: !1349, file: !78, line: 404, type: !28)
!1354 = !DILocalVariable(name: "escaping", scope: !1349, file: !78, line: 405, type: !28)
!1355 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1349, file: !78, line: 406, type: !28)
!1356 = !DILocalVariable(name: "m", scope: !1357, file: !78, line: 610, type: !102)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 608, column: 11)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !78, line: 426, column: 9)
!1359 = !DILocalVariable(name: "printable", scope: !1357, file: !78, line: 612, type: !28)
!1360 = !DILocalVariable(name: "mbstate", scope: !1361, file: !78, line: 621, type: !1363)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !78, line: 620, column: 15)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !78, line: 614, column: 17)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1364, line: 6, baseType: !1365)
!1364 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1366, line: 21, baseType: !1367)
!1366 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1366, line: 13, size: 64, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1367, file: !1366, line: 15, baseType: !42, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1367, file: !1366, line: 20, baseType: !1371, size: 32, offset: 32)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !1366, line: 16, size: 32, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1371, file: !1366, line: 18, baseType: !7, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1371, file: !1366, line: 19, baseType: !1375, size: 32)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !1376)
!1376 = !{!1377}
!1377 = !DISubrange(count: 4)
!1378 = !DILocalVariable(name: "w", scope: !1379, file: !78, line: 631, type: !1380)
!1379 = distinct !DILexicalBlock(scope: !1361, file: !78, line: 630, column: 19)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !103, line: 74, baseType: !42)
!1381 = !DILocalVariable(name: "bytes", scope: !1379, file: !78, line: 632, type: !102)
!1382 = !DILocalVariable(name: "j", scope: !1383, file: !78, line: 657, type: !102)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !78, line: 656, column: 27)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !78, line: 654, column: 29)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !78, line: 649, column: 23)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !78, line: 641, column: 30)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !78, line: 636, column: 30)
!1388 = distinct !DILexicalBlock(scope: !1379, file: !78, line: 634, column: 25)
!1389 = !DILocalVariable(name: "ilim", scope: !1390, file: !78, line: 684, type: !102)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !78, line: 681, column: 15)
!1391 = distinct !DILexicalBlock(scope: !1357, file: !78, line: 680, column: 17)
!1392 = !DILabel(scope: !1322, name: "process_input", file: !78, line: 314)
!1393 = !DILabel(scope: !1358, name: "c_and_shell_escape", file: !78, line: 512)
!1394 = !DILabel(scope: !1358, name: "c_escape", file: !78, line: 517)
!1395 = !DILabel(scope: !1349, name: "store_escape", file: !78, line: 719)
!1396 = !DILabel(scope: !1349, name: "store_c", file: !78, line: 722)
!1397 = !DILabel(scope: !1322, name: "force_outer_quoting_style", file: !78, line: 763)
!1398 = !DILocation(line: 0, scope: !1322)
!1399 = !DILocation(line: 269, column: 25, scope: !1322)
!1400 = !DILocation(line: 269, column: 36, scope: !1322)
!1401 = !DILocation(line: 270, column: 8, scope: !1322)
!1402 = !DILocation(line: 273, column: 3, scope: !1322)
!1403 = !DILocation(line: 265, column: 10, scope: !1322)
!1404 = !DILocation(line: 266, column: 15, scope: !1322)
!1405 = !DILocation(line: 267, column: 10, scope: !1322)
!1406 = !DILocation(line: 268, column: 8, scope: !1322)
!1407 = !DILocation(line: 271, column: 8, scope: !1322)
!1408 = !DILocation(line: 272, column: 8, scope: !1322)
!1409 = !DILocation(line: 273, column: 8, scope: !1322)
!1410 = !DILocation(line: 314, column: 2, scope: !1322)
!1411 = !DILocation(line: 316, column: 3, scope: !1322)
!1412 = !DILocation(line: 323, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1322, file: !78, line: 317, column: 5)
!1414 = !DILocation(line: 323, column: 12, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1413, file: !78, line: 323, column: 11)
!1416 = !DILocation(line: 324, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !78, line: 324, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1415, file: !78, line: 324, column: 9)
!1419 = !DILocation(line: 324, column: 9, scope: !1418)
!1420 = !DILocation(line: 362, column: 26, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !78, line: 340, column: 11)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !78, line: 339, column: 13)
!1423 = distinct !DILexicalBlock(scope: !1413, file: !78, line: 338, column: 7)
!1424 = !DILocation(line: 363, column: 27, scope: !1421)
!1425 = !DILocation(line: 364, column: 11, scope: !1421)
!1426 = !DILocation(line: 365, column: 14, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1423, file: !78, line: 365, column: 13)
!1428 = !DILocation(line: 365, column: 13, scope: !1423)
!1429 = !DILocation(line: 366, column: 43, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !78, line: 366, column: 11)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !78, line: 366, column: 11)
!1432 = !DILocation(line: 366, column: 11, scope: !1431)
!1433 = !DILocation(line: 367, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !78, line: 367, column: 13)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !78, line: 367, column: 13)
!1436 = !DILocation(line: 367, column: 13, scope: !1435)
!1437 = !DILocation(line: 366, column: 70, scope: !1430)
!1438 = distinct !{!1438, !1432, !1439, !653}
!1439 = !DILocation(line: 367, column: 13, scope: !1431)
!1440 = !DILocation(line: 264, column: 10, scope: !1322)
!1441 = !DILocation(line: 370, column: 28, scope: !1423)
!1442 = !DILocation(line: 372, column: 7, scope: !1413)
!1443 = !DILocation(line: 376, column: 7, scope: !1413)
!1444 = !DILocation(line: 379, column: 7, scope: !1413)
!1445 = !DILocation(line: 381, column: 12, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1413, file: !78, line: 381, column: 11)
!1447 = !DILocation(line: 381, column: 11, scope: !1413)
!1448 = !DILocation(line: 386, column: 12, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1413, file: !78, line: 386, column: 11)
!1450 = !DILocation(line: 386, column: 11, scope: !1413)
!1451 = !DILocation(line: 387, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !78, line: 387, column: 9)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !78, line: 387, column: 9)
!1454 = !DILocation(line: 387, column: 9, scope: !1453)
!1455 = !DILocation(line: 394, column: 7, scope: !1413)
!1456 = !DILocation(line: 397, column: 7, scope: !1413)
!1457 = !DILocation(line: 400, column: 8, scope: !1351)
!1458 = !DILocation(line: 0, scope: !1351)
!1459 = !DILocation(line: 400, column: 27, scope: !1350)
!1460 = !DILocation(line: 400, column: 19, scope: !1350)
!1461 = !DILocation(line: 400, column: 41, scope: !1350)
!1462 = !DILocation(line: 400, column: 48, scope: !1350)
!1463 = !DILocation(line: 400, column: 3, scope: !1351)
!1464 = !DILocation(line: 400, column: 60, scope: !1350)
!1465 = !DILocation(line: 0, scope: !1349)
!1466 = !DILocation(line: 409, column: 11, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1349, file: !78, line: 408, column: 11)
!1468 = !DILocation(line: 411, column: 17, scope: !1467)
!1469 = !DILocation(line: 412, column: 39, scope: !1467)
!1470 = !DILocation(line: 416, column: 32, scope: !1467)
!1471 = !DILocation(line: 412, column: 19, scope: !1467)
!1472 = !DILocation(line: 412, column: 15, scope: !1467)
!1473 = !DILocation(line: 417, column: 11, scope: !1467)
!1474 = !DILocation(line: 417, column: 26, scope: !1467)
!1475 = !DILocation(line: 417, column: 14, scope: !1467)
!1476 = !DILocation(line: 417, column: 63, scope: !1467)
!1477 = !DILocation(line: 408, column: 11, scope: !1349)
!1478 = !DILocation(line: 424, column: 11, scope: !1349)
!1479 = !DILocation(line: 425, column: 7, scope: !1349)
!1480 = !DILocation(line: 428, column: 15, scope: !1358)
!1481 = !DILocation(line: 430, column: 15, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !78, line: 430, column: 15)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !78, line: 429, column: 13)
!1484 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 428, column: 15)
!1485 = !DILocation(line: 430, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !78, line: 430, column: 15)
!1487 = !DILocation(line: 430, column: 15, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !78, line: 430, column: 15)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !78, line: 430, column: 15)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !78, line: 430, column: 15)
!1491 = !DILocation(line: 430, column: 15, scope: !1489)
!1492 = !DILocation(line: 430, column: 15, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !78, line: 430, column: 15)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !78, line: 430, column: 15)
!1495 = !DILocation(line: 430, column: 15, scope: !1494)
!1496 = !DILocation(line: 430, column: 15, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !78, line: 430, column: 15)
!1498 = distinct !DILexicalBlock(scope: !1490, file: !78, line: 430, column: 15)
!1499 = !DILocation(line: 430, column: 15, scope: !1498)
!1500 = !DILocation(line: 430, column: 15, scope: !1490)
!1501 = !DILocation(line: 430, column: 15, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !78, line: 430, column: 15)
!1503 = distinct !DILexicalBlock(scope: !1482, file: !78, line: 430, column: 15)
!1504 = !DILocation(line: 430, column: 15, scope: !1503)
!1505 = !DILocation(line: 438, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1483, file: !78, line: 437, column: 19)
!1507 = !DILocation(line: 438, column: 48, scope: !1506)
!1508 = !DILocation(line: 438, column: 59, scope: !1506)
!1509 = !DILocation(line: 440, column: 19, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !78, line: 440, column: 19)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !78, line: 440, column: 19)
!1512 = distinct !DILexicalBlock(scope: !1506, file: !78, line: 439, column: 17)
!1513 = !DILocation(line: 440, column: 19, scope: !1511)
!1514 = !DILocation(line: 441, column: 19, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !78, line: 441, column: 19)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !78, line: 441, column: 19)
!1517 = !DILocation(line: 441, column: 19, scope: !1516)
!1518 = !DILocation(line: 442, column: 17, scope: !1512)
!1519 = !DILocation(line: 449, column: 20, scope: !1484)
!1520 = !DILocation(line: 454, column: 11, scope: !1358)
!1521 = !DILocation(line: 457, column: 19, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 455, column: 13)
!1523 = !DILocation(line: 463, column: 19, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1522, file: !78, line: 462, column: 19)
!1525 = !DILocation(line: 463, column: 47, scope: !1524)
!1526 = !DILocation(line: 463, column: 41, scope: !1524)
!1527 = !DILocation(line: 463, column: 52, scope: !1524)
!1528 = !DILocation(line: 462, column: 19, scope: !1522)
!1529 = !DILocation(line: 464, column: 25, scope: !1524)
!1530 = !DILocation(line: 464, column: 17, scope: !1524)
!1531 = !DILocation(line: 471, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1524, file: !78, line: 465, column: 19)
!1533 = !DILocation(line: 475, column: 21, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !78, line: 475, column: 21)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !78, line: 475, column: 21)
!1536 = !DILocation(line: 475, column: 21, scope: !1535)
!1537 = !DILocation(line: 476, column: 21, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !78, line: 476, column: 21)
!1539 = distinct !DILexicalBlock(scope: !1532, file: !78, line: 476, column: 21)
!1540 = !DILocation(line: 476, column: 21, scope: !1539)
!1541 = !DILocation(line: 477, column: 21, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !78, line: 477, column: 21)
!1543 = distinct !DILexicalBlock(scope: !1532, file: !78, line: 477, column: 21)
!1544 = !DILocation(line: 477, column: 21, scope: !1543)
!1545 = !DILocation(line: 478, column: 21, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !78, line: 478, column: 21)
!1547 = distinct !DILexicalBlock(scope: !1532, file: !78, line: 478, column: 21)
!1548 = !DILocation(line: 478, column: 21, scope: !1547)
!1549 = !DILocation(line: 479, column: 21, scope: !1532)
!1550 = !DILocation(line: 492, column: 31, scope: !1358)
!1551 = !DILocation(line: 493, column: 31, scope: !1358)
!1552 = !DILocation(line: 495, column: 31, scope: !1358)
!1553 = !DILocation(line: 496, column: 31, scope: !1358)
!1554 = !DILocation(line: 497, column: 31, scope: !1358)
!1555 = !DILocation(line: 500, column: 15, scope: !1358)
!1556 = !DILocation(line: 502, column: 19, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !78, line: 501, column: 13)
!1558 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 500, column: 15)
!1559 = !DILocation(line: 509, column: 33, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 509, column: 15)
!1561 = !DILocation(line: 0, scope: !1358)
!1562 = !DILocation(line: 512, column: 9, scope: !1358)
!1563 = !DILocation(line: 514, column: 15, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 513, column: 15)
!1565 = !DILocation(line: 517, column: 9, scope: !1358)
!1566 = !DILocation(line: 518, column: 15, scope: !1358)
!1567 = !DILocation(line: 526, column: 15, scope: !1358)
!1568 = !DILocation(line: 526, column: 40, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 526, column: 15)
!1570 = !DILocation(line: 526, column: 47, scope: !1569)
!1571 = !DILocation(line: 526, column: 18, scope: !1569)
!1572 = !DILocation(line: 530, column: 17, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 530, column: 15)
!1574 = !DILocation(line: 530, column: 15, scope: !1358)
!1575 = !DILocation(line: 535, column: 11, scope: !1358)
!1576 = !DILocation(line: 549, column: 15, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 548, column: 15)
!1578 = !DILocation(line: 556, column: 15, scope: !1358)
!1579 = !DILocation(line: 558, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !78, line: 557, column: 13)
!1581 = distinct !DILexicalBlock(scope: !1358, file: !78, line: 556, column: 15)
!1582 = !DILocation(line: 561, column: 19, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !78, line: 561, column: 19)
!1584 = !DILocation(line: 561, column: 30, scope: !1583)
!1585 = !DILocation(line: 570, column: 15, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !78, line: 570, column: 15)
!1587 = distinct !DILexicalBlock(scope: !1580, file: !78, line: 570, column: 15)
!1588 = !DILocation(line: 570, column: 15, scope: !1587)
!1589 = !DILocation(line: 571, column: 15, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !78, line: 571, column: 15)
!1591 = distinct !DILexicalBlock(scope: !1580, file: !78, line: 571, column: 15)
!1592 = !DILocation(line: 571, column: 15, scope: !1591)
!1593 = !DILocation(line: 572, column: 15, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !78, line: 572, column: 15)
!1595 = distinct !DILexicalBlock(scope: !1580, file: !78, line: 572, column: 15)
!1596 = !DILocation(line: 572, column: 15, scope: !1595)
!1597 = !DILocation(line: 574, column: 13, scope: !1580)
!1598 = !DILocation(line: 614, column: 17, scope: !1357)
!1599 = !DILocation(line: 0, scope: !1357)
!1600 = !DILocation(line: 617, column: 29, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1362, file: !78, line: 615, column: 15)
!1602 = !{!1090, !1090, i64 0}
!1603 = !DILocation(line: 617, column: 27, scope: !1601)
!1604 = !DILocation(line: 678, column: 40, scope: !1357)
!1605 = !DILocation(line: 680, column: 23, scope: !1391)
!1606 = !DILocation(line: 621, column: 17, scope: !1361)
!1607 = !DILocation(line: 621, column: 27, scope: !1361)
!1608 = !DILocalVariable(name: "__dest", arg: 1, scope: !1609, file: !1610, line: 57, type: !23)
!1609 = distinct !DISubprogram(name: "memset", scope: !1610, file: !1610, line: 57, type: !1611, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1613)
!1610 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!23, !23, !42, !102}
!1613 = !{!1608, !1614, !1615}
!1614 = !DILocalVariable(name: "__ch", arg: 2, scope: !1609, file: !1610, line: 57, type: !42)
!1615 = !DILocalVariable(name: "__len", arg: 3, scope: !1609, file: !1610, line: 57, type: !102)
!1616 = !DILocation(line: 0, scope: !1609, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 622, column: 17, scope: !1361)
!1618 = !DILocation(line: 59, column: 10, scope: !1609, inlinedAt: !1617)
!1619 = !DILocation(line: 626, column: 29, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1361, file: !78, line: 626, column: 21)
!1621 = !DILocation(line: 626, column: 21, scope: !1361)
!1622 = !DILocation(line: 627, column: 29, scope: !1620)
!1623 = !DILocation(line: 627, column: 19, scope: !1620)
!1624 = !DILocation(line: 629, column: 17, scope: !1361)
!1625 = !DILocation(line: 624, column: 19, scope: !1361)
!1626 = !DILocation(line: 625, column: 27, scope: !1361)
!1627 = !DILocation(line: 631, column: 21, scope: !1379)
!1628 = !DILocation(line: 632, column: 56, scope: !1379)
!1629 = !DILocation(line: 632, column: 50, scope: !1379)
!1630 = !DILocation(line: 633, column: 53, scope: !1379)
!1631 = !DILocation(line: 0, scope: !1379)
!1632 = !DILocation(line: 632, column: 36, scope: !1379)
!1633 = !DILocation(line: 634, column: 25, scope: !1379)
!1634 = !DILocation(line: 644, column: 38, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1386, file: !78, line: 642, column: 23)
!1636 = !DILocation(line: 644, column: 48, scope: !1635)
!1637 = !DILocation(line: 644, column: 25, scope: !1635)
!1638 = !DILocation(line: 644, column: 51, scope: !1635)
!1639 = !DILocation(line: 645, column: 28, scope: !1635)
!1640 = !DILocation(line: 644, column: 34, scope: !1635)
!1641 = distinct !{!1641, !1637, !1639, !653}
!1642 = !DILocation(line: 655, column: 29, scope: !1384)
!1643 = !DILocation(line: 0, scope: !1383)
!1644 = !DILocation(line: 659, column: 49, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !78, line: 658, column: 29)
!1646 = distinct !DILexicalBlock(scope: !1383, file: !78, line: 658, column: 29)
!1647 = !DILocation(line: 659, column: 39, scope: !1645)
!1648 = !DILocation(line: 659, column: 31, scope: !1645)
!1649 = !DILocation(line: 658, column: 53, scope: !1645)
!1650 = !DILocation(line: 658, column: 43, scope: !1645)
!1651 = !DILocation(line: 658, column: 29, scope: !1646)
!1652 = distinct !{!1652, !1651, !1653, !653}
!1653 = !DILocation(line: 667, column: 33, scope: !1646)
!1654 = !DILocation(line: 674, column: 19, scope: !1361)
!1655 = !DILocation(line: 670, column: 41, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1385, file: !78, line: 670, column: 29)
!1657 = !DILocation(line: 670, column: 31, scope: !1656)
!1658 = !DILocation(line: 670, column: 29, scope: !1385)
!1659 = !DILocation(line: 672, column: 27, scope: !1385)
!1660 = !DILocation(line: 675, column: 26, scope: !1361)
!1661 = !DILocation(line: 675, column: 24, scope: !1361)
!1662 = !DILocation(line: 674, column: 19, scope: !1379)
!1663 = distinct !{!1663, !1624, !1664, !653}
!1664 = !DILocation(line: 675, column: 44, scope: !1361)
!1665 = !DILocation(line: 676, column: 15, scope: !1362)
!1666 = !DILocation(line: 680, column: 19, scope: !1391)
!1667 = !DILocation(line: 680, column: 45, scope: !1391)
!1668 = !DILocation(line: 684, column: 33, scope: !1390)
!1669 = !DILocation(line: 0, scope: !1390)
!1670 = !DILocation(line: 686, column: 17, scope: !1390)
!1671 = !DILocation(line: 405, column: 12, scope: !1349)
!1672 = !DILocation(line: 688, column: 43, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !78, line: 688, column: 25)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !78, line: 687, column: 19)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !78, line: 686, column: 17)
!1676 = distinct !DILexicalBlock(scope: !1390, file: !78, line: 686, column: 17)
!1677 = !DILocation(line: 690, column: 25, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !78, line: 690, column: 25)
!1679 = distinct !DILexicalBlock(scope: !1673, file: !78, line: 689, column: 23)
!1680 = !DILocation(line: 690, column: 25, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !78, line: 690, column: 25)
!1682 = !DILocation(line: 690, column: 25, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !78, line: 690, column: 25)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !78, line: 690, column: 25)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !78, line: 690, column: 25)
!1686 = !DILocation(line: 690, column: 25, scope: !1684)
!1687 = !DILocation(line: 690, column: 25, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !78, line: 690, column: 25)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !78, line: 690, column: 25)
!1690 = !DILocation(line: 690, column: 25, scope: !1689)
!1691 = !DILocation(line: 690, column: 25, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !78, line: 690, column: 25)
!1693 = distinct !DILexicalBlock(scope: !1685, file: !78, line: 690, column: 25)
!1694 = !DILocation(line: 690, column: 25, scope: !1693)
!1695 = !DILocation(line: 690, column: 25, scope: !1685)
!1696 = !DILocation(line: 690, column: 25, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !78, line: 690, column: 25)
!1698 = distinct !DILexicalBlock(scope: !1678, file: !78, line: 690, column: 25)
!1699 = !DILocation(line: 690, column: 25, scope: !1698)
!1700 = !DILocation(line: 691, column: 25, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !78, line: 691, column: 25)
!1702 = distinct !DILexicalBlock(scope: !1679, file: !78, line: 691, column: 25)
!1703 = !DILocation(line: 691, column: 25, scope: !1702)
!1704 = !DILocation(line: 692, column: 25, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !78, line: 692, column: 25)
!1706 = distinct !DILexicalBlock(scope: !1679, file: !78, line: 692, column: 25)
!1707 = !DILocation(line: 692, column: 25, scope: !1706)
!1708 = !DILocation(line: 693, column: 38, scope: !1679)
!1709 = !DILocation(line: 693, column: 33, scope: !1679)
!1710 = !DILocation(line: 694, column: 23, scope: !1679)
!1711 = !DILocation(line: 695, column: 30, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1673, file: !78, line: 695, column: 30)
!1713 = !DILocation(line: 695, column: 30, scope: !1673)
!1714 = !DILocation(line: 697, column: 25, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !78, line: 697, column: 25)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !78, line: 697, column: 25)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !78, line: 696, column: 23)
!1718 = !DILocation(line: 697, column: 25, scope: !1716)
!1719 = !DILocation(line: 699, column: 23, scope: !1717)
!1720 = !DILocation(line: 700, column: 35, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1674, file: !78, line: 700, column: 25)
!1722 = !DILocation(line: 700, column: 30, scope: !1721)
!1723 = !DILocation(line: 700, column: 25, scope: !1674)
!1724 = !DILocation(line: 702, column: 21, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !78, line: 702, column: 21)
!1726 = distinct !DILexicalBlock(scope: !1674, file: !78, line: 702, column: 21)
!1727 = !DILocation(line: 702, column: 21, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !78, line: 702, column: 21)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !78, line: 702, column: 21)
!1730 = distinct !DILexicalBlock(scope: !1725, file: !78, line: 702, column: 21)
!1731 = !DILocation(line: 702, column: 21, scope: !1729)
!1732 = !DILocation(line: 702, column: 21, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !78, line: 702, column: 21)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !78, line: 702, column: 21)
!1735 = !DILocation(line: 702, column: 21, scope: !1734)
!1736 = !DILocation(line: 702, column: 21, scope: !1730)
!1737 = !DILocation(line: 0, scope: !1674)
!1738 = !DILocation(line: 703, column: 21, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !78, line: 703, column: 21)
!1740 = distinct !DILexicalBlock(scope: !1674, file: !78, line: 703, column: 21)
!1741 = !DILocation(line: 703, column: 21, scope: !1740)
!1742 = !DILocation(line: 704, column: 25, scope: !1674)
!1743 = !DILocation(line: 686, column: 17, scope: !1675)
!1744 = distinct !{!1744, !1745, !1746}
!1745 = !DILocation(line: 686, column: 17, scope: !1676)
!1746 = !DILocation(line: 705, column: 19, scope: !1676)
!1747 = !DILocation(line: 416, column: 30, scope: !1467)
!1748 = !DILocation(line: 712, column: 34, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1349, file: !78, line: 712, column: 11)
!1750 = !DILocation(line: 715, column: 35, scope: !1749)
!1751 = !DILocation(line: 715, column: 17, scope: !1749)
!1752 = !DILocation(line: 715, column: 47, scope: !1749)
!1753 = !DILocation(line: 715, column: 65, scope: !1749)
!1754 = !DILocation(line: 716, column: 11, scope: !1749)
!1755 = !DILocation(line: 712, column: 11, scope: !1349)
!1756 = !DILocation(line: 400, column: 10, scope: !1351)
!1757 = !DILocation(line: 719, column: 5, scope: !1349)
!1758 = !DILocation(line: 720, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1349, file: !78, line: 720, column: 7)
!1760 = !DILocation(line: 720, column: 7, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1759, file: !78, line: 720, column: 7)
!1762 = !DILocation(line: 720, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !78, line: 720, column: 7)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !78, line: 720, column: 7)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !78, line: 720, column: 7)
!1766 = !DILocation(line: 720, column: 7, scope: !1764)
!1767 = !DILocation(line: 720, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !78, line: 720, column: 7)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !78, line: 720, column: 7)
!1770 = !DILocation(line: 720, column: 7, scope: !1769)
!1771 = !DILocation(line: 720, column: 7, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !78, line: 720, column: 7)
!1773 = distinct !DILexicalBlock(scope: !1765, file: !78, line: 720, column: 7)
!1774 = !DILocation(line: 720, column: 7, scope: !1773)
!1775 = !DILocation(line: 720, column: 7, scope: !1765)
!1776 = !DILocation(line: 720, column: 7, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !78, line: 720, column: 7)
!1778 = distinct !DILexicalBlock(scope: !1759, file: !78, line: 720, column: 7)
!1779 = !DILocation(line: 720, column: 7, scope: !1778)
!1780 = !DILocation(line: 722, column: 5, scope: !1349)
!1781 = !DILocation(line: 723, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !78, line: 723, column: 7)
!1783 = distinct !DILexicalBlock(scope: !1349, file: !78, line: 723, column: 7)
!1784 = !DILocation(line: 424, column: 9, scope: !1349)
!1785 = !DILocation(line: 723, column: 7, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !78, line: 723, column: 7)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !78, line: 723, column: 7)
!1788 = distinct !DILexicalBlock(scope: !1782, file: !78, line: 723, column: 7)
!1789 = !DILocation(line: 723, column: 7, scope: !1787)
!1790 = !DILocation(line: 723, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !78, line: 723, column: 7)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !78, line: 723, column: 7)
!1793 = !DILocation(line: 723, column: 7, scope: !1792)
!1794 = !DILocation(line: 723, column: 7, scope: !1788)
!1795 = !DILocation(line: 724, column: 7, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !78, line: 724, column: 7)
!1797 = distinct !DILexicalBlock(scope: !1349, file: !78, line: 724, column: 7)
!1798 = !DILocation(line: 724, column: 7, scope: !1797)
!1799 = !DILocation(line: 726, column: 13, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1349, file: !78, line: 726, column: 11)
!1801 = !DILocation(line: 726, column: 11, scope: !1349)
!1802 = !DILocation(line: 728, column: 5, scope: !1350)
!1803 = !DILocation(line: 400, column: 75, scope: !1350)
!1804 = !DILocation(line: 400, column: 3, scope: !1350)
!1805 = distinct !{!1805, !1463, !1806, !653}
!1806 = !DILocation(line: 728, column: 5, scope: !1351)
!1807 = !DILocation(line: 730, column: 11, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1322, file: !78, line: 730, column: 7)
!1809 = !DILocation(line: 730, column: 16, scope: !1808)
!1810 = !DILocation(line: 738, column: 51, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1322, file: !78, line: 738, column: 7)
!1812 = !DILocation(line: 741, column: 11, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !78, line: 741, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !78, line: 740, column: 5)
!1815 = !DILocation(line: 741, column: 11, scope: !1814)
!1816 = !DILocation(line: 742, column: 16, scope: !1813)
!1817 = !DILocation(line: 742, column: 9, scope: !1813)
!1818 = !DILocation(line: 746, column: 18, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1813, file: !78, line: 746, column: 16)
!1820 = !DILocation(line: 746, column: 29, scope: !1819)
!1821 = !DILocation(line: 755, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1322, file: !78, line: 755, column: 7)
!1823 = !DILocation(line: 755, column: 20, scope: !1822)
!1824 = !DILocation(line: 756, column: 12, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !78, line: 756, column: 5)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !78, line: 756, column: 5)
!1827 = !DILocation(line: 756, column: 5, scope: !1826)
!1828 = !DILocation(line: 757, column: 7, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !78, line: 757, column: 7)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !78, line: 757, column: 7)
!1831 = !DILocation(line: 757, column: 7, scope: !1830)
!1832 = !DILocation(line: 756, column: 39, scope: !1825)
!1833 = distinct !{!1833, !1827, !1834, !653}
!1834 = !DILocation(line: 757, column: 7, scope: !1826)
!1835 = !DILocation(line: 759, column: 11, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1322, file: !78, line: 759, column: 7)
!1837 = !DILocation(line: 759, column: 7, scope: !1322)
!1838 = !DILocation(line: 760, column: 5, scope: !1836)
!1839 = !DILocation(line: 760, column: 17, scope: !1836)
!1840 = !DILocation(line: 763, column: 2, scope: !1322)
!1841 = !DILocation(line: 766, column: 51, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1322, file: !78, line: 766, column: 7)
!1843 = !DILocation(line: 766, column: 21, scope: !1842)
!1844 = !DILocation(line: 770, column: 42, scope: !1322)
!1845 = !DILocation(line: 768, column: 10, scope: !1322)
!1846 = !DILocation(line: 768, column: 3, scope: !1322)
!1847 = !DILocation(line: 772, column: 1, scope: !1322)
!1848 = distinct !DISubprogram(name: "gettext_quote", scope: !78, file: !78, line: 207, type: !1849, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!39, !39, !5}
!1851 = !{!1852, !1853, !1854, !1855}
!1852 = !DILocalVariable(name: "msgid", arg: 1, scope: !1848, file: !78, line: 207, type: !39)
!1853 = !DILocalVariable(name: "s", arg: 2, scope: !1848, file: !78, line: 207, type: !5)
!1854 = !DILocalVariable(name: "translation", scope: !1848, file: !78, line: 209, type: !39)
!1855 = !DILocalVariable(name: "locale_code", scope: !1848, file: !78, line: 210, type: !39)
!1856 = !DILocation(line: 0, scope: !1848)
!1857 = !DILocation(line: 209, column: 29, scope: !1848)
!1858 = !DILocation(line: 212, column: 19, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1848, file: !78, line: 212, column: 7)
!1860 = !DILocation(line: 212, column: 7, scope: !1848)
!1861 = !DILocation(line: 233, column: 17, scope: !1848)
!1862 = !DILocalVariable(name: "s1", arg: 1, scope: !1863, file: !1864, line: 160, type: !39)
!1863 = distinct !DISubprogram(name: "strcaseeq0", scope: !1864, file: !1864, line: 160, type: !1865, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1867)
!1864 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!42, !39, !39, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!1867 = !{!1862, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877}
!1868 = !DILocalVariable(name: "s2", arg: 2, scope: !1863, file: !1864, line: 160, type: !39)
!1869 = !DILocalVariable(name: "s20", arg: 3, scope: !1863, file: !1864, line: 160, type: !22)
!1870 = !DILocalVariable(name: "s21", arg: 4, scope: !1863, file: !1864, line: 160, type: !22)
!1871 = !DILocalVariable(name: "s22", arg: 5, scope: !1863, file: !1864, line: 160, type: !22)
!1872 = !DILocalVariable(name: "s23", arg: 6, scope: !1863, file: !1864, line: 160, type: !22)
!1873 = !DILocalVariable(name: "s24", arg: 7, scope: !1863, file: !1864, line: 160, type: !22)
!1874 = !DILocalVariable(name: "s25", arg: 8, scope: !1863, file: !1864, line: 160, type: !22)
!1875 = !DILocalVariable(name: "s26", arg: 9, scope: !1863, file: !1864, line: 160, type: !22)
!1876 = !DILocalVariable(name: "s27", arg: 10, scope: !1863, file: !1864, line: 160, type: !22)
!1877 = !DILocalVariable(name: "s28", arg: 11, scope: !1863, file: !1864, line: 160, type: !22)
!1878 = !DILocation(line: 0, scope: !1863, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 234, column: 7, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1848, file: !78, line: 234, column: 7)
!1881 = !DILocation(line: 162, column: 7, scope: !1882, inlinedAt: !1879)
!1882 = distinct !DILexicalBlock(scope: !1863, file: !1864, line: 162, column: 7)
!1883 = !DILocalVariable(name: "s1", arg: 1, scope: !1884, file: !1864, line: 146, type: !39)
!1884 = distinct !DISubprogram(name: "strcaseeq1", scope: !1864, file: !1864, line: 146, type: !1885, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1887)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!42, !39, !39, !22, !22, !22, !22, !22, !22, !22, !22}
!1887 = !{!1883, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1888 = !DILocalVariable(name: "s2", arg: 2, scope: !1884, file: !1864, line: 146, type: !39)
!1889 = !DILocalVariable(name: "s21", arg: 3, scope: !1884, file: !1864, line: 146, type: !22)
!1890 = !DILocalVariable(name: "s22", arg: 4, scope: !1884, file: !1864, line: 146, type: !22)
!1891 = !DILocalVariable(name: "s23", arg: 5, scope: !1884, file: !1864, line: 146, type: !22)
!1892 = !DILocalVariable(name: "s24", arg: 6, scope: !1884, file: !1864, line: 146, type: !22)
!1893 = !DILocalVariable(name: "s25", arg: 7, scope: !1884, file: !1864, line: 146, type: !22)
!1894 = !DILocalVariable(name: "s26", arg: 8, scope: !1884, file: !1864, line: 146, type: !22)
!1895 = !DILocalVariable(name: "s27", arg: 9, scope: !1884, file: !1864, line: 146, type: !22)
!1896 = !DILocalVariable(name: "s28", arg: 10, scope: !1884, file: !1864, line: 146, type: !22)
!1897 = !DILocation(line: 0, scope: !1884, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 167, column: 16, scope: !1899, inlinedAt: !1879)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !1864, line: 164, column: 11)
!1900 = distinct !DILexicalBlock(scope: !1882, file: !1864, line: 163, column: 5)
!1901 = !DILocation(line: 148, column: 7, scope: !1902, inlinedAt: !1898)
!1902 = distinct !DILexicalBlock(scope: !1884, file: !1864, line: 148, column: 7)
!1903 = !DILocalVariable(name: "s1", arg: 1, scope: !1904, file: !1864, line: 132, type: !39)
!1904 = distinct !DISubprogram(name: "strcaseeq2", scope: !1864, file: !1864, line: 132, type: !1905, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!42, !39, !39, !22, !22, !22, !22, !22, !22, !22}
!1907 = !{!1903, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1908 = !DILocalVariable(name: "s2", arg: 2, scope: !1904, file: !1864, line: 132, type: !39)
!1909 = !DILocalVariable(name: "s22", arg: 3, scope: !1904, file: !1864, line: 132, type: !22)
!1910 = !DILocalVariable(name: "s23", arg: 4, scope: !1904, file: !1864, line: 132, type: !22)
!1911 = !DILocalVariable(name: "s24", arg: 5, scope: !1904, file: !1864, line: 132, type: !22)
!1912 = !DILocalVariable(name: "s25", arg: 6, scope: !1904, file: !1864, line: 132, type: !22)
!1913 = !DILocalVariable(name: "s26", arg: 7, scope: !1904, file: !1864, line: 132, type: !22)
!1914 = !DILocalVariable(name: "s27", arg: 8, scope: !1904, file: !1864, line: 132, type: !22)
!1915 = !DILocalVariable(name: "s28", arg: 9, scope: !1904, file: !1864, line: 132, type: !22)
!1916 = !DILocation(line: 0, scope: !1904, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 153, column: 16, scope: !1918, inlinedAt: !1898)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !1864, line: 150, column: 11)
!1919 = distinct !DILexicalBlock(scope: !1902, file: !1864, line: 149, column: 5)
!1920 = !DILocation(line: 134, column: 7, scope: !1921, inlinedAt: !1917)
!1921 = distinct !DILexicalBlock(scope: !1904, file: !1864, line: 134, column: 7)
!1922 = !DILocalVariable(name: "s1", arg: 1, scope: !1923, file: !1864, line: 118, type: !39)
!1923 = distinct !DISubprogram(name: "strcaseeq3", scope: !1864, file: !1864, line: 118, type: !1924, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!42, !39, !39, !22, !22, !22, !22, !22, !22}
!1926 = !{!1922, !1927, !1928, !1929, !1930, !1931, !1932, !1933}
!1927 = !DILocalVariable(name: "s2", arg: 2, scope: !1923, file: !1864, line: 118, type: !39)
!1928 = !DILocalVariable(name: "s23", arg: 3, scope: !1923, file: !1864, line: 118, type: !22)
!1929 = !DILocalVariable(name: "s24", arg: 4, scope: !1923, file: !1864, line: 118, type: !22)
!1930 = !DILocalVariable(name: "s25", arg: 5, scope: !1923, file: !1864, line: 118, type: !22)
!1931 = !DILocalVariable(name: "s26", arg: 6, scope: !1923, file: !1864, line: 118, type: !22)
!1932 = !DILocalVariable(name: "s27", arg: 7, scope: !1923, file: !1864, line: 118, type: !22)
!1933 = !DILocalVariable(name: "s28", arg: 8, scope: !1923, file: !1864, line: 118, type: !22)
!1934 = !DILocation(line: 0, scope: !1923, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 139, column: 16, scope: !1936, inlinedAt: !1917)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !1864, line: 136, column: 11)
!1937 = distinct !DILexicalBlock(scope: !1921, file: !1864, line: 135, column: 5)
!1938 = !DILocation(line: 120, column: 7, scope: !1939, inlinedAt: !1935)
!1939 = distinct !DILexicalBlock(scope: !1923, file: !1864, line: 120, column: 7)
!1940 = !DILocation(line: 120, column: 7, scope: !1923, inlinedAt: !1935)
!1941 = !DILocalVariable(name: "s1", arg: 1, scope: !1942, file: !1864, line: 104, type: !39)
!1942 = distinct !DISubprogram(name: "strcaseeq4", scope: !1864, file: !1864, line: 104, type: !1943, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1945)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!42, !39, !39, !22, !22, !22, !22, !22}
!1945 = !{!1941, !1946, !1947, !1948, !1949, !1950, !1951}
!1946 = !DILocalVariable(name: "s2", arg: 2, scope: !1942, file: !1864, line: 104, type: !39)
!1947 = !DILocalVariable(name: "s24", arg: 3, scope: !1942, file: !1864, line: 104, type: !22)
!1948 = !DILocalVariable(name: "s25", arg: 4, scope: !1942, file: !1864, line: 104, type: !22)
!1949 = !DILocalVariable(name: "s26", arg: 5, scope: !1942, file: !1864, line: 104, type: !22)
!1950 = !DILocalVariable(name: "s27", arg: 6, scope: !1942, file: !1864, line: 104, type: !22)
!1951 = !DILocalVariable(name: "s28", arg: 7, scope: !1942, file: !1864, line: 104, type: !22)
!1952 = !DILocation(line: 0, scope: !1942, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 125, column: 16, scope: !1954, inlinedAt: !1935)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !1864, line: 122, column: 11)
!1955 = distinct !DILexicalBlock(scope: !1939, file: !1864, line: 121, column: 5)
!1956 = !DILocation(line: 106, column: 7, scope: !1957, inlinedAt: !1953)
!1957 = distinct !DILexicalBlock(scope: !1942, file: !1864, line: 106, column: 7)
!1958 = !DILocation(line: 106, column: 7, scope: !1942, inlinedAt: !1953)
!1959 = !DILocalVariable(name: "s1", arg: 1, scope: !1960, file: !1864, line: 90, type: !39)
!1960 = distinct !DISubprogram(name: "strcaseeq5", scope: !1864, file: !1864, line: 90, type: !1961, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!42, !39, !39, !22, !22, !22, !22}
!1963 = !{!1959, !1964, !1965, !1966, !1967, !1968}
!1964 = !DILocalVariable(name: "s2", arg: 2, scope: !1960, file: !1864, line: 90, type: !39)
!1965 = !DILocalVariable(name: "s25", arg: 3, scope: !1960, file: !1864, line: 90, type: !22)
!1966 = !DILocalVariable(name: "s26", arg: 4, scope: !1960, file: !1864, line: 90, type: !22)
!1967 = !DILocalVariable(name: "s27", arg: 5, scope: !1960, file: !1864, line: 90, type: !22)
!1968 = !DILocalVariable(name: "s28", arg: 6, scope: !1960, file: !1864, line: 90, type: !22)
!1969 = !DILocation(line: 0, scope: !1960, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 111, column: 16, scope: !1971, inlinedAt: !1953)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !1864, line: 108, column: 11)
!1972 = distinct !DILexicalBlock(scope: !1957, file: !1864, line: 107, column: 5)
!1973 = !DILocation(line: 92, column: 7, scope: !1974, inlinedAt: !1970)
!1974 = distinct !DILexicalBlock(scope: !1960, file: !1864, line: 92, column: 7)
!1975 = !DILocation(line: 92, column: 7, scope: !1960, inlinedAt: !1970)
!1976 = !DILocation(line: 235, column: 12, scope: !1880)
!1977 = !DILocation(line: 235, column: 21, scope: !1880)
!1978 = !DILocation(line: 235, column: 5, scope: !1880)
!1979 = !DILocation(line: 0, scope: !1884, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 167, column: 16, scope: !1899, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 236, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1848, file: !78, line: 236, column: 7)
!1983 = !DILocation(line: 148, column: 7, scope: !1902, inlinedAt: !1980)
!1984 = !DILocation(line: 0, scope: !1904, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 153, column: 16, scope: !1918, inlinedAt: !1980)
!1986 = !DILocation(line: 134, column: 7, scope: !1921, inlinedAt: !1985)
!1987 = !DILocation(line: 134, column: 7, scope: !1904, inlinedAt: !1985)
!1988 = !DILocation(line: 0, scope: !1923, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 139, column: 16, scope: !1936, inlinedAt: !1985)
!1990 = !DILocation(line: 120, column: 7, scope: !1939, inlinedAt: !1989)
!1991 = !DILocation(line: 120, column: 7, scope: !1923, inlinedAt: !1989)
!1992 = !DILocation(line: 0, scope: !1942, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 125, column: 16, scope: !1954, inlinedAt: !1989)
!1994 = !DILocation(line: 106, column: 7, scope: !1957, inlinedAt: !1993)
!1995 = !DILocation(line: 106, column: 7, scope: !1942, inlinedAt: !1993)
!1996 = !DILocation(line: 0, scope: !1960, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 111, column: 16, scope: !1971, inlinedAt: !1993)
!1998 = !DILocation(line: 92, column: 7, scope: !1974, inlinedAt: !1997)
!1999 = !DILocation(line: 92, column: 7, scope: !1960, inlinedAt: !1997)
!2000 = !DILocalVariable(name: "s1", arg: 1, scope: !2001, file: !1864, line: 76, type: !39)
!2001 = distinct !DISubprogram(name: "strcaseeq6", scope: !1864, file: !1864, line: 76, type: !2002, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2004)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!42, !39, !39, !22, !22, !22}
!2004 = !{!2000, !2005, !2006, !2007, !2008}
!2005 = !DILocalVariable(name: "s2", arg: 2, scope: !2001, file: !1864, line: 76, type: !39)
!2006 = !DILocalVariable(name: "s26", arg: 3, scope: !2001, file: !1864, line: 76, type: !22)
!2007 = !DILocalVariable(name: "s27", arg: 4, scope: !2001, file: !1864, line: 76, type: !22)
!2008 = !DILocalVariable(name: "s28", arg: 5, scope: !2001, file: !1864, line: 76, type: !22)
!2009 = !DILocation(line: 0, scope: !2001, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 97, column: 16, scope: !2011, inlinedAt: !1997)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !1864, line: 94, column: 11)
!2012 = distinct !DILexicalBlock(scope: !1974, file: !1864, line: 93, column: 5)
!2013 = !DILocation(line: 78, column: 7, scope: !2014, inlinedAt: !2010)
!2014 = distinct !DILexicalBlock(scope: !2001, file: !1864, line: 78, column: 7)
!2015 = !DILocation(line: 78, column: 7, scope: !2001, inlinedAt: !2010)
!2016 = !DILocalVariable(name: "s1", arg: 1, scope: !2017, file: !1864, line: 62, type: !39)
!2017 = distinct !DISubprogram(name: "strcaseeq7", scope: !1864, file: !1864, line: 62, type: !2018, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!42, !39, !39, !22, !22}
!2020 = !{!2016, !2021, !2022, !2023}
!2021 = !DILocalVariable(name: "s2", arg: 2, scope: !2017, file: !1864, line: 62, type: !39)
!2022 = !DILocalVariable(name: "s27", arg: 3, scope: !2017, file: !1864, line: 62, type: !22)
!2023 = !DILocalVariable(name: "s28", arg: 4, scope: !2017, file: !1864, line: 62, type: !22)
!2024 = !DILocation(line: 0, scope: !2017, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 83, column: 16, scope: !2026, inlinedAt: !2010)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !1864, line: 80, column: 11)
!2027 = distinct !DILexicalBlock(scope: !2014, file: !1864, line: 79, column: 5)
!2028 = !DILocation(line: 64, column: 7, scope: !2029, inlinedAt: !2025)
!2029 = distinct !DILexicalBlock(scope: !2017, file: !1864, line: 64, column: 7)
!2030 = !DILocation(line: 236, column: 7, scope: !1848)
!2031 = !DILocation(line: 237, column: 12, scope: !1982)
!2032 = !DILocation(line: 237, column: 21, scope: !1982)
!2033 = !DILocation(line: 237, column: 5, scope: !1982)
!2034 = !DILocation(line: 239, column: 13, scope: !1848)
!2035 = !DILocation(line: 239, column: 11, scope: !1848)
!2036 = !DILocation(line: 239, column: 3, scope: !1848)
!2037 = !DILocation(line: 240, column: 1, scope: !1848)
!2038 = !DISubprogram(name: "iswprint", scope: !2039, file: !2039, line: 120, type: !2040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!2039 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!42, !7}
!2042 = !DISubprogram(name: "mbsinit", scope: !2043, file: !2043, line: 292, type: !2044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!2043 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!42, !2046}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1367)
!2048 = distinct !DISubprogram(name: "quotearg_alloc", scope: !78, file: !78, line: 799, type: !2049, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2051)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!21, !39, !102, !1214}
!2051 = !{!2052, !2053, !2054}
!2052 = !DILocalVariable(name: "arg", arg: 1, scope: !2048, file: !78, line: 799, type: !39)
!2053 = !DILocalVariable(name: "argsize", arg: 2, scope: !2048, file: !78, line: 799, type: !102)
!2054 = !DILocalVariable(name: "o", arg: 3, scope: !2048, file: !78, line: 800, type: !1214)
!2055 = !DILocation(line: 0, scope: !2048)
!2056 = !DILocalVariable(name: "arg", arg: 1, scope: !2057, file: !78, line: 812, type: !39)
!2057 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !78, file: !78, line: 812, type: !2058, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!21, !39, !102, !175, !1214}
!2060 = !{!2056, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2061 = !DILocalVariable(name: "argsize", arg: 2, scope: !2057, file: !78, line: 812, type: !102)
!2062 = !DILocalVariable(name: "size", arg: 3, scope: !2057, file: !78, line: 812, type: !175)
!2063 = !DILocalVariable(name: "o", arg: 4, scope: !2057, file: !78, line: 813, type: !1214)
!2064 = !DILocalVariable(name: "p", scope: !2057, file: !78, line: 815, type: !1214)
!2065 = !DILocalVariable(name: "e", scope: !2057, file: !78, line: 816, type: !42)
!2066 = !DILocalVariable(name: "flags", scope: !2057, file: !78, line: 818, type: !42)
!2067 = !DILocalVariable(name: "bufsize", scope: !2057, file: !78, line: 819, type: !102)
!2068 = !DILocalVariable(name: "buf", scope: !2057, file: !78, line: 823, type: !21)
!2069 = !DILocation(line: 0, scope: !2057, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 802, column: 10, scope: !2048)
!2071 = !DILocation(line: 815, column: 37, scope: !2057, inlinedAt: !2070)
!2072 = !DILocation(line: 816, column: 11, scope: !2057, inlinedAt: !2070)
!2073 = !DILocation(line: 818, column: 18, scope: !2057, inlinedAt: !2070)
!2074 = !DILocation(line: 818, column: 24, scope: !2057, inlinedAt: !2070)
!2075 = !DILocation(line: 819, column: 69, scope: !2057, inlinedAt: !2070)
!2076 = !DILocation(line: 820, column: 53, scope: !2057, inlinedAt: !2070)
!2077 = !DILocation(line: 821, column: 49, scope: !2057, inlinedAt: !2070)
!2078 = !DILocation(line: 822, column: 49, scope: !2057, inlinedAt: !2070)
!2079 = !DILocation(line: 819, column: 20, scope: !2057, inlinedAt: !2070)
!2080 = !DILocation(line: 822, column: 62, scope: !2057, inlinedAt: !2070)
!2081 = !DILocalVariable(name: "n", arg: 1, scope: !2082, file: !171, line: 216, type: !102)
!2082 = distinct !DISubprogram(name: "xcharalloc", scope: !171, file: !171, line: 216, type: !2083, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!21, !102}
!2085 = !{!2081}
!2086 = !DILocation(line: 0, scope: !2082, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 823, column: 15, scope: !2057, inlinedAt: !2070)
!2088 = !DILocation(line: 218, column: 10, scope: !2082, inlinedAt: !2087)
!2089 = !DILocation(line: 824, column: 60, scope: !2057, inlinedAt: !2070)
!2090 = !DILocation(line: 826, column: 32, scope: !2057, inlinedAt: !2070)
!2091 = !DILocation(line: 826, column: 47, scope: !2057, inlinedAt: !2070)
!2092 = !DILocation(line: 824, column: 3, scope: !2057, inlinedAt: !2070)
!2093 = !DILocation(line: 827, column: 9, scope: !2057, inlinedAt: !2070)
!2094 = !DILocation(line: 802, column: 3, scope: !2048)
!2095 = !DILocation(line: 0, scope: !2057)
!2096 = !DILocation(line: 815, column: 37, scope: !2057)
!2097 = !DILocation(line: 816, column: 11, scope: !2057)
!2098 = !DILocation(line: 818, column: 18, scope: !2057)
!2099 = !DILocation(line: 818, column: 27, scope: !2057)
!2100 = !DILocation(line: 818, column: 24, scope: !2057)
!2101 = !DILocation(line: 819, column: 69, scope: !2057)
!2102 = !DILocation(line: 820, column: 53, scope: !2057)
!2103 = !DILocation(line: 821, column: 49, scope: !2057)
!2104 = !DILocation(line: 822, column: 49, scope: !2057)
!2105 = !DILocation(line: 819, column: 20, scope: !2057)
!2106 = !DILocation(line: 822, column: 62, scope: !2057)
!2107 = !DILocation(line: 0, scope: !2082, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 823, column: 15, scope: !2057)
!2109 = !DILocation(line: 218, column: 10, scope: !2082, inlinedAt: !2108)
!2110 = !DILocation(line: 824, column: 60, scope: !2057)
!2111 = !DILocation(line: 826, column: 32, scope: !2057)
!2112 = !DILocation(line: 826, column: 47, scope: !2057)
!2113 = !DILocation(line: 824, column: 3, scope: !2057)
!2114 = !DILocation(line: 827, column: 9, scope: !2057)
!2115 = !DILocation(line: 828, column: 7, scope: !2057)
!2116 = !DILocation(line: 829, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2057, file: !78, line: 828, column: 7)
!2118 = !{!1089, !1089, i64 0}
!2119 = !DILocation(line: 829, column: 5, scope: !2117)
!2120 = !DILocation(line: 830, column: 3, scope: !2057)
!2121 = distinct !DISubprogram(name: "quotearg_free", scope: !78, file: !78, line: 848, type: !878, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2122)
!2122 = !{!2123, !2124}
!2123 = !DILocalVariable(name: "sv", scope: !2121, file: !78, line: 850, type: !133)
!2124 = !DILocalVariable(name: "i", scope: !2121, file: !78, line: 851, type: !42)
!2125 = !DILocation(line: 850, column: 24, scope: !2121)
!2126 = !DILocation(line: 0, scope: !2121)
!2127 = !DILocation(line: 852, column: 19, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !78, line: 852, column: 3)
!2129 = distinct !DILexicalBlock(scope: !2121, file: !78, line: 852, column: 3)
!2130 = !DILocation(line: 852, column: 17, scope: !2128)
!2131 = !DILocation(line: 852, column: 3, scope: !2129)
!2132 = !DILocation(line: 853, column: 17, scope: !2128)
!2133 = !{!2134, !613, i64 8}
!2134 = !{!"slotvec", !1089, i64 0, !613, i64 8}
!2135 = !DILocation(line: 853, column: 5, scope: !2128)
!2136 = !DILocation(line: 852, column: 28, scope: !2128)
!2137 = distinct !{!2137, !2131, !2138, !653}
!2138 = !DILocation(line: 853, column: 20, scope: !2129)
!2139 = !DILocation(line: 854, column: 13, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2121, file: !78, line: 854, column: 7)
!2141 = !DILocation(line: 854, column: 17, scope: !2140)
!2142 = !DILocation(line: 854, column: 7, scope: !2121)
!2143 = !DILocation(line: 856, column: 7, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2140, file: !78, line: 855, column: 5)
!2145 = !DILocation(line: 857, column: 21, scope: !2144)
!2146 = !{!2134, !1089, i64 0}
!2147 = !DILocation(line: 858, column: 20, scope: !2144)
!2148 = !DILocation(line: 859, column: 5, scope: !2144)
!2149 = !DILocation(line: 860, column: 10, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2121, file: !78, line: 860, column: 7)
!2151 = !DILocation(line: 860, column: 7, scope: !2121)
!2152 = !DILocation(line: 862, column: 13, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !78, line: 861, column: 5)
!2154 = !DILocation(line: 862, column: 7, scope: !2153)
!2155 = !DILocation(line: 863, column: 15, scope: !2153)
!2156 = !DILocation(line: 864, column: 5, scope: !2153)
!2157 = !DILocation(line: 865, column: 10, scope: !2121)
!2158 = !DILocation(line: 866, column: 1, scope: !2121)
!2159 = distinct !DISubprogram(name: "quotearg_n", scope: !78, file: !78, line: 931, type: !735, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2160)
!2160 = !{!2161, !2162}
!2161 = !DILocalVariable(name: "n", arg: 1, scope: !2159, file: !78, line: 931, type: !42)
!2162 = !DILocalVariable(name: "arg", arg: 2, scope: !2159, file: !78, line: 931, type: !39)
!2163 = !DILocation(line: 0, scope: !2159)
!2164 = !DILocation(line: 933, column: 10, scope: !2159)
!2165 = !DILocation(line: 933, column: 3, scope: !2159)
!2166 = distinct !DISubprogram(name: "quotearg_n_options", scope: !78, file: !78, line: 877, type: !2167, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!21, !42, !39, !102, !1214}
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175, !2176, !2179, !2180, !2182, !2183, !2184}
!2170 = !DILocalVariable(name: "n", arg: 1, scope: !2166, file: !78, line: 877, type: !42)
!2171 = !DILocalVariable(name: "arg", arg: 2, scope: !2166, file: !78, line: 877, type: !39)
!2172 = !DILocalVariable(name: "argsize", arg: 3, scope: !2166, file: !78, line: 877, type: !102)
!2173 = !DILocalVariable(name: "options", arg: 4, scope: !2166, file: !78, line: 878, type: !1214)
!2174 = !DILocalVariable(name: "e", scope: !2166, file: !78, line: 880, type: !42)
!2175 = !DILocalVariable(name: "sv", scope: !2166, file: !78, line: 882, type: !133)
!2176 = !DILocalVariable(name: "preallocated", scope: !2177, file: !78, line: 889, type: !28)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !78, line: 888, column: 5)
!2178 = distinct !DILexicalBlock(scope: !2166, file: !78, line: 887, column: 7)
!2179 = !DILocalVariable(name: "nmax", scope: !2177, file: !78, line: 890, type: !42)
!2180 = !DILocalVariable(name: "size", scope: !2181, file: !78, line: 903, type: !102)
!2181 = distinct !DILexicalBlock(scope: !2166, file: !78, line: 902, column: 3)
!2182 = !DILocalVariable(name: "val", scope: !2181, file: !78, line: 904, type: !21)
!2183 = !DILocalVariable(name: "flags", scope: !2181, file: !78, line: 906, type: !42)
!2184 = !DILocalVariable(name: "qsize", scope: !2181, file: !78, line: 907, type: !102)
!2185 = !DILocation(line: 0, scope: !2166)
!2186 = !DILocation(line: 880, column: 11, scope: !2166)
!2187 = !DILocation(line: 882, column: 24, scope: !2166)
!2188 = !DILocation(line: 884, column: 9, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2166, file: !78, line: 884, column: 7)
!2190 = !DILocation(line: 884, column: 7, scope: !2166)
!2191 = !DILocation(line: 885, column: 5, scope: !2189)
!2192 = !DILocation(line: 887, column: 7, scope: !2178)
!2193 = !DILocation(line: 887, column: 14, scope: !2178)
!2194 = !DILocation(line: 887, column: 7, scope: !2166)
!2195 = !DILocation(line: 889, column: 31, scope: !2177)
!2196 = !DILocation(line: 0, scope: !2177)
!2197 = !DILocation(line: 892, column: 16, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2177, file: !78, line: 892, column: 11)
!2199 = !DILocation(line: 892, column: 11, scope: !2177)
!2200 = !DILocation(line: 893, column: 9, scope: !2198)
!2201 = !DILocation(line: 895, column: 32, scope: !2177)
!2202 = !DILocation(line: 895, column: 61, scope: !2177)
!2203 = !DILocation(line: 895, column: 66, scope: !2177)
!2204 = !DILocation(line: 895, column: 22, scope: !2177)
!2205 = !DILocation(line: 895, column: 15, scope: !2177)
!2206 = !DILocation(line: 896, column: 11, scope: !2177)
!2207 = !DILocation(line: 897, column: 15, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2177, file: !78, line: 896, column: 11)
!2209 = !{i64 0, i64 8, !2118, i64 8, i64 8, !612}
!2210 = !DILocation(line: 897, column: 9, scope: !2208)
!2211 = !DILocation(line: 898, column: 20, scope: !2177)
!2212 = !DILocation(line: 898, column: 18, scope: !2177)
!2213 = !DILocation(line: 898, column: 15, scope: !2177)
!2214 = !DILocation(line: 898, column: 38, scope: !2177)
!2215 = !DILocation(line: 898, column: 31, scope: !2177)
!2216 = !DILocation(line: 898, column: 48, scope: !2177)
!2217 = !DILocation(line: 0, scope: !1609, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 898, column: 7, scope: !2177)
!2219 = !DILocation(line: 59, column: 10, scope: !1609, inlinedAt: !2218)
!2220 = !DILocation(line: 899, column: 14, scope: !2177)
!2221 = !DILocation(line: 900, column: 5, scope: !2177)
!2222 = !DILocation(line: 903, column: 19, scope: !2181)
!2223 = !DILocation(line: 903, column: 25, scope: !2181)
!2224 = !DILocation(line: 0, scope: !2181)
!2225 = !DILocation(line: 904, column: 23, scope: !2181)
!2226 = !DILocation(line: 906, column: 26, scope: !2181)
!2227 = !DILocation(line: 906, column: 32, scope: !2181)
!2228 = !DILocation(line: 908, column: 55, scope: !2181)
!2229 = !DILocation(line: 909, column: 46, scope: !2181)
!2230 = !DILocation(line: 910, column: 55, scope: !2181)
!2231 = !DILocation(line: 911, column: 55, scope: !2181)
!2232 = !DILocation(line: 907, column: 20, scope: !2181)
!2233 = !DILocation(line: 913, column: 14, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2181, file: !78, line: 913, column: 9)
!2235 = !DILocation(line: 913, column: 9, scope: !2181)
!2236 = !DILocation(line: 915, column: 35, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !78, line: 914, column: 7)
!2238 = !DILocation(line: 915, column: 20, scope: !2237)
!2239 = !DILocation(line: 916, column: 17, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !78, line: 916, column: 13)
!2241 = !DILocation(line: 916, column: 13, scope: !2237)
!2242 = !DILocation(line: 917, column: 11, scope: !2240)
!2243 = !DILocation(line: 0, scope: !2082, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 918, column: 27, scope: !2237)
!2245 = !DILocation(line: 218, column: 10, scope: !2082, inlinedAt: !2244)
!2246 = !DILocation(line: 918, column: 19, scope: !2237)
!2247 = !DILocation(line: 919, column: 69, scope: !2237)
!2248 = !DILocation(line: 921, column: 44, scope: !2237)
!2249 = !DILocation(line: 922, column: 44, scope: !2237)
!2250 = !DILocation(line: 919, column: 9, scope: !2237)
!2251 = !DILocation(line: 923, column: 7, scope: !2237)
!2252 = !DILocation(line: 925, column: 11, scope: !2181)
!2253 = !DILocation(line: 926, column: 5, scope: !2181)
!2254 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !78, file: !78, line: 937, type: !2255, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!21, !42, !39, !102}
!2257 = !{!2258, !2259, !2260}
!2258 = !DILocalVariable(name: "n", arg: 1, scope: !2254, file: !78, line: 937, type: !42)
!2259 = !DILocalVariable(name: "arg", arg: 2, scope: !2254, file: !78, line: 937, type: !39)
!2260 = !DILocalVariable(name: "argsize", arg: 3, scope: !2254, file: !78, line: 937, type: !102)
!2261 = !DILocation(line: 0, scope: !2254)
!2262 = !DILocation(line: 939, column: 10, scope: !2254)
!2263 = !DILocation(line: 939, column: 3, scope: !2254)
!2264 = distinct !DISubprogram(name: "quotearg", scope: !78, file: !78, line: 943, type: !871, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2265)
!2265 = !{!2266}
!2266 = !DILocalVariable(name: "arg", arg: 1, scope: !2264, file: !78, line: 943, type: !39)
!2267 = !DILocation(line: 0, scope: !2264)
!2268 = !DILocation(line: 0, scope: !2159, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 945, column: 10, scope: !2264)
!2270 = !DILocation(line: 933, column: 10, scope: !2159, inlinedAt: !2269)
!2271 = !DILocation(line: 945, column: 3, scope: !2264)
!2272 = distinct !DISubprogram(name: "quotearg_mem", scope: !78, file: !78, line: 949, type: !2273, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!21, !39, !102}
!2275 = !{!2276, !2277}
!2276 = !DILocalVariable(name: "arg", arg: 1, scope: !2272, file: !78, line: 949, type: !39)
!2277 = !DILocalVariable(name: "argsize", arg: 2, scope: !2272, file: !78, line: 949, type: !102)
!2278 = !DILocation(line: 0, scope: !2272)
!2279 = !DILocation(line: 0, scope: !2254, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 951, column: 10, scope: !2272)
!2281 = !DILocation(line: 939, column: 10, scope: !2254, inlinedAt: !2280)
!2282 = !DILocation(line: 951, column: 3, scope: !2272)
!2283 = distinct !DISubprogram(name: "quotearg_n_style", scope: !78, file: !78, line: 955, type: !2284, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!21, !42, !5, !39}
!2286 = !{!2287, !2288, !2289, !2290}
!2287 = !DILocalVariable(name: "n", arg: 1, scope: !2283, file: !78, line: 955, type: !42)
!2288 = !DILocalVariable(name: "s", arg: 2, scope: !2283, file: !78, line: 955, type: !5)
!2289 = !DILocalVariable(name: "arg", arg: 3, scope: !2283, file: !78, line: 955, type: !39)
!2290 = !DILocalVariable(name: "o", scope: !2283, file: !78, line: 957, type: !1215)
!2291 = !DILocation(line: 0, scope: !2283)
!2292 = !DILocation(line: 957, column: 3, scope: !2283)
!2293 = !DILocation(line: 957, column: 32, scope: !2283)
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"quoting_options_from_style: argument 0"}
!2296 = distinct !{!2296, !"quoting_options_from_style"}
!2297 = !DILocation(line: 957, column: 36, scope: !2283)
!2298 = !DILocalVariable(name: "style", arg: 1, scope: !2299, file: !78, line: 193, type: !5)
!2299 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !78, file: !78, line: 193, type: !2300, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!114, !5}
!2302 = !{!2298, !2303}
!2303 = !DILocalVariable(name: "o", scope: !2299, file: !78, line: 195, type: !114)
!2304 = !DILocation(line: 0, scope: !2299, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 957, column: 36, scope: !2283)
!2306 = !DILocation(line: 195, column: 26, scope: !2299, inlinedAt: !2305)
!2307 = !DILocation(line: 196, column: 13, scope: !2308, inlinedAt: !2305)
!2308 = distinct !DILexicalBlock(scope: !2299, file: !78, line: 196, column: 7)
!2309 = !DILocation(line: 196, column: 7, scope: !2299, inlinedAt: !2305)
!2310 = !DILocation(line: 197, column: 5, scope: !2308, inlinedAt: !2305)
!2311 = !DILocation(line: 198, column: 5, scope: !2299, inlinedAt: !2305)
!2312 = !DILocation(line: 198, column: 11, scope: !2299, inlinedAt: !2305)
!2313 = !DILocation(line: 958, column: 10, scope: !2283)
!2314 = !DILocation(line: 959, column: 1, scope: !2283)
!2315 = !DILocation(line: 958, column: 3, scope: !2283)
!2316 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !78, file: !78, line: 962, type: !2317, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2319)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!21, !42, !5, !39, !102}
!2319 = !{!2320, !2321, !2322, !2323, !2324}
!2320 = !DILocalVariable(name: "n", arg: 1, scope: !2316, file: !78, line: 962, type: !42)
!2321 = !DILocalVariable(name: "s", arg: 2, scope: !2316, file: !78, line: 962, type: !5)
!2322 = !DILocalVariable(name: "arg", arg: 3, scope: !2316, file: !78, line: 963, type: !39)
!2323 = !DILocalVariable(name: "argsize", arg: 4, scope: !2316, file: !78, line: 963, type: !102)
!2324 = !DILocalVariable(name: "o", scope: !2316, file: !78, line: 965, type: !1215)
!2325 = !DILocation(line: 0, scope: !2316)
!2326 = !DILocation(line: 965, column: 3, scope: !2316)
!2327 = !DILocation(line: 965, column: 32, scope: !2316)
!2328 = !{!2329}
!2329 = distinct !{!2329, !2330, !"quoting_options_from_style: argument 0"}
!2330 = distinct !{!2330, !"quoting_options_from_style"}
!2331 = !DILocation(line: 965, column: 36, scope: !2316)
!2332 = !DILocation(line: 0, scope: !2299, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 965, column: 36, scope: !2316)
!2334 = !DILocation(line: 195, column: 26, scope: !2299, inlinedAt: !2333)
!2335 = !DILocation(line: 196, column: 13, scope: !2308, inlinedAt: !2333)
!2336 = !DILocation(line: 196, column: 7, scope: !2299, inlinedAt: !2333)
!2337 = !DILocation(line: 197, column: 5, scope: !2308, inlinedAt: !2333)
!2338 = !DILocation(line: 198, column: 5, scope: !2299, inlinedAt: !2333)
!2339 = !DILocation(line: 198, column: 11, scope: !2299, inlinedAt: !2333)
!2340 = !DILocation(line: 966, column: 10, scope: !2316)
!2341 = !DILocation(line: 967, column: 1, scope: !2316)
!2342 = !DILocation(line: 966, column: 3, scope: !2316)
!2343 = distinct !DISubprogram(name: "quotearg_style", scope: !78, file: !78, line: 970, type: !2344, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!21, !5, !39}
!2346 = !{!2347, !2348}
!2347 = !DILocalVariable(name: "s", arg: 1, scope: !2343, file: !78, line: 970, type: !5)
!2348 = !DILocalVariable(name: "arg", arg: 2, scope: !2343, file: !78, line: 970, type: !39)
!2349 = !DILocation(line: 0, scope: !2343)
!2350 = !DILocation(line: 0, scope: !2283, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 972, column: 10, scope: !2343)
!2352 = !DILocation(line: 957, column: 3, scope: !2283, inlinedAt: !2351)
!2353 = !DILocation(line: 957, column: 32, scope: !2283, inlinedAt: !2351)
!2354 = !{!2355}
!2355 = distinct !{!2355, !2356, !"quoting_options_from_style: argument 0"}
!2356 = distinct !{!2356, !"quoting_options_from_style"}
!2357 = !DILocation(line: 957, column: 36, scope: !2283, inlinedAt: !2351)
!2358 = !DILocation(line: 0, scope: !2299, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 957, column: 36, scope: !2283, inlinedAt: !2351)
!2360 = !DILocation(line: 195, column: 26, scope: !2299, inlinedAt: !2359)
!2361 = !DILocation(line: 196, column: 13, scope: !2308, inlinedAt: !2359)
!2362 = !DILocation(line: 196, column: 7, scope: !2299, inlinedAt: !2359)
!2363 = !DILocation(line: 197, column: 5, scope: !2308, inlinedAt: !2359)
!2364 = !DILocation(line: 198, column: 5, scope: !2299, inlinedAt: !2359)
!2365 = !DILocation(line: 198, column: 11, scope: !2299, inlinedAt: !2359)
!2366 = !DILocation(line: 958, column: 10, scope: !2283, inlinedAt: !2351)
!2367 = !DILocation(line: 959, column: 1, scope: !2283, inlinedAt: !2351)
!2368 = !DILocation(line: 972, column: 3, scope: !2343)
!2369 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !78, file: !78, line: 976, type: !2370, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!21, !5, !39, !102}
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "s", arg: 1, scope: !2369, file: !78, line: 976, type: !5)
!2374 = !DILocalVariable(name: "arg", arg: 2, scope: !2369, file: !78, line: 976, type: !39)
!2375 = !DILocalVariable(name: "argsize", arg: 3, scope: !2369, file: !78, line: 976, type: !102)
!2376 = !DILocation(line: 0, scope: !2369)
!2377 = !DILocation(line: 0, scope: !2316, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 978, column: 10, scope: !2369)
!2379 = !DILocation(line: 965, column: 3, scope: !2316, inlinedAt: !2378)
!2380 = !DILocation(line: 965, column: 32, scope: !2316, inlinedAt: !2378)
!2381 = !{!2382}
!2382 = distinct !{!2382, !2383, !"quoting_options_from_style: argument 0"}
!2383 = distinct !{!2383, !"quoting_options_from_style"}
!2384 = !DILocation(line: 965, column: 36, scope: !2316, inlinedAt: !2378)
!2385 = !DILocation(line: 0, scope: !2299, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 965, column: 36, scope: !2316, inlinedAt: !2378)
!2387 = !DILocation(line: 195, column: 26, scope: !2299, inlinedAt: !2386)
!2388 = !DILocation(line: 196, column: 13, scope: !2308, inlinedAt: !2386)
!2389 = !DILocation(line: 196, column: 7, scope: !2299, inlinedAt: !2386)
!2390 = !DILocation(line: 197, column: 5, scope: !2308, inlinedAt: !2386)
!2391 = !DILocation(line: 198, column: 5, scope: !2299, inlinedAt: !2386)
!2392 = !DILocation(line: 198, column: 11, scope: !2299, inlinedAt: !2386)
!2393 = !DILocation(line: 966, column: 10, scope: !2316, inlinedAt: !2378)
!2394 = !DILocation(line: 967, column: 1, scope: !2316, inlinedAt: !2378)
!2395 = !DILocation(line: 978, column: 3, scope: !2369)
!2396 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !78, file: !78, line: 982, type: !2397, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!21, !39, !102, !22}
!2399 = !{!2400, !2401, !2402, !2403}
!2400 = !DILocalVariable(name: "arg", arg: 1, scope: !2396, file: !78, line: 982, type: !39)
!2401 = !DILocalVariable(name: "argsize", arg: 2, scope: !2396, file: !78, line: 982, type: !102)
!2402 = !DILocalVariable(name: "ch", arg: 3, scope: !2396, file: !78, line: 982, type: !22)
!2403 = !DILocalVariable(name: "options", scope: !2396, file: !78, line: 984, type: !114)
!2404 = !DILocation(line: 0, scope: !2396)
!2405 = !DILocation(line: 984, column: 3, scope: !2396)
!2406 = !DILocation(line: 984, column: 26, scope: !2396)
!2407 = !DILocation(line: 985, column: 13, scope: !2396)
!2408 = !{i64 0, i64 4, !830, i64 4, i64 4, !775, i64 8, i64 32, !830, i64 40, i64 8, !612, i64 48, i64 8, !612}
!2409 = !DILocation(line: 0, scope: !1235, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 986, column: 3, scope: !2396)
!2411 = !DILocation(line: 156, column: 62, scope: !1235, inlinedAt: !2410)
!2412 = !DILocation(line: 156, column: 57, scope: !1235, inlinedAt: !2410)
!2413 = !DILocation(line: 157, column: 15, scope: !1235, inlinedAt: !2410)
!2414 = !DILocation(line: 158, column: 12, scope: !1235, inlinedAt: !2410)
!2415 = !DILocation(line: 158, column: 15, scope: !1235, inlinedAt: !2410)
!2416 = !DILocation(line: 158, column: 25, scope: !1235, inlinedAt: !2410)
!2417 = !DILocation(line: 159, column: 18, scope: !1235, inlinedAt: !2410)
!2418 = !DILocation(line: 159, column: 23, scope: !1235, inlinedAt: !2410)
!2419 = !DILocation(line: 159, column: 6, scope: !1235, inlinedAt: !2410)
!2420 = !DILocation(line: 987, column: 10, scope: !2396)
!2421 = !DILocation(line: 988, column: 1, scope: !2396)
!2422 = !DILocation(line: 987, column: 3, scope: !2396)
!2423 = distinct !DISubprogram(name: "quotearg_char", scope: !78, file: !78, line: 991, type: !2424, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!21, !39, !22}
!2426 = !{!2427, !2428}
!2427 = !DILocalVariable(name: "arg", arg: 1, scope: !2423, file: !78, line: 991, type: !39)
!2428 = !DILocalVariable(name: "ch", arg: 2, scope: !2423, file: !78, line: 991, type: !22)
!2429 = !DILocation(line: 0, scope: !2423)
!2430 = !DILocation(line: 0, scope: !2396, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 993, column: 10, scope: !2423)
!2432 = !DILocation(line: 984, column: 3, scope: !2396, inlinedAt: !2431)
!2433 = !DILocation(line: 984, column: 26, scope: !2396, inlinedAt: !2431)
!2434 = !DILocation(line: 985, column: 13, scope: !2396, inlinedAt: !2431)
!2435 = !DILocation(line: 0, scope: !1235, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 986, column: 3, scope: !2396, inlinedAt: !2431)
!2437 = !DILocation(line: 156, column: 62, scope: !1235, inlinedAt: !2436)
!2438 = !DILocation(line: 156, column: 57, scope: !1235, inlinedAt: !2436)
!2439 = !DILocation(line: 157, column: 15, scope: !1235, inlinedAt: !2436)
!2440 = !DILocation(line: 158, column: 12, scope: !1235, inlinedAt: !2436)
!2441 = !DILocation(line: 158, column: 15, scope: !1235, inlinedAt: !2436)
!2442 = !DILocation(line: 158, column: 25, scope: !1235, inlinedAt: !2436)
!2443 = !DILocation(line: 159, column: 18, scope: !1235, inlinedAt: !2436)
!2444 = !DILocation(line: 159, column: 23, scope: !1235, inlinedAt: !2436)
!2445 = !DILocation(line: 159, column: 6, scope: !1235, inlinedAt: !2436)
!2446 = !DILocation(line: 987, column: 10, scope: !2396, inlinedAt: !2431)
!2447 = !DILocation(line: 988, column: 1, scope: !2396, inlinedAt: !2431)
!2448 = !DILocation(line: 993, column: 3, scope: !2423)
!2449 = distinct !DISubprogram(name: "quotearg_colon", scope: !78, file: !78, line: 997, type: !871, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2450)
!2450 = !{!2451}
!2451 = !DILocalVariable(name: "arg", arg: 1, scope: !2449, file: !78, line: 997, type: !39)
!2452 = !DILocation(line: 0, scope: !2449)
!2453 = !DILocation(line: 0, scope: !2423, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 999, column: 10, scope: !2449)
!2455 = !DILocation(line: 0, scope: !2396, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 993, column: 10, scope: !2423, inlinedAt: !2454)
!2457 = !DILocation(line: 984, column: 3, scope: !2396, inlinedAt: !2456)
!2458 = !DILocation(line: 984, column: 26, scope: !2396, inlinedAt: !2456)
!2459 = !DILocation(line: 985, column: 13, scope: !2396, inlinedAt: !2456)
!2460 = !DILocation(line: 0, scope: !1235, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 986, column: 3, scope: !2396, inlinedAt: !2456)
!2462 = !DILocation(line: 156, column: 57, scope: !1235, inlinedAt: !2461)
!2463 = !DILocation(line: 158, column: 12, scope: !1235, inlinedAt: !2461)
!2464 = !DILocation(line: 159, column: 6, scope: !1235, inlinedAt: !2461)
!2465 = !DILocation(line: 987, column: 10, scope: !2396, inlinedAt: !2456)
!2466 = !DILocation(line: 988, column: 1, scope: !2396, inlinedAt: !2456)
!2467 = !DILocation(line: 999, column: 3, scope: !2449)
!2468 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !78, file: !78, line: 1003, type: !2273, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2469)
!2469 = !{!2470, !2471}
!2470 = !DILocalVariable(name: "arg", arg: 1, scope: !2468, file: !78, line: 1003, type: !39)
!2471 = !DILocalVariable(name: "argsize", arg: 2, scope: !2468, file: !78, line: 1003, type: !102)
!2472 = !DILocation(line: 0, scope: !2468)
!2473 = !DILocation(line: 0, scope: !2396, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 1005, column: 10, scope: !2468)
!2475 = !DILocation(line: 984, column: 3, scope: !2396, inlinedAt: !2474)
!2476 = !DILocation(line: 984, column: 26, scope: !2396, inlinedAt: !2474)
!2477 = !DILocation(line: 985, column: 13, scope: !2396, inlinedAt: !2474)
!2478 = !DILocation(line: 0, scope: !1235, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 986, column: 3, scope: !2396, inlinedAt: !2474)
!2480 = !DILocation(line: 156, column: 57, scope: !1235, inlinedAt: !2479)
!2481 = !DILocation(line: 158, column: 12, scope: !1235, inlinedAt: !2479)
!2482 = !DILocation(line: 159, column: 6, scope: !1235, inlinedAt: !2479)
!2483 = !DILocation(line: 987, column: 10, scope: !2396, inlinedAt: !2474)
!2484 = !DILocation(line: 988, column: 1, scope: !2396, inlinedAt: !2474)
!2485 = !DILocation(line: 1005, column: 3, scope: !2468)
!2486 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !78, file: !78, line: 1009, type: !2284, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2487)
!2487 = !{!2488, !2489, !2490, !2491}
!2488 = !DILocalVariable(name: "n", arg: 1, scope: !2486, file: !78, line: 1009, type: !42)
!2489 = !DILocalVariable(name: "s", arg: 2, scope: !2486, file: !78, line: 1009, type: !5)
!2490 = !DILocalVariable(name: "arg", arg: 3, scope: !2486, file: !78, line: 1009, type: !39)
!2491 = !DILocalVariable(name: "options", scope: !2486, file: !78, line: 1011, type: !114)
!2492 = !DILocation(line: 195, column: 26, scope: !2299, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 1012, column: 13, scope: !2486)
!2494 = !DILocation(line: 0, scope: !2486)
!2495 = !DILocation(line: 1011, column: 3, scope: !2486)
!2496 = !DILocation(line: 1011, column: 26, scope: !2486)
!2497 = !DILocation(line: 1012, column: 13, scope: !2486)
!2498 = !{!2499}
!2499 = distinct !{!2499, !2500, !"quoting_options_from_style: argument 0"}
!2500 = distinct !{!2500, !"quoting_options_from_style"}
!2501 = !DILocation(line: 0, scope: !2299, inlinedAt: !2493)
!2502 = !DILocation(line: 196, column: 13, scope: !2308, inlinedAt: !2493)
!2503 = !DILocation(line: 196, column: 7, scope: !2299, inlinedAt: !2493)
!2504 = !DILocation(line: 197, column: 5, scope: !2308, inlinedAt: !2493)
!2505 = !{i64 0, i64 4, !775, i64 4, i64 32, !830, i64 36, i64 8, !612, i64 44, i64 8, !612}
!2506 = !DILocation(line: 0, scope: !1235, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 1013, column: 3, scope: !2486)
!2508 = !DILocation(line: 156, column: 57, scope: !1235, inlinedAt: !2507)
!2509 = !DILocation(line: 158, column: 12, scope: !1235, inlinedAt: !2507)
!2510 = !DILocation(line: 159, column: 6, scope: !1235, inlinedAt: !2507)
!2511 = !DILocation(line: 1014, column: 10, scope: !2486)
!2512 = !DILocation(line: 1015, column: 1, scope: !2486)
!2513 = !DILocation(line: 1014, column: 3, scope: !2486)
!2514 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !78, file: !78, line: 1018, type: !2515, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!21, !42, !39, !39, !39}
!2517 = !{!2518, !2519, !2520, !2521}
!2518 = !DILocalVariable(name: "n", arg: 1, scope: !2514, file: !78, line: 1018, type: !42)
!2519 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2514, file: !78, line: 1018, type: !39)
!2520 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2514, file: !78, line: 1019, type: !39)
!2521 = !DILocalVariable(name: "arg", arg: 4, scope: !2514, file: !78, line: 1019, type: !39)
!2522 = !DILocation(line: 0, scope: !2514)
!2523 = !DILocalVariable(name: "n", arg: 1, scope: !2524, file: !78, line: 1026, type: !42)
!2524 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !78, file: !78, line: 1026, type: !2525, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!21, !42, !39, !39, !39, !102}
!2527 = !{!2523, !2528, !2529, !2530, !2531, !2532}
!2528 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2524, file: !78, line: 1026, type: !39)
!2529 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2524, file: !78, line: 1027, type: !39)
!2530 = !DILocalVariable(name: "arg", arg: 4, scope: !2524, file: !78, line: 1028, type: !39)
!2531 = !DILocalVariable(name: "argsize", arg: 5, scope: !2524, file: !78, line: 1028, type: !102)
!2532 = !DILocalVariable(name: "o", scope: !2524, file: !78, line: 1030, type: !114)
!2533 = !DILocation(line: 0, scope: !2524, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 1021, column: 10, scope: !2514)
!2535 = !DILocation(line: 1030, column: 3, scope: !2524, inlinedAt: !2534)
!2536 = !DILocation(line: 1030, column: 26, scope: !2524, inlinedAt: !2534)
!2537 = !DILocation(line: 1030, column: 30, scope: !2524, inlinedAt: !2534)
!2538 = !DILocation(line: 0, scope: !1275, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1031, column: 3, scope: !2524, inlinedAt: !2534)
!2540 = !DILocation(line: 184, column: 6, scope: !1275, inlinedAt: !2539)
!2541 = !DILocation(line: 184, column: 12, scope: !1275, inlinedAt: !2539)
!2542 = !DILocation(line: 185, column: 8, scope: !1289, inlinedAt: !2539)
!2543 = !DILocation(line: 185, column: 19, scope: !1289, inlinedAt: !2539)
!2544 = !DILocation(line: 186, column: 5, scope: !1289, inlinedAt: !2539)
!2545 = !DILocation(line: 187, column: 6, scope: !1275, inlinedAt: !2539)
!2546 = !DILocation(line: 187, column: 17, scope: !1275, inlinedAt: !2539)
!2547 = !DILocation(line: 188, column: 6, scope: !1275, inlinedAt: !2539)
!2548 = !DILocation(line: 188, column: 18, scope: !1275, inlinedAt: !2539)
!2549 = !DILocation(line: 1032, column: 10, scope: !2524, inlinedAt: !2534)
!2550 = !DILocation(line: 1033, column: 1, scope: !2524, inlinedAt: !2534)
!2551 = !DILocation(line: 1021, column: 3, scope: !2514)
!2552 = !DILocation(line: 0, scope: !2524)
!2553 = !DILocation(line: 1030, column: 3, scope: !2524)
!2554 = !DILocation(line: 1030, column: 26, scope: !2524)
!2555 = !DILocation(line: 1030, column: 30, scope: !2524)
!2556 = !DILocation(line: 0, scope: !1275, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 1031, column: 3, scope: !2524)
!2558 = !DILocation(line: 184, column: 6, scope: !1275, inlinedAt: !2557)
!2559 = !DILocation(line: 184, column: 12, scope: !1275, inlinedAt: !2557)
!2560 = !DILocation(line: 185, column: 8, scope: !1289, inlinedAt: !2557)
!2561 = !DILocation(line: 185, column: 19, scope: !1289, inlinedAt: !2557)
!2562 = !DILocation(line: 186, column: 5, scope: !1289, inlinedAt: !2557)
!2563 = !DILocation(line: 187, column: 6, scope: !1275, inlinedAt: !2557)
!2564 = !DILocation(line: 187, column: 17, scope: !1275, inlinedAt: !2557)
!2565 = !DILocation(line: 188, column: 6, scope: !1275, inlinedAt: !2557)
!2566 = !DILocation(line: 188, column: 18, scope: !1275, inlinedAt: !2557)
!2567 = !DILocation(line: 1032, column: 10, scope: !2524)
!2568 = !DILocation(line: 1033, column: 1, scope: !2524)
!2569 = !DILocation(line: 1032, column: 3, scope: !2524)
!2570 = distinct !DISubprogram(name: "quotearg_custom", scope: !78, file: !78, line: 1036, type: !2571, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!21, !39, !39, !39}
!2573 = !{!2574, !2575, !2576}
!2574 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2570, file: !78, line: 1036, type: !39)
!2575 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2570, file: !78, line: 1036, type: !39)
!2576 = !DILocalVariable(name: "arg", arg: 3, scope: !2570, file: !78, line: 1037, type: !39)
!2577 = !DILocation(line: 0, scope: !2570)
!2578 = !DILocation(line: 0, scope: !2514, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1039, column: 10, scope: !2570)
!2580 = !DILocation(line: 0, scope: !2524, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 1021, column: 10, scope: !2514, inlinedAt: !2579)
!2582 = !DILocation(line: 1030, column: 3, scope: !2524, inlinedAt: !2581)
!2583 = !DILocation(line: 1030, column: 26, scope: !2524, inlinedAt: !2581)
!2584 = !DILocation(line: 1030, column: 30, scope: !2524, inlinedAt: !2581)
!2585 = !DILocation(line: 0, scope: !1275, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 1031, column: 3, scope: !2524, inlinedAt: !2581)
!2587 = !DILocation(line: 184, column: 6, scope: !1275, inlinedAt: !2586)
!2588 = !DILocation(line: 184, column: 12, scope: !1275, inlinedAt: !2586)
!2589 = !DILocation(line: 185, column: 8, scope: !1289, inlinedAt: !2586)
!2590 = !DILocation(line: 185, column: 19, scope: !1289, inlinedAt: !2586)
!2591 = !DILocation(line: 186, column: 5, scope: !1289, inlinedAt: !2586)
!2592 = !DILocation(line: 187, column: 6, scope: !1275, inlinedAt: !2586)
!2593 = !DILocation(line: 187, column: 17, scope: !1275, inlinedAt: !2586)
!2594 = !DILocation(line: 188, column: 6, scope: !1275, inlinedAt: !2586)
!2595 = !DILocation(line: 188, column: 18, scope: !1275, inlinedAt: !2586)
!2596 = !DILocation(line: 1032, column: 10, scope: !2524, inlinedAt: !2581)
!2597 = !DILocation(line: 1033, column: 1, scope: !2524, inlinedAt: !2581)
!2598 = !DILocation(line: 1039, column: 3, scope: !2570)
!2599 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !78, file: !78, line: 1043, type: !2600, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!21, !39, !39, !39, !102}
!2602 = !{!2603, !2604, !2605, !2606}
!2603 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2599, file: !78, line: 1043, type: !39)
!2604 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2599, file: !78, line: 1043, type: !39)
!2605 = !DILocalVariable(name: "arg", arg: 3, scope: !2599, file: !78, line: 1044, type: !39)
!2606 = !DILocalVariable(name: "argsize", arg: 4, scope: !2599, file: !78, line: 1044, type: !102)
!2607 = !DILocation(line: 0, scope: !2599)
!2608 = !DILocation(line: 0, scope: !2524, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1046, column: 10, scope: !2599)
!2610 = !DILocation(line: 1030, column: 3, scope: !2524, inlinedAt: !2609)
!2611 = !DILocation(line: 1030, column: 26, scope: !2524, inlinedAt: !2609)
!2612 = !DILocation(line: 1030, column: 30, scope: !2524, inlinedAt: !2609)
!2613 = !DILocation(line: 0, scope: !1275, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1031, column: 3, scope: !2524, inlinedAt: !2609)
!2615 = !DILocation(line: 184, column: 6, scope: !1275, inlinedAt: !2614)
!2616 = !DILocation(line: 184, column: 12, scope: !1275, inlinedAt: !2614)
!2617 = !DILocation(line: 185, column: 8, scope: !1289, inlinedAt: !2614)
!2618 = !DILocation(line: 185, column: 19, scope: !1289, inlinedAt: !2614)
!2619 = !DILocation(line: 186, column: 5, scope: !1289, inlinedAt: !2614)
!2620 = !DILocation(line: 187, column: 6, scope: !1275, inlinedAt: !2614)
!2621 = !DILocation(line: 187, column: 17, scope: !1275, inlinedAt: !2614)
!2622 = !DILocation(line: 188, column: 6, scope: !1275, inlinedAt: !2614)
!2623 = !DILocation(line: 188, column: 18, scope: !1275, inlinedAt: !2614)
!2624 = !DILocation(line: 1032, column: 10, scope: !2524, inlinedAt: !2609)
!2625 = !DILocation(line: 1033, column: 1, scope: !2524, inlinedAt: !2609)
!2626 = !DILocation(line: 1046, column: 3, scope: !2599)
!2627 = distinct !DISubprogram(name: "quote_n_mem", scope: !78, file: !78, line: 1061, type: !2628, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!39, !42, !39, !102}
!2630 = !{!2631, !2632, !2633}
!2631 = !DILocalVariable(name: "n", arg: 1, scope: !2627, file: !78, line: 1061, type: !42)
!2632 = !DILocalVariable(name: "arg", arg: 2, scope: !2627, file: !78, line: 1061, type: !39)
!2633 = !DILocalVariable(name: "argsize", arg: 3, scope: !2627, file: !78, line: 1061, type: !102)
!2634 = !DILocation(line: 0, scope: !2627)
!2635 = !DILocation(line: 1063, column: 10, scope: !2627)
!2636 = !DILocation(line: 1063, column: 3, scope: !2627)
!2637 = distinct !DISubprogram(name: "quote_mem", scope: !78, file: !78, line: 1067, type: !2638, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!39, !39, !102}
!2640 = !{!2641, !2642}
!2641 = !DILocalVariable(name: "arg", arg: 1, scope: !2637, file: !78, line: 1067, type: !39)
!2642 = !DILocalVariable(name: "argsize", arg: 2, scope: !2637, file: !78, line: 1067, type: !102)
!2643 = !DILocation(line: 0, scope: !2637)
!2644 = !DILocation(line: 0, scope: !2627, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 1069, column: 10, scope: !2637)
!2646 = !DILocation(line: 1063, column: 10, scope: !2627, inlinedAt: !2645)
!2647 = !DILocation(line: 1069, column: 3, scope: !2637)
!2648 = distinct !DISubprogram(name: "quote_n", scope: !78, file: !78, line: 1073, type: !2649, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!39, !42, !39}
!2651 = !{!2652, !2653}
!2652 = !DILocalVariable(name: "n", arg: 1, scope: !2648, file: !78, line: 1073, type: !42)
!2653 = !DILocalVariable(name: "arg", arg: 2, scope: !2648, file: !78, line: 1073, type: !39)
!2654 = !DILocation(line: 0, scope: !2648)
!2655 = !DILocation(line: 0, scope: !2627, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1075, column: 10, scope: !2648)
!2657 = !DILocation(line: 1063, column: 10, scope: !2627, inlinedAt: !2656)
!2658 = !DILocation(line: 1075, column: 3, scope: !2648)
!2659 = distinct !DISubprogram(name: "quote", scope: !78, file: !78, line: 1079, type: !2660, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !77, retainedNodes: !2662)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!39, !39}
!2662 = !{!2663}
!2663 = !DILocalVariable(name: "arg", arg: 1, scope: !2659, file: !78, line: 1079, type: !39)
!2664 = !DILocation(line: 0, scope: !2659)
!2665 = !DILocation(line: 0, scope: !2648, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1081, column: 10, scope: !2659)
!2667 = !DILocation(line: 0, scope: !2627, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 1075, column: 10, scope: !2648, inlinedAt: !2666)
!2669 = !DILocation(line: 1063, column: 10, scope: !2627, inlinedAt: !2668)
!2670 = !DILocation(line: 1081, column: 3, scope: !2659)
!2671 = distinct !DISubprogram(name: "version_etc_arn", scope: !161, file: !161, line: 61, type: !2672, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2709)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !2674, !39, !39, !39, !2708, !102}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1008, line: 7, baseType: !2676)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !683, line: 49, size: 1728, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2676, file: !683, line: 51, baseType: !42, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2676, file: !683, line: 54, baseType: !21, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2676, file: !683, line: 55, baseType: !21, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2676, file: !683, line: 56, baseType: !21, size: 64, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2676, file: !683, line: 57, baseType: !21, size: 64, offset: 256)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2676, file: !683, line: 58, baseType: !21, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2676, file: !683, line: 59, baseType: !21, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2676, file: !683, line: 60, baseType: !21, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2676, file: !683, line: 61, baseType: !21, size: 64, offset: 512)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2676, file: !683, line: 64, baseType: !21, size: 64, offset: 576)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2676, file: !683, line: 65, baseType: !21, size: 64, offset: 640)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2676, file: !683, line: 66, baseType: !21, size: 64, offset: 704)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2676, file: !683, line: 68, baseType: !698, size: 64, offset: 768)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2676, file: !683, line: 70, baseType: !2692, size: 64, offset: 832)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2676, file: !683, line: 72, baseType: !42, size: 32, offset: 896)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2676, file: !683, line: 73, baseType: !42, size: 32, offset: 928)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2676, file: !683, line: 74, baseType: !704, size: 64, offset: 960)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2676, file: !683, line: 77, baseType: !101, size: 16, offset: 1024)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2676, file: !683, line: 78, baseType: !709, size: 8, offset: 1040)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2676, file: !683, line: 79, baseType: !711, size: 8, offset: 1048)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2676, file: !683, line: 81, baseType: !715, size: 64, offset: 1088)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2676, file: !683, line: 89, baseType: !718, size: 64, offset: 1152)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2676, file: !683, line: 91, baseType: !720, size: 64, offset: 1216)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2676, file: !683, line: 92, baseType: !723, size: 64, offset: 1280)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2676, file: !683, line: 93, baseType: !2692, size: 64, offset: 1344)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2676, file: !683, line: 94, baseType: !23, size: 64, offset: 1408)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2676, file: !683, line: 95, baseType: !102, size: 64, offset: 1472)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2676, file: !683, line: 96, baseType: !42, size: 32, offset: 1536)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2676, file: !683, line: 98, baseType: !730, size: 160, offset: 1568)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!2709 = !{!2710, !2711, !2712, !2713, !2714, !2715}
!2710 = !DILocalVariable(name: "stream", arg: 1, scope: !2671, file: !161, line: 61, type: !2674)
!2711 = !DILocalVariable(name: "command_name", arg: 2, scope: !2671, file: !161, line: 62, type: !39)
!2712 = !DILocalVariable(name: "package", arg: 3, scope: !2671, file: !161, line: 62, type: !39)
!2713 = !DILocalVariable(name: "version", arg: 4, scope: !2671, file: !161, line: 63, type: !39)
!2714 = !DILocalVariable(name: "authors", arg: 5, scope: !2671, file: !161, line: 64, type: !2708)
!2715 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2671, file: !161, line: 64, type: !102)
!2716 = !DILocation(line: 0, scope: !2671)
!2717 = !DILocation(line: 66, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2671, file: !161, line: 66, column: 7)
!2719 = !DILocation(line: 66, column: 7, scope: !2671)
!2720 = !DILocation(line: 67, column: 5, scope: !2718)
!2721 = !DILocation(line: 69, column: 5, scope: !2718)
!2722 = !DILocation(line: 83, column: 3, scope: !2671)
!2723 = !DILocation(line: 85, column: 3, scope: !2671)
!2724 = !DILocation(line: 88, column: 3, scope: !2671)
!2725 = !DILocation(line: 95, column: 3, scope: !2671)
!2726 = !DILocation(line: 97, column: 3, scope: !2671)
!2727 = !DILocation(line: 105, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2671, file: !161, line: 98, column: 5)
!2729 = !DILocation(line: 106, column: 7, scope: !2728)
!2730 = !DILocation(line: 109, column: 7, scope: !2728)
!2731 = !DILocation(line: 110, column: 7, scope: !2728)
!2732 = !DILocation(line: 113, column: 7, scope: !2728)
!2733 = !DILocation(line: 115, column: 7, scope: !2728)
!2734 = !DILocation(line: 120, column: 7, scope: !2728)
!2735 = !DILocation(line: 122, column: 7, scope: !2728)
!2736 = !DILocation(line: 127, column: 7, scope: !2728)
!2737 = !DILocation(line: 129, column: 7, scope: !2728)
!2738 = !DILocation(line: 134, column: 7, scope: !2728)
!2739 = !DILocation(line: 137, column: 7, scope: !2728)
!2740 = !DILocation(line: 142, column: 7, scope: !2728)
!2741 = !DILocation(line: 145, column: 7, scope: !2728)
!2742 = !DILocation(line: 150, column: 7, scope: !2728)
!2743 = !DILocation(line: 154, column: 7, scope: !2728)
!2744 = !DILocation(line: 159, column: 7, scope: !2728)
!2745 = !DILocation(line: 163, column: 7, scope: !2728)
!2746 = !DILocation(line: 170, column: 7, scope: !2728)
!2747 = !DILocation(line: 174, column: 7, scope: !2728)
!2748 = !DILocation(line: 176, column: 1, scope: !2671)
!2749 = distinct !DISubprogram(name: "version_etc_ar", scope: !161, file: !161, line: 183, type: !2750, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{null, !2674, !39, !39, !39, !2708}
!2752 = !{!2753, !2754, !2755, !2756, !2757, !2758}
!2753 = !DILocalVariable(name: "stream", arg: 1, scope: !2749, file: !161, line: 183, type: !2674)
!2754 = !DILocalVariable(name: "command_name", arg: 2, scope: !2749, file: !161, line: 184, type: !39)
!2755 = !DILocalVariable(name: "package", arg: 3, scope: !2749, file: !161, line: 184, type: !39)
!2756 = !DILocalVariable(name: "version", arg: 4, scope: !2749, file: !161, line: 185, type: !39)
!2757 = !DILocalVariable(name: "authors", arg: 5, scope: !2749, file: !161, line: 185, type: !2708)
!2758 = !DILocalVariable(name: "n_authors", scope: !2749, file: !161, line: 187, type: !102)
!2759 = !DILocation(line: 0, scope: !2749)
!2760 = !DILocation(line: 189, column: 8, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2749, file: !161, line: 189, column: 3)
!2762 = !DILocation(line: 0, scope: !2761)
!2763 = !DILocation(line: 189, column: 23, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !161, line: 189, column: 3)
!2765 = !DILocation(line: 189, column: 3, scope: !2761)
!2766 = !DILocation(line: 189, column: 52, scope: !2764)
!2767 = distinct !{!2767, !2765, !2768, !653}
!2768 = !DILocation(line: 190, column: 5, scope: !2761)
!2769 = !DILocation(line: 191, column: 3, scope: !2749)
!2770 = !DILocation(line: 192, column: 1, scope: !2749)
!2771 = distinct !DISubprogram(name: "version_etc_va", scope: !161, file: !161, line: 199, type: !2772, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2781)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2674, !39, !39, !39, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2775, file: !161, line: 192, baseType: !7, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2775, file: !161, line: 192, baseType: !7, size: 32, offset: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2775, file: !161, line: 192, baseType: !23, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2775, file: !161, line: 192, baseType: !23, size: 64, offset: 128)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788}
!2782 = !DILocalVariable(name: "stream", arg: 1, scope: !2771, file: !161, line: 199, type: !2674)
!2783 = !DILocalVariable(name: "command_name", arg: 2, scope: !2771, file: !161, line: 200, type: !39)
!2784 = !DILocalVariable(name: "package", arg: 3, scope: !2771, file: !161, line: 200, type: !39)
!2785 = !DILocalVariable(name: "version", arg: 4, scope: !2771, file: !161, line: 201, type: !39)
!2786 = !DILocalVariable(name: "authors", arg: 5, scope: !2771, file: !161, line: 201, type: !2774)
!2787 = !DILocalVariable(name: "n_authors", scope: !2771, file: !161, line: 203, type: !102)
!2788 = !DILocalVariable(name: "authtab", scope: !2771, file: !161, line: 204, type: !2789)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 640, elements: !110)
!2790 = !DILocation(line: 0, scope: !2771)
!2791 = !DILocation(line: 204, column: 3, scope: !2771)
!2792 = !DILocation(line: 204, column: 15, scope: !2771)
!2793 = !DILocation(line: 208, column: 35, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !161, line: 206, column: 3)
!2795 = distinct !DILexicalBlock(scope: !2771, file: !161, line: 206, column: 3)
!2796 = !DILocation(line: 208, column: 14, scope: !2794)
!2797 = !DILocation(line: 208, column: 33, scope: !2794)
!2798 = !DILocation(line: 208, column: 67, scope: !2794)
!2799 = !DILocation(line: 206, column: 3, scope: !2795)
!2800 = !DILocation(line: 0, scope: !2795)
!2801 = !DILocation(line: 211, column: 3, scope: !2771)
!2802 = !DILocation(line: 213, column: 1, scope: !2771)
!2803 = distinct !DISubprogram(name: "version_etc", scope: !161, file: !161, line: 230, type: !2804, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2674, !39, !39, !39, null}
!2806 = !{!2807, !2808, !2809, !2810, !2811}
!2807 = !DILocalVariable(name: "stream", arg: 1, scope: !2803, file: !161, line: 230, type: !2674)
!2808 = !DILocalVariable(name: "command_name", arg: 2, scope: !2803, file: !161, line: 231, type: !39)
!2809 = !DILocalVariable(name: "package", arg: 3, scope: !2803, file: !161, line: 231, type: !39)
!2810 = !DILocalVariable(name: "version", arg: 4, scope: !2803, file: !161, line: 232, type: !39)
!2811 = !DILocalVariable(name: "authors", scope: !2803, file: !161, line: 234, type: !2812)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !678, line: 52, baseType: !2813)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1047, line: 32, baseType: !2814)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !161, baseType: !2815)
!2815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2775, size: 192, elements: !712)
!2816 = !DILocation(line: 0, scope: !2803)
!2817 = !DILocation(line: 234, column: 3, scope: !2803)
!2818 = !DILocation(line: 234, column: 11, scope: !2803)
!2819 = !DILocation(line: 236, column: 3, scope: !2803)
!2820 = !DILocation(line: 237, column: 3, scope: !2803)
!2821 = !DILocation(line: 238, column: 3, scope: !2803)
!2822 = !DILocation(line: 239, column: 1, scope: !2803)
!2823 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !161, file: !161, line: 242, type: !878, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !54)
!2824 = !DILocation(line: 244, column: 3, scope: !2823)
!2825 = !DILocation(line: 249, column: 3, scope: !2823)
!2826 = !DILocation(line: 255, column: 3, scope: !2823)
!2827 = !DILocation(line: 260, column: 3, scope: !2823)
!2828 = !DILocation(line: 262, column: 1, scope: !2823)
!2829 = distinct !DISubprogram(name: "xnmalloc", scope: !171, file: !171, line: 99, type: !2830, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!23, !102, !102}
!2832 = !{!2833, !2834}
!2833 = !DILocalVariable(name: "n", arg: 1, scope: !2829, file: !171, line: 99, type: !102)
!2834 = !DILocalVariable(name: "s", arg: 2, scope: !2829, file: !171, line: 99, type: !102)
!2835 = !DILocation(line: 0, scope: !2829)
!2836 = !DILocation(line: 101, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2829, file: !171, line: 101, column: 7)
!2838 = !DILocation(line: 101, column: 7, scope: !2829)
!2839 = !DILocation(line: 102, column: 5, scope: !2837)
!2840 = !DILocation(line: 103, column: 21, scope: !2829)
!2841 = !DILocalVariable(name: "n", arg: 1, scope: !2842, file: !168, line: 39, type: !102)
!2842 = distinct !DISubprogram(name: "xmalloc", scope: !168, file: !168, line: 39, type: !2843, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!23, !102}
!2845 = !{!2841, !2846}
!2846 = !DILocalVariable(name: "p", scope: !2842, file: !168, line: 41, type: !23)
!2847 = !DILocation(line: 0, scope: !2842, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 103, column: 10, scope: !2829)
!2849 = !DILocation(line: 41, column: 13, scope: !2842, inlinedAt: !2848)
!2850 = !DILocation(line: 42, column: 8, scope: !2851, inlinedAt: !2848)
!2851 = distinct !DILexicalBlock(scope: !2842, file: !168, line: 42, column: 7)
!2852 = !DILocation(line: 42, column: 10, scope: !2851, inlinedAt: !2848)
!2853 = !DILocation(line: 43, column: 5, scope: !2851, inlinedAt: !2848)
!2854 = !DILocation(line: 103, column: 3, scope: !2829)
!2855 = !DILocation(line: 0, scope: !2842)
!2856 = !DILocation(line: 41, column: 13, scope: !2842)
!2857 = !DILocation(line: 42, column: 8, scope: !2851)
!2858 = !DILocation(line: 42, column: 10, scope: !2851)
!2859 = !DILocation(line: 43, column: 5, scope: !2851)
!2860 = !DILocation(line: 44, column: 3, scope: !2842)
!2861 = distinct !DISubprogram(name: "xnrealloc", scope: !171, file: !171, line: 112, type: !2862, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!23, !23, !102, !102}
!2864 = !{!2865, !2866, !2867}
!2865 = !DILocalVariable(name: "p", arg: 1, scope: !2861, file: !171, line: 112, type: !23)
!2866 = !DILocalVariable(name: "n", arg: 2, scope: !2861, file: !171, line: 112, type: !102)
!2867 = !DILocalVariable(name: "s", arg: 3, scope: !2861, file: !171, line: 112, type: !102)
!2868 = !DILocation(line: 0, scope: !2861)
!2869 = !DILocation(line: 114, column: 7, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2861, file: !171, line: 114, column: 7)
!2871 = !DILocation(line: 114, column: 7, scope: !2861)
!2872 = !DILocation(line: 115, column: 5, scope: !2870)
!2873 = !DILocation(line: 116, column: 25, scope: !2861)
!2874 = !DILocalVariable(name: "p", arg: 1, scope: !2875, file: !168, line: 51, type: !23)
!2875 = distinct !DISubprogram(name: "xrealloc", scope: !168, file: !168, line: 51, type: !2876, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!23, !23, !102}
!2878 = !{!2874, !2879}
!2879 = !DILocalVariable(name: "n", arg: 2, scope: !2875, file: !168, line: 51, type: !102)
!2880 = !DILocation(line: 0, scope: !2875, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 116, column: 10, scope: !2861)
!2882 = !DILocation(line: 53, column: 8, scope: !2883, inlinedAt: !2881)
!2883 = distinct !DILexicalBlock(scope: !2875, file: !168, line: 53, column: 7)
!2884 = !DILocation(line: 53, column: 10, scope: !2883, inlinedAt: !2881)
!2885 = !DILocation(line: 57, column: 7, scope: !2886, inlinedAt: !2881)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !168, line: 54, column: 5)
!2887 = !DILocation(line: 58, column: 7, scope: !2886, inlinedAt: !2881)
!2888 = !DILocation(line: 61, column: 7, scope: !2875, inlinedAt: !2881)
!2889 = !DILocation(line: 62, column: 8, scope: !2890, inlinedAt: !2881)
!2890 = distinct !DILexicalBlock(scope: !2875, file: !168, line: 62, column: 7)
!2891 = !DILocation(line: 62, column: 10, scope: !2890, inlinedAt: !2881)
!2892 = !DILocation(line: 63, column: 5, scope: !2890, inlinedAt: !2881)
!2893 = !DILocation(line: 116, column: 3, scope: !2861)
!2894 = !DILocation(line: 0, scope: !2875)
!2895 = !DILocation(line: 53, column: 8, scope: !2883)
!2896 = !DILocation(line: 53, column: 10, scope: !2883)
!2897 = !DILocation(line: 57, column: 7, scope: !2886)
!2898 = !DILocation(line: 58, column: 7, scope: !2886)
!2899 = !DILocation(line: 61, column: 7, scope: !2875)
!2900 = !DILocation(line: 62, column: 8, scope: !2890)
!2901 = !DILocation(line: 62, column: 10, scope: !2890)
!2902 = !DILocation(line: 63, column: 5, scope: !2890)
!2903 = !DILocation(line: 65, column: 1, scope: !2875)
!2904 = !DILocation(line: 0, scope: !172)
!2905 = !DILocation(line: 176, column: 14, scope: !172)
!2906 = !DILocation(line: 178, column: 9, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !172, file: !171, line: 178, column: 7)
!2908 = !DILocation(line: 178, column: 7, scope: !172)
!2909 = !DILocation(line: 180, column: 13, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !171, line: 180, column: 11)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !171, line: 179, column: 5)
!2912 = !DILocation(line: 180, column: 11, scope: !2911)
!2913 = !DILocation(line: 188, column: 30, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !171, line: 181, column: 9)
!2915 = !DILocation(line: 189, column: 16, scope: !2914)
!2916 = !DILocation(line: 189, column: 13, scope: !2914)
!2917 = !DILocation(line: 190, column: 9, scope: !2914)
!2918 = !DILocation(line: 191, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2911, file: !171, line: 191, column: 11)
!2920 = !DILocation(line: 191, column: 11, scope: !2911)
!2921 = !DILocation(line: 206, column: 7, scope: !172)
!2922 = !DILocation(line: 207, column: 25, scope: !172)
!2923 = !DILocation(line: 0, scope: !2875, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 207, column: 10, scope: !172)
!2925 = !DILocation(line: 53, column: 10, scope: !2883, inlinedAt: !2924)
!2926 = !DILocation(line: 192, column: 9, scope: !2919)
!2927 = !DILocation(line: 200, column: 69, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !171, line: 200, column: 11)
!2929 = distinct !DILexicalBlock(scope: !2907, file: !171, line: 195, column: 5)
!2930 = !DILocation(line: 201, column: 11, scope: !2928)
!2931 = !DILocation(line: 200, column: 11, scope: !2929)
!2932 = !DILocation(line: 202, column: 9, scope: !2928)
!2933 = !DILocation(line: 203, column: 14, scope: !2929)
!2934 = !DILocation(line: 203, column: 18, scope: !2929)
!2935 = !DILocation(line: 203, column: 9, scope: !2929)
!2936 = !DILocation(line: 53, column: 8, scope: !2883, inlinedAt: !2924)
!2937 = !DILocation(line: 57, column: 7, scope: !2886, inlinedAt: !2924)
!2938 = !DILocation(line: 58, column: 7, scope: !2886, inlinedAt: !2924)
!2939 = !DILocation(line: 61, column: 7, scope: !2875, inlinedAt: !2924)
!2940 = !DILocation(line: 62, column: 8, scope: !2890, inlinedAt: !2924)
!2941 = !DILocation(line: 62, column: 10, scope: !2890, inlinedAt: !2924)
!2942 = !DILocation(line: 63, column: 5, scope: !2890, inlinedAt: !2924)
!2943 = !DILocation(line: 207, column: 3, scope: !172)
!2944 = distinct !DISubprogram(name: "xcharalloc", scope: !171, file: !171, line: 216, type: !2083, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !2945)
!2945 = !{!2946}
!2946 = !DILocalVariable(name: "n", arg: 1, scope: !2944, file: !171, line: 216, type: !102)
!2947 = !DILocation(line: 0, scope: !2944)
!2948 = !DILocation(line: 0, scope: !2842, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 218, column: 10, scope: !2944)
!2950 = !DILocation(line: 41, column: 13, scope: !2842, inlinedAt: !2949)
!2951 = !DILocation(line: 42, column: 8, scope: !2851, inlinedAt: !2949)
!2952 = !DILocation(line: 42, column: 10, scope: !2851, inlinedAt: !2949)
!2953 = !DILocation(line: 43, column: 5, scope: !2851, inlinedAt: !2949)
!2954 = !DILocation(line: 218, column: 3, scope: !2944)
!2955 = distinct !DISubprogram(name: "x2realloc", scope: !168, file: !168, line: 74, type: !2956, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!23, !23, !175}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2955, file: !168, line: 74, type: !23)
!2960 = !DILocalVariable(name: "pn", arg: 2, scope: !2955, file: !168, line: 74, type: !175)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 0, scope: !172, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 76, column: 10, scope: !2955)
!2964 = !DILocation(line: 176, column: 14, scope: !172, inlinedAt: !2963)
!2965 = !DILocation(line: 178, column: 9, scope: !2907, inlinedAt: !2963)
!2966 = !DILocation(line: 178, column: 7, scope: !172, inlinedAt: !2963)
!2967 = !DILocation(line: 180, column: 13, scope: !2910, inlinedAt: !2963)
!2968 = !DILocation(line: 180, column: 11, scope: !2911, inlinedAt: !2963)
!2969 = !DILocation(line: 191, column: 11, scope: !2919, inlinedAt: !2963)
!2970 = !DILocation(line: 191, column: 11, scope: !2911, inlinedAt: !2963)
!2971 = !DILocation(line: 192, column: 9, scope: !2919, inlinedAt: !2963)
!2972 = !DILocation(line: 201, column: 11, scope: !2928, inlinedAt: !2963)
!2973 = !DILocation(line: 200, column: 11, scope: !2929, inlinedAt: !2963)
!2974 = !DILocation(line: 202, column: 9, scope: !2928, inlinedAt: !2963)
!2975 = !DILocation(line: 203, column: 14, scope: !2929, inlinedAt: !2963)
!2976 = !DILocation(line: 203, column: 18, scope: !2929, inlinedAt: !2963)
!2977 = !DILocation(line: 203, column: 9, scope: !2929, inlinedAt: !2963)
!2978 = !DILocation(line: 0, scope: !2875, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 207, column: 10, scope: !172, inlinedAt: !2963)
!2980 = !DILocation(line: 53, column: 10, scope: !2883, inlinedAt: !2979)
!2981 = !DILocation(line: 206, column: 7, scope: !172, inlinedAt: !2963)
!2982 = !DILocation(line: 61, column: 7, scope: !2875, inlinedAt: !2979)
!2983 = !DILocation(line: 62, column: 8, scope: !2890, inlinedAt: !2979)
!2984 = !DILocation(line: 62, column: 10, scope: !2890, inlinedAt: !2979)
!2985 = !DILocation(line: 63, column: 5, scope: !2890, inlinedAt: !2979)
!2986 = !DILocation(line: 76, column: 3, scope: !2955)
!2987 = distinct !DISubprogram(name: "xzalloc", scope: !168, file: !168, line: 84, type: !2843, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !2988)
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "n", arg: 1, scope: !2987, file: !168, line: 84, type: !102)
!2990 = !DILocation(line: 0, scope: !2987)
!2991 = !DILocalVariable(name: "n", arg: 1, scope: !2992, file: !168, line: 93, type: !102)
!2992 = distinct !DISubprogram(name: "xcalloc", scope: !168, file: !168, line: 93, type: !2830, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !2993)
!2993 = !{!2991, !2994, !2995}
!2994 = !DILocalVariable(name: "s", arg: 2, scope: !2992, file: !168, line: 93, type: !102)
!2995 = !DILocalVariable(name: "p", scope: !2992, file: !168, line: 95, type: !23)
!2996 = !DILocation(line: 0, scope: !2992, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 86, column: 10, scope: !2987)
!2998 = !DILocation(line: 100, column: 7, scope: !2999, inlinedAt: !2997)
!2999 = distinct !DILexicalBlock(scope: !2992, file: !168, line: 100, column: 7)
!3000 = !DILocation(line: 101, column: 7, scope: !2999, inlinedAt: !2997)
!3001 = !DILocation(line: 101, column: 18, scope: !2999, inlinedAt: !2997)
!3002 = !DILocation(line: 101, column: 16, scope: !2999, inlinedAt: !2997)
!3003 = !DILocation(line: 100, column: 7, scope: !2992, inlinedAt: !2997)
!3004 = !DILocation(line: 102, column: 5, scope: !2999, inlinedAt: !2997)
!3005 = !DILocation(line: 86, column: 3, scope: !2987)
!3006 = !DILocation(line: 0, scope: !2992)
!3007 = !DILocation(line: 100, column: 7, scope: !2999)
!3008 = !DILocation(line: 101, column: 7, scope: !2999)
!3009 = !DILocation(line: 101, column: 18, scope: !2999)
!3010 = !DILocation(line: 101, column: 16, scope: !2999)
!3011 = !DILocation(line: 100, column: 7, scope: !2992)
!3012 = !DILocation(line: 102, column: 5, scope: !2999)
!3013 = !DILocation(line: 103, column: 3, scope: !2992)
!3014 = distinct !DISubprogram(name: "xmemdup", scope: !168, file: !168, line: 111, type: !3015, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !3019)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!23, !3017, !102}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3019 = !{!3020, !3021}
!3020 = !DILocalVariable(name: "p", arg: 1, scope: !3014, file: !168, line: 111, type: !3017)
!3021 = !DILocalVariable(name: "s", arg: 2, scope: !3014, file: !168, line: 111, type: !102)
!3022 = !DILocation(line: 0, scope: !3014)
!3023 = !DILocation(line: 0, scope: !2842, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 113, column: 18, scope: !3014)
!3025 = !DILocation(line: 41, column: 13, scope: !2842, inlinedAt: !3024)
!3026 = !DILocation(line: 42, column: 8, scope: !2851, inlinedAt: !3024)
!3027 = !DILocation(line: 42, column: 10, scope: !2851, inlinedAt: !3024)
!3028 = !DILocation(line: 43, column: 5, scope: !2851, inlinedAt: !3024)
!3029 = !DILocalVariable(name: "__dest", arg: 1, scope: !3030, file: !1610, line: 26, type: !3033)
!3030 = distinct !DISubprogram(name: "memcpy", scope: !1610, file: !1610, line: 26, type: !3031, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !3035)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!23, !3033, !3034, !102}
!3033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!3034 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3017)
!3035 = !{!3029, !3036, !3037}
!3036 = !DILocalVariable(name: "__src", arg: 2, scope: !3030, file: !1610, line: 26, type: !3034)
!3037 = !DILocalVariable(name: "__len", arg: 3, scope: !3030, file: !1610, line: 26, type: !102)
!3038 = !DILocation(line: 0, scope: !3030, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 113, column: 10, scope: !3014)
!3040 = !DILocation(line: 29, column: 10, scope: !3030, inlinedAt: !3039)
!3041 = !DILocation(line: 113, column: 3, scope: !3014)
!3042 = distinct !DISubprogram(name: "xstrdup", scope: !168, file: !168, line: 119, type: !871, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !3043)
!3043 = !{!3044}
!3044 = !DILocalVariable(name: "string", arg: 1, scope: !3042, file: !168, line: 119, type: !39)
!3045 = !DILocation(line: 0, scope: !3042)
!3046 = !DILocation(line: 121, column: 27, scope: !3042)
!3047 = !DILocation(line: 121, column: 43, scope: !3042)
!3048 = !DILocation(line: 0, scope: !3014, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 121, column: 10, scope: !3042)
!3050 = !DILocation(line: 0, scope: !2842, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 113, column: 18, scope: !3014, inlinedAt: !3049)
!3052 = !DILocation(line: 41, column: 13, scope: !2842, inlinedAt: !3051)
!3053 = !DILocation(line: 42, column: 8, scope: !2851, inlinedAt: !3051)
!3054 = !DILocation(line: 42, column: 10, scope: !2851, inlinedAt: !3051)
!3055 = !DILocation(line: 43, column: 5, scope: !2851, inlinedAt: !3051)
!3056 = !DILocation(line: 0, scope: !3030, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 113, column: 10, scope: !3014, inlinedAt: !3049)
!3058 = !DILocation(line: 29, column: 10, scope: !3030, inlinedAt: !3057)
!3059 = !DILocation(line: 121, column: 3, scope: !3042)
!3060 = distinct !DISubprogram(name: "xalloc_die", scope: !185, file: !185, line: 32, type: !878, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !184, retainedNodes: !54)
!3061 = !DILocation(line: 34, column: 10, scope: !3060)
!3062 = !DILocation(line: 34, column: 33, scope: !3060)
!3063 = !DILocation(line: 34, column: 3, scope: !3060)
!3064 = !DILocation(line: 40, column: 3, scope: !3060)
!3065 = distinct !DISubprogram(name: "rpl_calloc", scope: !187, file: !187, line: 42, type: !2830, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !3066)
!3066 = !{!3067, !3068, !3069, !3070}
!3067 = !DILocalVariable(name: "n", arg: 1, scope: !3065, file: !187, line: 42, type: !102)
!3068 = !DILocalVariable(name: "s", arg: 2, scope: !3065, file: !187, line: 42, type: !102)
!3069 = !DILocalVariable(name: "result", scope: !3065, file: !187, line: 44, type: !23)
!3070 = !DILocalVariable(name: "bytes", scope: !3071, file: !187, line: 56, type: !102)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !187, line: 53, column: 5)
!3072 = distinct !DILexicalBlock(scope: !3065, file: !187, line: 47, column: 7)
!3073 = !DILocation(line: 0, scope: !3065)
!3074 = !DILocation(line: 47, column: 9, scope: !3072)
!3075 = !DILocation(line: 47, column: 14, scope: !3072)
!3076 = !DILocation(line: 0, scope: !3071)
!3077 = !DILocation(line: 57, column: 21, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3071, file: !187, line: 57, column: 11)
!3079 = !DILocation(line: 57, column: 11, scope: !3071)
!3080 = !DILocation(line: 59, column: 11, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3078, file: !187, line: 58, column: 9)
!3082 = !DILocation(line: 59, column: 17, scope: !3081)
!3083 = !DILocation(line: 65, column: 12, scope: !3065)
!3084 = !DILocation(line: 72, column: 3, scope: !3065)
!3085 = !DILocation(line: 73, column: 1, scope: !3065)
!3086 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !189, file: !189, line: 86, type: !3087, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !188, retainedNodes: !3101)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!102, !3089, !39, !102, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1364, line: 6, baseType: !3092)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1366, line: 21, baseType: !3093)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1366, line: 13, size: 64, elements: !3094)
!3094 = !{!3095, !3096}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3093, file: !1366, line: 15, baseType: !42, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3093, file: !1366, line: 20, baseType: !3097, size: 32, offset: 32)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !1366, line: 16, size: 32, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3097, file: !1366, line: 18, baseType: !7, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3097, file: !1366, line: 19, baseType: !1375, size: 32)
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107, !3108}
!3102 = !DILocalVariable(name: "pwc", arg: 1, scope: !3086, file: !189, line: 86, type: !3089)
!3103 = !DILocalVariable(name: "s", arg: 2, scope: !3086, file: !189, line: 86, type: !39)
!3104 = !DILocalVariable(name: "n", arg: 3, scope: !3086, file: !189, line: 86, type: !102)
!3105 = !DILocalVariable(name: "ps", arg: 4, scope: !3086, file: !189, line: 86, type: !3090)
!3106 = !DILocalVariable(name: "ret", scope: !3086, file: !189, line: 88, type: !102)
!3107 = !DILocalVariable(name: "wc", scope: !3086, file: !189, line: 89, type: !1380)
!3108 = !DILocalVariable(name: "uc", scope: !3109, file: !189, line: 156, type: !157)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !189, line: 155, column: 5)
!3110 = distinct !DILexicalBlock(scope: !3086, file: !189, line: 154, column: 7)
!3111 = !DILocation(line: 0, scope: !3086)
!3112 = !DILocation(line: 89, column: 3, scope: !3086)
!3113 = !DILocation(line: 105, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3086, file: !189, line: 105, column: 7)
!3115 = !DILocation(line: 105, column: 7, scope: !3086)
!3116 = !DILocation(line: 145, column: 9, scope: !3086)
!3117 = !DILocation(line: 154, column: 19, scope: !3110)
!3118 = !DILocation(line: 154, column: 26, scope: !3110)
!3119 = !DILocation(line: 154, column: 41, scope: !3110)
!3120 = !DILocation(line: 154, column: 7, scope: !3086)
!3121 = !DILocation(line: 156, column: 26, scope: !3109)
!3122 = !DILocation(line: 0, scope: !3109)
!3123 = !DILocation(line: 157, column: 14, scope: !3109)
!3124 = !DILocation(line: 157, column: 12, scope: !3109)
!3125 = !DILocation(line: 163, column: 1, scope: !3086)
!3126 = !DISubprogram(name: "mbrtowc", scope: !2043, file: !2043, line: 296, type: !3127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!104, !44, !39, !104, !3129}
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3130 = distinct !DISubprogram(name: "close_stream", scope: !192, file: !192, line: 56, type: !3131, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !3167)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!42, !3133}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1008, line: 7, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !683, line: 49, size: 1728, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3135, file: !683, line: 51, baseType: !42, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3135, file: !683, line: 54, baseType: !21, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3135, file: !683, line: 55, baseType: !21, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3135, file: !683, line: 56, baseType: !21, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3135, file: !683, line: 57, baseType: !21, size: 64, offset: 256)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3135, file: !683, line: 58, baseType: !21, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3135, file: !683, line: 59, baseType: !21, size: 64, offset: 384)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3135, file: !683, line: 60, baseType: !21, size: 64, offset: 448)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3135, file: !683, line: 61, baseType: !21, size: 64, offset: 512)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3135, file: !683, line: 64, baseType: !21, size: 64, offset: 576)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3135, file: !683, line: 65, baseType: !21, size: 64, offset: 640)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3135, file: !683, line: 66, baseType: !21, size: 64, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3135, file: !683, line: 68, baseType: !698, size: 64, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3135, file: !683, line: 70, baseType: !3151, size: 64, offset: 832)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3135, file: !683, line: 72, baseType: !42, size: 32, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3135, file: !683, line: 73, baseType: !42, size: 32, offset: 928)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3135, file: !683, line: 74, baseType: !704, size: 64, offset: 960)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3135, file: !683, line: 77, baseType: !101, size: 16, offset: 1024)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3135, file: !683, line: 78, baseType: !709, size: 8, offset: 1040)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3135, file: !683, line: 79, baseType: !711, size: 8, offset: 1048)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3135, file: !683, line: 81, baseType: !715, size: 64, offset: 1088)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3135, file: !683, line: 89, baseType: !718, size: 64, offset: 1152)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3135, file: !683, line: 91, baseType: !720, size: 64, offset: 1216)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3135, file: !683, line: 92, baseType: !723, size: 64, offset: 1280)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3135, file: !683, line: 93, baseType: !3151, size: 64, offset: 1344)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3135, file: !683, line: 94, baseType: !23, size: 64, offset: 1408)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3135, file: !683, line: 95, baseType: !102, size: 64, offset: 1472)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3135, file: !683, line: 96, baseType: !42, size: 32, offset: 1536)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3135, file: !683, line: 98, baseType: !730, size: 160, offset: 1568)
!3167 = !{!3168, !3169, !3171, !3172}
!3168 = !DILocalVariable(name: "stream", arg: 1, scope: !3130, file: !192, line: 56, type: !3133)
!3169 = !DILocalVariable(name: "some_pending", scope: !3130, file: !192, line: 58, type: !3170)
!3170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!3171 = !DILocalVariable(name: "prev_fail", scope: !3130, file: !192, line: 59, type: !3170)
!3172 = !DILocalVariable(name: "fclose_fail", scope: !3130, file: !192, line: 60, type: !3170)
!3173 = !DILocation(line: 0, scope: !3130)
!3174 = !DILocation(line: 58, column: 30, scope: !3130)
!3175 = !DILocalVariable(name: "__stream", arg: 1, scope: !3176, file: !1079, line: 135, type: !3133)
!3176 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1079, file: !1079, line: 135, type: !3131, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !3177)
!3177 = !{!3175}
!3178 = !DILocation(line: 0, scope: !3176, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 59, column: 27, scope: !3130)
!3180 = !DILocation(line: 137, column: 10, scope: !3176, inlinedAt: !3179)
!3181 = !{!1088, !776, i64 0}
!3182 = !DILocation(line: 59, column: 43, scope: !3130)
!3183 = !DILocation(line: 60, column: 29, scope: !3130)
!3184 = !DILocation(line: 60, column: 45, scope: !3130)
!3185 = !DILocation(line: 70, column: 17, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3130, file: !192, line: 70, column: 7)
!3187 = !DILocation(line: 58, column: 50, scope: !3130)
!3188 = !DILocation(line: 70, column: 33, scope: !3186)
!3189 = !DILocation(line: 70, column: 53, scope: !3186)
!3190 = !DILocation(line: 70, column: 59, scope: !3186)
!3191 = !DILocation(line: 70, column: 7, scope: !3130)
!3192 = !DILocation(line: 72, column: 11, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3186, file: !192, line: 71, column: 5)
!3194 = !DILocation(line: 73, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3193, file: !192, line: 72, column: 11)
!3196 = !DILocation(line: 73, column: 15, scope: !3195)
!3197 = !DILocation(line: 78, column: 1, scope: !3130)
!3198 = distinct !DISubprogram(name: "last_component", scope: !194, file: !194, line: 30, type: !871, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3199)
!3199 = !{!3200, !3201, !3202, !3203}
!3200 = !DILocalVariable(name: "name", arg: 1, scope: !3198, file: !194, line: 30, type: !39)
!3201 = !DILocalVariable(name: "base", scope: !3198, file: !194, line: 32, type: !39)
!3202 = !DILocalVariable(name: "p", scope: !3198, file: !194, line: 33, type: !39)
!3203 = !DILocalVariable(name: "saw_slash", scope: !3198, file: !194, line: 34, type: !28)
!3204 = !DILocation(line: 0, scope: !3198)
!3205 = !DILocation(line: 36, column: 3, scope: !3198)
!3206 = !DILocation(line: 36, column: 10, scope: !3198)
!3207 = !DILocation(line: 37, column: 9, scope: !3198)
!3208 = distinct !{!3208, !3205, !3207, !653}
!3209 = !DILocation(line: 39, column: 18, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !194, line: 39, column: 3)
!3211 = distinct !DILexicalBlock(scope: !3198, file: !194, line: 39, column: 3)
!3212 = !DILocation(line: 32, column: 15, scope: !3198)
!3213 = !DILocation(line: 0, scope: !3211)
!3214 = !DILocation(line: 39, column: 3, scope: !3211)
!3215 = !DILocation(line: 43, column: 16, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !194, line: 43, column: 16)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !194, line: 41, column: 11)
!3218 = distinct !DILexicalBlock(scope: !3210, file: !194, line: 40, column: 5)
!3219 = !DILocation(line: 43, column: 16, scope: !3217)
!3220 = !DILocation(line: 39, column: 23, scope: !3210)
!3221 = !DILocation(line: 39, column: 3, scope: !3210)
!3222 = distinct !{!3222, !3214, !3223, !653}
!3223 = !DILocation(line: 48, column: 5, scope: !3211)
!3224 = !DILocation(line: 50, column: 3, scope: !3198)
!3225 = distinct !DISubprogram(name: "base_len", scope: !194, file: !194, line: 58, type: !3226, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!102, !39}
!3228 = !{!3229, !3230, !3231}
!3229 = !DILocalVariable(name: "name", arg: 1, scope: !3225, file: !194, line: 58, type: !39)
!3230 = !DILocalVariable(name: "len", scope: !3225, file: !194, line: 60, type: !102)
!3231 = !DILocalVariable(name: "prefix_len", scope: !3225, file: !194, line: 61, type: !102)
!3232 = !DILocation(line: 0, scope: !3225)
!3233 = !DILocation(line: 63, column: 14, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3225, file: !194, line: 63, column: 3)
!3235 = !DILocation(line: 63, column: 8, scope: !3234)
!3236 = !DILocation(line: 0, scope: !3234)
!3237 = !DILocation(line: 63, column: 32, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !194, line: 63, column: 3)
!3239 = !DILocation(line: 63, column: 38, scope: !3238)
!3240 = !DILocation(line: 63, column: 41, scope: !3238)
!3241 = !DILocation(line: 63, column: 3, scope: !3234)
!3242 = distinct !{!3242, !3241, !3243, !653}
!3243 = !DILocation(line: 64, column: 5, scope: !3234)
!3244 = !DILocation(line: 74, column: 3, scope: !3225)
!3245 = distinct !DISubprogram(name: "hard_locale", scope: !197, file: !197, line: 27, type: !3246, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!28, !42}
!3248 = !{!3249, !3250}
!3249 = !DILocalVariable(name: "category", arg: 1, scope: !3245, file: !197, line: 27, type: !42)
!3250 = !DILocalVariable(name: "locale", scope: !3245, file: !197, line: 29, type: !3251)
!3251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2056, elements: !3252)
!3252 = !{!3253}
!3253 = !DISubrange(count: 257)
!3254 = !DILocation(line: 0, scope: !3245)
!3255 = !DILocation(line: 29, column: 3, scope: !3245)
!3256 = !DILocation(line: 29, column: 8, scope: !3245)
!3257 = !DILocation(line: 31, column: 7, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3245, file: !197, line: 31, column: 7)
!3259 = !DILocation(line: 31, column: 7, scope: !3245)
!3260 = !DILocation(line: 34, column: 12, scope: !3245)
!3261 = !DILocation(line: 34, column: 38, scope: !3245)
!3262 = !DILocation(line: 34, column: 41, scope: !3245)
!3263 = !DILocation(line: 34, column: 66, scope: !3245)
!3264 = !DILocation(line: 35, column: 1, scope: !3245)
!3265 = distinct !DISubprogram(name: "locale_charset", scope: !199, file: !199, line: 831, type: !3266, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!39}
!3268 = !{!3269}
!3269 = !DILocalVariable(name: "codeset", scope: !3265, file: !199, line: 833, type: !39)
!3270 = !DILocation(line: 847, column: 13, scope: !3265)
!3271 = !DILocation(line: 0, scope: !3265)
!3272 = !DILocation(line: 911, column: 15, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3265, file: !199, line: 911, column: 7)
!3274 = !DILocation(line: 911, column: 7, scope: !3265)
!3275 = !DILocation(line: 1070, column: 13, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !199, line: 1070, column: 13)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !199, line: 1060, column: 7)
!3278 = distinct !DILexicalBlock(scope: !3265, file: !199, line: 1019, column: 3)
!3279 = !DILocation(line: 1070, column: 24, scope: !3276)
!3280 = !DILocation(line: 1070, column: 13, scope: !3277)
!3281 = !DILocation(line: 1158, column: 3, scope: !3265)
!3282 = !DISubprogram(name: "nl_langinfo", scope: !202, file: !202, line: 661, type: !3283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!21, !42}
!3285 = distinct !DISubprogram(name: "setlocale_null_r", scope: !588, file: !588, line: 269, type: !3286, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!42, !42, !21, !102}
!3288 = !{!3289, !3290, !3291}
!3289 = !DILocalVariable(name: "category", arg: 1, scope: !3285, file: !588, line: 269, type: !42)
!3290 = !DILocalVariable(name: "buf", arg: 2, scope: !3285, file: !588, line: 269, type: !21)
!3291 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3285, file: !588, line: 269, type: !102)
!3292 = !DILocation(line: 0, scope: !3285)
!3293 = !DILocalVariable(name: "category", arg: 1, scope: !3294, file: !588, line: 91, type: !42)
!3294 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !588, file: !588, line: 91, type: !3286, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3295)
!3295 = !{!3293, !3296, !3297, !3298, !3299}
!3296 = !DILocalVariable(name: "buf", arg: 2, scope: !3294, file: !588, line: 91, type: !21)
!3297 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3294, file: !588, line: 91, type: !102)
!3298 = !DILocalVariable(name: "result", scope: !3294, file: !588, line: 140, type: !39)
!3299 = !DILocalVariable(name: "length", scope: !3300, file: !588, line: 154, type: !102)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !588, line: 153, column: 5)
!3301 = distinct !DILexicalBlock(scope: !3294, file: !588, line: 142, column: 7)
!3302 = !DILocation(line: 0, scope: !3294, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 274, column: 10, scope: !3285)
!3304 = !DILocalVariable(name: "category", arg: 1, scope: !3305, file: !588, line: 60, type: !42)
!3305 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !588, file: !588, line: 60, type: !3306, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!39, !42}
!3308 = !{!3304, !3309}
!3309 = !DILocalVariable(name: "result", scope: !3305, file: !588, line: 62, type: !39)
!3310 = !DILocation(line: 0, scope: !3305, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 140, column: 24, scope: !3294, inlinedAt: !3303)
!3312 = !DILocation(line: 62, column: 24, scope: !3305, inlinedAt: !3311)
!3313 = !DILocation(line: 142, column: 14, scope: !3301, inlinedAt: !3303)
!3314 = !DILocation(line: 142, column: 7, scope: !3294, inlinedAt: !3303)
!3315 = !DILocation(line: 145, column: 19, scope: !3316, inlinedAt: !3303)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !588, line: 145, column: 11)
!3317 = distinct !DILexicalBlock(scope: !3301, file: !588, line: 143, column: 5)
!3318 = !DILocation(line: 145, column: 11, scope: !3317, inlinedAt: !3303)
!3319 = !DILocation(line: 149, column: 16, scope: !3316, inlinedAt: !3303)
!3320 = !DILocation(line: 149, column: 9, scope: !3316, inlinedAt: !3303)
!3321 = !DILocation(line: 154, column: 23, scope: !3300, inlinedAt: !3303)
!3322 = !DILocation(line: 0, scope: !3300, inlinedAt: !3303)
!3323 = !DILocation(line: 155, column: 18, scope: !3324, inlinedAt: !3303)
!3324 = distinct !DILexicalBlock(scope: !3300, file: !588, line: 155, column: 11)
!3325 = !DILocation(line: 155, column: 11, scope: !3300, inlinedAt: !3303)
!3326 = !DILocation(line: 157, column: 39, scope: !3327, inlinedAt: !3303)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !588, line: 156, column: 9)
!3328 = !DILocalVariable(name: "__dest", arg: 1, scope: !3329, file: !1610, line: 26, type: !3033)
!3329 = distinct !DISubprogram(name: "memcpy", scope: !1610, file: !1610, line: 26, type: !3031, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3330)
!3330 = !{!3328, !3331, !3332}
!3331 = !DILocalVariable(name: "__src", arg: 2, scope: !3329, file: !1610, line: 26, type: !3034)
!3332 = !DILocalVariable(name: "__len", arg: 3, scope: !3329, file: !1610, line: 26, type: !102)
!3333 = !DILocation(line: 0, scope: !3329, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 157, column: 11, scope: !3327, inlinedAt: !3303)
!3335 = !DILocation(line: 29, column: 10, scope: !3329, inlinedAt: !3334)
!3336 = !DILocation(line: 158, column: 11, scope: !3327, inlinedAt: !3303)
!3337 = !DILocation(line: 162, column: 23, scope: !3338, inlinedAt: !3303)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !588, line: 162, column: 15)
!3339 = distinct !DILexicalBlock(scope: !3324, file: !588, line: 161, column: 9)
!3340 = !DILocation(line: 162, column: 15, scope: !3339, inlinedAt: !3303)
!3341 = !DILocation(line: 167, column: 44, scope: !3342, inlinedAt: !3303)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !588, line: 163, column: 13)
!3343 = !DILocation(line: 0, scope: !3329, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 167, column: 15, scope: !3342, inlinedAt: !3303)
!3345 = !DILocation(line: 29, column: 10, scope: !3329, inlinedAt: !3344)
!3346 = !DILocation(line: 168, column: 15, scope: !3342, inlinedAt: !3303)
!3347 = !DILocation(line: 168, column: 32, scope: !3342, inlinedAt: !3303)
!3348 = !DILocation(line: 169, column: 13, scope: !3342, inlinedAt: !3303)
!3349 = !DILocation(line: 0, scope: !3301, inlinedAt: !3303)
!3350 = !DILocation(line: 274, column: 3, scope: !3285)
!3351 = distinct !DISubprogram(name: "setlocale_null", scope: !588, file: !588, line: 301, type: !3306, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !587, retainedNodes: !3352)
!3352 = !{!3353}
!3353 = !DILocalVariable(name: "category", arg: 1, scope: !3351, file: !588, line: 301, type: !42)
!3354 = !DILocation(line: 0, scope: !3351)
!3355 = !DILocation(line: 0, scope: !3305, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 304, column: 10, scope: !3351)
!3357 = !DILocation(line: 62, column: 24, scope: !3305, inlinedAt: !3356)
!3358 = !DILocation(line: 304, column: 3, scope: !3351)
!3359 = distinct !DISubprogram(name: "rpl_fclose", scope: !590, file: !590, line: 58, type: !3360, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3396)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!42, !3362}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1008, line: 7, baseType: !3364)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !683, line: 49, size: 1728, elements: !3365)
!3365 = !{!3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3364, file: !683, line: 51, baseType: !42, size: 32)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3364, file: !683, line: 54, baseType: !21, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3364, file: !683, line: 55, baseType: !21, size: 64, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3364, file: !683, line: 56, baseType: !21, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3364, file: !683, line: 57, baseType: !21, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3364, file: !683, line: 58, baseType: !21, size: 64, offset: 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3364, file: !683, line: 59, baseType: !21, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3364, file: !683, line: 60, baseType: !21, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3364, file: !683, line: 61, baseType: !21, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3364, file: !683, line: 64, baseType: !21, size: 64, offset: 576)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3364, file: !683, line: 65, baseType: !21, size: 64, offset: 640)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3364, file: !683, line: 66, baseType: !21, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3364, file: !683, line: 68, baseType: !698, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3364, file: !683, line: 70, baseType: !3380, size: 64, offset: 832)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3364, file: !683, line: 72, baseType: !42, size: 32, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3364, file: !683, line: 73, baseType: !42, size: 32, offset: 928)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3364, file: !683, line: 74, baseType: !704, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3364, file: !683, line: 77, baseType: !101, size: 16, offset: 1024)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3364, file: !683, line: 78, baseType: !709, size: 8, offset: 1040)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3364, file: !683, line: 79, baseType: !711, size: 8, offset: 1048)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3364, file: !683, line: 81, baseType: !715, size: 64, offset: 1088)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3364, file: !683, line: 89, baseType: !718, size: 64, offset: 1152)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3364, file: !683, line: 91, baseType: !720, size: 64, offset: 1216)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3364, file: !683, line: 92, baseType: !723, size: 64, offset: 1280)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3364, file: !683, line: 93, baseType: !3380, size: 64, offset: 1344)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3364, file: !683, line: 94, baseType: !23, size: 64, offset: 1408)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3364, file: !683, line: 95, baseType: !102, size: 64, offset: 1472)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3364, file: !683, line: 96, baseType: !42, size: 32, offset: 1536)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3364, file: !683, line: 98, baseType: !730, size: 160, offset: 1568)
!3396 = !{!3397, !3398, !3399, !3400}
!3397 = !DILocalVariable(name: "fp", arg: 1, scope: !3359, file: !590, line: 58, type: !3362)
!3398 = !DILocalVariable(name: "saved_errno", scope: !3359, file: !590, line: 60, type: !42)
!3399 = !DILocalVariable(name: "fd", scope: !3359, file: !590, line: 61, type: !42)
!3400 = !DILocalVariable(name: "result", scope: !3359, file: !590, line: 62, type: !42)
!3401 = !DILocation(line: 0, scope: !3359)
!3402 = !DILocation(line: 65, column: 8, scope: !3359)
!3403 = !DILocation(line: 66, column: 10, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3359, file: !590, line: 66, column: 7)
!3405 = !DILocation(line: 66, column: 7, scope: !3359)
!3406 = !DILocation(line: 67, column: 12, scope: !3404)
!3407 = !DILocation(line: 67, column: 5, scope: !3404)
!3408 = !DILocation(line: 72, column: 9, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3359, file: !590, line: 72, column: 7)
!3410 = !DILocation(line: 72, column: 23, scope: !3409)
!3411 = !DILocation(line: 72, column: 33, scope: !3409)
!3412 = !DILocation(line: 72, column: 26, scope: !3409)
!3413 = !DILocation(line: 72, column: 59, scope: !3409)
!3414 = !DILocation(line: 73, column: 7, scope: !3409)
!3415 = !DILocation(line: 73, column: 10, scope: !3409)
!3416 = !DILocation(line: 72, column: 7, scope: !3359)
!3417 = !DILocation(line: 100, column: 12, scope: !3359)
!3418 = !DILocation(line: 105, column: 7, scope: !3359)
!3419 = !DILocation(line: 74, column: 19, scope: !3409)
!3420 = !DILocation(line: 105, column: 19, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3359, file: !590, line: 105, column: 7)
!3422 = !DILocation(line: 107, column: 13, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3421, file: !590, line: 106, column: 5)
!3424 = !DILocation(line: 109, column: 5, scope: !3423)
!3425 = !DILocation(line: 112, column: 1, scope: !3359)
!3426 = !DISubprogram(name: "fileno", scope: !678, file: !678, line: 785, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!42, !3380}
!3429 = !DISubprogram(name: "fclose", scope: !678, file: !678, line: 213, type: !3427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!3430 = !DISubprogram(name: "lseek", scope: !891, file: !891, line: 334, type: !3431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!706, !42, !706, !42}
!3433 = distinct !DISubprogram(name: "rpl_fflush", scope: !592, file: !592, line: 129, type: !3434, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !3470)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!42, !3436}
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1008, line: 7, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !683, line: 49, size: 1728, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3438, file: !683, line: 51, baseType: !42, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3438, file: !683, line: 54, baseType: !21, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3438, file: !683, line: 55, baseType: !21, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3438, file: !683, line: 56, baseType: !21, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3438, file: !683, line: 57, baseType: !21, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3438, file: !683, line: 58, baseType: !21, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3438, file: !683, line: 59, baseType: !21, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3438, file: !683, line: 60, baseType: !21, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3438, file: !683, line: 61, baseType: !21, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3438, file: !683, line: 64, baseType: !21, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3438, file: !683, line: 65, baseType: !21, size: 64, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3438, file: !683, line: 66, baseType: !21, size: 64, offset: 704)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3438, file: !683, line: 68, baseType: !698, size: 64, offset: 768)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3438, file: !683, line: 70, baseType: !3454, size: 64, offset: 832)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3438, file: !683, line: 72, baseType: !42, size: 32, offset: 896)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3438, file: !683, line: 73, baseType: !42, size: 32, offset: 928)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3438, file: !683, line: 74, baseType: !704, size: 64, offset: 960)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3438, file: !683, line: 77, baseType: !101, size: 16, offset: 1024)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3438, file: !683, line: 78, baseType: !709, size: 8, offset: 1040)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3438, file: !683, line: 79, baseType: !711, size: 8, offset: 1048)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3438, file: !683, line: 81, baseType: !715, size: 64, offset: 1088)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3438, file: !683, line: 89, baseType: !718, size: 64, offset: 1152)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3438, file: !683, line: 91, baseType: !720, size: 64, offset: 1216)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3438, file: !683, line: 92, baseType: !723, size: 64, offset: 1280)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3438, file: !683, line: 93, baseType: !3454, size: 64, offset: 1344)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3438, file: !683, line: 94, baseType: !23, size: 64, offset: 1408)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3438, file: !683, line: 95, baseType: !102, size: 64, offset: 1472)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3438, file: !683, line: 96, baseType: !42, size: 32, offset: 1536)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3438, file: !683, line: 98, baseType: !730, size: 160, offset: 1568)
!3470 = !{!3471}
!3471 = !DILocalVariable(name: "stream", arg: 1, scope: !3433, file: !592, line: 129, type: !3436)
!3472 = !DILocation(line: 0, scope: !3433)
!3473 = !DILocation(line: 150, column: 14, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3433, file: !592, line: 150, column: 7)
!3475 = !DILocation(line: 150, column: 22, scope: !3474)
!3476 = !DILocation(line: 150, column: 27, scope: !3474)
!3477 = !DILocation(line: 150, column: 7, scope: !3433)
!3478 = !DILocation(line: 151, column: 12, scope: !3474)
!3479 = !DILocation(line: 151, column: 5, scope: !3474)
!3480 = !DILocalVariable(name: "fp", arg: 1, scope: !3481, file: !592, line: 41, type: !3436)
!3481 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !592, file: !592, line: 41, type: !3482, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !3436}
!3484 = !{!3480}
!3485 = !DILocation(line: 0, scope: !3481, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 156, column: 3, scope: !3433)
!3487 = !DILocation(line: 43, column: 11, scope: !3488, inlinedAt: !3486)
!3488 = distinct !DILexicalBlock(scope: !3481, file: !592, line: 43, column: 7)
!3489 = !DILocation(line: 43, column: 18, scope: !3488, inlinedAt: !3486)
!3490 = !DILocation(line: 43, column: 7, scope: !3481, inlinedAt: !3486)
!3491 = !DILocation(line: 45, column: 5, scope: !3488, inlinedAt: !3486)
!3492 = !DILocation(line: 158, column: 10, scope: !3433)
!3493 = !DILocation(line: 158, column: 3, scope: !3433)
!3494 = !DILocation(line: 235, column: 1, scope: !3433)
!3495 = !DISubprogram(name: "fflush", scope: !678, file: !678, line: 218, type: !3496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!42, !3454}
!3498 = distinct !DISubprogram(name: "rpl_fseeko", scope: !594, file: !594, line: 28, type: !3499, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3536)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!42, !3501, !3535, !42}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1008, line: 7, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !683, line: 49, size: 1728, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3503, file: !683, line: 51, baseType: !42, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3503, file: !683, line: 54, baseType: !21, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3503, file: !683, line: 55, baseType: !21, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3503, file: !683, line: 56, baseType: !21, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3503, file: !683, line: 57, baseType: !21, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3503, file: !683, line: 58, baseType: !21, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3503, file: !683, line: 59, baseType: !21, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3503, file: !683, line: 60, baseType: !21, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3503, file: !683, line: 61, baseType: !21, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3503, file: !683, line: 64, baseType: !21, size: 64, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3503, file: !683, line: 65, baseType: !21, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3503, file: !683, line: 66, baseType: !21, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3503, file: !683, line: 68, baseType: !698, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3503, file: !683, line: 70, baseType: !3519, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3503, file: !683, line: 72, baseType: !42, size: 32, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3503, file: !683, line: 73, baseType: !42, size: 32, offset: 928)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3503, file: !683, line: 74, baseType: !704, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3503, file: !683, line: 77, baseType: !101, size: 16, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3503, file: !683, line: 78, baseType: !709, size: 8, offset: 1040)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3503, file: !683, line: 79, baseType: !711, size: 8, offset: 1048)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3503, file: !683, line: 81, baseType: !715, size: 64, offset: 1088)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3503, file: !683, line: 89, baseType: !718, size: 64, offset: 1152)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3503, file: !683, line: 91, baseType: !720, size: 64, offset: 1216)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3503, file: !683, line: 92, baseType: !723, size: 64, offset: 1280)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3503, file: !683, line: 93, baseType: !3519, size: 64, offset: 1344)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3503, file: !683, line: 94, baseType: !23, size: 64, offset: 1408)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3503, file: !683, line: 95, baseType: !102, size: 64, offset: 1472)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3503, file: !683, line: 96, baseType: !42, size: 32, offset: 1536)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3503, file: !683, line: 98, baseType: !730, size: 160, offset: 1568)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !678, line: 63, baseType: !704)
!3536 = !{!3537, !3538, !3539, !3540}
!3537 = !DILocalVariable(name: "fp", arg: 1, scope: !3498, file: !594, line: 28, type: !3501)
!3538 = !DILocalVariable(name: "offset", arg: 2, scope: !3498, file: !594, line: 28, type: !3535)
!3539 = !DILocalVariable(name: "whence", arg: 3, scope: !3498, file: !594, line: 28, type: !42)
!3540 = !DILocalVariable(name: "pos", scope: !3541, file: !594, line: 117, type: !3535)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !594, line: 113, column: 5)
!3542 = distinct !DILexicalBlock(scope: !3498, file: !594, line: 52, column: 7)
!3543 = !DILocation(line: 0, scope: !3498)
!3544 = !DILocation(line: 52, column: 11, scope: !3542)
!3545 = !{!1088, !613, i64 16}
!3546 = !DILocation(line: 52, column: 31, scope: !3542)
!3547 = !{!1088, !613, i64 8}
!3548 = !DILocation(line: 52, column: 24, scope: !3542)
!3549 = !DILocation(line: 53, column: 7, scope: !3542)
!3550 = !DILocation(line: 53, column: 14, scope: !3542)
!3551 = !DILocation(line: 53, column: 35, scope: !3542)
!3552 = !{!1088, !613, i64 32}
!3553 = !DILocation(line: 53, column: 28, scope: !3542)
!3554 = !DILocation(line: 54, column: 7, scope: !3542)
!3555 = !DILocation(line: 54, column: 14, scope: !3542)
!3556 = !{!1088, !613, i64 72}
!3557 = !DILocation(line: 54, column: 28, scope: !3542)
!3558 = !DILocation(line: 52, column: 7, scope: !3498)
!3559 = !DILocation(line: 117, column: 26, scope: !3541)
!3560 = !DILocation(line: 117, column: 19, scope: !3541)
!3561 = !DILocation(line: 0, scope: !3541)
!3562 = !DILocation(line: 118, column: 15, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3541, file: !594, line: 118, column: 11)
!3564 = !DILocation(line: 118, column: 11, scope: !3541)
!3565 = !DILocation(line: 129, column: 11, scope: !3541)
!3566 = !DILocation(line: 129, column: 18, scope: !3541)
!3567 = !DILocation(line: 130, column: 11, scope: !3541)
!3568 = !DILocation(line: 130, column: 19, scope: !3541)
!3569 = !{!1088, !1089, i64 144}
!3570 = !DILocation(line: 161, column: 7, scope: !3541)
!3571 = !DILocation(line: 163, column: 10, scope: !3498)
!3572 = !DILocation(line: 163, column: 3, scope: !3498)
!3573 = !DILocation(line: 164, column: 1, scope: !3498)
!3574 = !DISubprogram(name: "fseeko", scope: !678, file: !678, line: 712, type: !3575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!42, !3519, !706, !42}
