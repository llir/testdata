; ModuleID = 'coreutils-8.32/src/groups.bc'
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
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Usage: %s [OPTION]... [USERNAME]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [155 x i8] c"Print group memberships for each USERNAME or, if no USERNAME is specified, for\0Athe current process (which may differ if the groups database has changed).\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@longopts = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"James Youngman\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"cannot get real UID\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"cannot get effective GID\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"cannot get real GID\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"%s: no such user\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !26
@.str.34 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.35 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !48
@.str.38 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !53
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !58
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !61
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !67
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !73
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !117
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !123
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !135
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !142
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !149
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !137
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !151
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.80 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.81 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.94 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.95 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.96 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.97 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.99 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.100 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !157
@.str.1.111 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !646 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !650, metadata !DIExpression()), !dbg !651
  %3 = icmp eq i32 %0, 0, !dbg !652
  br i1 %3, label %9, label %4, !dbg !654

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !655, !tbaa !657
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !655
  %7 = load i8*, i8** @program_name, align 8, !dbg !655, !tbaa !657
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !655
  br label %58, !dbg !655

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !661
  %11 = load i8*, i8** @program_name, align 8, !dbg !661, !tbaa !657
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #25, !dbg !661
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !663
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !663, !tbaa !657
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !663
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !664
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !664, !tbaa !657
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !664
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !665
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !657
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !665
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !666, metadata !DIExpression()) #25, !dbg !685
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !687
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #25, !dbg !687
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !672, metadata !DIExpression()) #25, !dbg !688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !688
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !681, metadata !DIExpression()) #25, !dbg !685
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !682, metadata !DIExpression()) #25, !dbg !685
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !689
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !682, metadata !DIExpression()) #25, !dbg !685
  br label %24, !dbg !690

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !682, metadata !DIExpression()) #25, !dbg !685
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #26, !dbg !691
  %28 = icmp eq i32 %27, 0, !dbg !691
  br i1 %28, label %34, label %29, !dbg !690

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !692
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !682, metadata !DIExpression()) #25, !dbg !685
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !693
  %32 = load i8*, i8** %31, align 8, !dbg !693, !tbaa !694
  %33 = icmp eq i8* %32, null, !dbg !696
  br i1 %33, label %34, label %24, !dbg !697, !llvm.loop !698

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !700
  %37 = load i8*, i8** %36, align 8, !dbg !700, !tbaa !702
  %38 = icmp eq i8* %37, null, !dbg !703
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !704
  call void @llvm.dbg.value(metadata i8* %39, metadata !681, metadata !DIExpression()) #25, !dbg !685
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #25, !dbg !705
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #25, !dbg !705
  %42 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !706
  call void @llvm.dbg.value(metadata i8* %42, metadata !684, metadata !DIExpression()) #25, !dbg !685
  %43 = icmp eq i8* %42, null, !dbg !707
  br i1 %43, label %51, label %44, !dbg !709

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #26, !dbg !710
  %46 = icmp eq i32 %45, 0, !dbg !710
  br i1 %46, label %51, label %47, !dbg !711

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #25, !dbg !712
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !712, !tbaa !657
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #25, !dbg !712
  br label %51, !dbg !714

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !715
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #25, !dbg !715
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #25, !dbg !716
  %55 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !716
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !716
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #25, !dbg !716
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #25, !dbg !717
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #27, !dbg !718
  unreachable, !dbg !718
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !719 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !723 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !778 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !782 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !787, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i8** %1, metadata !788, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i8 1, metadata !790, metadata !DIExpression()), !dbg !816
  %3 = load i8*, i8** %1, align 8, !dbg !817, !tbaa !657
  tail call void @set_program_name(i8* %3) #25, !dbg !818
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #25, !dbg !819
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !820
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !821
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !822
  %8 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #25, !dbg !823
  call void @llvm.dbg.value(metadata i32 %8, metadata !789, metadata !DIExpression()), !dbg !816
  switch i32 %8, label %13 [
    i32 -1, label %14
    i32 -130, label %9
    i32 -131, label %10
  ], !dbg !824

9:                                                ; preds = %2
  tail call void @usage(i32 0) #28, !dbg !825
  unreachable, !dbg !825

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !828, !tbaa !657
  %12 = load i8*, i8** @Version, align 8, !dbg !828, !tbaa !657
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null) #25, !dbg !828
  tail call void @exit(i32 0) #27, !dbg !828
  unreachable, !dbg !828

13:                                               ; preds = %2
  tail call void @usage(i32 1) #28, !dbg !829
  unreachable, !dbg !829

14:                                               ; preds = %2
  %15 = load i32, i32* @optind, align 4, !dbg !830, !tbaa !831
  %16 = icmp eq i32 %15, %0, !dbg !833
  br i1 %16, label %19, label %17, !dbg !834

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !790, metadata !DIExpression()), !dbg !816
  %18 = icmp slt i32 %15, %0, !dbg !835
  br i1 %18, label %57, label %103, !dbg !836

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 -1, metadata !796, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i32 -1, metadata !799, metadata !DIExpression()), !dbg !837
  %20 = tail call i32* @__errno_location() #29, !dbg !838
  store i32 0, i32* %20, align 4, !dbg !839, !tbaa !831
  %21 = tail call i32 @getuid() #25, !dbg !840
  call void @llvm.dbg.value(metadata i32 %21, metadata !793, metadata !DIExpression()), !dbg !816
  %22 = icmp eq i32 %21, -1, !dbg !841
  br i1 %22, label %23, label %28, !dbg !843

23:                                               ; preds = %19
  %24 = load i32, i32* %20, align 4, !dbg !844, !tbaa !831
  %25 = icmp eq i32 %24, 0, !dbg !844
  br i1 %25, label %28, label %26, !dbg !845

26:                                               ; preds = %23
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 5) #25, !dbg !846
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %24, i8* %27) #25, !dbg !846
  unreachable, !dbg !846

28:                                               ; preds = %23, %19
  store i32 0, i32* %20, align 4, !dbg !847, !tbaa !831
  %29 = tail call i32 @getegid() #25, !dbg !848
  call void @llvm.dbg.value(metadata i32 %29, metadata !792, metadata !DIExpression()), !dbg !816
  %30 = icmp eq i32 %29, -1, !dbg !849
  br i1 %30, label %31, label %36, !dbg !851

31:                                               ; preds = %28
  %32 = load i32, i32* %20, align 4, !dbg !852, !tbaa !831
  %33 = icmp eq i32 %32, 0, !dbg !852
  br i1 %33, label %36, label %34, !dbg !853

34:                                               ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 5) #25, !dbg !854
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %32, i8* %35) #25, !dbg !854
  unreachable, !dbg !854

36:                                               ; preds = %31, %28
  store i32 0, i32* %20, align 4, !dbg !855, !tbaa !831
  %37 = tail call i32 @getgid() #25, !dbg !856
  call void @llvm.dbg.value(metadata i32 %37, metadata !791, metadata !DIExpression()), !dbg !816
  %38 = icmp eq i32 %37, -1, !dbg !857
  br i1 %38, label %39, label %44, !dbg !859

39:                                               ; preds = %36
  %40 = load i32, i32* %20, align 4, !dbg !860, !tbaa !831
  %41 = icmp eq i32 %40, 0, !dbg !860
  br i1 %41, label %44, label %42, !dbg !861

42:                                               ; preds = %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 5) #25, !dbg !862
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %40, i8* %43) #25, !dbg !862
  unreachable, !dbg !862

44:                                               ; preds = %39, %36
  %45 = tail call zeroext i1 @print_group_list(i8* null, i32 %21, i32 %37, i32 %29, i1 zeroext true, i8 signext 32) #25, !dbg !863
  %46 = zext i1 %45 to i8, !dbg !865
  call void @llvm.dbg.value(metadata i8 %46, metadata !790, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i32 10, metadata !866, metadata !DIExpression()) #25, !dbg !872
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !874, !tbaa !657
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %47, i64 0, i32 5, !dbg !874
  %49 = load i8*, i8** %48, align 8, !dbg !874, !tbaa !875
  %50 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %47, i64 0, i32 6, !dbg !874
  %51 = load i8*, i8** %50, align 8, !dbg !874, !tbaa !879
  %52 = icmp ult i8* %49, %51, !dbg !874
  br i1 %52, label %55, label %53, !dbg !874, !prof !880

53:                                               ; preds = %44
  %54 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %47, i32 10) #25, !dbg !874
  br label %103, !dbg !874

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !874
  store i8* %56, i8** %48, align 8, !dbg !874, !tbaa !875
  store i8 10, i8* %49, align 1, !dbg !874, !tbaa !881
  br label %103, !dbg !874

57:                                               ; preds = %17, %98
  %58 = phi i32 [ %101, %98 ], [ %15, %17 ]
  %59 = phi i8 [ %99, %98 ], [ 1, %17 ]
  call void @llvm.dbg.value(metadata i8 %59, metadata !790, metadata !DIExpression()), !dbg !816
  %60 = sext i32 %58 to i64, !dbg !882
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !882
  %62 = load i8*, i8** %61, align 8, !dbg !882, !tbaa !657
  %63 = tail call %struct.passwd* @getpwnam(i8* %62), !dbg !883
  call void @llvm.dbg.value(metadata %struct.passwd* %63, metadata !800, metadata !DIExpression()), !dbg !884
  %64 = icmp eq %struct.passwd* %63, null, !dbg !885
  br i1 %64, label %65, label %72, !dbg !887

65:                                               ; preds = %57
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #25, !dbg !888
  %67 = load i32, i32* @optind, align 4, !dbg !890, !tbaa !831
  %68 = sext i32 %67 to i64, !dbg !891
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !891
  %70 = load i8*, i8** %69, align 8, !dbg !891, !tbaa !657
  %71 = tail call i8* @quote(i8* %70) #25, !dbg !892
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %66, i8* %71) #25, !dbg !893
  call void @llvm.dbg.value(metadata i8 0, metadata !790, metadata !DIExpression()), !dbg !816
  br label %98, !dbg !894

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i64 0, i32 2, !dbg !895
  %74 = load i32, i32* %73, align 8, !dbg !895, !tbaa !896
  call void @llvm.dbg.value(metadata i32 %74, metadata !793, metadata !DIExpression()), !dbg !816
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i64 0, i32 3, !dbg !898
  %76 = load i32, i32* %75, align 4, !dbg !898, !tbaa !899
  call void @llvm.dbg.value(metadata i32 %76, metadata !792, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i32 %76, metadata !791, metadata !DIExpression()), !dbg !816
  %77 = load i32, i32* @optind, align 4, !dbg !900, !tbaa !831
  %78 = sext i32 %77 to i64, !dbg !900
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78, !dbg !900
  %80 = load i8*, i8** %79, align 8, !dbg !900, !tbaa !657
  %81 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %80) #25, !dbg !900
  %82 = load i32, i32* @optind, align 4, !dbg !901, !tbaa !831
  %83 = sext i32 %82 to i64, !dbg !903
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !903
  %85 = load i8*, i8** %84, align 8, !dbg !903, !tbaa !657
  %86 = tail call zeroext i1 @print_group_list(i8* %85, i32 %74, i32 %76, i32 %76, i1 zeroext true, i8 signext 32) #25, !dbg !904
  %87 = select i1 %86, i8 %59, i8 0, !dbg !905
  call void @llvm.dbg.value(metadata i8 %87, metadata !790, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i32 10, metadata !866, metadata !DIExpression()) #25, !dbg !906
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !908, !tbaa !657
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 5, !dbg !908
  %90 = load i8*, i8** %89, align 8, !dbg !908, !tbaa !875
  %91 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 6, !dbg !908
  %92 = load i8*, i8** %91, align 8, !dbg !908, !tbaa !879
  %93 = icmp ult i8* %90, %92, !dbg !908
  br i1 %93, label %96, label %94, !dbg !908, !prof !880

94:                                               ; preds = %72
  %95 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %88, i32 10) #25, !dbg !908
  br label %98, !dbg !908

96:                                               ; preds = %72
  %97 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !908
  store i8* %97, i8** %89, align 8, !dbg !908, !tbaa !875
  store i8 10, i8* %90, align 1, !dbg !908, !tbaa !881
  br label %98, !dbg !908

98:                                               ; preds = %96, %94, %65
  %99 = phi i8 [ 0, %65 ], [ %87, %94 ], [ %87, %96 ], !dbg !816
  call void @llvm.dbg.value(metadata i8 %99, metadata !790, metadata !DIExpression()), !dbg !816
  %100 = load i32, i32* @optind, align 4, !dbg !909, !tbaa !831
  %101 = add nsw i32 %100, 1, !dbg !909
  store i32 %101, i32* @optind, align 4, !dbg !909, !tbaa !831
  %102 = icmp slt i32 %101, %0, !dbg !835
  br i1 %102, label %57, label %103, !dbg !836, !llvm.loop !910

103:                                              ; preds = %98, %17, %55, %53
  %104 = phi i8 [ %46, %53 ], [ %46, %55 ], [ 1, %17 ], [ %99, %98 ], !dbg !912
  call void @llvm.dbg.value(metadata i8 %104, metadata !790, metadata !DIExpression()), !dbg !816
  %105 = and i8 %104, 1, !dbg !913
  %106 = xor i8 %105, 1, !dbg !913
  %107 = zext i8 %106 to i32, !dbg !913
  ret i32 %107, !dbg !914
}

; Function Attrs: nounwind
declare !dbg !915 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !918 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !921 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !928 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !934 i32 @getuid() local_unnamed_addr #2

declare !dbg !938 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !942 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !943 i32 @getgid() local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !944 noundef %struct.passwd* @getpwnam(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group_list(i8* %0, i32 %1, i32 %2, i32 %3, i1 zeroext %4, i8 signext %5) local_unnamed_addr #8 !dbg !947 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !951, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i32 %1, metadata !952, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i32 %2, metadata !953, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i32 %3, metadata !954, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i1 %4, metadata !955, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !974
  call void @llvm.dbg.value(metadata i8 %5, metadata !956, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i8 1, metadata !957, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !958, metadata !DIExpression()), !dbg !974
  %8 = icmp eq i8* %0, null, !dbg !975
  br i1 %8, label %13, label %9, !dbg !977

9:                                                ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #25, !dbg !978
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !958, metadata !DIExpression()), !dbg !974
  %11 = icmp ne %struct.passwd* %10, null, !dbg !980
  %12 = zext i1 %11 to i8, !dbg !982
  br label %13, !dbg !982

13:                                               ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !974
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !974
  call void @llvm.dbg.value(metadata %struct.passwd* %15, metadata !958, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i8 %14, metadata !957, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i32 %2, metadata !983, metadata !DIExpression()) #25, !dbg !1000
  call void @llvm.dbg.value(metadata i1 %4, metadata !988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1000
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !989, metadata !DIExpression()) #25, !dbg !1000
  call void @llvm.dbg.value(metadata i8 1, metadata !998, metadata !DIExpression()) #25, !dbg !1000
  br i1 %4, label %18, label %16, !dbg !1003

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1004
  br label %29, !dbg !1003

18:                                               ; preds = %13
  %19 = tail call %struct.group* @getgrgid(i32 %2) #25, !dbg !1006
  call void @llvm.dbg.value(metadata %struct.group* %19, metadata !989, metadata !DIExpression()) #25, !dbg !1000
  %20 = icmp eq %struct.group* %19, null, !dbg !1009
  br i1 %20, label %21, label %24, !dbg !1011

21:                                               ; preds = %18
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #25, !dbg !1012
  call void @llvm.dbg.value(metadata i32 %2, metadata !983, metadata !DIExpression()) #25, !dbg !1000
  %23 = zext i32 %2 to i64, !dbg !1014
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %22, i64 %23) #25, !dbg !1015
  call void @llvm.dbg.value(metadata i8 0, metadata !998, metadata !DIExpression()) #25, !dbg !1000
  br label %29, !dbg !1016

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata %struct.group* %19, metadata !989, metadata !DIExpression()) #25, !dbg !1000
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression()) #25, !dbg !1000
  %25 = getelementptr inbounds %struct.group, %struct.group* %19, i64 0, i32 0, !dbg !1017
  %26 = load i8*, i8** %25, align 8, !dbg !1017, !tbaa !1018
  call void @llvm.dbg.value(metadata i8* %31, metadata !999, metadata !DIExpression()) #25, !dbg !1000
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1020, !tbaa !657
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #25, !dbg !1020
  br label %34, !dbg !1021

29:                                               ; preds = %16, %21
  %30 = phi i64 [ %17, %16 ], [ %23, %21 ], !dbg !1004
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression()) #25, !dbg !1000
  call void @llvm.dbg.value(metadata i32* undef, metadata !44, metadata !DIExpression()) #25, !dbg !1022
  %31 = tail call i8* @umaxtostr(i64 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #25, !dbg !1023
  call void @llvm.dbg.value(metadata i8* %31, metadata !999, metadata !DIExpression()) #25, !dbg !1000
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1020, !tbaa !657
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32) #25, !dbg !1020
  br i1 %4, label %35, label %34, !dbg !1021

34:                                               ; preds = %24, %29
  br label %35, !dbg !1021

35:                                               ; preds = %29, %34
  %36 = phi i8 [ %14, %34 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i8 %36, metadata !957, metadata !DIExpression()), !dbg !974
  %37 = icmp eq i32 %3, %2, !dbg !1024
  br i1 %37, label %70, label %38, !dbg !1026

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8 %5, metadata !1027, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1030
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1033, !tbaa !657
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1033
  %41 = load i8*, i8** %40, align 8, !dbg !1033, !tbaa !875
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1033
  %43 = load i8*, i8** %42, align 8, !dbg !1033, !tbaa !879
  %44 = icmp ult i8* %41, %43, !dbg !1033
  br i1 %44, label %48, label %45, !dbg !1033, !prof !880

45:                                               ; preds = %38
  %46 = zext i8 %5 to i32, !dbg !1034
  call void @llvm.dbg.value(metadata i8 %5, metadata !1027, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1030
  %47 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %39, i32 %46) #25, !dbg !1033
  br label %50, !dbg !1033

48:                                               ; preds = %38
  %49 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1033
  store i8* %49, i8** %40, align 8, !dbg !1033, !tbaa !875
  store i8 %5, i8* %41, align 1, !dbg !1033, !tbaa !881
  br label %50, !dbg !1033

50:                                               ; preds = %45, %48
  call void @llvm.dbg.value(metadata i32 %3, metadata !983, metadata !DIExpression()) #25, !dbg !1035
  call void @llvm.dbg.value(metadata i1 %4, metadata !988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1035
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !989, metadata !DIExpression()) #25, !dbg !1035
  call void @llvm.dbg.value(metadata i8 1, metadata !998, metadata !DIExpression()) #25, !dbg !1035
  br i1 %4, label %53, label %51, !dbg !1038

51:                                               ; preds = %50
  %52 = zext i32 %3 to i64, !dbg !1039
  br label %64, !dbg !1038

53:                                               ; preds = %50
  %54 = tail call %struct.group* @getgrgid(i32 %3) #25, !dbg !1041
  call void @llvm.dbg.value(metadata %struct.group* %54, metadata !989, metadata !DIExpression()) #25, !dbg !1035
  %55 = icmp eq %struct.group* %54, null, !dbg !1042
  br i1 %55, label %56, label %59, !dbg !1043

56:                                               ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #25, !dbg !1044
  call void @llvm.dbg.value(metadata i32 %3, metadata !983, metadata !DIExpression()) #25, !dbg !1035
  %58 = zext i32 %3 to i64, !dbg !1045
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %57, i64 %58) #25, !dbg !1046
  call void @llvm.dbg.value(metadata i8 0, metadata !998, metadata !DIExpression()) #25, !dbg !1035
  br label %64, !dbg !1047

59:                                               ; preds = %53
  call void @llvm.dbg.value(metadata %struct.group* %54, metadata !989, metadata !DIExpression()) #25, !dbg !1035
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression()) #25, !dbg !1035
  %60 = getelementptr inbounds %struct.group, %struct.group* %54, i64 0, i32 0, !dbg !1048
  %61 = load i8*, i8** %60, align 8, !dbg !1048, !tbaa !1018
  call void @llvm.dbg.value(metadata i8* %66, metadata !999, metadata !DIExpression()) #25, !dbg !1035
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1049, !tbaa !657
  %63 = tail call i32 @fputs_unlocked(i8* %61, %struct._IO_FILE* %62) #25, !dbg !1049
  br label %69, !dbg !1050

64:                                               ; preds = %51, %56
  %65 = phi i64 [ %52, %51 ], [ %58, %56 ], !dbg !1039
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression()) #25, !dbg !1035
  call void @llvm.dbg.value(metadata i32* undef, metadata !44, metadata !DIExpression()) #25, !dbg !1051
  %66 = tail call i8* @umaxtostr(i64 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #25, !dbg !1052
  call void @llvm.dbg.value(metadata i8* %66, metadata !999, metadata !DIExpression()) #25, !dbg !1035
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1049, !tbaa !657
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #25, !dbg !1049
  br i1 %4, label %70, label %69, !dbg !1050

69:                                               ; preds = %59, %64
  br label %70, !dbg !1050

70:                                               ; preds = %69, %64, %35
  %71 = phi i8 [ %36, %35 ], [ %36, %69 ], [ 0, %64 ], !dbg !974
  call void @llvm.dbg.value(metadata i8 %71, metadata !957, metadata !DIExpression()), !dbg !974
  %72 = bitcast i32** %7 to i8*, !dbg !1053
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #25, !dbg !1053
  %73 = icmp eq %struct.passwd* %15, null, !dbg !1054
  br i1 %73, label %77, label %74, !dbg !1054

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !1055
  %76 = load i32, i32* %75, align 4, !dbg !1055, !tbaa !899
  br label %77, !dbg !1054

77:                                               ; preds = %70, %74
  %78 = phi i32 [ %76, %74 ], [ %3, %70 ], !dbg !1054
  call void @llvm.dbg.value(metadata i32** %7, metadata !969, metadata !DIExpression(DW_OP_deref)), !dbg !1056
  %79 = call i32 @xgetgroups(i8* %0, i32 %78, i32** nonnull %7) #25, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %79, metadata !971, metadata !DIExpression()), !dbg !1056
  %80 = icmp slt i32 %79, 0, !dbg !1058
  br i1 %80, label %86, label %81, !dbg !1060

81:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 0, metadata !972, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %71, metadata !957, metadata !DIExpression()), !dbg !974
  %82 = icmp eq i32 %79, 0, !dbg !1062
  br i1 %82, label %94, label %83, !dbg !1064

83:                                               ; preds = %81
  %84 = zext i8 %5 to i32
  %85 = zext i32 %79 to i64, !dbg !1062
  br label %98, !dbg !1064

86:                                               ; preds = %77
  %87 = tail call i32* @__errno_location() #29, !dbg !1065
  %88 = load i32, i32* %87, align 4, !dbg !1065, !tbaa !831
  br i1 %8, label %92, label %89, !dbg !1068

89:                                               ; preds = %86
  %90 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i32 5) #25, !dbg !1069
  %91 = call i8* @quote(i8* nonnull %0) #25, !dbg !1071
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %90, i8* %91) #25, !dbg !1072
  br label %145, !dbg !1073

92:                                               ; preds = %86
  %93 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.35, i64 0, i64 0), i32 5) #25, !dbg !1074
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* %93) #25, !dbg !1076
  br label %145

94:                                               ; preds = %141, %81
  %95 = phi i8 [ %71, %81 ], [ %142, %141 ], !dbg !1077
  %96 = bitcast i32** %7 to i8**, !dbg !1078
  %97 = load i8*, i8** %96, align 8, !dbg !1078, !tbaa !657
  call void @llvm.dbg.value(metadata i32* undef, metadata !969, metadata !DIExpression()), !dbg !1056
  call void @free(i8* %97) #25, !dbg !1079
  br label %145, !dbg !1080

98:                                               ; preds = %83, %141
  %99 = phi i64 [ 0, %83 ], [ %143, %141 ]
  %100 = phi i8 [ %71, %83 ], [ %142, %141 ]
  call void @llvm.dbg.value(metadata i64 %99, metadata !972, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8 %100, metadata !957, metadata !DIExpression()), !dbg !974
  %101 = load i32*, i32** %7, align 8, !dbg !1081, !tbaa !657
  call void @llvm.dbg.value(metadata i32* %101, metadata !969, metadata !DIExpression()), !dbg !1056
  %102 = getelementptr inbounds i32, i32* %101, i64 %99, !dbg !1081
  %103 = load i32, i32* %102, align 4, !dbg !1081, !tbaa !831
  %104 = icmp eq i32 %103, %2, !dbg !1083
  %105 = icmp eq i32 %103, %3
  %106 = or i1 %104, %105, !dbg !1084
  br i1 %106, label %141, label %107, !dbg !1084

107:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i8 %5, metadata !1027, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1085
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1088, !tbaa !657
  %109 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 5, !dbg !1088
  %110 = load i8*, i8** %109, align 8, !dbg !1088, !tbaa !875
  %111 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %108, i64 0, i32 6, !dbg !1088
  %112 = load i8*, i8** %111, align 8, !dbg !1088, !tbaa !879
  %113 = icmp ult i8* %110, %112, !dbg !1088
  br i1 %113, label %116, label %114, !dbg !1088, !prof !880

114:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8 %5, metadata !1027, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !1085
  %115 = call i32 @__overflow(%struct._IO_FILE* nonnull %108, i32 %84) #25, !dbg !1088
  br label %118, !dbg !1088

116:                                              ; preds = %107
  %117 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !1088
  store i8* %117, i8** %109, align 8, !dbg !1088, !tbaa !875
  store i8 %5, i8* %110, align 1, !dbg !1088, !tbaa !881
  br label %118, !dbg !1088

118:                                              ; preds = %114, %116
  %119 = load i32*, i32** %7, align 8, !dbg !1089, !tbaa !657
  call void @llvm.dbg.value(metadata i32* %119, metadata !969, metadata !DIExpression()), !dbg !1056
  %120 = getelementptr inbounds i32, i32* %119, i64 %99, !dbg !1089
  %121 = load i32, i32* %120, align 4, !dbg !1089, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %121, metadata !983, metadata !DIExpression()) #25, !dbg !1091
  call void @llvm.dbg.value(metadata i1 %4, metadata !988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #25, !dbg !1091
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !989, metadata !DIExpression()) #25, !dbg !1091
  call void @llvm.dbg.value(metadata i8 1, metadata !998, metadata !DIExpression()) #25, !dbg !1091
  br i1 %4, label %124, label %122, !dbg !1093

122:                                              ; preds = %118
  %123 = zext i32 %121 to i64, !dbg !1094
  br label %135, !dbg !1093

124:                                              ; preds = %118
  %125 = call %struct.group* @getgrgid(i32 %121) #25, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.group* %125, metadata !989, metadata !DIExpression()) #25, !dbg !1091
  %126 = icmp eq %struct.group* %125, null, !dbg !1097
  br i1 %126, label %127, label %130, !dbg !1098

127:                                              ; preds = %124
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #25, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %121, metadata !983, metadata !DIExpression()) #25, !dbg !1091
  %129 = zext i32 %121 to i64, !dbg !1100
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128, i64 %129) #25, !dbg !1101
  call void @llvm.dbg.value(metadata i8 0, metadata !998, metadata !DIExpression()) #25, !dbg !1091
  br label %135, !dbg !1102

130:                                              ; preds = %124
  call void @llvm.dbg.value(metadata %struct.group* %125, metadata !989, metadata !DIExpression()) #25, !dbg !1091
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression()) #25, !dbg !1091
  %131 = getelementptr inbounds %struct.group, %struct.group* %125, i64 0, i32 0, !dbg !1103
  %132 = load i8*, i8** %131, align 8, !dbg !1103, !tbaa !1018
  call void @llvm.dbg.value(metadata i8* %137, metadata !999, metadata !DIExpression()) #25, !dbg !1091
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1104, !tbaa !657
  %134 = call i32 @fputs_unlocked(i8* %132, %struct._IO_FILE* %133) #25, !dbg !1104
  br label %140, !dbg !1105

135:                                              ; preds = %122, %127
  %136 = phi i64 [ %123, %122 ], [ %129, %127 ], !dbg !1094
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression()) #25, !dbg !1091
  call void @llvm.dbg.value(metadata i32* undef, metadata !44, metadata !DIExpression()) #25, !dbg !1106
  %137 = call i8* @umaxtostr(i64 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #25, !dbg !1107
  call void @llvm.dbg.value(metadata i8* %137, metadata !999, metadata !DIExpression()) #25, !dbg !1091
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1104, !tbaa !657
  %139 = call i32 @fputs_unlocked(i8* %137, %struct._IO_FILE* %138) #25, !dbg !1104
  br i1 %4, label %141, label %140, !dbg !1105

140:                                              ; preds = %130, %135
  br label %141, !dbg !1105

141:                                              ; preds = %140, %135, %98
  %142 = phi i8 [ %100, %98 ], [ %100, %140 ], [ 0, %135 ], !dbg !974
  call void @llvm.dbg.value(metadata i8 %142, metadata !957, metadata !DIExpression()), !dbg !974
  %143 = add nuw nsw i64 %99, 1, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %143, metadata !972, metadata !DIExpression()), !dbg !1061
  %144 = icmp eq i64 %143, %85, !dbg !1062
  br i1 %144, label %94, label %98, !dbg !1064, !llvm.loop !1109

145:                                              ; preds = %89, %92, %94
  %146 = phi i8 [ %95, %94 ], [ %71, %92 ], [ %71, %89 ], !dbg !1077
  call void @llvm.dbg.value(metadata i8 %146, metadata !957, metadata !DIExpression()), !dbg !974
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #25, !dbg !1080
  %147 = and i8 %146, 1
  %148 = icmp ne i8 %147, 0
  %149 = xor i1 %80, true
  %150 = and i1 %148, %149
  ret i1 %150, !dbg !1111
}

declare !dbg !1112 %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

declare !dbg !1115 %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group(i32 %0, i1 zeroext %1) local_unnamed_addr #8 !dbg !984 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !983, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i1 %1, metadata !988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1118
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !989, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 1, metadata !998, metadata !DIExpression()), !dbg !1118
  br i1 %1, label %5, label %3, !dbg !1119

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1120
  br label %14, !dbg !1119

5:                                                ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #25, !dbg !1122
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !989, metadata !DIExpression()), !dbg !1118
  %7 = icmp eq %struct.group* %6, null, !dbg !1123
  br i1 %7, label %8, label %11, !dbg !1124

8:                                                ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #25, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %0, metadata !983, metadata !DIExpression()), !dbg !1118
  %10 = zext i32 %0 to i64, !dbg !1126
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #25, !dbg !1127
  call void @llvm.dbg.value(metadata i8 0, metadata !998, metadata !DIExpression()), !dbg !1118
  br label %14, !dbg !1128

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !989, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression()), !dbg !1118
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1129
  %13 = load i8*, i8** %12, align 8, !dbg !1129, !tbaa !1018
  br label %18, !dbg !1130

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1120
  %16 = xor i1 %1, true, !dbg !1118
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !989, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32* undef, metadata !44, metadata !DIExpression()) #25, !dbg !1131
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #25, !dbg !1132
  br label %18, !dbg !1130

18:                                               ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1130
  call void @llvm.dbg.value(metadata i8* %20, metadata !999, metadata !DIExpression()), !dbg !1118
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1133, !tbaa !657
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21), !dbg !1133
  ret i1 %19, !dbg !1134
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1137, metadata !DIExpression()), !dbg !1138
  store i8* %0, i8** @file_name, align 8, !dbg !1139, !tbaa !657
  ret void, !dbg !1140
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1141 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1145, metadata !DIExpression()), !dbg !1146
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1147, !tbaa !1148
  ret void, !dbg !1150
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1151 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1156, !tbaa !657
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !1157
  %3 = icmp eq i32 %2, 0, !dbg !1158
  br i1 %3, label %22, label %4, !dbg !1159

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1160, !tbaa !1148, !range !1161
  %6 = icmp eq i8 %5, 0, !dbg !1160
  br i1 %6, label %11, label %7, !dbg !1162

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #29, !dbg !1163
  %9 = load i32, i32* %8, align 4, !dbg !1163, !tbaa !831
  %10 = icmp eq i32 %9, 32, !dbg !1164
  br i1 %10, label %22, label %11, !dbg !1165

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #25, !dbg !1166
  call void @llvm.dbg.value(metadata i8* %12, metadata !1153, metadata !DIExpression()), !dbg !1167
  %13 = load i8*, i8** @file_name, align 8, !dbg !1168, !tbaa !657
  %14 = icmp eq i8* %13, null, !dbg !1168
  %15 = tail call i32* @__errno_location() #29, !dbg !1170
  %16 = load i32, i32* %15, align 4, !dbg !1170, !tbaa !831
  br i1 %14, label %19, label %17, !dbg !1171

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !1172
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !1173
  br label %20, !dbg !1173

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #25, !dbg !1174
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1175, !tbaa !831
  tail call void @_exit(i32 %21) #27, !dbg !1176
  unreachable, !dbg !1176

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1177, !tbaa !657
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !1179
  %25 = icmp eq i32 %24, 0, !dbg !1180
  br i1 %25, label %28, label %26, !dbg !1181

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1182, !tbaa !831
  tail call void @_exit(i32 %27) #27, !dbg !1183
  unreachable, !dbg !1183

28:                                               ; preds = %22
  ret void, !dbg !1184
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #13 !dbg !1185 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1190, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8* %1, metadata !1191, metadata !DIExpression()), !dbg !1193
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %3, metadata !1192, metadata !DIExpression()), !dbg !1193
  store i8 0, i8* %3, align 1, !dbg !1195, !tbaa !881
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1193
  call void @llvm.dbg.value(metadata i8* %6, metadata !1192, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %5, metadata !1190, metadata !DIExpression()), !dbg !1193
  %7 = urem i64 %5, 10, !dbg !1196
  %8 = trunc i64 %7 to i8, !dbg !1199
  %9 = or i8 %8, 48, !dbg !1199
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %10, metadata !1192, metadata !DIExpression()), !dbg !1193
  store i8 %9, i8* %10, align 1, !dbg !1201, !tbaa !881
  %11 = udiv i64 %5, 10, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %11, metadata !1190, metadata !DIExpression()), !dbg !1193
  %12 = icmp ult i64 %5, 10, !dbg !1203
  br i1 %12, label %13, label %4, !dbg !1204, !llvm.loop !1205

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1192, metadata !DIExpression()), !dbg !1193
  ret i8* %10, !dbg !1208
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1209 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1211, metadata !DIExpression()), !dbg !1214
  %2 = icmp eq i8* %0, null, !dbg !1215
  br i1 %2, label %3, label %6, !dbg !1217

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1218, !tbaa !657
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #30, !dbg !1220
  tail call void @abort() #27, !dbg !1221
  unreachable, !dbg !1221

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !1222
  call void @llvm.dbg.value(metadata i8* %7, metadata !1212, metadata !DIExpression()), !dbg !1214
  %8 = icmp eq i8* %7, null, !dbg !1223
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1224
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1224
  call void @llvm.dbg.value(metadata i8* %10, metadata !1213, metadata !DIExpression()), !dbg !1214
  %11 = ptrtoint i8* %10 to i64, !dbg !1225
  %12 = ptrtoint i8* %0 to i64, !dbg !1225
  %13 = sub i64 %11, %12, !dbg !1225
  %14 = icmp sgt i64 %13, 6, !dbg !1227
  br i1 %14, label %15, label %24, !dbg !1228

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1229
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #26, !dbg !1230
  %18 = icmp eq i32 %17, 0, !dbg !1231
  br i1 %18, label %19, label %24, !dbg !1232

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1211, metadata !DIExpression()), !dbg !1214
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #26, !dbg !1233
  %21 = icmp eq i32 %20, 0, !dbg !1236
  br i1 %21, label %22, label %24, !dbg !1237

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %23, metadata !1211, metadata !DIExpression()), !dbg !1214
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1240, !tbaa !657
  br label %24, !dbg !1241

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1211, metadata !DIExpression()), !dbg !1214
  store i8* %25, i8** @program_name, align 8, !dbg !1242, !tbaa !657
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1243, !tbaa !657
  ret void, !dbg !1244
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1245 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1250, metadata !DIExpression()), !dbg !1253
  %2 = tail call i32* @__errno_location() #29, !dbg !1254
  %3 = load i32, i32* %2, align 4, !dbg !1254, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %3, metadata !1251, metadata !DIExpression()), !dbg !1253
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1255
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1255
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1255
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !1256
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1252, metadata !DIExpression()), !dbg !1253
  store i32 %3, i32* %2, align 4, !dbg !1257, !tbaa !831
  ret %struct.quoting_options* %8, !dbg !1258
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1259 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1265, metadata !DIExpression()), !dbg !1266
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1267
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1267
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1268
  %5 = load i32, i32* %4, align 8, !dbg !1268, !tbaa !1269
  ret i32 %5, !dbg !1271
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1272 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1276, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 %1, metadata !1277, metadata !DIExpression()), !dbg !1278
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1279
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1279
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1280
  store i32 %1, i32* %5, align 8, !dbg !1281, !tbaa !1269
  ret void, !dbg !1282
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1283 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1287, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %1, metadata !1288, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %2, metadata !1289, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %1, metadata !1290, metadata !DIExpression()), !dbg !1295
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1296
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1296
  %6 = lshr i8 %1, 5, !dbg !1297
  %7 = zext i8 %6 to i64, !dbg !1297
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1298
  call void @llvm.dbg.value(metadata i32* %8, metadata !1291, metadata !DIExpression()), !dbg !1295
  %9 = and i8 %1, 31, !dbg !1299
  %10 = zext i8 %9 to i32, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %10, metadata !1293, metadata !DIExpression()), !dbg !1295
  %11 = load i32, i32* %8, align 4, !dbg !1300, !tbaa !831
  %12 = lshr i32 %11, %10, !dbg !1301
  %13 = and i32 %12, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %13, metadata !1294, metadata !DIExpression()), !dbg !1295
  %14 = and i32 %2, 1, !dbg !1303
  %15 = xor i32 %13, %14, !dbg !1304
  %16 = shl i32 %15, %10, !dbg !1305
  %17 = xor i32 %16, %11, !dbg !1306
  store i32 %17, i32* %8, align 4, !dbg !1306, !tbaa !831
  ret i32 %13, !dbg !1307
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1308 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1312, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 %1, metadata !1313, metadata !DIExpression()), !dbg !1315
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1316
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1318
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1312, metadata !DIExpression()), !dbg !1315
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1319
  %6 = load i32, i32* %5, align 4, !dbg !1319, !tbaa !1320
  call void @llvm.dbg.value(metadata i32 %6, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i32 %1, i32* %5, align 4, !dbg !1321, !tbaa !1320
  ret i32 %6, !dbg !1322
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1323 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1327, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %1, metadata !1328, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()), !dbg !1330
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1331
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()), !dbg !1330
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1334
  store i32 10, i32* %6, align 8, !dbg !1335, !tbaa !1269
  %7 = icmp ne i8* %1, null, !dbg !1336
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1338
  br i1 %9, label %11, label %10, !dbg !1338

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1339
  unreachable, !dbg !1339

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1340
  store i8* %1, i8** %12, align 8, !dbg !1341, !tbaa !1342
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1343
  store i8* %2, i8** %13, align 8, !dbg !1344, !tbaa !1345
  ret void, !dbg !1346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1351, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %1, metadata !1352, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %2, metadata !1353, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %3, metadata !1354, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1355, metadata !DIExpression()), !dbg !1359
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1360
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1360
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1356, metadata !DIExpression()), !dbg !1359
  %8 = tail call i32* @__errno_location() #29, !dbg !1361
  %9 = load i32, i32* %8, align 4, !dbg !1361, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %9, metadata !1357, metadata !DIExpression()), !dbg !1359
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1362
  %11 = load i32, i32* %10, align 8, !dbg !1362, !tbaa !1269
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1363
  %13 = load i32, i32* %12, align 4, !dbg !1363, !tbaa !1320
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1364
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1365
  %16 = load i8*, i8** %15, align 8, !dbg !1365, !tbaa !1342
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1366
  %18 = load i8*, i8** %17, align 8, !dbg !1366, !tbaa !1345
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %19, metadata !1358, metadata !DIExpression()), !dbg !1359
  store i32 %9, i32* %8, align 4, !dbg !1368, !tbaa !831
  ret i64 %19, !dbg !1369
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1370 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1376, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %1, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %2, metadata !1378, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %3, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %4, metadata !1380, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %5, metadata !1381, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32* %6, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %7, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %8, metadata !1384, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, metadata !1387, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* null, metadata !1388, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, metadata !1389, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 0, metadata !1390, metadata !DIExpression()), !dbg !1446
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1447
  %14 = icmp eq i64 %13, 1, !dbg !1448
  call void @llvm.dbg.value(metadata i1 %14, metadata !1391, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1446
  %15 = lshr i32 %5, 1, !dbg !1449
  %16 = trunc i32 %15 to i8, !dbg !1449
  %17 = and i8 %16, 1, !dbg !1449
  call void @llvm.dbg.value(metadata i8 %17, metadata !1392, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 0, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 1, metadata !1395, metadata !DIExpression()), !dbg !1446
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1450

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1451
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1452
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1453
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1454
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1446
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1455
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1456
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1457
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %38, metadata !1395, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %37, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %36, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %35, metadata !1392, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %34, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %33, metadata !1390, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %32, metadata !1389, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %31, metadata !1388, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %30, metadata !1387, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %29, metadata !1384, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %28, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %27, metadata !1380, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.label(metadata !1440), !dbg !1458
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
  ], !dbg !1459

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1392, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 5, metadata !1380, metadata !DIExpression()), !dbg !1446
  br label %92, !dbg !1460

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1392, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 5, metadata !1380, metadata !DIExpression()), !dbg !1446
  %42 = and i8 %35, 1, !dbg !1462
  %43 = icmp eq i8 %42, 0, !dbg !1462
  br i1 %43, label %44, label %92, !dbg !1460

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1464
  br i1 %45, label %92, label %46, !dbg !1467

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1464, !tbaa !881
  br label %92, !dbg !1464

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %27), !dbg !1468
  call void @llvm.dbg.value(metadata i8* %48, metadata !1383, metadata !DIExpression()), !dbg !1446
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %27), !dbg !1472
  call void @llvm.dbg.value(metadata i8* %49, metadata !1384, metadata !DIExpression()), !dbg !1446
  br label %50, !dbg !1473

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1384, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %51, metadata !1383, metadata !DIExpression()), !dbg !1446
  %53 = and i8 %35, 1, !dbg !1474
  %54 = icmp eq i8 %53, 0, !dbg !1474
  br i1 %54, label %55, label %70, !dbg !1476

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1388, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, metadata !1386, metadata !DIExpression()), !dbg !1446
  %56 = load i8, i8* %51, align 1, !dbg !1477, !tbaa !881
  %57 = icmp eq i8 %56, 0, !dbg !1480
  br i1 %57, label %70, label %58, !dbg !1480

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1388, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %61, metadata !1386, metadata !DIExpression()), !dbg !1446
  %62 = icmp ult i64 %61, %39, !dbg !1481
  br i1 %62, label %63, label %65, !dbg !1484

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1481
  store i8 %59, i8* %64, align 1, !dbg !1481, !tbaa !881
  br label %65, !dbg !1481

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %66, metadata !1386, metadata !DIExpression()), !dbg !1446
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1485
  call void @llvm.dbg.value(metadata i8* %67, metadata !1388, metadata !DIExpression()), !dbg !1446
  %68 = load i8, i8* %67, align 1, !dbg !1477, !tbaa !881
  %69 = icmp eq i8 %68, 0, !dbg !1480
  br i1 %69, label %70, label %58, !dbg !1480, !llvm.loop !1486

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1488
  call void @llvm.dbg.value(metadata i64 %71, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %52, metadata !1388, metadata !DIExpression()), !dbg !1446
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %72, metadata !1389, metadata !DIExpression()), !dbg !1446
  br label %92, !dbg !1490

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()), !dbg !1446
  br label %74, !dbg !1491

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %75, metadata !1390, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 1, metadata !1392, metadata !DIExpression()), !dbg !1446
  br label %76, !dbg !1492

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1454
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %78, metadata !1392, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %77, metadata !1390, metadata !DIExpression()), !dbg !1446
  %79 = and i8 %78, 1, !dbg !1493
  %80 = icmp eq i8 %79, 0, !dbg !1493
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1495
  br label %82, !dbg !1495

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1446
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1449
  call void @llvm.dbg.value(metadata i8 %84, metadata !1392, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %83, metadata !1390, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 2, metadata !1380, metadata !DIExpression()), !dbg !1446
  %85 = and i8 %84, 1, !dbg !1496
  %86 = icmp eq i8 %85, 0, !dbg !1496
  br i1 %86, label %87, label %92, !dbg !1498

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1499
  br i1 %88, label %92, label %89, !dbg !1502

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1499, !tbaa !881
  br label %92, !dbg !1499

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1392, metadata !DIExpression()), !dbg !1446
  br label %92, !dbg !1503

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1504
  unreachable, !dbg !1504

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1488
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %40 ], !dbg !1446
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1446
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1446
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %100, metadata !1392, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %99, metadata !1390, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %98, metadata !1389, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %97, metadata !1388, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %96, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %95, metadata !1384, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8* %94, metadata !1383, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i32 %93, metadata !1380, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 0, metadata !1385, metadata !DIExpression()), !dbg !1446
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
  br label %121, !dbg !1505

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1506
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1488
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1451
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1455
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1456
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1457
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, metadata !1395, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %127, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %126, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %125, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %124, metadata !1387, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %123, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %122, metadata !1385, metadata !DIExpression()), !dbg !1446
  %130 = icmp eq i64 %125, -1, !dbg !1507
  br i1 %130, label %131, label %135, !dbg !1508

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1509
  %133 = load i8, i8* %132, align 1, !dbg !1509, !tbaa !881
  %134 = icmp eq i8 %133, 0, !dbg !1510
  br i1 %134, label %587, label %137, !dbg !1511

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1512
  br i1 %136, label %587, label %137, !dbg !1511

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 0, metadata !1402, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 0, metadata !1403, metadata !DIExpression()), !dbg !1513
  br i1 %106, label %138, label %153, !dbg !1514

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1516
  %140 = and i1 %107, %130, !dbg !1517
  br i1 %140, label %141, label %143, !dbg !1517

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %142, metadata !1379, metadata !DIExpression()), !dbg !1446
  br label %143, !dbg !1519

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1519
  call void @llvm.dbg.value(metadata i64 %144, metadata !1379, metadata !DIExpression()), !dbg !1446
  %145 = icmp ugt i64 %139, %144, !dbg !1520
  br i1 %145, label %153, label %146, !dbg !1521

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1522
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1523
  %149 = icmp ne i32 %148, 0, !dbg !1524
  %150 = or i1 %149, %109, !dbg !1525
  %151 = xor i1 %149, true, !dbg !1525
  %152 = zext i1 %151 to i8, !dbg !1525
  br i1 %150, label %153, label %646, !dbg !1525

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1513
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1513
  call void @llvm.dbg.value(metadata i8 %156, metadata !1401, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i64 %154, metadata !1379, metadata !DIExpression()), !dbg !1446
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1526
  %158 = load i8, i8* %157, align 1, !dbg !1526, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %158, metadata !1396, metadata !DIExpression()), !dbg !1513
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
  ], !dbg !1527

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1528

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1529

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1402, metadata !DIExpression()), !dbg !1513
  %162 = and i8 %126, 1, !dbg !1533
  %163 = icmp eq i8 %162, 0, !dbg !1533
  %164 = and i1 %110, %163, !dbg !1533
  br i1 %164, label %165, label %181, !dbg !1533

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1535
  br i1 %166, label %167, label %169, !dbg !1539

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1535
  store i8 39, i8* %168, align 1, !dbg !1535, !tbaa !881
  br label %169, !dbg !1535

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %170, metadata !1386, metadata !DIExpression()), !dbg !1446
  %171 = icmp ult i64 %170, %129, !dbg !1540
  br i1 %171, label %172, label %174, !dbg !1543

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1540
  store i8 36, i8* %173, align 1, !dbg !1540, !tbaa !881
  br label %174, !dbg !1540

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %175, metadata !1386, metadata !DIExpression()), !dbg !1446
  %176 = icmp ult i64 %175, %129, !dbg !1544
  br i1 %176, label %177, label %179, !dbg !1547

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1544
  store i8 39, i8* %178, align 1, !dbg !1544, !tbaa !881
  br label %179, !dbg !1544

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %180, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 1, metadata !1393, metadata !DIExpression()), !dbg !1446
  br label %181, !dbg !1548

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1446
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %183, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %182, metadata !1386, metadata !DIExpression()), !dbg !1446
  %184 = icmp ult i64 %182, %129, !dbg !1549
  br i1 %184, label %185, label %187, !dbg !1552

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1549
  store i8 92, i8* %186, align 1, !dbg !1549, !tbaa !881
  br label %187, !dbg !1549

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %188, metadata !1386, metadata !DIExpression()), !dbg !1446
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1553
  br i1 %191, label %192, label %473, !dbg !1553

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1555
  %194 = load i8, i8* %193, align 1, !dbg !1555, !tbaa !881
  %195 = add i8 %194, -48, !dbg !1556
  %196 = icmp ult i8 %195, 10, !dbg !1556
  br i1 %196, label %197, label %473, !dbg !1556

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1557
  br i1 %198, label %199, label %201, !dbg !1561

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1557
  store i8 48, i8* %200, align 1, !dbg !1557, !tbaa !881
  br label %201, !dbg !1557

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %202, metadata !1386, metadata !DIExpression()), !dbg !1446
  %203 = icmp ult i64 %202, %129, !dbg !1562
  br i1 %203, label %204, label %206, !dbg !1565

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1562
  store i8 48, i8* %205, align 1, !dbg !1562, !tbaa !881
  br label %206, !dbg !1562

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %207, metadata !1386, metadata !DIExpression()), !dbg !1446
  br label %473, !dbg !1566

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1567

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1568

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1569

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1571
  br i1 %214, label %215, label %473, !dbg !1571

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1573
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1574
  %218 = load i8, i8* %217, align 1, !dbg !1574, !tbaa !881
  %219 = icmp eq i8 %218, 63, !dbg !1575
  br i1 %219, label %220, label %473, !dbg !1576

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1577
  %222 = load i8, i8* %221, align 1, !dbg !1577, !tbaa !881
  %223 = sext i8 %222 to i32, !dbg !1577
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
  ], !dbg !1578

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1579

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i64 undef, metadata !1385, metadata !DIExpression()), !dbg !1446
  %226 = icmp ult i64 %123, %129, !dbg !1581
  br i1 %226, label %227, label %229, !dbg !1584

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1581
  store i8 63, i8* %228, align 1, !dbg !1581, !tbaa !881
  br label %229, !dbg !1581

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %230, metadata !1386, metadata !DIExpression()), !dbg !1446
  %231 = icmp ult i64 %230, %129, !dbg !1585
  br i1 %231, label %232, label %234, !dbg !1588

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1585
  store i8 34, i8* %233, align 1, !dbg !1585, !tbaa !881
  br label %234, !dbg !1585

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %235, metadata !1386, metadata !DIExpression()), !dbg !1446
  %236 = icmp ult i64 %235, %129, !dbg !1589
  br i1 %236, label %237, label %239, !dbg !1592

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1589
  store i8 34, i8* %238, align 1, !dbg !1589, !tbaa !881
  br label %239, !dbg !1589

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %240, metadata !1386, metadata !DIExpression()), !dbg !1446
  %241 = icmp ult i64 %240, %129, !dbg !1593
  br i1 %241, label %242, label %244, !dbg !1596

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1593
  store i8 63, i8* %243, align 1, !dbg !1593, !tbaa !881
  br label %244, !dbg !1593

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1596
  call void @llvm.dbg.value(metadata i64 %245, metadata !1386, metadata !DIExpression()), !dbg !1446
  br label %473, !dbg !1597

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1400, metadata !DIExpression()), !dbg !1513
  br label %256, !dbg !1598

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1400, metadata !DIExpression()), !dbg !1513
  br label %256, !dbg !1599

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1400, metadata !DIExpression()), !dbg !1513
  br label %254, !dbg !1600

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1400, metadata !DIExpression()), !dbg !1513
  br label %254, !dbg !1601

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1400, metadata !DIExpression()), !dbg !1513
  br label %256, !dbg !1602

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1400, metadata !DIExpression()), !dbg !1513
  br i1 %110, label %252, label %253, !dbg !1603

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1604

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1607

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1609
  call void @llvm.dbg.value(metadata i8 %255, metadata !1400, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.label(metadata !1441), !dbg !1610
  br i1 %111, label %256, label %631, !dbg !1611

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1609
  call void @llvm.dbg.value(metadata i8 %257, metadata !1400, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.label(metadata !1442), !dbg !1613
  br i1 %102, label %495, label %473, !dbg !1614

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1615

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1616, !tbaa !881
  %261 = icmp eq i8 %260, 0, !dbg !1618
  br i1 %261, label %262, label %473, !dbg !1619

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1620
  br i1 %263, label %264, label %473, !dbg !1622

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1403, metadata !DIExpression()), !dbg !1513
  br label %265, !dbg !1623

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1513
  call void @llvm.dbg.value(metadata i8 %266, metadata !1403, metadata !DIExpression()), !dbg !1513
  br i1 %111, label %473, label %631, !dbg !1624

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 1, metadata !1403, metadata !DIExpression()), !dbg !1513
  br i1 %110, label %268, label %473, !dbg !1626

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1627

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1630
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1632
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1632
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %274, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %273, metadata !1387, metadata !DIExpression()), !dbg !1446
  %275 = icmp ult i64 %123, %274, !dbg !1633
  br i1 %275, label %276, label %278, !dbg !1636

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1633
  store i8 39, i8* %277, align 1, !dbg !1633, !tbaa !881
  br label %278, !dbg !1633

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %279, metadata !1386, metadata !DIExpression()), !dbg !1446
  %280 = icmp ult i64 %279, %274, !dbg !1637
  br i1 %280, label %281, label %283, !dbg !1640

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1637
  store i8 92, i8* %282, align 1, !dbg !1637, !tbaa !881
  br label %283, !dbg !1637

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %284, metadata !1386, metadata !DIExpression()), !dbg !1446
  %285 = icmp ult i64 %284, %274, !dbg !1641
  br i1 %285, label %286, label %288, !dbg !1644

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1641
  store i8 39, i8* %287, align 1, !dbg !1641, !tbaa !881
  br label %288, !dbg !1641

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %289, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1446
  br label %473, !dbg !1645

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1646

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1404, metadata !DIExpression()), !dbg !1647
  %292 = tail call i16** @__ctype_b_loc() #29, !dbg !1648
  %293 = load i16*, i16** %292, align 8, !dbg !1648, !tbaa !657
  %294 = zext i8 %158 to i64, !dbg !1648
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1648
  %296 = load i16, i16* %295, align 2, !dbg !1648, !tbaa !1650
  %297 = lshr i16 %296, 14, !dbg !1651
  %298 = trunc i16 %297 to i8, !dbg !1651
  %299 = and i8 %298, 1, !dbg !1651
  call void @llvm.dbg.value(metadata i8 %354, metadata !1407, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %355, metadata !1404, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %306, metadata !1379, metadata !DIExpression()), !dbg !1446
  %300 = icmp eq i8 %299, 0, !dbg !1652
  call void @llvm.dbg.value(metadata i1 %357, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1513
  br label %359, !dbg !1653

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1654
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1408, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* %23, metadata !1656, metadata !DIExpression()) #25, !dbg !1664
  call void @llvm.dbg.value(metadata i32 0, metadata !1662, metadata !DIExpression()) #25, !dbg !1664
  call void @llvm.dbg.value(metadata i64 8, metadata !1663, metadata !DIExpression()) #25, !dbg !1664
  store i64 0, i64* %10, align 8, !dbg !1666
  call void @llvm.dbg.value(metadata i64 0, metadata !1404, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1407, metadata !DIExpression()), !dbg !1647
  %302 = icmp eq i64 %154, -1, !dbg !1667
  br i1 %302, label %303, label %305, !dbg !1669

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %304, metadata !1379, metadata !DIExpression()), !dbg !1446
  br label %305, !dbg !1671

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1513
  call void @llvm.dbg.value(metadata i64 %306, metadata !1379, metadata !DIExpression()), !dbg !1446
  br label %307, !dbg !1672

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1673
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1674
  call void @llvm.dbg.value(metadata i8 %309, metadata !1407, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %308, metadata !1404, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1675
  %310 = add i64 %308, %122, !dbg !1676
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1677
  %312 = sub i64 %306, %310, !dbg !1678
  call void @llvm.dbg.value(metadata i32* %12, metadata !1426, metadata !DIExpression(DW_OP_deref)), !dbg !1679
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %313, metadata !1429, metadata !DIExpression()), !dbg !1679
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1681

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1404, metadata !DIExpression()), !dbg !1647
  %315 = icmp ugt i64 %306, %310, !dbg !1682
  br i1 %315, label %316, label %341, !dbg !1684

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1685
  br label %318, !dbg !1685

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1404, metadata !DIExpression()), !dbg !1647
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1686
  %322 = load i8, i8* %321, align 1, !dbg !1686, !tbaa !881
  %323 = icmp eq i8 %322, 0, !dbg !1684
  br i1 %323, label %341, label %324, !dbg !1685

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %325, metadata !1404, metadata !DIExpression()), !dbg !1647
  %326 = add i64 %325, %122, !dbg !1688
  %327 = icmp ult i64 %326, %306, !dbg !1682
  br i1 %327, label %318, label %341, !dbg !1684, !llvm.loop !1689

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1690
  call void @llvm.dbg.value(metadata i64 1, metadata !1430, metadata !DIExpression()), !dbg !1691
  br i1 %330, label %331, label %344, !dbg !1690

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1430, metadata !DIExpression()), !dbg !1691
  %333 = add i64 %332, %310, !dbg !1692
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1695
  %335 = load i8, i8* %334, align 1, !dbg !1695, !tbaa !881
  %336 = sext i8 %335 to i32, !dbg !1695
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1696

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %338, metadata !1430, metadata !DIExpression()), !dbg !1691
  %339 = icmp eq i64 %338, %313, !dbg !1698
  br i1 %339, label %344, label %331, !dbg !1699, !llvm.loop !1700

340:                                              ; preds = %307
  br label %341, !dbg !1702

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1407, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 undef, metadata !1404, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1702
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1703, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %345, metadata !1426, metadata !DIExpression()), !dbg !1679
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !1705
  %347 = icmp eq i32 %346, 0, !dbg !1705
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1706
  call void @llvm.dbg.value(metadata i8 %348, metadata !1407, metadata !DIExpression()), !dbg !1647
  %349 = add i64 %313, %308, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %349, metadata !1404, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1702
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1708
  %351 = icmp eq i32 %350, 0, !dbg !1709
  br i1 %351, label %307, label %353, !dbg !1710, !llvm.loop !1711

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1407, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 undef, metadata !1404, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1702
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1713
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1713
  call void @llvm.dbg.value(metadata i8 %354, metadata !1407, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %355, metadata !1404, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %306, metadata !1379, metadata !DIExpression()), !dbg !1446
  %356 = and i8 %354, 1, !dbg !1652
  %357 = icmp eq i8 %356, 0, !dbg !1652
  call void @llvm.dbg.value(metadata i1 %357, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1513
  %358 = icmp ugt i64 %355, 1, !dbg !1714
  br i1 %358, label %367, label %359, !dbg !1653

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1715
  br i1 %364, label %367, label %365, !dbg !1715

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i8 %472, metadata !1403, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %441, metadata !1402, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %440, metadata !1401, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %439, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %438, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %371, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %437, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %375, metadata !1385, metadata !DIExpression()), !dbg !1446
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %372, metadata !1437, metadata !DIExpression()), !dbg !1717
  %373 = and i1 %102, %368
  br label %374, !dbg !1718

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1506
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1446
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1455
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1513
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1513
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1719
  call void @llvm.dbg.value(metadata i8 %380, metadata !1402, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %379, metadata !1401, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %378, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %377, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %376, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %375, metadata !1385, metadata !DIExpression()), !dbg !1446
  br i1 %373, label %381, label %427, !dbg !1720

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1725

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1402, metadata !DIExpression()), !dbg !1513
  %383 = and i8 %377, 1, !dbg !1728
  %384 = icmp eq i8 %383, 0, !dbg !1728
  %385 = and i1 %110, %384, !dbg !1728
  br i1 %385, label %386, label %402, !dbg !1728

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1730
  br i1 %387, label %388, label %390, !dbg !1734

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1730
  store i8 39, i8* %389, align 1, !dbg !1730, !tbaa !881
  br label %390, !dbg !1730

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %391, metadata !1386, metadata !DIExpression()), !dbg !1446
  %392 = icmp ult i64 %391, %129, !dbg !1735
  br i1 %392, label %393, label %395, !dbg !1738

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1735
  store i8 36, i8* %394, align 1, !dbg !1735, !tbaa !881
  br label %395, !dbg !1735

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %396, metadata !1386, metadata !DIExpression()), !dbg !1446
  %397 = icmp ult i64 %396, %129, !dbg !1739
  br i1 %397, label %398, label %400, !dbg !1742

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1739
  store i8 39, i8* %399, align 1, !dbg !1739, !tbaa !881
  br label %400, !dbg !1739

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %401, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 1, metadata !1393, metadata !DIExpression()), !dbg !1446
  br label %402, !dbg !1743

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1446
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %404, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %403, metadata !1386, metadata !DIExpression()), !dbg !1446
  %405 = icmp ult i64 %403, %129, !dbg !1744
  br i1 %405, label %406, label %408, !dbg !1747

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1744
  store i8 92, i8* %407, align 1, !dbg !1744, !tbaa !881
  br label %408, !dbg !1744

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %409, metadata !1386, metadata !DIExpression()), !dbg !1446
  %410 = icmp ult i64 %409, %129, !dbg !1748
  br i1 %410, label %411, label %415, !dbg !1751

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1748
  %413 = or i8 %412, 48, !dbg !1748
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1748
  store i8 %413, i8* %414, align 1, !dbg !1748, !tbaa !881
  br label %415, !dbg !1748

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %416, metadata !1386, metadata !DIExpression()), !dbg !1446
  %417 = icmp ult i64 %416, %129, !dbg !1752
  br i1 %417, label %418, label %423, !dbg !1755

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1752
  %420 = and i8 %419, 7, !dbg !1752
  %421 = or i8 %420, 48, !dbg !1752
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1752
  store i8 %421, i8* %422, align 1, !dbg !1752, !tbaa !881
  br label %423, !dbg !1752

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %424, metadata !1386, metadata !DIExpression()), !dbg !1446
  %425 = and i8 %378, 7, !dbg !1756
  %426 = or i8 %425, 48, !dbg !1757
  call void @llvm.dbg.value(metadata i8 %426, metadata !1396, metadata !DIExpression()), !dbg !1513
  br label %436, !dbg !1758

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1759
  %429 = icmp eq i8 %428, 0, !dbg !1759
  br i1 %429, label %436, label %430, !dbg !1761

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1762
  br i1 %431, label %432, label %434, !dbg !1766

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1762
  store i8 92, i8* %433, align 1, !dbg !1762, !tbaa !881
  br label %434, !dbg !1762

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %435, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 0, metadata !1401, metadata !DIExpression()), !dbg !1513
  br label %436, !dbg !1767

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1446
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1455
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1513
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1513
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1513
  call void @llvm.dbg.value(metadata i8 %441, metadata !1402, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %440, metadata !1401, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %439, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %438, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %437, metadata !1386, metadata !DIExpression()), !dbg !1446
  %442 = add i64 %375, 1, !dbg !1768
  %443 = icmp ugt i64 %372, %442, !dbg !1770
  br i1 %443, label %444, label %471, !dbg !1771

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1772
  %446 = icmp ne i8 %445, 0, !dbg !1772
  %447 = and i8 %441, 1, !dbg !1772
  %448 = icmp eq i8 %447, 0, !dbg !1772
  %449 = and i1 %446, %448, !dbg !1772
  br i1 %449, label %450, label %461, !dbg !1772

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1775
  br i1 %451, label %452, label %454, !dbg !1779

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1775
  store i8 39, i8* %453, align 1, !dbg !1775, !tbaa !881
  br label %454, !dbg !1775

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %455, metadata !1386, metadata !DIExpression()), !dbg !1446
  %456 = icmp ult i64 %455, %129, !dbg !1780
  br i1 %456, label %457, label %459, !dbg !1783

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1780
  store i8 39, i8* %458, align 1, !dbg !1780, !tbaa !881
  br label %459, !dbg !1780

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %460, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1446
  br label %461, !dbg !1784

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1785
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %463, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %462, metadata !1386, metadata !DIExpression()), !dbg !1446
  %464 = icmp ult i64 %462, %129, !dbg !1786
  br i1 %464, label %465, label %467, !dbg !1789

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1786
  store i8 %439, i8* %466, align 1, !dbg !1786, !tbaa !881
  br label %467, !dbg !1786

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %468, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %442, metadata !1385, metadata !DIExpression()), !dbg !1446
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1790
  %470 = load i8, i8* %469, align 1, !dbg !1790, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %470, metadata !1396, metadata !DIExpression()), !dbg !1513
  br label %374, !dbg !1791, !llvm.loop !1792

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i8 %472, metadata !1403, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %441, metadata !1402, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %440, metadata !1401, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %439, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %438, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %371, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %437, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %375, metadata !1385, metadata !DIExpression()), !dbg !1446
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1506
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1446
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1451
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1795
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1446
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1446
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1513
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1513
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1513
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %482, metadata !1403, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %481, metadata !1402, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %156, metadata !1401, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %480, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %479, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %478, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %477, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %476, metadata !1387, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %475, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %474, metadata !1385, metadata !DIExpression()), !dbg !1446
  br i1 %116, label %494, label %484, !dbg !1796

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1798
  %486 = zext i8 %485 to i64, !dbg !1798
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1799
  %488 = load i32, i32* %487, align 4, !dbg !1799, !tbaa !831
  %489 = and i8 %480, 31, !dbg !1800
  %490 = zext i8 %489 to i32, !dbg !1800
  %491 = shl nuw i32 1, %490, !dbg !1801
  %492 = and i32 %488, %491, !dbg !1801
  %493 = icmp eq i32 %492, 0, !dbg !1801
  br i1 %493, label %494, label %495, !dbg !1802

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1803

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1804
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1446
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1451
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1795
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1455
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1456
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1513
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1513
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %503, metadata !1403, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %502, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %501, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %500, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %499, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %498, metadata !1387, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %497, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %496, metadata !1385, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.label(metadata !1443), !dbg !1805
  br i1 %109, label %505, label %635, !dbg !1806

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1402, metadata !DIExpression()), !dbg !1513
  %506 = and i8 %500, 1, !dbg !1808
  %507 = icmp eq i8 %506, 0, !dbg !1808
  %508 = and i1 %110, %507, !dbg !1808
  br i1 %508, label %509, label %525, !dbg !1808

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1810
  br i1 %510, label %511, label %513, !dbg !1814

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1810
  store i8 39, i8* %512, align 1, !dbg !1810, !tbaa !881
  br label %513, !dbg !1810

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %514, metadata !1386, metadata !DIExpression()), !dbg !1446
  %515 = icmp ult i64 %514, %504, !dbg !1815
  br i1 %515, label %516, label %518, !dbg !1818

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1815
  store i8 36, i8* %517, align 1, !dbg !1815, !tbaa !881
  br label %518, !dbg !1815

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %519, metadata !1386, metadata !DIExpression()), !dbg !1446
  %520 = icmp ult i64 %519, %504, !dbg !1819
  br i1 %520, label %521, label %523, !dbg !1822

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1819
  store i8 39, i8* %522, align 1, !dbg !1819, !tbaa !881
  br label %523, !dbg !1819

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %524, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 1, metadata !1393, metadata !DIExpression()), !dbg !1446
  br label %525, !dbg !1823

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1513
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %527, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %526, metadata !1386, metadata !DIExpression()), !dbg !1446
  %528 = icmp ult i64 %526, %504, !dbg !1824
  br i1 %528, label %529, label %531, !dbg !1827

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1824
  store i8 92, i8* %530, align 1, !dbg !1824, !tbaa !881
  br label %531, !dbg !1824

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %543, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %542, metadata !1403, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %541, metadata !1402, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %540, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %539, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %538, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %537, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %536, metadata !1387, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %535, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %534, metadata !1385, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.label(metadata !1444), !dbg !1828
  br label %560, !dbg !1829

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1804
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1446
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1451
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1795
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1455
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1456
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1832
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1513
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1513
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %542, metadata !1403, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %541, metadata !1402, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %540, metadata !1396, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8 %539, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %538, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %537, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %536, metadata !1387, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %535, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %534, metadata !1385, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.label(metadata !1444), !dbg !1828
  %544 = and i8 %538, 1, !dbg !1829
  %545 = icmp ne i8 %544, 0, !dbg !1829
  %546 = and i8 %541, 1, !dbg !1829
  %547 = icmp eq i8 %546, 0, !dbg !1829
  %548 = and i1 %545, %547, !dbg !1829
  br i1 %548, label %549, label %560, !dbg !1829

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1833
  br i1 %550, label %551, label %553, !dbg !1837

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1833
  store i8 39, i8* %552, align 1, !dbg !1833, !tbaa !881
  br label %553, !dbg !1833

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %554, metadata !1386, metadata !DIExpression()), !dbg !1446
  %555 = icmp ult i64 %554, %543, !dbg !1838
  br i1 %555, label %556, label %558, !dbg !1841

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1838
  store i8 39, i8* %557, align 1, !dbg !1838, !tbaa !881
  br label %558, !dbg !1838

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %559, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1446
  br label %560, !dbg !1842

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1513
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %569, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %568, metadata !1386, metadata !DIExpression()), !dbg !1446
  %570 = icmp ult i64 %568, %561, !dbg !1843
  br i1 %570, label %571, label %573, !dbg !1846

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1843
  store i8 %563, i8* %572, align 1, !dbg !1843, !tbaa !881
  br label %573, !dbg !1843

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %574, metadata !1386, metadata !DIExpression()), !dbg !1446
  %575 = icmp eq i8 %562, 0, !dbg !1847
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1849
  call void @llvm.dbg.value(metadata i8 %576, metadata !1395, metadata !DIExpression()), !dbg !1446
  br label %577, !dbg !1850

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1804
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1446
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1451
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1795
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1455
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1446
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1457
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %584, metadata !1395, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %583, metadata !1394, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %582, metadata !1393, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %581, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %580, metadata !1387, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %579, metadata !1386, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %578, metadata !1385, metadata !DIExpression()), !dbg !1446
  %586 = add i64 %578, 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %586, metadata !1385, metadata !DIExpression()), !dbg !1446
  br label %121, !dbg !1852, !llvm.loop !1853

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1855
  %590 = and i1 %110, %589, !dbg !1857
  %591 = xor i1 %590, true, !dbg !1857
  %592 = or i1 %109, %591, !dbg !1857
  br i1 %592, label %593, label %635, !dbg !1857

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1858
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1858
  br i1 %597, label %598, label %607, !dbg !1858

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1860
  %600 = icmp eq i8 %599, 0, !dbg !1860
  br i1 %600, label %603, label %601, !dbg !1863

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1864
  br label %652, !dbg !1865

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1866
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1868
  br i1 %606, label %26, label %607, !dbg !1868

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1869
  %610 = and i1 %609, %608, !dbg !1871
  br i1 %610, label %611, label %626, !dbg !1871

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1388, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %123, metadata !1386, metadata !DIExpression()), !dbg !1446
  %612 = load i8, i8* %97, align 1, !dbg !1872, !tbaa !881
  %613 = icmp eq i8 %612, 0, !dbg !1875
  br i1 %613, label %626, label %614, !dbg !1875

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1388, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %617, metadata !1386, metadata !DIExpression()), !dbg !1446
  %618 = icmp ult i64 %617, %129, !dbg !1876
  br i1 %618, label %619, label %621, !dbg !1879

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1876
  store i8 %615, i8* %620, align 1, !dbg !1876, !tbaa !881
  br label %621, !dbg !1876

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %622, metadata !1386, metadata !DIExpression()), !dbg !1446
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1880
  call void @llvm.dbg.value(metadata i8* %623, metadata !1388, metadata !DIExpression()), !dbg !1446
  %624 = load i8, i8* %623, align 1, !dbg !1872, !tbaa !881
  %625 = icmp eq i8 %624, 0, !dbg !1875
  br i1 %625, label %626, label %614, !dbg !1875, !llvm.loop !1881

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1488
  call void @llvm.dbg.value(metadata i64 %627, metadata !1386, metadata !DIExpression()), !dbg !1446
  %628 = icmp ult i64 %627, %129, !dbg !1883
  br i1 %628, label %629, label %652, !dbg !1885

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1886
  store i8 0, i8* %630, align 1, !dbg !1887, !tbaa !881
  br label %652, !dbg !1886

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %637, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.label(metadata !1445), !dbg !1888
  %633 = icmp eq i8 %101, 0, !dbg !1889
  %634 = select i1 %633, i32 2, i32 4, !dbg !1889
  br label %642, !dbg !1889

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1377, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %637, metadata !1379, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.label(metadata !1445), !dbg !1888
  %639 = icmp eq i32 %93, 2, !dbg !1891
  %640 = icmp eq i8 %636, 0, !dbg !1889
  %641 = select i1 %640, i32 2, i32 4, !dbg !1889
  br i1 %639, label %642, label %646, !dbg !1889

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1889

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1380, metadata !DIExpression()), !dbg !1446
  %650 = and i32 %5, -3, !dbg !1892
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1893
  br label %652, !dbg !1894

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1895
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1900, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %1, metadata !1901, metadata !DIExpression()), !dbg !1904
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !1905
  call void @llvm.dbg.value(metadata i8* %3, metadata !1902, metadata !DIExpression()), !dbg !1904
  %4 = icmp eq i8* %3, %0, !dbg !1906
  br i1 %4, label %5, label %72, !dbg !1908

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !1909
  call void @llvm.dbg.value(metadata i8* %6, metadata !1903, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8* %6, metadata !1910, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8* undef, metadata !1916, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 85, metadata !1917, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 84, metadata !1918, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 70, metadata !1919, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 45, metadata !1920, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 56, metadata !1921, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 0, metadata !1923, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 0, metadata !1924, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8 0, metadata !1925, metadata !DIExpression()), !dbg !1926
  %7 = load i8, i8* %6, align 1, !dbg !1929, !tbaa !881
  %8 = and i8 %7, -33, !dbg !1929
  %9 = sext i8 %8 to i32, !dbg !1929
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1929

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1931, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8* undef, metadata !1936, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 84, metadata !1937, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 70, metadata !1938, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 45, metadata !1939, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 56, metadata !1940, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 0, metadata !1941, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 0, metadata !1942, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 0, metadata !1943, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i8 0, metadata !1944, metadata !DIExpression()), !dbg !1945
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1949
  %12 = load i8, i8* %11, align 1, !dbg !1949, !tbaa !881
  %13 = and i8 %12, -33, !dbg !1949
  %14 = icmp eq i8 %13, 84, !dbg !1949
  br i1 %14, label %15, label %69, !dbg !1949

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1951, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* undef, metadata !1956, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 70, metadata !1957, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 45, metadata !1958, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 56, metadata !1959, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 0, metadata !1960, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 0, metadata !1961, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 0, metadata !1962, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 0, metadata !1963, metadata !DIExpression()), !dbg !1964
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1968
  %17 = load i8, i8* %16, align 1, !dbg !1968, !tbaa !881
  %18 = and i8 %17, -33, !dbg !1968
  %19 = icmp eq i8 %18, 70, !dbg !1968
  br i1 %19, label %20, label %69, !dbg !1968

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1970, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8* undef, metadata !1975, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 45, metadata !1976, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 56, metadata !1977, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 0, metadata !1978, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 0, metadata !1979, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 0, metadata !1980, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !1982
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1986
  %22 = load i8, i8* %21, align 1, !dbg !1986, !tbaa !881
  %23 = icmp eq i8 %22, 45, !dbg !1986
  br i1 %23, label %24, label %69, !dbg !1988

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1989, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8* undef, metadata !1994, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 56, metadata !1995, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2000
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2004
  %26 = load i8, i8* %25, align 1, !dbg !2004, !tbaa !881
  %27 = icmp eq i8 %26, 56, !dbg !2004
  br i1 %27, label %28, label %69, !dbg !2006

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2007, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* undef, metadata !2012, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, metadata !2013, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, metadata !2014, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, metadata !2015, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, metadata !2016, metadata !DIExpression()), !dbg !2017
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2021
  %30 = load i8, i8* %29, align 1, !dbg !2021, !tbaa !881
  %31 = icmp eq i8 %30, 0, !dbg !2021
  br i1 %31, label %32, label %69, !dbg !2023

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2024, !tbaa !881
  %34 = icmp eq i8 %33, 96, !dbg !2025
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2024
  br label %72, !dbg !2026

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1931, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8* undef, metadata !1936, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 66, metadata !1937, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 49, metadata !1938, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 56, metadata !1939, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 48, metadata !1940, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 51, metadata !1941, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 48, metadata !1942, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 0, metadata !1943, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i8 0, metadata !1944, metadata !DIExpression()), !dbg !2027
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2031
  %38 = load i8, i8* %37, align 1, !dbg !2031, !tbaa !881
  %39 = and i8 %38, -33, !dbg !2031
  %40 = icmp eq i8 %39, 66, !dbg !2031
  br i1 %40, label %41, label %69, !dbg !2031

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1951, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8* undef, metadata !1956, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 49, metadata !1957, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 56, metadata !1958, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 48, metadata !1959, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 51, metadata !1960, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 48, metadata !1961, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1962, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1963, metadata !DIExpression()), !dbg !2032
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2034
  %43 = load i8, i8* %42, align 1, !dbg !2034, !tbaa !881
  %44 = icmp eq i8 %43, 49, !dbg !2034
  br i1 %44, label %45, label %69, !dbg !2035

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1970, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* undef, metadata !1975, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 56, metadata !1976, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 48, metadata !1977, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 51, metadata !1978, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 48, metadata !1979, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !1980, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !1981, metadata !DIExpression()), !dbg !2036
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2038
  %47 = load i8, i8* %46, align 1, !dbg !2038, !tbaa !881
  %48 = icmp eq i8 %47, 56, !dbg !2038
  br i1 %48, label %49, label %69, !dbg !2039

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1989, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8* undef, metadata !1994, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 48, metadata !1995, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 51, metadata !1996, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 48, metadata !1997, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2040
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2042
  %51 = load i8, i8* %50, align 1, !dbg !2042, !tbaa !881
  %52 = icmp eq i8 %51, 48, !dbg !2042
  br i1 %52, label %53, label %69, !dbg !2043

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2007, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8* undef, metadata !2012, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 51, metadata !2013, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 48, metadata !2014, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2015, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i8 0, metadata !2016, metadata !DIExpression()), !dbg !2044
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2046
  %55 = load i8, i8* %54, align 1, !dbg !2046, !tbaa !881
  %56 = icmp eq i8 %55, 51, !dbg !2046
  br i1 %56, label %57, label %69, !dbg !2047

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2048, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8* undef, metadata !2053, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 48, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2055, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2056, metadata !DIExpression()), !dbg !2057
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2061
  %59 = load i8, i8* %58, align 1, !dbg !2061, !tbaa !881
  %60 = icmp eq i8 %59, 48, !dbg !2061
  br i1 %60, label %61, label %69, !dbg !2063

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2064, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8* undef, metadata !2069, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata i8 0, metadata !2071, metadata !DIExpression()), !dbg !2072
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2076
  %63 = load i8, i8* %62, align 1, !dbg !2076, !tbaa !881
  %64 = icmp eq i8 %63, 0, !dbg !2076
  br i1 %64, label %65, label %69, !dbg !2078

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2079, !tbaa !881
  %67 = icmp eq i8 %66, 96, !dbg !2080
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2079
  br label %72, !dbg !2081

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2082
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2083
  br label %72, !dbg !2084

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1904
  ret i8* %73, !dbg !2085
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2086 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2090 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2096 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %1, metadata !2101, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2102, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8* %0, metadata !2104, metadata !DIExpression()) #25, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %1, metadata !2109, metadata !DIExpression()) #25, !dbg !2117
  call void @llvm.dbg.value(metadata i64* null, metadata !2110, metadata !DIExpression()) #25, !dbg !2117
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2111, metadata !DIExpression()) #25, !dbg !2117
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2119
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2119
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2112, metadata !DIExpression()) #25, !dbg !2117
  %6 = tail call i32* @__errno_location() #29, !dbg !2120
  %7 = load i32, i32* %6, align 4, !dbg !2120, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %7, metadata !2113, metadata !DIExpression()) #25, !dbg !2117
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2121
  %9 = load i32, i32* %8, align 4, !dbg !2121, !tbaa !1320
  %10 = or i32 %9, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %10, metadata !2114, metadata !DIExpression()) #25, !dbg !2117
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2123
  %12 = load i32, i32* %11, align 8, !dbg !2123, !tbaa !1269
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2124
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2125
  %15 = load i8*, i8** %14, align 8, !dbg !2125, !tbaa !1342
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2126
  %17 = load i8*, i8** %16, align 8, !dbg !2126, !tbaa !1345
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !2127
  %19 = add i64 %18, 1, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %19, metadata !2115, metadata !DIExpression()) #25, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %19, metadata !2129, metadata !DIExpression()) #25, !dbg !2134
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !2136
  call void @llvm.dbg.value(metadata i8* %20, metadata !2116, metadata !DIExpression()) #25, !dbg !2117
  %21 = load i32, i32* %11, align 8, !dbg !2137, !tbaa !1269
  %22 = load i8*, i8** %14, align 8, !dbg !2138, !tbaa !1342
  %23 = load i8*, i8** %16, align 8, !dbg !2139, !tbaa !1345
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !2140
  store i32 %7, i32* %6, align 4, !dbg !2141, !tbaa !831
  ret i8* %20, !dbg !2142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2105 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2104, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %1, metadata !2109, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64* %2, metadata !2110, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2111, metadata !DIExpression()), !dbg !2143
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2144
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2112, metadata !DIExpression()), !dbg !2143
  %7 = tail call i32* @__errno_location() #29, !dbg !2145
  %8 = load i32, i32* %7, align 4, !dbg !2145, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %8, metadata !2113, metadata !DIExpression()), !dbg !2143
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2146
  %10 = load i32, i32* %9, align 4, !dbg !2146, !tbaa !1320
  %11 = icmp eq i64* %2, null, !dbg !2147
  %12 = zext i1 %11 to i32, !dbg !2147
  %13 = or i32 %10, %12, !dbg !2148
  call void @llvm.dbg.value(metadata i32 %13, metadata !2114, metadata !DIExpression()), !dbg !2143
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2149
  %15 = load i32, i32* %14, align 8, !dbg !2149, !tbaa !1269
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2150
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2151
  %18 = load i8*, i8** %17, align 8, !dbg !2151, !tbaa !1342
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2152
  %20 = load i8*, i8** %19, align 8, !dbg !2152, !tbaa !1345
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2153
  %22 = add i64 %21, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %22, metadata !2115, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %22, metadata !2129, metadata !DIExpression()) #25, !dbg !2155
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !2157
  call void @llvm.dbg.value(metadata i8* %23, metadata !2116, metadata !DIExpression()), !dbg !2143
  %24 = load i32, i32* %14, align 8, !dbg !2158, !tbaa !1269
  %25 = load i8*, i8** %17, align 8, !dbg !2159, !tbaa !1342
  %26 = load i8*, i8** %19, align 8, !dbg !2160, !tbaa !1345
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2161
  store i32 %8, i32* %7, align 4, !dbg !2162, !tbaa !831
  br i1 %11, label %29, label %28, !dbg !2163

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2164, !tbaa !2166
  br label %29, !dbg !2167

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2169 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2173, !tbaa !657
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2171, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 1, metadata !2172, metadata !DIExpression()), !dbg !2174
  %2 = load i32, i32* @nslots, align 4, !dbg !2175, !tbaa !831
  %3 = icmp sgt i32 %2, 1, !dbg !2178
  br i1 %3, label %4, label %12, !dbg !2179

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2178
  br label %6, !dbg !2179

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2172, metadata !DIExpression()), !dbg !2174
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2180
  %9 = load i8*, i8** %8, align 8, !dbg !2180, !tbaa !2181
  tail call void @free(i8* %9) #25, !dbg !2183
  %10 = add nuw nsw i64 %7, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %10, metadata !2172, metadata !DIExpression()), !dbg !2174
  %11 = icmp eq i64 %10, %5, !dbg !2178
  br i1 %11, label %12, label %6, !dbg !2179, !llvm.loop !2185

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2187
  %14 = load i8*, i8** %13, align 8, !dbg !2187, !tbaa !2181
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2189
  br i1 %15, label %17, label %16, !dbg !2190

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !2191
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2193, !tbaa !2194
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2195, !tbaa !2181
  br label %17, !dbg !2196

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2197
  br i1 %18, label %21, label %19, !dbg !2199

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2200
  tail call void @free(i8* %20) #25, !dbg !2202
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2203, !tbaa !657
  br label %21, !dbg !2204

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2205, !tbaa !831
  ret void, !dbg !2206
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2207 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2209, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %1, metadata !2210, metadata !DIExpression()), !dbg !2211
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2212
  ret i8* %3, !dbg !2213
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2218, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i8* %1, metadata !2219, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i64 %2, metadata !2220, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2221, metadata !DIExpression()), !dbg !2233
  %5 = tail call i32* @__errno_location() #29, !dbg !2234
  %6 = load i32, i32* %5, align 4, !dbg !2234, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %6, metadata !2222, metadata !DIExpression()), !dbg !2233
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2235, !tbaa !657
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2223, metadata !DIExpression()), !dbg !2233
  %8 = icmp slt i32 %0, 0, !dbg !2236
  br i1 %8, label %9, label %10, !dbg !2238

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2239
  unreachable, !dbg !2239

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2240, !tbaa !831
  %12 = icmp sgt i32 %11, %0, !dbg !2241
  br i1 %12, label %34, label %13, !dbg !2242

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2243
  call void @llvm.dbg.value(metadata i1 %14, metadata !2224, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2244
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2227, metadata !DIExpression()), !dbg !2244
  %15 = icmp eq i32 %0, 2147483647, !dbg !2245
  br i1 %15, label %16, label %17, !dbg !2247

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2248
  unreachable, !dbg !2248

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2249
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2249
  %20 = add nuw nsw i32 %0, 1, !dbg !2250
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2251
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !2252
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2252
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2223, metadata !DIExpression()), !dbg !2233
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2253, !tbaa !657
  br i1 %14, label %25, label %26, !dbg !2254

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2255, !tbaa.struct !2257
  br label %26, !dbg !2258

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2259, !tbaa !831
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2260
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2261
  %31 = sub nsw i32 %20, %27, !dbg !2262
  %32 = sext i32 %31 to i64, !dbg !2263
  %33 = shl nsw i64 %32, 4, !dbg !2264
  call void @llvm.dbg.value(metadata i8* %30, metadata !1656, metadata !DIExpression()) #25, !dbg !2265
  call void @llvm.dbg.value(metadata i32 0, metadata !1662, metadata !DIExpression()) #25, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %33, metadata !1663, metadata !DIExpression()) #25, !dbg !2265
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2267
  store i32 %20, i32* @nslots, align 4, !dbg !2268, !tbaa !831
  br label %34, !dbg !2269

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2233
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2223, metadata !DIExpression()), !dbg !2233
  %36 = zext i32 %0 to i64, !dbg !2270
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2271
  %38 = load i64, i64* %37, align 8, !dbg !2271, !tbaa !2194
  call void @llvm.dbg.value(metadata i64 %38, metadata !2228, metadata !DIExpression()), !dbg !2272
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2273
  %40 = load i8*, i8** %39, align 8, !dbg !2273, !tbaa !2181
  call void @llvm.dbg.value(metadata i8* %40, metadata !2230, metadata !DIExpression()), !dbg !2272
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2274
  %42 = load i32, i32* %41, align 4, !dbg !2274, !tbaa !1320
  %43 = or i32 %42, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %43, metadata !2231, metadata !DIExpression()), !dbg !2272
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2276
  %45 = load i32, i32* %44, align 8, !dbg !2276, !tbaa !1269
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2277
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2278
  %48 = load i8*, i8** %47, align 8, !dbg !2278, !tbaa !1342
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2279
  %50 = load i8*, i8** %49, align 8, !dbg !2279, !tbaa !1345
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %51, metadata !2232, metadata !DIExpression()), !dbg !2272
  %52 = icmp ugt i64 %38, %51, !dbg !2281
  br i1 %52, label %63, label %53, !dbg !2283

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %54, metadata !2228, metadata !DIExpression()), !dbg !2272
  store i64 %54, i64* %37, align 8, !dbg !2286, !tbaa !2194
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2287
  br i1 %55, label %57, label %56, !dbg !2289

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2290
  br label %57, !dbg !2290

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2129, metadata !DIExpression()) #25, !dbg !2291
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2293
  call void @llvm.dbg.value(metadata i8* %58, metadata !2230, metadata !DIExpression()), !dbg !2272
  store i8* %58, i8** %39, align 8, !dbg !2294, !tbaa !2181
  %59 = load i32, i32* %44, align 8, !dbg !2295, !tbaa !1269
  %60 = load i8*, i8** %47, align 8, !dbg !2296, !tbaa !1342
  %61 = load i8*, i8** %49, align 8, !dbg !2297, !tbaa !1345
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2298
  br label %63, !dbg !2299

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2272
  call void @llvm.dbg.value(metadata i8* %64, metadata !2230, metadata !DIExpression()), !dbg !2272
  store i32 %6, i32* %5, align 4, !dbg !2300, !tbaa !831
  ret i8* %64, !dbg !2301
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %1, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %2, metadata !2308, metadata !DIExpression()), !dbg !2309
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2310
  ret i8* %4, !dbg !2311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2312 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 0, metadata !2209, metadata !DIExpression()) #25, !dbg !2316
  call void @llvm.dbg.value(metadata i8* %0, metadata !2210, metadata !DIExpression()) #25, !dbg !2316
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2318
  ret i8* %2, !dbg !2319
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2320 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %1, metadata !2325, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 0, metadata !2306, metadata !DIExpression()) #25, !dbg !2327
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()) #25, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %1, metadata !2308, metadata !DIExpression()) #25, !dbg !2327
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2329
  ret i8* %3, !dbg !2330
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2331 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2335, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 %1, metadata !2336, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i8* %2, metadata !2337, metadata !DIExpression()), !dbg !2339
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2340
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2340
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2338, metadata !DIExpression()), !dbg !2341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2342), !dbg !2345
  call void @llvm.dbg.value(metadata i32 %1, metadata !2346, metadata !DIExpression()) #25, !dbg !2352
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2351, metadata !DIExpression()) #25, !dbg !2354
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2354, !alias.scope !2342
  %6 = icmp eq i32 %1, 10, !dbg !2355
  br i1 %6, label %7, label %8, !dbg !2357

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2358, !noalias !2342
  unreachable, !dbg !2358

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2359
  store i32 %1, i32* %9, align 8, !dbg !2360, !tbaa !1269, !alias.scope !2342
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2361
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2362
  ret i8* %10, !dbg !2363
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2364 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2368, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %1, metadata !2369, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %2, metadata !2370, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %3, metadata !2371, metadata !DIExpression()), !dbg !2373
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2374
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2374
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2372, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2376), !dbg !2379
  call void @llvm.dbg.value(metadata i32 %1, metadata !2346, metadata !DIExpression()) #25, !dbg !2380
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2351, metadata !DIExpression()) #25, !dbg !2382
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2382, !alias.scope !2376
  %7 = icmp eq i32 %1, 10, !dbg !2383
  br i1 %7, label %8, label %9, !dbg !2384

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2385, !noalias !2376
  unreachable, !dbg !2385

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2386
  store i32 %1, i32* %10, align 8, !dbg !2387, !tbaa !1269, !alias.scope !2376
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2388
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2389
  ret i8* %11, !dbg !2390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2391 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8* %1, metadata !2396, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 0, metadata !2335, metadata !DIExpression()) #25, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %0, metadata !2336, metadata !DIExpression()) #25, !dbg !2398
  call void @llvm.dbg.value(metadata i8* %1, metadata !2337, metadata !DIExpression()) #25, !dbg !2398
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2400
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2400
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2338, metadata !DIExpression()) #25, !dbg !2401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402) #25, !dbg !2405
  call void @llvm.dbg.value(metadata i32 %0, metadata !2346, metadata !DIExpression()) #25, !dbg !2406
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2351, metadata !DIExpression()) #25, !dbg !2408
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2408, !alias.scope !2402
  %5 = icmp eq i32 %0, 10, !dbg !2409
  br i1 %5, label %6, label %7, !dbg !2410

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2411, !noalias !2402
  unreachable, !dbg !2411

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2412
  store i32 %0, i32* %8, align 8, !dbg !2413, !tbaa !1269, !alias.scope !2402
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2414
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2415
  ret i8* %9, !dbg !2416
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2417 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2421, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %1, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %2, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 0, metadata !2368, metadata !DIExpression()) #25, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()) #25, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %1, metadata !2370, metadata !DIExpression()) #25, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %2, metadata !2371, metadata !DIExpression()) #25, !dbg !2425
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2427
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2372, metadata !DIExpression()) #25, !dbg !2428
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429) #25, !dbg !2432
  call void @llvm.dbg.value(metadata i32 %0, metadata !2346, metadata !DIExpression()) #25, !dbg !2433
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2351, metadata !DIExpression()) #25, !dbg !2435
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2435, !alias.scope !2429
  %6 = icmp eq i32 %0, 10, !dbg !2436
  br i1 %6, label %7, label %8, !dbg !2437

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2438, !noalias !2429
  unreachable, !dbg !2438

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2439
  store i32 %0, i32* %9, align 8, !dbg !2440, !tbaa !1269, !alias.scope !2429
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2441
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2442
  ret i8* %10, !dbg !2443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2444 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %1, metadata !2449, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 %2, metadata !2450, metadata !DIExpression()), !dbg !2452
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2453
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2453
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2451, metadata !DIExpression()), !dbg !2454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2455, !tbaa.struct !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1287, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 %2, metadata !1288, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 %2, metadata !1290, metadata !DIExpression()), !dbg !2457
  %6 = lshr i8 %2, 5, !dbg !2459
  %7 = zext i8 %6 to i64, !dbg !2459
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2460
  call void @llvm.dbg.value(metadata i32* %8, metadata !1291, metadata !DIExpression()), !dbg !2457
  %9 = and i8 %2, 31, !dbg !2461
  %10 = zext i8 %9 to i32, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %10, metadata !1293, metadata !DIExpression()), !dbg !2457
  %11 = load i32, i32* %8, align 4, !dbg !2462, !tbaa !831
  %12 = lshr i32 %11, %10, !dbg !2463
  %13 = and i32 %12, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %13, metadata !1294, metadata !DIExpression()), !dbg !2457
  %14 = xor i32 %13, 1, !dbg !2465
  %15 = shl i32 %14, %10, !dbg !2466
  %16 = xor i32 %15, %11, !dbg !2467
  store i32 %16, i32* %8, align 4, !dbg !2467, !tbaa !831
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2468
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2469
  ret i8* %17, !dbg !2470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2471 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8 %1, metadata !2476, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()) #25, !dbg !2478
  call void @llvm.dbg.value(metadata i64 -1, metadata !2449, metadata !DIExpression()) #25, !dbg !2478
  call void @llvm.dbg.value(metadata i8 %1, metadata !2450, metadata !DIExpression()) #25, !dbg !2478
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2480
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2480
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2451, metadata !DIExpression()) #25, !dbg !2481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2482, !tbaa.struct !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1287, metadata !DIExpression()) #25, !dbg !2483
  call void @llvm.dbg.value(metadata i8 %1, metadata !1288, metadata !DIExpression()) #25, !dbg !2483
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()) #25, !dbg !2483
  call void @llvm.dbg.value(metadata i8 %1, metadata !1290, metadata !DIExpression()) #25, !dbg !2483
  %5 = lshr i8 %1, 5, !dbg !2485
  %6 = zext i8 %5 to i64, !dbg !2485
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2486
  call void @llvm.dbg.value(metadata i32* %7, metadata !1291, metadata !DIExpression()) #25, !dbg !2483
  %8 = and i8 %1, 31, !dbg !2487
  %9 = zext i8 %8 to i32, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %9, metadata !1293, metadata !DIExpression()) #25, !dbg !2483
  %10 = load i32, i32* %7, align 4, !dbg !2488, !tbaa !831
  %11 = lshr i32 %10, %9, !dbg !2489
  %12 = and i32 %11, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %12, metadata !1294, metadata !DIExpression()) #25, !dbg !2483
  %13 = xor i32 %12, 1, !dbg !2491
  %14 = shl i32 %13, %9, !dbg !2492
  %15 = xor i32 %14, %10, !dbg !2493
  store i32 %15, i32* %7, align 4, !dbg !2493, !tbaa !831
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2494
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2495
  ret i8* %16, !dbg !2496
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2497 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2499, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()) #25, !dbg !2501
  call void @llvm.dbg.value(metadata i8 58, metadata !2476, metadata !DIExpression()) #25, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()) #25, !dbg !2503
  call void @llvm.dbg.value(metadata i64 -1, metadata !2449, metadata !DIExpression()) #25, !dbg !2503
  call void @llvm.dbg.value(metadata i8 58, metadata !2450, metadata !DIExpression()) #25, !dbg !2503
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2505
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2505
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2451, metadata !DIExpression()) #25, !dbg !2506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2507, !tbaa.struct !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1287, metadata !DIExpression()) #25, !dbg !2508
  call void @llvm.dbg.value(metadata i8 58, metadata !1288, metadata !DIExpression()) #25, !dbg !2508
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()) #25, !dbg !2508
  call void @llvm.dbg.value(metadata i8 58, metadata !1290, metadata !DIExpression()) #25, !dbg !2508
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2510
  call void @llvm.dbg.value(metadata i32* %4, metadata !1291, metadata !DIExpression()) #25, !dbg !2508
  call void @llvm.dbg.value(metadata i32 26, metadata !1293, metadata !DIExpression()) #25, !dbg !2508
  %5 = load i32, i32* %4, align 4, !dbg !2511, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %5, metadata !1294, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2508
  %6 = or i32 %5, 67108864, !dbg !2512
  store i32 %6, i32* %4, align 4, !dbg !2512, !tbaa !831
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2513
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2514
  ret i8* %7, !dbg !2515
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2516 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2518, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i64 %1, metadata !2519, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()) #25, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %1, metadata !2449, metadata !DIExpression()) #25, !dbg !2521
  call void @llvm.dbg.value(metadata i8 58, metadata !2450, metadata !DIExpression()) #25, !dbg !2521
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2523
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2523
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2451, metadata !DIExpression()) #25, !dbg !2524
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2525, !tbaa.struct !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1287, metadata !DIExpression()) #25, !dbg !2526
  call void @llvm.dbg.value(metadata i8 58, metadata !1288, metadata !DIExpression()) #25, !dbg !2526
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()) #25, !dbg !2526
  call void @llvm.dbg.value(metadata i8 58, metadata !1290, metadata !DIExpression()) #25, !dbg !2526
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2528
  call void @llvm.dbg.value(metadata i32* %5, metadata !1291, metadata !DIExpression()) #25, !dbg !2526
  call void @llvm.dbg.value(metadata i32 26, metadata !1293, metadata !DIExpression()) #25, !dbg !2526
  %6 = load i32, i32* %5, align 4, !dbg !2529, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %6, metadata !1294, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2526
  %7 = or i32 %6, 67108864, !dbg !2530
  store i32 %7, i32* %5, align 4, !dbg !2530, !tbaa !831
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2532
  ret i8* %8, !dbg !2533
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2534 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2351, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2540
  call void @llvm.dbg.value(metadata i32 %0, metadata !2536, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %1, metadata !2537, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %2, metadata !2538, metadata !DIExpression()), !dbg !2542
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2543
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2543
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2539, metadata !DIExpression()), !dbg !2544
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2545
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2545
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2546), !dbg !2545
  call void @llvm.dbg.value(metadata i32 %1, metadata !2346, metadata !DIExpression()) #25, !dbg !2549
  call void @llvm.dbg.value(metadata i32 0, metadata !2351, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2549
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2540, !alias.scope !2546
  %8 = icmp eq i32 %1, 10, !dbg !2550
  br i1 %8, label %9, label %10, !dbg !2551

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2552, !noalias !2546
  unreachable, !dbg !2552

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2351, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2549
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2545
  store i32 %1, i32* %11, align 8, !dbg !2545, !tbaa.struct !2456
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2545
  %13 = bitcast i32* %12 to i8*, !dbg !2545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2545, !tbaa.struct !2553
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1287, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 58, metadata !1288, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 58, metadata !1290, metadata !DIExpression()), !dbg !2554
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2556
  call void @llvm.dbg.value(metadata i32* %14, metadata !1291, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 26, metadata !1293, metadata !DIExpression()), !dbg !2554
  %15 = load i32, i32* %14, align 4, !dbg !2557, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %15, metadata !1294, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2554
  %16 = or i32 %15, 67108864, !dbg !2558
  store i32 %16, i32* %14, align 4, !dbg !2558, !tbaa !831
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2560
  ret i8* %17, !dbg !2561
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2562 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %1, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %2, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %3, metadata !2569, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()) #25, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %1, metadata !2576, metadata !DIExpression()) #25, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %2, metadata !2577, metadata !DIExpression()) #25, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %3, metadata !2578, metadata !DIExpression()) #25, !dbg !2581
  call void @llvm.dbg.value(metadata i64 -1, metadata !2579, metadata !DIExpression()) #25, !dbg !2581
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2583
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2583
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2580, metadata !DIExpression()) #25, !dbg !2584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2585, !tbaa.struct !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()) #25, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %1, metadata !1328, metadata !DIExpression()) #25, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()) #25, !dbg !2586
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()) #25, !dbg !2586
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2588
  store i32 10, i32* %7, align 8, !dbg !2589, !tbaa !1269
  %8 = icmp ne i8* %1, null, !dbg !2590
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2591
  br i1 %10, label %12, label %11, !dbg !2591

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2592
  unreachable, !dbg !2592

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2593
  store i8* %1, i8** %13, align 8, !dbg !2594, !tbaa !1342
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2595
  store i8* %2, i8** %14, align 8, !dbg !2596, !tbaa !1345
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2598
  ret i8* %15, !dbg !2599
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2572 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2571, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %1, metadata !2576, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %2, metadata !2577, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8* %3, metadata !2578, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %4, metadata !2579, metadata !DIExpression()), !dbg !2600
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2601
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2601
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2580, metadata !DIExpression()), !dbg !2602
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2603, !tbaa.struct !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1327, metadata !DIExpression()) #25, !dbg !2604
  call void @llvm.dbg.value(metadata i8* %1, metadata !1328, metadata !DIExpression()) #25, !dbg !2604
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()) #25, !dbg !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1327, metadata !DIExpression()) #25, !dbg !2604
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2606
  store i32 10, i32* %8, align 8, !dbg !2607, !tbaa !1269
  %9 = icmp ne i8* %1, null, !dbg !2608
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2609
  br i1 %11, label %13, label %12, !dbg !2609

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !2610
  unreachable, !dbg !2610

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2611
  store i8* %1, i8** %14, align 8, !dbg !2612, !tbaa !1342
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2613
  store i8* %2, i8** %15, align 8, !dbg !2614, !tbaa !1345
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2615
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2616
  ret i8* %16, !dbg !2617
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2618 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %1, metadata !2623, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %2, metadata !2624, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 0, metadata !2566, metadata !DIExpression()) #25, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %0, metadata !2567, metadata !DIExpression()) #25, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()) #25, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()) #25, !dbg !2626
  call void @llvm.dbg.value(metadata i32 0, metadata !2571, metadata !DIExpression()) #25, !dbg !2628
  call void @llvm.dbg.value(metadata i8* %0, metadata !2576, metadata !DIExpression()) #25, !dbg !2628
  call void @llvm.dbg.value(metadata i8* %1, metadata !2577, metadata !DIExpression()) #25, !dbg !2628
  call void @llvm.dbg.value(metadata i8* %2, metadata !2578, metadata !DIExpression()) #25, !dbg !2628
  call void @llvm.dbg.value(metadata i64 -1, metadata !2579, metadata !DIExpression()) #25, !dbg !2628
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2630
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2580, metadata !DIExpression()) #25, !dbg !2631
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2632, !tbaa.struct !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1327, metadata !DIExpression()) #25, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %0, metadata !1328, metadata !DIExpression()) #25, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %1, metadata !1329, metadata !DIExpression()) #25, !dbg !2633
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1327, metadata !DIExpression()) #25, !dbg !2633
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2635
  store i32 10, i32* %6, align 8, !dbg !2636, !tbaa !1269
  %7 = icmp ne i8* %0, null, !dbg !2637
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2638
  br i1 %9, label %11, label %10, !dbg !2638

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2639
  unreachable, !dbg !2639

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2640
  store i8* %0, i8** %12, align 8, !dbg !2641, !tbaa !1342
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2642
  store i8* %1, i8** %13, align 8, !dbg !2643, !tbaa !1345
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !2644
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2645
  ret i8* %14, !dbg !2646
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2647 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %1, metadata !2652, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8* %2, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %3, metadata !2654, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 0, metadata !2571, metadata !DIExpression()) #25, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %0, metadata !2576, metadata !DIExpression()) #25, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %1, metadata !2577, metadata !DIExpression()) #25, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %2, metadata !2578, metadata !DIExpression()) #25, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %3, metadata !2579, metadata !DIExpression()) #25, !dbg !2656
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2658
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2658
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2580, metadata !DIExpression()) #25, !dbg !2659
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2660, !tbaa.struct !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()) #25, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %0, metadata !1328, metadata !DIExpression()) #25, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %1, metadata !1329, metadata !DIExpression()) #25, !dbg !2661
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()) #25, !dbg !2661
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2663
  store i32 10, i32* %7, align 8, !dbg !2664, !tbaa !1269
  %8 = icmp ne i8* %0, null, !dbg !2665
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2666
  br i1 %10, label %12, label %11, !dbg !2666

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2667
  unreachable, !dbg !2667

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2668
  store i8* %0, i8** %13, align 8, !dbg !2669, !tbaa !1342
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2670
  store i8* %1, i8** %14, align 8, !dbg !2671, !tbaa !1345
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !2672
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2673
  ret i8* %15, !dbg !2674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i64 %2, metadata !2681, metadata !DIExpression()), !dbg !2682
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2683
  ret i8* %4, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %1, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #25, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %0, metadata !2680, metadata !DIExpression()) #25, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %1, metadata !2681, metadata !DIExpression()) #25, !dbg !2692
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2694
  ret i8* %3, !dbg !2695
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2696 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2700, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8* %1, metadata !2701, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 %0, metadata !2679, metadata !DIExpression()) #25, !dbg !2703
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()) #25, !dbg !2703
  call void @llvm.dbg.value(metadata i64 -1, metadata !2681, metadata !DIExpression()) #25, !dbg !2703
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2705
  ret i8* %3, !dbg !2706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2707 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2711, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 0, metadata !2700, metadata !DIExpression()) #25, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()) #25, !dbg !2713
  call void @llvm.dbg.value(metadata i32 0, metadata !2679, metadata !DIExpression()) #25, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %0, metadata !2680, metadata !DIExpression()) #25, !dbg !2715
  call void @llvm.dbg.value(metadata i64 -1, metadata !2681, metadata !DIExpression()) #25, !dbg !2715
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2717
  ret i8* %2, !dbg !2718
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2719 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2759, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8* %1, metadata !2760, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8* %2, metadata !2761, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8* %3, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i8** %4, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %5, metadata !2764, metadata !DIExpression()), !dbg !2765
  %7 = icmp eq i8* %1, null, !dbg !2766
  br i1 %7, label %10, label %8, !dbg !2768

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !2769
  br label %12, !dbg !2769

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !2770
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #25, !dbg !2771
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !2771
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2772
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #25, !dbg !2773
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.81, i64 0, i64 0)) #25, !dbg !2773
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2774
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
  ], !dbg !2775

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #25, !dbg !2776
  %21 = load i8*, i8** %4, align 8, !dbg !2776, !tbaa !657
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !2776
  br label %147, !dbg !2778

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #25, !dbg !2779
  %25 = load i8*, i8** %4, align 8, !dbg !2779, !tbaa !657
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2779
  %27 = load i8*, i8** %26, align 8, !dbg !2779, !tbaa !657
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !2779
  br label %147, !dbg !2780

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #25, !dbg !2781
  %31 = load i8*, i8** %4, align 8, !dbg !2781, !tbaa !657
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2781
  %33 = load i8*, i8** %32, align 8, !dbg !2781, !tbaa !657
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2781
  %35 = load i8*, i8** %34, align 8, !dbg !2781, !tbaa !657
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !2781
  br label %147, !dbg !2782

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #25, !dbg !2783
  %39 = load i8*, i8** %4, align 8, !dbg !2783, !tbaa !657
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2783
  %41 = load i8*, i8** %40, align 8, !dbg !2783, !tbaa !657
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2783
  %43 = load i8*, i8** %42, align 8, !dbg !2783, !tbaa !657
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2783
  %45 = load i8*, i8** %44, align 8, !dbg !2783, !tbaa !657
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !2783
  br label %147, !dbg !2784

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #25, !dbg !2785
  %49 = load i8*, i8** %4, align 8, !dbg !2785, !tbaa !657
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2785
  %51 = load i8*, i8** %50, align 8, !dbg !2785, !tbaa !657
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2785
  %53 = load i8*, i8** %52, align 8, !dbg !2785, !tbaa !657
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2785
  %55 = load i8*, i8** %54, align 8, !dbg !2785, !tbaa !657
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2785
  %57 = load i8*, i8** %56, align 8, !dbg !2785, !tbaa !657
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !2785
  br label %147, !dbg !2786

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #25, !dbg !2787
  %61 = load i8*, i8** %4, align 8, !dbg !2787, !tbaa !657
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2787
  %63 = load i8*, i8** %62, align 8, !dbg !2787, !tbaa !657
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2787
  %65 = load i8*, i8** %64, align 8, !dbg !2787, !tbaa !657
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2787
  %67 = load i8*, i8** %66, align 8, !dbg !2787, !tbaa !657
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2787
  %69 = load i8*, i8** %68, align 8, !dbg !2787, !tbaa !657
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2787
  %71 = load i8*, i8** %70, align 8, !dbg !2787, !tbaa !657
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !2787
  br label %147, !dbg !2788

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #25, !dbg !2789
  %75 = load i8*, i8** %4, align 8, !dbg !2789, !tbaa !657
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2789
  %77 = load i8*, i8** %76, align 8, !dbg !2789, !tbaa !657
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2789
  %79 = load i8*, i8** %78, align 8, !dbg !2789, !tbaa !657
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2789
  %81 = load i8*, i8** %80, align 8, !dbg !2789, !tbaa !657
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2789
  %83 = load i8*, i8** %82, align 8, !dbg !2789, !tbaa !657
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2789
  %85 = load i8*, i8** %84, align 8, !dbg !2789, !tbaa !657
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2789
  %87 = load i8*, i8** %86, align 8, !dbg !2789, !tbaa !657
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !2789
  br label %147, !dbg !2790

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #25, !dbg !2791
  %91 = load i8*, i8** %4, align 8, !dbg !2791, !tbaa !657
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2791
  %93 = load i8*, i8** %92, align 8, !dbg !2791, !tbaa !657
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2791
  %95 = load i8*, i8** %94, align 8, !dbg !2791, !tbaa !657
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2791
  %97 = load i8*, i8** %96, align 8, !dbg !2791, !tbaa !657
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2791
  %99 = load i8*, i8** %98, align 8, !dbg !2791, !tbaa !657
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2791
  %101 = load i8*, i8** %100, align 8, !dbg !2791, !tbaa !657
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2791
  %103 = load i8*, i8** %102, align 8, !dbg !2791, !tbaa !657
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2791
  %105 = load i8*, i8** %104, align 8, !dbg !2791, !tbaa !657
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !2791
  br label %147, !dbg !2792

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #25, !dbg !2793
  %109 = load i8*, i8** %4, align 8, !dbg !2793, !tbaa !657
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2793
  %111 = load i8*, i8** %110, align 8, !dbg !2793, !tbaa !657
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2793
  %113 = load i8*, i8** %112, align 8, !dbg !2793, !tbaa !657
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2793
  %115 = load i8*, i8** %114, align 8, !dbg !2793, !tbaa !657
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2793
  %117 = load i8*, i8** %116, align 8, !dbg !2793, !tbaa !657
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2793
  %119 = load i8*, i8** %118, align 8, !dbg !2793, !tbaa !657
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2793
  %121 = load i8*, i8** %120, align 8, !dbg !2793, !tbaa !657
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2793
  %123 = load i8*, i8** %122, align 8, !dbg !2793, !tbaa !657
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2793
  %125 = load i8*, i8** %124, align 8, !dbg !2793, !tbaa !657
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !2793
  br label %147, !dbg !2794

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.91, i64 0, i64 0), i32 5) #25, !dbg !2795
  %129 = load i8*, i8** %4, align 8, !dbg !2795, !tbaa !657
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2795
  %131 = load i8*, i8** %130, align 8, !dbg !2795, !tbaa !657
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2795
  %133 = load i8*, i8** %132, align 8, !dbg !2795, !tbaa !657
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2795
  %135 = load i8*, i8** %134, align 8, !dbg !2795, !tbaa !657
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2795
  %137 = load i8*, i8** %136, align 8, !dbg !2795, !tbaa !657
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2795
  %139 = load i8*, i8** %138, align 8, !dbg !2795, !tbaa !657
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2795
  %141 = load i8*, i8** %140, align 8, !dbg !2795, !tbaa !657
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2795
  %143 = load i8*, i8** %142, align 8, !dbg !2795, !tbaa !657
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2795
  %145 = load i8*, i8** %144, align 8, !dbg !2795, !tbaa !657
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !2795
  br label %147, !dbg !2796

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2798 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2802, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %1, metadata !2803, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %2, metadata !2804, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %3, metadata !2805, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8** %4, metadata !2806, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i64 0, metadata !2807, metadata !DIExpression()), !dbg !2808
  br label %6, !dbg !2809

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2811
  call void @llvm.dbg.value(metadata i64 %7, metadata !2807, metadata !DIExpression()), !dbg !2808
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2812
  %9 = load i8*, i8** %8, align 8, !dbg !2812, !tbaa !657
  %10 = icmp eq i8* %9, null, !dbg !2814
  %11 = add i64 %7, 1, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %11, metadata !2807, metadata !DIExpression()), !dbg !2808
  br i1 %10, label %12, label %6, !dbg !2814, !llvm.loop !2816

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2818
  ret void, !dbg !2819
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2820 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2831, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %1, metadata !2832, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %2, metadata !2833, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %3, metadata !2834, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2835, metadata !DIExpression()), !dbg !2839
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2840
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2840
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2837, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 0, metadata !2836, metadata !DIExpression()), !dbg !2839
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2836, metadata !DIExpression()), !dbg !2839
  %11 = load i32, i32* %8, align 8, !dbg !2842
  %12 = icmp ult i32 %11, 41, !dbg !2842
  br i1 %12, label %13, label %18, !dbg !2842

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2842
  %15 = zext i32 %11 to i64, !dbg !2842
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2842
  %17 = add nuw nsw i32 %11, 8, !dbg !2842
  store i32 %17, i32* %8, align 8, !dbg !2842
  br label %21, !dbg !2842

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2842
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2842
  store i8* %20, i8** %9, align 8, !dbg !2842
  br label %21, !dbg !2842

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2842
  %25 = load i8*, i8** %24, align 8, !dbg !2842
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2845
  store i8* %25, i8** %26, align 16, !dbg !2846, !tbaa !657
  %27 = icmp eq i8* %25, null, !dbg !2847
  br i1 %27, label %30, label %28, !dbg !2848

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 1, metadata !2836, metadata !DIExpression()), !dbg !2839
  %29 = icmp ult i32 %22, 41, !dbg !2842
  br i1 %29, label %35, label %32, !dbg !2842

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2849
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2850
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2851
  ret void, !dbg !2851

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2842
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2842
  store i8* %34, i8** %9, align 8, !dbg !2842
  br label %40, !dbg !2842

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2842
  %37 = zext i32 %22 to i64, !dbg !2842
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2842
  %39 = add nuw nsw i32 %22, 8, !dbg !2842
  store i32 %39, i32* %8, align 8, !dbg !2842
  br label %40, !dbg !2842

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2842
  %44 = load i8*, i8** %43, align 8, !dbg !2842
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2845
  store i8* %44, i8** %45, align 8, !dbg !2846, !tbaa !657
  %46 = icmp eq i8* %44, null, !dbg !2847
  br i1 %46, label %30, label %47, !dbg !2848

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 2, metadata !2836, metadata !DIExpression()), !dbg !2839
  %48 = icmp ult i32 %41, 41, !dbg !2842
  br i1 %48, label %52, label %49, !dbg !2842

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2842
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2842
  store i8* %51, i8** %9, align 8, !dbg !2842
  br label %57, !dbg !2842

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2842
  %54 = zext i32 %41 to i64, !dbg !2842
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2842
  %56 = add nuw nsw i32 %41, 8, !dbg !2842
  store i32 %56, i32* %8, align 8, !dbg !2842
  br label %57, !dbg !2842

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2842
  %61 = load i8*, i8** %60, align 8, !dbg !2842
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2845
  store i8* %61, i8** %62, align 16, !dbg !2846, !tbaa !657
  %63 = icmp eq i8* %61, null, !dbg !2847
  br i1 %63, label %30, label %64, !dbg !2848

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 3, metadata !2836, metadata !DIExpression()), !dbg !2839
  %65 = icmp ult i32 %58, 41, !dbg !2842
  br i1 %65, label %69, label %66, !dbg !2842

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2842
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2842
  store i8* %68, i8** %9, align 8, !dbg !2842
  br label %74, !dbg !2842

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2842
  %71 = zext i32 %58 to i64, !dbg !2842
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2842
  %73 = add nuw nsw i32 %58, 8, !dbg !2842
  store i32 %73, i32* %8, align 8, !dbg !2842
  br label %74, !dbg !2842

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2842
  %78 = load i8*, i8** %77, align 8, !dbg !2842
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2845
  store i8* %78, i8** %79, align 8, !dbg !2846, !tbaa !657
  %80 = icmp eq i8* %78, null, !dbg !2847
  br i1 %80, label %30, label %81, !dbg !2848

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 4, metadata !2836, metadata !DIExpression()), !dbg !2839
  %82 = icmp ult i32 %75, 41, !dbg !2842
  br i1 %82, label %86, label %83, !dbg !2842

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2842
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2842
  store i8* %85, i8** %9, align 8, !dbg !2842
  br label %91, !dbg !2842

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2842
  %88 = zext i32 %75 to i64, !dbg !2842
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2842
  %90 = add nuw nsw i32 %75, 8, !dbg !2842
  store i32 %90, i32* %8, align 8, !dbg !2842
  br label %91, !dbg !2842

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2842
  %95 = load i8*, i8** %94, align 8, !dbg !2842
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2845
  store i8* %95, i8** %96, align 16, !dbg !2846, !tbaa !657
  %97 = icmp eq i8* %95, null, !dbg !2847
  br i1 %97, label %30, label %98, !dbg !2848

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2836, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 5, metadata !2836, metadata !DIExpression()), !dbg !2839
  %99 = icmp ult i32 %92, 41, !dbg !2842
  br i1 %99, label %103, label %100, !dbg !2842

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2842
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2842
  store i8* %102, i8** %9, align 8, !dbg !2842
  br label %108, !dbg !2842

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2842
  %105 = zext i32 %92 to i64, !dbg !2842
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2842
  %107 = add nuw nsw i32 %92, 8, !dbg !2842
  store i32 %107, i32* %8, align 8, !dbg !2842
  br label %108, !dbg !2842

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2842
  %111 = load i8*, i8** %110, align 8, !dbg !2842
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2845
  store i8* %111, i8** %112, align 8, !dbg !2846, !tbaa !657
  %113 = icmp eq i8* %111, null, !dbg !2847
  br i1 %113, label %30, label %114, !dbg !2848

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2836, metadata !DIExpression()), !dbg !2839
  %115 = load i8*, i8** %9, align 8, !dbg !2842
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2842
  store i8* %116, i8** %9, align 8, !dbg !2842
  %117 = bitcast i8* %115 to i8**, !dbg !2842
  %118 = load i8*, i8** %117, align 8, !dbg !2842
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2845
  store i8* %118, i8** %119, align 16, !dbg !2846, !tbaa !657
  %120 = icmp eq i8* %118, null, !dbg !2847
  br i1 %120, label %30, label %121, !dbg !2848

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2836, metadata !DIExpression()), !dbg !2839
  %122 = load i8*, i8** %9, align 8, !dbg !2842
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2842
  store i8* %123, i8** %9, align 8, !dbg !2842
  %124 = bitcast i8* %122 to i8**, !dbg !2842
  %125 = load i8*, i8** %124, align 8, !dbg !2842
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2845
  store i8* %125, i8** %126, align 8, !dbg !2846, !tbaa !657
  %127 = icmp eq i8* %125, null, !dbg !2847
  br i1 %127, label %30, label %128, !dbg !2848

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2836, metadata !DIExpression()), !dbg !2839
  %129 = load i8*, i8** %9, align 8, !dbg !2842
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2842
  store i8* %130, i8** %9, align 8, !dbg !2842
  %131 = bitcast i8* %129 to i8**, !dbg !2842
  %132 = load i8*, i8** %131, align 8, !dbg !2842
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2845
  store i8* %132, i8** %133, align 16, !dbg !2846, !tbaa !657
  %134 = icmp eq i8* %132, null, !dbg !2847
  br i1 %134, label %30, label %135, !dbg !2848

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2836, metadata !DIExpression()), !dbg !2839
  %136 = load i8*, i8** %9, align 8, !dbg !2842
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2842
  store i8* %137, i8** %9, align 8, !dbg !2842
  %138 = bitcast i8* %136 to i8**, !dbg !2842
  %139 = load i8*, i8** %138, align 8, !dbg !2842
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2845
  store i8* %139, i8** %140, align 8, !dbg !2846, !tbaa !657
  %141 = icmp eq i8* %139, null, !dbg !2847
  %142 = select i1 %141, i64 9, i64 10, !dbg !2848
  br label %30, !dbg !2848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2852 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2856, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %1, metadata !2857, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %2, metadata !2858, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i8* %3, metadata !2859, metadata !DIExpression()), !dbg !2866
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2867
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2867
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2860, metadata !DIExpression()), !dbg !2868
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2869
  call void @llvm.va_start(i8* nonnull %6), !dbg !2869
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2870
  call void @llvm.va_end(i8* nonnull %6), !dbg !2871
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2872
  ret void, !dbg !2872
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2873 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2874, !tbaa !657
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2874
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #25, !dbg !2875
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.95, i64 0, i64 0)) #25, !dbg !2875
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.96, i64 0, i64 0), i32 5) #25, !dbg !2876
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.98, i64 0, i64 0)) #25, !dbg !2876
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.99, i64 0, i64 0), i32 5) #25, !dbg !2877
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.100, i64 0, i64 0)) #25, !dbg !2877
  ret void, !dbg !2878
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !2879 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2883, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %1, metadata !2884, metadata !DIExpression()), !dbg !2885
  %3 = udiv i64 9223372036854775807, %1, !dbg !2886
  %4 = icmp ult i64 %3, %0, !dbg !2886
  br i1 %4, label %5, label %6, !dbg !2888

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2889
  unreachable, !dbg !2889

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %7, metadata !2891, metadata !DIExpression()) #25, !dbg !2897
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %8, metadata !2896, metadata !DIExpression()) #25, !dbg !2897
  %9 = icmp eq i8* %8, null, !dbg !2900
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2902
  br i1 %11, label %12, label %13, !dbg !2902

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !2903
  unreachable, !dbg !2903

13:                                               ; preds = %6
  ret i8* %8, !dbg !2904
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2892 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2891, metadata !DIExpression()), !dbg !2905
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %2, metadata !2896, metadata !DIExpression()), !dbg !2905
  %3 = icmp eq i8* %2, null, !dbg !2907
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2908
  br i1 %5, label %6, label %7, !dbg !2908

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2909
  unreachable, !dbg !2909

7:                                                ; preds = %1
  ret i8* %2, !dbg !2910
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !2911 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i64 %2, metadata !2917, metadata !DIExpression()), !dbg !2918
  %4 = udiv i64 9223372036854775807, %2, !dbg !2919
  %5 = icmp ult i64 %4, %1, !dbg !2919
  br i1 %5, label %6, label %7, !dbg !2921

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !2922
  unreachable, !dbg !2922

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2923
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()) #25, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %8, metadata !2929, metadata !DIExpression()) #25, !dbg !2930
  %9 = icmp eq i64 %8, 0, !dbg !2932
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2934
  br i1 %11, label %12, label %13, !dbg !2934

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !2935
  br label %19, !dbg !2937

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %14, metadata !2924, metadata !DIExpression()) #25, !dbg !2930
  %15 = icmp eq i8* %14, null, !dbg !2939
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2941
  br i1 %17, label %18, label %19, !dbg !2941

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2942
  unreachable, !dbg !2942

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2930
  ret i8* %20, !dbg !2943
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2925 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2944
  %3 = icmp eq i64 %1, 0, !dbg !2945
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2946
  br i1 %5, label %6, label %7, !dbg !2946

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !2947
  br label %13, !dbg !2948

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %8, metadata !2924, metadata !DIExpression()), !dbg !2944
  %9 = icmp eq i8* %8, null, !dbg !2950
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2951
  br i1 %11, label %12, label %13, !dbg !2951

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2952
  unreachable, !dbg !2952

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2944
  ret i8* %14, !dbg !2953
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !188, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64* %1, metadata !189, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %2, metadata !190, metadata !DIExpression()), !dbg !2954
  %4 = load i64, i64* %1, align 8, !dbg !2955, !tbaa !2166
  call void @llvm.dbg.value(metadata i64 %4, metadata !191, metadata !DIExpression()), !dbg !2954
  %5 = icmp eq i8* %0, null, !dbg !2956
  br i1 %5, label %6, label %20, !dbg !2958

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2959
  br i1 %7, label %8, label %13, !dbg !2962

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %9, metadata !191, metadata !DIExpression()), !dbg !2954
  %10 = icmp ugt i64 %2, 128, !dbg !2965
  %11 = zext i1 %10 to i64, !dbg !2965
  %12 = add nuw nsw i64 %9, %11, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %12, metadata !191, metadata !DIExpression()), !dbg !2954
  br label %13, !dbg !2967

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2954
  call void @llvm.dbg.value(metadata i64 %14, metadata !191, metadata !DIExpression()), !dbg !2954
  %15 = udiv i64 9223372036854775807, %2, !dbg !2968
  %16 = icmp ult i64 %15, %14, !dbg !2968
  br i1 %16, label %19, label %17, !dbg !2970

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !191, metadata !DIExpression()), !dbg !2954
  store i64 %14, i64* %1, align 8, !dbg !2971, !tbaa !2166
  %18 = mul i64 %14, %2, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()) #25, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %28, metadata !2929, metadata !DIExpression()) #25, !dbg !2973
  br label %31, !dbg !2975

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2976
  unreachable, !dbg !2976

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2977
  %22 = icmp ugt i64 %21, %4, !dbg !2980
  br i1 %22, label %24, label %23, !dbg !2981

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !2982
  unreachable, !dbg !2982

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2983
  %26 = add nuw i64 %4, 1, !dbg !2984
  %27 = add i64 %26, %25, !dbg !2985
  call void @llvm.dbg.value(metadata i64 %27, metadata !191, metadata !DIExpression()), !dbg !2954
  store i64 %27, i64* %1, align 8, !dbg !2971, !tbaa !2166
  %28 = mul i64 %27, %2, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()) #25, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %28, metadata !2929, metadata !DIExpression()) #25, !dbg !2973
  %29 = icmp eq i64 %28, 0, !dbg !2986
  br i1 %29, label %30, label %31, !dbg !2975

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !2987
  br label %38, !dbg !2988

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %33, metadata !2924, metadata !DIExpression()) #25, !dbg !2973
  %34 = icmp eq i8* %33, null, !dbg !2990
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2991
  br i1 %36, label %37, label %38, !dbg !2991

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !2992
  unreachable, !dbg !2992

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2973
  ret i8* %39, !dbg !2993
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !2994 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2996, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %0, metadata !2891, metadata !DIExpression()) #25, !dbg !2998
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %2, metadata !2896, metadata !DIExpression()) #25, !dbg !2998
  %3 = icmp eq i8* %2, null, !dbg !3001
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3002
  br i1 %5, label %6, label %7, !dbg !3002

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3003
  unreachable, !dbg !3003

7:                                                ; preds = %1
  ret i8* %2, !dbg !3004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3005 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64* %1, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i8* %0, metadata !188, metadata !DIExpression()) #25, !dbg !3012
  call void @llvm.dbg.value(metadata i64* %1, metadata !189, metadata !DIExpression()) #25, !dbg !3012
  call void @llvm.dbg.value(metadata i64 1, metadata !190, metadata !DIExpression()) #25, !dbg !3012
  %3 = load i64, i64* %1, align 8, !dbg !3014, !tbaa !2166
  call void @llvm.dbg.value(metadata i64 %3, metadata !191, metadata !DIExpression()) #25, !dbg !3012
  %4 = icmp eq i8* %0, null, !dbg !3015
  br i1 %4, label %5, label %10, !dbg !3016

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3017
  br i1 %6, label %17, label %7, !dbg !3018

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !191, metadata !DIExpression()) #25, !dbg !3012
  %8 = icmp slt i64 %3, 0, !dbg !3019
  br i1 %8, label %9, label %17, !dbg !3020

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3021
  unreachable, !dbg !3021

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3022
  br i1 %11, label %13, label %12, !dbg !3023

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !3024
  unreachable, !dbg !3024

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3025
  %15 = add nuw nsw i64 %3, 1, !dbg !3026
  %16 = add nuw nsw i64 %15, %14, !dbg !3027
  call void @llvm.dbg.value(metadata i64 %16, metadata !191, metadata !DIExpression()) #25, !dbg !3012
  call void @llvm.dbg.value(metadata i8* %0, metadata !2924, metadata !DIExpression()) #25, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %16, metadata !2929, metadata !DIExpression()) #25, !dbg !3028
  br label %17, !dbg !3030

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3031
  store i64 %18, i64* %1, align 8, !dbg !3031, !tbaa !2166
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %19, metadata !2924, metadata !DIExpression()) #25, !dbg !3028
  %20 = icmp eq i8* %19, null, !dbg !3033
  br i1 %20, label %21, label %22, !dbg !3034

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !3035
  unreachable, !dbg !3035

22:                                               ; preds = %17
  ret i8* %19, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3037 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %0, metadata !3041, metadata !DIExpression()) #25, !dbg !3046
  call void @llvm.dbg.value(metadata i64 1, metadata !3044, metadata !DIExpression()) #25, !dbg !3046
  %2 = icmp slt i64 %0, 0, !dbg !3048
  br i1 %2, label %6, label %3, !dbg !3050

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %4, metadata !3045, metadata !DIExpression()) #25, !dbg !3046
  %5 = icmp eq i8* %4, null, !dbg !3052
  br i1 %5, label %6, label %7, !dbg !3053

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !3054
  unreachable, !dbg !3054

7:                                                ; preds = %3
  ret i8* %4, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3042 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3041, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %1, metadata !3044, metadata !DIExpression()), !dbg !3056
  %3 = udiv i64 9223372036854775807, %1, !dbg !3057
  %4 = icmp ult i64 %3, %0, !dbg !3057
  br i1 %4, label %8, label %5, !dbg !3058

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %6, metadata !3045, metadata !DIExpression()), !dbg !3056
  %7 = icmp eq i8* %6, null, !dbg !3060
  br i1 %7, label %8, label %9, !dbg !3061

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !3062
  unreachable, !dbg !3062

9:                                                ; preds = %5
  ret i8* %6, !dbg !3063
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3064 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()) #25, !dbg !3073
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %3, metadata !2896, metadata !DIExpression()) #25, !dbg !3073
  %4 = icmp eq i8* %3, null, !dbg !3076
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3077
  br i1 %6, label %7, label %8, !dbg !3077

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3078
  unreachable, !dbg !3078

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3079, metadata !DIExpression()) #25, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %0, metadata !3086, metadata !DIExpression()) #25, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()) #25, !dbg !3088
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !3090
  ret i8* %3, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3092 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3094, metadata !DIExpression()), !dbg !3095
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !3096
  %3 = add i64 %2, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()) #25, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %3, metadata !3071, metadata !DIExpression()) #25, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %3, metadata !2891, metadata !DIExpression()) #25, !dbg !3100
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !3102
  call void @llvm.dbg.value(metadata i8* %4, metadata !2896, metadata !DIExpression()) #25, !dbg !3100
  %5 = icmp eq i8* %4, null, !dbg !3103
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3104
  br i1 %7, label %8, label %9, !dbg !3104

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3105
  unreachable, !dbg !3105

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3079, metadata !DIExpression()) #25, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %0, metadata !3086, metadata !DIExpression()) #25, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %3, metadata !3087, metadata !DIExpression()) #25, !dbg !3106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !3108
  ret i8* %4, !dbg !3109
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3110 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3111, !tbaa !831
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.111, i64 0, i64 0), i32 5) #25, !dbg !3112
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i64 0, i64 0), i8* %2) #25, !dbg !3113
  tail call void @abort() #27, !dbg !3114
  unreachable, !dbg !3114
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8* %0, i32 %1, i32** %2) local_unnamed_addr #8 !dbg !3115 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32 %1, metadata !3118, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i32** %2, metadata !3119, metadata !DIExpression()), !dbg !3121
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #25, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %4, metadata !3120, metadata !DIExpression()), !dbg !3121
  %5 = icmp eq i32 %4, -1, !dbg !3123
  br i1 %5, label %6, label %11, !dbg !3125

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #29, !dbg !3126
  %8 = load i32, i32* %7, align 4, !dbg !3126, !tbaa !831
  %9 = icmp eq i32 %8, 12, !dbg !3127
  br i1 %9, label %10, label %11, !dbg !3128

10:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !3129
  unreachable, !dbg !3129

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3130
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3131 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3133, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3139
  %3 = icmp eq i64 %0, 0, !dbg !3140
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3141
  br i1 %5, label %11, label %6, !dbg !3141

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3136, metadata !DIExpression()), !dbg !3142
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3143
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3143
  br i1 %8, label %9, label %11, !dbg !3145

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #29, !dbg !3146
  store i32 12, i32* %10, align 4, !dbg !3148, !tbaa !831
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3133, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %12, metadata !3134, metadata !DIExpression()), !dbg !3139
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !3149
  call void @llvm.dbg.value(metadata i8* %14, metadata !3135, metadata !DIExpression()), !dbg !3139
  br label %15, !dbg !3150

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3139
  ret i8* %16, !dbg !3151
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3152 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3168, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3169, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i64 %2, metadata !3170, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3171, metadata !DIExpression()), !dbg !3177
  %6 = bitcast i32* %5 to i8*, !dbg !3178
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3178
  %7 = icmp eq i32* %0, null, !dbg !3179
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3181
  call void @llvm.dbg.value(metadata i32* %8, metadata !3168, metadata !DIExpression()), !dbg !3177
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %9, metadata !3172, metadata !DIExpression()), !dbg !3177
  %10 = icmp ugt i64 %9, -3, !dbg !3183
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3184
  br i1 %12, label %13, label %18, !dbg !3184

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !3185
  br i1 %14, label %18, label %15, !dbg !3186

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3187, !tbaa !881
  call void @llvm.dbg.value(metadata i8 %16, metadata !3174, metadata !DIExpression()), !dbg !3188
  %17 = zext i8 %16 to i32, !dbg !3189
  store i32 %17, i32* %8, align 4, !dbg !3190, !tbaa !831
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3177
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3191
  ret i64 %19, !dbg !3191
}

; Function Attrs: nounwind
declare !dbg !3192 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3196 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3234, metadata !DIExpression()), !dbg !3239
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !3240
  call void @llvm.dbg.value(metadata i1 undef, metadata !3235, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3239
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3241, metadata !DIExpression()), !dbg !3244
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3246
  %4 = load i32, i32* %3, align 8, !dbg !3246, !tbaa !3247
  %5 = and i32 %4, 32, !dbg !3248
  %6 = icmp eq i32 %5, 0, !dbg !3248
  call void @llvm.dbg.value(metadata i1 %6, metadata !3237, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3239
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !3249
  %8 = icmp eq i32 %7, 0, !dbg !3250
  call void @llvm.dbg.value(metadata i1 %8, metadata !3238, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3239
  br i1 %6, label %9, label %19, !dbg !3251

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3253
  call void @llvm.dbg.value(metadata i1 %10, metadata !3235, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3239
  %11 = or i1 %10, %8, !dbg !3254
  %12 = xor i1 %8, true, !dbg !3254
  %13 = sext i1 %12 to i32, !dbg !3254
  br i1 %11, label %22, label %14, !dbg !3254

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #29, !dbg !3255
  %16 = load i32, i32* %15, align 4, !dbg !3255, !tbaa !831
  %17 = icmp ne i32 %16, 9, !dbg !3256
  %18 = sext i1 %17 to i32, !dbg !3257
  br label %22, !dbg !3257

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3258

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #29, !dbg !3260
  store i32 0, i32* %21, align 4, !dbg !3262, !tbaa !831
  br label %22, !dbg !3260

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3239
  ret i32 %23, !dbg !3263
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3264 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3268, metadata !DIExpression()), !dbg !3273
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3274
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3274
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3269, metadata !DIExpression()), !dbg !3275
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !3276
  %5 = icmp eq i32 %4, 0, !dbg !3276
  br i1 %5, label %6, label %13, !dbg !3278

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3279
  %8 = load i16, i16* %7, align 16, !dbg !3279
  %9 = icmp eq i16 %8, 67, !dbg !3279
  br i1 %9, label %13, label %10, !dbg !3280

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i64 6), !dbg !3281
  %12 = icmp ne i32 %11, 0, !dbg !3282
  br label %13, !dbg !3280

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3273
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3283
  ret i1 %14, !dbg !3283
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3284 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !3289
  call void @llvm.dbg.value(metadata i8* %1, metadata !3288, metadata !DIExpression()), !dbg !3290
  %2 = icmp eq i8* %1, null, !dbg !3291
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* %1, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %3, metadata !3288, metadata !DIExpression()), !dbg !3290
  %4 = load i8, i8* %3, align 1, !dbg !3294, !tbaa !881
  %5 = icmp eq i8 %4, 0, !dbg !3298
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i8* %3, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %6, metadata !3288, metadata !DIExpression()), !dbg !3290
  ret i8* %6, !dbg !3300
}

; Function Attrs: nounwind
declare !dbg !3301 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8* %0, i32 %1, i32** nocapture %2) local_unnamed_addr #8 !dbg !601 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !607, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %1, metadata !608, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32** %2, metadata !609, metadata !DIExpression()), !dbg !3304
  %5 = bitcast i32* %4 to i8*, !dbg !3305
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #25, !dbg !3305
  %6 = icmp eq i8* %0, null, !dbg !3306
  br i1 %6, label %40, label %7, !dbg !3307

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !610, metadata !DIExpression()), !dbg !3304
  store i32 10, i32* %4, align 4, !dbg !3308, !tbaa !831
  call void @llvm.dbg.value(metadata i32* null, metadata !3309, metadata !DIExpression()) #25, !dbg !3315
  call void @llvm.dbg.value(metadata i64 10, metadata !3314, metadata !DIExpression()) #25, !dbg !3315
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %8, metadata !612, metadata !DIExpression()), !dbg !3304
  %9 = icmp eq i8* %8, null, !dbg !3318
  br i1 %9, label %141, label %10, !dbg !3320

10:                                               ; preds = %7, %36
  %11 = phi i32 [ %22, %36 ], [ 10, %7 ], !dbg !3321
  %12 = phi i8* [ %29, %36 ], [ %8, %7 ]
  %13 = bitcast i8* %12 to i32*, !dbg !3322
  call void @llvm.dbg.value(metadata i32* %13, metadata !612, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %11, metadata !617, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32* %4, metadata !610, metadata !DIExpression(DW_OP_deref)), !dbg !3304
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #25, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %14, metadata !611, metadata !DIExpression()), !dbg !3304
  %15 = icmp slt i32 %14, 0, !dbg !3325
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %11, %16
  %18 = and i1 %15, %17, !dbg !3327
  call void @llvm.dbg.value(metadata i32 %16, metadata !610, metadata !DIExpression()), !dbg !3304
  br i1 %18, label %19, label %21, !dbg !3327

19:                                               ; preds = %10
  %20 = shl nuw nsw i32 %11, 1, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %20, metadata !610, metadata !DIExpression()), !dbg !3304
  store i32 %20, i32* %4, align 4, !dbg !3328, !tbaa !831
  br label %21, !dbg !3329

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !3330
  call void @llvm.dbg.value(metadata i32 %22, metadata !610, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %13, metadata !3309, metadata !DIExpression()) #25, !dbg !3331
  call void @llvm.dbg.value(metadata i32 %22, metadata !3314, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !3331
  %23 = icmp slt i32 %22, 0, !dbg !3333
  br i1 %23, label %24, label %26, !dbg !3335

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #29, !dbg !3336
  store i32 12, i32* %25, align 4, !dbg !3338, !tbaa !831
  call void @llvm.dbg.value(metadata i8* %29, metadata !613, metadata !DIExpression()), !dbg !3323
  br label %33, !dbg !3339

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %27, metadata !3314, metadata !DIExpression()) #25, !dbg !3331
  %28 = shl nuw nsw i64 %27, 2, !dbg !3340
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #25, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %29, metadata !613, metadata !DIExpression()), !dbg !3323
  %30 = icmp eq i8* %29, null, !dbg !3342
  br i1 %30, label %31, label %36, !dbg !3339

31:                                               ; preds = %26
  %32 = tail call i32* @__errno_location() #29, !dbg !3343
  br label %33, !dbg !3343

33:                                               ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !3343
  %35 = load i32, i32* %34, align 4, !dbg !3343, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %35, metadata !618, metadata !DIExpression()), !dbg !3344
  call void @free(i8* nonnull %12) #25, !dbg !3345
  store i32 %35, i32* %34, align 4, !dbg !3346, !tbaa !831
  br label %141

36:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !613, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %29, metadata !612, metadata !DIExpression()), !dbg !3304
  %37 = icmp sgt i32 %14, -1, !dbg !3347
  br i1 %37, label %38, label %10, !dbg !3349

38:                                               ; preds = %36
  %39 = bitcast i32** %2 to i8**, !dbg !3350
  store i8* %29, i8** %39, align 8, !dbg !3350, !tbaa !657
  call void @llvm.dbg.value(metadata i32 %22, metadata !610, metadata !DIExpression()), !dbg !3304
  br label %141, !dbg !3352

40:                                               ; preds = %3
  %41 = tail call i32 @getgroups(i32 0, i32* null) #25, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %41, metadata !610, metadata !DIExpression()), !dbg !3304
  store i32 %41, i32* %4, align 4, !dbg !3354, !tbaa !831
  %42 = icmp slt i32 %41, 0, !dbg !3355
  br i1 %42, label %43, label %55, !dbg !3357

43:                                               ; preds = %40
  %44 = tail call i32* @__errno_location() #29, !dbg !3358
  %45 = load i32, i32* %44, align 4, !dbg !3358, !tbaa !831
  %46 = icmp eq i32 %45, 38, !dbg !3361
  br i1 %46, label %47, label %141, !dbg !3362

47:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i32* null, metadata !3309, metadata !DIExpression()) #25, !dbg !3363
  call void @llvm.dbg.value(metadata i64 1, metadata !3314, metadata !DIExpression()) #25, !dbg !3363
  %48 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !3365
  call void @llvm.dbg.value(metadata i8* %48, metadata !612, metadata !DIExpression()), !dbg !3304
  %49 = icmp eq i8* %48, null, !dbg !3366
  br i1 %49, label %141, label %50, !dbg !3367

50:                                               ; preds = %47
  %51 = bitcast i8* %48 to i32*, !dbg !3365
  call void @llvm.dbg.value(metadata i32* %51, metadata !612, metadata !DIExpression()), !dbg !3304
  %52 = bitcast i32** %2 to i8**, !dbg !3368
  store i8* %48, i8** %52, align 8, !dbg !3368, !tbaa !657
  store i32 %1, i32* %51, align 4, !dbg !3370, !tbaa !831
  %53 = icmp ne i32 %1, -1, !dbg !3371
  %54 = zext i1 %53 to i32, !dbg !3371
  br label %141, !dbg !3372

55:                                               ; preds = %40
  %56 = icmp ne i32 %41, 0, !dbg !3373
  %57 = icmp eq i32 %1, -1
  %58 = and i1 %57, %56, !dbg !3375
  br i1 %58, label %61, label %59, !dbg !3375

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 %41, metadata !610, metadata !DIExpression()), !dbg !3304
  %60 = add nuw nsw i32 %41, 1, !dbg !3376
  call void @llvm.dbg.value(metadata i32 %60, metadata !610, metadata !DIExpression()), !dbg !3304
  store i32 %60, i32* %4, align 4, !dbg !3376, !tbaa !831
  br label %61, !dbg !3377

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %41, %55 ], [ %60, %59 ], !dbg !3378
  call void @llvm.dbg.value(metadata i32 %62, metadata !610, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* null, metadata !3309, metadata !DIExpression()) #25, !dbg !3379
  call void @llvm.dbg.value(metadata i32 %62, metadata !3314, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #25, !dbg !3379
  %63 = zext i32 %62 to i64, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %63, metadata !3314, metadata !DIExpression()) #25, !dbg !3379
  %64 = shl nuw nsw i64 %63, 2, !dbg !3381
  %65 = tail call i8* @malloc(i64 %64), !dbg !3382
  %66 = bitcast i8* %65 to i32*, !dbg !3382
  call void @llvm.dbg.value(metadata i32* %66, metadata !612, metadata !DIExpression()), !dbg !3304
  %67 = icmp eq i8* %65, null, !dbg !3383
  br i1 %67, label %141, label %68, !dbg !3385

68:                                               ; preds = %61
  call void @llvm.dbg.value(metadata i32 %62, metadata !610, metadata !DIExpression()), !dbg !3304
  %69 = icmp ne i32 %1, -1, !dbg !3386
  %70 = sext i1 %69 to i32, !dbg !3386
  %71 = add nsw i32 %62, %70, !dbg !3387
  %72 = zext i1 %69 to i64, !dbg !3388
  %73 = getelementptr inbounds i32, i32* %66, i64 %72, !dbg !3388
  %74 = tail call i32 @getgroups(i32 %71, i32* nonnull %73) #25, !dbg !3389
  call void @llvm.dbg.value(metadata i32 %74, metadata !611, metadata !DIExpression()), !dbg !3304
  %75 = icmp slt i32 %74, 0, !dbg !3390
  br i1 %75, label %76, label %79, !dbg !3391

76:                                               ; preds = %68
  %77 = tail call i32* @__errno_location() #29, !dbg !3392
  %78 = load i32, i32* %77, align 4, !dbg !3392, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %78, metadata !621, metadata !DIExpression()), !dbg !3393
  tail call void @free(i8* nonnull %65) #25, !dbg !3394
  store i32 %78, i32* %77, align 4, !dbg !3395, !tbaa !831
  br label %141

79:                                               ; preds = %68
  br i1 %57, label %82, label %80, !dbg !3396

80:                                               ; preds = %79
  store i32 %1, i32* %66, align 4, !dbg !3398, !tbaa !831
  %81 = add nuw nsw i32 %74, 1, !dbg !3400
  call void @llvm.dbg.value(metadata i32 %81, metadata !611, metadata !DIExpression()), !dbg !3304
  br label %82, !dbg !3401

82:                                               ; preds = %80, %79
  %83 = phi i32 [ %81, %80 ], [ %74, %79 ], !dbg !3304
  call void @llvm.dbg.value(metadata i32 %83, metadata !611, metadata !DIExpression()), !dbg !3304
  %84 = bitcast i32** %2 to i8**, !dbg !3402
  store i8* %65, i8** %84, align 8, !dbg !3402, !tbaa !657
  %85 = icmp sgt i32 %83, 1, !dbg !3403
  br i1 %85, label %86, label %141, !dbg !3404

86:                                               ; preds = %82
  %87 = load i32, i32* %66, align 4, !dbg !3405, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %87, metadata !624, metadata !DIExpression()), !dbg !3406
  %88 = zext i32 %83 to i64, !dbg !3407
  %89 = getelementptr inbounds i32, i32* %66, i64 %88, !dbg !3407
  call void @llvm.dbg.value(metadata i32* %89, metadata !628, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32* %66, metadata !627, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3406
  %90 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !3408
  %91 = bitcast i8* %90 to i32*, !dbg !3408
  call void @llvm.dbg.value(metadata i32* %91, metadata !627, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %83, metadata !611, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %66, metadata !612, metadata !DIExpression()), !dbg !3304
  %92 = icmp ugt i32* %89, %91, !dbg !3410
  br i1 %92, label %93, label %141, !dbg !3412

93:                                               ; preds = %86
  %94 = shl nuw nsw i64 %88, 2, !dbg !3412
  %95 = add nsw i64 %94, -5, !dbg !3412
  %96 = and i64 %95, 4, !dbg !3412
  %97 = icmp eq i64 %96, 0, !dbg !3412
  br i1 %97, label %98, label %112, !dbg !3412

98:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i32 %83, metadata !611, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %66, metadata !612, metadata !DIExpression()), !dbg !3304
  %99 = load i32, i32* %91, align 4, !dbg !3413, !tbaa !831
  %100 = icmp eq i32 %99, %87
  br i1 %100, label %104, label %101, !dbg !3416

101:                                              ; preds = %98
  %102 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !3417
  %103 = bitcast i8* %102 to i32*, !dbg !3417
  call void @llvm.dbg.value(metadata i32* %103, metadata !612, metadata !DIExpression()), !dbg !3304
  store i32 %99, i32* %103, align 4, !dbg !3418, !tbaa !831
  br label %106

104:                                              ; preds = %98
  %105 = add nsw i32 %83, -1, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %105, metadata !611, metadata !DIExpression()), !dbg !3304
  br label %106, !dbg !3420

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %87, %104 ], [ %99, %101 ]
  %108 = phi i32* [ %66, %104 ], [ %103, %101 ], !dbg !3304
  %109 = phi i32 [ %105, %104 ], [ %83, %101 ], !dbg !3304
  call void @llvm.dbg.value(metadata i32 %109, metadata !611, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %108, metadata !612, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %91, metadata !627, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3406
  %110 = getelementptr inbounds i8, i8* %65, i64 8, !dbg !3408
  %111 = bitcast i8* %110 to i32*, !dbg !3408
  call void @llvm.dbg.value(metadata i32* %111, metadata !627, metadata !DIExpression()), !dbg !3406
  br label %112, !dbg !3412

112:                                              ; preds = %106, %93
  %113 = phi i32 [ %87, %93 ], [ %107, %106 ]
  %114 = phi i32* [ %91, %93 ], [ %111, %106 ]
  %115 = phi i32 [ %83, %93 ], [ %109, %106 ]
  %116 = phi i32* [ %66, %93 ], [ %108, %106 ]
  %117 = phi i32 [ undef, %93 ], [ %109, %106 ]
  %118 = icmp eq i64 %95, 3, !dbg !3412
  br i1 %118, label %141, label %119, !dbg !3412

119:                                              ; preds = %112, %147
  %120 = phi i32 [ %148, %147 ], [ %113, %112 ]
  %121 = phi i32* [ %151, %147 ], [ %114, %112 ]
  %122 = phi i32 [ %150, %147 ], [ %115, %112 ]
  %123 = phi i32* [ %149, %147 ], [ %116, %112 ]
  call void @llvm.dbg.value(metadata i32 %122, metadata !611, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %123, metadata !612, metadata !DIExpression()), !dbg !3304
  %124 = load i32, i32* %121, align 4, !dbg !3413, !tbaa !831
  %125 = icmp eq i32 %124, %87, !dbg !3421
  %126 = icmp eq i32 %124, %120
  %127 = or i1 %125, %126, !dbg !3416
  br i1 %127, label %128, label %130, !dbg !3416

128:                                              ; preds = %119
  %129 = add nsw i32 %122, -1, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %129, metadata !611, metadata !DIExpression()), !dbg !3304
  br label %132, !dbg !3420

130:                                              ; preds = %119
  %131 = getelementptr inbounds i32, i32* %123, i64 1, !dbg !3417
  call void @llvm.dbg.value(metadata i32* %131, metadata !612, metadata !DIExpression()), !dbg !3304
  store i32 %124, i32* %131, align 4, !dbg !3418, !tbaa !831
  br label %132

132:                                              ; preds = %128, %130
  %133 = phi i32 [ %120, %128 ], [ %124, %130 ]
  %134 = phi i32* [ %123, %128 ], [ %131, %130 ], !dbg !3304
  %135 = phi i32 [ %129, %128 ], [ %122, %130 ], !dbg !3304
  call void @llvm.dbg.value(metadata i32 %135, metadata !611, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %134, metadata !612, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %121, metadata !627, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3406
  %136 = getelementptr inbounds i32, i32* %121, i64 1, !dbg !3408
  call void @llvm.dbg.value(metadata i32* %136, metadata !627, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %135, metadata !611, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %134, metadata !612, metadata !DIExpression()), !dbg !3304
  %137 = load i32, i32* %136, align 4, !dbg !3413, !tbaa !831
  %138 = icmp eq i32 %137, %87, !dbg !3421
  %139 = icmp eq i32 %137, %133
  %140 = or i1 %138, %139, !dbg !3416
  br i1 %140, label %145, label %143, !dbg !3416

141:                                              ; preds = %112, %147, %86, %33, %38, %82, %61, %43, %47, %7, %76, %50
  %142 = phi i32 [ %54, %50 ], [ -1, %76 ], [ -1, %7 ], [ -1, %47 ], [ -1, %43 ], [ -1, %61 ], [ %83, %82 ], [ -1, %33 ], [ %22, %38 ], [ %83, %86 ], [ %117, %112 ], [ %150, %147 ], !dbg !3304
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #25, !dbg !3422
  ret i32 %142, !dbg !3422

143:                                              ; preds = %132
  %144 = getelementptr inbounds i32, i32* %134, i64 1, !dbg !3417
  call void @llvm.dbg.value(metadata i32* %144, metadata !612, metadata !DIExpression()), !dbg !3304
  store i32 %137, i32* %144, align 4, !dbg !3418, !tbaa !831
  br label %147

145:                                              ; preds = %132
  %146 = add nsw i32 %135, -1, !dbg !3419
  call void @llvm.dbg.value(metadata i32 %146, metadata !611, metadata !DIExpression()), !dbg !3304
  br label %147, !dbg !3420

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %133, %145 ], [ %137, %143 ]
  %149 = phi i32* [ %134, %145 ], [ %144, %143 ], !dbg !3304
  %150 = phi i32 [ %146, %145 ], [ %135, %143 ], !dbg !3304
  call void @llvm.dbg.value(metadata i32 %150, metadata !611, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %149, metadata !612, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32* %136, metadata !627, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3406
  %151 = getelementptr inbounds i32, i32* %121, i64 2, !dbg !3408
  call void @llvm.dbg.value(metadata i32* %151, metadata !627, metadata !DIExpression()), !dbg !3406
  %152 = icmp ult i32* %151, %89, !dbg !3410
  br i1 %152, label %119, label %141, !dbg !3412, !llvm.loop !3423
}

declare !dbg !3425 i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3428 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3432, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i8* %1, metadata !3433, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %2, metadata !3434, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %0, metadata !3436, metadata !DIExpression()) #25, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %1, metadata !3439, metadata !DIExpression()) #25, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %2, metadata !3440, metadata !DIExpression()) #25, !dbg !3445
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()) #25, !dbg !3453
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3455
  call void @llvm.dbg.value(metadata i8* %4, metadata !3452, metadata !DIExpression()) #25, !dbg !3453
  call void @llvm.dbg.value(metadata i8* %4, metadata !3441, metadata !DIExpression()) #25, !dbg !3445
  %5 = icmp eq i8* %4, null, !dbg !3456
  br i1 %5, label %6, label %9, !dbg !3457

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3458
  br i1 %7, label %19, label %8, !dbg !3461

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3462, !tbaa !881
  br label %19, !dbg !3463

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %10, metadata !3442, metadata !DIExpression()) #25, !dbg !3465
  %11 = icmp ult i64 %10, %2, !dbg !3466
  br i1 %11, label %12, label %14, !dbg !3468

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3469
  call void @llvm.dbg.value(metadata i8* %1, metadata !3471, metadata !DIExpression()) #25, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %4, metadata !3474, metadata !DIExpression()) #25, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %13, metadata !3475, metadata !DIExpression()) #25, !dbg !3476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !3478
  br label %19, !dbg !3479

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3480
  br i1 %15, label %19, label %16, !dbg !3483

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3484
  call void @llvm.dbg.value(metadata i8* %1, metadata !3471, metadata !DIExpression()) #25, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %4, metadata !3474, metadata !DIExpression()) #25, !dbg !3486
  call void @llvm.dbg.value(metadata i64 %17, metadata !3475, metadata !DIExpression()) #25, !dbg !3486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !3488
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3489
  store i8 0, i8* %18, align 1, !dbg !3490, !tbaa !881
  br label %19, !dbg !3491

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3492
  ret i32 %20, !dbg !3493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3494 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3496, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 %0, metadata !3447, metadata !DIExpression()) #25, !dbg !3498
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %2, metadata !3452, metadata !DIExpression()) #25, !dbg !3498
  ret i8* %2, !dbg !3501
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3502 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3540, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3544
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %2, metadata !3542, metadata !DIExpression()), !dbg !3544
  %3 = icmp slt i32 %2, 0, !dbg !3546
  br i1 %3, label %4, label %6, !dbg !3548

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3549
  br label %24, !dbg !3550

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3551
  %8 = icmp eq i32 %7, 0, !dbg !3551
  br i1 %8, label %13, label %9, !dbg !3553

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3554
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3555
  %12 = icmp eq i64 %11, -1, !dbg !3556
  br i1 %12, label %16, label %13, !dbg !3557

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3558
  %15 = icmp eq i32 %14, 0, !dbg !3558
  br i1 %15, label %16, label %18, !dbg !3559

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3541, metadata !DIExpression()), !dbg !3544
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3560
  call void @llvm.dbg.value(metadata i32 %21, metadata !3543, metadata !DIExpression()), !dbg !3544
  br label %24, !dbg !3561

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #29, !dbg !3562
  %20 = load i32, i32* %19, align 4, !dbg !3562, !tbaa !831
  call void @llvm.dbg.value(metadata i32 %20, metadata !3541, metadata !DIExpression()), !dbg !3544
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3560
  call void @llvm.dbg.value(metadata i32 %21, metadata !3543, metadata !DIExpression()), !dbg !3544
  %22 = icmp eq i32 %20, 0, !dbg !3563
  br i1 %22, label %24, label %23, !dbg !3561

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3565, !tbaa !831
  call void @llvm.dbg.value(metadata i32 -1, metadata !3543, metadata !DIExpression()), !dbg !3544
  br label %24, !dbg !3567

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3544
  ret i32 %25, !dbg !3568
}

; Function Attrs: nofree nounwind
declare !dbg !3569 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3572 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3573 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3576 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3614, metadata !DIExpression()), !dbg !3615
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3616
  br i1 %2, label %6, label %3, !dbg !3618

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3619
  %5 = icmp eq i32 %4, 0, !dbg !3619
  br i1 %5, label %6, label %8, !dbg !3620

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3621
  br label %17, !dbg !3622

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3623, metadata !DIExpression()) #25, !dbg !3628
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3630
  %10 = load i32, i32* %9, align 8, !dbg !3630, !tbaa !3247
  %11 = and i32 %10, 256, !dbg !3632
  %12 = icmp eq i32 %11, 0, !dbg !3632
  br i1 %12, label %15, label %13, !dbg !3633

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !3634
  br label %15, !dbg !3634

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3635
  br label %17, !dbg !3636

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3615
  ret i32 %18, !dbg !3637
}

; Function Attrs: nofree nounwind
declare !dbg !3638 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3641 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3680, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i64 %1, metadata !3681, metadata !DIExpression()), !dbg !3686
  call void @llvm.dbg.value(metadata i32 %2, metadata !3682, metadata !DIExpression()), !dbg !3686
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3687
  %5 = load i8*, i8** %4, align 8, !dbg !3687, !tbaa !3688
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3689
  %7 = load i8*, i8** %6, align 8, !dbg !3689, !tbaa !3690
  %8 = icmp eq i8* %5, %7, !dbg !3691
  br i1 %8, label %9, label %28, !dbg !3692

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3693
  %11 = load i8*, i8** %10, align 8, !dbg !3693, !tbaa !875
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3694
  %13 = load i8*, i8** %12, align 8, !dbg !3694, !tbaa !3695
  %14 = icmp eq i8* %11, %13, !dbg !3696
  br i1 %14, label %15, label %28, !dbg !3697

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3698
  %17 = load i8*, i8** %16, align 8, !dbg !3698, !tbaa !3699
  %18 = icmp eq i8* %17, null, !dbg !3700
  br i1 %18, label %19, label %28, !dbg !3701

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3702
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !3703
  call void @llvm.dbg.value(metadata i64 %21, metadata !3683, metadata !DIExpression()), !dbg !3704
  %22 = icmp eq i64 %21, -1, !dbg !3705
  br i1 %22, label %30, label %23, !dbg !3707

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3708
  %25 = load i32, i32* %24, align 8, !dbg !3709, !tbaa !3247
  %26 = and i32 %25, -17, !dbg !3709
  store i32 %26, i32* %24, align 8, !dbg !3709, !tbaa !3247
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3710
  store i64 %21, i64* %27, align 8, !dbg !3711, !tbaa !3712
  br label %30, !dbg !3713

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3714
  br label %30, !dbg !3715

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3686
  ret i32 %31, !dbg !3716
}

; Function Attrs: nofree nounwind
declare !dbg !3717 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #10 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2, !39, !50, !55, !63, !165, !69, !75, !171, !159, !178, !195, !197, !199, !201, !204, !206, !208, !597, !632, !634, !636, !638}
!llvm.ident = !{!640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640, !640}
!llvm.module.flags = !{!641, !642, !643, !644, !645}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/groups.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 768, elements: !24)
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
!25 = !DISubrange(count: 3)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "buf", scope: !28, file: !29, line: 96, type: !45, isLocal: true, isDefinition: true)
!28 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !29, file: !29, line: 94, type: !30, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !43)
!29 = !DIFile(filename: "src/group-list.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!30 = !DISubroutineType(types: !31)
!31 = !{!6, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !35, line: 64, baseType: !36)
!35 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !37, line: 147, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !42, splitDebugInlining: false, nameTableKind: None)
!40 = !{!8, !41, !9}
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !{!26}
!43 = !{!44}
!44 = !DILocalVariable(name: "gid", arg: 1, scope: !28, file: !29, line: 94, type: !32)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 21)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "Version", scope: !50, file: !51, line: 2, type: !17, isLocal: false, isDefinition: true)
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !52, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!52 = !{!48}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "file_name", scope: !55, file: !56, line: 46, type: !17, isLocal: true, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !57, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!57 = !{!53, !58}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !55, file: !56, line: 56, type: !60, isLocal: true, isDefinition: true)
!60 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "exit_failure", scope: !63, file: !64, line: 24, type: !66, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !65, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!65 = !{!61}
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "program_name", scope: !69, file: !70, line: 33, type: !17, isLocal: false, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !71, globals: !72, splitDebugInlining: false, nameTableKind: None)
!70 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!71 = !{!8, !6}
!72 = !{!67}
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !75, file: !76, line: 85, type: !153, isLocal: false, isDefinition: true)
!75 = distinct !DICompileUnit(language: DW_LANG_C99, file: !76, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !112, globals: !116, splitDebugInlining: false, nameTableKind: None)
!76 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!77 = !{!78, !92, !97}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !79, line: 32, baseType: !38, size: 32, elements: !80)
!79 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!81 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!85 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!86 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!87 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!88 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!89 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!90 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!91 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !79, line: 242, baseType: !38, size: 32, elements: !93)
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!95 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!96 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !98, line: 46, baseType: !38, size: 32, elements: !99)
!98 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!100 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!109 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!112 = !{!20, !113, !114, !6}
!113 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 46, baseType: !41)
!115 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!116 = !{!73, !117, !123, !135, !137, !142, !149, !151}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !75, file: !76, line: 101, type: !119, isLocal: false, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 320, elements: !121)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!121 = !{!122}
!122 = !DISubrange(count: 10)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !75, file: !76, line: 1052, type: !125, isLocal: false, isDefinition: true)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !76, line: 65, size: 448, elements: !126)
!126 = !{!127, !128, !129, !133, !134}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !125, file: !76, line: 68, baseType: !78, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !76, line: 71, baseType: !20, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !125, file: !76, line: 75, baseType: !130, size: 256, offset: 64)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !125, file: !76, line: 78, baseType: !17, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !125, file: !76, line: 81, baseType: !17, size: 64, offset: 384)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !75, file: !76, line: 116, type: !125, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "slot0", scope: !75, file: !76, line: 842, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 256)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "slotvec", scope: !75, file: !76, line: 845, type: !144, isLocal: true, isDefinition: true)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !76, line: 834, size: 128, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !145, file: !76, line: 836, baseType: !114, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !76, line: 837, baseType: !6, size: 64, offset: 64)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "nslots", scope: !75, file: !76, line: 843, type: !20, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "slotvec0", scope: !75, file: !76, line: 844, type: !145, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 704, elements: !155)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!155 = !{!156}
!156 = !DISubrange(count: 11)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !159, file: !160, line: 26, type: !162, isLocal: false, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !161, splitDebugInlining: false, nameTableKind: None)
!160 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!161 = !{!157}
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 376, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 47)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !167, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !169, line: 102, baseType: !170)
!169 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !37, line: 73, baseType: !41)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !173, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!173 = !{!174}
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 40, baseType: !38, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!177 = !{!8}
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !194, splitDebugInlining: false, nameTableKind: None)
!179 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!180 = !{!181}
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !183, file: !182, line: 186, baseType: !38, size: 32, elements: !192)
!182 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!183 = distinct !DISubprogram(name: "x2nrealloc", scope: !182, file: !182, line: 174, type: !184, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !187)
!184 = !DISubroutineType(types: !185)
!185 = !{!8, !8, !186, !114}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!187 = !{!188, !189, !190, !191}
!188 = !DILocalVariable(name: "p", arg: 1, scope: !183, file: !182, line: 174, type: !8)
!189 = !DILocalVariable(name: "pn", arg: 2, scope: !183, file: !182, line: 174, type: !186)
!190 = !DILocalVariable(name: "s", arg: 3, scope: !183, file: !182, line: 174, type: !114)
!191 = !DILocalVariable(name: "n", scope: !183, file: !182, line: 176, type: !114)
!192 = !{!193}
!193 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!194 = !{!114, !6, !8}
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!198 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !203, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!203 = !{!114}
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!205 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!208 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !210, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!209 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!210 = !{!211}
!211 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !212, line: 41, baseType: !38, size: 32, elements: !213)
!212 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!214 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!215 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!216 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!217 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!218 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!219 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!220 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!221 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!222 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!223 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!224 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!225 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!226 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!227 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!234 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!235 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!237 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!238 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!239 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!246 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!247 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!249 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!250 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!251 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!252 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!253 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!254 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!255 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!256 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!257 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!258 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!259 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!260 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!261 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!262 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!263 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!322 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!331 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!332 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!334 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!335 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!336 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!409 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!482 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!483 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!484 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!485 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!486 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!487 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!488 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!489 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!490 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!491 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!492 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!493 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!494 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!495 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!496 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!498 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!499 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!500 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!501 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!502 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!503 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!529 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!530 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!531 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!532 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!533 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!538 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!539 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!540 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!541 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!597 = distinct !DICompileUnit(language: DW_LANG_C99, file: !598, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !599, retainedTypes: !631, splitDebugInlining: false, nameTableKind: None)
!598 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!599 = !{!600}
!600 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !601, file: !598, line: 83, baseType: !38, size: 32, elements: !629)
!601 = distinct !DISubprogram(name: "mgetgroups", scope: !598, file: !598, line: 66, type: !602, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !606)
!602 = !DISubroutineType(types: !603)
!603 = !{!20, !17, !34, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !617, !618, !621, !624, !627, !628}
!607 = !DILocalVariable(name: "username", arg: 1, scope: !601, file: !598, line: 66, type: !17)
!608 = !DILocalVariable(name: "gid", arg: 2, scope: !601, file: !598, line: 66, type: !34)
!609 = !DILocalVariable(name: "groups", arg: 3, scope: !601, file: !598, line: 66, type: !604)
!610 = !DILocalVariable(name: "max_n_groups", scope: !601, file: !598, line: 68, type: !20)
!611 = !DILocalVariable(name: "ng", scope: !601, file: !598, line: 69, type: !20)
!612 = !DILocalVariable(name: "g", scope: !601, file: !598, line: 70, type: !605)
!613 = !DILocalVariable(name: "h", scope: !614, file: !598, line: 92, type: !605)
!614 = distinct !DILexicalBlock(scope: !615, file: !598, line: 91, column: 9)
!615 = distinct !DILexicalBlock(scope: !616, file: !598, line: 82, column: 5)
!616 = distinct !DILexicalBlock(scope: !601, file: !598, line: 81, column: 7)
!617 = !DILocalVariable(name: "last_n_groups", scope: !614, file: !598, line: 93, type: !20)
!618 = !DILocalVariable(name: "saved_errno", scope: !619, file: !598, line: 105, type: !20)
!619 = distinct !DILexicalBlock(scope: !620, file: !598, line: 104, column: 13)
!620 = distinct !DILexicalBlock(scope: !614, file: !598, line: 103, column: 15)
!621 = !DILocalVariable(name: "saved_errno", scope: !622, file: !598, line: 156, type: !20)
!622 = distinct !DILexicalBlock(scope: !623, file: !598, line: 154, column: 5)
!623 = distinct !DILexicalBlock(scope: !601, file: !598, line: 153, column: 7)
!624 = !DILocalVariable(name: "first", scope: !625, file: !598, line: 187, type: !34)
!625 = distinct !DILexicalBlock(scope: !626, file: !598, line: 186, column: 5)
!626 = distinct !DILexicalBlock(scope: !601, file: !598, line: 185, column: 7)
!627 = !DILocalVariable(name: "next", scope: !625, file: !598, line: 188, type: !605)
!628 = !DILocalVariable(name: "groups_end", scope: !625, file: !598, line: 189, type: !605)
!629 = !{!630}
!630 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!631 = !{!8, !34, !114}
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!633 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!634 = distinct !DICompileUnit(language: DW_LANG_C99, file: !635, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!635 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!636 = distinct !DICompileUnit(language: DW_LANG_C99, file: !637, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!637 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !177, splitDebugInlining: false, nameTableKind: None)
!639 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!640 = !{!"clang version 12.0.1"}
!641 = !{i32 7, !"Dwarf Version", i32 4}
!642 = !{i32 2, !"Debug Info Version", i32 3}
!643 = !{i32 1, !"wchar_size", i32 4}
!644 = !{i32 7, !"PIC Level", i32 2}
!645 = !{i32 7, !"PIE Level", i32 2}
!646 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !647, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !20}
!649 = !{!650}
!650 = !DILocalVariable(name: "status", arg: 1, scope: !646, file: !3, line: 48, type: !20)
!651 = !DILocation(line: 0, scope: !646)
!652 = !DILocation(line: 50, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !646, file: !3, line: 50, column: 7)
!654 = !DILocation(line: 50, column: 7, scope: !646)
!655 = !DILocation(line: 51, column: 5, scope: !656)
!656 = distinct !DILexicalBlock(scope: !653, file: !3, line: 51, column: 5)
!657 = !{!658, !658, i64 0}
!658 = !{!"any pointer", !659, i64 0}
!659 = !{!"omnipotent char", !660, i64 0}
!660 = !{!"Simple C/C++ TBAA"}
!661 = !DILocation(line: 54, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !653, file: !3, line: 53, column: 5)
!663 = !DILocation(line: 55, column: 7, scope: !662)
!664 = !DILocation(line: 60, column: 7, scope: !662)
!665 = !DILocation(line: 61, column: 7, scope: !662)
!666 = !DILocalVariable(name: "program", arg: 1, scope: !667, file: !668, line: 634, type: !17)
!667 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !668, file: !668, line: 634, type: !669, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !671)
!668 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!669 = !DISubroutineType(types: !670)
!670 = !{null, !17}
!671 = !{!666, !672, !681, !682, !684}
!672 = !DILocalVariable(name: "infomap", scope: !667, file: !668, line: 636, type: !673)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 896, elements: !679)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !667, file: !668, line: 636, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !675, file: !668, line: 636, baseType: !17, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !668, line: 636, baseType: !17, size: 64, offset: 64)
!679 = !{!680}
!680 = !DISubrange(count: 7)
!681 = !DILocalVariable(name: "node", scope: !667, file: !668, line: 646, type: !17)
!682 = !DILocalVariable(name: "map_prog", scope: !667, file: !668, line: 647, type: !683)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!684 = !DILocalVariable(name: "lc_messages", scope: !667, file: !668, line: 659, type: !17)
!685 = !DILocation(line: 0, scope: !667, inlinedAt: !686)
!686 = distinct !DILocation(line: 62, column: 7, scope: !662)
!687 = !DILocation(line: 636, column: 3, scope: !667, inlinedAt: !686)
!688 = !DILocation(line: 636, column: 67, scope: !667, inlinedAt: !686)
!689 = !DILocation(line: 647, column: 36, scope: !667, inlinedAt: !686)
!690 = !DILocation(line: 649, column: 3, scope: !667, inlinedAt: !686)
!691 = !DILocation(line: 649, column: 33, scope: !667, inlinedAt: !686)
!692 = !DILocation(line: 650, column: 13, scope: !667, inlinedAt: !686)
!693 = !DILocation(line: 649, column: 20, scope: !667, inlinedAt: !686)
!694 = !{!695, !658, i64 0}
!695 = !{!"infomap", !658, i64 0, !658, i64 8}
!696 = !DILocation(line: 649, column: 10, scope: !667, inlinedAt: !686)
!697 = !DILocation(line: 649, column: 28, scope: !667, inlinedAt: !686)
!698 = distinct !{!698, !690, !692, !699}
!699 = !{!"llvm.loop.mustprogress"}
!700 = !DILocation(line: 652, column: 17, scope: !701, inlinedAt: !686)
!701 = distinct !DILexicalBlock(scope: !667, file: !668, line: 652, column: 7)
!702 = !{!695, !658, i64 8}
!703 = !DILocation(line: 652, column: 7, scope: !701, inlinedAt: !686)
!704 = !DILocation(line: 652, column: 7, scope: !667, inlinedAt: !686)
!705 = !DILocation(line: 655, column: 3, scope: !667, inlinedAt: !686)
!706 = !DILocation(line: 659, column: 29, scope: !667, inlinedAt: !686)
!707 = !DILocation(line: 660, column: 7, scope: !708, inlinedAt: !686)
!708 = distinct !DILexicalBlock(scope: !667, file: !668, line: 660, column: 7)
!709 = !DILocation(line: 660, column: 19, scope: !708, inlinedAt: !686)
!710 = !DILocation(line: 660, column: 22, scope: !708, inlinedAt: !686)
!711 = !DILocation(line: 660, column: 7, scope: !667, inlinedAt: !686)
!712 = !DILocation(line: 666, column: 7, scope: !713, inlinedAt: !686)
!713 = distinct !DILexicalBlock(scope: !708, file: !668, line: 661, column: 5)
!714 = !DILocation(line: 668, column: 5, scope: !713, inlinedAt: !686)
!715 = !DILocation(line: 669, column: 3, scope: !667, inlinedAt: !686)
!716 = !DILocation(line: 671, column: 3, scope: !667, inlinedAt: !686)
!717 = !DILocation(line: 673, column: 1, scope: !667, inlinedAt: !686)
!718 = !DILocation(line: 64, column: 3, scope: !646)
!719 = !DISubprogram(name: "dcgettext", scope: !720, file: !720, line: 51, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!720 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!721 = !DISubroutineType(types: !722)
!722 = !{!6, !17, !17, !20}
!723 = !DISubprogram(name: "fputs_unlocked", scope: !724, file: !724, line: 667, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!724 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!725 = !DISubroutineType(types: !726)
!726 = !{!20, !17, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !729, line: 49, size: 1728, elements: !730)
!729 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!730 = !{!731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !746, !747, !748, !749, !752, !753, !755, !759, !762, !764, !767, !770, !771, !772, !773, !774}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !728, file: !729, line: 51, baseType: !20, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !728, file: !729, line: 54, baseType: !6, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !728, file: !729, line: 55, baseType: !6, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !728, file: !729, line: 56, baseType: !6, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !728, file: !729, line: 57, baseType: !6, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !728, file: !729, line: 58, baseType: !6, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !728, file: !729, line: 59, baseType: !6, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !728, file: !729, line: 60, baseType: !6, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !728, file: !729, line: 61, baseType: !6, size: 64, offset: 512)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !728, file: !729, line: 64, baseType: !6, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !728, file: !729, line: 65, baseType: !6, size: 64, offset: 640)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !728, file: !729, line: 66, baseType: !6, size: 64, offset: 704)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !728, file: !729, line: 68, baseType: !744, size: 64, offset: 768)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !729, line: 36, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !728, file: !729, line: 70, baseType: !727, size: 64, offset: 832)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !728, file: !729, line: 72, baseType: !20, size: 32, offset: 896)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !728, file: !729, line: 73, baseType: !20, size: 32, offset: 928)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !728, file: !729, line: 74, baseType: !750, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 152, baseType: !751)
!751 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !728, file: !729, line: 77, baseType: !113, size: 16, offset: 1024)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !728, file: !729, line: 78, baseType: !754, size: 8, offset: 1040)
!754 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !728, file: !729, line: 79, baseType: !756, size: 8, offset: 1048)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 1)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !728, file: !729, line: 81, baseType: !760, size: 64, offset: 1088)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !729, line: 43, baseType: null)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !728, file: !729, line: 89, baseType: !763, size: 64, offset: 1152)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 153, baseType: !751)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !728, file: !729, line: 91, baseType: !765, size: 64, offset: 1216)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !729, line: 37, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !728, file: !729, line: 92, baseType: !768, size: 64, offset: 1280)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !729, line: 38, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !728, file: !729, line: 93, baseType: !727, size: 64, offset: 1344)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !728, file: !729, line: 94, baseType: !8, size: 64, offset: 1408)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !728, file: !729, line: 95, baseType: !114, size: 64, offset: 1472)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !728, file: !729, line: 96, baseType: !20, size: 32, offset: 1536)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !728, file: !729, line: 98, baseType: !775, size: 160, offset: 1568)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 20)
!778 = !DISubprogram(name: "setlocale", scope: !779, file: !779, line: 122, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!779 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!780 = !DISubroutineType(types: !781)
!781 = !{!6, !20, !17}
!782 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !783, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !786)
!783 = !DISubroutineType(types: !784)
!784 = !{!20, !20, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !796, !799, !800}
!787 = !DILocalVariable(name: "argc", arg: 1, scope: !782, file: !3, line: 68, type: !20)
!788 = !DILocalVariable(name: "argv", arg: 2, scope: !782, file: !3, line: 68, type: !785)
!789 = !DILocalVariable(name: "optc", scope: !782, file: !3, line: 70, type: !20)
!790 = !DILocalVariable(name: "ok", scope: !782, file: !3, line: 71, type: !60)
!791 = !DILocalVariable(name: "rgid", scope: !782, file: !3, line: 72, type: !34)
!792 = !DILocalVariable(name: "egid", scope: !782, file: !3, line: 72, type: !34)
!793 = !DILocalVariable(name: "ruid", scope: !782, file: !3, line: 73, type: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !35, line: 79, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !37, line: 146, baseType: !38)
!796 = !DILocalVariable(name: "NO_UID", scope: !797, file: !3, line: 100, type: !794)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 98, column: 5)
!798 = distinct !DILexicalBlock(scope: !782, file: !3, line: 97, column: 7)
!799 = !DILocalVariable(name: "NO_GID", scope: !797, file: !3, line: 101, type: !34)
!800 = !DILocalVariable(name: "pwd", scope: !801, file: !3, line: 127, type: !805)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 126, column: 9)
!802 = distinct !DILexicalBlock(scope: !803, file: !3, line: 125, column: 7)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 125, column: 7)
!804 = distinct !DILexicalBlock(scope: !798, file: !3, line: 123, column: 5)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !807, line: 49, size: 384, elements: !808)
!807 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!808 = !{!809, !810, !811, !812, !813, !814, !815}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !806, file: !807, line: 51, baseType: !6, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !806, file: !807, line: 52, baseType: !6, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !806, file: !807, line: 54, baseType: !795, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !806, file: !807, line: 55, baseType: !36, size: 32, offset: 160)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !806, file: !807, line: 56, baseType: !6, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !806, file: !807, line: 57, baseType: !6, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !806, file: !807, line: 58, baseType: !6, size: 64, offset: 320)
!816 = !DILocation(line: 0, scope: !782)
!817 = !DILocation(line: 76, column: 21, scope: !782)
!818 = !DILocation(line: 76, column: 3, scope: !782)
!819 = !DILocation(line: 77, column: 3, scope: !782)
!820 = !DILocation(line: 78, column: 3, scope: !782)
!821 = !DILocation(line: 79, column: 3, scope: !782)
!822 = !DILocation(line: 81, column: 3, scope: !782)
!823 = !DILocation(line: 86, column: 18, scope: !782)
!824 = !DILocation(line: 86, column: 3, scope: !782)
!825 = !DILocation(line: 90, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 89, column: 9)
!827 = distinct !DILexicalBlock(scope: !782, file: !3, line: 87, column: 5)
!828 = !DILocation(line: 91, column: 9, scope: !826)
!829 = !DILocation(line: 93, column: 11, scope: !826)
!830 = !DILocation(line: 97, column: 7, scope: !798)
!831 = !{!832, !832, i64 0}
!832 = !{!"int", !659, i64 0}
!833 = !DILocation(line: 97, column: 14, scope: !798)
!834 = !DILocation(line: 97, column: 7, scope: !782)
!835 = !DILocation(line: 125, column: 22, scope: !802)
!836 = !DILocation(line: 125, column: 7, scope: !803)
!837 = !DILocation(line: 0, scope: !797)
!838 = !DILocation(line: 103, column: 7, scope: !797)
!839 = !DILocation(line: 103, column: 13, scope: !797)
!840 = !DILocation(line: 104, column: 14, scope: !797)
!841 = !DILocation(line: 105, column: 16, scope: !842)
!842 = distinct !DILexicalBlock(scope: !797, file: !3, line: 105, column: 11)
!843 = !DILocation(line: 105, column: 26, scope: !842)
!844 = !DILocation(line: 105, column: 29, scope: !842)
!845 = !DILocation(line: 105, column: 11, scope: !797)
!846 = !DILocation(line: 106, column: 9, scope: !842)
!847 = !DILocation(line: 108, column: 13, scope: !797)
!848 = !DILocation(line: 109, column: 14, scope: !797)
!849 = !DILocation(line: 110, column: 16, scope: !850)
!850 = distinct !DILexicalBlock(scope: !797, file: !3, line: 110, column: 11)
!851 = !DILocation(line: 110, column: 26, scope: !850)
!852 = !DILocation(line: 110, column: 29, scope: !850)
!853 = !DILocation(line: 110, column: 11, scope: !797)
!854 = !DILocation(line: 111, column: 9, scope: !850)
!855 = !DILocation(line: 113, column: 13, scope: !797)
!856 = !DILocation(line: 114, column: 14, scope: !797)
!857 = !DILocation(line: 115, column: 16, scope: !858)
!858 = distinct !DILexicalBlock(scope: !797, file: !3, line: 115, column: 11)
!859 = !DILocation(line: 115, column: 26, scope: !858)
!860 = !DILocation(line: 115, column: 29, scope: !858)
!861 = !DILocation(line: 115, column: 11, scope: !797)
!862 = !DILocation(line: 116, column: 9, scope: !858)
!863 = !DILocation(line: 118, column: 12, scope: !864)
!864 = distinct !DILexicalBlock(scope: !797, file: !3, line: 118, column: 11)
!865 = !DILocation(line: 118, column: 11, scope: !797)
!866 = !DILocalVariable(name: "__c", arg: 1, scope: !867, file: !868, line: 108, type: !20)
!867 = distinct !DISubprogram(name: "putchar_unlocked", scope: !868, file: !868, line: 108, type: !869, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!868 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!869 = !DISubroutineType(types: !870)
!870 = !{!20, !20}
!871 = !{!866}
!872 = !DILocation(line: 0, scope: !867, inlinedAt: !873)
!873 = distinct !DILocation(line: 120, column: 7, scope: !797)
!874 = !DILocation(line: 110, column: 10, scope: !867, inlinedAt: !873)
!875 = !{!876, !658, i64 40}
!876 = !{!"_IO_FILE", !832, i64 0, !658, i64 8, !658, i64 16, !658, i64 24, !658, i64 32, !658, i64 40, !658, i64 48, !658, i64 56, !658, i64 64, !658, i64 72, !658, i64 80, !658, i64 88, !658, i64 96, !658, i64 104, !832, i64 112, !832, i64 116, !877, i64 120, !878, i64 128, !659, i64 130, !659, i64 131, !658, i64 136, !877, i64 144, !658, i64 152, !658, i64 160, !658, i64 168, !658, i64 176, !877, i64 184, !832, i64 192, !659, i64 196}
!877 = !{!"long", !659, i64 0}
!878 = !{!"short", !659, i64 0}
!879 = !{!876, !658, i64 48}
!880 = !{!"branch_weights", i32 2000, i32 1}
!881 = !{!659, !659, i64 0}
!882 = !DILocation(line: 127, column: 42, scope: !801)
!883 = !DILocation(line: 127, column: 32, scope: !801)
!884 = !DILocation(line: 0, scope: !801)
!885 = !DILocation(line: 128, column: 19, scope: !886)
!886 = distinct !DILexicalBlock(scope: !801, file: !3, line: 128, column: 15)
!887 = !DILocation(line: 128, column: 15, scope: !801)
!888 = !DILocation(line: 130, column: 28, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 129, column: 13)
!890 = !DILocation(line: 130, column: 63, scope: !889)
!891 = !DILocation(line: 130, column: 58, scope: !889)
!892 = !DILocation(line: 130, column: 51, scope: !889)
!893 = !DILocation(line: 130, column: 15, scope: !889)
!894 = !DILocation(line: 132, column: 15, scope: !889)
!895 = !DILocation(line: 134, column: 23, scope: !801)
!896 = !{!897, !832, i64 16}
!897 = !{!"passwd", !658, i64 0, !658, i64 8, !832, i64 16, !832, i64 20, !658, i64 24, !658, i64 32, !658, i64 40}
!898 = !DILocation(line: 135, column: 30, scope: !801)
!899 = !{!897, !832, i64 20}
!900 = !DILocation(line: 137, column: 11, scope: !801)
!901 = !DILocation(line: 138, column: 39, scope: !902)
!902 = distinct !DILexicalBlock(scope: !801, file: !3, line: 138, column: 15)
!903 = !DILocation(line: 138, column: 34, scope: !902)
!904 = !DILocation(line: 138, column: 16, scope: !902)
!905 = !DILocation(line: 138, column: 15, scope: !801)
!906 = !DILocation(line: 0, scope: !867, inlinedAt: !907)
!907 = distinct !DILocation(line: 140, column: 11, scope: !801)
!908 = !DILocation(line: 110, column: 10, scope: !867, inlinedAt: !907)
!909 = !DILocation(line: 125, column: 36, scope: !802)
!910 = distinct !{!910, !836, !911, !699}
!911 = !DILocation(line: 141, column: 9, scope: !803)
!912 = !DILocation(line: 71, column: 8, scope: !782)
!913 = !DILocation(line: 144, column: 10, scope: !782)
!914 = !DILocation(line: 145, column: 1, scope: !782)
!915 = !DISubprogram(name: "bindtextdomain", scope: !720, file: !720, line: 86, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!916 = !DISubroutineType(types: !917)
!917 = !{!6, !17, !17}
!918 = !DISubprogram(name: "textdomain", scope: !720, file: !720, line: 82, type: !919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!919 = !DISubroutineType(types: !920)
!920 = !{!6, !17}
!921 = !DISubprogram(name: "atexit", scope: !922, file: !922, line: 595, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!922 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!923 = !DISubroutineType(types: !924)
!924 = !{!20, !925}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{null}
!928 = !DISubprogram(name: "getopt_long", scope: !14, file: !14, line: 66, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!929 = !DISubroutineType(types: !930)
!930 = !{!20, !20, !931, !17, !933, !22}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!934 = !DISubprogram(name: "getuid", scope: !935, file: !935, line: 687, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!935 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!936 = !DISubroutineType(types: !937)
!937 = !{!38}
!938 = !DISubprogram(name: "error", scope: !939, file: !939, line: 52, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!939 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!940 = !DISubroutineType(types: !941)
!941 = !{null, !20, !20, !17, null}
!942 = !DISubprogram(name: "getegid", scope: !935, file: !935, line: 696, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!943 = !DISubprogram(name: "getgid", scope: !935, file: !935, line: 693, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!944 = !DISubprogram(name: "getpwnam", scope: !807, file: !807, line: 116, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!945 = !DISubroutineType(types: !946)
!946 = !{!805, !17}
!947 = distinct !DISubprogram(name: "print_group_list", scope: !29, file: !29, line: 36, type: !948, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!60, !17, !794, !34, !34, !60, !7}
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958, !969, !971, !972}
!951 = !DILocalVariable(name: "username", arg: 1, scope: !947, file: !29, line: 36, type: !17)
!952 = !DILocalVariable(name: "ruid", arg: 2, scope: !947, file: !29, line: 37, type: !794)
!953 = !DILocalVariable(name: "rgid", arg: 3, scope: !947, file: !29, line: 37, type: !34)
!954 = !DILocalVariable(name: "egid", arg: 4, scope: !947, file: !29, line: 37, type: !34)
!955 = !DILocalVariable(name: "use_names", arg: 5, scope: !947, file: !29, line: 38, type: !60)
!956 = !DILocalVariable(name: "delim", arg: 6, scope: !947, file: !29, line: 38, type: !7)
!957 = !DILocalVariable(name: "ok", scope: !947, file: !29, line: 40, type: !60)
!958 = !DILocalVariable(name: "pwd", scope: !947, file: !29, line: 41, type: !959)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !807, line: 49, size: 384, elements: !961)
!961 = !{!962, !963, !964, !965, !966, !967, !968}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !960, file: !807, line: 51, baseType: !6, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !960, file: !807, line: 52, baseType: !6, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !960, file: !807, line: 54, baseType: !795, size: 32, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !960, file: !807, line: 55, baseType: !36, size: 32, offset: 160)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !960, file: !807, line: 56, baseType: !6, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !960, file: !807, line: 57, baseType: !6, size: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !960, file: !807, line: 58, baseType: !6, size: 64, offset: 320)
!969 = !DILocalVariable(name: "groups", scope: !970, file: !29, line: 61, type: !605)
!970 = distinct !DILexicalBlock(scope: !947, file: !29, line: 60, column: 3)
!971 = !DILocalVariable(name: "n_groups", scope: !970, file: !29, line: 63, type: !20)
!972 = !DILocalVariable(name: "i", scope: !973, file: !29, line: 78, type: !20)
!973 = distinct !DILexicalBlock(scope: !970, file: !29, line: 78, column: 5)
!974 = !DILocation(line: 0, scope: !947)
!975 = !DILocation(line: 43, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !947, file: !29, line: 43, column: 7)
!977 = !DILocation(line: 43, column: 7, scope: !947)
!978 = !DILocation(line: 45, column: 13, scope: !979)
!979 = distinct !DILexicalBlock(scope: !976, file: !29, line: 44, column: 5)
!980 = !DILocation(line: 46, column: 15, scope: !981)
!981 = distinct !DILexicalBlock(scope: !979, file: !29, line: 46, column: 11)
!982 = !DILocation(line: 46, column: 11, scope: !979)
!983 = !DILocalVariable(name: "gid", arg: 1, scope: !984, file: !29, line: 103, type: !34)
!984 = distinct !DISubprogram(name: "print_group", scope: !29, file: !29, line: 103, type: !985, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!60, !34, !60}
!987 = !{!983, !988, !989, !998, !999}
!988 = !DILocalVariable(name: "use_name", arg: 2, scope: !984, file: !29, line: 103, type: !60)
!989 = !DILocalVariable(name: "grp", scope: !984, file: !29, line: 105, type: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !992, line: 42, size: 256, elements: !993)
!992 = !DIFile(filename: "/usr/include/grp.h", directory: "")
!993 = !{!994, !995, !996, !997}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !991, file: !992, line: 44, baseType: !6, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !991, file: !992, line: 45, baseType: !6, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !991, file: !992, line: 46, baseType: !36, size: 32, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !991, file: !992, line: 47, baseType: !785, size: 64, offset: 192)
!998 = !DILocalVariable(name: "ok", scope: !984, file: !29, line: 106, type: !60)
!999 = !DILocalVariable(name: "s", scope: !984, file: !29, line: 119, type: !6)
!1000 = !DILocation(line: 0, scope: !984, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 50, column: 8, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !947, file: !29, line: 50, column: 7)
!1003 = !DILocation(line: 108, column: 7, scope: !984, inlinedAt: !1001)
!1004 = !DILocation(line: 97, column: 21, scope: !28, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 119, column: 34, scope: !984, inlinedAt: !1001)
!1006 = !DILocation(line: 110, column: 13, scope: !1007, inlinedAt: !1001)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !29, line: 109, column: 5)
!1008 = distinct !DILexicalBlock(scope: !984, file: !29, line: 108, column: 7)
!1009 = !DILocation(line: 111, column: 15, scope: !1010, inlinedAt: !1001)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !29, line: 111, column: 11)
!1011 = !DILocation(line: 111, column: 11, scope: !1007, inlinedAt: !1001)
!1012 = !DILocation(line: 113, column: 24, scope: !1013, inlinedAt: !1001)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !29, line: 112, column: 9)
!1014 = !DILocation(line: 114, column: 18, scope: !1013, inlinedAt: !1001)
!1015 = !DILocation(line: 113, column: 11, scope: !1013, inlinedAt: !1001)
!1016 = !DILocation(line: 116, column: 9, scope: !1013, inlinedAt: !1001)
!1017 = !DILocation(line: 119, column: 24, scope: !984, inlinedAt: !1001)
!1018 = !{!1019, !658, i64 0}
!1019 = !{!"group", !658, i64 0, !658, i64 8, !832, i64 16, !658, i64 24}
!1020 = !DILocation(line: 120, column: 3, scope: !984, inlinedAt: !1001)
!1021 = !DILocation(line: 50, column: 7, scope: !947)
!1022 = !DILocation(line: 0, scope: !28, inlinedAt: !1005)
!1023 = !DILocation(line: 97, column: 10, scope: !28, inlinedAt: !1005)
!1024 = !DILocation(line: 53, column: 12, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !947, file: !29, line: 53, column: 7)
!1026 = !DILocation(line: 53, column: 7, scope: !947)
!1027 = !DILocalVariable(name: "__c", arg: 1, scope: !1028, file: !868, line: 108, type: !20)
!1028 = distinct !DISubprogram(name: "putchar_unlocked", scope: !868, file: !868, line: 108, type: !869, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !1029)
!1029 = !{!1027}
!1030 = !DILocation(line: 0, scope: !1028, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 55, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !29, line: 54, column: 5)
!1033 = !DILocation(line: 110, column: 10, scope: !1028, inlinedAt: !1031)
!1034 = !DILocation(line: 55, column: 7, scope: !1032)
!1035 = !DILocation(line: 0, scope: !984, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 56, column: 12, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !29, line: 56, column: 11)
!1038 = !DILocation(line: 108, column: 7, scope: !984, inlinedAt: !1036)
!1039 = !DILocation(line: 97, column: 21, scope: !28, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 119, column: 34, scope: !984, inlinedAt: !1036)
!1041 = !DILocation(line: 110, column: 13, scope: !1007, inlinedAt: !1036)
!1042 = !DILocation(line: 111, column: 15, scope: !1010, inlinedAt: !1036)
!1043 = !DILocation(line: 111, column: 11, scope: !1007, inlinedAt: !1036)
!1044 = !DILocation(line: 113, column: 24, scope: !1013, inlinedAt: !1036)
!1045 = !DILocation(line: 114, column: 18, scope: !1013, inlinedAt: !1036)
!1046 = !DILocation(line: 113, column: 11, scope: !1013, inlinedAt: !1036)
!1047 = !DILocation(line: 116, column: 9, scope: !1013, inlinedAt: !1036)
!1048 = !DILocation(line: 119, column: 24, scope: !984, inlinedAt: !1036)
!1049 = !DILocation(line: 120, column: 3, scope: !984, inlinedAt: !1036)
!1050 = !DILocation(line: 56, column: 11, scope: !1032)
!1051 = !DILocation(line: 0, scope: !28, inlinedAt: !1040)
!1052 = !DILocation(line: 97, column: 10, scope: !28, inlinedAt: !1040)
!1053 = !DILocation(line: 61, column: 5, scope: !970)
!1054 = !DILocation(line: 63, column: 43, scope: !970)
!1055 = !DILocation(line: 63, column: 54, scope: !970)
!1056 = !DILocation(line: 0, scope: !970)
!1057 = !DILocation(line: 63, column: 20, scope: !970)
!1058 = !DILocation(line: 64, column: 18, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !970, file: !29, line: 64, column: 9)
!1060 = !DILocation(line: 64, column: 9, scope: !970)
!1061 = !DILocation(line: 0, scope: !973)
!1062 = !DILocation(line: 78, column: 23, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !973, file: !29, line: 78, column: 5)
!1064 = !DILocation(line: 78, column: 5, scope: !973)
!1065 = !DILocation(line: 0, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !29, line: 66, column: 13)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !29, line: 65, column: 7)
!1068 = !DILocation(line: 66, column: 13, scope: !1067)
!1069 = !DILocation(line: 68, column: 30, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !29, line: 67, column: 11)
!1071 = !DILocation(line: 69, column: 20, scope: !1070)
!1072 = !DILocation(line: 68, column: 13, scope: !1070)
!1073 = !DILocation(line: 70, column: 11, scope: !1070)
!1074 = !DILocation(line: 73, column: 30, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1066, file: !29, line: 72, column: 11)
!1076 = !DILocation(line: 73, column: 13, scope: !1075)
!1077 = !DILocation(line: 47, column: 12, scope: !981)
!1078 = !DILocation(line: 85, column: 11, scope: !970)
!1079 = !DILocation(line: 85, column: 5, scope: !970)
!1080 = !DILocation(line: 86, column: 3, scope: !947)
!1081 = !DILocation(line: 79, column: 11, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1063, file: !29, line: 79, column: 11)
!1083 = !DILocation(line: 79, column: 21, scope: !1082)
!1084 = !DILocation(line: 79, column: 29, scope: !1082)
!1085 = !DILocation(line: 0, scope: !1028, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 81, column: 11, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !29, line: 80, column: 9)
!1088 = !DILocation(line: 110, column: 10, scope: !1028, inlinedAt: !1086)
!1089 = !DILocation(line: 82, column: 29, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !29, line: 82, column: 15)
!1091 = !DILocation(line: 0, scope: !984, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 82, column: 16, scope: !1090)
!1093 = !DILocation(line: 108, column: 7, scope: !984, inlinedAt: !1092)
!1094 = !DILocation(line: 97, column: 21, scope: !28, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 119, column: 34, scope: !984, inlinedAt: !1092)
!1096 = !DILocation(line: 110, column: 13, scope: !1007, inlinedAt: !1092)
!1097 = !DILocation(line: 111, column: 15, scope: !1010, inlinedAt: !1092)
!1098 = !DILocation(line: 111, column: 11, scope: !1007, inlinedAt: !1092)
!1099 = !DILocation(line: 113, column: 24, scope: !1013, inlinedAt: !1092)
!1100 = !DILocation(line: 114, column: 18, scope: !1013, inlinedAt: !1092)
!1101 = !DILocation(line: 113, column: 11, scope: !1013, inlinedAt: !1092)
!1102 = !DILocation(line: 116, column: 9, scope: !1013, inlinedAt: !1092)
!1103 = !DILocation(line: 119, column: 24, scope: !984, inlinedAt: !1092)
!1104 = !DILocation(line: 120, column: 3, scope: !984, inlinedAt: !1092)
!1105 = !DILocation(line: 82, column: 15, scope: !1087)
!1106 = !DILocation(line: 0, scope: !28, inlinedAt: !1095)
!1107 = !DILocation(line: 97, column: 10, scope: !28, inlinedAt: !1095)
!1108 = !DILocation(line: 78, column: 36, scope: !1063)
!1109 = distinct !{!1109, !1064, !1110, !699}
!1110 = !DILocation(line: 84, column: 9, scope: !973)
!1111 = !DILocation(line: 88, column: 1, scope: !947)
!1112 = !DISubprogram(name: "getpwuid", scope: !807, file: !807, line: 110, type: !1113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!959, !38}
!1115 = !DISubprogram(name: "getgrgid", scope: !992, file: !992, line: 101, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!990, !38}
!1118 = !DILocation(line: 0, scope: !984)
!1119 = !DILocation(line: 108, column: 7, scope: !984)
!1120 = !DILocation(line: 97, column: 21, scope: !28, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 119, column: 34, scope: !984)
!1122 = !DILocation(line: 110, column: 13, scope: !1007)
!1123 = !DILocation(line: 111, column: 15, scope: !1010)
!1124 = !DILocation(line: 111, column: 11, scope: !1007)
!1125 = !DILocation(line: 113, column: 24, scope: !1013)
!1126 = !DILocation(line: 114, column: 18, scope: !1013)
!1127 = !DILocation(line: 113, column: 11, scope: !1013)
!1128 = !DILocation(line: 116, column: 9, scope: !1013)
!1129 = !DILocation(line: 119, column: 24, scope: !984)
!1130 = !DILocation(line: 119, column: 13, scope: !984)
!1131 = !DILocation(line: 0, scope: !28, inlinedAt: !1121)
!1132 = !DILocation(line: 97, column: 10, scope: !28, inlinedAt: !1121)
!1133 = !DILocation(line: 120, column: 3, scope: !984)
!1134 = !DILocation(line: 121, column: 3, scope: !984)
!1135 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !56, file: !56, line: 51, type: !669, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1136)
!1136 = !{!1137}
!1137 = !DILocalVariable(name: "file", arg: 1, scope: !1135, file: !56, line: 51, type: !17)
!1138 = !DILocation(line: 0, scope: !1135)
!1139 = !DILocation(line: 53, column: 13, scope: !1135)
!1140 = !DILocation(line: 54, column: 1, scope: !1135)
!1141 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !56, file: !56, line: 88, type: !1142, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !60}
!1144 = !{!1145}
!1145 = !DILocalVariable(name: "ignore", arg: 1, scope: !1141, file: !56, line: 88, type: !60)
!1146 = !DILocation(line: 0, scope: !1141)
!1147 = !DILocation(line: 90, column: 16, scope: !1141)
!1148 = !{!1149, !1149, i64 0}
!1149 = !{!"_Bool", !659, i64 0}
!1150 = !DILocation(line: 91, column: 1, scope: !1141)
!1151 = distinct !DISubprogram(name: "close_stdout", scope: !56, file: !56, line: 117, type: !926, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !55, retainedNodes: !1152)
!1152 = !{!1153}
!1153 = !DILocalVariable(name: "write_error", scope: !1154, file: !56, line: 122, type: !17)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !56, line: 121, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !56, line: 119, column: 7)
!1156 = !DILocation(line: 119, column: 21, scope: !1155)
!1157 = !DILocation(line: 119, column: 7, scope: !1155)
!1158 = !DILocation(line: 119, column: 29, scope: !1155)
!1159 = !DILocation(line: 120, column: 7, scope: !1155)
!1160 = !DILocation(line: 120, column: 12, scope: !1155)
!1161 = !{i8 0, i8 2}
!1162 = !DILocation(line: 120, column: 25, scope: !1155)
!1163 = !DILocation(line: 120, column: 28, scope: !1155)
!1164 = !DILocation(line: 120, column: 34, scope: !1155)
!1165 = !DILocation(line: 119, column: 7, scope: !1151)
!1166 = !DILocation(line: 122, column: 33, scope: !1154)
!1167 = !DILocation(line: 0, scope: !1154)
!1168 = !DILocation(line: 123, column: 11, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1154, file: !56, line: 123, column: 11)
!1170 = !DILocation(line: 0, scope: !1169)
!1171 = !DILocation(line: 123, column: 11, scope: !1154)
!1172 = !DILocation(line: 124, column: 36, scope: !1169)
!1173 = !DILocation(line: 124, column: 9, scope: !1169)
!1174 = !DILocation(line: 127, column: 9, scope: !1169)
!1175 = !DILocation(line: 129, column: 14, scope: !1154)
!1176 = !DILocation(line: 129, column: 7, scope: !1154)
!1177 = !DILocation(line: 134, column: 42, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1151, file: !56, line: 134, column: 7)
!1179 = !DILocation(line: 134, column: 28, scope: !1178)
!1180 = !DILocation(line: 134, column: 50, scope: !1178)
!1181 = !DILocation(line: 134, column: 7, scope: !1151)
!1182 = !DILocation(line: 135, column: 12, scope: !1178)
!1183 = !DILocation(line: 135, column: 5, scope: !1178)
!1184 = !DILocation(line: 136, column: 1, scope: !1151)
!1185 = distinct !DISubprogram(name: "umaxtostr", scope: !1186, file: !1186, line: 36, type: !1187, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !1189)
!1186 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!6, !168, !6}
!1189 = !{!1190, !1191, !1192}
!1190 = !DILocalVariable(name: "i", arg: 1, scope: !1185, file: !1186, line: 36, type: !168)
!1191 = !DILocalVariable(name: "buf", arg: 2, scope: !1185, file: !1186, line: 36, type: !6)
!1192 = !DILocalVariable(name: "p", scope: !1185, file: !1186, line: 38, type: !6)
!1193 = !DILocation(line: 0, scope: !1185)
!1194 = !DILocation(line: 38, column: 17, scope: !1185)
!1195 = !DILocation(line: 39, column: 6, scope: !1185)
!1196 = !DILocation(line: 52, column: 24, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !1186, line: 50, column: 5)
!1198 = distinct !DILexicalBlock(scope: !1185, file: !1186, line: 41, column: 7)
!1199 = !DILocation(line: 52, column: 16, scope: !1197)
!1200 = !DILocation(line: 52, column: 10, scope: !1197)
!1201 = !DILocation(line: 52, column: 14, scope: !1197)
!1202 = !DILocation(line: 53, column: 17, scope: !1197)
!1203 = !DILocation(line: 53, column: 24, scope: !1197)
!1204 = !DILocation(line: 52, column: 9, scope: !1197)
!1205 = distinct !{!1205, !1206, !1207, !699}
!1206 = !DILocation(line: 51, column: 7, scope: !1197)
!1207 = !DILocation(line: 53, column: 28, scope: !1197)
!1208 = !DILocation(line: 56, column: 3, scope: !1185)
!1209 = distinct !DISubprogram(name: "set_program_name", scope: !70, file: !70, line: 39, type: !669, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1210)
!1210 = !{!1211, !1212, !1213}
!1211 = !DILocalVariable(name: "argv0", arg: 1, scope: !1209, file: !70, line: 39, type: !17)
!1212 = !DILocalVariable(name: "slash", scope: !1209, file: !70, line: 46, type: !17)
!1213 = !DILocalVariable(name: "base", scope: !1209, file: !70, line: 47, type: !17)
!1214 = !DILocation(line: 0, scope: !1209)
!1215 = !DILocation(line: 51, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1209, file: !70, line: 51, column: 7)
!1217 = !DILocation(line: 51, column: 7, scope: !1209)
!1218 = !DILocation(line: 55, column: 14, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !70, line: 52, column: 5)
!1220 = !DILocation(line: 54, column: 7, scope: !1219)
!1221 = !DILocation(line: 56, column: 7, scope: !1219)
!1222 = !DILocation(line: 59, column: 11, scope: !1209)
!1223 = !DILocation(line: 60, column: 17, scope: !1209)
!1224 = !DILocation(line: 60, column: 11, scope: !1209)
!1225 = !DILocation(line: 61, column: 12, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1209, file: !70, line: 61, column: 7)
!1227 = !DILocation(line: 61, column: 20, scope: !1226)
!1228 = !DILocation(line: 61, column: 25, scope: !1226)
!1229 = !DILocation(line: 61, column: 42, scope: !1226)
!1230 = !DILocation(line: 61, column: 28, scope: !1226)
!1231 = !DILocation(line: 61, column: 61, scope: !1226)
!1232 = !DILocation(line: 61, column: 7, scope: !1209)
!1233 = !DILocation(line: 64, column: 11, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !70, line: 64, column: 11)
!1235 = distinct !DILexicalBlock(scope: !1226, file: !70, line: 62, column: 5)
!1236 = !DILocation(line: 64, column: 36, scope: !1234)
!1237 = !DILocation(line: 64, column: 11, scope: !1235)
!1238 = !DILocation(line: 66, column: 24, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !70, line: 65, column: 9)
!1240 = !DILocation(line: 70, column: 41, scope: !1239)
!1241 = !DILocation(line: 72, column: 9, scope: !1239)
!1242 = !DILocation(line: 84, column: 16, scope: !1209)
!1243 = !DILocation(line: 90, column: 27, scope: !1209)
!1244 = !DILocation(line: 92, column: 1, scope: !1209)
!1245 = distinct !DISubprogram(name: "clone_quoting_options", scope: !76, file: !76, line: 122, type: !1246, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1249)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1248, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1249 = !{!1250, !1251, !1252}
!1250 = !DILocalVariable(name: "o", arg: 1, scope: !1245, file: !76, line: 122, type: !1248)
!1251 = !DILocalVariable(name: "e", scope: !1245, file: !76, line: 124, type: !20)
!1252 = !DILocalVariable(name: "p", scope: !1245, file: !76, line: 125, type: !1248)
!1253 = !DILocation(line: 0, scope: !1245)
!1254 = !DILocation(line: 124, column: 11, scope: !1245)
!1255 = !DILocation(line: 125, column: 40, scope: !1245)
!1256 = !DILocation(line: 125, column: 31, scope: !1245)
!1257 = !DILocation(line: 127, column: 9, scope: !1245)
!1258 = !DILocation(line: 128, column: 3, scope: !1245)
!1259 = distinct !DISubprogram(name: "get_quoting_style", scope: !76, file: !76, line: 133, type: !1260, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1264)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!78, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!1264 = !{!1265}
!1265 = !DILocalVariable(name: "o", arg: 1, scope: !1259, file: !76, line: 133, type: !1262)
!1266 = !DILocation(line: 0, scope: !1259)
!1267 = !DILocation(line: 135, column: 11, scope: !1259)
!1268 = !DILocation(line: 135, column: 46, scope: !1259)
!1269 = !{!1270, !659, i64 0}
!1270 = !{!"quoting_options", !659, i64 0, !832, i64 4, !659, i64 8, !658, i64 40, !658, i64 48}
!1271 = !DILocation(line: 135, column: 3, scope: !1259)
!1272 = distinct !DISubprogram(name: "set_quoting_style", scope: !76, file: !76, line: 141, type: !1273, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !1248, !78}
!1275 = !{!1276, !1277}
!1276 = !DILocalVariable(name: "o", arg: 1, scope: !1272, file: !76, line: 141, type: !1248)
!1277 = !DILocalVariable(name: "s", arg: 2, scope: !1272, file: !76, line: 141, type: !78)
!1278 = !DILocation(line: 0, scope: !1272)
!1279 = !DILocation(line: 143, column: 4, scope: !1272)
!1280 = !DILocation(line: 143, column: 39, scope: !1272)
!1281 = !DILocation(line: 143, column: 45, scope: !1272)
!1282 = !DILocation(line: 144, column: 1, scope: !1272)
!1283 = distinct !DISubprogram(name: "set_char_quoting", scope: !76, file: !76, line: 152, type: !1284, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!20, !1248, !7, !20}
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1293, !1294}
!1287 = !DILocalVariable(name: "o", arg: 1, scope: !1283, file: !76, line: 152, type: !1248)
!1288 = !DILocalVariable(name: "c", arg: 2, scope: !1283, file: !76, line: 152, type: !7)
!1289 = !DILocalVariable(name: "i", arg: 3, scope: !1283, file: !76, line: 152, type: !20)
!1290 = !DILocalVariable(name: "uc", scope: !1283, file: !76, line: 154, type: !9)
!1291 = !DILocalVariable(name: "p", scope: !1283, file: !76, line: 155, type: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1293 = !DILocalVariable(name: "shift", scope: !1283, file: !76, line: 157, type: !20)
!1294 = !DILocalVariable(name: "r", scope: !1283, file: !76, line: 158, type: !20)
!1295 = !DILocation(line: 0, scope: !1283)
!1296 = !DILocation(line: 156, column: 6, scope: !1283)
!1297 = !DILocation(line: 156, column: 62, scope: !1283)
!1298 = !DILocation(line: 156, column: 57, scope: !1283)
!1299 = !DILocation(line: 157, column: 15, scope: !1283)
!1300 = !DILocation(line: 158, column: 12, scope: !1283)
!1301 = !DILocation(line: 158, column: 15, scope: !1283)
!1302 = !DILocation(line: 158, column: 25, scope: !1283)
!1303 = !DILocation(line: 159, column: 13, scope: !1283)
!1304 = !DILocation(line: 159, column: 18, scope: !1283)
!1305 = !DILocation(line: 159, column: 23, scope: !1283)
!1306 = !DILocation(line: 159, column: 6, scope: !1283)
!1307 = !DILocation(line: 160, column: 3, scope: !1283)
!1308 = distinct !DISubprogram(name: "set_quoting_flags", scope: !76, file: !76, line: 168, type: !1309, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!20, !1248, !20}
!1311 = !{!1312, !1313, !1314}
!1312 = !DILocalVariable(name: "o", arg: 1, scope: !1308, file: !76, line: 168, type: !1248)
!1313 = !DILocalVariable(name: "i", arg: 2, scope: !1308, file: !76, line: 168, type: !20)
!1314 = !DILocalVariable(name: "r", scope: !1308, file: !76, line: 170, type: !20)
!1315 = !DILocation(line: 0, scope: !1308)
!1316 = !DILocation(line: 171, column: 8, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1308, file: !76, line: 171, column: 7)
!1318 = !DILocation(line: 171, column: 7, scope: !1308)
!1319 = !DILocation(line: 173, column: 10, scope: !1308)
!1320 = !{!1270, !832, i64 4}
!1321 = !DILocation(line: 174, column: 12, scope: !1308)
!1322 = !DILocation(line: 175, column: 3, scope: !1308)
!1323 = distinct !DISubprogram(name: "set_custom_quoting", scope: !76, file: !76, line: 179, type: !1324, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1248, !17, !17}
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(name: "o", arg: 1, scope: !1323, file: !76, line: 179, type: !1248)
!1328 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1323, file: !76, line: 180, type: !17)
!1329 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1323, file: !76, line: 180, type: !17)
!1330 = !DILocation(line: 0, scope: !1323)
!1331 = !DILocation(line: 182, column: 8, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1323, file: !76, line: 182, column: 7)
!1333 = !DILocation(line: 182, column: 7, scope: !1323)
!1334 = !DILocation(line: 184, column: 6, scope: !1323)
!1335 = !DILocation(line: 184, column: 12, scope: !1323)
!1336 = !DILocation(line: 185, column: 8, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1323, file: !76, line: 185, column: 7)
!1338 = !DILocation(line: 185, column: 19, scope: !1337)
!1339 = !DILocation(line: 186, column: 5, scope: !1337)
!1340 = !DILocation(line: 187, column: 6, scope: !1323)
!1341 = !DILocation(line: 187, column: 17, scope: !1323)
!1342 = !{!1270, !658, i64 40}
!1343 = !DILocation(line: 188, column: 6, scope: !1323)
!1344 = !DILocation(line: 188, column: 18, scope: !1323)
!1345 = !{!1270, !658, i64 48}
!1346 = !DILocation(line: 189, column: 1, scope: !1323)
!1347 = distinct !DISubprogram(name: "quotearg_buffer", scope: !76, file: !76, line: 784, type: !1348, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!114, !6, !114, !17, !114, !1262}
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1351 = !DILocalVariable(name: "buffer", arg: 1, scope: !1347, file: !76, line: 784, type: !6)
!1352 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1347, file: !76, line: 784, type: !114)
!1353 = !DILocalVariable(name: "arg", arg: 3, scope: !1347, file: !76, line: 785, type: !17)
!1354 = !DILocalVariable(name: "argsize", arg: 4, scope: !1347, file: !76, line: 785, type: !114)
!1355 = !DILocalVariable(name: "o", arg: 5, scope: !1347, file: !76, line: 786, type: !1262)
!1356 = !DILocalVariable(name: "p", scope: !1347, file: !76, line: 788, type: !1262)
!1357 = !DILocalVariable(name: "e", scope: !1347, file: !76, line: 789, type: !20)
!1358 = !DILocalVariable(name: "r", scope: !1347, file: !76, line: 790, type: !114)
!1359 = !DILocation(line: 0, scope: !1347)
!1360 = !DILocation(line: 788, column: 37, scope: !1347)
!1361 = !DILocation(line: 789, column: 11, scope: !1347)
!1362 = !DILocation(line: 791, column: 43, scope: !1347)
!1363 = !DILocation(line: 791, column: 53, scope: !1347)
!1364 = !DILocation(line: 791, column: 60, scope: !1347)
!1365 = !DILocation(line: 792, column: 43, scope: !1347)
!1366 = !DILocation(line: 792, column: 58, scope: !1347)
!1367 = !DILocation(line: 790, column: 14, scope: !1347)
!1368 = !DILocation(line: 793, column: 9, scope: !1347)
!1369 = !DILocation(line: 794, column: 3, scope: !1347)
!1370 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !76, file: !76, line: 256, type: !1371, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1375)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!114, !6, !114, !17, !114, !78, !20, !1373, !17, !17}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1400, !1401, !1402, !1403, !1404, !1407, !1408, !1426, !1429, !1430, !1437, !1440, !1441, !1442, !1443, !1444, !1445}
!1376 = !DILocalVariable(name: "buffer", arg: 1, scope: !1370, file: !76, line: 256, type: !6)
!1377 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1370, file: !76, line: 256, type: !114)
!1378 = !DILocalVariable(name: "arg", arg: 3, scope: !1370, file: !76, line: 257, type: !17)
!1379 = !DILocalVariable(name: "argsize", arg: 4, scope: !1370, file: !76, line: 257, type: !114)
!1380 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1370, file: !76, line: 258, type: !78)
!1381 = !DILocalVariable(name: "flags", arg: 6, scope: !1370, file: !76, line: 258, type: !20)
!1382 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1370, file: !76, line: 259, type: !1373)
!1383 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1370, file: !76, line: 260, type: !17)
!1384 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1370, file: !76, line: 261, type: !17)
!1385 = !DILocalVariable(name: "i", scope: !1370, file: !76, line: 263, type: !114)
!1386 = !DILocalVariable(name: "len", scope: !1370, file: !76, line: 264, type: !114)
!1387 = !DILocalVariable(name: "orig_buffersize", scope: !1370, file: !76, line: 265, type: !114)
!1388 = !DILocalVariable(name: "quote_string", scope: !1370, file: !76, line: 266, type: !17)
!1389 = !DILocalVariable(name: "quote_string_len", scope: !1370, file: !76, line: 267, type: !114)
!1390 = !DILocalVariable(name: "backslash_escapes", scope: !1370, file: !76, line: 268, type: !60)
!1391 = !DILocalVariable(name: "unibyte_locale", scope: !1370, file: !76, line: 269, type: !60)
!1392 = !DILocalVariable(name: "elide_outer_quotes", scope: !1370, file: !76, line: 270, type: !60)
!1393 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1370, file: !76, line: 271, type: !60)
!1394 = !DILocalVariable(name: "encountered_single_quote", scope: !1370, file: !76, line: 272, type: !60)
!1395 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1370, file: !76, line: 273, type: !60)
!1396 = !DILocalVariable(name: "c", scope: !1397, file: !76, line: 402, type: !9)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !76, line: 401, column: 5)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !76, line: 400, column: 3)
!1399 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 400, column: 3)
!1400 = !DILocalVariable(name: "esc", scope: !1397, file: !76, line: 403, type: !9)
!1401 = !DILocalVariable(name: "is_right_quote", scope: !1397, file: !76, line: 404, type: !60)
!1402 = !DILocalVariable(name: "escaping", scope: !1397, file: !76, line: 405, type: !60)
!1403 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1397, file: !76, line: 406, type: !60)
!1404 = !DILocalVariable(name: "m", scope: !1405, file: !76, line: 610, type: !114)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 608, column: 11)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !76, line: 426, column: 9)
!1407 = !DILocalVariable(name: "printable", scope: !1405, file: !76, line: 612, type: !60)
!1408 = !DILocalVariable(name: "mbstate", scope: !1409, file: !76, line: 621, type: !1411)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !76, line: 620, column: 15)
!1410 = distinct !DILexicalBlock(scope: !1405, file: !76, line: 614, column: 17)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1412, line: 6, baseType: !1413)
!1412 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1414, line: 21, baseType: !1415)
!1414 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1414, line: 13, size: 64, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1415, file: !1414, line: 15, baseType: !20, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1415, file: !1414, line: 20, baseType: !1419, size: 32, offset: 32)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !1414, line: 16, size: 32, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1419, file: !1414, line: 18, baseType: !38, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1419, file: !1414, line: 19, baseType: !1423, size: 32)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 4)
!1426 = !DILocalVariable(name: "w", scope: !1427, file: !76, line: 631, type: !1428)
!1427 = distinct !DILexicalBlock(scope: !1409, file: !76, line: 630, column: 19)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !115, line: 74, baseType: !20)
!1429 = !DILocalVariable(name: "bytes", scope: !1427, file: !76, line: 632, type: !114)
!1430 = !DILocalVariable(name: "j", scope: !1431, file: !76, line: 657, type: !114)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !76, line: 656, column: 27)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !76, line: 654, column: 29)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !76, line: 649, column: 23)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !76, line: 641, column: 30)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !76, line: 636, column: 30)
!1436 = distinct !DILexicalBlock(scope: !1427, file: !76, line: 634, column: 25)
!1437 = !DILocalVariable(name: "ilim", scope: !1438, file: !76, line: 684, type: !114)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !76, line: 681, column: 15)
!1439 = distinct !DILexicalBlock(scope: !1405, file: !76, line: 680, column: 17)
!1440 = !DILabel(scope: !1370, name: "process_input", file: !76, line: 314)
!1441 = !DILabel(scope: !1406, name: "c_and_shell_escape", file: !76, line: 512)
!1442 = !DILabel(scope: !1406, name: "c_escape", file: !76, line: 517)
!1443 = !DILabel(scope: !1397, name: "store_escape", file: !76, line: 719)
!1444 = !DILabel(scope: !1397, name: "store_c", file: !76, line: 722)
!1445 = !DILabel(scope: !1370, name: "force_outer_quoting_style", file: !76, line: 763)
!1446 = !DILocation(line: 0, scope: !1370)
!1447 = !DILocation(line: 269, column: 25, scope: !1370)
!1448 = !DILocation(line: 269, column: 36, scope: !1370)
!1449 = !DILocation(line: 270, column: 8, scope: !1370)
!1450 = !DILocation(line: 273, column: 3, scope: !1370)
!1451 = !DILocation(line: 265, column: 10, scope: !1370)
!1452 = !DILocation(line: 266, column: 15, scope: !1370)
!1453 = !DILocation(line: 267, column: 10, scope: !1370)
!1454 = !DILocation(line: 268, column: 8, scope: !1370)
!1455 = !DILocation(line: 271, column: 8, scope: !1370)
!1456 = !DILocation(line: 272, column: 8, scope: !1370)
!1457 = !DILocation(line: 273, column: 8, scope: !1370)
!1458 = !DILocation(line: 314, column: 2, scope: !1370)
!1459 = !DILocation(line: 316, column: 3, scope: !1370)
!1460 = !DILocation(line: 323, column: 11, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 317, column: 5)
!1462 = !DILocation(line: 323, column: 12, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1461, file: !76, line: 323, column: 11)
!1464 = !DILocation(line: 324, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !76, line: 324, column: 9)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !76, line: 324, column: 9)
!1467 = !DILocation(line: 324, column: 9, scope: !1466)
!1468 = !DILocation(line: 362, column: 26, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !76, line: 340, column: 11)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !76, line: 339, column: 13)
!1471 = distinct !DILexicalBlock(scope: !1461, file: !76, line: 338, column: 7)
!1472 = !DILocation(line: 363, column: 27, scope: !1469)
!1473 = !DILocation(line: 364, column: 11, scope: !1469)
!1474 = !DILocation(line: 365, column: 14, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !76, line: 365, column: 13)
!1476 = !DILocation(line: 365, column: 13, scope: !1471)
!1477 = !DILocation(line: 366, column: 43, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !76, line: 366, column: 11)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !76, line: 366, column: 11)
!1480 = !DILocation(line: 366, column: 11, scope: !1479)
!1481 = !DILocation(line: 367, column: 13, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !76, line: 367, column: 13)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !76, line: 367, column: 13)
!1484 = !DILocation(line: 367, column: 13, scope: !1483)
!1485 = !DILocation(line: 366, column: 70, scope: !1478)
!1486 = distinct !{!1486, !1480, !1487, !699}
!1487 = !DILocation(line: 367, column: 13, scope: !1479)
!1488 = !DILocation(line: 264, column: 10, scope: !1370)
!1489 = !DILocation(line: 370, column: 28, scope: !1471)
!1490 = !DILocation(line: 372, column: 7, scope: !1461)
!1491 = !DILocation(line: 376, column: 7, scope: !1461)
!1492 = !DILocation(line: 379, column: 7, scope: !1461)
!1493 = !DILocation(line: 381, column: 12, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1461, file: !76, line: 381, column: 11)
!1495 = !DILocation(line: 381, column: 11, scope: !1461)
!1496 = !DILocation(line: 386, column: 12, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1461, file: !76, line: 386, column: 11)
!1498 = !DILocation(line: 386, column: 11, scope: !1461)
!1499 = !DILocation(line: 387, column: 9, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !76, line: 387, column: 9)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !76, line: 387, column: 9)
!1502 = !DILocation(line: 387, column: 9, scope: !1501)
!1503 = !DILocation(line: 394, column: 7, scope: !1461)
!1504 = !DILocation(line: 397, column: 7, scope: !1461)
!1505 = !DILocation(line: 400, column: 8, scope: !1399)
!1506 = !DILocation(line: 0, scope: !1399)
!1507 = !DILocation(line: 400, column: 27, scope: !1398)
!1508 = !DILocation(line: 400, column: 19, scope: !1398)
!1509 = !DILocation(line: 400, column: 41, scope: !1398)
!1510 = !DILocation(line: 400, column: 48, scope: !1398)
!1511 = !DILocation(line: 400, column: 3, scope: !1399)
!1512 = !DILocation(line: 400, column: 60, scope: !1398)
!1513 = !DILocation(line: 0, scope: !1397)
!1514 = !DILocation(line: 409, column: 11, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1397, file: !76, line: 408, column: 11)
!1516 = !DILocation(line: 411, column: 17, scope: !1515)
!1517 = !DILocation(line: 412, column: 39, scope: !1515)
!1518 = !DILocation(line: 416, column: 32, scope: !1515)
!1519 = !DILocation(line: 412, column: 19, scope: !1515)
!1520 = !DILocation(line: 412, column: 15, scope: !1515)
!1521 = !DILocation(line: 417, column: 11, scope: !1515)
!1522 = !DILocation(line: 417, column: 26, scope: !1515)
!1523 = !DILocation(line: 417, column: 14, scope: !1515)
!1524 = !DILocation(line: 417, column: 63, scope: !1515)
!1525 = !DILocation(line: 408, column: 11, scope: !1397)
!1526 = !DILocation(line: 424, column: 11, scope: !1397)
!1527 = !DILocation(line: 425, column: 7, scope: !1397)
!1528 = !DILocation(line: 428, column: 15, scope: !1406)
!1529 = !DILocation(line: 430, column: 15, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !76, line: 430, column: 15)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !76, line: 429, column: 13)
!1532 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 428, column: 15)
!1533 = !DILocation(line: 430, column: 15, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !76, line: 430, column: 15)
!1535 = !DILocation(line: 430, column: 15, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !76, line: 430, column: 15)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !76, line: 430, column: 15)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !76, line: 430, column: 15)
!1539 = !DILocation(line: 430, column: 15, scope: !1537)
!1540 = !DILocation(line: 430, column: 15, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !76, line: 430, column: 15)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !76, line: 430, column: 15)
!1543 = !DILocation(line: 430, column: 15, scope: !1542)
!1544 = !DILocation(line: 430, column: 15, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !76, line: 430, column: 15)
!1546 = distinct !DILexicalBlock(scope: !1538, file: !76, line: 430, column: 15)
!1547 = !DILocation(line: 430, column: 15, scope: !1546)
!1548 = !DILocation(line: 430, column: 15, scope: !1538)
!1549 = !DILocation(line: 430, column: 15, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !76, line: 430, column: 15)
!1551 = distinct !DILexicalBlock(scope: !1530, file: !76, line: 430, column: 15)
!1552 = !DILocation(line: 430, column: 15, scope: !1551)
!1553 = !DILocation(line: 438, column: 19, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1531, file: !76, line: 437, column: 19)
!1555 = !DILocation(line: 438, column: 48, scope: !1554)
!1556 = !DILocation(line: 438, column: 59, scope: !1554)
!1557 = !DILocation(line: 440, column: 19, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !76, line: 440, column: 19)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !76, line: 440, column: 19)
!1560 = distinct !DILexicalBlock(scope: !1554, file: !76, line: 439, column: 17)
!1561 = !DILocation(line: 440, column: 19, scope: !1559)
!1562 = !DILocation(line: 441, column: 19, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !76, line: 441, column: 19)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !76, line: 441, column: 19)
!1565 = !DILocation(line: 441, column: 19, scope: !1564)
!1566 = !DILocation(line: 442, column: 17, scope: !1560)
!1567 = !DILocation(line: 449, column: 20, scope: !1532)
!1568 = !DILocation(line: 454, column: 11, scope: !1406)
!1569 = !DILocation(line: 457, column: 19, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 455, column: 13)
!1571 = !DILocation(line: 463, column: 19, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1570, file: !76, line: 462, column: 19)
!1573 = !DILocation(line: 463, column: 47, scope: !1572)
!1574 = !DILocation(line: 463, column: 41, scope: !1572)
!1575 = !DILocation(line: 463, column: 52, scope: !1572)
!1576 = !DILocation(line: 462, column: 19, scope: !1570)
!1577 = !DILocation(line: 464, column: 25, scope: !1572)
!1578 = !DILocation(line: 464, column: 17, scope: !1572)
!1579 = !DILocation(line: 471, column: 25, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1572, file: !76, line: 465, column: 19)
!1581 = !DILocation(line: 475, column: 21, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !76, line: 475, column: 21)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !76, line: 475, column: 21)
!1584 = !DILocation(line: 475, column: 21, scope: !1583)
!1585 = !DILocation(line: 476, column: 21, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !76, line: 476, column: 21)
!1587 = distinct !DILexicalBlock(scope: !1580, file: !76, line: 476, column: 21)
!1588 = !DILocation(line: 476, column: 21, scope: !1587)
!1589 = !DILocation(line: 477, column: 21, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !76, line: 477, column: 21)
!1591 = distinct !DILexicalBlock(scope: !1580, file: !76, line: 477, column: 21)
!1592 = !DILocation(line: 477, column: 21, scope: !1591)
!1593 = !DILocation(line: 478, column: 21, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !76, line: 478, column: 21)
!1595 = distinct !DILexicalBlock(scope: !1580, file: !76, line: 478, column: 21)
!1596 = !DILocation(line: 478, column: 21, scope: !1595)
!1597 = !DILocation(line: 479, column: 21, scope: !1580)
!1598 = !DILocation(line: 492, column: 31, scope: !1406)
!1599 = !DILocation(line: 493, column: 31, scope: !1406)
!1600 = !DILocation(line: 495, column: 31, scope: !1406)
!1601 = !DILocation(line: 496, column: 31, scope: !1406)
!1602 = !DILocation(line: 497, column: 31, scope: !1406)
!1603 = !DILocation(line: 500, column: 15, scope: !1406)
!1604 = !DILocation(line: 502, column: 19, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !76, line: 501, column: 13)
!1606 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 500, column: 15)
!1607 = !DILocation(line: 509, column: 33, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 509, column: 15)
!1609 = !DILocation(line: 0, scope: !1406)
!1610 = !DILocation(line: 512, column: 9, scope: !1406)
!1611 = !DILocation(line: 514, column: 15, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 513, column: 15)
!1613 = !DILocation(line: 517, column: 9, scope: !1406)
!1614 = !DILocation(line: 518, column: 15, scope: !1406)
!1615 = !DILocation(line: 526, column: 15, scope: !1406)
!1616 = !DILocation(line: 526, column: 40, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 526, column: 15)
!1618 = !DILocation(line: 526, column: 47, scope: !1617)
!1619 = !DILocation(line: 526, column: 18, scope: !1617)
!1620 = !DILocation(line: 530, column: 17, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 530, column: 15)
!1622 = !DILocation(line: 530, column: 15, scope: !1406)
!1623 = !DILocation(line: 535, column: 11, scope: !1406)
!1624 = !DILocation(line: 549, column: 15, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 548, column: 15)
!1626 = !DILocation(line: 556, column: 15, scope: !1406)
!1627 = !DILocation(line: 558, column: 19, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !76, line: 557, column: 13)
!1629 = distinct !DILexicalBlock(scope: !1406, file: !76, line: 556, column: 15)
!1630 = !DILocation(line: 561, column: 19, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !76, line: 561, column: 19)
!1632 = !DILocation(line: 561, column: 30, scope: !1631)
!1633 = !DILocation(line: 570, column: 15, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !76, line: 570, column: 15)
!1635 = distinct !DILexicalBlock(scope: !1628, file: !76, line: 570, column: 15)
!1636 = !DILocation(line: 570, column: 15, scope: !1635)
!1637 = !DILocation(line: 571, column: 15, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !76, line: 571, column: 15)
!1639 = distinct !DILexicalBlock(scope: !1628, file: !76, line: 571, column: 15)
!1640 = !DILocation(line: 571, column: 15, scope: !1639)
!1641 = !DILocation(line: 572, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !76, line: 572, column: 15)
!1643 = distinct !DILexicalBlock(scope: !1628, file: !76, line: 572, column: 15)
!1644 = !DILocation(line: 572, column: 15, scope: !1643)
!1645 = !DILocation(line: 574, column: 13, scope: !1628)
!1646 = !DILocation(line: 614, column: 17, scope: !1405)
!1647 = !DILocation(line: 0, scope: !1405)
!1648 = !DILocation(line: 617, column: 29, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1410, file: !76, line: 615, column: 15)
!1650 = !{!878, !878, i64 0}
!1651 = !DILocation(line: 617, column: 27, scope: !1649)
!1652 = !DILocation(line: 678, column: 40, scope: !1405)
!1653 = !DILocation(line: 680, column: 23, scope: !1439)
!1654 = !DILocation(line: 621, column: 17, scope: !1409)
!1655 = !DILocation(line: 621, column: 27, scope: !1409)
!1656 = !DILocalVariable(name: "__dest", arg: 1, scope: !1657, file: !1658, line: 57, type: !8)
!1657 = distinct !DISubprogram(name: "memset", scope: !1658, file: !1658, line: 57, type: !1659, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1661)
!1658 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!8, !8, !20, !114}
!1661 = !{!1656, !1662, !1663}
!1662 = !DILocalVariable(name: "__ch", arg: 2, scope: !1657, file: !1658, line: 57, type: !20)
!1663 = !DILocalVariable(name: "__len", arg: 3, scope: !1657, file: !1658, line: 57, type: !114)
!1664 = !DILocation(line: 0, scope: !1657, inlinedAt: !1665)
!1665 = distinct !DILocation(line: 622, column: 17, scope: !1409)
!1666 = !DILocation(line: 59, column: 10, scope: !1657, inlinedAt: !1665)
!1667 = !DILocation(line: 626, column: 29, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1409, file: !76, line: 626, column: 21)
!1669 = !DILocation(line: 626, column: 21, scope: !1409)
!1670 = !DILocation(line: 627, column: 29, scope: !1668)
!1671 = !DILocation(line: 627, column: 19, scope: !1668)
!1672 = !DILocation(line: 629, column: 17, scope: !1409)
!1673 = !DILocation(line: 624, column: 19, scope: !1409)
!1674 = !DILocation(line: 625, column: 27, scope: !1409)
!1675 = !DILocation(line: 631, column: 21, scope: !1427)
!1676 = !DILocation(line: 632, column: 56, scope: !1427)
!1677 = !DILocation(line: 632, column: 50, scope: !1427)
!1678 = !DILocation(line: 633, column: 53, scope: !1427)
!1679 = !DILocation(line: 0, scope: !1427)
!1680 = !DILocation(line: 632, column: 36, scope: !1427)
!1681 = !DILocation(line: 634, column: 25, scope: !1427)
!1682 = !DILocation(line: 644, column: 38, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1434, file: !76, line: 642, column: 23)
!1684 = !DILocation(line: 644, column: 48, scope: !1683)
!1685 = !DILocation(line: 644, column: 25, scope: !1683)
!1686 = !DILocation(line: 644, column: 51, scope: !1683)
!1687 = !DILocation(line: 645, column: 28, scope: !1683)
!1688 = !DILocation(line: 644, column: 34, scope: !1683)
!1689 = distinct !{!1689, !1685, !1687, !699}
!1690 = !DILocation(line: 655, column: 29, scope: !1432)
!1691 = !DILocation(line: 0, scope: !1431)
!1692 = !DILocation(line: 659, column: 49, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !76, line: 658, column: 29)
!1694 = distinct !DILexicalBlock(scope: !1431, file: !76, line: 658, column: 29)
!1695 = !DILocation(line: 659, column: 39, scope: !1693)
!1696 = !DILocation(line: 659, column: 31, scope: !1693)
!1697 = !DILocation(line: 658, column: 53, scope: !1693)
!1698 = !DILocation(line: 658, column: 43, scope: !1693)
!1699 = !DILocation(line: 658, column: 29, scope: !1694)
!1700 = distinct !{!1700, !1699, !1701, !699}
!1701 = !DILocation(line: 667, column: 33, scope: !1694)
!1702 = !DILocation(line: 674, column: 19, scope: !1409)
!1703 = !DILocation(line: 670, column: 41, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1433, file: !76, line: 670, column: 29)
!1705 = !DILocation(line: 670, column: 31, scope: !1704)
!1706 = !DILocation(line: 670, column: 29, scope: !1433)
!1707 = !DILocation(line: 672, column: 27, scope: !1433)
!1708 = !DILocation(line: 675, column: 26, scope: !1409)
!1709 = !DILocation(line: 675, column: 24, scope: !1409)
!1710 = !DILocation(line: 674, column: 19, scope: !1427)
!1711 = distinct !{!1711, !1672, !1712, !699}
!1712 = !DILocation(line: 675, column: 44, scope: !1409)
!1713 = !DILocation(line: 676, column: 15, scope: !1410)
!1714 = !DILocation(line: 680, column: 19, scope: !1439)
!1715 = !DILocation(line: 680, column: 45, scope: !1439)
!1716 = !DILocation(line: 684, column: 33, scope: !1438)
!1717 = !DILocation(line: 0, scope: !1438)
!1718 = !DILocation(line: 686, column: 17, scope: !1438)
!1719 = !DILocation(line: 405, column: 12, scope: !1397)
!1720 = !DILocation(line: 688, column: 43, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !76, line: 688, column: 25)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !76, line: 687, column: 19)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !76, line: 686, column: 17)
!1724 = distinct !DILexicalBlock(scope: !1438, file: !76, line: 686, column: 17)
!1725 = !DILocation(line: 690, column: 25, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !76, line: 690, column: 25)
!1727 = distinct !DILexicalBlock(scope: !1721, file: !76, line: 689, column: 23)
!1728 = !DILocation(line: 690, column: 25, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1726, file: !76, line: 690, column: 25)
!1730 = !DILocation(line: 690, column: 25, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !76, line: 690, column: 25)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !76, line: 690, column: 25)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !76, line: 690, column: 25)
!1734 = !DILocation(line: 690, column: 25, scope: !1732)
!1735 = !DILocation(line: 690, column: 25, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !76, line: 690, column: 25)
!1737 = distinct !DILexicalBlock(scope: !1733, file: !76, line: 690, column: 25)
!1738 = !DILocation(line: 690, column: 25, scope: !1737)
!1739 = !DILocation(line: 690, column: 25, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !76, line: 690, column: 25)
!1741 = distinct !DILexicalBlock(scope: !1733, file: !76, line: 690, column: 25)
!1742 = !DILocation(line: 690, column: 25, scope: !1741)
!1743 = !DILocation(line: 690, column: 25, scope: !1733)
!1744 = !DILocation(line: 690, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !76, line: 690, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1726, file: !76, line: 690, column: 25)
!1747 = !DILocation(line: 690, column: 25, scope: !1746)
!1748 = !DILocation(line: 691, column: 25, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !76, line: 691, column: 25)
!1750 = distinct !DILexicalBlock(scope: !1727, file: !76, line: 691, column: 25)
!1751 = !DILocation(line: 691, column: 25, scope: !1750)
!1752 = !DILocation(line: 692, column: 25, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !76, line: 692, column: 25)
!1754 = distinct !DILexicalBlock(scope: !1727, file: !76, line: 692, column: 25)
!1755 = !DILocation(line: 692, column: 25, scope: !1754)
!1756 = !DILocation(line: 693, column: 38, scope: !1727)
!1757 = !DILocation(line: 693, column: 33, scope: !1727)
!1758 = !DILocation(line: 694, column: 23, scope: !1727)
!1759 = !DILocation(line: 695, column: 30, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1721, file: !76, line: 695, column: 30)
!1761 = !DILocation(line: 695, column: 30, scope: !1721)
!1762 = !DILocation(line: 697, column: 25, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !76, line: 697, column: 25)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !76, line: 697, column: 25)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !76, line: 696, column: 23)
!1766 = !DILocation(line: 697, column: 25, scope: !1764)
!1767 = !DILocation(line: 699, column: 23, scope: !1765)
!1768 = !DILocation(line: 700, column: 35, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1722, file: !76, line: 700, column: 25)
!1770 = !DILocation(line: 700, column: 30, scope: !1769)
!1771 = !DILocation(line: 700, column: 25, scope: !1722)
!1772 = !DILocation(line: 702, column: 21, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !76, line: 702, column: 21)
!1774 = distinct !DILexicalBlock(scope: !1722, file: !76, line: 702, column: 21)
!1775 = !DILocation(line: 702, column: 21, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !76, line: 702, column: 21)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !76, line: 702, column: 21)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !76, line: 702, column: 21)
!1779 = !DILocation(line: 702, column: 21, scope: !1777)
!1780 = !DILocation(line: 702, column: 21, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !76, line: 702, column: 21)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !76, line: 702, column: 21)
!1783 = !DILocation(line: 702, column: 21, scope: !1782)
!1784 = !DILocation(line: 702, column: 21, scope: !1778)
!1785 = !DILocation(line: 0, scope: !1722)
!1786 = !DILocation(line: 703, column: 21, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !76, line: 703, column: 21)
!1788 = distinct !DILexicalBlock(scope: !1722, file: !76, line: 703, column: 21)
!1789 = !DILocation(line: 703, column: 21, scope: !1788)
!1790 = !DILocation(line: 704, column: 25, scope: !1722)
!1791 = !DILocation(line: 686, column: 17, scope: !1723)
!1792 = distinct !{!1792, !1793, !1794}
!1793 = !DILocation(line: 686, column: 17, scope: !1724)
!1794 = !DILocation(line: 705, column: 19, scope: !1724)
!1795 = !DILocation(line: 416, column: 30, scope: !1515)
!1796 = !DILocation(line: 712, column: 34, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1397, file: !76, line: 712, column: 11)
!1798 = !DILocation(line: 715, column: 35, scope: !1797)
!1799 = !DILocation(line: 715, column: 17, scope: !1797)
!1800 = !DILocation(line: 715, column: 47, scope: !1797)
!1801 = !DILocation(line: 715, column: 65, scope: !1797)
!1802 = !DILocation(line: 716, column: 11, scope: !1797)
!1803 = !DILocation(line: 712, column: 11, scope: !1397)
!1804 = !DILocation(line: 400, column: 10, scope: !1399)
!1805 = !DILocation(line: 719, column: 5, scope: !1397)
!1806 = !DILocation(line: 720, column: 7, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1397, file: !76, line: 720, column: 7)
!1808 = !DILocation(line: 720, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1807, file: !76, line: 720, column: 7)
!1810 = !DILocation(line: 720, column: 7, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !76, line: 720, column: 7)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !76, line: 720, column: 7)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !76, line: 720, column: 7)
!1814 = !DILocation(line: 720, column: 7, scope: !1812)
!1815 = !DILocation(line: 720, column: 7, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !76, line: 720, column: 7)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !76, line: 720, column: 7)
!1818 = !DILocation(line: 720, column: 7, scope: !1817)
!1819 = !DILocation(line: 720, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !76, line: 720, column: 7)
!1821 = distinct !DILexicalBlock(scope: !1813, file: !76, line: 720, column: 7)
!1822 = !DILocation(line: 720, column: 7, scope: !1821)
!1823 = !DILocation(line: 720, column: 7, scope: !1813)
!1824 = !DILocation(line: 720, column: 7, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !76, line: 720, column: 7)
!1826 = distinct !DILexicalBlock(scope: !1807, file: !76, line: 720, column: 7)
!1827 = !DILocation(line: 720, column: 7, scope: !1826)
!1828 = !DILocation(line: 722, column: 5, scope: !1397)
!1829 = !DILocation(line: 723, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !76, line: 723, column: 7)
!1831 = distinct !DILexicalBlock(scope: !1397, file: !76, line: 723, column: 7)
!1832 = !DILocation(line: 424, column: 9, scope: !1397)
!1833 = !DILocation(line: 723, column: 7, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !76, line: 723, column: 7)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !76, line: 723, column: 7)
!1836 = distinct !DILexicalBlock(scope: !1830, file: !76, line: 723, column: 7)
!1837 = !DILocation(line: 723, column: 7, scope: !1835)
!1838 = !DILocation(line: 723, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !76, line: 723, column: 7)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !76, line: 723, column: 7)
!1841 = !DILocation(line: 723, column: 7, scope: !1840)
!1842 = !DILocation(line: 723, column: 7, scope: !1836)
!1843 = !DILocation(line: 724, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !76, line: 724, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1397, file: !76, line: 724, column: 7)
!1846 = !DILocation(line: 724, column: 7, scope: !1845)
!1847 = !DILocation(line: 726, column: 13, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1397, file: !76, line: 726, column: 11)
!1849 = !DILocation(line: 726, column: 11, scope: !1397)
!1850 = !DILocation(line: 728, column: 5, scope: !1398)
!1851 = !DILocation(line: 400, column: 75, scope: !1398)
!1852 = !DILocation(line: 400, column: 3, scope: !1398)
!1853 = distinct !{!1853, !1511, !1854, !699}
!1854 = !DILocation(line: 728, column: 5, scope: !1399)
!1855 = !DILocation(line: 730, column: 11, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 730, column: 7)
!1857 = !DILocation(line: 730, column: 16, scope: !1856)
!1858 = !DILocation(line: 738, column: 51, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 738, column: 7)
!1860 = !DILocation(line: 741, column: 11, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !76, line: 741, column: 11)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !76, line: 740, column: 5)
!1863 = !DILocation(line: 741, column: 11, scope: !1862)
!1864 = !DILocation(line: 742, column: 16, scope: !1861)
!1865 = !DILocation(line: 742, column: 9, scope: !1861)
!1866 = !DILocation(line: 746, column: 18, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1861, file: !76, line: 746, column: 16)
!1868 = !DILocation(line: 746, column: 29, scope: !1867)
!1869 = !DILocation(line: 755, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 755, column: 7)
!1871 = !DILocation(line: 755, column: 20, scope: !1870)
!1872 = !DILocation(line: 756, column: 12, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !76, line: 756, column: 5)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !76, line: 756, column: 5)
!1875 = !DILocation(line: 756, column: 5, scope: !1874)
!1876 = !DILocation(line: 757, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !76, line: 757, column: 7)
!1878 = distinct !DILexicalBlock(scope: !1873, file: !76, line: 757, column: 7)
!1879 = !DILocation(line: 757, column: 7, scope: !1878)
!1880 = !DILocation(line: 756, column: 39, scope: !1873)
!1881 = distinct !{!1881, !1875, !1882, !699}
!1882 = !DILocation(line: 757, column: 7, scope: !1874)
!1883 = !DILocation(line: 759, column: 11, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 759, column: 7)
!1885 = !DILocation(line: 759, column: 7, scope: !1370)
!1886 = !DILocation(line: 760, column: 5, scope: !1884)
!1887 = !DILocation(line: 760, column: 17, scope: !1884)
!1888 = !DILocation(line: 763, column: 2, scope: !1370)
!1889 = !DILocation(line: 766, column: 51, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1370, file: !76, line: 766, column: 7)
!1891 = !DILocation(line: 766, column: 21, scope: !1890)
!1892 = !DILocation(line: 770, column: 42, scope: !1370)
!1893 = !DILocation(line: 768, column: 10, scope: !1370)
!1894 = !DILocation(line: 768, column: 3, scope: !1370)
!1895 = !DILocation(line: 772, column: 1, scope: !1370)
!1896 = distinct !DISubprogram(name: "gettext_quote", scope: !76, file: !76, line: 207, type: !1897, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!17, !17, !78}
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DILocalVariable(name: "msgid", arg: 1, scope: !1896, file: !76, line: 207, type: !17)
!1901 = !DILocalVariable(name: "s", arg: 2, scope: !1896, file: !76, line: 207, type: !78)
!1902 = !DILocalVariable(name: "translation", scope: !1896, file: !76, line: 209, type: !17)
!1903 = !DILocalVariable(name: "locale_code", scope: !1896, file: !76, line: 210, type: !17)
!1904 = !DILocation(line: 0, scope: !1896)
!1905 = !DILocation(line: 209, column: 29, scope: !1896)
!1906 = !DILocation(line: 212, column: 19, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1896, file: !76, line: 212, column: 7)
!1908 = !DILocation(line: 212, column: 7, scope: !1896)
!1909 = !DILocation(line: 233, column: 17, scope: !1896)
!1910 = !DILocalVariable(name: "s1", arg: 1, scope: !1911, file: !1912, line: 160, type: !17)
!1911 = distinct !DISubprogram(name: "strcaseeq0", scope: !1912, file: !1912, line: 160, type: !1913, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1915)
!1912 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1915 = !{!1910, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925}
!1916 = !DILocalVariable(name: "s2", arg: 2, scope: !1911, file: !1912, line: 160, type: !17)
!1917 = !DILocalVariable(name: "s20", arg: 3, scope: !1911, file: !1912, line: 160, type: !7)
!1918 = !DILocalVariable(name: "s21", arg: 4, scope: !1911, file: !1912, line: 160, type: !7)
!1919 = !DILocalVariable(name: "s22", arg: 5, scope: !1911, file: !1912, line: 160, type: !7)
!1920 = !DILocalVariable(name: "s23", arg: 6, scope: !1911, file: !1912, line: 160, type: !7)
!1921 = !DILocalVariable(name: "s24", arg: 7, scope: !1911, file: !1912, line: 160, type: !7)
!1922 = !DILocalVariable(name: "s25", arg: 8, scope: !1911, file: !1912, line: 160, type: !7)
!1923 = !DILocalVariable(name: "s26", arg: 9, scope: !1911, file: !1912, line: 160, type: !7)
!1924 = !DILocalVariable(name: "s27", arg: 10, scope: !1911, file: !1912, line: 160, type: !7)
!1925 = !DILocalVariable(name: "s28", arg: 11, scope: !1911, file: !1912, line: 160, type: !7)
!1926 = !DILocation(line: 0, scope: !1911, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 234, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1896, file: !76, line: 234, column: 7)
!1929 = !DILocation(line: 162, column: 7, scope: !1930, inlinedAt: !1927)
!1930 = distinct !DILexicalBlock(scope: !1911, file: !1912, line: 162, column: 7)
!1931 = !DILocalVariable(name: "s1", arg: 1, scope: !1932, file: !1912, line: 146, type: !17)
!1932 = distinct !DISubprogram(name: "strcaseeq1", scope: !1912, file: !1912, line: 146, type: !1933, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7, !7}
!1935 = !{!1931, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1936 = !DILocalVariable(name: "s2", arg: 2, scope: !1932, file: !1912, line: 146, type: !17)
!1937 = !DILocalVariable(name: "s21", arg: 3, scope: !1932, file: !1912, line: 146, type: !7)
!1938 = !DILocalVariable(name: "s22", arg: 4, scope: !1932, file: !1912, line: 146, type: !7)
!1939 = !DILocalVariable(name: "s23", arg: 5, scope: !1932, file: !1912, line: 146, type: !7)
!1940 = !DILocalVariable(name: "s24", arg: 6, scope: !1932, file: !1912, line: 146, type: !7)
!1941 = !DILocalVariable(name: "s25", arg: 7, scope: !1932, file: !1912, line: 146, type: !7)
!1942 = !DILocalVariable(name: "s26", arg: 8, scope: !1932, file: !1912, line: 146, type: !7)
!1943 = !DILocalVariable(name: "s27", arg: 9, scope: !1932, file: !1912, line: 146, type: !7)
!1944 = !DILocalVariable(name: "s28", arg: 10, scope: !1932, file: !1912, line: 146, type: !7)
!1945 = !DILocation(line: 0, scope: !1932, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 167, column: 16, scope: !1947, inlinedAt: !1927)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !1912, line: 164, column: 11)
!1948 = distinct !DILexicalBlock(scope: !1930, file: !1912, line: 163, column: 5)
!1949 = !DILocation(line: 148, column: 7, scope: !1950, inlinedAt: !1946)
!1950 = distinct !DILexicalBlock(scope: !1932, file: !1912, line: 148, column: 7)
!1951 = !DILocalVariable(name: "s1", arg: 1, scope: !1952, file: !1912, line: 132, type: !17)
!1952 = distinct !DISubprogram(name: "strcaseeq2", scope: !1912, file: !1912, line: 132, type: !1953, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1955)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7, !7}
!1955 = !{!1951, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963}
!1956 = !DILocalVariable(name: "s2", arg: 2, scope: !1952, file: !1912, line: 132, type: !17)
!1957 = !DILocalVariable(name: "s22", arg: 3, scope: !1952, file: !1912, line: 132, type: !7)
!1958 = !DILocalVariable(name: "s23", arg: 4, scope: !1952, file: !1912, line: 132, type: !7)
!1959 = !DILocalVariable(name: "s24", arg: 5, scope: !1952, file: !1912, line: 132, type: !7)
!1960 = !DILocalVariable(name: "s25", arg: 6, scope: !1952, file: !1912, line: 132, type: !7)
!1961 = !DILocalVariable(name: "s26", arg: 7, scope: !1952, file: !1912, line: 132, type: !7)
!1962 = !DILocalVariable(name: "s27", arg: 8, scope: !1952, file: !1912, line: 132, type: !7)
!1963 = !DILocalVariable(name: "s28", arg: 9, scope: !1952, file: !1912, line: 132, type: !7)
!1964 = !DILocation(line: 0, scope: !1952, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 153, column: 16, scope: !1966, inlinedAt: !1946)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !1912, line: 150, column: 11)
!1967 = distinct !DILexicalBlock(scope: !1950, file: !1912, line: 149, column: 5)
!1968 = !DILocation(line: 134, column: 7, scope: !1969, inlinedAt: !1965)
!1969 = distinct !DILexicalBlock(scope: !1952, file: !1912, line: 134, column: 7)
!1970 = !DILocalVariable(name: "s1", arg: 1, scope: !1971, file: !1912, line: 118, type: !17)
!1971 = distinct !DISubprogram(name: "strcaseeq3", scope: !1912, file: !1912, line: 118, type: !1972, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!20, !17, !17, !7, !7, !7, !7, !7, !7}
!1974 = !{!1970, !1975, !1976, !1977, !1978, !1979, !1980, !1981}
!1975 = !DILocalVariable(name: "s2", arg: 2, scope: !1971, file: !1912, line: 118, type: !17)
!1976 = !DILocalVariable(name: "s23", arg: 3, scope: !1971, file: !1912, line: 118, type: !7)
!1977 = !DILocalVariable(name: "s24", arg: 4, scope: !1971, file: !1912, line: 118, type: !7)
!1978 = !DILocalVariable(name: "s25", arg: 5, scope: !1971, file: !1912, line: 118, type: !7)
!1979 = !DILocalVariable(name: "s26", arg: 6, scope: !1971, file: !1912, line: 118, type: !7)
!1980 = !DILocalVariable(name: "s27", arg: 7, scope: !1971, file: !1912, line: 118, type: !7)
!1981 = !DILocalVariable(name: "s28", arg: 8, scope: !1971, file: !1912, line: 118, type: !7)
!1982 = !DILocation(line: 0, scope: !1971, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 139, column: 16, scope: !1984, inlinedAt: !1965)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !1912, line: 136, column: 11)
!1985 = distinct !DILexicalBlock(scope: !1969, file: !1912, line: 135, column: 5)
!1986 = !DILocation(line: 120, column: 7, scope: !1987, inlinedAt: !1983)
!1987 = distinct !DILexicalBlock(scope: !1971, file: !1912, line: 120, column: 7)
!1988 = !DILocation(line: 120, column: 7, scope: !1971, inlinedAt: !1983)
!1989 = !DILocalVariable(name: "s1", arg: 1, scope: !1990, file: !1912, line: 104, type: !17)
!1990 = distinct !DISubprogram(name: "strcaseeq4", scope: !1912, file: !1912, line: 104, type: !1991, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!20, !17, !17, !7, !7, !7, !7, !7}
!1993 = !{!1989, !1994, !1995, !1996, !1997, !1998, !1999}
!1994 = !DILocalVariable(name: "s2", arg: 2, scope: !1990, file: !1912, line: 104, type: !17)
!1995 = !DILocalVariable(name: "s24", arg: 3, scope: !1990, file: !1912, line: 104, type: !7)
!1996 = !DILocalVariable(name: "s25", arg: 4, scope: !1990, file: !1912, line: 104, type: !7)
!1997 = !DILocalVariable(name: "s26", arg: 5, scope: !1990, file: !1912, line: 104, type: !7)
!1998 = !DILocalVariable(name: "s27", arg: 6, scope: !1990, file: !1912, line: 104, type: !7)
!1999 = !DILocalVariable(name: "s28", arg: 7, scope: !1990, file: !1912, line: 104, type: !7)
!2000 = !DILocation(line: 0, scope: !1990, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 125, column: 16, scope: !2002, inlinedAt: !1983)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !1912, line: 122, column: 11)
!2003 = distinct !DILexicalBlock(scope: !1987, file: !1912, line: 121, column: 5)
!2004 = !DILocation(line: 106, column: 7, scope: !2005, inlinedAt: !2001)
!2005 = distinct !DILexicalBlock(scope: !1990, file: !1912, line: 106, column: 7)
!2006 = !DILocation(line: 106, column: 7, scope: !1990, inlinedAt: !2001)
!2007 = !DILocalVariable(name: "s1", arg: 1, scope: !2008, file: !1912, line: 90, type: !17)
!2008 = distinct !DISubprogram(name: "strcaseeq5", scope: !1912, file: !1912, line: 90, type: !2009, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2011)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!20, !17, !17, !7, !7, !7, !7}
!2011 = !{!2007, !2012, !2013, !2014, !2015, !2016}
!2012 = !DILocalVariable(name: "s2", arg: 2, scope: !2008, file: !1912, line: 90, type: !17)
!2013 = !DILocalVariable(name: "s25", arg: 3, scope: !2008, file: !1912, line: 90, type: !7)
!2014 = !DILocalVariable(name: "s26", arg: 4, scope: !2008, file: !1912, line: 90, type: !7)
!2015 = !DILocalVariable(name: "s27", arg: 5, scope: !2008, file: !1912, line: 90, type: !7)
!2016 = !DILocalVariable(name: "s28", arg: 6, scope: !2008, file: !1912, line: 90, type: !7)
!2017 = !DILocation(line: 0, scope: !2008, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 111, column: 16, scope: !2019, inlinedAt: !2001)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !1912, line: 108, column: 11)
!2020 = distinct !DILexicalBlock(scope: !2005, file: !1912, line: 107, column: 5)
!2021 = !DILocation(line: 92, column: 7, scope: !2022, inlinedAt: !2018)
!2022 = distinct !DILexicalBlock(scope: !2008, file: !1912, line: 92, column: 7)
!2023 = !DILocation(line: 92, column: 7, scope: !2008, inlinedAt: !2018)
!2024 = !DILocation(line: 235, column: 12, scope: !1928)
!2025 = !DILocation(line: 235, column: 21, scope: !1928)
!2026 = !DILocation(line: 235, column: 5, scope: !1928)
!2027 = !DILocation(line: 0, scope: !1932, inlinedAt: !2028)
!2028 = distinct !DILocation(line: 167, column: 16, scope: !1947, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 236, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1896, file: !76, line: 236, column: 7)
!2031 = !DILocation(line: 148, column: 7, scope: !1950, inlinedAt: !2028)
!2032 = !DILocation(line: 0, scope: !1952, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 153, column: 16, scope: !1966, inlinedAt: !2028)
!2034 = !DILocation(line: 134, column: 7, scope: !1969, inlinedAt: !2033)
!2035 = !DILocation(line: 134, column: 7, scope: !1952, inlinedAt: !2033)
!2036 = !DILocation(line: 0, scope: !1971, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 139, column: 16, scope: !1984, inlinedAt: !2033)
!2038 = !DILocation(line: 120, column: 7, scope: !1987, inlinedAt: !2037)
!2039 = !DILocation(line: 120, column: 7, scope: !1971, inlinedAt: !2037)
!2040 = !DILocation(line: 0, scope: !1990, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 125, column: 16, scope: !2002, inlinedAt: !2037)
!2042 = !DILocation(line: 106, column: 7, scope: !2005, inlinedAt: !2041)
!2043 = !DILocation(line: 106, column: 7, scope: !1990, inlinedAt: !2041)
!2044 = !DILocation(line: 0, scope: !2008, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 111, column: 16, scope: !2019, inlinedAt: !2041)
!2046 = !DILocation(line: 92, column: 7, scope: !2022, inlinedAt: !2045)
!2047 = !DILocation(line: 92, column: 7, scope: !2008, inlinedAt: !2045)
!2048 = !DILocalVariable(name: "s1", arg: 1, scope: !2049, file: !1912, line: 76, type: !17)
!2049 = distinct !DISubprogram(name: "strcaseeq6", scope: !1912, file: !1912, line: 76, type: !2050, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2052)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!20, !17, !17, !7, !7, !7}
!2052 = !{!2048, !2053, !2054, !2055, !2056}
!2053 = !DILocalVariable(name: "s2", arg: 2, scope: !2049, file: !1912, line: 76, type: !17)
!2054 = !DILocalVariable(name: "s26", arg: 3, scope: !2049, file: !1912, line: 76, type: !7)
!2055 = !DILocalVariable(name: "s27", arg: 4, scope: !2049, file: !1912, line: 76, type: !7)
!2056 = !DILocalVariable(name: "s28", arg: 5, scope: !2049, file: !1912, line: 76, type: !7)
!2057 = !DILocation(line: 0, scope: !2049, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 97, column: 16, scope: !2059, inlinedAt: !2045)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !1912, line: 94, column: 11)
!2060 = distinct !DILexicalBlock(scope: !2022, file: !1912, line: 93, column: 5)
!2061 = !DILocation(line: 78, column: 7, scope: !2062, inlinedAt: !2058)
!2062 = distinct !DILexicalBlock(scope: !2049, file: !1912, line: 78, column: 7)
!2063 = !DILocation(line: 78, column: 7, scope: !2049, inlinedAt: !2058)
!2064 = !DILocalVariable(name: "s1", arg: 1, scope: !2065, file: !1912, line: 62, type: !17)
!2065 = distinct !DISubprogram(name: "strcaseeq7", scope: !1912, file: !1912, line: 62, type: !2066, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!20, !17, !17, !7, !7}
!2068 = !{!2064, !2069, !2070, !2071}
!2069 = !DILocalVariable(name: "s2", arg: 2, scope: !2065, file: !1912, line: 62, type: !17)
!2070 = !DILocalVariable(name: "s27", arg: 3, scope: !2065, file: !1912, line: 62, type: !7)
!2071 = !DILocalVariable(name: "s28", arg: 4, scope: !2065, file: !1912, line: 62, type: !7)
!2072 = !DILocation(line: 0, scope: !2065, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 83, column: 16, scope: !2074, inlinedAt: !2058)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !1912, line: 80, column: 11)
!2075 = distinct !DILexicalBlock(scope: !2062, file: !1912, line: 79, column: 5)
!2076 = !DILocation(line: 64, column: 7, scope: !2077, inlinedAt: !2073)
!2077 = distinct !DILexicalBlock(scope: !2065, file: !1912, line: 64, column: 7)
!2078 = !DILocation(line: 236, column: 7, scope: !1896)
!2079 = !DILocation(line: 237, column: 12, scope: !2030)
!2080 = !DILocation(line: 237, column: 21, scope: !2030)
!2081 = !DILocation(line: 237, column: 5, scope: !2030)
!2082 = !DILocation(line: 239, column: 13, scope: !1896)
!2083 = !DILocation(line: 239, column: 11, scope: !1896)
!2084 = !DILocation(line: 239, column: 3, scope: !1896)
!2085 = !DILocation(line: 240, column: 1, scope: !1896)
!2086 = !DISubprogram(name: "iswprint", scope: !2087, file: !2087, line: 120, type: !2088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2087 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!20, !38}
!2090 = !DISubprogram(name: "mbsinit", scope: !2091, file: !2091, line: 292, type: !2092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2091 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!20, !2094}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1415)
!2096 = distinct !DISubprogram(name: "quotearg_alloc", scope: !76, file: !76, line: 799, type: !2097, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!6, !17, !114, !1262}
!2099 = !{!2100, !2101, !2102}
!2100 = !DILocalVariable(name: "arg", arg: 1, scope: !2096, file: !76, line: 799, type: !17)
!2101 = !DILocalVariable(name: "argsize", arg: 2, scope: !2096, file: !76, line: 799, type: !114)
!2102 = !DILocalVariable(name: "o", arg: 3, scope: !2096, file: !76, line: 800, type: !1262)
!2103 = !DILocation(line: 0, scope: !2096)
!2104 = !DILocalVariable(name: "arg", arg: 1, scope: !2105, file: !76, line: 812, type: !17)
!2105 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !76, file: !76, line: 812, type: !2106, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!6, !17, !114, !186, !1262}
!2108 = !{!2104, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!2109 = !DILocalVariable(name: "argsize", arg: 2, scope: !2105, file: !76, line: 812, type: !114)
!2110 = !DILocalVariable(name: "size", arg: 3, scope: !2105, file: !76, line: 812, type: !186)
!2111 = !DILocalVariable(name: "o", arg: 4, scope: !2105, file: !76, line: 813, type: !1262)
!2112 = !DILocalVariable(name: "p", scope: !2105, file: !76, line: 815, type: !1262)
!2113 = !DILocalVariable(name: "e", scope: !2105, file: !76, line: 816, type: !20)
!2114 = !DILocalVariable(name: "flags", scope: !2105, file: !76, line: 818, type: !20)
!2115 = !DILocalVariable(name: "bufsize", scope: !2105, file: !76, line: 819, type: !114)
!2116 = !DILocalVariable(name: "buf", scope: !2105, file: !76, line: 823, type: !6)
!2117 = !DILocation(line: 0, scope: !2105, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 802, column: 10, scope: !2096)
!2119 = !DILocation(line: 815, column: 37, scope: !2105, inlinedAt: !2118)
!2120 = !DILocation(line: 816, column: 11, scope: !2105, inlinedAt: !2118)
!2121 = !DILocation(line: 818, column: 18, scope: !2105, inlinedAt: !2118)
!2122 = !DILocation(line: 818, column: 24, scope: !2105, inlinedAt: !2118)
!2123 = !DILocation(line: 819, column: 69, scope: !2105, inlinedAt: !2118)
!2124 = !DILocation(line: 820, column: 53, scope: !2105, inlinedAt: !2118)
!2125 = !DILocation(line: 821, column: 49, scope: !2105, inlinedAt: !2118)
!2126 = !DILocation(line: 822, column: 49, scope: !2105, inlinedAt: !2118)
!2127 = !DILocation(line: 819, column: 20, scope: !2105, inlinedAt: !2118)
!2128 = !DILocation(line: 822, column: 62, scope: !2105, inlinedAt: !2118)
!2129 = !DILocalVariable(name: "n", arg: 1, scope: !2130, file: !182, line: 216, type: !114)
!2130 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2131, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!6, !114}
!2133 = !{!2129}
!2134 = !DILocation(line: 0, scope: !2130, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 823, column: 15, scope: !2105, inlinedAt: !2118)
!2136 = !DILocation(line: 218, column: 10, scope: !2130, inlinedAt: !2135)
!2137 = !DILocation(line: 824, column: 60, scope: !2105, inlinedAt: !2118)
!2138 = !DILocation(line: 826, column: 32, scope: !2105, inlinedAt: !2118)
!2139 = !DILocation(line: 826, column: 47, scope: !2105, inlinedAt: !2118)
!2140 = !DILocation(line: 824, column: 3, scope: !2105, inlinedAt: !2118)
!2141 = !DILocation(line: 827, column: 9, scope: !2105, inlinedAt: !2118)
!2142 = !DILocation(line: 802, column: 3, scope: !2096)
!2143 = !DILocation(line: 0, scope: !2105)
!2144 = !DILocation(line: 815, column: 37, scope: !2105)
!2145 = !DILocation(line: 816, column: 11, scope: !2105)
!2146 = !DILocation(line: 818, column: 18, scope: !2105)
!2147 = !DILocation(line: 818, column: 27, scope: !2105)
!2148 = !DILocation(line: 818, column: 24, scope: !2105)
!2149 = !DILocation(line: 819, column: 69, scope: !2105)
!2150 = !DILocation(line: 820, column: 53, scope: !2105)
!2151 = !DILocation(line: 821, column: 49, scope: !2105)
!2152 = !DILocation(line: 822, column: 49, scope: !2105)
!2153 = !DILocation(line: 819, column: 20, scope: !2105)
!2154 = !DILocation(line: 822, column: 62, scope: !2105)
!2155 = !DILocation(line: 0, scope: !2130, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 823, column: 15, scope: !2105)
!2157 = !DILocation(line: 218, column: 10, scope: !2130, inlinedAt: !2156)
!2158 = !DILocation(line: 824, column: 60, scope: !2105)
!2159 = !DILocation(line: 826, column: 32, scope: !2105)
!2160 = !DILocation(line: 826, column: 47, scope: !2105)
!2161 = !DILocation(line: 824, column: 3, scope: !2105)
!2162 = !DILocation(line: 827, column: 9, scope: !2105)
!2163 = !DILocation(line: 828, column: 7, scope: !2105)
!2164 = !DILocation(line: 829, column: 11, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2105, file: !76, line: 828, column: 7)
!2166 = !{!877, !877, i64 0}
!2167 = !DILocation(line: 829, column: 5, scope: !2165)
!2168 = !DILocation(line: 830, column: 3, scope: !2105)
!2169 = distinct !DISubprogram(name: "quotearg_free", scope: !76, file: !76, line: 848, type: !926, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2170)
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "sv", scope: !2169, file: !76, line: 850, type: !144)
!2172 = !DILocalVariable(name: "i", scope: !2169, file: !76, line: 851, type: !20)
!2173 = !DILocation(line: 850, column: 24, scope: !2169)
!2174 = !DILocation(line: 0, scope: !2169)
!2175 = !DILocation(line: 852, column: 19, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !76, line: 852, column: 3)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !76, line: 852, column: 3)
!2178 = !DILocation(line: 852, column: 17, scope: !2176)
!2179 = !DILocation(line: 852, column: 3, scope: !2177)
!2180 = !DILocation(line: 853, column: 17, scope: !2176)
!2181 = !{!2182, !658, i64 8}
!2182 = !{!"slotvec", !877, i64 0, !658, i64 8}
!2183 = !DILocation(line: 853, column: 5, scope: !2176)
!2184 = !DILocation(line: 852, column: 28, scope: !2176)
!2185 = distinct !{!2185, !2179, !2186, !699}
!2186 = !DILocation(line: 853, column: 20, scope: !2177)
!2187 = !DILocation(line: 854, column: 13, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2169, file: !76, line: 854, column: 7)
!2189 = !DILocation(line: 854, column: 17, scope: !2188)
!2190 = !DILocation(line: 854, column: 7, scope: !2169)
!2191 = !DILocation(line: 856, column: 7, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !76, line: 855, column: 5)
!2193 = !DILocation(line: 857, column: 21, scope: !2192)
!2194 = !{!2182, !877, i64 0}
!2195 = !DILocation(line: 858, column: 20, scope: !2192)
!2196 = !DILocation(line: 859, column: 5, scope: !2192)
!2197 = !DILocation(line: 860, column: 10, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2169, file: !76, line: 860, column: 7)
!2199 = !DILocation(line: 860, column: 7, scope: !2169)
!2200 = !DILocation(line: 862, column: 13, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !76, line: 861, column: 5)
!2202 = !DILocation(line: 862, column: 7, scope: !2201)
!2203 = !DILocation(line: 863, column: 15, scope: !2201)
!2204 = !DILocation(line: 864, column: 5, scope: !2201)
!2205 = !DILocation(line: 865, column: 10, scope: !2169)
!2206 = !DILocation(line: 866, column: 1, scope: !2169)
!2207 = distinct !DISubprogram(name: "quotearg_n", scope: !76, file: !76, line: 931, type: !780, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2208)
!2208 = !{!2209, !2210}
!2209 = !DILocalVariable(name: "n", arg: 1, scope: !2207, file: !76, line: 931, type: !20)
!2210 = !DILocalVariable(name: "arg", arg: 2, scope: !2207, file: !76, line: 931, type: !17)
!2211 = !DILocation(line: 0, scope: !2207)
!2212 = !DILocation(line: 933, column: 10, scope: !2207)
!2213 = !DILocation(line: 933, column: 3, scope: !2207)
!2214 = distinct !DISubprogram(name: "quotearg_n_options", scope: !76, file: !76, line: 877, type: !2215, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2217)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!6, !20, !17, !114, !1262}
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224, !2227, !2228, !2230, !2231, !2232}
!2218 = !DILocalVariable(name: "n", arg: 1, scope: !2214, file: !76, line: 877, type: !20)
!2219 = !DILocalVariable(name: "arg", arg: 2, scope: !2214, file: !76, line: 877, type: !17)
!2220 = !DILocalVariable(name: "argsize", arg: 3, scope: !2214, file: !76, line: 877, type: !114)
!2221 = !DILocalVariable(name: "options", arg: 4, scope: !2214, file: !76, line: 878, type: !1262)
!2222 = !DILocalVariable(name: "e", scope: !2214, file: !76, line: 880, type: !20)
!2223 = !DILocalVariable(name: "sv", scope: !2214, file: !76, line: 882, type: !144)
!2224 = !DILocalVariable(name: "preallocated", scope: !2225, file: !76, line: 889, type: !60)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !76, line: 888, column: 5)
!2226 = distinct !DILexicalBlock(scope: !2214, file: !76, line: 887, column: 7)
!2227 = !DILocalVariable(name: "nmax", scope: !2225, file: !76, line: 890, type: !20)
!2228 = !DILocalVariable(name: "size", scope: !2229, file: !76, line: 903, type: !114)
!2229 = distinct !DILexicalBlock(scope: !2214, file: !76, line: 902, column: 3)
!2230 = !DILocalVariable(name: "val", scope: !2229, file: !76, line: 904, type: !6)
!2231 = !DILocalVariable(name: "flags", scope: !2229, file: !76, line: 906, type: !20)
!2232 = !DILocalVariable(name: "qsize", scope: !2229, file: !76, line: 907, type: !114)
!2233 = !DILocation(line: 0, scope: !2214)
!2234 = !DILocation(line: 880, column: 11, scope: !2214)
!2235 = !DILocation(line: 882, column: 24, scope: !2214)
!2236 = !DILocation(line: 884, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2214, file: !76, line: 884, column: 7)
!2238 = !DILocation(line: 884, column: 7, scope: !2214)
!2239 = !DILocation(line: 885, column: 5, scope: !2237)
!2240 = !DILocation(line: 887, column: 7, scope: !2226)
!2241 = !DILocation(line: 887, column: 14, scope: !2226)
!2242 = !DILocation(line: 887, column: 7, scope: !2214)
!2243 = !DILocation(line: 889, column: 31, scope: !2225)
!2244 = !DILocation(line: 0, scope: !2225)
!2245 = !DILocation(line: 892, column: 16, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2225, file: !76, line: 892, column: 11)
!2247 = !DILocation(line: 892, column: 11, scope: !2225)
!2248 = !DILocation(line: 893, column: 9, scope: !2246)
!2249 = !DILocation(line: 895, column: 32, scope: !2225)
!2250 = !DILocation(line: 895, column: 61, scope: !2225)
!2251 = !DILocation(line: 895, column: 66, scope: !2225)
!2252 = !DILocation(line: 895, column: 22, scope: !2225)
!2253 = !DILocation(line: 895, column: 15, scope: !2225)
!2254 = !DILocation(line: 896, column: 11, scope: !2225)
!2255 = !DILocation(line: 897, column: 15, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2225, file: !76, line: 896, column: 11)
!2257 = !{i64 0, i64 8, !2166, i64 8, i64 8, !657}
!2258 = !DILocation(line: 897, column: 9, scope: !2256)
!2259 = !DILocation(line: 898, column: 20, scope: !2225)
!2260 = !DILocation(line: 898, column: 18, scope: !2225)
!2261 = !DILocation(line: 898, column: 15, scope: !2225)
!2262 = !DILocation(line: 898, column: 38, scope: !2225)
!2263 = !DILocation(line: 898, column: 31, scope: !2225)
!2264 = !DILocation(line: 898, column: 48, scope: !2225)
!2265 = !DILocation(line: 0, scope: !1657, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 898, column: 7, scope: !2225)
!2267 = !DILocation(line: 59, column: 10, scope: !1657, inlinedAt: !2266)
!2268 = !DILocation(line: 899, column: 14, scope: !2225)
!2269 = !DILocation(line: 900, column: 5, scope: !2225)
!2270 = !DILocation(line: 903, column: 19, scope: !2229)
!2271 = !DILocation(line: 903, column: 25, scope: !2229)
!2272 = !DILocation(line: 0, scope: !2229)
!2273 = !DILocation(line: 904, column: 23, scope: !2229)
!2274 = !DILocation(line: 906, column: 26, scope: !2229)
!2275 = !DILocation(line: 906, column: 32, scope: !2229)
!2276 = !DILocation(line: 908, column: 55, scope: !2229)
!2277 = !DILocation(line: 909, column: 46, scope: !2229)
!2278 = !DILocation(line: 910, column: 55, scope: !2229)
!2279 = !DILocation(line: 911, column: 55, scope: !2229)
!2280 = !DILocation(line: 907, column: 20, scope: !2229)
!2281 = !DILocation(line: 913, column: 14, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2229, file: !76, line: 913, column: 9)
!2283 = !DILocation(line: 913, column: 9, scope: !2229)
!2284 = !DILocation(line: 915, column: 35, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2282, file: !76, line: 914, column: 7)
!2286 = !DILocation(line: 915, column: 20, scope: !2285)
!2287 = !DILocation(line: 916, column: 17, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !76, line: 916, column: 13)
!2289 = !DILocation(line: 916, column: 13, scope: !2285)
!2290 = !DILocation(line: 917, column: 11, scope: !2288)
!2291 = !DILocation(line: 0, scope: !2130, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 918, column: 27, scope: !2285)
!2293 = !DILocation(line: 218, column: 10, scope: !2130, inlinedAt: !2292)
!2294 = !DILocation(line: 918, column: 19, scope: !2285)
!2295 = !DILocation(line: 919, column: 69, scope: !2285)
!2296 = !DILocation(line: 921, column: 44, scope: !2285)
!2297 = !DILocation(line: 922, column: 44, scope: !2285)
!2298 = !DILocation(line: 919, column: 9, scope: !2285)
!2299 = !DILocation(line: 923, column: 7, scope: !2285)
!2300 = !DILocation(line: 925, column: 11, scope: !2229)
!2301 = !DILocation(line: 926, column: 5, scope: !2229)
!2302 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !76, file: !76, line: 937, type: !2303, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!6, !20, !17, !114}
!2305 = !{!2306, !2307, !2308}
!2306 = !DILocalVariable(name: "n", arg: 1, scope: !2302, file: !76, line: 937, type: !20)
!2307 = !DILocalVariable(name: "arg", arg: 2, scope: !2302, file: !76, line: 937, type: !17)
!2308 = !DILocalVariable(name: "argsize", arg: 3, scope: !2302, file: !76, line: 937, type: !114)
!2309 = !DILocation(line: 0, scope: !2302)
!2310 = !DILocation(line: 939, column: 10, scope: !2302)
!2311 = !DILocation(line: 939, column: 3, scope: !2302)
!2312 = distinct !DISubprogram(name: "quotearg", scope: !76, file: !76, line: 943, type: !919, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2313)
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "arg", arg: 1, scope: !2312, file: !76, line: 943, type: !17)
!2315 = !DILocation(line: 0, scope: !2312)
!2316 = !DILocation(line: 0, scope: !2207, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 945, column: 10, scope: !2312)
!2318 = !DILocation(line: 933, column: 10, scope: !2207, inlinedAt: !2317)
!2319 = !DILocation(line: 945, column: 3, scope: !2312)
!2320 = distinct !DISubprogram(name: "quotearg_mem", scope: !76, file: !76, line: 949, type: !2321, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!6, !17, !114}
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "arg", arg: 1, scope: !2320, file: !76, line: 949, type: !17)
!2325 = !DILocalVariable(name: "argsize", arg: 2, scope: !2320, file: !76, line: 949, type: !114)
!2326 = !DILocation(line: 0, scope: !2320)
!2327 = !DILocation(line: 0, scope: !2302, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 951, column: 10, scope: !2320)
!2329 = !DILocation(line: 939, column: 10, scope: !2302, inlinedAt: !2328)
!2330 = !DILocation(line: 951, column: 3, scope: !2320)
!2331 = distinct !DISubprogram(name: "quotearg_n_style", scope: !76, file: !76, line: 955, type: !2332, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!6, !20, !78, !17}
!2334 = !{!2335, !2336, !2337, !2338}
!2335 = !DILocalVariable(name: "n", arg: 1, scope: !2331, file: !76, line: 955, type: !20)
!2336 = !DILocalVariable(name: "s", arg: 2, scope: !2331, file: !76, line: 955, type: !78)
!2337 = !DILocalVariable(name: "arg", arg: 3, scope: !2331, file: !76, line: 955, type: !17)
!2338 = !DILocalVariable(name: "o", scope: !2331, file: !76, line: 957, type: !1263)
!2339 = !DILocation(line: 0, scope: !2331)
!2340 = !DILocation(line: 957, column: 3, scope: !2331)
!2341 = !DILocation(line: 957, column: 32, scope: !2331)
!2342 = !{!2343}
!2343 = distinct !{!2343, !2344, !"quoting_options_from_style: argument 0"}
!2344 = distinct !{!2344, !"quoting_options_from_style"}
!2345 = !DILocation(line: 957, column: 36, scope: !2331)
!2346 = !DILocalVariable(name: "style", arg: 1, scope: !2347, file: !76, line: 193, type: !78)
!2347 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !76, file: !76, line: 193, type: !2348, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!125, !78}
!2350 = !{!2346, !2351}
!2351 = !DILocalVariable(name: "o", scope: !2347, file: !76, line: 195, type: !125)
!2352 = !DILocation(line: 0, scope: !2347, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 957, column: 36, scope: !2331)
!2354 = !DILocation(line: 195, column: 26, scope: !2347, inlinedAt: !2353)
!2355 = !DILocation(line: 196, column: 13, scope: !2356, inlinedAt: !2353)
!2356 = distinct !DILexicalBlock(scope: !2347, file: !76, line: 196, column: 7)
!2357 = !DILocation(line: 196, column: 7, scope: !2347, inlinedAt: !2353)
!2358 = !DILocation(line: 197, column: 5, scope: !2356, inlinedAt: !2353)
!2359 = !DILocation(line: 198, column: 5, scope: !2347, inlinedAt: !2353)
!2360 = !DILocation(line: 198, column: 11, scope: !2347, inlinedAt: !2353)
!2361 = !DILocation(line: 958, column: 10, scope: !2331)
!2362 = !DILocation(line: 959, column: 1, scope: !2331)
!2363 = !DILocation(line: 958, column: 3, scope: !2331)
!2364 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !76, file: !76, line: 962, type: !2365, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!6, !20, !78, !17, !114}
!2367 = !{!2368, !2369, !2370, !2371, !2372}
!2368 = !DILocalVariable(name: "n", arg: 1, scope: !2364, file: !76, line: 962, type: !20)
!2369 = !DILocalVariable(name: "s", arg: 2, scope: !2364, file: !76, line: 962, type: !78)
!2370 = !DILocalVariable(name: "arg", arg: 3, scope: !2364, file: !76, line: 963, type: !17)
!2371 = !DILocalVariable(name: "argsize", arg: 4, scope: !2364, file: !76, line: 963, type: !114)
!2372 = !DILocalVariable(name: "o", scope: !2364, file: !76, line: 965, type: !1263)
!2373 = !DILocation(line: 0, scope: !2364)
!2374 = !DILocation(line: 965, column: 3, scope: !2364)
!2375 = !DILocation(line: 965, column: 32, scope: !2364)
!2376 = !{!2377}
!2377 = distinct !{!2377, !2378, !"quoting_options_from_style: argument 0"}
!2378 = distinct !{!2378, !"quoting_options_from_style"}
!2379 = !DILocation(line: 965, column: 36, scope: !2364)
!2380 = !DILocation(line: 0, scope: !2347, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 965, column: 36, scope: !2364)
!2382 = !DILocation(line: 195, column: 26, scope: !2347, inlinedAt: !2381)
!2383 = !DILocation(line: 196, column: 13, scope: !2356, inlinedAt: !2381)
!2384 = !DILocation(line: 196, column: 7, scope: !2347, inlinedAt: !2381)
!2385 = !DILocation(line: 197, column: 5, scope: !2356, inlinedAt: !2381)
!2386 = !DILocation(line: 198, column: 5, scope: !2347, inlinedAt: !2381)
!2387 = !DILocation(line: 198, column: 11, scope: !2347, inlinedAt: !2381)
!2388 = !DILocation(line: 966, column: 10, scope: !2364)
!2389 = !DILocation(line: 967, column: 1, scope: !2364)
!2390 = !DILocation(line: 966, column: 3, scope: !2364)
!2391 = distinct !DISubprogram(name: "quotearg_style", scope: !76, file: !76, line: 970, type: !2392, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!6, !78, !17}
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "s", arg: 1, scope: !2391, file: !76, line: 970, type: !78)
!2396 = !DILocalVariable(name: "arg", arg: 2, scope: !2391, file: !76, line: 970, type: !17)
!2397 = !DILocation(line: 0, scope: !2391)
!2398 = !DILocation(line: 0, scope: !2331, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 972, column: 10, scope: !2391)
!2400 = !DILocation(line: 957, column: 3, scope: !2331, inlinedAt: !2399)
!2401 = !DILocation(line: 957, column: 32, scope: !2331, inlinedAt: !2399)
!2402 = !{!2403}
!2403 = distinct !{!2403, !2404, !"quoting_options_from_style: argument 0"}
!2404 = distinct !{!2404, !"quoting_options_from_style"}
!2405 = !DILocation(line: 957, column: 36, scope: !2331, inlinedAt: !2399)
!2406 = !DILocation(line: 0, scope: !2347, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 957, column: 36, scope: !2331, inlinedAt: !2399)
!2408 = !DILocation(line: 195, column: 26, scope: !2347, inlinedAt: !2407)
!2409 = !DILocation(line: 196, column: 13, scope: !2356, inlinedAt: !2407)
!2410 = !DILocation(line: 196, column: 7, scope: !2347, inlinedAt: !2407)
!2411 = !DILocation(line: 197, column: 5, scope: !2356, inlinedAt: !2407)
!2412 = !DILocation(line: 198, column: 5, scope: !2347, inlinedAt: !2407)
!2413 = !DILocation(line: 198, column: 11, scope: !2347, inlinedAt: !2407)
!2414 = !DILocation(line: 958, column: 10, scope: !2331, inlinedAt: !2399)
!2415 = !DILocation(line: 959, column: 1, scope: !2331, inlinedAt: !2399)
!2416 = !DILocation(line: 972, column: 3, scope: !2391)
!2417 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !76, file: !76, line: 976, type: !2418, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!6, !78, !17, !114}
!2420 = !{!2421, !2422, !2423}
!2421 = !DILocalVariable(name: "s", arg: 1, scope: !2417, file: !76, line: 976, type: !78)
!2422 = !DILocalVariable(name: "arg", arg: 2, scope: !2417, file: !76, line: 976, type: !17)
!2423 = !DILocalVariable(name: "argsize", arg: 3, scope: !2417, file: !76, line: 976, type: !114)
!2424 = !DILocation(line: 0, scope: !2417)
!2425 = !DILocation(line: 0, scope: !2364, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 978, column: 10, scope: !2417)
!2427 = !DILocation(line: 965, column: 3, scope: !2364, inlinedAt: !2426)
!2428 = !DILocation(line: 965, column: 32, scope: !2364, inlinedAt: !2426)
!2429 = !{!2430}
!2430 = distinct !{!2430, !2431, !"quoting_options_from_style: argument 0"}
!2431 = distinct !{!2431, !"quoting_options_from_style"}
!2432 = !DILocation(line: 965, column: 36, scope: !2364, inlinedAt: !2426)
!2433 = !DILocation(line: 0, scope: !2347, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 965, column: 36, scope: !2364, inlinedAt: !2426)
!2435 = !DILocation(line: 195, column: 26, scope: !2347, inlinedAt: !2434)
!2436 = !DILocation(line: 196, column: 13, scope: !2356, inlinedAt: !2434)
!2437 = !DILocation(line: 196, column: 7, scope: !2347, inlinedAt: !2434)
!2438 = !DILocation(line: 197, column: 5, scope: !2356, inlinedAt: !2434)
!2439 = !DILocation(line: 198, column: 5, scope: !2347, inlinedAt: !2434)
!2440 = !DILocation(line: 198, column: 11, scope: !2347, inlinedAt: !2434)
!2441 = !DILocation(line: 966, column: 10, scope: !2364, inlinedAt: !2426)
!2442 = !DILocation(line: 967, column: 1, scope: !2364, inlinedAt: !2426)
!2443 = !DILocation(line: 978, column: 3, scope: !2417)
!2444 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !76, file: !76, line: 982, type: !2445, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!6, !17, !114, !7}
!2447 = !{!2448, !2449, !2450, !2451}
!2448 = !DILocalVariable(name: "arg", arg: 1, scope: !2444, file: !76, line: 982, type: !17)
!2449 = !DILocalVariable(name: "argsize", arg: 2, scope: !2444, file: !76, line: 982, type: !114)
!2450 = !DILocalVariable(name: "ch", arg: 3, scope: !2444, file: !76, line: 982, type: !7)
!2451 = !DILocalVariable(name: "options", scope: !2444, file: !76, line: 984, type: !125)
!2452 = !DILocation(line: 0, scope: !2444)
!2453 = !DILocation(line: 984, column: 3, scope: !2444)
!2454 = !DILocation(line: 984, column: 26, scope: !2444)
!2455 = !DILocation(line: 985, column: 13, scope: !2444)
!2456 = !{i64 0, i64 4, !881, i64 4, i64 4, !831, i64 8, i64 32, !881, i64 40, i64 8, !657, i64 48, i64 8, !657}
!2457 = !DILocation(line: 0, scope: !1283, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 986, column: 3, scope: !2444)
!2459 = !DILocation(line: 156, column: 62, scope: !1283, inlinedAt: !2458)
!2460 = !DILocation(line: 156, column: 57, scope: !1283, inlinedAt: !2458)
!2461 = !DILocation(line: 157, column: 15, scope: !1283, inlinedAt: !2458)
!2462 = !DILocation(line: 158, column: 12, scope: !1283, inlinedAt: !2458)
!2463 = !DILocation(line: 158, column: 15, scope: !1283, inlinedAt: !2458)
!2464 = !DILocation(line: 158, column: 25, scope: !1283, inlinedAt: !2458)
!2465 = !DILocation(line: 159, column: 18, scope: !1283, inlinedAt: !2458)
!2466 = !DILocation(line: 159, column: 23, scope: !1283, inlinedAt: !2458)
!2467 = !DILocation(line: 159, column: 6, scope: !1283, inlinedAt: !2458)
!2468 = !DILocation(line: 987, column: 10, scope: !2444)
!2469 = !DILocation(line: 988, column: 1, scope: !2444)
!2470 = !DILocation(line: 987, column: 3, scope: !2444)
!2471 = distinct !DISubprogram(name: "quotearg_char", scope: !76, file: !76, line: 991, type: !2472, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!6, !17, !7}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2471, file: !76, line: 991, type: !17)
!2476 = !DILocalVariable(name: "ch", arg: 2, scope: !2471, file: !76, line: 991, type: !7)
!2477 = !DILocation(line: 0, scope: !2471)
!2478 = !DILocation(line: 0, scope: !2444, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 993, column: 10, scope: !2471)
!2480 = !DILocation(line: 984, column: 3, scope: !2444, inlinedAt: !2479)
!2481 = !DILocation(line: 984, column: 26, scope: !2444, inlinedAt: !2479)
!2482 = !DILocation(line: 985, column: 13, scope: !2444, inlinedAt: !2479)
!2483 = !DILocation(line: 0, scope: !1283, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 986, column: 3, scope: !2444, inlinedAt: !2479)
!2485 = !DILocation(line: 156, column: 62, scope: !1283, inlinedAt: !2484)
!2486 = !DILocation(line: 156, column: 57, scope: !1283, inlinedAt: !2484)
!2487 = !DILocation(line: 157, column: 15, scope: !1283, inlinedAt: !2484)
!2488 = !DILocation(line: 158, column: 12, scope: !1283, inlinedAt: !2484)
!2489 = !DILocation(line: 158, column: 15, scope: !1283, inlinedAt: !2484)
!2490 = !DILocation(line: 158, column: 25, scope: !1283, inlinedAt: !2484)
!2491 = !DILocation(line: 159, column: 18, scope: !1283, inlinedAt: !2484)
!2492 = !DILocation(line: 159, column: 23, scope: !1283, inlinedAt: !2484)
!2493 = !DILocation(line: 159, column: 6, scope: !1283, inlinedAt: !2484)
!2494 = !DILocation(line: 987, column: 10, scope: !2444, inlinedAt: !2479)
!2495 = !DILocation(line: 988, column: 1, scope: !2444, inlinedAt: !2479)
!2496 = !DILocation(line: 993, column: 3, scope: !2471)
!2497 = distinct !DISubprogram(name: "quotearg_colon", scope: !76, file: !76, line: 997, type: !919, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2498)
!2498 = !{!2499}
!2499 = !DILocalVariable(name: "arg", arg: 1, scope: !2497, file: !76, line: 997, type: !17)
!2500 = !DILocation(line: 0, scope: !2497)
!2501 = !DILocation(line: 0, scope: !2471, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 999, column: 10, scope: !2497)
!2503 = !DILocation(line: 0, scope: !2444, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 993, column: 10, scope: !2471, inlinedAt: !2502)
!2505 = !DILocation(line: 984, column: 3, scope: !2444, inlinedAt: !2504)
!2506 = !DILocation(line: 984, column: 26, scope: !2444, inlinedAt: !2504)
!2507 = !DILocation(line: 985, column: 13, scope: !2444, inlinedAt: !2504)
!2508 = !DILocation(line: 0, scope: !1283, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 986, column: 3, scope: !2444, inlinedAt: !2504)
!2510 = !DILocation(line: 156, column: 57, scope: !1283, inlinedAt: !2509)
!2511 = !DILocation(line: 158, column: 12, scope: !1283, inlinedAt: !2509)
!2512 = !DILocation(line: 159, column: 6, scope: !1283, inlinedAt: !2509)
!2513 = !DILocation(line: 987, column: 10, scope: !2444, inlinedAt: !2504)
!2514 = !DILocation(line: 988, column: 1, scope: !2444, inlinedAt: !2504)
!2515 = !DILocation(line: 999, column: 3, scope: !2497)
!2516 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !76, file: !76, line: 1003, type: !2321, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2517)
!2517 = !{!2518, !2519}
!2518 = !DILocalVariable(name: "arg", arg: 1, scope: !2516, file: !76, line: 1003, type: !17)
!2519 = !DILocalVariable(name: "argsize", arg: 2, scope: !2516, file: !76, line: 1003, type: !114)
!2520 = !DILocation(line: 0, scope: !2516)
!2521 = !DILocation(line: 0, scope: !2444, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 1005, column: 10, scope: !2516)
!2523 = !DILocation(line: 984, column: 3, scope: !2444, inlinedAt: !2522)
!2524 = !DILocation(line: 984, column: 26, scope: !2444, inlinedAt: !2522)
!2525 = !DILocation(line: 985, column: 13, scope: !2444, inlinedAt: !2522)
!2526 = !DILocation(line: 0, scope: !1283, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 986, column: 3, scope: !2444, inlinedAt: !2522)
!2528 = !DILocation(line: 156, column: 57, scope: !1283, inlinedAt: !2527)
!2529 = !DILocation(line: 158, column: 12, scope: !1283, inlinedAt: !2527)
!2530 = !DILocation(line: 159, column: 6, scope: !1283, inlinedAt: !2527)
!2531 = !DILocation(line: 987, column: 10, scope: !2444, inlinedAt: !2522)
!2532 = !DILocation(line: 988, column: 1, scope: !2444, inlinedAt: !2522)
!2533 = !DILocation(line: 1005, column: 3, scope: !2516)
!2534 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !76, file: !76, line: 1009, type: !2332, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2535)
!2535 = !{!2536, !2537, !2538, !2539}
!2536 = !DILocalVariable(name: "n", arg: 1, scope: !2534, file: !76, line: 1009, type: !20)
!2537 = !DILocalVariable(name: "s", arg: 2, scope: !2534, file: !76, line: 1009, type: !78)
!2538 = !DILocalVariable(name: "arg", arg: 3, scope: !2534, file: !76, line: 1009, type: !17)
!2539 = !DILocalVariable(name: "options", scope: !2534, file: !76, line: 1011, type: !125)
!2540 = !DILocation(line: 195, column: 26, scope: !2347, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 1012, column: 13, scope: !2534)
!2542 = !DILocation(line: 0, scope: !2534)
!2543 = !DILocation(line: 1011, column: 3, scope: !2534)
!2544 = !DILocation(line: 1011, column: 26, scope: !2534)
!2545 = !DILocation(line: 1012, column: 13, scope: !2534)
!2546 = !{!2547}
!2547 = distinct !{!2547, !2548, !"quoting_options_from_style: argument 0"}
!2548 = distinct !{!2548, !"quoting_options_from_style"}
!2549 = !DILocation(line: 0, scope: !2347, inlinedAt: !2541)
!2550 = !DILocation(line: 196, column: 13, scope: !2356, inlinedAt: !2541)
!2551 = !DILocation(line: 196, column: 7, scope: !2347, inlinedAt: !2541)
!2552 = !DILocation(line: 197, column: 5, scope: !2356, inlinedAt: !2541)
!2553 = !{i64 0, i64 4, !831, i64 4, i64 32, !881, i64 36, i64 8, !657, i64 44, i64 8, !657}
!2554 = !DILocation(line: 0, scope: !1283, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 1013, column: 3, scope: !2534)
!2556 = !DILocation(line: 156, column: 57, scope: !1283, inlinedAt: !2555)
!2557 = !DILocation(line: 158, column: 12, scope: !1283, inlinedAt: !2555)
!2558 = !DILocation(line: 159, column: 6, scope: !1283, inlinedAt: !2555)
!2559 = !DILocation(line: 1014, column: 10, scope: !2534)
!2560 = !DILocation(line: 1015, column: 1, scope: !2534)
!2561 = !DILocation(line: 1014, column: 3, scope: !2534)
!2562 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !76, file: !76, line: 1018, type: !2563, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!6, !20, !17, !17, !17}
!2565 = !{!2566, !2567, !2568, !2569}
!2566 = !DILocalVariable(name: "n", arg: 1, scope: !2562, file: !76, line: 1018, type: !20)
!2567 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2562, file: !76, line: 1018, type: !17)
!2568 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2562, file: !76, line: 1019, type: !17)
!2569 = !DILocalVariable(name: "arg", arg: 4, scope: !2562, file: !76, line: 1019, type: !17)
!2570 = !DILocation(line: 0, scope: !2562)
!2571 = !DILocalVariable(name: "n", arg: 1, scope: !2572, file: !76, line: 1026, type: !20)
!2572 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !76, file: !76, line: 1026, type: !2573, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!6, !20, !17, !17, !17, !114}
!2575 = !{!2571, !2576, !2577, !2578, !2579, !2580}
!2576 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2572, file: !76, line: 1026, type: !17)
!2577 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2572, file: !76, line: 1027, type: !17)
!2578 = !DILocalVariable(name: "arg", arg: 4, scope: !2572, file: !76, line: 1028, type: !17)
!2579 = !DILocalVariable(name: "argsize", arg: 5, scope: !2572, file: !76, line: 1028, type: !114)
!2580 = !DILocalVariable(name: "o", scope: !2572, file: !76, line: 1030, type: !125)
!2581 = !DILocation(line: 0, scope: !2572, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 1021, column: 10, scope: !2562)
!2583 = !DILocation(line: 1030, column: 3, scope: !2572, inlinedAt: !2582)
!2584 = !DILocation(line: 1030, column: 26, scope: !2572, inlinedAt: !2582)
!2585 = !DILocation(line: 1030, column: 30, scope: !2572, inlinedAt: !2582)
!2586 = !DILocation(line: 0, scope: !1323, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 1031, column: 3, scope: !2572, inlinedAt: !2582)
!2588 = !DILocation(line: 184, column: 6, scope: !1323, inlinedAt: !2587)
!2589 = !DILocation(line: 184, column: 12, scope: !1323, inlinedAt: !2587)
!2590 = !DILocation(line: 185, column: 8, scope: !1337, inlinedAt: !2587)
!2591 = !DILocation(line: 185, column: 19, scope: !1337, inlinedAt: !2587)
!2592 = !DILocation(line: 186, column: 5, scope: !1337, inlinedAt: !2587)
!2593 = !DILocation(line: 187, column: 6, scope: !1323, inlinedAt: !2587)
!2594 = !DILocation(line: 187, column: 17, scope: !1323, inlinedAt: !2587)
!2595 = !DILocation(line: 188, column: 6, scope: !1323, inlinedAt: !2587)
!2596 = !DILocation(line: 188, column: 18, scope: !1323, inlinedAt: !2587)
!2597 = !DILocation(line: 1032, column: 10, scope: !2572, inlinedAt: !2582)
!2598 = !DILocation(line: 1033, column: 1, scope: !2572, inlinedAt: !2582)
!2599 = !DILocation(line: 1021, column: 3, scope: !2562)
!2600 = !DILocation(line: 0, scope: !2572)
!2601 = !DILocation(line: 1030, column: 3, scope: !2572)
!2602 = !DILocation(line: 1030, column: 26, scope: !2572)
!2603 = !DILocation(line: 1030, column: 30, scope: !2572)
!2604 = !DILocation(line: 0, scope: !1323, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 1031, column: 3, scope: !2572)
!2606 = !DILocation(line: 184, column: 6, scope: !1323, inlinedAt: !2605)
!2607 = !DILocation(line: 184, column: 12, scope: !1323, inlinedAt: !2605)
!2608 = !DILocation(line: 185, column: 8, scope: !1337, inlinedAt: !2605)
!2609 = !DILocation(line: 185, column: 19, scope: !1337, inlinedAt: !2605)
!2610 = !DILocation(line: 186, column: 5, scope: !1337, inlinedAt: !2605)
!2611 = !DILocation(line: 187, column: 6, scope: !1323, inlinedAt: !2605)
!2612 = !DILocation(line: 187, column: 17, scope: !1323, inlinedAt: !2605)
!2613 = !DILocation(line: 188, column: 6, scope: !1323, inlinedAt: !2605)
!2614 = !DILocation(line: 188, column: 18, scope: !1323, inlinedAt: !2605)
!2615 = !DILocation(line: 1032, column: 10, scope: !2572)
!2616 = !DILocation(line: 1033, column: 1, scope: !2572)
!2617 = !DILocation(line: 1032, column: 3, scope: !2572)
!2618 = distinct !DISubprogram(name: "quotearg_custom", scope: !76, file: !76, line: 1036, type: !2619, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!6, !17, !17, !17}
!2621 = !{!2622, !2623, !2624}
!2622 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2618, file: !76, line: 1036, type: !17)
!2623 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2618, file: !76, line: 1036, type: !17)
!2624 = !DILocalVariable(name: "arg", arg: 3, scope: !2618, file: !76, line: 1037, type: !17)
!2625 = !DILocation(line: 0, scope: !2618)
!2626 = !DILocation(line: 0, scope: !2562, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1039, column: 10, scope: !2618)
!2628 = !DILocation(line: 0, scope: !2572, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 1021, column: 10, scope: !2562, inlinedAt: !2627)
!2630 = !DILocation(line: 1030, column: 3, scope: !2572, inlinedAt: !2629)
!2631 = !DILocation(line: 1030, column: 26, scope: !2572, inlinedAt: !2629)
!2632 = !DILocation(line: 1030, column: 30, scope: !2572, inlinedAt: !2629)
!2633 = !DILocation(line: 0, scope: !1323, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 1031, column: 3, scope: !2572, inlinedAt: !2629)
!2635 = !DILocation(line: 184, column: 6, scope: !1323, inlinedAt: !2634)
!2636 = !DILocation(line: 184, column: 12, scope: !1323, inlinedAt: !2634)
!2637 = !DILocation(line: 185, column: 8, scope: !1337, inlinedAt: !2634)
!2638 = !DILocation(line: 185, column: 19, scope: !1337, inlinedAt: !2634)
!2639 = !DILocation(line: 186, column: 5, scope: !1337, inlinedAt: !2634)
!2640 = !DILocation(line: 187, column: 6, scope: !1323, inlinedAt: !2634)
!2641 = !DILocation(line: 187, column: 17, scope: !1323, inlinedAt: !2634)
!2642 = !DILocation(line: 188, column: 6, scope: !1323, inlinedAt: !2634)
!2643 = !DILocation(line: 188, column: 18, scope: !1323, inlinedAt: !2634)
!2644 = !DILocation(line: 1032, column: 10, scope: !2572, inlinedAt: !2629)
!2645 = !DILocation(line: 1033, column: 1, scope: !2572, inlinedAt: !2629)
!2646 = !DILocation(line: 1039, column: 3, scope: !2618)
!2647 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !76, file: !76, line: 1043, type: !2648, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!6, !17, !17, !17, !114}
!2650 = !{!2651, !2652, !2653, !2654}
!2651 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2647, file: !76, line: 1043, type: !17)
!2652 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2647, file: !76, line: 1043, type: !17)
!2653 = !DILocalVariable(name: "arg", arg: 3, scope: !2647, file: !76, line: 1044, type: !17)
!2654 = !DILocalVariable(name: "argsize", arg: 4, scope: !2647, file: !76, line: 1044, type: !114)
!2655 = !DILocation(line: 0, scope: !2647)
!2656 = !DILocation(line: 0, scope: !2572, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1046, column: 10, scope: !2647)
!2658 = !DILocation(line: 1030, column: 3, scope: !2572, inlinedAt: !2657)
!2659 = !DILocation(line: 1030, column: 26, scope: !2572, inlinedAt: !2657)
!2660 = !DILocation(line: 1030, column: 30, scope: !2572, inlinedAt: !2657)
!2661 = !DILocation(line: 0, scope: !1323, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 1031, column: 3, scope: !2572, inlinedAt: !2657)
!2663 = !DILocation(line: 184, column: 6, scope: !1323, inlinedAt: !2662)
!2664 = !DILocation(line: 184, column: 12, scope: !1323, inlinedAt: !2662)
!2665 = !DILocation(line: 185, column: 8, scope: !1337, inlinedAt: !2662)
!2666 = !DILocation(line: 185, column: 19, scope: !1337, inlinedAt: !2662)
!2667 = !DILocation(line: 186, column: 5, scope: !1337, inlinedAt: !2662)
!2668 = !DILocation(line: 187, column: 6, scope: !1323, inlinedAt: !2662)
!2669 = !DILocation(line: 187, column: 17, scope: !1323, inlinedAt: !2662)
!2670 = !DILocation(line: 188, column: 6, scope: !1323, inlinedAt: !2662)
!2671 = !DILocation(line: 188, column: 18, scope: !1323, inlinedAt: !2662)
!2672 = !DILocation(line: 1032, column: 10, scope: !2572, inlinedAt: !2657)
!2673 = !DILocation(line: 1033, column: 1, scope: !2572, inlinedAt: !2657)
!2674 = !DILocation(line: 1046, column: 3, scope: !2647)
!2675 = distinct !DISubprogram(name: "quote_n_mem", scope: !76, file: !76, line: 1061, type: !2676, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!17, !20, !17, !114}
!2678 = !{!2679, !2680, !2681}
!2679 = !DILocalVariable(name: "n", arg: 1, scope: !2675, file: !76, line: 1061, type: !20)
!2680 = !DILocalVariable(name: "arg", arg: 2, scope: !2675, file: !76, line: 1061, type: !17)
!2681 = !DILocalVariable(name: "argsize", arg: 3, scope: !2675, file: !76, line: 1061, type: !114)
!2682 = !DILocation(line: 0, scope: !2675)
!2683 = !DILocation(line: 1063, column: 10, scope: !2675)
!2684 = !DILocation(line: 1063, column: 3, scope: !2675)
!2685 = distinct !DISubprogram(name: "quote_mem", scope: !76, file: !76, line: 1067, type: !2686, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!17, !17, !114}
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "arg", arg: 1, scope: !2685, file: !76, line: 1067, type: !17)
!2690 = !DILocalVariable(name: "argsize", arg: 2, scope: !2685, file: !76, line: 1067, type: !114)
!2691 = !DILocation(line: 0, scope: !2685)
!2692 = !DILocation(line: 0, scope: !2675, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 1069, column: 10, scope: !2685)
!2694 = !DILocation(line: 1063, column: 10, scope: !2675, inlinedAt: !2693)
!2695 = !DILocation(line: 1069, column: 3, scope: !2685)
!2696 = distinct !DISubprogram(name: "quote_n", scope: !76, file: !76, line: 1073, type: !2697, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!17, !20, !17}
!2699 = !{!2700, !2701}
!2700 = !DILocalVariable(name: "n", arg: 1, scope: !2696, file: !76, line: 1073, type: !20)
!2701 = !DILocalVariable(name: "arg", arg: 2, scope: !2696, file: !76, line: 1073, type: !17)
!2702 = !DILocation(line: 0, scope: !2696)
!2703 = !DILocation(line: 0, scope: !2675, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1075, column: 10, scope: !2696)
!2705 = !DILocation(line: 1063, column: 10, scope: !2675, inlinedAt: !2704)
!2706 = !DILocation(line: 1075, column: 3, scope: !2696)
!2707 = distinct !DISubprogram(name: "quote", scope: !76, file: !76, line: 1079, type: !2708, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !75, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!17, !17}
!2710 = !{!2711}
!2711 = !DILocalVariable(name: "arg", arg: 1, scope: !2707, file: !76, line: 1079, type: !17)
!2712 = !DILocation(line: 0, scope: !2707)
!2713 = !DILocation(line: 0, scope: !2696, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1081, column: 10, scope: !2707)
!2715 = !DILocation(line: 0, scope: !2675, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 1075, column: 10, scope: !2696, inlinedAt: !2714)
!2717 = !DILocation(line: 1063, column: 10, scope: !2675, inlinedAt: !2716)
!2718 = !DILocation(line: 1081, column: 3, scope: !2707)
!2719 = distinct !DISubprogram(name: "version_etc_arn", scope: !172, file: !172, line: 61, type: !2720, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2758)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{null, !2722, !17, !17, !17, !2757, !114}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2724, line: 7, baseType: !2725)
!2724 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !729, line: 49, size: 1728, elements: !2726)
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2725, file: !729, line: 51, baseType: !20, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2725, file: !729, line: 54, baseType: !6, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2725, file: !729, line: 55, baseType: !6, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2725, file: !729, line: 56, baseType: !6, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2725, file: !729, line: 57, baseType: !6, size: 64, offset: 256)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2725, file: !729, line: 58, baseType: !6, size: 64, offset: 320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2725, file: !729, line: 59, baseType: !6, size: 64, offset: 384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2725, file: !729, line: 60, baseType: !6, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2725, file: !729, line: 61, baseType: !6, size: 64, offset: 512)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2725, file: !729, line: 64, baseType: !6, size: 64, offset: 576)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2725, file: !729, line: 65, baseType: !6, size: 64, offset: 640)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2725, file: !729, line: 66, baseType: !6, size: 64, offset: 704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2725, file: !729, line: 68, baseType: !744, size: 64, offset: 768)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2725, file: !729, line: 70, baseType: !2741, size: 64, offset: 832)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2725, file: !729, line: 72, baseType: !20, size: 32, offset: 896)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2725, file: !729, line: 73, baseType: !20, size: 32, offset: 928)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2725, file: !729, line: 74, baseType: !750, size: 64, offset: 960)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2725, file: !729, line: 77, baseType: !113, size: 16, offset: 1024)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2725, file: !729, line: 78, baseType: !754, size: 8, offset: 1040)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2725, file: !729, line: 79, baseType: !756, size: 8, offset: 1048)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2725, file: !729, line: 81, baseType: !760, size: 64, offset: 1088)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2725, file: !729, line: 89, baseType: !763, size: 64, offset: 1152)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2725, file: !729, line: 91, baseType: !765, size: 64, offset: 1216)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2725, file: !729, line: 92, baseType: !768, size: 64, offset: 1280)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2725, file: !729, line: 93, baseType: !2741, size: 64, offset: 1344)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2725, file: !729, line: 94, baseType: !8, size: 64, offset: 1408)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2725, file: !729, line: 95, baseType: !114, size: 64, offset: 1472)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2725, file: !729, line: 96, baseType: !20, size: 32, offset: 1536)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2725, file: !729, line: 98, baseType: !775, size: 160, offset: 1568)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764}
!2759 = !DILocalVariable(name: "stream", arg: 1, scope: !2719, file: !172, line: 61, type: !2722)
!2760 = !DILocalVariable(name: "command_name", arg: 2, scope: !2719, file: !172, line: 62, type: !17)
!2761 = !DILocalVariable(name: "package", arg: 3, scope: !2719, file: !172, line: 62, type: !17)
!2762 = !DILocalVariable(name: "version", arg: 4, scope: !2719, file: !172, line: 63, type: !17)
!2763 = !DILocalVariable(name: "authors", arg: 5, scope: !2719, file: !172, line: 64, type: !2757)
!2764 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2719, file: !172, line: 64, type: !114)
!2765 = !DILocation(line: 0, scope: !2719)
!2766 = !DILocation(line: 66, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2719, file: !172, line: 66, column: 7)
!2768 = !DILocation(line: 66, column: 7, scope: !2719)
!2769 = !DILocation(line: 67, column: 5, scope: !2767)
!2770 = !DILocation(line: 69, column: 5, scope: !2767)
!2771 = !DILocation(line: 83, column: 3, scope: !2719)
!2772 = !DILocation(line: 85, column: 3, scope: !2719)
!2773 = !DILocation(line: 88, column: 3, scope: !2719)
!2774 = !DILocation(line: 95, column: 3, scope: !2719)
!2775 = !DILocation(line: 97, column: 3, scope: !2719)
!2776 = !DILocation(line: 105, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2719, file: !172, line: 98, column: 5)
!2778 = !DILocation(line: 106, column: 7, scope: !2777)
!2779 = !DILocation(line: 109, column: 7, scope: !2777)
!2780 = !DILocation(line: 110, column: 7, scope: !2777)
!2781 = !DILocation(line: 113, column: 7, scope: !2777)
!2782 = !DILocation(line: 115, column: 7, scope: !2777)
!2783 = !DILocation(line: 120, column: 7, scope: !2777)
!2784 = !DILocation(line: 122, column: 7, scope: !2777)
!2785 = !DILocation(line: 127, column: 7, scope: !2777)
!2786 = !DILocation(line: 129, column: 7, scope: !2777)
!2787 = !DILocation(line: 134, column: 7, scope: !2777)
!2788 = !DILocation(line: 137, column: 7, scope: !2777)
!2789 = !DILocation(line: 142, column: 7, scope: !2777)
!2790 = !DILocation(line: 145, column: 7, scope: !2777)
!2791 = !DILocation(line: 150, column: 7, scope: !2777)
!2792 = !DILocation(line: 154, column: 7, scope: !2777)
!2793 = !DILocation(line: 159, column: 7, scope: !2777)
!2794 = !DILocation(line: 163, column: 7, scope: !2777)
!2795 = !DILocation(line: 170, column: 7, scope: !2777)
!2796 = !DILocation(line: 174, column: 7, scope: !2777)
!2797 = !DILocation(line: 176, column: 1, scope: !2719)
!2798 = distinct !DISubprogram(name: "version_etc_ar", scope: !172, file: !172, line: 183, type: !2799, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2722, !17, !17, !17, !2757}
!2801 = !{!2802, !2803, !2804, !2805, !2806, !2807}
!2802 = !DILocalVariable(name: "stream", arg: 1, scope: !2798, file: !172, line: 183, type: !2722)
!2803 = !DILocalVariable(name: "command_name", arg: 2, scope: !2798, file: !172, line: 184, type: !17)
!2804 = !DILocalVariable(name: "package", arg: 3, scope: !2798, file: !172, line: 184, type: !17)
!2805 = !DILocalVariable(name: "version", arg: 4, scope: !2798, file: !172, line: 185, type: !17)
!2806 = !DILocalVariable(name: "authors", arg: 5, scope: !2798, file: !172, line: 185, type: !2757)
!2807 = !DILocalVariable(name: "n_authors", scope: !2798, file: !172, line: 187, type: !114)
!2808 = !DILocation(line: 0, scope: !2798)
!2809 = !DILocation(line: 189, column: 8, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2798, file: !172, line: 189, column: 3)
!2811 = !DILocation(line: 0, scope: !2810)
!2812 = !DILocation(line: 189, column: 23, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2810, file: !172, line: 189, column: 3)
!2814 = !DILocation(line: 189, column: 3, scope: !2810)
!2815 = !DILocation(line: 189, column: 52, scope: !2813)
!2816 = distinct !{!2816, !2814, !2817, !699}
!2817 = !DILocation(line: 190, column: 5, scope: !2810)
!2818 = !DILocation(line: 191, column: 3, scope: !2798)
!2819 = !DILocation(line: 192, column: 1, scope: !2798)
!2820 = distinct !DISubprogram(name: "version_etc_va", scope: !172, file: !172, line: 199, type: !2821, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2830)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !2722, !17, !17, !17, !2823}
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2825)
!2825 = !{!2826, !2827, !2828, !2829}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2824, file: !172, line: 192, baseType: !38, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2824, file: !172, line: 192, baseType: !38, size: 32, offset: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2824, file: !172, line: 192, baseType: !8, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2824, file: !172, line: 192, baseType: !8, size: 64, offset: 128)
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836, !2837}
!2831 = !DILocalVariable(name: "stream", arg: 1, scope: !2820, file: !172, line: 199, type: !2722)
!2832 = !DILocalVariable(name: "command_name", arg: 2, scope: !2820, file: !172, line: 200, type: !17)
!2833 = !DILocalVariable(name: "package", arg: 3, scope: !2820, file: !172, line: 200, type: !17)
!2834 = !DILocalVariable(name: "version", arg: 4, scope: !2820, file: !172, line: 201, type: !17)
!2835 = !DILocalVariable(name: "authors", arg: 5, scope: !2820, file: !172, line: 201, type: !2823)
!2836 = !DILocalVariable(name: "n_authors", scope: !2820, file: !172, line: 203, type: !114)
!2837 = !DILocalVariable(name: "authtab", scope: !2820, file: !172, line: 204, type: !2838)
!2838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !121)
!2839 = !DILocation(line: 0, scope: !2820)
!2840 = !DILocation(line: 204, column: 3, scope: !2820)
!2841 = !DILocation(line: 204, column: 15, scope: !2820)
!2842 = !DILocation(line: 208, column: 35, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !172, line: 206, column: 3)
!2844 = distinct !DILexicalBlock(scope: !2820, file: !172, line: 206, column: 3)
!2845 = !DILocation(line: 208, column: 14, scope: !2843)
!2846 = !DILocation(line: 208, column: 33, scope: !2843)
!2847 = !DILocation(line: 208, column: 67, scope: !2843)
!2848 = !DILocation(line: 206, column: 3, scope: !2844)
!2849 = !DILocation(line: 0, scope: !2844)
!2850 = !DILocation(line: 211, column: 3, scope: !2820)
!2851 = !DILocation(line: 213, column: 1, scope: !2820)
!2852 = distinct !DISubprogram(name: "version_etc", scope: !172, file: !172, line: 230, type: !2853, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{null, !2722, !17, !17, !17, null}
!2855 = !{!2856, !2857, !2858, !2859, !2860}
!2856 = !DILocalVariable(name: "stream", arg: 1, scope: !2852, file: !172, line: 230, type: !2722)
!2857 = !DILocalVariable(name: "command_name", arg: 2, scope: !2852, file: !172, line: 231, type: !17)
!2858 = !DILocalVariable(name: "package", arg: 3, scope: !2852, file: !172, line: 231, type: !17)
!2859 = !DILocalVariable(name: "version", arg: 4, scope: !2852, file: !172, line: 232, type: !17)
!2860 = !DILocalVariable(name: "authors", scope: !2852, file: !172, line: 234, type: !2861)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !724, line: 52, baseType: !2862)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2863, line: 32, baseType: !2864)
!2863 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !172, baseType: !2865)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2824, size: 192, elements: !757)
!2866 = !DILocation(line: 0, scope: !2852)
!2867 = !DILocation(line: 234, column: 3, scope: !2852)
!2868 = !DILocation(line: 234, column: 11, scope: !2852)
!2869 = !DILocation(line: 236, column: 3, scope: !2852)
!2870 = !DILocation(line: 237, column: 3, scope: !2852)
!2871 = !DILocation(line: 238, column: 3, scope: !2852)
!2872 = !DILocation(line: 239, column: 1, scope: !2852)
!2873 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !172, file: !172, line: 242, type: !926, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !4)
!2874 = !DILocation(line: 244, column: 3, scope: !2873)
!2875 = !DILocation(line: 249, column: 3, scope: !2873)
!2876 = !DILocation(line: 255, column: 3, scope: !2873)
!2877 = !DILocation(line: 260, column: 3, scope: !2873)
!2878 = !DILocation(line: 262, column: 1, scope: !2873)
!2879 = distinct !DISubprogram(name: "xnmalloc", scope: !182, file: !182, line: 99, type: !2880, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2882)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!8, !114, !114}
!2882 = !{!2883, !2884}
!2883 = !DILocalVariable(name: "n", arg: 1, scope: !2879, file: !182, line: 99, type: !114)
!2884 = !DILocalVariable(name: "s", arg: 2, scope: !2879, file: !182, line: 99, type: !114)
!2885 = !DILocation(line: 0, scope: !2879)
!2886 = !DILocation(line: 101, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2879, file: !182, line: 101, column: 7)
!2888 = !DILocation(line: 101, column: 7, scope: !2879)
!2889 = !DILocation(line: 102, column: 5, scope: !2887)
!2890 = !DILocation(line: 103, column: 21, scope: !2879)
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !179, line: 39, type: !114)
!2892 = distinct !DISubprogram(name: "xmalloc", scope: !179, file: !179, line: 39, type: !2893, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!8, !114}
!2895 = !{!2891, !2896}
!2896 = !DILocalVariable(name: "p", scope: !2892, file: !179, line: 41, type: !8)
!2897 = !DILocation(line: 0, scope: !2892, inlinedAt: !2898)
!2898 = distinct !DILocation(line: 103, column: 10, scope: !2879)
!2899 = !DILocation(line: 41, column: 13, scope: !2892, inlinedAt: !2898)
!2900 = !DILocation(line: 42, column: 8, scope: !2901, inlinedAt: !2898)
!2901 = distinct !DILexicalBlock(scope: !2892, file: !179, line: 42, column: 7)
!2902 = !DILocation(line: 42, column: 10, scope: !2901, inlinedAt: !2898)
!2903 = !DILocation(line: 43, column: 5, scope: !2901, inlinedAt: !2898)
!2904 = !DILocation(line: 103, column: 3, scope: !2879)
!2905 = !DILocation(line: 0, scope: !2892)
!2906 = !DILocation(line: 41, column: 13, scope: !2892)
!2907 = !DILocation(line: 42, column: 8, scope: !2901)
!2908 = !DILocation(line: 42, column: 10, scope: !2901)
!2909 = !DILocation(line: 43, column: 5, scope: !2901)
!2910 = !DILocation(line: 44, column: 3, scope: !2892)
!2911 = distinct !DISubprogram(name: "xnrealloc", scope: !182, file: !182, line: 112, type: !2912, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2914)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!8, !8, !114, !114}
!2914 = !{!2915, !2916, !2917}
!2915 = !DILocalVariable(name: "p", arg: 1, scope: !2911, file: !182, line: 112, type: !8)
!2916 = !DILocalVariable(name: "n", arg: 2, scope: !2911, file: !182, line: 112, type: !114)
!2917 = !DILocalVariable(name: "s", arg: 3, scope: !2911, file: !182, line: 112, type: !114)
!2918 = !DILocation(line: 0, scope: !2911)
!2919 = !DILocation(line: 114, column: 7, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2911, file: !182, line: 114, column: 7)
!2921 = !DILocation(line: 114, column: 7, scope: !2911)
!2922 = !DILocation(line: 115, column: 5, scope: !2920)
!2923 = !DILocation(line: 116, column: 25, scope: !2911)
!2924 = !DILocalVariable(name: "p", arg: 1, scope: !2925, file: !179, line: 51, type: !8)
!2925 = distinct !DISubprogram(name: "xrealloc", scope: !179, file: !179, line: 51, type: !2926, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!8, !8, !114}
!2928 = !{!2924, !2929}
!2929 = !DILocalVariable(name: "n", arg: 2, scope: !2925, file: !179, line: 51, type: !114)
!2930 = !DILocation(line: 0, scope: !2925, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 116, column: 10, scope: !2911)
!2932 = !DILocation(line: 53, column: 8, scope: !2933, inlinedAt: !2931)
!2933 = distinct !DILexicalBlock(scope: !2925, file: !179, line: 53, column: 7)
!2934 = !DILocation(line: 53, column: 10, scope: !2933, inlinedAt: !2931)
!2935 = !DILocation(line: 57, column: 7, scope: !2936, inlinedAt: !2931)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !179, line: 54, column: 5)
!2937 = !DILocation(line: 58, column: 7, scope: !2936, inlinedAt: !2931)
!2938 = !DILocation(line: 61, column: 7, scope: !2925, inlinedAt: !2931)
!2939 = !DILocation(line: 62, column: 8, scope: !2940, inlinedAt: !2931)
!2940 = distinct !DILexicalBlock(scope: !2925, file: !179, line: 62, column: 7)
!2941 = !DILocation(line: 62, column: 10, scope: !2940, inlinedAt: !2931)
!2942 = !DILocation(line: 63, column: 5, scope: !2940, inlinedAt: !2931)
!2943 = !DILocation(line: 116, column: 3, scope: !2911)
!2944 = !DILocation(line: 0, scope: !2925)
!2945 = !DILocation(line: 53, column: 8, scope: !2933)
!2946 = !DILocation(line: 53, column: 10, scope: !2933)
!2947 = !DILocation(line: 57, column: 7, scope: !2936)
!2948 = !DILocation(line: 58, column: 7, scope: !2936)
!2949 = !DILocation(line: 61, column: 7, scope: !2925)
!2950 = !DILocation(line: 62, column: 8, scope: !2940)
!2951 = !DILocation(line: 62, column: 10, scope: !2940)
!2952 = !DILocation(line: 63, column: 5, scope: !2940)
!2953 = !DILocation(line: 65, column: 1, scope: !2925)
!2954 = !DILocation(line: 0, scope: !183)
!2955 = !DILocation(line: 176, column: 14, scope: !183)
!2956 = !DILocation(line: 178, column: 9, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !183, file: !182, line: 178, column: 7)
!2958 = !DILocation(line: 178, column: 7, scope: !183)
!2959 = !DILocation(line: 180, column: 13, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !182, line: 180, column: 11)
!2961 = distinct !DILexicalBlock(scope: !2957, file: !182, line: 179, column: 5)
!2962 = !DILocation(line: 180, column: 11, scope: !2961)
!2963 = !DILocation(line: 188, column: 30, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2960, file: !182, line: 181, column: 9)
!2965 = !DILocation(line: 189, column: 16, scope: !2964)
!2966 = !DILocation(line: 189, column: 13, scope: !2964)
!2967 = !DILocation(line: 190, column: 9, scope: !2964)
!2968 = !DILocation(line: 191, column: 11, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2961, file: !182, line: 191, column: 11)
!2970 = !DILocation(line: 191, column: 11, scope: !2961)
!2971 = !DILocation(line: 206, column: 7, scope: !183)
!2972 = !DILocation(line: 207, column: 25, scope: !183)
!2973 = !DILocation(line: 0, scope: !2925, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 207, column: 10, scope: !183)
!2975 = !DILocation(line: 53, column: 10, scope: !2933, inlinedAt: !2974)
!2976 = !DILocation(line: 192, column: 9, scope: !2969)
!2977 = !DILocation(line: 200, column: 69, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !182, line: 200, column: 11)
!2979 = distinct !DILexicalBlock(scope: !2957, file: !182, line: 195, column: 5)
!2980 = !DILocation(line: 201, column: 11, scope: !2978)
!2981 = !DILocation(line: 200, column: 11, scope: !2979)
!2982 = !DILocation(line: 202, column: 9, scope: !2978)
!2983 = !DILocation(line: 203, column: 14, scope: !2979)
!2984 = !DILocation(line: 203, column: 18, scope: !2979)
!2985 = !DILocation(line: 203, column: 9, scope: !2979)
!2986 = !DILocation(line: 53, column: 8, scope: !2933, inlinedAt: !2974)
!2987 = !DILocation(line: 57, column: 7, scope: !2936, inlinedAt: !2974)
!2988 = !DILocation(line: 58, column: 7, scope: !2936, inlinedAt: !2974)
!2989 = !DILocation(line: 61, column: 7, scope: !2925, inlinedAt: !2974)
!2990 = !DILocation(line: 62, column: 8, scope: !2940, inlinedAt: !2974)
!2991 = !DILocation(line: 62, column: 10, scope: !2940, inlinedAt: !2974)
!2992 = !DILocation(line: 63, column: 5, scope: !2940, inlinedAt: !2974)
!2993 = !DILocation(line: 207, column: 3, scope: !183)
!2994 = distinct !DISubprogram(name: "xcharalloc", scope: !182, file: !182, line: 216, type: !2131, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !2995)
!2995 = !{!2996}
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2994, file: !182, line: 216, type: !114)
!2997 = !DILocation(line: 0, scope: !2994)
!2998 = !DILocation(line: 0, scope: !2892, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 218, column: 10, scope: !2994)
!3000 = !DILocation(line: 41, column: 13, scope: !2892, inlinedAt: !2999)
!3001 = !DILocation(line: 42, column: 8, scope: !2901, inlinedAt: !2999)
!3002 = !DILocation(line: 42, column: 10, scope: !2901, inlinedAt: !2999)
!3003 = !DILocation(line: 43, column: 5, scope: !2901, inlinedAt: !2999)
!3004 = !DILocation(line: 218, column: 3, scope: !2994)
!3005 = distinct !DISubprogram(name: "x2realloc", scope: !179, file: !179, line: 74, type: !3006, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!8, !8, !186}
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "p", arg: 1, scope: !3005, file: !179, line: 74, type: !8)
!3010 = !DILocalVariable(name: "pn", arg: 2, scope: !3005, file: !179, line: 74, type: !186)
!3011 = !DILocation(line: 0, scope: !3005)
!3012 = !DILocation(line: 0, scope: !183, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 76, column: 10, scope: !3005)
!3014 = !DILocation(line: 176, column: 14, scope: !183, inlinedAt: !3013)
!3015 = !DILocation(line: 178, column: 9, scope: !2957, inlinedAt: !3013)
!3016 = !DILocation(line: 178, column: 7, scope: !183, inlinedAt: !3013)
!3017 = !DILocation(line: 180, column: 13, scope: !2960, inlinedAt: !3013)
!3018 = !DILocation(line: 180, column: 11, scope: !2961, inlinedAt: !3013)
!3019 = !DILocation(line: 191, column: 11, scope: !2969, inlinedAt: !3013)
!3020 = !DILocation(line: 191, column: 11, scope: !2961, inlinedAt: !3013)
!3021 = !DILocation(line: 192, column: 9, scope: !2969, inlinedAt: !3013)
!3022 = !DILocation(line: 201, column: 11, scope: !2978, inlinedAt: !3013)
!3023 = !DILocation(line: 200, column: 11, scope: !2979, inlinedAt: !3013)
!3024 = !DILocation(line: 202, column: 9, scope: !2978, inlinedAt: !3013)
!3025 = !DILocation(line: 203, column: 14, scope: !2979, inlinedAt: !3013)
!3026 = !DILocation(line: 203, column: 18, scope: !2979, inlinedAt: !3013)
!3027 = !DILocation(line: 203, column: 9, scope: !2979, inlinedAt: !3013)
!3028 = !DILocation(line: 0, scope: !2925, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 207, column: 10, scope: !183, inlinedAt: !3013)
!3030 = !DILocation(line: 53, column: 10, scope: !2933, inlinedAt: !3029)
!3031 = !DILocation(line: 206, column: 7, scope: !183, inlinedAt: !3013)
!3032 = !DILocation(line: 61, column: 7, scope: !2925, inlinedAt: !3029)
!3033 = !DILocation(line: 62, column: 8, scope: !2940, inlinedAt: !3029)
!3034 = !DILocation(line: 62, column: 10, scope: !2940, inlinedAt: !3029)
!3035 = !DILocation(line: 63, column: 5, scope: !2940, inlinedAt: !3029)
!3036 = !DILocation(line: 76, column: 3, scope: !3005)
!3037 = distinct !DISubprogram(name: "xzalloc", scope: !179, file: !179, line: 84, type: !2893, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3038)
!3038 = !{!3039}
!3039 = !DILocalVariable(name: "n", arg: 1, scope: !3037, file: !179, line: 84, type: !114)
!3040 = !DILocation(line: 0, scope: !3037)
!3041 = !DILocalVariable(name: "n", arg: 1, scope: !3042, file: !179, line: 93, type: !114)
!3042 = distinct !DISubprogram(name: "xcalloc", scope: !179, file: !179, line: 93, type: !2880, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3043)
!3043 = !{!3041, !3044, !3045}
!3044 = !DILocalVariable(name: "s", arg: 2, scope: !3042, file: !179, line: 93, type: !114)
!3045 = !DILocalVariable(name: "p", scope: !3042, file: !179, line: 95, type: !8)
!3046 = !DILocation(line: 0, scope: !3042, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 86, column: 10, scope: !3037)
!3048 = !DILocation(line: 100, column: 7, scope: !3049, inlinedAt: !3047)
!3049 = distinct !DILexicalBlock(scope: !3042, file: !179, line: 100, column: 7)
!3050 = !DILocation(line: 101, column: 7, scope: !3049, inlinedAt: !3047)
!3051 = !DILocation(line: 101, column: 18, scope: !3049, inlinedAt: !3047)
!3052 = !DILocation(line: 101, column: 16, scope: !3049, inlinedAt: !3047)
!3053 = !DILocation(line: 100, column: 7, scope: !3042, inlinedAt: !3047)
!3054 = !DILocation(line: 102, column: 5, scope: !3049, inlinedAt: !3047)
!3055 = !DILocation(line: 86, column: 3, scope: !3037)
!3056 = !DILocation(line: 0, scope: !3042)
!3057 = !DILocation(line: 100, column: 7, scope: !3049)
!3058 = !DILocation(line: 101, column: 7, scope: !3049)
!3059 = !DILocation(line: 101, column: 18, scope: !3049)
!3060 = !DILocation(line: 101, column: 16, scope: !3049)
!3061 = !DILocation(line: 100, column: 7, scope: !3042)
!3062 = !DILocation(line: 102, column: 5, scope: !3049)
!3063 = !DILocation(line: 103, column: 3, scope: !3042)
!3064 = distinct !DISubprogram(name: "xmemdup", scope: !179, file: !179, line: 111, type: !3065, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3069)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!8, !3067, !114}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3069 = !{!3070, !3071}
!3070 = !DILocalVariable(name: "p", arg: 1, scope: !3064, file: !179, line: 111, type: !3067)
!3071 = !DILocalVariable(name: "s", arg: 2, scope: !3064, file: !179, line: 111, type: !114)
!3072 = !DILocation(line: 0, scope: !3064)
!3073 = !DILocation(line: 0, scope: !2892, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 113, column: 18, scope: !3064)
!3075 = !DILocation(line: 41, column: 13, scope: !2892, inlinedAt: !3074)
!3076 = !DILocation(line: 42, column: 8, scope: !2901, inlinedAt: !3074)
!3077 = !DILocation(line: 42, column: 10, scope: !2901, inlinedAt: !3074)
!3078 = !DILocation(line: 43, column: 5, scope: !2901, inlinedAt: !3074)
!3079 = !DILocalVariable(name: "__dest", arg: 1, scope: !3080, file: !1658, line: 26, type: !3083)
!3080 = distinct !DISubprogram(name: "memcpy", scope: !1658, file: !1658, line: 26, type: !3081, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3085)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!8, !3083, !3084, !114}
!3083 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!3084 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3067)
!3085 = !{!3079, !3086, !3087}
!3086 = !DILocalVariable(name: "__src", arg: 2, scope: !3080, file: !1658, line: 26, type: !3084)
!3087 = !DILocalVariable(name: "__len", arg: 3, scope: !3080, file: !1658, line: 26, type: !114)
!3088 = !DILocation(line: 0, scope: !3080, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 113, column: 10, scope: !3064)
!3090 = !DILocation(line: 29, column: 10, scope: !3080, inlinedAt: !3089)
!3091 = !DILocation(line: 113, column: 3, scope: !3064)
!3092 = distinct !DISubprogram(name: "xstrdup", scope: !179, file: !179, line: 119, type: !919, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !178, retainedNodes: !3093)
!3093 = !{!3094}
!3094 = !DILocalVariable(name: "string", arg: 1, scope: !3092, file: !179, line: 119, type: !17)
!3095 = !DILocation(line: 0, scope: !3092)
!3096 = !DILocation(line: 121, column: 27, scope: !3092)
!3097 = !DILocation(line: 121, column: 43, scope: !3092)
!3098 = !DILocation(line: 0, scope: !3064, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 121, column: 10, scope: !3092)
!3100 = !DILocation(line: 0, scope: !2892, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 113, column: 18, scope: !3064, inlinedAt: !3099)
!3102 = !DILocation(line: 41, column: 13, scope: !2892, inlinedAt: !3101)
!3103 = !DILocation(line: 42, column: 8, scope: !2901, inlinedAt: !3101)
!3104 = !DILocation(line: 42, column: 10, scope: !2901, inlinedAt: !3101)
!3105 = !DILocation(line: 43, column: 5, scope: !2901, inlinedAt: !3101)
!3106 = !DILocation(line: 0, scope: !3080, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 113, column: 10, scope: !3064, inlinedAt: !3099)
!3108 = !DILocation(line: 29, column: 10, scope: !3080, inlinedAt: !3107)
!3109 = !DILocation(line: 121, column: 3, scope: !3092)
!3110 = distinct !DISubprogram(name: "xalloc_die", scope: !196, file: !196, line: 32, type: !926, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !4)
!3111 = !DILocation(line: 34, column: 10, scope: !3110)
!3112 = !DILocation(line: 34, column: 33, scope: !3110)
!3113 = !DILocation(line: 34, column: 3, scope: !3110)
!3114 = !DILocation(line: 40, column: 3, scope: !3110)
!3115 = distinct !DISubprogram(name: "xgetgroups", scope: !198, file: !198, line: 31, type: !602, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !197, retainedNodes: !3116)
!3116 = !{!3117, !3118, !3119, !3120}
!3117 = !DILocalVariable(name: "username", arg: 1, scope: !3115, file: !198, line: 31, type: !17)
!3118 = !DILocalVariable(name: "gid", arg: 2, scope: !3115, file: !198, line: 31, type: !34)
!3119 = !DILocalVariable(name: "groups", arg: 3, scope: !3115, file: !198, line: 31, type: !604)
!3120 = !DILocalVariable(name: "result", scope: !3115, file: !198, line: 33, type: !20)
!3121 = !DILocation(line: 0, scope: !3115)
!3122 = !DILocation(line: 33, column: 16, scope: !3115)
!3123 = !DILocation(line: 34, column: 14, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3115, file: !198, line: 34, column: 7)
!3125 = !DILocation(line: 34, column: 20, scope: !3124)
!3126 = !DILocation(line: 34, column: 23, scope: !3124)
!3127 = !DILocation(line: 34, column: 29, scope: !3124)
!3128 = !DILocation(line: 34, column: 7, scope: !3115)
!3129 = !DILocation(line: 35, column: 5, scope: !3124)
!3130 = !DILocation(line: 36, column: 3, scope: !3115)
!3131 = distinct !DISubprogram(name: "rpl_calloc", scope: !200, file: !200, line: 42, type: !2880, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !3132)
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DILocalVariable(name: "n", arg: 1, scope: !3131, file: !200, line: 42, type: !114)
!3134 = !DILocalVariable(name: "s", arg: 2, scope: !3131, file: !200, line: 42, type: !114)
!3135 = !DILocalVariable(name: "result", scope: !3131, file: !200, line: 44, type: !8)
!3136 = !DILocalVariable(name: "bytes", scope: !3137, file: !200, line: 56, type: !114)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !200, line: 53, column: 5)
!3138 = distinct !DILexicalBlock(scope: !3131, file: !200, line: 47, column: 7)
!3139 = !DILocation(line: 0, scope: !3131)
!3140 = !DILocation(line: 47, column: 9, scope: !3138)
!3141 = !DILocation(line: 47, column: 14, scope: !3138)
!3142 = !DILocation(line: 0, scope: !3137)
!3143 = !DILocation(line: 57, column: 21, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3137, file: !200, line: 57, column: 11)
!3145 = !DILocation(line: 57, column: 11, scope: !3137)
!3146 = !DILocation(line: 59, column: 11, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3144, file: !200, line: 58, column: 9)
!3148 = !DILocation(line: 59, column: 17, scope: !3147)
!3149 = !DILocation(line: 65, column: 12, scope: !3131)
!3150 = !DILocation(line: 72, column: 3, scope: !3131)
!3151 = !DILocation(line: 73, column: 1, scope: !3131)
!3152 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !202, file: !202, line: 86, type: !3153, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3167)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!114, !3155, !17, !114, !3156}
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1412, line: 6, baseType: !3158)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1414, line: 21, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1414, line: 13, size: 64, elements: !3160)
!3160 = !{!3161, !3162}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3159, file: !1414, line: 15, baseType: !20, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3159, file: !1414, line: 20, baseType: !3163, size: 32, offset: 32)
!3163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3159, file: !1414, line: 16, size: 32, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3163, file: !1414, line: 18, baseType: !38, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3163, file: !1414, line: 19, baseType: !1423, size: 32)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174}
!3168 = !DILocalVariable(name: "pwc", arg: 1, scope: !3152, file: !202, line: 86, type: !3155)
!3169 = !DILocalVariable(name: "s", arg: 2, scope: !3152, file: !202, line: 86, type: !17)
!3170 = !DILocalVariable(name: "n", arg: 3, scope: !3152, file: !202, line: 86, type: !114)
!3171 = !DILocalVariable(name: "ps", arg: 4, scope: !3152, file: !202, line: 86, type: !3156)
!3172 = !DILocalVariable(name: "ret", scope: !3152, file: !202, line: 88, type: !114)
!3173 = !DILocalVariable(name: "wc", scope: !3152, file: !202, line: 89, type: !1428)
!3174 = !DILocalVariable(name: "uc", scope: !3175, file: !202, line: 156, type: !9)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !202, line: 155, column: 5)
!3176 = distinct !DILexicalBlock(scope: !3152, file: !202, line: 154, column: 7)
!3177 = !DILocation(line: 0, scope: !3152)
!3178 = !DILocation(line: 89, column: 3, scope: !3152)
!3179 = !DILocation(line: 105, column: 9, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3152, file: !202, line: 105, column: 7)
!3181 = !DILocation(line: 105, column: 7, scope: !3152)
!3182 = !DILocation(line: 145, column: 9, scope: !3152)
!3183 = !DILocation(line: 154, column: 19, scope: !3176)
!3184 = !DILocation(line: 154, column: 26, scope: !3176)
!3185 = !DILocation(line: 154, column: 41, scope: !3176)
!3186 = !DILocation(line: 154, column: 7, scope: !3152)
!3187 = !DILocation(line: 156, column: 26, scope: !3175)
!3188 = !DILocation(line: 0, scope: !3175)
!3189 = !DILocation(line: 157, column: 14, scope: !3175)
!3190 = !DILocation(line: 157, column: 12, scope: !3175)
!3191 = !DILocation(line: 163, column: 1, scope: !3152)
!3192 = !DISubprogram(name: "mbrtowc", scope: !2091, file: !2091, line: 296, type: !3193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!41, !22, !17, !41, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3196 = distinct !DISubprogram(name: "close_stream", scope: !205, file: !205, line: 56, type: !3197, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !3233)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!20, !3199}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2724, line: 7, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !729, line: 49, size: 1728, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3201, file: !729, line: 51, baseType: !20, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3201, file: !729, line: 54, baseType: !6, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3201, file: !729, line: 55, baseType: !6, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3201, file: !729, line: 56, baseType: !6, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3201, file: !729, line: 57, baseType: !6, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3201, file: !729, line: 58, baseType: !6, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3201, file: !729, line: 59, baseType: !6, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3201, file: !729, line: 60, baseType: !6, size: 64, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3201, file: !729, line: 61, baseType: !6, size: 64, offset: 512)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3201, file: !729, line: 64, baseType: !6, size: 64, offset: 576)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3201, file: !729, line: 65, baseType: !6, size: 64, offset: 640)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3201, file: !729, line: 66, baseType: !6, size: 64, offset: 704)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3201, file: !729, line: 68, baseType: !744, size: 64, offset: 768)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3201, file: !729, line: 70, baseType: !3217, size: 64, offset: 832)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3201, file: !729, line: 72, baseType: !20, size: 32, offset: 896)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3201, file: !729, line: 73, baseType: !20, size: 32, offset: 928)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3201, file: !729, line: 74, baseType: !750, size: 64, offset: 960)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3201, file: !729, line: 77, baseType: !113, size: 16, offset: 1024)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3201, file: !729, line: 78, baseType: !754, size: 8, offset: 1040)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3201, file: !729, line: 79, baseType: !756, size: 8, offset: 1048)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3201, file: !729, line: 81, baseType: !760, size: 64, offset: 1088)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3201, file: !729, line: 89, baseType: !763, size: 64, offset: 1152)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3201, file: !729, line: 91, baseType: !765, size: 64, offset: 1216)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3201, file: !729, line: 92, baseType: !768, size: 64, offset: 1280)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3201, file: !729, line: 93, baseType: !3217, size: 64, offset: 1344)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3201, file: !729, line: 94, baseType: !8, size: 64, offset: 1408)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3201, file: !729, line: 95, baseType: !114, size: 64, offset: 1472)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3201, file: !729, line: 96, baseType: !20, size: 32, offset: 1536)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3201, file: !729, line: 98, baseType: !775, size: 160, offset: 1568)
!3233 = !{!3234, !3235, !3237, !3238}
!3234 = !DILocalVariable(name: "stream", arg: 1, scope: !3196, file: !205, line: 56, type: !3199)
!3235 = !DILocalVariable(name: "some_pending", scope: !3196, file: !205, line: 58, type: !3236)
!3236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!3237 = !DILocalVariable(name: "prev_fail", scope: !3196, file: !205, line: 59, type: !3236)
!3238 = !DILocalVariable(name: "fclose_fail", scope: !3196, file: !205, line: 60, type: !3236)
!3239 = !DILocation(line: 0, scope: !3196)
!3240 = !DILocation(line: 58, column: 30, scope: !3196)
!3241 = !DILocalVariable(name: "__stream", arg: 1, scope: !3242, file: !868, line: 135, type: !3199)
!3242 = distinct !DISubprogram(name: "ferror_unlocked", scope: !868, file: !868, line: 135, type: !3197, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !3243)
!3243 = !{!3241}
!3244 = !DILocation(line: 0, scope: !3242, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 59, column: 27, scope: !3196)
!3246 = !DILocation(line: 137, column: 10, scope: !3242, inlinedAt: !3245)
!3247 = !{!876, !832, i64 0}
!3248 = !DILocation(line: 59, column: 43, scope: !3196)
!3249 = !DILocation(line: 60, column: 29, scope: !3196)
!3250 = !DILocation(line: 60, column: 45, scope: !3196)
!3251 = !DILocation(line: 70, column: 17, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3196, file: !205, line: 70, column: 7)
!3253 = !DILocation(line: 58, column: 50, scope: !3196)
!3254 = !DILocation(line: 70, column: 33, scope: !3252)
!3255 = !DILocation(line: 70, column: 53, scope: !3252)
!3256 = !DILocation(line: 70, column: 59, scope: !3252)
!3257 = !DILocation(line: 70, column: 7, scope: !3196)
!3258 = !DILocation(line: 72, column: 11, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3252, file: !205, line: 71, column: 5)
!3260 = !DILocation(line: 73, column: 9, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3259, file: !205, line: 72, column: 11)
!3262 = !DILocation(line: 73, column: 15, scope: !3261)
!3263 = !DILocation(line: 78, column: 1, scope: !3196)
!3264 = distinct !DISubprogram(name: "hard_locale", scope: !207, file: !207, line: 27, type: !3265, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!60, !20}
!3267 = !{!3268, !3269}
!3268 = !DILocalVariable(name: "category", arg: 1, scope: !3264, file: !207, line: 27, type: !20)
!3269 = !DILocalVariable(name: "locale", scope: !3264, file: !207, line: 29, type: !3270)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2056, elements: !3271)
!3271 = !{!3272}
!3272 = !DISubrange(count: 257)
!3273 = !DILocation(line: 0, scope: !3264)
!3274 = !DILocation(line: 29, column: 3, scope: !3264)
!3275 = !DILocation(line: 29, column: 8, scope: !3264)
!3276 = !DILocation(line: 31, column: 7, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3264, file: !207, line: 31, column: 7)
!3278 = !DILocation(line: 31, column: 7, scope: !3264)
!3279 = !DILocation(line: 34, column: 12, scope: !3264)
!3280 = !DILocation(line: 34, column: 38, scope: !3264)
!3281 = !DILocation(line: 34, column: 41, scope: !3264)
!3282 = !DILocation(line: 34, column: 66, scope: !3264)
!3283 = !DILocation(line: 35, column: 1, scope: !3264)
!3284 = distinct !DISubprogram(name: "locale_charset", scope: !209, file: !209, line: 831, type: !3285, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !208, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!17}
!3287 = !{!3288}
!3288 = !DILocalVariable(name: "codeset", scope: !3284, file: !209, line: 833, type: !17)
!3289 = !DILocation(line: 847, column: 13, scope: !3284)
!3290 = !DILocation(line: 0, scope: !3284)
!3291 = !DILocation(line: 911, column: 15, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3284, file: !209, line: 911, column: 7)
!3293 = !DILocation(line: 911, column: 7, scope: !3284)
!3294 = !DILocation(line: 1070, column: 13, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !209, line: 1070, column: 13)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !209, line: 1060, column: 7)
!3297 = distinct !DILexicalBlock(scope: !3284, file: !209, line: 1019, column: 3)
!3298 = !DILocation(line: 1070, column: 24, scope: !3295)
!3299 = !DILocation(line: 1070, column: 13, scope: !3296)
!3300 = !DILocation(line: 1158, column: 3, scope: !3284)
!3301 = !DISubprogram(name: "nl_langinfo", scope: !212, file: !212, line: 661, type: !3302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!6, !20}
!3304 = !DILocation(line: 0, scope: !601)
!3305 = !DILocation(line: 68, column: 3, scope: !601)
!3306 = !DILocation(line: 81, column: 7, scope: !616)
!3307 = !DILocation(line: 81, column: 7, scope: !601)
!3308 = !DILocation(line: 84, column: 20, scope: !615)
!3309 = !DILocalVariable(name: "g", arg: 1, scope: !3310, file: !598, line: 43, type: !605)
!3310 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !598, file: !598, line: 43, type: !3311, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !597, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!605, !605, !114}
!3313 = !{!3309, !3314}
!3314 = !DILocalVariable(name: "num", arg: 2, scope: !3310, file: !598, line: 43, type: !114)
!3315 = !DILocation(line: 0, scope: !3310, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 86, column: 11, scope: !615)
!3317 = !DILocation(line: 51, column: 10, scope: !3310, inlinedAt: !3316)
!3318 = !DILocation(line: 87, column: 13, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !615, file: !598, line: 87, column: 11)
!3320 = !DILocation(line: 87, column: 11, scope: !615)
!3321 = !DILocation(line: 93, column: 31, scope: !614)
!3322 = !DILocation(line: 86, column: 9, scope: !615)
!3323 = !DILocation(line: 0, scope: !614)
!3324 = !DILocation(line: 96, column: 16, scope: !614)
!3325 = !DILocation(line: 100, column: 18, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !614, file: !598, line: 100, column: 15)
!3327 = !DILocation(line: 100, column: 22, scope: !3326)
!3328 = !DILocation(line: 101, column: 26, scope: !3326)
!3329 = !DILocation(line: 101, column: 13, scope: !3326)
!3330 = !DILocation(line: 103, column: 41, scope: !620)
!3331 = !DILocation(line: 0, scope: !3310, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 103, column: 20, scope: !620)
!3333 = !DILocation(line: 45, column: 7, scope: !3334, inlinedAt: !3332)
!3334 = distinct !DILexicalBlock(scope: !3310, file: !598, line: 45, column: 7)
!3335 = !DILocation(line: 45, column: 7, scope: !3310, inlinedAt: !3332)
!3336 = !DILocation(line: 47, column: 7, scope: !3337, inlinedAt: !3332)
!3337 = distinct !DILexicalBlock(scope: !3334, file: !598, line: 46, column: 5)
!3338 = !DILocation(line: 47, column: 13, scope: !3337, inlinedAt: !3332)
!3339 = !DILocation(line: 103, column: 15, scope: !614)
!3340 = !DILocation(line: 51, column: 26, scope: !3310, inlinedAt: !3332)
!3341 = !DILocation(line: 51, column: 10, scope: !3310, inlinedAt: !3332)
!3342 = !DILocation(line: 103, column: 56, scope: !620)
!3343 = !DILocation(line: 105, column: 33, scope: !619)
!3344 = !DILocation(line: 0, scope: !619)
!3345 = !DILocation(line: 106, column: 15, scope: !619)
!3346 = !DILocation(line: 107, column: 21, scope: !619)
!3347 = !DILocation(line: 112, column: 17, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !614, file: !598, line: 112, column: 15)
!3349 = !DILocation(line: 112, column: 15, scope: !614)
!3350 = !DILocation(line: 114, column: 23, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3348, file: !598, line: 113, column: 13)
!3352 = !DILocation(line: 117, column: 15, scope: !3351)
!3353 = !DILocation(line: 126, column: 21, scope: !601)
!3354 = !DILocation(line: 124, column: 16, scope: !601)
!3355 = !DILocation(line: 131, column: 20, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !601, file: !598, line: 131, column: 7)
!3357 = !DILocation(line: 131, column: 7, scope: !601)
!3358 = !DILocation(line: 133, column: 11, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !598, line: 133, column: 11)
!3360 = distinct !DILexicalBlock(scope: !3356, file: !598, line: 132, column: 5)
!3361 = !DILocation(line: 133, column: 17, scope: !3359)
!3362 = !DILocation(line: 133, column: 27, scope: !3359)
!3363 = !DILocation(line: 0, scope: !3310, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 133, column: 35, scope: !3359)
!3365 = !DILocation(line: 51, column: 10, scope: !3310, inlinedAt: !3364)
!3366 = !DILocation(line: 133, column: 33, scope: !3359)
!3367 = !DILocation(line: 133, column: 11, scope: !3360)
!3368 = !DILocation(line: 135, column: 19, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3359, file: !598, line: 134, column: 9)
!3370 = !DILocation(line: 136, column: 14, scope: !3369)
!3371 = !DILocation(line: 137, column: 22, scope: !3369)
!3372 = !DILocation(line: 137, column: 11, scope: !3369)
!3373 = !DILocation(line: 142, column: 20, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !601, file: !598, line: 142, column: 7)
!3375 = !DILocation(line: 142, column: 25, scope: !3374)
!3376 = !DILocation(line: 143, column: 17, scope: !3374)
!3377 = !DILocation(line: 143, column: 5, scope: !3374)
!3378 = !DILocation(line: 144, column: 31, scope: !601)
!3379 = !DILocation(line: 0, scope: !3310, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 144, column: 7, scope: !601)
!3381 = !DILocation(line: 51, column: 26, scope: !3310, inlinedAt: !3380)
!3382 = !DILocation(line: 51, column: 10, scope: !3310, inlinedAt: !3380)
!3383 = !DILocation(line: 145, column: 9, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !601, file: !598, line: 145, column: 7)
!3385 = !DILocation(line: 145, column: 7, scope: !601)
!3386 = !DILocation(line: 150, column: 42, scope: !601)
!3387 = !DILocation(line: 150, column: 35, scope: !601)
!3388 = !DILocation(line: 151, column: 35, scope: !601)
!3389 = !DILocation(line: 150, column: 11, scope: !601)
!3390 = !DILocation(line: 153, column: 10, scope: !623)
!3391 = !DILocation(line: 153, column: 7, scope: !601)
!3392 = !DILocation(line: 156, column: 25, scope: !622)
!3393 = !DILocation(line: 0, scope: !622)
!3394 = !DILocation(line: 157, column: 7, scope: !622)
!3395 = !DILocation(line: 158, column: 13, scope: !622)
!3396 = !DILocation(line: 162, column: 17, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !601, file: !598, line: 162, column: 7)
!3398 = !DILocation(line: 164, column: 10, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3397, file: !598, line: 163, column: 5)
!3400 = !DILocation(line: 165, column: 9, scope: !3399)
!3401 = !DILocation(line: 166, column: 5, scope: !3399)
!3402 = !DILocation(line: 167, column: 11, scope: !601)
!3403 = !DILocation(line: 185, column: 9, scope: !626)
!3404 = !DILocation(line: 185, column: 7, scope: !601)
!3405 = !DILocation(line: 187, column: 21, scope: !625)
!3406 = !DILocation(line: 0, scope: !625)
!3407 = !DILocation(line: 189, column: 29, scope: !625)
!3408 = !DILocation(line: 0, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !625, file: !598, line: 191, column: 7)
!3410 = !DILocation(line: 191, column: 31, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3409, file: !598, line: 191, column: 7)
!3412 = !DILocation(line: 191, column: 7, scope: !3409)
!3413 = !DILocation(line: 193, column: 15, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !598, line: 193, column: 15)
!3415 = distinct !DILexicalBlock(scope: !3411, file: !598, line: 192, column: 9)
!3416 = !DILocation(line: 193, column: 30, scope: !3414)
!3417 = !DILocation(line: 196, column: 14, scope: !3414)
!3418 = !DILocation(line: 196, column: 18, scope: !3414)
!3419 = !DILocation(line: 194, column: 15, scope: !3414)
!3420 = !DILocation(line: 194, column: 13, scope: !3414)
!3421 = !DILocation(line: 193, column: 21, scope: !3414)
!3422 = !DILocation(line: 201, column: 1, scope: !601)
!3423 = distinct !{!3423, !3412, !3424, !699}
!3424 = !DILocation(line: 197, column: 9, scope: !3409)
!3425 = !DISubprogram(name: "getgrouplist", scope: !992, file: !992, line: 186, type: !3426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!20, !17, !38, !1292, !22}
!3428 = distinct !DISubprogram(name: "setlocale_null_r", scope: !633, file: !633, line: 269, type: !3429, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!20, !20, !6, !114}
!3431 = !{!3432, !3433, !3434}
!3432 = !DILocalVariable(name: "category", arg: 1, scope: !3428, file: !633, line: 269, type: !20)
!3433 = !DILocalVariable(name: "buf", arg: 2, scope: !3428, file: !633, line: 269, type: !6)
!3434 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3428, file: !633, line: 269, type: !114)
!3435 = !DILocation(line: 0, scope: !3428)
!3436 = !DILocalVariable(name: "category", arg: 1, scope: !3437, file: !633, line: 91, type: !20)
!3437 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !633, file: !633, line: 91, type: !3429, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3438)
!3438 = !{!3436, !3439, !3440, !3441, !3442}
!3439 = !DILocalVariable(name: "buf", arg: 2, scope: !3437, file: !633, line: 91, type: !6)
!3440 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3437, file: !633, line: 91, type: !114)
!3441 = !DILocalVariable(name: "result", scope: !3437, file: !633, line: 140, type: !17)
!3442 = !DILocalVariable(name: "length", scope: !3443, file: !633, line: 154, type: !114)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !633, line: 153, column: 5)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !633, line: 142, column: 7)
!3445 = !DILocation(line: 0, scope: !3437, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 274, column: 10, scope: !3428)
!3447 = !DILocalVariable(name: "category", arg: 1, scope: !3448, file: !633, line: 60, type: !20)
!3448 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !633, file: !633, line: 60, type: !3449, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3451)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!17, !20}
!3451 = !{!3447, !3452}
!3452 = !DILocalVariable(name: "result", scope: !3448, file: !633, line: 62, type: !17)
!3453 = !DILocation(line: 0, scope: !3448, inlinedAt: !3454)
!3454 = distinct !DILocation(line: 140, column: 24, scope: !3437, inlinedAt: !3446)
!3455 = !DILocation(line: 62, column: 24, scope: !3448, inlinedAt: !3454)
!3456 = !DILocation(line: 142, column: 14, scope: !3444, inlinedAt: !3446)
!3457 = !DILocation(line: 142, column: 7, scope: !3437, inlinedAt: !3446)
!3458 = !DILocation(line: 145, column: 19, scope: !3459, inlinedAt: !3446)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !633, line: 145, column: 11)
!3460 = distinct !DILexicalBlock(scope: !3444, file: !633, line: 143, column: 5)
!3461 = !DILocation(line: 145, column: 11, scope: !3460, inlinedAt: !3446)
!3462 = !DILocation(line: 149, column: 16, scope: !3459, inlinedAt: !3446)
!3463 = !DILocation(line: 149, column: 9, scope: !3459, inlinedAt: !3446)
!3464 = !DILocation(line: 154, column: 23, scope: !3443, inlinedAt: !3446)
!3465 = !DILocation(line: 0, scope: !3443, inlinedAt: !3446)
!3466 = !DILocation(line: 155, column: 18, scope: !3467, inlinedAt: !3446)
!3467 = distinct !DILexicalBlock(scope: !3443, file: !633, line: 155, column: 11)
!3468 = !DILocation(line: 155, column: 11, scope: !3443, inlinedAt: !3446)
!3469 = !DILocation(line: 157, column: 39, scope: !3470, inlinedAt: !3446)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !633, line: 156, column: 9)
!3471 = !DILocalVariable(name: "__dest", arg: 1, scope: !3472, file: !1658, line: 26, type: !3083)
!3472 = distinct !DISubprogram(name: "memcpy", scope: !1658, file: !1658, line: 26, type: !3081, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3473)
!3473 = !{!3471, !3474, !3475}
!3474 = !DILocalVariable(name: "__src", arg: 2, scope: !3472, file: !1658, line: 26, type: !3084)
!3475 = !DILocalVariable(name: "__len", arg: 3, scope: !3472, file: !1658, line: 26, type: !114)
!3476 = !DILocation(line: 0, scope: !3472, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 157, column: 11, scope: !3470, inlinedAt: !3446)
!3478 = !DILocation(line: 29, column: 10, scope: !3472, inlinedAt: !3477)
!3479 = !DILocation(line: 158, column: 11, scope: !3470, inlinedAt: !3446)
!3480 = !DILocation(line: 162, column: 23, scope: !3481, inlinedAt: !3446)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !633, line: 162, column: 15)
!3482 = distinct !DILexicalBlock(scope: !3467, file: !633, line: 161, column: 9)
!3483 = !DILocation(line: 162, column: 15, scope: !3482, inlinedAt: !3446)
!3484 = !DILocation(line: 167, column: 44, scope: !3485, inlinedAt: !3446)
!3485 = distinct !DILexicalBlock(scope: !3481, file: !633, line: 163, column: 13)
!3486 = !DILocation(line: 0, scope: !3472, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 167, column: 15, scope: !3485, inlinedAt: !3446)
!3488 = !DILocation(line: 29, column: 10, scope: !3472, inlinedAt: !3487)
!3489 = !DILocation(line: 168, column: 15, scope: !3485, inlinedAt: !3446)
!3490 = !DILocation(line: 168, column: 32, scope: !3485, inlinedAt: !3446)
!3491 = !DILocation(line: 169, column: 13, scope: !3485, inlinedAt: !3446)
!3492 = !DILocation(line: 0, scope: !3444, inlinedAt: !3446)
!3493 = !DILocation(line: 274, column: 3, scope: !3428)
!3494 = distinct !DISubprogram(name: "setlocale_null", scope: !633, file: !633, line: 301, type: !3449, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !632, retainedNodes: !3495)
!3495 = !{!3496}
!3496 = !DILocalVariable(name: "category", arg: 1, scope: !3494, file: !633, line: 301, type: !20)
!3497 = !DILocation(line: 0, scope: !3494)
!3498 = !DILocation(line: 0, scope: !3448, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 304, column: 10, scope: !3494)
!3500 = !DILocation(line: 62, column: 24, scope: !3448, inlinedAt: !3499)
!3501 = !DILocation(line: 304, column: 3, scope: !3494)
!3502 = distinct !DISubprogram(name: "rpl_fclose", scope: !635, file: !635, line: 58, type: !3503, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !634, retainedNodes: !3539)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!20, !3505}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2724, line: 7, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !729, line: 49, size: 1728, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3507, file: !729, line: 51, baseType: !20, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3507, file: !729, line: 54, baseType: !6, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3507, file: !729, line: 55, baseType: !6, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3507, file: !729, line: 56, baseType: !6, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3507, file: !729, line: 57, baseType: !6, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3507, file: !729, line: 58, baseType: !6, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3507, file: !729, line: 59, baseType: !6, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3507, file: !729, line: 60, baseType: !6, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3507, file: !729, line: 61, baseType: !6, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3507, file: !729, line: 64, baseType: !6, size: 64, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3507, file: !729, line: 65, baseType: !6, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3507, file: !729, line: 66, baseType: !6, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3507, file: !729, line: 68, baseType: !744, size: 64, offset: 768)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3507, file: !729, line: 70, baseType: !3523, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3507, file: !729, line: 72, baseType: !20, size: 32, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3507, file: !729, line: 73, baseType: !20, size: 32, offset: 928)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3507, file: !729, line: 74, baseType: !750, size: 64, offset: 960)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3507, file: !729, line: 77, baseType: !113, size: 16, offset: 1024)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3507, file: !729, line: 78, baseType: !754, size: 8, offset: 1040)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3507, file: !729, line: 79, baseType: !756, size: 8, offset: 1048)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3507, file: !729, line: 81, baseType: !760, size: 64, offset: 1088)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3507, file: !729, line: 89, baseType: !763, size: 64, offset: 1152)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3507, file: !729, line: 91, baseType: !765, size: 64, offset: 1216)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3507, file: !729, line: 92, baseType: !768, size: 64, offset: 1280)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3507, file: !729, line: 93, baseType: !3523, size: 64, offset: 1344)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3507, file: !729, line: 94, baseType: !8, size: 64, offset: 1408)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3507, file: !729, line: 95, baseType: !114, size: 64, offset: 1472)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3507, file: !729, line: 96, baseType: !20, size: 32, offset: 1536)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3507, file: !729, line: 98, baseType: !775, size: 160, offset: 1568)
!3539 = !{!3540, !3541, !3542, !3543}
!3540 = !DILocalVariable(name: "fp", arg: 1, scope: !3502, file: !635, line: 58, type: !3505)
!3541 = !DILocalVariable(name: "saved_errno", scope: !3502, file: !635, line: 60, type: !20)
!3542 = !DILocalVariable(name: "fd", scope: !3502, file: !635, line: 61, type: !20)
!3543 = !DILocalVariable(name: "result", scope: !3502, file: !635, line: 62, type: !20)
!3544 = !DILocation(line: 0, scope: !3502)
!3545 = !DILocation(line: 65, column: 8, scope: !3502)
!3546 = !DILocation(line: 66, column: 10, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3502, file: !635, line: 66, column: 7)
!3548 = !DILocation(line: 66, column: 7, scope: !3502)
!3549 = !DILocation(line: 67, column: 12, scope: !3547)
!3550 = !DILocation(line: 67, column: 5, scope: !3547)
!3551 = !DILocation(line: 72, column: 9, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3502, file: !635, line: 72, column: 7)
!3553 = !DILocation(line: 72, column: 23, scope: !3552)
!3554 = !DILocation(line: 72, column: 33, scope: !3552)
!3555 = !DILocation(line: 72, column: 26, scope: !3552)
!3556 = !DILocation(line: 72, column: 59, scope: !3552)
!3557 = !DILocation(line: 73, column: 7, scope: !3552)
!3558 = !DILocation(line: 73, column: 10, scope: !3552)
!3559 = !DILocation(line: 72, column: 7, scope: !3502)
!3560 = !DILocation(line: 100, column: 12, scope: !3502)
!3561 = !DILocation(line: 105, column: 7, scope: !3502)
!3562 = !DILocation(line: 74, column: 19, scope: !3552)
!3563 = !DILocation(line: 105, column: 19, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3502, file: !635, line: 105, column: 7)
!3565 = !DILocation(line: 107, column: 13, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3564, file: !635, line: 106, column: 5)
!3567 = !DILocation(line: 109, column: 5, scope: !3566)
!3568 = !DILocation(line: 112, column: 1, scope: !3502)
!3569 = !DISubprogram(name: "fileno", scope: !724, file: !724, line: 785, type: !3570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!20, !3523}
!3572 = !DISubprogram(name: "fclose", scope: !724, file: !724, line: 213, type: !3570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3573 = !DISubprogram(name: "lseek", scope: !935, file: !935, line: 334, type: !3574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!751, !20, !751, !20}
!3576 = distinct !DISubprogram(name: "rpl_fflush", scope: !637, file: !637, line: 129, type: !3577, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !3613)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!20, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2724, line: 7, baseType: !3581)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !729, line: 49, size: 1728, elements: !3582)
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3581, file: !729, line: 51, baseType: !20, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3581, file: !729, line: 54, baseType: !6, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3581, file: !729, line: 55, baseType: !6, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3581, file: !729, line: 56, baseType: !6, size: 64, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3581, file: !729, line: 57, baseType: !6, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3581, file: !729, line: 58, baseType: !6, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3581, file: !729, line: 59, baseType: !6, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3581, file: !729, line: 60, baseType: !6, size: 64, offset: 448)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3581, file: !729, line: 61, baseType: !6, size: 64, offset: 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3581, file: !729, line: 64, baseType: !6, size: 64, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3581, file: !729, line: 65, baseType: !6, size: 64, offset: 640)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3581, file: !729, line: 66, baseType: !6, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3581, file: !729, line: 68, baseType: !744, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3581, file: !729, line: 70, baseType: !3597, size: 64, offset: 832)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3581, file: !729, line: 72, baseType: !20, size: 32, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3581, file: !729, line: 73, baseType: !20, size: 32, offset: 928)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3581, file: !729, line: 74, baseType: !750, size: 64, offset: 960)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3581, file: !729, line: 77, baseType: !113, size: 16, offset: 1024)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3581, file: !729, line: 78, baseType: !754, size: 8, offset: 1040)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3581, file: !729, line: 79, baseType: !756, size: 8, offset: 1048)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3581, file: !729, line: 81, baseType: !760, size: 64, offset: 1088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3581, file: !729, line: 89, baseType: !763, size: 64, offset: 1152)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3581, file: !729, line: 91, baseType: !765, size: 64, offset: 1216)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3581, file: !729, line: 92, baseType: !768, size: 64, offset: 1280)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3581, file: !729, line: 93, baseType: !3597, size: 64, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3581, file: !729, line: 94, baseType: !8, size: 64, offset: 1408)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3581, file: !729, line: 95, baseType: !114, size: 64, offset: 1472)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3581, file: !729, line: 96, baseType: !20, size: 32, offset: 1536)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3581, file: !729, line: 98, baseType: !775, size: 160, offset: 1568)
!3613 = !{!3614}
!3614 = !DILocalVariable(name: "stream", arg: 1, scope: !3576, file: !637, line: 129, type: !3579)
!3615 = !DILocation(line: 0, scope: !3576)
!3616 = !DILocation(line: 150, column: 14, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3576, file: !637, line: 150, column: 7)
!3618 = !DILocation(line: 150, column: 22, scope: !3617)
!3619 = !DILocation(line: 150, column: 27, scope: !3617)
!3620 = !DILocation(line: 150, column: 7, scope: !3576)
!3621 = !DILocation(line: 151, column: 12, scope: !3617)
!3622 = !DILocation(line: 151, column: 5, scope: !3617)
!3623 = !DILocalVariable(name: "fp", arg: 1, scope: !3624, file: !637, line: 41, type: !3579)
!3624 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !637, file: !637, line: 41, type: !3625, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !636, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !3579}
!3627 = !{!3623}
!3628 = !DILocation(line: 0, scope: !3624, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 156, column: 3, scope: !3576)
!3630 = !DILocation(line: 43, column: 11, scope: !3631, inlinedAt: !3629)
!3631 = distinct !DILexicalBlock(scope: !3624, file: !637, line: 43, column: 7)
!3632 = !DILocation(line: 43, column: 18, scope: !3631, inlinedAt: !3629)
!3633 = !DILocation(line: 43, column: 7, scope: !3624, inlinedAt: !3629)
!3634 = !DILocation(line: 45, column: 5, scope: !3631, inlinedAt: !3629)
!3635 = !DILocation(line: 158, column: 10, scope: !3576)
!3636 = !DILocation(line: 158, column: 3, scope: !3576)
!3637 = !DILocation(line: 235, column: 1, scope: !3576)
!3638 = !DISubprogram(name: "fflush", scope: !724, file: !724, line: 218, type: !3639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!20, !3597}
!3641 = distinct !DISubprogram(name: "rpl_fseeko", scope: !639, file: !639, line: 28, type: !3642, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !638, retainedNodes: !3679)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!20, !3644, !3678, !20}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2724, line: 7, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !729, line: 49, size: 1728, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3646, file: !729, line: 51, baseType: !20, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3646, file: !729, line: 54, baseType: !6, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3646, file: !729, line: 55, baseType: !6, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3646, file: !729, line: 56, baseType: !6, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3646, file: !729, line: 57, baseType: !6, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3646, file: !729, line: 58, baseType: !6, size: 64, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3646, file: !729, line: 59, baseType: !6, size: 64, offset: 384)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3646, file: !729, line: 60, baseType: !6, size: 64, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3646, file: !729, line: 61, baseType: !6, size: 64, offset: 512)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3646, file: !729, line: 64, baseType: !6, size: 64, offset: 576)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3646, file: !729, line: 65, baseType: !6, size: 64, offset: 640)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3646, file: !729, line: 66, baseType: !6, size: 64, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3646, file: !729, line: 68, baseType: !744, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3646, file: !729, line: 70, baseType: !3662, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3646, file: !729, line: 72, baseType: !20, size: 32, offset: 896)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3646, file: !729, line: 73, baseType: !20, size: 32, offset: 928)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3646, file: !729, line: 74, baseType: !750, size: 64, offset: 960)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3646, file: !729, line: 77, baseType: !113, size: 16, offset: 1024)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3646, file: !729, line: 78, baseType: !754, size: 8, offset: 1040)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3646, file: !729, line: 79, baseType: !756, size: 8, offset: 1048)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3646, file: !729, line: 81, baseType: !760, size: 64, offset: 1088)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3646, file: !729, line: 89, baseType: !763, size: 64, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3646, file: !729, line: 91, baseType: !765, size: 64, offset: 1216)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3646, file: !729, line: 92, baseType: !768, size: 64, offset: 1280)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3646, file: !729, line: 93, baseType: !3662, size: 64, offset: 1344)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3646, file: !729, line: 94, baseType: !8, size: 64, offset: 1408)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3646, file: !729, line: 95, baseType: !114, size: 64, offset: 1472)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3646, file: !729, line: 96, baseType: !20, size: 32, offset: 1536)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3646, file: !729, line: 98, baseType: !775, size: 160, offset: 1568)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !724, line: 63, baseType: !750)
!3679 = !{!3680, !3681, !3682, !3683}
!3680 = !DILocalVariable(name: "fp", arg: 1, scope: !3641, file: !639, line: 28, type: !3644)
!3681 = !DILocalVariable(name: "offset", arg: 2, scope: !3641, file: !639, line: 28, type: !3678)
!3682 = !DILocalVariable(name: "whence", arg: 3, scope: !3641, file: !639, line: 28, type: !20)
!3683 = !DILocalVariable(name: "pos", scope: !3684, file: !639, line: 117, type: !3678)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !639, line: 113, column: 5)
!3685 = distinct !DILexicalBlock(scope: !3641, file: !639, line: 52, column: 7)
!3686 = !DILocation(line: 0, scope: !3641)
!3687 = !DILocation(line: 52, column: 11, scope: !3685)
!3688 = !{!876, !658, i64 16}
!3689 = !DILocation(line: 52, column: 31, scope: !3685)
!3690 = !{!876, !658, i64 8}
!3691 = !DILocation(line: 52, column: 24, scope: !3685)
!3692 = !DILocation(line: 53, column: 7, scope: !3685)
!3693 = !DILocation(line: 53, column: 14, scope: !3685)
!3694 = !DILocation(line: 53, column: 35, scope: !3685)
!3695 = !{!876, !658, i64 32}
!3696 = !DILocation(line: 53, column: 28, scope: !3685)
!3697 = !DILocation(line: 54, column: 7, scope: !3685)
!3698 = !DILocation(line: 54, column: 14, scope: !3685)
!3699 = !{!876, !658, i64 72}
!3700 = !DILocation(line: 54, column: 28, scope: !3685)
!3701 = !DILocation(line: 52, column: 7, scope: !3641)
!3702 = !DILocation(line: 117, column: 26, scope: !3684)
!3703 = !DILocation(line: 117, column: 19, scope: !3684)
!3704 = !DILocation(line: 0, scope: !3684)
!3705 = !DILocation(line: 118, column: 15, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3684, file: !639, line: 118, column: 11)
!3707 = !DILocation(line: 118, column: 11, scope: !3684)
!3708 = !DILocation(line: 129, column: 11, scope: !3684)
!3709 = !DILocation(line: 129, column: 18, scope: !3684)
!3710 = !DILocation(line: 130, column: 11, scope: !3684)
!3711 = !DILocation(line: 130, column: 19, scope: !3684)
!3712 = !{!876, !877, i64 144}
!3713 = !DILocation(line: 161, column: 7, scope: !3684)
!3714 = !DILocation(line: 163, column: 10, scope: !3641)
!3715 = !DILocation(line: 163, column: 3, scope: !3641)
!3716 = !DILocation(line: 164, column: 1, scope: !3641)
!3717 = !DISubprogram(name: "fseeko", scope: !724, file: !724, line: 712, type: !3718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!20, !3662, !751, !20}
