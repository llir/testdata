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
@gidtostr_ptr.buf = internal global [21 x i8] zeroinitializer, align 16, !dbg !157
@.str.2.3 = private unnamed_addr constant [34 x i8] c"cannot find name for group ID %lu\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"failed to get groups for user %s\00", align 1
@.str.1.35 = private unnamed_addr constant [45 x i8] c"failed to get groups for the current process\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), align 8, !dbg !251
@.str.38 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !256
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !300
@.str.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !302
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !308
@.str.52 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.53 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.54 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.57, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.58, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.59, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.64, i32 0, i32 0), i8* null], align 16, !dbg !349
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !456
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !462
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !464
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.68 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.69 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.70 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.71 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !471
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !478
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !466
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !480
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !486
@.str.1.111 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.127 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1207 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1212, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i32 %0, metadata !1211, metadata !DIExpression()), !dbg !1233
  %3 = icmp eq i32 %0, 0, !dbg !1234
  br i1 %3, label %9, label %4, !dbg !1235

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1236, !tbaa !1238
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1236
  %7 = load i8*, i8** @program_name, align 8, !dbg !1236, !tbaa !1238
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1236
  br label %58, !dbg !1236

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1242
  %11 = load i8*, i8** @program_name, align 8, !dbg !1242, !tbaa !1238
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1242
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1243
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1243, !tbaa !1238
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1243
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1244
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1244, !tbaa !1238
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1244
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1245
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1245, !tbaa !1238
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1245
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !1216, metadata !DIExpression()) #18, !dbg !1246
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1247
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #18, !dbg !1247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1229
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !1217, metadata !DIExpression()) #18, !dbg !1246
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1218, metadata !DIExpression()) #18, !dbg !1246
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1248
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1218, metadata !DIExpression()) #18, !dbg !1246
  br label %24, !dbg !1249

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1218, metadata !DIExpression()) #18, !dbg !1246
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #21, !dbg !1250
  %28 = icmp eq i32 %27, 0, !dbg !1250
  br i1 %28, label %34, label %29, !dbg !1249

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1251
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1218, metadata !DIExpression()) #18, !dbg !1246
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1252
  %32 = load i8*, i8** %31, align 8, !dbg !1252, !tbaa !1253
  %33 = icmp eq i8* %32, null, !dbg !1255
  br i1 %33, label %34, label %24, !dbg !1256, !llvm.loop !1257

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1218, metadata !DIExpression()) #18, !dbg !1246
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1218, metadata !DIExpression()) #18, !dbg !1246
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1258
  %37 = load i8*, i8** %36, align 8, !dbg !1258, !tbaa !1260
  %38 = icmp eq i8* %37, null, !dbg !1261
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %39, metadata !1217, metadata !DIExpression()) #18, !dbg !1246
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #18, !dbg !1263
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #18, !dbg !1263
  %42 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1264
  call void @llvm.dbg.value(metadata i8* %42, metadata !1225, metadata !DIExpression()) #18, !dbg !1246
  %43 = icmp eq i8* %42, null, !dbg !1265
  br i1 %43, label %51, label %44, !dbg !1267

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #21, !dbg !1268
  %46 = icmp eq i32 %45, 0, !dbg !1268
  br i1 %46, label %51, label %47, !dbg !1269

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1270
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1270, !tbaa !1238
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #18, !dbg !1270
  br label %51, !dbg !1272

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i32 5) #18, !dbg !1273
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !1273
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #18, !dbg !1274
  %55 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !1274
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1274
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #18, !dbg !1274
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #18, !dbg !1275
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #22, !dbg !1276
  unreachable, !dbg !1276
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !6 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !15 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !80 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1277 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8** %1, metadata !1282, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !1284, metadata !DIExpression()), !dbg !1298
  %3 = load i8*, i8** %1, align 8, !dbg !1299, !tbaa !1238
  tail call void @set_program_name(i8* %3) #18, !dbg !1300
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1301
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1302
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1303
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1304
  %8 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %8, metadata !1283, metadata !DIExpression()), !dbg !1298
  switch i32 %8, label %13 [
    i32 -1, label %14
    i32 -130, label %9
    i32 -131, label %10
  ], !dbg !1306

9:                                                ; preds = %2
  tail call void @usage(i32 0) #23, !dbg !1307
  unreachable, !dbg !1307

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1310, !tbaa !1238
  %12 = load i8*, i8** @Version, align 8, !dbg !1310, !tbaa !1238
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* null) #18, !dbg !1310
  tail call void @exit(i32 0) #22, !dbg !1310
  unreachable, !dbg !1310

13:                                               ; preds = %2
  tail call void @usage(i32 1) #23, !dbg !1311
  unreachable, !dbg !1311

14:                                               ; preds = %2
  %15 = load i32, i32* @optind, align 4, !dbg !1312, !tbaa !1313
  %16 = icmp eq i32 %15, %0, !dbg !1315
  br i1 %16, label %19, label %17, !dbg !1316

17:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !1284, metadata !DIExpression()), !dbg !1298
  %18 = icmp slt i32 %15, %0, !dbg !1317
  br i1 %18, label %57, label %103, !dbg !1318

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 -1, metadata !1289, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 -1, metadata !1292, metadata !DIExpression()), !dbg !1319
  %20 = tail call i32* @__errno_location() #24, !dbg !1320
  store i32 0, i32* %20, align 4, !dbg !1321, !tbaa !1313
  %21 = tail call i32 @getuid() #18, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %21, metadata !1287, metadata !DIExpression()), !dbg !1298
  %22 = icmp eq i32 %21, -1, !dbg !1323
  br i1 %22, label %23, label %28, !dbg !1325

23:                                               ; preds = %19
  %24 = load i32, i32* %20, align 4, !dbg !1326, !tbaa !1313
  %25 = icmp eq i32 %24, 0, !dbg !1326
  br i1 %25, label %28, label %26, !dbg !1327

26:                                               ; preds = %23
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1328
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %24, i8* %27) #18, !dbg !1328
  unreachable, !dbg !1328

28:                                               ; preds = %23, %19
  store i32 0, i32* %20, align 4, !dbg !1329, !tbaa !1313
  %29 = tail call i32 @getegid() #18, !dbg !1330
  call void @llvm.dbg.value(metadata i32 %29, metadata !1286, metadata !DIExpression()), !dbg !1298
  %30 = icmp eq i32 %29, -1, !dbg !1331
  br i1 %30, label %31, label %36, !dbg !1333

31:                                               ; preds = %28
  %32 = load i32, i32* %20, align 4, !dbg !1334, !tbaa !1313
  %33 = icmp eq i32 %32, 0, !dbg !1334
  br i1 %33, label %36, label %34, !dbg !1335

34:                                               ; preds = %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 5) #18, !dbg !1336
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %32, i8* %35) #18, !dbg !1336
  unreachable, !dbg !1336

36:                                               ; preds = %31, %28
  store i32 0, i32* %20, align 4, !dbg !1337, !tbaa !1313
  %37 = tail call i32 @getgid() #18, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %37, metadata !1285, metadata !DIExpression()), !dbg !1298
  %38 = icmp eq i32 %37, -1, !dbg !1339
  br i1 %38, label %39, label %44, !dbg !1341

39:                                               ; preds = %36
  %40 = load i32, i32* %20, align 4, !dbg !1342, !tbaa !1313
  %41 = icmp eq i32 %40, 0, !dbg !1342
  br i1 %41, label %44, label %42, !dbg !1343

42:                                               ; preds = %39
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 5) #18, !dbg !1344
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %40, i8* %43) #18, !dbg !1344
  unreachable, !dbg !1344

44:                                               ; preds = %39, %36
  %45 = tail call zeroext i1 @print_group_list(i8* null, i32 %21, i32 %37, i32 %29, i1 zeroext true, i8 signext 32) #18, !dbg !1345
  %46 = zext i1 %45 to i8, !dbg !1347
  call void @llvm.dbg.value(metadata i8 %46, metadata !1284, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 10, metadata !1348, metadata !DIExpression()) #18, !dbg !1354
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1356, !tbaa !1238
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %47, i64 0, i32 5, !dbg !1356
  %49 = load i8*, i8** %48, align 8, !dbg !1356, !tbaa !1357
  %50 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %47, i64 0, i32 6, !dbg !1356
  %51 = load i8*, i8** %50, align 8, !dbg !1356, !tbaa !1361
  %52 = icmp ult i8* %49, %51, !dbg !1356
  br i1 %52, label %55, label %53, !dbg !1356, !prof !1362, !misexpect !1363

53:                                               ; preds = %44
  %54 = tail call i32 @__overflow(%struct._IO_FILE* %47, i32 10) #18, !dbg !1356
  br label %103, !dbg !1356

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !1356
  store i8* %56, i8** %48, align 8, !dbg !1356, !tbaa !1357
  store i8 10, i8* %49, align 1, !dbg !1356, !tbaa !1364
  br label %103, !dbg !1356

57:                                               ; preds = %17, %98
  %58 = phi i32 [ %101, %98 ], [ %15, %17 ]
  %59 = phi i8 [ %99, %98 ], [ 1, %17 ]
  call void @llvm.dbg.value(metadata i8 %59, metadata !1284, metadata !DIExpression()), !dbg !1298
  %60 = sext i32 %58 to i64, !dbg !1365
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60, !dbg !1365
  %62 = load i8*, i8** %61, align 8, !dbg !1365, !tbaa !1238
  %63 = tail call %struct.passwd* @getpwnam(i8* %62), !dbg !1366
  call void @llvm.dbg.value(metadata %struct.passwd* %63, metadata !1293, metadata !DIExpression()), !dbg !1367
  %64 = icmp eq %struct.passwd* %63, null, !dbg !1368
  br i1 %64, label %65, label %72, !dbg !1370

65:                                               ; preds = %57
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 5) #18, !dbg !1371
  %67 = load i32, i32* @optind, align 4, !dbg !1373, !tbaa !1313
  %68 = sext i32 %67 to i64, !dbg !1374
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !1374
  %70 = load i8*, i8** %69, align 8, !dbg !1374, !tbaa !1238
  %71 = tail call i8* @quote(i8* %70) #18, !dbg !1375
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %66, i8* %71) #18, !dbg !1376
  call void @llvm.dbg.value(metadata i8 0, metadata !1284, metadata !DIExpression()), !dbg !1298
  br label %98, !dbg !1377

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i64 0, i32 2, !dbg !1378
  %74 = load i32, i32* %73, align 8, !dbg !1378, !tbaa !1379
  call void @llvm.dbg.value(metadata i32 %74, metadata !1287, metadata !DIExpression()), !dbg !1298
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %63, i64 0, i32 3, !dbg !1381
  %76 = load i32, i32* %75, align 4, !dbg !1381, !tbaa !1382
  call void @llvm.dbg.value(metadata i32 %76, metadata !1286, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %76, metadata !1285, metadata !DIExpression()), !dbg !1298
  %77 = load i32, i32* @optind, align 4, !dbg !1383, !tbaa !1313
  %78 = sext i32 %77 to i64, !dbg !1383
  %79 = getelementptr inbounds i8*, i8** %1, i64 %78, !dbg !1383
  %80 = load i8*, i8** %79, align 8, !dbg !1383, !tbaa !1238
  %81 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %80) #18, !dbg !1383
  %82 = load i32, i32* @optind, align 4, !dbg !1384, !tbaa !1313
  %83 = sext i32 %82 to i64, !dbg !1386
  %84 = getelementptr inbounds i8*, i8** %1, i64 %83, !dbg !1386
  %85 = load i8*, i8** %84, align 8, !dbg !1386, !tbaa !1238
  %86 = tail call zeroext i1 @print_group_list(i8* %85, i32 %74, i32 %76, i32 %76, i1 zeroext true, i8 signext 32) #18, !dbg !1387
  %87 = select i1 %86, i8 %59, i8 0, !dbg !1388
  call void @llvm.dbg.value(metadata i8 %87, metadata !1284, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 10, metadata !1348, metadata !DIExpression()) #18, !dbg !1389
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1391, !tbaa !1238
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 5, !dbg !1391
  %90 = load i8*, i8** %89, align 8, !dbg !1391, !tbaa !1357
  %91 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 6, !dbg !1391
  %92 = load i8*, i8** %91, align 8, !dbg !1391, !tbaa !1361
  %93 = icmp ult i8* %90, %92, !dbg !1391
  br i1 %93, label %96, label %94, !dbg !1391, !prof !1362, !misexpect !1363

94:                                               ; preds = %72
  %95 = tail call i32 @__overflow(%struct._IO_FILE* %88, i32 10) #18, !dbg !1391
  br label %98, !dbg !1391

96:                                               ; preds = %72
  %97 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1391
  store i8* %97, i8** %89, align 8, !dbg !1391, !tbaa !1357
  store i8 10, i8* %90, align 1, !dbg !1391, !tbaa !1364
  br label %98, !dbg !1391

98:                                               ; preds = %96, %94, %65
  %99 = phi i8 [ 0, %65 ], [ %87, %94 ], [ %87, %96 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %99, metadata !1284, metadata !DIExpression()), !dbg !1298
  %100 = load i32, i32* @optind, align 4, !dbg !1392, !tbaa !1313
  %101 = add nsw i32 %100, 1, !dbg !1392
  store i32 %101, i32* @optind, align 4, !dbg !1392, !tbaa !1313
  %102 = icmp slt i32 %101, %0, !dbg !1317
  br i1 %102, label %57, label %103, !dbg !1318, !llvm.loop !1393

103:                                              ; preds = %98, %17, %55, %53
  %104 = phi i8 [ %46, %53 ], [ %46, %55 ], [ 1, %17 ], [ %99, %98 ], !dbg !1395
  call void @llvm.dbg.value(metadata i8 %104, metadata !1284, metadata !DIExpression()), !dbg !1298
  %105 = and i8 %104, 1, !dbg !1396
  %106 = xor i8 %105, 1, !dbg !1396
  %107 = zext i8 %106 to i32, !dbg !1396
  ret i32 %107, !dbg !1397
}

; Function Attrs: nounwind
declare !dbg !84 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !87 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !90 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !97 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !116 i32 @getuid() local_unnamed_addr #2

declare !dbg !121 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !125 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !126 i32 @getgid() local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !132 %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group_list(i8* %0, i32 %1, i32 %2, i32 %3, i1 zeroext %4, i8 signext %5) local_unnamed_addr #8 !dbg !1398 {
  %7 = alloca i32*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1402, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %1, metadata !1403, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %2, metadata !1404, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %3, metadata !1405, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i1 %4, metadata !1406, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 %5, metadata !1407, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 1, metadata !1408, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata %struct.passwd* null, metadata !1409, metadata !DIExpression()), !dbg !1415
  %8 = icmp ne i8* %0, null, !dbg !1416
  br i1 %8, label %9, label %13, !dbg !1418

9:                                                ; preds = %6
  %10 = tail call %struct.passwd* @getpwuid(i32 %1) #18, !dbg !1419
  call void @llvm.dbg.value(metadata %struct.passwd* %10, metadata !1409, metadata !DIExpression()), !dbg !1415
  %11 = icmp ne %struct.passwd* %10, null, !dbg !1421
  %12 = zext i1 %11 to i8, !dbg !1423
  br label %13, !dbg !1423

13:                                               ; preds = %9, %6
  %14 = phi i8 [ 1, %6 ], [ %12, %9 ], !dbg !1415
  %15 = phi %struct.passwd* [ null, %6 ], [ %10, %9 ], !dbg !1415
  call void @llvm.dbg.value(metadata %struct.passwd* %15, metadata !1409, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8 %14, metadata !1408, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %2, metadata !1424, metadata !DIExpression()) #18, !dbg !1433
  call void @llvm.dbg.value(metadata i1 %4, metadata !1429, metadata !DIExpression()) #18, !dbg !1433
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1430, metadata !DIExpression()) #18, !dbg !1433
  call void @llvm.dbg.value(metadata i8 1, metadata !1431, metadata !DIExpression()) #18, !dbg !1433
  br i1 %4, label %19, label %16, !dbg !1436

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64, !dbg !1437
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1433
  %18 = tail call i8* @umaxtostr(i64 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %25, metadata !1432, metadata !DIExpression()) #18, !dbg !1433
  br label %29, !dbg !1440

19:                                               ; preds = %13
  %20 = tail call %struct.group* @getgrgid(i32 %2) #18, !dbg !1441
  call void @llvm.dbg.value(metadata %struct.group* %20, metadata !1430, metadata !DIExpression()) #18, !dbg !1433
  %21 = icmp eq %struct.group* %20, null, !dbg !1444
  br i1 %21, label %22, label %26, !dbg !1446

22:                                               ; preds = %19
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #18, !dbg !1447
  call void @llvm.dbg.value(metadata i32 %2, metadata !1424, metadata !DIExpression()) #18, !dbg !1433
  %24 = zext i32 %2 to i64, !dbg !1449
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %23, i64 %24) #18, !dbg !1450
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1433
  %25 = tail call i8* @umaxtostr(i64 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %25, metadata !1432, metadata !DIExpression()) #18, !dbg !1433
  br label %29, !dbg !1440

26:                                               ; preds = %19
  call void @llvm.dbg.value(metadata %struct.group* %20, metadata !1430, metadata !DIExpression()) #18, !dbg !1433
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1433
  %27 = getelementptr inbounds %struct.group, %struct.group* %20, i64 0, i32 0, !dbg !1451
  %28 = load i8*, i8** %27, align 8, !dbg !1451, !tbaa !1452
  call void @llvm.dbg.value(metadata i8* %25, metadata !1432, metadata !DIExpression()) #18, !dbg !1433
  br label %29, !dbg !1440

29:                                               ; preds = %26, %16, %22
  %30 = phi i8* [ %28, %26 ], [ %18, %16 ], [ %25, %22 ]
  %31 = phi i8 [ %14, %26 ], [ %14, %16 ], [ 0, %22 ]
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1454, !tbaa !1238
  %33 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %32) #18, !dbg !1454
  call void @llvm.dbg.value(metadata i8 %31, metadata !1408, metadata !DIExpression()), !dbg !1415
  %34 = icmp eq i32 %3, %2, !dbg !1455
  br i1 %34, label %66, label %35, !dbg !1457

35:                                               ; preds = %29
  call void @llvm.dbg.value(metadata i8 %5, metadata !1458, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1461
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1464, !tbaa !1238
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1464
  %38 = load i8*, i8** %37, align 8, !dbg !1464, !tbaa !1357
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1464
  %40 = load i8*, i8** %39, align 8, !dbg !1464, !tbaa !1361
  %41 = icmp ult i8* %38, %40, !dbg !1464
  br i1 %41, label %45, label %42, !dbg !1464, !prof !1362, !misexpect !1363

42:                                               ; preds = %35
  %43 = zext i8 %5 to i32, !dbg !1465
  call void @llvm.dbg.value(metadata i8 %5, metadata !1458, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1461
  %44 = tail call i32 @__overflow(%struct._IO_FILE* %36, i32 %43) #18, !dbg !1464
  br label %47, !dbg !1464

45:                                               ; preds = %35
  %46 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1464
  store i8* %46, i8** %37, align 8, !dbg !1464, !tbaa !1357
  store i8 %5, i8* %38, align 1, !dbg !1464, !tbaa !1364
  br label %47, !dbg !1464

47:                                               ; preds = %42, %45
  call void @llvm.dbg.value(metadata i32 %3, metadata !1424, metadata !DIExpression()) #18, !dbg !1466
  call void @llvm.dbg.value(metadata i1 %4, metadata !1429, metadata !DIExpression()) #18, !dbg !1466
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1430, metadata !DIExpression()) #18, !dbg !1466
  call void @llvm.dbg.value(metadata i8 1, metadata !1431, metadata !DIExpression()) #18, !dbg !1466
  br i1 %4, label %51, label %48, !dbg !1469

48:                                               ; preds = %47
  %49 = zext i32 %3 to i64, !dbg !1470
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1466
  %50 = tail call i8* @umaxtostr(i64 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %57, metadata !1432, metadata !DIExpression()) #18, !dbg !1466
  br label %61, !dbg !1473

51:                                               ; preds = %47
  %52 = tail call %struct.group* @getgrgid(i32 %3) #18, !dbg !1474
  call void @llvm.dbg.value(metadata %struct.group* %52, metadata !1430, metadata !DIExpression()) #18, !dbg !1466
  %53 = icmp eq %struct.group* %52, null, !dbg !1475
  br i1 %53, label %54, label %58, !dbg !1476

54:                                               ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #18, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %3, metadata !1424, metadata !DIExpression()) #18, !dbg !1466
  %56 = zext i32 %3 to i64, !dbg !1478
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55, i64 %56) #18, !dbg !1479
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1466
  %57 = tail call i8* @umaxtostr(i64 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %57, metadata !1432, metadata !DIExpression()) #18, !dbg !1466
  br label %61, !dbg !1473

58:                                               ; preds = %51
  call void @llvm.dbg.value(metadata %struct.group* %52, metadata !1430, metadata !DIExpression()) #18, !dbg !1466
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1466
  %59 = getelementptr inbounds %struct.group, %struct.group* %52, i64 0, i32 0, !dbg !1480
  %60 = load i8*, i8** %59, align 8, !dbg !1480, !tbaa !1452
  call void @llvm.dbg.value(metadata i8* %57, metadata !1432, metadata !DIExpression()) #18, !dbg !1466
  br label %61, !dbg !1473

61:                                               ; preds = %54, %48, %58
  %62 = phi i8* [ %60, %58 ], [ %50, %48 ], [ %57, %54 ]
  %63 = phi i8 [ %31, %58 ], [ %31, %48 ], [ 0, %54 ]
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1481, !tbaa !1238
  %65 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %64) #18, !dbg !1481
  br label %66, !dbg !1482

66:                                               ; preds = %61, %29
  %67 = phi i8 [ %31, %29 ], [ %63, %61 ], !dbg !1415
  call void @llvm.dbg.value(metadata i8 %67, metadata !1408, metadata !DIExpression()), !dbg !1415
  %68 = bitcast i32** %7 to i8*, !dbg !1482
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #18, !dbg !1482
  %69 = icmp eq %struct.passwd* %15, null, !dbg !1483
  br i1 %69, label %73, label %70, !dbg !1483

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.passwd, %struct.passwd* %15, i64 0, i32 3, !dbg !1484
  %72 = load i32, i32* %71, align 4, !dbg !1484, !tbaa !1382
  br label %73, !dbg !1483

73:                                               ; preds = %66, %70
  %74 = phi i32 [ %72, %70 ], [ %3, %66 ], !dbg !1483
  call void @llvm.dbg.value(metadata i32** %7, metadata !1410, metadata !DIExpression(DW_OP_deref)), !dbg !1485
  %75 = call i32 @xgetgroups(i8* %0, i32 %74, i32** nonnull %7) #18, !dbg !1486
  call void @llvm.dbg.value(metadata i32 %75, metadata !1412, metadata !DIExpression()), !dbg !1485
  %76 = icmp slt i32 %75, 0, !dbg !1487
  br i1 %76, label %82, label %77, !dbg !1489

77:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i32 0, metadata !1413, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %67, metadata !1408, metadata !DIExpression()), !dbg !1415
  %78 = icmp eq i32 %75, 0, !dbg !1491
  br i1 %78, label %137, label %79, !dbg !1493

79:                                               ; preds = %77
  %80 = zext i8 %5 to i32, !dbg !1494
  %81 = zext i32 %75 to i64, !dbg !1491
  br label %90, !dbg !1493

82:                                               ; preds = %73
  %83 = tail call i32* @__errno_location() #24, !dbg !1497
  %84 = load i32, i32* %83, align 4, !dbg !1497, !tbaa !1313
  br i1 %8, label %85, label %88, !dbg !1500

85:                                               ; preds = %82
  %86 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0), i32 5) #18, !dbg !1501
  %87 = call i8* @quote(i8* nonnull %0) #18, !dbg !1503
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %84, i8* %86, i8* %87) #18, !dbg !1504
  br label %136, !dbg !1505

88:                                               ; preds = %82
  %89 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.35, i64 0, i64 0), i32 5) #18, !dbg !1506
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %84, i8* %89) #18, !dbg !1508
  br label %136

90:                                               ; preds = %132, %79
  %91 = phi i64 [ 0, %79 ], [ %134, %132 ]
  %92 = phi i8 [ %67, %79 ], [ %133, %132 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !1413, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %92, metadata !1408, metadata !DIExpression()), !dbg !1415
  %93 = load i32*, i32** %7, align 8, !dbg !1509, !tbaa !1238
  call void @llvm.dbg.value(metadata i32* %93, metadata !1410, metadata !DIExpression()), !dbg !1485
  %94 = getelementptr inbounds i32, i32* %93, i64 %91, !dbg !1509
  %95 = load i32, i32* %94, align 4, !dbg !1509, !tbaa !1313
  %96 = icmp eq i32 %95, %2, !dbg !1510
  %97 = icmp eq i32 %95, %3, !dbg !1511
  %98 = or i1 %96, %97, !dbg !1512
  br i1 %98, label %132, label %99, !dbg !1512

99:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i8 %5, metadata !1458, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1513
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1515, !tbaa !1238
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 5, !dbg !1515
  %102 = load i8*, i8** %101, align 8, !dbg !1515, !tbaa !1357
  %103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 6, !dbg !1515
  %104 = load i8*, i8** %103, align 8, !dbg !1515, !tbaa !1361
  %105 = icmp ult i8* %102, %104, !dbg !1515
  br i1 %105, label %108, label %106, !dbg !1515, !prof !1362, !misexpect !1363

106:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %5, metadata !1458, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !1513
  %107 = call i32 @__overflow(%struct._IO_FILE* %100, i32 %80) #18, !dbg !1515
  br label %110, !dbg !1515

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !1515
  store i8* %109, i8** %101, align 8, !dbg !1515, !tbaa !1357
  store i8 %5, i8* %102, align 1, !dbg !1515, !tbaa !1364
  br label %110, !dbg !1515

110:                                              ; preds = %106, %108
  %111 = load i32*, i32** %7, align 8, !dbg !1516, !tbaa !1238
  call void @llvm.dbg.value(metadata i32* %111, metadata !1410, metadata !DIExpression()), !dbg !1485
  %112 = getelementptr inbounds i32, i32* %111, i64 %91, !dbg !1516
  %113 = load i32, i32* %112, align 4, !dbg !1516, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %113, metadata !1424, metadata !DIExpression()) #18, !dbg !1518
  call void @llvm.dbg.value(metadata i1 %4, metadata !1429, metadata !DIExpression()) #18, !dbg !1518
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1430, metadata !DIExpression()) #18, !dbg !1518
  call void @llvm.dbg.value(metadata i8 1, metadata !1431, metadata !DIExpression()) #18, !dbg !1518
  br i1 %4, label %117, label %114, !dbg !1520

114:                                              ; preds = %110
  %115 = zext i32 %113 to i64, !dbg !1521
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1518
  %116 = call i8* @umaxtostr(i64 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1523
  call void @llvm.dbg.value(metadata i8* %123, metadata !1432, metadata !DIExpression()) #18, !dbg !1518
  br label %127, !dbg !1524

117:                                              ; preds = %110
  %118 = call %struct.group* @getgrgid(i32 %113) #18, !dbg !1525
  call void @llvm.dbg.value(metadata %struct.group* %118, metadata !1430, metadata !DIExpression()) #18, !dbg !1518
  %119 = icmp eq %struct.group* %118, null, !dbg !1526
  br i1 %119, label %120, label %124, !dbg !1527

120:                                              ; preds = %117
  %121 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #18, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %113, metadata !1424, metadata !DIExpression()) #18, !dbg !1518
  %122 = zext i32 %113 to i64, !dbg !1529
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %121, i64 %122) #18, !dbg !1530
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1518
  %123 = call i8* @umaxtostr(i64 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1523
  call void @llvm.dbg.value(metadata i8* %123, metadata !1432, metadata !DIExpression()) #18, !dbg !1518
  br label %127, !dbg !1524

124:                                              ; preds = %117
  call void @llvm.dbg.value(metadata %struct.group* %118, metadata !1430, metadata !DIExpression()) #18, !dbg !1518
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()) #18, !dbg !1518
  %125 = getelementptr inbounds %struct.group, %struct.group* %118, i64 0, i32 0, !dbg !1531
  %126 = load i8*, i8** %125, align 8, !dbg !1531, !tbaa !1452
  call void @llvm.dbg.value(metadata i8* %123, metadata !1432, metadata !DIExpression()) #18, !dbg !1518
  br label %127, !dbg !1524

127:                                              ; preds = %120, %114, %124
  %128 = phi i8* [ %126, %124 ], [ %116, %114 ], [ %123, %120 ]
  %129 = phi i8 [ %92, %124 ], [ %92, %114 ], [ 0, %120 ]
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1532, !tbaa !1238
  %131 = call i32 @fputs_unlocked(i8* %128, %struct._IO_FILE* %130) #18, !dbg !1532
  br label %132, !dbg !1533

132:                                              ; preds = %127, %90
  %133 = phi i8 [ %92, %90 ], [ %129, %127 ], !dbg !1415
  call void @llvm.dbg.value(metadata i8 %133, metadata !1408, metadata !DIExpression()), !dbg !1415
  %134 = add nuw nsw i64 %91, 1, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %134, metadata !1413, metadata !DIExpression()), !dbg !1490
  %135 = icmp eq i64 %134, %81, !dbg !1491
  br i1 %135, label %137, label %90, !dbg !1493, !llvm.loop !1534

136:                                              ; preds = %88, %85
  call void @llvm.dbg.value(metadata i8 %138, metadata !1408, metadata !DIExpression()), !dbg !1415
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #18, !dbg !1536
  br label %143

137:                                              ; preds = %132, %77
  %138 = phi i8 [ %67, %77 ], [ %133, %132 ], !dbg !1537
  call void @llvm.dbg.value(metadata i8 %138, metadata !1408, metadata !DIExpression()), !dbg !1415
  %139 = bitcast i32** %7 to i8**, !dbg !1538
  %140 = load i8*, i8** %139, align 8, !dbg !1538, !tbaa !1238
  call void @llvm.dbg.value(metadata i32* undef, metadata !1410, metadata !DIExpression()), !dbg !1485
  call void @free(i8* %140) #18, !dbg !1539
  call void @llvm.dbg.value(metadata i8 %138, metadata !1408, metadata !DIExpression()), !dbg !1415
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #18, !dbg !1536
  %141 = and i8 %138, 1
  %142 = icmp ne i8 %141, 0
  br label %143

143:                                              ; preds = %136, %137
  %144 = phi i1 [ %142, %137 ], [ false, %136 ]
  ret i1 %144, !dbg !1540
}

declare !dbg !169 %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

declare !dbg !194 %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !191 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @print_group(i32 %0, i1 zeroext %1) local_unnamed_addr #8 !dbg !1425 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1424, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i1 %1, metadata !1429, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata %struct.group* null, metadata !1430, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 1, metadata !1431, metadata !DIExpression()), !dbg !1541
  br i1 %1, label %5, label %3, !dbg !1542

3:                                                ; preds = %2
  %4 = zext i32 %0 to i64, !dbg !1543
  br label %14, !dbg !1542

5:                                                ; preds = %2
  %6 = tail call %struct.group* @getgrgid(i32 %0) #18, !dbg !1545
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1430, metadata !DIExpression()), !dbg !1541
  %7 = icmp eq %struct.group* %6, null, !dbg !1546
  br i1 %7, label %8, label %11, !dbg !1547

8:                                                ; preds = %5
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.3, i64 0, i64 0), i32 5) #18, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %0, metadata !1424, metadata !DIExpression()), !dbg !1541
  %10 = zext i32 %0 to i64, !dbg !1549
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %9, i64 %10) #18, !dbg !1550
  call void @llvm.dbg.value(metadata i8 0, metadata !1431, metadata !DIExpression()), !dbg !1541
  br label %14, !dbg !1551

11:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1430, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()), !dbg !1541
  %12 = getelementptr inbounds %struct.group, %struct.group* %6, i64 0, i32 0, !dbg !1552
  %13 = load i8*, i8** %12, align 8, !dbg !1552, !tbaa !1452
  br label %18, !dbg !1553

14:                                               ; preds = %3, %8
  %15 = phi i64 [ %4, %3 ], [ %10, %8 ], !dbg !1543
  %16 = phi i1 [ true, %3 ], [ false, %8 ]
  call void @llvm.dbg.value(metadata %struct.group* %6, metadata !1430, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8 undef, metadata !1431, metadata !DIExpression()), !dbg !1541
  %17 = tail call i8* @umaxtostr(i64 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @gidtostr_ptr.buf, i64 0, i64 0)) #18, !dbg !1554
  br label %18, !dbg !1553

18:                                               ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %16, %14 ]
  %20 = phi i8* [ %13, %11 ], [ %17, %14 ], !dbg !1553
  call void @llvm.dbg.value(metadata i8* %20, metadata !1432, metadata !DIExpression()), !dbg !1541
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1555, !tbaa !1238
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21), !dbg !1555
  ret i1 %19, !dbg !1556
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1557 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1559, metadata !DIExpression()), !dbg !1560
  store i8* %0, i8** @file_name, align 8, !dbg !1561, !tbaa !1238
  ret void, !dbg !1562
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1563 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1569, !tbaa !1570
  ret void, !dbg !1572
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1573 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1578, !tbaa !1238
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1579
  %3 = icmp eq i32 %2, 0, !dbg !1580
  br i1 %3, label %22, label %4, !dbg !1581

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1582, !tbaa !1570, !range !1583
  %6 = icmp eq i8 %5, 0, !dbg !1582
  br i1 %6, label %11, label %7, !dbg !1584

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1585
  %9 = load i32, i32* %8, align 4, !dbg !1585, !tbaa !1313
  %10 = icmp eq i32 %9, 32, !dbg !1586
  br i1 %10, label %22, label %11, !dbg !1587

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 5) #18, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %12, metadata !1575, metadata !DIExpression()), !dbg !1589
  %13 = load i8*, i8** @file_name, align 8, !dbg !1590, !tbaa !1238
  %14 = icmp eq i8* %13, null, !dbg !1590
  %15 = tail call i32* @__errno_location() #24, !dbg !1592
  %16 = load i32, i32* %15, align 4, !dbg !1592, !tbaa !1313
  br i1 %14, label %19, label %17, !dbg !1593

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1594
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.42, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1595
  br label %20, !dbg !1595

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.43, i64 0, i64 0), i8* %12) #18, !dbg !1596
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1597, !tbaa !1313
  tail call void @_exit(i32 %21) #22, !dbg !1598
  unreachable, !dbg !1598

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1599, !tbaa !1238
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1601
  %25 = icmp eq i32 %24, 0, !dbg !1602
  br i1 %25, label %28, label %26, !dbg !1603

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1604, !tbaa !1313
  tail call void @_exit(i32 %27) #22, !dbg !1605
  unreachable, !dbg !1605

28:                                               ; preds = %22
  ret void, !dbg !1606
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #10 !dbg !1607 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1612, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8* %1, metadata !1613, metadata !DIExpression()), !dbg !1615
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1616
  call void @llvm.dbg.value(metadata i8* %3, metadata !1614, metadata !DIExpression()), !dbg !1615
  store i8 0, i8* %3, align 1, !dbg !1617, !tbaa !1364
  br label %4, !dbg !1618

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1615
  call void @llvm.dbg.value(metadata i8* %6, metadata !1614, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i64 %5, metadata !1612, metadata !DIExpression()), !dbg !1615
  %7 = urem i64 %5, 10, !dbg !1619
  %8 = trunc i64 %7 to i8, !dbg !1622
  %9 = or i8 %8, 48, !dbg !1622
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1623
  call void @llvm.dbg.value(metadata i8* %10, metadata !1614, metadata !DIExpression()), !dbg !1615
  store i8 %9, i8* %10, align 1, !dbg !1624, !tbaa !1364
  %11 = udiv i64 %5, 10, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %11, metadata !1612, metadata !DIExpression()), !dbg !1615
  %12 = icmp ugt i64 %5, 9, !dbg !1626
  br i1 %12, label %4, label %13, !dbg !1627, !llvm.loop !1628

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1614, metadata !DIExpression()), !dbg !1615
  ret i8* %10, !dbg !1631
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1632 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1634, metadata !DIExpression()), !dbg !1637
  %2 = icmp eq i8* %0, null, !dbg !1638
  br i1 %2, label %3, label %6, !dbg !1640

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1641, !tbaa !1238
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.52, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1643
  tail call void @abort() #22, !dbg !1644
  unreachable, !dbg !1644

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1645
  call void @llvm.dbg.value(metadata i8* %7, metadata !1635, metadata !DIExpression()), !dbg !1637
  %8 = icmp eq i8* %7, null, !dbg !1646
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1647
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1647
  call void @llvm.dbg.value(metadata i8* %10, metadata !1636, metadata !DIExpression()), !dbg !1637
  %11 = ptrtoint i8* %10 to i64, !dbg !1648
  %12 = ptrtoint i8* %0 to i64, !dbg !1648
  %13 = sub i64 %11, %12, !dbg !1648
  %14 = icmp sgt i64 %13, 6, !dbg !1650
  br i1 %14, label %15, label %24, !dbg !1651

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1652
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.53, i64 0, i64 0), i64 7) #21, !dbg !1653
  %18 = icmp eq i32 %17, 0, !dbg !1654
  br i1 %18, label %19, label %24, !dbg !1655

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1634, metadata !DIExpression()), !dbg !1637
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.54, i64 0, i64 0), i64 3) #21, !dbg !1656
  %21 = icmp eq i32 %20, 0, !dbg !1659
  br i1 %21, label %22, label %24, !dbg !1660

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1661
  call void @llvm.dbg.value(metadata i8* %23, metadata !1634, metadata !DIExpression()), !dbg !1637
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1663, !tbaa !1238
  br label %24, !dbg !1664

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1634, metadata !DIExpression()), !dbg !1637
  store i8* %25, i8** @program_name, align 8, !dbg !1665, !tbaa !1238
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1666, !tbaa !1238
  ret void, !dbg !1667
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1668 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1673, metadata !DIExpression()), !dbg !1676
  %2 = tail call i32* @__errno_location() #24, !dbg !1677
  %3 = load i32, i32* %2, align 4, !dbg !1677, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %3, metadata !1674, metadata !DIExpression()), !dbg !1676
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1678
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1678
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1678
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1679
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1679
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1675, metadata !DIExpression()), !dbg !1676
  store i32 %3, i32* %2, align 4, !dbg !1680, !tbaa !1313
  ret %struct.quoting_options* %8, !dbg !1681
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1682 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1686, metadata !DIExpression()), !dbg !1687
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1688
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1688
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1689
  %5 = load i32, i32* %4, align 8, !dbg !1689, !tbaa !1690
  ret i32 %5, !dbg !1692
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1693 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 %1, metadata !1698, metadata !DIExpression()), !dbg !1699
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1700
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1700
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1701
  store i32 %1, i32* %5, align 8, !dbg !1702, !tbaa !1690
  ret void, !dbg !1703
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1704 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1708, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 %1, metadata !1709, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 %2, metadata !1710, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 %1, metadata !1711, metadata !DIExpression()), !dbg !1715
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1716
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1716
  %6 = lshr i8 %1, 5, !dbg !1717
  %7 = zext i8 %6 to i64, !dbg !1717
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1718
  call void @llvm.dbg.value(metadata i32* %8, metadata !1712, metadata !DIExpression()), !dbg !1715
  %9 = and i8 %1, 31, !dbg !1719
  %10 = zext i8 %9 to i32, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %10, metadata !1713, metadata !DIExpression()), !dbg !1715
  %11 = load i32, i32* %8, align 4, !dbg !1720, !tbaa !1313
  %12 = lshr i32 %11, %10, !dbg !1721
  %13 = and i32 %12, 1, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %13, metadata !1714, metadata !DIExpression()), !dbg !1715
  %14 = and i32 %2, 1, !dbg !1723
  %15 = xor i32 %13, %14, !dbg !1724
  %16 = shl i32 %15, %10, !dbg !1725
  %17 = xor i32 %16, %11, !dbg !1726
  store i32 %17, i32* %8, align 4, !dbg !1726, !tbaa !1313
  ret i32 %13, !dbg !1727
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1728 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1732, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i32 %1, metadata !1733, metadata !DIExpression()), !dbg !1735
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1736
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1732, metadata !DIExpression()), !dbg !1735
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1739
  %6 = load i32, i32* %5, align 4, !dbg !1739, !tbaa !1740
  call void @llvm.dbg.value(metadata i32 %6, metadata !1734, metadata !DIExpression()), !dbg !1735
  store i32 %1, i32* %5, align 4, !dbg !1741, !tbaa !1740
  ret i32 %6, !dbg !1742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1743 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1747, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8* %1, metadata !1748, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8* %2, metadata !1749, metadata !DIExpression()), !dbg !1750
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1751
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1753
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1747, metadata !DIExpression()), !dbg !1750
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1754
  store i32 10, i32* %6, align 8, !dbg !1755, !tbaa !1690
  %7 = icmp ne i8* %1, null, !dbg !1756
  %8 = icmp ne i8* %2, null, !dbg !1758
  %9 = and i1 %7, %8, !dbg !1759
  br i1 %9, label %11, label %10, !dbg !1759

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1760
  unreachable, !dbg !1760

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1761
  store i8* %1, i8** %12, align 8, !dbg !1762, !tbaa !1763
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1764
  store i8* %2, i8** %13, align 8, !dbg !1765, !tbaa !1766
  ret void, !dbg !1767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1768 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1772, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %1, metadata !1773, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8* %2, metadata !1774, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %3, metadata !1775, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1776, metadata !DIExpression()), !dbg !1780
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1781
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1781
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1777, metadata !DIExpression()), !dbg !1780
  %8 = tail call i32* @__errno_location() #24, !dbg !1782
  %9 = load i32, i32* %8, align 4, !dbg !1782, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %9, metadata !1778, metadata !DIExpression()), !dbg !1780
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1783
  %11 = load i32, i32* %10, align 8, !dbg !1783, !tbaa !1690
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1784
  %13 = load i32, i32* %12, align 4, !dbg !1784, !tbaa !1740
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1785
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1786
  %16 = load i8*, i8** %15, align 8, !dbg !1786, !tbaa !1763
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1787
  %18 = load i8*, i8** %17, align 8, !dbg !1787, !tbaa !1766
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1788
  call void @llvm.dbg.value(metadata i64 %19, metadata !1779, metadata !DIExpression()), !dbg !1780
  store i32 %9, i32* %8, align 4, !dbg !1789, !tbaa !1313
  ret i64 %19, !dbg !1790
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1791 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1797, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %1, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %2, metadata !1799, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %3, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %4, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %5, metadata !1802, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32* %6, metadata !1803, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %7, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %8, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* null, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1810, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1855
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1856
  %14 = icmp eq i64 %13, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i1 %14, metadata !1812, metadata !DIExpression()), !dbg !1855
  %15 = lshr i32 %5, 1, !dbg !1858
  %16 = trunc i32 %15 to i8, !dbg !1858
  %17 = and i8 %16, 1, !dbg !1858
  call void @llvm.dbg.value(metadata i8 %17, metadata !1813, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1816, metadata !DIExpression()), !dbg !1855
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1859
  %19 = and i32 %5, 4, !dbg !1861
  %20 = icmp eq i32 %19, 0, !dbg !1861
  %21 = and i32 %5, 1, !dbg !1864
  %22 = icmp eq i32 %21, 0, !dbg !1864
  %23 = bitcast i64* %10 to i8*, !dbg !1867
  %24 = bitcast i32* %12 to i8*, !dbg !1868
  %25 = icmp eq i32* %6, null, !dbg !1869
  br label %26, !dbg !1871

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1872
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1873
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1874
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1875
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1855
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1876
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1877
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1878
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %38, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %37, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %36, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %35, metadata !1813, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %34, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %33, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %32, metadata !1810, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %31, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %30, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %29, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %28, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %27, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1849), !dbg !1879
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
  ], !dbg !1880

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %35, metadata !1813, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 5, metadata !1801, metadata !DIExpression()), !dbg !1855
  br label %92, !dbg !1881

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1813, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 5, metadata !1801, metadata !DIExpression()), !dbg !1855
  %42 = and i8 %35, 1, !dbg !1883
  %43 = icmp eq i8 %42, 0, !dbg !1883
  br i1 %43, label %44, label %92, !dbg !1881

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1885
  br i1 %45, label %92, label %46, !dbg !1888

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1885, !tbaa !1364
  br label %92, !dbg !1885

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.65, i64 0, i64 0), i32 %27), !dbg !1889
  call void @llvm.dbg.value(metadata i8* %48, metadata !1804, metadata !DIExpression()), !dbg !1855
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), i32 %27), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %49, metadata !1805, metadata !DIExpression()), !dbg !1855
  br label %50, !dbg !1894

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %51, metadata !1804, metadata !DIExpression()), !dbg !1855
  %53 = and i8 %35, 1, !dbg !1895
  %54 = icmp eq i8 %53, 0, !dbg !1895
  br i1 %54, label %55, label %70, !dbg !1897

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1807, metadata !DIExpression()), !dbg !1855
  %56 = load i8, i8* %51, align 1, !dbg !1898, !tbaa !1364
  %57 = icmp eq i8 %56, 0, !dbg !1901
  br i1 %57, label %70, label %58, !dbg !1901

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %61, metadata !1807, metadata !DIExpression()), !dbg !1855
  %62 = icmp ult i64 %61, %39, !dbg !1902
  br i1 %62, label %63, label %65, !dbg !1905

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1902
  store i8 %59, i8* %64, align 1, !dbg !1902, !tbaa !1364
  br label %65, !dbg !1902

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %66, metadata !1807, metadata !DIExpression()), !dbg !1855
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %67, metadata !1809, metadata !DIExpression()), !dbg !1855
  %68 = load i8, i8* %67, align 1, !dbg !1898, !tbaa !1364
  %69 = icmp eq i8 %68, 0, !dbg !1901
  br i1 %69, label %70, label %58, !dbg !1901, !llvm.loop !1907

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1909
  call void @llvm.dbg.value(metadata i64 %71, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %52, metadata !1809, metadata !DIExpression()), !dbg !1855
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %72, metadata !1810, metadata !DIExpression()), !dbg !1855
  br label %92, !dbg !1911

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !1855
  br label %74, !dbg !1912

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8 %75, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1855
  br label %76, !dbg !1913

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1875
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8 %78, metadata !1813, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %77, metadata !1811, metadata !DIExpression()), !dbg !1855
  %79 = and i8 %78, 1, !dbg !1914
  %80 = icmp eq i8 %79, 0, !dbg !1914
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1916
  br label %82, !dbg !1916

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1855
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1858
  call void @llvm.dbg.value(metadata i8 %84, metadata !1813, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %83, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  %85 = and i8 %84, 1, !dbg !1917
  %86 = icmp eq i8 %85, 0, !dbg !1917
  br i1 %86, label %87, label %92, !dbg !1919

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1920
  br i1 %88, label %92, label %89, !dbg !1923

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1920, !tbaa !1364
  br label %92, !dbg !1920

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1855
  br label %92, !dbg !1924

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1925
  unreachable, !dbg !1925

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1909
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), %40 ], !dbg !1855
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1855
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1855
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %98, metadata !1810, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %96, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %93, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !1806, metadata !DIExpression()), !dbg !1855
  %101 = and i8 %99, 1, !dbg !1926
  %102 = icmp ne i8 %101, 0, !dbg !1926
  %103 = icmp ne i32 %93, 2, !dbg !1926
  %104 = and i1 %103, %102, !dbg !1926
  %105 = icmp ne i64 %98, 0, !dbg !1926
  %106 = and i1 %105, %104, !dbg !1926
  %107 = icmp ugt i64 %98, 1, !dbg !1926
  %108 = and i8 %100, 1, !dbg !1928
  %109 = icmp eq i8 %108, 0, !dbg !1928
  %110 = icmp eq i32 %93, 2, !dbg !1931
  %111 = or i1 %103, %109, !dbg !1933
  %112 = icmp ne i8 %108, 0, !dbg !1935
  %113 = and i1 %110, %112, !dbg !1935
  %114 = xor i1 %102, true, !dbg !1936
  %115 = xor i1 %104, true, !dbg !1869
  %116 = and i1 %109, %115, !dbg !1869
  %117 = or i1 %25, %116, !dbg !1869
  %118 = and i8 %99, %100, !dbg !1937
  %119 = and i8 %118, 1, !dbg !1937
  %120 = icmp ne i8 %119, 0, !dbg !1937
  %121 = and i1 %120, %105, !dbg !1937
  br label %122, !dbg !1939

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1940
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1909
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1872
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1876
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1877
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1878
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %126, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %123, metadata !1806, metadata !DIExpression()), !dbg !1855
  %131 = icmp eq i64 %126, -1, !dbg !1941
  br i1 %131, label %132, label %136, !dbg !1942

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1943
  %134 = load i8, i8* %133, align 1, !dbg !1943, !tbaa !1364
  %135 = icmp eq i8 %134, 0, !dbg !1944
  br i1 %135, label %581, label %138, !dbg !1945

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1946
  br i1 %137, label %581, label %138, !dbg !1945

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, metadata !1823, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1947
  br i1 %106, label %139, label %154, !dbg !1948

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1949
  %141 = and i1 %107, %131, !dbg !1950
  br i1 %141, label %142, label %144, !dbg !1950

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1951
  call void @llvm.dbg.value(metadata i64 %143, metadata !1800, metadata !DIExpression()), !dbg !1855
  br label %144, !dbg !1952

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1800, metadata !DIExpression()), !dbg !1855
  %146 = icmp ugt i64 %140, %145, !dbg !1953
  br i1 %146, label %154, label %147, !dbg !1954

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1955
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1956
  %150 = icmp ne i32 %149, 0, !dbg !1957
  %151 = or i1 %150, %109, !dbg !1958
  %152 = xor i1 %150, true, !dbg !1958
  %153 = zext i1 %152 to i8, !dbg !1958
  br i1 %151, label %154, label %639, !dbg !1958

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1947
  call void @llvm.dbg.value(metadata i8 %156, metadata !1822, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %155, metadata !1800, metadata !DIExpression()), !dbg !1855
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1959
  %158 = load i8, i8* %157, align 1, !dbg !1959, !tbaa !1364
  call void @llvm.dbg.value(metadata i8 %158, metadata !1817, metadata !DIExpression()), !dbg !1947
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
  ], !dbg !1960

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1961

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1962

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !1947
  %162 = and i8 %127, 1, !dbg !1965
  %163 = icmp eq i8 %162, 0, !dbg !1965
  %164 = and i1 %110, %163, !dbg !1965
  br i1 %164, label %165, label %181, !dbg !1965

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1967
  br i1 %166, label %167, label %169, !dbg !1971

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1967
  store i8 39, i8* %168, align 1, !dbg !1967, !tbaa !1364
  br label %169, !dbg !1967

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %170, metadata !1807, metadata !DIExpression()), !dbg !1855
  %171 = icmp ult i64 %170, %130, !dbg !1972
  br i1 %171, label %172, label %174, !dbg !1975

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1972
  store i8 36, i8* %173, align 1, !dbg !1972, !tbaa !1364
  br label %174, !dbg !1972

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %175, metadata !1807, metadata !DIExpression()), !dbg !1855
  %176 = icmp ult i64 %175, %130, !dbg !1976
  br i1 %176, label %177, label %179, !dbg !1979

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1976
  store i8 39, i8* %178, align 1, !dbg !1976, !tbaa !1364
  br label %179, !dbg !1976

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %180, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1814, metadata !DIExpression()), !dbg !1855
  br label %181, !dbg !1980

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1855
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8 %183, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %182, metadata !1807, metadata !DIExpression()), !dbg !1855
  %184 = icmp ult i64 %182, %130, !dbg !1981
  br i1 %184, label %185, label %187, !dbg !1984

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1981
  store i8 92, i8* %186, align 1, !dbg !1981, !tbaa !1364
  br label %187, !dbg !1981

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %188, metadata !1807, metadata !DIExpression()), !dbg !1855
  br i1 %103, label %189, label %463, !dbg !1985

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1987
  %191 = icmp ult i64 %190, %155, !dbg !1988
  br i1 %191, label %192, label %463, !dbg !1989

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1990
  %194 = load i8, i8* %193, align 1, !dbg !1990, !tbaa !1364
  %195 = add i8 %194, -48, !dbg !1991
  %196 = icmp ult i8 %195, 10, !dbg !1991
  br i1 %196, label %197, label %463, !dbg !1991

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1992
  br i1 %198, label %199, label %201, !dbg !1996

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1992
  store i8 48, i8* %200, align 1, !dbg !1992, !tbaa !1364
  br label %201, !dbg !1992

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %202, metadata !1807, metadata !DIExpression()), !dbg !1855
  %203 = icmp ult i64 %202, %130, !dbg !1997
  br i1 %203, label %204, label %206, !dbg !2000

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1997
  store i8 48, i8* %205, align 1, !dbg !1997, !tbaa !1364
  br label %206, !dbg !1997

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %207, metadata !1807, metadata !DIExpression()), !dbg !1855
  br label %463, !dbg !2001

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2002

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2003

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2004

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2005

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2006
  %214 = icmp ult i64 %213, %155, !dbg !2007
  br i1 %214, label %215, label %463, !dbg !2008

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2009
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2010
  %218 = load i8, i8* %217, align 1, !dbg !2010, !tbaa !1364
  %219 = icmp eq i8 %218, 63, !dbg !2011
  br i1 %219, label %220, label %463, !dbg !2012

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2013
  %222 = load i8, i8* %221, align 1, !dbg !2013, !tbaa !1364
  %223 = sext i8 %222 to i32, !dbg !2013
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
  ], !dbg !2014

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2015

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1817, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %213, metadata !1806, metadata !DIExpression()), !dbg !1855
  %226 = icmp ult i64 %124, %130, !dbg !2017
  br i1 %226, label %227, label %229, !dbg !2020

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2017
  store i8 63, i8* %228, align 1, !dbg !2017, !tbaa !1364
  br label %229, !dbg !2017

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %230, metadata !1807, metadata !DIExpression()), !dbg !1855
  %231 = icmp ult i64 %230, %130, !dbg !2021
  br i1 %231, label %232, label %234, !dbg !2024

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2021
  store i8 34, i8* %233, align 1, !dbg !2021, !tbaa !1364
  br label %234, !dbg !2021

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %235, metadata !1807, metadata !DIExpression()), !dbg !1855
  %236 = icmp ult i64 %235, %130, !dbg !2025
  br i1 %236, label %237, label %239, !dbg !2028

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2025
  store i8 34, i8* %238, align 1, !dbg !2025, !tbaa !1364
  br label %239, !dbg !2025

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %240, metadata !1807, metadata !DIExpression()), !dbg !1855
  %241 = icmp ult i64 %240, %130, !dbg !2029
  br i1 %241, label %242, label %244, !dbg !2032

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2029
  store i8 63, i8* %243, align 1, !dbg !2029, !tbaa !1364
  br label %244, !dbg !2029

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %245, metadata !1807, metadata !DIExpression()), !dbg !1855
  br label %463, !dbg !2033

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1821, metadata !DIExpression()), !dbg !1947
  br label %256, !dbg !2034

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1821, metadata !DIExpression()), !dbg !1947
  br label %256, !dbg !2035

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1821, metadata !DIExpression()), !dbg !1947
  br label %254, !dbg !2036

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1821, metadata !DIExpression()), !dbg !1947
  br label %254, !dbg !2037

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1821, metadata !DIExpression()), !dbg !1947
  br label %256, !dbg !2038

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1821, metadata !DIExpression()), !dbg !1947
  br i1 %110, label %252, label %253, !dbg !2039

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2040

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2043

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2044
  call void @llvm.dbg.value(metadata i8 %255, metadata !1821, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.label(metadata !1850), !dbg !2045
  br i1 %111, label %256, label %625, !dbg !2046

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2044
  call void @llvm.dbg.value(metadata i8 %257, metadata !1821, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.label(metadata !1851), !dbg !2048
  br i1 %102, label %488, label %463, !dbg !2049

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2050

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2051, !tbaa !1364
  %261 = icmp eq i8 %260, 0, !dbg !2052
  br i1 %261, label %262, label %463, !dbg !2053

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2054
  br i1 %263, label %264, label %463, !dbg !2056

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1824, metadata !DIExpression()), !dbg !1947
  br label %265, !dbg !2057

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1947
  call void @llvm.dbg.value(metadata i8 %266, metadata !1824, metadata !DIExpression()), !dbg !1947
  br i1 %111, label %463, label %625, !dbg !2058

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1824, metadata !DIExpression()), !dbg !1947
  br i1 %110, label %268, label %463, !dbg !2059

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2060

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2062
  %271 = icmp ne i64 %125, 0, !dbg !2064
  %272 = or i1 %271, %270, !dbg !2065
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2065
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %274, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %273, metadata !1808, metadata !DIExpression()), !dbg !1855
  %275 = icmp ult i64 %124, %274, !dbg !2066
  br i1 %275, label %276, label %278, !dbg !2069

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2066
  store i8 39, i8* %277, align 1, !dbg !2066, !tbaa !1364
  br label %278, !dbg !2066

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %279, metadata !1807, metadata !DIExpression()), !dbg !1855
  %280 = icmp ult i64 %279, %274, !dbg !2070
  br i1 %280, label %281, label %283, !dbg !2073

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2070
  store i8 92, i8* %282, align 1, !dbg !2070, !tbaa !1364
  br label %283, !dbg !2070

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %284, metadata !1807, metadata !DIExpression()), !dbg !1855
  %285 = icmp ult i64 %284, %274, !dbg !2074
  br i1 %285, label %286, label %288, !dbg !2077

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2074
  store i8 39, i8* %287, align 1, !dbg !2074, !tbaa !1364
  br label %288, !dbg !2074

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %289, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1855
  br label %463, !dbg !2078

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2079

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1825, metadata !DIExpression()), !dbg !2080
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2081
  %293 = load i16*, i16** %292, align 8, !dbg !2081, !tbaa !1238
  %294 = zext i8 %158 to i64, !dbg !2081
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2081
  %296 = load i16, i16* %295, align 2, !dbg !2081, !tbaa !2083
  %297 = lshr i16 %296, 14, !dbg !2084
  %298 = trunc i16 %297 to i8, !dbg !2084
  %299 = and i8 %298, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i8 %299, metadata !1828, metadata !DIExpression()), !dbg !2080
  br label %355, !dbg !2085

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2086
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1829, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8* %23, metadata !2088, metadata !DIExpression()) #18, !dbg !2096
  call void @llvm.dbg.value(metadata i32 0, metadata !2094, metadata !DIExpression()) #18, !dbg !2096
  call void @llvm.dbg.value(metadata i64 8, metadata !2095, metadata !DIExpression()) #18, !dbg !2096
  store i64 0, i64* %10, align 8, !dbg !2098
  call void @llvm.dbg.value(metadata i64 0, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 1, metadata !1828, metadata !DIExpression()), !dbg !2080
  %301 = icmp eq i64 %155, -1, !dbg !2099
  br i1 %301, label %302, label %304, !dbg !2101

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %303, metadata !1800, metadata !DIExpression()), !dbg !1855
  br label %304, !dbg !2103

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1947
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  br label %306, !dbg !2104

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2105
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2106
  call void @llvm.dbg.value(metadata i8 %308, metadata !1828, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2107
  %309 = add i64 %307, %123, !dbg !2108
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2109
  %311 = sub i64 %305, %309, !dbg !2110
  call void @llvm.dbg.value(metadata i32* %12, metadata !1835, metadata !DIExpression(DW_OP_deref)), !dbg !1868
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %312, metadata !1838, metadata !DIExpression()), !dbg !1868
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2112

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  %314 = icmp ugt i64 %305, %309, !dbg !2113
  br i1 %314, label %315, label %340, !dbg !2115

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2116
  br label %317, !dbg !2116

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1825, metadata !DIExpression()), !dbg !2080
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2117
  %321 = load i8, i8* %320, align 1, !dbg !2117, !tbaa !1364
  %322 = icmp eq i8 %321, 0, !dbg !2115
  br i1 %322, label %340, label %323, !dbg !2116

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %324, metadata !1825, metadata !DIExpression()), !dbg !2080
  %325 = add i64 %324, %123, !dbg !2119
  %326 = icmp ult i64 %325, %305, !dbg !2113
  br i1 %326, label %317, label %340, !dbg !2115, !llvm.loop !2120

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2121
  %329 = and i1 %113, %328, !dbg !2124
  call void @llvm.dbg.value(metadata i64 1, metadata !1839, metadata !DIExpression()), !dbg !2125
  br i1 %329, label %330, label %343, !dbg !2124

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1839, metadata !DIExpression()), !dbg !2125
  %332 = add i64 %331, %309, !dbg !2126
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2127
  %334 = load i8, i8* %333, align 1, !dbg !2127, !tbaa !1364
  %335 = sext i8 %334 to i32, !dbg !2127
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2128

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %337, metadata !1839, metadata !DIExpression()), !dbg !2125
  %338 = icmp eq i64 %337, %312, !dbg !2121
  br i1 %338, label %343, label %330, !dbg !2130, !llvm.loop !2131

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %308, metadata !1828, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %307, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %308, metadata !1828, metadata !DIExpression()), !dbg !2080
  br label %340, !dbg !2133

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2133
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2134, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %344, metadata !1835, metadata !DIExpression()), !dbg !1868
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2136
  %346 = icmp eq i32 %345, 0, !dbg !2136
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2137
  call void @llvm.dbg.value(metadata i8 %347, metadata !1828, metadata !DIExpression()), !dbg !2080
  %348 = add i64 %312, %307, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %348, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 %347, metadata !1828, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %348, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2133
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2139
  %350 = icmp eq i32 %349, 0, !dbg !2140
  br i1 %350, label %306, label %351, !dbg !2141, !llvm.loop !2142

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2144
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 2, metadata !1801, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %99, metadata !1811, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %305, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2144
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1947
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2145
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2145
  call void @llvm.dbg.value(metadata i8 %358, metadata !1828, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %357, metadata !1825, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i64 %356, metadata !1800, metadata !DIExpression()), !dbg !1855
  %359 = and i8 %358, 1, !dbg !2146
  %360 = icmp ne i8 %359, 0, !dbg !2146
  call void @llvm.dbg.value(metadata i8 %359, metadata !1824, metadata !DIExpression()), !dbg !1947
  %361 = icmp ult i64 %357, 2, !dbg !2147
  %362 = or i1 %360, %114, !dbg !2148
  %363 = and i1 %361, %362, !dbg !2149
  br i1 %363, label %463, label %364, !dbg !2149

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %365, metadata !1846, metadata !DIExpression()), !dbg !2151
  br label %366, !dbg !2152

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1940
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1855
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1876
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1947
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1947
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2153
  call void @llvm.dbg.value(metadata i8 %372, metadata !1823, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %371, metadata !1822, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %370, metadata !1817, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %369, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %368, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %367, metadata !1806, metadata !DIExpression()), !dbg !1855
  br i1 %362, label %419, label %373, !dbg !2154

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2159

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !1947
  %375 = and i8 %369, 1, !dbg !2162
  %376 = icmp eq i8 %375, 0, !dbg !2162
  %377 = and i1 %110, %376, !dbg !2162
  br i1 %377, label %378, label %394, !dbg !2162

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2164
  br i1 %379, label %380, label %382, !dbg !2168

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2164
  store i8 39, i8* %381, align 1, !dbg !2164, !tbaa !1364
  br label %382, !dbg !2164

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %383, metadata !1807, metadata !DIExpression()), !dbg !1855
  %384 = icmp ult i64 %383, %130, !dbg !2169
  br i1 %384, label %385, label %387, !dbg !2172

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2169
  store i8 36, i8* %386, align 1, !dbg !2169, !tbaa !1364
  br label %387, !dbg !2169

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %388, metadata !1807, metadata !DIExpression()), !dbg !1855
  %389 = icmp ult i64 %388, %130, !dbg !2173
  br i1 %389, label %390, label %392, !dbg !2176

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2173
  store i8 39, i8* %391, align 1, !dbg !2173, !tbaa !1364
  br label %392, !dbg !2173

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2176
  call void @llvm.dbg.value(metadata i64 %393, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1814, metadata !DIExpression()), !dbg !1855
  br label %394, !dbg !2177

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1855
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8 %396, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %395, metadata !1807, metadata !DIExpression()), !dbg !1855
  %397 = icmp ult i64 %395, %130, !dbg !2178
  br i1 %397, label %398, label %400, !dbg !2181

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2178
  store i8 92, i8* %399, align 1, !dbg !2178, !tbaa !1364
  br label %400, !dbg !2178

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %401, metadata !1807, metadata !DIExpression()), !dbg !1855
  %402 = icmp ult i64 %401, %130, !dbg !2182
  br i1 %402, label %403, label %407, !dbg !2185

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2182
  %405 = or i8 %404, 48, !dbg !2182
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2182
  store i8 %405, i8* %406, align 1, !dbg !2182, !tbaa !1364
  br label %407, !dbg !2182

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %408, metadata !1807, metadata !DIExpression()), !dbg !1855
  %409 = icmp ult i64 %408, %130, !dbg !2186
  br i1 %409, label %410, label %415, !dbg !2189

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2186
  %412 = and i8 %411, 7, !dbg !2186
  %413 = or i8 %412, 48, !dbg !2186
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2186
  store i8 %413, i8* %414, align 1, !dbg !2186, !tbaa !1364
  br label %415, !dbg !2186

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %416, metadata !1807, metadata !DIExpression()), !dbg !1855
  %417 = and i8 %370, 7, !dbg !2190
  %418 = or i8 %417, 48, !dbg !2191
  call void @llvm.dbg.value(metadata i8 %418, metadata !1817, metadata !DIExpression()), !dbg !1947
  br label %428, !dbg !2192

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2193
  %421 = icmp eq i8 %420, 0, !dbg !2193
  br i1 %421, label %428, label %422, !dbg !2195

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2196
  br i1 %423, label %424, label %426, !dbg !2200

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2196
  store i8 92, i8* %425, align 1, !dbg !2196, !tbaa !1364
  br label %426, !dbg !2196

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %427, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1947
  br label %428, !dbg !2201

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1855
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1876
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1947
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1947
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1947
  call void @llvm.dbg.value(metadata i8 %433, metadata !1823, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %432, metadata !1822, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %431, metadata !1817, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %430, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %429, metadata !1807, metadata !DIExpression()), !dbg !1855
  %434 = add i64 %367, 1, !dbg !2202
  %435 = icmp ugt i64 %365, %434, !dbg !2204
  br i1 %435, label %436, label %526, !dbg !2205

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2206
  %438 = icmp ne i8 %437, 0, !dbg !2206
  %439 = and i8 %433, 1, !dbg !2206
  %440 = icmp eq i8 %439, 0, !dbg !2206
  %441 = and i1 %438, %440, !dbg !2206
  br i1 %441, label %442, label %453, !dbg !2206

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2209
  br i1 %443, label %444, label %446, !dbg !2213

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2209
  store i8 39, i8* %445, align 1, !dbg !2209, !tbaa !1364
  br label %446, !dbg !2209

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %447, metadata !1807, metadata !DIExpression()), !dbg !1855
  %448 = icmp ult i64 %447, %130, !dbg !2214
  br i1 %448, label %449, label %451, !dbg !2217

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2214
  store i8 39, i8* %450, align 1, !dbg !2214, !tbaa !1364
  br label %451, !dbg !2214

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %452, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1855
  br label %453, !dbg !2218

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2219
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8 %455, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %454, metadata !1807, metadata !DIExpression()), !dbg !1855
  %456 = icmp ult i64 %454, %130, !dbg !2220
  br i1 %456, label %457, label %459, !dbg !2223

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2220
  store i8 %431, i8* %458, align 1, !dbg !2220, !tbaa !1364
  br label %459, !dbg !2220

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %460, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %434, metadata !1806, metadata !DIExpression()), !dbg !1855
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2224
  %462 = load i8, i8* %461, align 1, !dbg !2224, !tbaa !1364
  call void @llvm.dbg.value(metadata i8 %462, metadata !1817, metadata !DIExpression()), !dbg !1947
  br label %366, !dbg !2225, !llvm.loop !2226

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1940
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1855
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1872
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2229
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1855
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1855
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1947
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1947
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1947
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %472, metadata !1824, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %471, metadata !1823, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %156, metadata !1822, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %470, metadata !1817, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %469, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %468, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %467, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %466, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %465, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %464, metadata !1806, metadata !DIExpression()), !dbg !1855
  br i1 %117, label %486, label %474, !dbg !2230

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2231
  %476 = zext i8 %475 to i64, !dbg !2231
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2232
  %478 = load i32, i32* %477, align 4, !dbg !2232, !tbaa !1313
  %479 = and i8 %470, 31, !dbg !2233
  %480 = zext i8 %479 to i32, !dbg !2233
  %481 = shl nuw i32 1, %480, !dbg !2234
  %482 = and i32 %478, %481, !dbg !2234
  %483 = icmp eq i32 %482, 0, !dbg !2234
  %484 = icmp eq i8 %156, 0, !dbg !2235
  %485 = and i1 %484, %483, !dbg !2236
  br i1 %485, label %526, label %488, !dbg !2236

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2235
  br i1 %487, label %526, label %488, !dbg !2237

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2238
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1855
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1872
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2229
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1876
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1877
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1947
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1947
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %496, metadata !1824, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %495, metadata !1817, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %494, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %493, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %492, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %491, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %490, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %489, metadata !1806, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1852), !dbg !2239
  br i1 %109, label %498, label %629, !dbg !2240

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1823, metadata !DIExpression()), !dbg !1947
  %499 = and i8 %493, 1, !dbg !2242
  %500 = icmp eq i8 %499, 0, !dbg !2242
  %501 = and i1 %110, %500, !dbg !2242
  br i1 %501, label %502, label %518, !dbg !2242

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2244
  br i1 %503, label %504, label %506, !dbg !2248

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2244
  store i8 39, i8* %505, align 1, !dbg !2244, !tbaa !1364
  br label %506, !dbg !2244

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %507, metadata !1807, metadata !DIExpression()), !dbg !1855
  %508 = icmp ult i64 %507, %497, !dbg !2249
  br i1 %508, label %509, label %511, !dbg !2252

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2249
  store i8 36, i8* %510, align 1, !dbg !2249, !tbaa !1364
  br label %511, !dbg !2249

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %512, metadata !1807, metadata !DIExpression()), !dbg !1855
  %513 = icmp ult i64 %512, %497, !dbg !2253
  br i1 %513, label %514, label %516, !dbg !2256

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2253
  store i8 39, i8* %515, align 1, !dbg !2253, !tbaa !1364
  br label %516, !dbg !2253

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %517, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 1, metadata !1814, metadata !DIExpression()), !dbg !1855
  br label %518, !dbg !2257

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1947
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8 %520, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %519, metadata !1807, metadata !DIExpression()), !dbg !1855
  %521 = icmp ult i64 %519, %497, !dbg !2258
  br i1 %521, label %522, label %524, !dbg !2261

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2258
  store i8 92, i8* %523, align 1, !dbg !2258, !tbaa !1364
  br label %524, !dbg !2258

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %525, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %536, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %535, metadata !1824, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %534, metadata !1823, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %533, metadata !1817, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %532, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %531, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %530, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %529, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %528, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %527, metadata !1806, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1853), !dbg !2262
  br label %553, !dbg !2263

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2238
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1855
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1872
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2229
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1876
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1877
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2266
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1947
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1947
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %535, metadata !1824, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %534, metadata !1823, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %533, metadata !1817, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 %532, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %531, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %530, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %529, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %528, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %527, metadata !1806, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1853), !dbg !2262
  %537 = and i8 %531, 1, !dbg !2263
  %538 = icmp ne i8 %537, 0, !dbg !2263
  %539 = and i8 %534, 1, !dbg !2263
  %540 = icmp eq i8 %539, 0, !dbg !2263
  %541 = and i1 %538, %540, !dbg !2263
  br i1 %541, label %542, label %553, !dbg !2263

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2267
  br i1 %543, label %544, label %546, !dbg !2271

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2267
  store i8 39, i8* %545, align 1, !dbg !2267, !tbaa !1364
  br label %546, !dbg !2267

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2271
  call void @llvm.dbg.value(metadata i64 %547, metadata !1807, metadata !DIExpression()), !dbg !1855
  %548 = icmp ult i64 %547, %536, !dbg !2272
  br i1 %548, label %549, label %551, !dbg !2275

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2272
  store i8 39, i8* %550, align 1, !dbg !2272, !tbaa !1364
  br label %551, !dbg !2272

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %552, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1855
  br label %553, !dbg !2276

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1947
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1855
  call void @llvm.dbg.value(metadata i8 %562, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %561, metadata !1807, metadata !DIExpression()), !dbg !1855
  %563 = icmp ult i64 %561, %554, !dbg !2277
  br i1 %563, label %564, label %566, !dbg !2280

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2277
  store i8 %556, i8* %565, align 1, !dbg !2277, !tbaa !1364
  br label %566, !dbg !2277

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %567, metadata !1807, metadata !DIExpression()), !dbg !1855
  %568 = and i8 %555, 1, !dbg !2281
  %569 = icmp eq i8 %568, 0, !dbg !2281
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2283
  call void @llvm.dbg.value(metadata i8 %570, metadata !1816, metadata !DIExpression()), !dbg !1855
  br label %571, !dbg !2284

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2238
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1855
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1872
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2229
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1876
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1855
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1878
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %578, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %577, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %576, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %575, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %574, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %573, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %572, metadata !1806, metadata !DIExpression()), !dbg !1855
  %580 = add i64 %572, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %580, metadata !1806, metadata !DIExpression()), !dbg !1855
  br label %122, !dbg !2286, !llvm.loop !2287

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %127, metadata !1814, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %128, metadata !1815, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 %129, metadata !1816, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  %583 = icmp eq i64 %124, 0, !dbg !2289
  %584 = and i1 %110, %583, !dbg !2291
  %585 = xor i1 %584, true, !dbg !2291
  %586 = or i1 %109, %585, !dbg !2291
  br i1 %586, label %587, label %629, !dbg !2291

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2292
  %589 = xor i1 %588, true, !dbg !2292
  %590 = and i8 %128, 1, !dbg !2294
  %591 = icmp eq i8 %590, 0, !dbg !2294
  %592 = or i1 %591, %589, !dbg !2292
  br i1 %592, label %602, label %593, !dbg !2292

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2295
  %595 = icmp eq i8 %594, 0, !dbg !2295
  br i1 %595, label %598, label %596, !dbg !2298

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %94, metadata !1804, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %95, metadata !1805, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %125, metadata !1808, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %582, metadata !1800, metadata !DIExpression()), !dbg !1855
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2299
  br label %645, !dbg !2300

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2301
  %600 = icmp ne i64 %125, 0, !dbg !2303
  %601 = and i1 %600, %599, !dbg !2304
  br i1 %601, label %26, label %602, !dbg !2304

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %130, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  %603 = icmp ne i8* %97, null, !dbg !2305
  %604 = and i1 %603, %109, !dbg !2307
  br i1 %604, label %605, label %620, !dbg !2307

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %124, metadata !1807, metadata !DIExpression()), !dbg !1855
  %606 = load i8, i8* %97, align 1, !dbg !2308, !tbaa !1364
  %607 = icmp eq i8 %606, 0, !dbg !2311
  br i1 %607, label %620, label %608, !dbg !2311

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1809, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %611, metadata !1807, metadata !DIExpression()), !dbg !1855
  %612 = icmp ult i64 %611, %130, !dbg !2312
  br i1 %612, label %613, label %615, !dbg !2315

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2312
  store i8 %609, i8* %614, align 1, !dbg !2312, !tbaa !1364
  br label %615, !dbg !2312

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %616, metadata !1807, metadata !DIExpression()), !dbg !1855
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2316
  call void @llvm.dbg.value(metadata i8* %617, metadata !1809, metadata !DIExpression()), !dbg !1855
  %618 = load i8, i8* %617, align 1, !dbg !2308, !tbaa !1364
  %619 = icmp eq i8 %618, 0, !dbg !2311
  br i1 %619, label %620, label %608, !dbg !2311, !llvm.loop !2317

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1909
  call void @llvm.dbg.value(metadata i64 %621, metadata !1807, metadata !DIExpression()), !dbg !1855
  %622 = icmp ult i64 %621, %130, !dbg !2319
  br i1 %622, label %623, label %645, !dbg !2321

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2322
  store i8 0, i8* %624, align 1, !dbg !2323, !tbaa !1364
  br label %645, !dbg !2322

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %630, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1854), !dbg !2324
  %627 = icmp eq i8 %101, 0, !dbg !2325
  %628 = select i1 %627, i32 2, i32 4, !dbg !2325
  br label %635, !dbg !2325

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1798, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i64 %630, metadata !1800, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.label(metadata !1854), !dbg !2324
  %632 = icmp eq i32 %93, 2, !dbg !2327
  %633 = icmp eq i8 %101, 0, !dbg !2325
  %634 = select i1 %633, i32 2, i32 4, !dbg !2325
  br i1 %632, label %635, label %639, !dbg !2325

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2325

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1801, metadata !DIExpression()), !dbg !1855
  %643 = and i32 %5, -3, !dbg !2328
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2329
  br label %645, !dbg !2330

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2331
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2332 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2336, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32 %1, metadata !2337, metadata !DIExpression()), !dbg !2340
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %3, metadata !2338, metadata !DIExpression()), !dbg !2340
  %4 = icmp eq i8* %3, %0, !dbg !2342
  br i1 %4, label %5, label %71, !dbg !2344

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %6, metadata !2339, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* %6, metadata !2346, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* undef, metadata !2352, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 85, metadata !2353, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 84, metadata !2354, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 70, metadata !2355, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 45, metadata !2356, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 56, metadata !2357, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2358, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2362
  %7 = load i8, i8* %6, align 1, !dbg !2365, !tbaa !1364
  %8 = and i8 %7, -33, !dbg !2365
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2365

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2367, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* undef, metadata !2372, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 84, metadata !2373, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 70, metadata !2374, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 45, metadata !2375, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 56, metadata !2376, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2381
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2385
  %11 = load i8, i8* %10, align 1, !dbg !2385, !tbaa !1364
  %12 = and i8 %11, -33, !dbg !2385
  %13 = icmp eq i8 %12, 84, !dbg !2385
  br i1 %13, label %14, label %68, !dbg !2385

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2387, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8* undef, metadata !2392, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 70, metadata !2393, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 45, metadata !2394, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 56, metadata !2395, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2400
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2404
  %16 = load i8, i8* %15, align 1, !dbg !2404, !tbaa !1364
  %17 = and i8 %16, -33, !dbg !2404
  %18 = icmp eq i8 %17, 70, !dbg !2404
  br i1 %18, label %19, label %68, !dbg !2404

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2406, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8* undef, metadata !2411, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 45, metadata !2412, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 56, metadata !2413, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2414, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2418
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2422
  %21 = load i8, i8* %20, align 1, !dbg !2422, !tbaa !1364
  %22 = icmp eq i8 %21, 45, !dbg !2422
  br i1 %22, label %23, label %68, !dbg !2424

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2425, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* undef, metadata !2430, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 56, metadata !2431, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2436
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2440
  %25 = load i8, i8* %24, align 1, !dbg !2440, !tbaa !1364
  %26 = icmp eq i8 %25, 56, !dbg !2440
  br i1 %26, label %27, label %68, !dbg !2442

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2443, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* undef, metadata !2448, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2449, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 0, metadata !2452, metadata !DIExpression()), !dbg !2453
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2457
  %29 = load i8, i8* %28, align 1, !dbg !2457, !tbaa !1364
  %30 = icmp eq i8 %29, 0, !dbg !2457
  br i1 %30, label %31, label %68, !dbg !2459

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2460, !tbaa !1364
  %33 = icmp eq i8 %32, 96, !dbg !2461
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.68, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.69, i64 0, i64 0), !dbg !2460
  br label %71, !dbg !2462

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2367, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* undef, metadata !2372, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 66, metadata !2373, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 49, metadata !2374, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 56, metadata !2375, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 48, metadata !2376, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 51, metadata !2377, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 48, metadata !2378, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2463
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2467
  %37 = load i8, i8* %36, align 1, !dbg !2467, !tbaa !1364
  %38 = and i8 %37, -33, !dbg !2467
  %39 = icmp eq i8 %38, 66, !dbg !2467
  br i1 %39, label %40, label %68, !dbg !2467

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2387, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8* undef, metadata !2392, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 49, metadata !2393, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 56, metadata !2394, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 48, metadata !2395, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 51, metadata !2396, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 48, metadata !2397, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2468
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2470
  %42 = load i8, i8* %41, align 1, !dbg !2470, !tbaa !1364
  %43 = icmp eq i8 %42, 49, !dbg !2470
  br i1 %43, label %44, label %68, !dbg !2471

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2406, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* undef, metadata !2411, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 56, metadata !2412, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 48, metadata !2413, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 51, metadata !2414, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 48, metadata !2415, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2472
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2474
  %46 = load i8, i8* %45, align 1, !dbg !2474, !tbaa !1364
  %47 = icmp eq i8 %46, 56, !dbg !2474
  br i1 %47, label %48, label %68, !dbg !2475

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2425, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* undef, metadata !2430, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 48, metadata !2431, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 51, metadata !2432, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 48, metadata !2433, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2476
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2478
  %50 = load i8, i8* %49, align 1, !dbg !2478, !tbaa !1364
  %51 = icmp eq i8 %50, 48, !dbg !2478
  br i1 %51, label %52, label %68, !dbg !2479

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2443, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* undef, metadata !2448, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 51, metadata !2449, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 48, metadata !2450, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 0, metadata !2452, metadata !DIExpression()), !dbg !2480
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2482
  %54 = load i8, i8* %53, align 1, !dbg !2482, !tbaa !1364
  %55 = icmp eq i8 %54, 51, !dbg !2482
  br i1 %55, label %56, label %68, !dbg !2483

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2484, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* undef, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 48, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 0, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 0, metadata !2492, metadata !DIExpression()), !dbg !2493
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2497
  %58 = load i8, i8* %57, align 1, !dbg !2497, !tbaa !1364
  %59 = icmp eq i8 %58, 48, !dbg !2497
  br i1 %59, label %60, label %68, !dbg !2499

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2500, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8* undef, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 0, metadata !2507, metadata !DIExpression()), !dbg !2508
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2512
  %62 = load i8, i8* %61, align 1, !dbg !2512, !tbaa !1364
  %63 = icmp eq i8 %62, 0, !dbg !2512
  br i1 %63, label %64, label %68, !dbg !2514

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2515, !tbaa !1364
  %66 = icmp eq i8 %65, 96, !dbg !2516
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.70, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.71, i64 0, i64 0), !dbg !2515
  br label %71, !dbg !2517

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2518
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.67, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.66, i64 0, i64 0), !dbg !2519
  br label %71, !dbg !2520

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2340
  ret i8* %72, !dbg !2521
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #15

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !430 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !434 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2526, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2528, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8* %0, metadata !2530, metadata !DIExpression()) #18, !dbg !2543
  call void @llvm.dbg.value(metadata i64 %1, metadata !2535, metadata !DIExpression()) #18, !dbg !2543
  call void @llvm.dbg.value(metadata i64* null, metadata !2536, metadata !DIExpression()) #18, !dbg !2543
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2537, metadata !DIExpression()) #18, !dbg !2543
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2545
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2545
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2538, metadata !DIExpression()) #18, !dbg !2543
  %6 = tail call i32* @__errno_location() #24, !dbg !2546
  %7 = load i32, i32* %6, align 4, !dbg !2546, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %7, metadata !2539, metadata !DIExpression()) #18, !dbg !2543
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2547
  %9 = load i32, i32* %8, align 4, !dbg !2547, !tbaa !1740
  %10 = or i32 %9, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %10, metadata !2540, metadata !DIExpression()) #18, !dbg !2543
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2549
  %12 = load i32, i32* %11, align 8, !dbg !2549, !tbaa !1690
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2550
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2551
  %15 = load i8*, i8** %14, align 8, !dbg !2551, !tbaa !1763
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2552
  %17 = load i8*, i8** %16, align 8, !dbg !2552, !tbaa !1766
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2553
  %19 = add i64 %18, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i64 %19, metadata !2541, metadata !DIExpression()) #18, !dbg !2543
  call void @llvm.dbg.value(metadata i64 %19, metadata !2555, metadata !DIExpression()) #18, !dbg !2560
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2562
  call void @llvm.dbg.value(metadata i8* %20, metadata !2542, metadata !DIExpression()) #18, !dbg !2543
  %21 = load i32, i32* %11, align 8, !dbg !2563, !tbaa !1690
  %22 = load i8*, i8** %14, align 8, !dbg !2564, !tbaa !1763
  %23 = load i8*, i8** %16, align 8, !dbg !2565, !tbaa !1766
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2566
  store i32 %7, i32* %6, align 4, !dbg !2567, !tbaa !1313
  ret i8* %20, !dbg !2568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2531 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2530, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %1, metadata !2535, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64* %2, metadata !2536, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2537, metadata !DIExpression()), !dbg !2569
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2570
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2570
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2538, metadata !DIExpression()), !dbg !2569
  %7 = tail call i32* @__errno_location() #24, !dbg !2571
  %8 = load i32, i32* %7, align 4, !dbg !2571, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %8, metadata !2539, metadata !DIExpression()), !dbg !2569
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2572
  %10 = load i32, i32* %9, align 4, !dbg !2572, !tbaa !1740
  %11 = icmp ne i64* %2, null, !dbg !2573
  %12 = xor i1 %11, true, !dbg !2573
  %13 = zext i1 %12 to i32, !dbg !2573
  %14 = or i32 %10, %13, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %14, metadata !2540, metadata !DIExpression()), !dbg !2569
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2575
  %16 = load i32, i32* %15, align 8, !dbg !2575, !tbaa !1690
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2576
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2577
  %19 = load i8*, i8** %18, align 8, !dbg !2577, !tbaa !1763
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2578
  %21 = load i8*, i8** %20, align 8, !dbg !2578, !tbaa !1766
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2579
  %23 = add i64 %22, 1, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %23, metadata !2541, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %23, metadata !2555, metadata !DIExpression()) #18, !dbg !2581
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2583
  call void @llvm.dbg.value(metadata i8* %24, metadata !2542, metadata !DIExpression()), !dbg !2569
  %25 = load i32, i32* %15, align 8, !dbg !2584, !tbaa !1690
  %26 = load i8*, i8** %18, align 8, !dbg !2585, !tbaa !1763
  %27 = load i8*, i8** %20, align 8, !dbg !2586, !tbaa !1766
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2587
  store i32 %8, i32* %7, align 4, !dbg !2588, !tbaa !1313
  br i1 %11, label %29, label %30, !dbg !2589

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2590, !tbaa !2592
  br label %30, !dbg !2593

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2594
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2595 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2599, !tbaa !1238
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 1, metadata !2598, metadata !DIExpression()), !dbg !2600
  %2 = load i32, i32* @nslots, align 4, !dbg !2601, !tbaa !1313
  %3 = icmp sgt i32 %2, 1, !dbg !2604
  br i1 %3, label %4, label %12, !dbg !2605

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2598, metadata !DIExpression()), !dbg !2600
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2606
  %7 = load i8*, i8** %6, align 8, !dbg !2606, !tbaa !2607
  tail call void @free(i8* %7) #18, !dbg !2609
  %8 = add nuw nsw i64 %5, 1, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %8, metadata !2598, metadata !DIExpression()), !dbg !2600
  %9 = load i32, i32* @nslots, align 4, !dbg !2601, !tbaa !1313
  %10 = sext i32 %9 to i64, !dbg !2604
  %11 = icmp slt i64 %8, %10, !dbg !2604
  br i1 %11, label %4, label %12, !dbg !2605, !llvm.loop !2611

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2613
  %14 = load i8*, i8** %13, align 8, !dbg !2613, !tbaa !2607
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2615
  br i1 %15, label %17, label %16, !dbg !2616

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2617
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2619, !tbaa !2620
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2621, !tbaa !2607
  br label %17, !dbg !2622

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2623
  br i1 %18, label %21, label %19, !dbg !2625

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2626
  tail call void @free(i8* %20) #18, !dbg !2628
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2629, !tbaa !1238
  br label %21, !dbg !2630

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2631, !tbaa !1313
  ret void, !dbg !2632
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2633 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %1, metadata !2636, metadata !DIExpression()), !dbg !2637
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2638
  ret i8* %3, !dbg !2639
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2644, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* %1, metadata !2645, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 %2, metadata !2646, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2647, metadata !DIExpression()), !dbg !2659
  %5 = tail call i32* @__errno_location() #24, !dbg !2660
  %6 = load i32, i32* %5, align 4, !dbg !2660, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %6, metadata !2648, metadata !DIExpression()), !dbg !2659
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2661, !tbaa !1238
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2649, metadata !DIExpression()), !dbg !2659
  %8 = icmp slt i32 %0, 0, !dbg !2662
  br i1 %8, label %9, label %10, !dbg !2664

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2665
  unreachable, !dbg !2665

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2666, !tbaa !1313
  %12 = icmp sgt i32 %11, %0, !dbg !2667
  br i1 %12, label %34, label %13, !dbg !2668

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2669
  call void @llvm.dbg.value(metadata i1 %14, metadata !2650, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2653, metadata !DIExpression()), !dbg !2670
  %15 = icmp eq i32 %0, 2147483647, !dbg !2671
  br i1 %15, label %16, label %17, !dbg !2673

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2674
  unreachable, !dbg !2674

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2675
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2675
  %20 = add nuw nsw i32 %0, 1, !dbg !2676
  %21 = sext i32 %20 to i64, !dbg !2677
  %22 = shl nuw nsw i64 %21, 4, !dbg !2678
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2679
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2649, metadata !DIExpression()), !dbg !2659
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2680, !tbaa !1238
  br i1 %14, label %25, label %26, !dbg !2681

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2682, !tbaa.struct !2684
  br label %26, !dbg !2685

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2686, !tbaa !1313
  %28 = sext i32 %27 to i64, !dbg !2687
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2687
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2688
  %31 = sub nsw i32 %20, %27, !dbg !2689
  %32 = sext i32 %31 to i64, !dbg !2690
  %33 = shl nsw i64 %32, 4, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %30, metadata !2088, metadata !DIExpression()) #18, !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2094, metadata !DIExpression()) #18, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %33, metadata !2095, metadata !DIExpression()) #18, !dbg !2692
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2694
  store i32 %20, i32* @nslots, align 4, !dbg !2695, !tbaa !1313
  br label %34, !dbg !2696

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2659
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2649, metadata !DIExpression()), !dbg !2659
  %36 = zext i32 %0 to i64, !dbg !2697
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2698
  %38 = load i64, i64* %37, align 8, !dbg !2698, !tbaa !2620
  call void @llvm.dbg.value(metadata i64 %38, metadata !2654, metadata !DIExpression()), !dbg !2699
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2700
  %40 = load i8*, i8** %39, align 8, !dbg !2700, !tbaa !2607
  call void @llvm.dbg.value(metadata i8* %40, metadata !2656, metadata !DIExpression()), !dbg !2699
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2701
  %42 = load i32, i32* %41, align 4, !dbg !2701, !tbaa !1740
  %43 = or i32 %42, 1, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %43, metadata !2657, metadata !DIExpression()), !dbg !2699
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2703
  %45 = load i32, i32* %44, align 8, !dbg !2703, !tbaa !1690
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2704
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2705
  %48 = load i8*, i8** %47, align 8, !dbg !2705, !tbaa !1763
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2706
  %50 = load i8*, i8** %49, align 8, !dbg !2706, !tbaa !1766
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2707
  call void @llvm.dbg.value(metadata i64 %51, metadata !2658, metadata !DIExpression()), !dbg !2699
  %52 = icmp ugt i64 %38, %51, !dbg !2708
  br i1 %52, label %63, label %53, !dbg !2710

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %54, metadata !2654, metadata !DIExpression()), !dbg !2699
  store i64 %54, i64* %37, align 8, !dbg !2713, !tbaa !2620
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2714
  br i1 %55, label %57, label %56, !dbg !2716

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2717
  br label %57, !dbg !2717

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2555, metadata !DIExpression()) #18, !dbg !2718
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2720
  call void @llvm.dbg.value(metadata i8* %58, metadata !2656, metadata !DIExpression()), !dbg !2699
  store i8* %58, i8** %39, align 8, !dbg !2721, !tbaa !2607
  %59 = load i32, i32* %44, align 8, !dbg !2722, !tbaa !1690
  %60 = load i8*, i8** %47, align 8, !dbg !2723, !tbaa !1763
  %61 = load i8*, i8** %49, align 8, !dbg !2724, !tbaa !1766
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2725
  br label %63, !dbg !2726

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2699
  call void @llvm.dbg.value(metadata i8* %64, metadata !2656, metadata !DIExpression()), !dbg !2699
  store i32 %6, i32* %5, align 4, !dbg !2727, !tbaa !1313
  ret i8* %64, !dbg !2728
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i8* %1, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %2, metadata !2735, metadata !DIExpression()), !dbg !2736
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2737
  ret i8* %4, !dbg !2738
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2739 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2741, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 0, metadata !2635, metadata !DIExpression()) #18, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %0, metadata !2636, metadata !DIExpression()) #18, !dbg !2743
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2745
  ret i8* %2, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2747 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %1, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()) #18, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %0, metadata !2734, metadata !DIExpression()) #18, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()) #18, !dbg !2754
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2756
  ret i8* %3, !dbg !2757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2758 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %1, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %2, metadata !2764, metadata !DIExpression()), !dbg !2766
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2767
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2767
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2765, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 %1, metadata !2769, metadata !DIExpression()) #18, !dbg !2775
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2774, metadata !DIExpression()) #18, !dbg !2777
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2777, !alias.scope !2778
  %6 = icmp eq i32 %1, 10, !dbg !2781
  br i1 %6, label %7, label %8, !dbg !2783

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2784, !noalias !2778
  unreachable, !dbg !2784

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2785
  store i32 %1, i32* %9, align 8, !dbg !2786, !tbaa !1690, !alias.scope !2778
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2787
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2788
  ret i8* %10, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2790 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2794, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %1, metadata !2795, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %2, metadata !2796, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %3, metadata !2797, metadata !DIExpression()), !dbg !2799
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2800
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2800
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 %1, metadata !2769, metadata !DIExpression()) #18, !dbg !2802
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2774, metadata !DIExpression()) #18, !dbg !2804
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2804, !alias.scope !2805
  %7 = icmp eq i32 %1, 10, !dbg !2808
  br i1 %7, label %8, label %9, !dbg !2809

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2810, !noalias !2805
  unreachable, !dbg !2810

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2811
  store i32 %1, i32* %10, align 8, !dbg !2812, !tbaa !1690, !alias.scope !2805
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2813
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2814
  ret i8* %11, !dbg !2815
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2816 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2774, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2765, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %1, metadata !2821, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 0, metadata !2762, metadata !DIExpression()) #18, !dbg !2827
  call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()) #18, !dbg !2827
  call void @llvm.dbg.value(metadata i8* %1, metadata !2764, metadata !DIExpression()) #18, !dbg !2827
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2828
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2828
  call void @llvm.dbg.value(metadata i32 %0, metadata !2769, metadata !DIExpression()) #18, !dbg !2829
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2822, !alias.scope !2830
  %5 = icmp eq i32 %0, 10, !dbg !2833
  br i1 %5, label %6, label %7, !dbg !2834

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2835, !noalias !2830
  unreachable, !dbg !2835

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2836
  store i32 %0, i32* %8, align 8, !dbg !2837, !tbaa !1690, !alias.scope !2830
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2839
  ret i8* %9, !dbg !2840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2841 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2774, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2798, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %0, metadata !2845, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i8* %1, metadata !2846, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 %2, metadata !2847, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i32 0, metadata !2794, metadata !DIExpression()) #18, !dbg !2853
  call void @llvm.dbg.value(metadata i32 %0, metadata !2795, metadata !DIExpression()) #18, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %1, metadata !2796, metadata !DIExpression()) #18, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %2, metadata !2797, metadata !DIExpression()) #18, !dbg !2853
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2854
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %0, metadata !2769, metadata !DIExpression()) #18, !dbg !2855
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2848, !alias.scope !2856
  %6 = icmp eq i32 %0, 10, !dbg !2859
  br i1 %6, label %7, label %8, !dbg !2860

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2861, !noalias !2856
  unreachable, !dbg !2861

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2862
  store i32 %0, i32* %9, align 8, !dbg !2863, !tbaa !1690, !alias.scope !2856
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2864
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2865
  ret i8* %10, !dbg !2866
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2867 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata i8 %2, metadata !2873, metadata !DIExpression()), !dbg !2875
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2876
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2876
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2874, metadata !DIExpression()), !dbg !2877
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2878, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1708, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %2, metadata !1709, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 1, metadata !1710, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8 %2, metadata !1711, metadata !DIExpression()), !dbg !2880
  %6 = lshr i8 %2, 5, !dbg !2882
  %7 = zext i8 %6 to i64, !dbg !2882
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2883
  call void @llvm.dbg.value(metadata i32* %8, metadata !1712, metadata !DIExpression()), !dbg !2880
  %9 = and i8 %2, 31, !dbg !2884
  %10 = zext i8 %9 to i32, !dbg !2884
  call void @llvm.dbg.value(metadata i32 %10, metadata !1713, metadata !DIExpression()), !dbg !2880
  %11 = load i32, i32* %8, align 4, !dbg !2885, !tbaa !1313
  %12 = lshr i32 %11, %10, !dbg !2886
  %13 = and i32 %12, 1, !dbg !2887
  call void @llvm.dbg.value(metadata i32 %13, metadata !1714, metadata !DIExpression()), !dbg !2880
  %14 = xor i32 %13, 1, !dbg !2888
  %15 = shl i32 %14, %10, !dbg !2889
  %16 = xor i32 %15, %11, !dbg !2890
  store i32 %16, i32* %8, align 4, !dbg !2890, !tbaa !1313
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2891
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2892
  ret i8* %17, !dbg !2893
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2894 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2874, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %0, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8 %1, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #18, !dbg !2903
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()) #18, !dbg !2903
  call void @llvm.dbg.value(metadata i8 %1, metadata !2873, metadata !DIExpression()) #18, !dbg !2903
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2904
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2904
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2905, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1708, metadata !DIExpression()) #18, !dbg !2906
  call void @llvm.dbg.value(metadata i8 %1, metadata !1709, metadata !DIExpression()) #18, !dbg !2906
  call void @llvm.dbg.value(metadata i32 1, metadata !1710, metadata !DIExpression()) #18, !dbg !2906
  call void @llvm.dbg.value(metadata i8 %1, metadata !1711, metadata !DIExpression()) #18, !dbg !2906
  %5 = lshr i8 %1, 5, !dbg !2908
  %6 = zext i8 %5 to i64, !dbg !2908
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2909
  call void @llvm.dbg.value(metadata i32* %7, metadata !1712, metadata !DIExpression()) #18, !dbg !2906
  %8 = and i8 %1, 31, !dbg !2910
  %9 = zext i8 %8 to i32, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %9, metadata !1713, metadata !DIExpression()) #18, !dbg !2906
  %10 = load i32, i32* %7, align 4, !dbg !2911, !tbaa !1313
  %11 = lshr i32 %10, %9, !dbg !2912
  %12 = and i32 %11, 1, !dbg !2913
  call void @llvm.dbg.value(metadata i32 %12, metadata !1714, metadata !DIExpression()) #18, !dbg !2906
  %13 = xor i32 %12, 1, !dbg !2914
  %14 = shl i32 %13, %9, !dbg !2915
  %15 = xor i32 %14, %10, !dbg !2916
  store i32 %15, i32* %7, align 4, !dbg !2916, !tbaa !1313
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2917
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2918
  ret i8* %16, !dbg !2919
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2920 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2874, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8* %0, metadata !2922, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %0, metadata !2898, metadata !DIExpression()) #18, !dbg !2927
  call void @llvm.dbg.value(metadata i8 58, metadata !2899, metadata !DIExpression()) #18, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #18, !dbg !2928
  call void @llvm.dbg.value(metadata i64 -1, metadata !2872, metadata !DIExpression()) #18, !dbg !2928
  call void @llvm.dbg.value(metadata i8 58, metadata !2873, metadata !DIExpression()) #18, !dbg !2928
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2929
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2929
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2930, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1708, metadata !DIExpression()) #18, !dbg !2931
  call void @llvm.dbg.value(metadata i8 58, metadata !1709, metadata !DIExpression()) #18, !dbg !2931
  call void @llvm.dbg.value(metadata i32 1, metadata !1710, metadata !DIExpression()) #18, !dbg !2931
  call void @llvm.dbg.value(metadata i8 58, metadata !1711, metadata !DIExpression()) #18, !dbg !2931
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2933
  call void @llvm.dbg.value(metadata i32* %4, metadata !1712, metadata !DIExpression()) #18, !dbg !2931
  call void @llvm.dbg.value(metadata i32 26, metadata !1713, metadata !DIExpression()) #18, !dbg !2931
  %5 = load i32, i32* %4, align 4, !dbg !2934, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %5, metadata !1714, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2931
  %6 = or i32 %5, 67108864, !dbg !2935
  store i32 %6, i32* %4, align 4, !dbg !2935, !tbaa !1313
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2937
  ret i8* %7, !dbg !2938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2939 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2874, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* %0, metadata !2941, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %0, metadata !2871, metadata !DIExpression()) #18, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %1, metadata !2872, metadata !DIExpression()) #18, !dbg !2946
  call void @llvm.dbg.value(metadata i8 58, metadata !2873, metadata !DIExpression()) #18, !dbg !2946
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2947
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2948, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1708, metadata !DIExpression()) #18, !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1709, metadata !DIExpression()) #18, !dbg !2949
  call void @llvm.dbg.value(metadata i32 1, metadata !1710, metadata !DIExpression()) #18, !dbg !2949
  call void @llvm.dbg.value(metadata i8 58, metadata !1711, metadata !DIExpression()) #18, !dbg !2949
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2951
  call void @llvm.dbg.value(metadata i32* %5, metadata !1712, metadata !DIExpression()) #18, !dbg !2949
  call void @llvm.dbg.value(metadata i32 26, metadata !1713, metadata !DIExpression()) #18, !dbg !2949
  %6 = load i32, i32* %5, align 4, !dbg !2952, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %6, metadata !1714, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2949
  %7 = or i32 %6, 67108864, !dbg !2953
  store i32 %7, i32* %5, align 4, !dbg !2953, !tbaa !1313
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2954
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2955
  ret i8* %8, !dbg !2956
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2957 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2774, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %0, metadata !2959, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 %1, metadata !2960, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %2, metadata !2961, metadata !DIExpression()), !dbg !2965
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2966
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2966
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2962, metadata !DIExpression()), !dbg !2967
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2968
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2968
  call void @llvm.dbg.value(metadata i32 %1, metadata !2769, metadata !DIExpression()) #18, !dbg !2969
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2969
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2963, !alias.scope !2970
  %8 = icmp eq i32 %1, 10, !dbg !2973
  br i1 %8, label %9, label %10, !dbg !2974

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2975, !noalias !2970
  unreachable, !dbg !2975

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2774, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2969
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2968
  store i32 %1, i32* %11, align 8, !dbg !2968, !tbaa.struct !2879
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2968
  %13 = bitcast i32* %12 to i8*, !dbg !2968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2968, !tbaa.struct !2879
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2968
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1708, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 58, metadata !1709, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 1, metadata !1710, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i8 58, metadata !1711, metadata !DIExpression()), !dbg !2976
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2978
  call void @llvm.dbg.value(metadata i32* %14, metadata !1712, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 26, metadata !1713, metadata !DIExpression()), !dbg !2976
  %15 = load i32, i32* %14, align 4, !dbg !2979, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %15, metadata !1714, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2976
  %16 = or i32 %15, 67108864, !dbg !2980
  store i32 %16, i32* %14, align 4, !dbg !2980, !tbaa !1313
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2981
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2982
  ret i8* %17, !dbg !2983
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2984 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2992, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %0, metadata !2988, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %1, metadata !2989, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %2, metadata !2990, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %3, metadata !2991, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %0, metadata !2997, metadata !DIExpression()) #18, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %1, metadata !2998, metadata !DIExpression()) #18, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %2, metadata !2999, metadata !DIExpression()) #18, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()) #18, !dbg !3005
  call void @llvm.dbg.value(metadata i64 -1, metadata !3001, metadata !DIExpression()) #18, !dbg !3005
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3006
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3006
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3007, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1747, metadata !DIExpression()) #18, !dbg !3008
  call void @llvm.dbg.value(metadata i8* %1, metadata !1748, metadata !DIExpression()) #18, !dbg !3008
  call void @llvm.dbg.value(metadata i8* %2, metadata !1749, metadata !DIExpression()) #18, !dbg !3008
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1747, metadata !DIExpression()) #18, !dbg !3008
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3010
  store i32 10, i32* %7, align 8, !dbg !3011, !tbaa !1690
  %8 = icmp ne i8* %1, null, !dbg !3012
  %9 = icmp ne i8* %2, null, !dbg !3013
  %10 = and i1 %8, %9, !dbg !3014
  br i1 %10, label %12, label %11, !dbg !3014

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3015
  unreachable, !dbg !3015

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3016
  store i8* %1, i8** %13, align 8, !dbg !3017, !tbaa !1763
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3018
  store i8* %2, i8** %14, align 8, !dbg !3019, !tbaa !1766
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !3020
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3021
  ret i8* %15, !dbg !3022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2993 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2997, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %1, metadata !2998, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %2, metadata !2999, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 %4, metadata !3001, metadata !DIExpression()), !dbg !3023
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3024
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3024
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2992, metadata !DIExpression()), !dbg !3025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3026, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1747, metadata !DIExpression()) #18, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %1, metadata !1748, metadata !DIExpression()) #18, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %2, metadata !1749, metadata !DIExpression()) #18, !dbg !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1747, metadata !DIExpression()) #18, !dbg !3027
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3029
  store i32 10, i32* %8, align 8, !dbg !3030, !tbaa !1690
  %9 = icmp ne i8* %1, null, !dbg !3031
  %10 = icmp ne i8* %2, null, !dbg !3032
  %11 = and i1 %9, %10, !dbg !3033
  br i1 %11, label %13, label %12, !dbg !3033

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3034
  unreachable, !dbg !3034

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3035
  store i8* %1, i8** %14, align 8, !dbg !3036, !tbaa !1763
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3037
  store i8* %2, i8** %15, align 8, !dbg !3038, !tbaa !1766
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3039
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3040
  ret i8* %16, !dbg !3041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3042 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2992, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i8* %0, metadata !3046, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i8* %1, metadata !3047, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i8* %2, metadata !3048, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 0, metadata !2988, metadata !DIExpression()) #18, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %0, metadata !2989, metadata !DIExpression()) #18, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %1, metadata !2990, metadata !DIExpression()) #18, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %2, metadata !2991, metadata !DIExpression()) #18, !dbg !3053
  call void @llvm.dbg.value(metadata i32 0, metadata !2997, metadata !DIExpression()) #18, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %0, metadata !2998, metadata !DIExpression()) #18, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %1, metadata !2999, metadata !DIExpression()) #18, !dbg !3054
  call void @llvm.dbg.value(metadata i8* %2, metadata !3000, metadata !DIExpression()) #18, !dbg !3054
  call void @llvm.dbg.value(metadata i64 -1, metadata !3001, metadata !DIExpression()) #18, !dbg !3054
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3055
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3055
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3056, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1747, metadata !DIExpression()) #18, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %0, metadata !1748, metadata !DIExpression()) #18, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %1, metadata !1749, metadata !DIExpression()) #18, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1747, metadata !DIExpression()) #18, !dbg !3057
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3059
  store i32 10, i32* %6, align 8, !dbg !3060, !tbaa !1690
  %7 = icmp ne i8* %0, null, !dbg !3061
  %8 = icmp ne i8* %1, null, !dbg !3062
  %9 = and i1 %7, %8, !dbg !3063
  br i1 %9, label %11, label %10, !dbg !3063

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3064
  unreachable, !dbg !3064

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3065
  store i8* %0, i8** %12, align 8, !dbg !3066, !tbaa !1763
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3067
  store i8* %1, i8** %13, align 8, !dbg !3068, !tbaa !1766
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3069
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3070
  ret i8* %14, !dbg !3071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3072 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2992, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3076, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %1, metadata !3077, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i8* %2, metadata !3078, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %3, metadata !3079, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 0, metadata !2997, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %0, metadata !2998, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %1, metadata !2999, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %2, metadata !3000, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %3, metadata !3001, metadata !DIExpression()) #18, !dbg !3083
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3084
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3084
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3085, !tbaa.struct !2879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1747, metadata !DIExpression()) #18, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %0, metadata !1748, metadata !DIExpression()) #18, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %1, metadata !1749, metadata !DIExpression()) #18, !dbg !3086
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1747, metadata !DIExpression()) #18, !dbg !3086
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3088
  store i32 10, i32* %7, align 8, !dbg !3089, !tbaa !1690
  %8 = icmp ne i8* %0, null, !dbg !3090
  %9 = icmp ne i8* %1, null, !dbg !3091
  %10 = and i1 %8, %9, !dbg !3092
  br i1 %10, label %12, label %11, !dbg !3092

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3093
  unreachable, !dbg !3093

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3094
  store i8* %0, i8** %13, align 8, !dbg !3095, !tbaa !1763
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3096
  store i8* %1, i8** %14, align 8, !dbg !3097, !tbaa !1766
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3098
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3099
  ret i8* %15, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %1, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %2, metadata !3107, metadata !DIExpression()), !dbg !3108
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3109
  ret i8* %4, !dbg !3110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i32 0, metadata !3105, metadata !DIExpression()) #18, !dbg !3118
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()) #18, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %1, metadata !3107, metadata !DIExpression()) #18, !dbg !3118
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3120
  ret i8* %3, !dbg !3121
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3122 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %1, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 %0, metadata !3105, metadata !DIExpression()) #18, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %1, metadata !3106, metadata !DIExpression()) #18, !dbg !3129
  call void @llvm.dbg.value(metadata i64 -1, metadata !3107, metadata !DIExpression()) #18, !dbg !3129
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3131
  ret i8* %3, !dbg !3132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3133 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i32 0, metadata !3126, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %0, metadata !3127, metadata !DIExpression()) #18, !dbg !3137
  call void @llvm.dbg.value(metadata i32 0, metadata !3105, metadata !DIExpression()) #18, !dbg !3139
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()) #18, !dbg !3139
  call void @llvm.dbg.value(metadata i64 -1, metadata !3107, metadata !DIExpression()) #18, !dbg !3139
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3141
  ret i8* %2, !dbg !3142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3143 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3151, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %1, metadata !3152, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %2, metadata !3153, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8* %3, metadata !3154, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8** %4, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %5, metadata !3156, metadata !DIExpression()), !dbg !3157
  %7 = icmp eq i8* %1, null, !dbg !3158
  br i1 %7, label %10, label %8, !dbg !3160

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3161
  br label %12, !dbg !3161

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.77, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3162
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.78, i64 0, i64 0), i32 5) #18, !dbg !3163
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3163
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3164
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.80, i64 0, i64 0), i32 5) #18, !dbg !3165
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.81, i64 0, i64 0)) #18, !dbg !3165
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3166
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
  ], !dbg !3167

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.82, i64 0, i64 0), i32 5) #18, !dbg !3168
  %21 = load i8*, i8** %4, align 8, !dbg !3168, !tbaa !1238
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3168
  br label %147, !dbg !3170

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.83, i64 0, i64 0), i32 5) #18, !dbg !3171
  %25 = load i8*, i8** %4, align 8, !dbg !3171, !tbaa !1238
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3171
  %27 = load i8*, i8** %26, align 8, !dbg !3171, !tbaa !1238
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3171
  br label %147, !dbg !3172

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.84, i64 0, i64 0), i32 5) #18, !dbg !3173
  %31 = load i8*, i8** %4, align 8, !dbg !3173, !tbaa !1238
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3173
  %33 = load i8*, i8** %32, align 8, !dbg !3173, !tbaa !1238
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3173
  %35 = load i8*, i8** %34, align 8, !dbg !3173, !tbaa !1238
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3173
  br label %147, !dbg !3174

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.85, i64 0, i64 0), i32 5) #18, !dbg !3175
  %39 = load i8*, i8** %4, align 8, !dbg !3175, !tbaa !1238
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3175
  %41 = load i8*, i8** %40, align 8, !dbg !3175, !tbaa !1238
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3175
  %43 = load i8*, i8** %42, align 8, !dbg !3175, !tbaa !1238
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3175
  %45 = load i8*, i8** %44, align 8, !dbg !3175, !tbaa !1238
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3175
  br label %147, !dbg !3176

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.86, i64 0, i64 0), i32 5) #18, !dbg !3177
  %49 = load i8*, i8** %4, align 8, !dbg !3177, !tbaa !1238
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3177
  %51 = load i8*, i8** %50, align 8, !dbg !3177, !tbaa !1238
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3177
  %53 = load i8*, i8** %52, align 8, !dbg !3177, !tbaa !1238
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3177
  %55 = load i8*, i8** %54, align 8, !dbg !3177, !tbaa !1238
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3177
  %57 = load i8*, i8** %56, align 8, !dbg !3177, !tbaa !1238
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3177
  br label %147, !dbg !3178

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.87, i64 0, i64 0), i32 5) #18, !dbg !3179
  %61 = load i8*, i8** %4, align 8, !dbg !3179, !tbaa !1238
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3179
  %63 = load i8*, i8** %62, align 8, !dbg !3179, !tbaa !1238
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3179
  %65 = load i8*, i8** %64, align 8, !dbg !3179, !tbaa !1238
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3179
  %67 = load i8*, i8** %66, align 8, !dbg !3179, !tbaa !1238
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3179
  %69 = load i8*, i8** %68, align 8, !dbg !3179, !tbaa !1238
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3179
  %71 = load i8*, i8** %70, align 8, !dbg !3179, !tbaa !1238
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3179
  br label %147, !dbg !3180

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.88, i64 0, i64 0), i32 5) #18, !dbg !3181
  %75 = load i8*, i8** %4, align 8, !dbg !3181, !tbaa !1238
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3181
  %77 = load i8*, i8** %76, align 8, !dbg !3181, !tbaa !1238
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3181
  %79 = load i8*, i8** %78, align 8, !dbg !3181, !tbaa !1238
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3181
  %81 = load i8*, i8** %80, align 8, !dbg !3181, !tbaa !1238
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3181
  %83 = load i8*, i8** %82, align 8, !dbg !3181, !tbaa !1238
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3181
  %85 = load i8*, i8** %84, align 8, !dbg !3181, !tbaa !1238
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3181
  %87 = load i8*, i8** %86, align 8, !dbg !3181, !tbaa !1238
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3181
  br label %147, !dbg !3182

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.89, i64 0, i64 0), i32 5) #18, !dbg !3183
  %91 = load i8*, i8** %4, align 8, !dbg !3183, !tbaa !1238
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3183
  %93 = load i8*, i8** %92, align 8, !dbg !3183, !tbaa !1238
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3183
  %95 = load i8*, i8** %94, align 8, !dbg !3183, !tbaa !1238
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3183
  %97 = load i8*, i8** %96, align 8, !dbg !3183, !tbaa !1238
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3183
  %99 = load i8*, i8** %98, align 8, !dbg !3183, !tbaa !1238
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3183
  %101 = load i8*, i8** %100, align 8, !dbg !3183, !tbaa !1238
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3183
  %103 = load i8*, i8** %102, align 8, !dbg !3183, !tbaa !1238
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3183
  %105 = load i8*, i8** %104, align 8, !dbg !3183, !tbaa !1238
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3183
  br label %147, !dbg !3184

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #18, !dbg !3185
  %109 = load i8*, i8** %4, align 8, !dbg !3185, !tbaa !1238
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3185
  %111 = load i8*, i8** %110, align 8, !dbg !3185, !tbaa !1238
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3185
  %113 = load i8*, i8** %112, align 8, !dbg !3185, !tbaa !1238
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3185
  %115 = load i8*, i8** %114, align 8, !dbg !3185, !tbaa !1238
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3185
  %117 = load i8*, i8** %116, align 8, !dbg !3185, !tbaa !1238
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3185
  %119 = load i8*, i8** %118, align 8, !dbg !3185, !tbaa !1238
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3185
  %121 = load i8*, i8** %120, align 8, !dbg !3185, !tbaa !1238
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3185
  %123 = load i8*, i8** %122, align 8, !dbg !3185, !tbaa !1238
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3185
  %125 = load i8*, i8** %124, align 8, !dbg !3185, !tbaa !1238
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3185
  br label %147, !dbg !3186

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.91, i64 0, i64 0), i32 5) #18, !dbg !3187
  %129 = load i8*, i8** %4, align 8, !dbg !3187, !tbaa !1238
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3187
  %131 = load i8*, i8** %130, align 8, !dbg !3187, !tbaa !1238
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3187
  %133 = load i8*, i8** %132, align 8, !dbg !3187, !tbaa !1238
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3187
  %135 = load i8*, i8** %134, align 8, !dbg !3187, !tbaa !1238
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3187
  %137 = load i8*, i8** %136, align 8, !dbg !3187, !tbaa !1238
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3187
  %139 = load i8*, i8** %138, align 8, !dbg !3187, !tbaa !1238
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3187
  %141 = load i8*, i8** %140, align 8, !dbg !3187, !tbaa !1238
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3187
  %143 = load i8*, i8** %142, align 8, !dbg !3187, !tbaa !1238
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3187
  %145 = load i8*, i8** %144, align 8, !dbg !3187, !tbaa !1238
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3187
  br label %147, !dbg !3188

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3189
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3190 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3194, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %2, metadata !3196, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %3, metadata !3197, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8** %4, metadata !3198, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 0, metadata !3199, metadata !DIExpression()), !dbg !3200
  br label %6, !dbg !3201

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3203
  call void @llvm.dbg.value(metadata i64 %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3204
  %9 = load i8*, i8** %8, align 8, !dbg !3204, !tbaa !1238
  %10 = icmp eq i8* %9, null, !dbg !3206
  %11 = add i64 %7, 1, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %11, metadata !3199, metadata !DIExpression()), !dbg !3200
  br i1 %10, label %12, label %6, !dbg !3206, !llvm.loop !3208

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %7, metadata !3199, metadata !DIExpression()), !dbg !3200
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3210
  ret void, !dbg !3211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3212 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3223, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %1, metadata !3224, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %2, metadata !3225, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i8* %3, metadata !3226, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3227, metadata !DIExpression()), !dbg !3231
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3232
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3232
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3229, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 0, metadata !3228, metadata !DIExpression()), !dbg !3231
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3234
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3234
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3234
  %11 = load i32, i32* %8, align 8, !dbg !3237
  %12 = icmp ult i32 %11, 41, !dbg !3237
  br i1 %12, label %13, label %18, !dbg !3237

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3237
  %15 = zext i32 %11 to i64, !dbg !3237
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3237
  %17 = add nuw nsw i32 %11, 8, !dbg !3237
  store i32 %17, i32* %8, align 8, !dbg !3237
  br label %21, !dbg !3237

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3237
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3237
  store i8* %20, i8** %9, align 8, !dbg !3237
  br label %21, !dbg !3237

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3237
  %25 = load i8*, i8** %24, align 8, !dbg !3237
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3238
  store i8* %25, i8** %26, align 16, !dbg !3239, !tbaa !1238
  %27 = icmp eq i8* %25, null, !dbg !3240
  br i1 %27, label %30, label %28, !dbg !3241

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3228, metadata !DIExpression()), !dbg !3231
  %29 = icmp ult i32 %22, 41, !dbg !3237
  br i1 %29, label %35, label %32, !dbg !3237

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3242
  call void @llvm.dbg.value(metadata i64 %31, metadata !3228, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.value(metadata i64 %31, metadata !3228, metadata !DIExpression()), !dbg !3231
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3243
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3244
  ret void, !dbg !3244

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3237
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3237
  store i8* %34, i8** %9, align 8, !dbg !3237
  br label %40, !dbg !3237

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3237
  %37 = zext i32 %22 to i64, !dbg !3237
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3237
  %39 = add nuw nsw i32 %22, 8, !dbg !3237
  store i32 %39, i32* %8, align 8, !dbg !3237
  br label %40, !dbg !3237

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3237
  %44 = load i8*, i8** %43, align 8, !dbg !3237
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3238
  store i8* %44, i8** %45, align 8, !dbg !3239, !tbaa !1238
  %46 = icmp eq i8* %44, null, !dbg !3240
  br i1 %46, label %30, label %47, !dbg !3241

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3228, metadata !DIExpression()), !dbg !3231
  %48 = icmp ult i32 %41, 41, !dbg !3237
  br i1 %48, label %52, label %49, !dbg !3237

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3237
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3237
  store i8* %51, i8** %9, align 8, !dbg !3237
  br label %57, !dbg !3237

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3237
  %54 = zext i32 %41 to i64, !dbg !3237
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3237
  %56 = add nuw nsw i32 %41, 8, !dbg !3237
  store i32 %56, i32* %8, align 8, !dbg !3237
  br label %57, !dbg !3237

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3237
  %61 = load i8*, i8** %60, align 8, !dbg !3237
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3238
  store i8* %61, i8** %62, align 16, !dbg !3239, !tbaa !1238
  %63 = icmp eq i8* %61, null, !dbg !3240
  br i1 %63, label %30, label %64, !dbg !3241

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3228, metadata !DIExpression()), !dbg !3231
  %65 = icmp ult i32 %58, 41, !dbg !3237
  br i1 %65, label %69, label %66, !dbg !3237

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3237
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3237
  store i8* %68, i8** %9, align 8, !dbg !3237
  br label %74, !dbg !3237

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3237
  %71 = zext i32 %58 to i64, !dbg !3237
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3237
  %73 = add nuw nsw i32 %58, 8, !dbg !3237
  store i32 %73, i32* %8, align 8, !dbg !3237
  br label %74, !dbg !3237

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3237
  %78 = load i8*, i8** %77, align 8, !dbg !3237
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3238
  store i8* %78, i8** %79, align 8, !dbg !3239, !tbaa !1238
  %80 = icmp eq i8* %78, null, !dbg !3240
  br i1 %80, label %30, label %81, !dbg !3241

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3228, metadata !DIExpression()), !dbg !3231
  %82 = icmp ult i32 %75, 41, !dbg !3237
  br i1 %82, label %86, label %83, !dbg !3237

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3237
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3237
  store i8* %85, i8** %9, align 8, !dbg !3237
  br label %91, !dbg !3237

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3237
  %88 = zext i32 %75 to i64, !dbg !3237
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3237
  %90 = add nuw nsw i32 %75, 8, !dbg !3237
  store i32 %90, i32* %8, align 8, !dbg !3237
  br label %91, !dbg !3237

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3237
  %95 = load i8*, i8** %94, align 8, !dbg !3237
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3238
  store i8* %95, i8** %96, align 16, !dbg !3239, !tbaa !1238
  %97 = icmp eq i8* %95, null, !dbg !3240
  br i1 %97, label %30, label %98, !dbg !3241

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3228, metadata !DIExpression()), !dbg !3231
  %99 = icmp ult i32 %92, 41, !dbg !3237
  br i1 %99, label %103, label %100, !dbg !3237

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3237
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3237
  store i8* %102, i8** %9, align 8, !dbg !3237
  br label %108, !dbg !3237

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3237
  %105 = zext i32 %92 to i64, !dbg !3237
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3237
  %107 = add nuw nsw i32 %92, 8, !dbg !3237
  store i32 %107, i32* %8, align 8, !dbg !3237
  br label %108, !dbg !3237

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3237
  %111 = load i8*, i8** %110, align 8, !dbg !3237
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3238
  store i8* %111, i8** %112, align 8, !dbg !3239, !tbaa !1238
  %113 = icmp eq i8* %111, null, !dbg !3240
  br i1 %113, label %30, label %114, !dbg !3241

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3228, metadata !DIExpression()), !dbg !3231
  %115 = load i8*, i8** %9, align 8, !dbg !3237
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3237
  store i8* %116, i8** %9, align 8, !dbg !3237
  %117 = bitcast i8* %115 to i8**, !dbg !3237
  %118 = load i8*, i8** %117, align 8, !dbg !3237
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3238
  store i8* %118, i8** %119, align 16, !dbg !3239, !tbaa !1238
  %120 = icmp eq i8* %118, null, !dbg !3240
  br i1 %120, label %30, label %121, !dbg !3241

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3228, metadata !DIExpression()), !dbg !3231
  %122 = load i8*, i8** %9, align 8, !dbg !3237
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3237
  store i8* %123, i8** %9, align 8, !dbg !3237
  %124 = bitcast i8* %122 to i8**, !dbg !3237
  %125 = load i8*, i8** %124, align 8, !dbg !3237
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3238
  store i8* %125, i8** %126, align 8, !dbg !3239, !tbaa !1238
  %127 = icmp eq i8* %125, null, !dbg !3240
  br i1 %127, label %30, label %128, !dbg !3241

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3228, metadata !DIExpression()), !dbg !3231
  %129 = load i8*, i8** %9, align 8, !dbg !3237
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3237
  store i8* %130, i8** %9, align 8, !dbg !3237
  %131 = bitcast i8* %129 to i8**, !dbg !3237
  %132 = load i8*, i8** %131, align 8, !dbg !3237
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3238
  store i8* %132, i8** %133, align 16, !dbg !3239, !tbaa !1238
  %134 = icmp eq i8* %132, null, !dbg !3240
  br i1 %134, label %30, label %135, !dbg !3241

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3228, metadata !DIExpression()), !dbg !3231
  %136 = load i8*, i8** %9, align 8, !dbg !3237
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3237
  store i8* %137, i8** %9, align 8, !dbg !3237
  %138 = bitcast i8* %136 to i8**, !dbg !3237
  %139 = load i8*, i8** %138, align 8, !dbg !3237
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3238
  store i8* %139, i8** %140, align 8, !dbg !3239, !tbaa !1238
  %141 = icmp eq i8* %139, null, !dbg !3240
  %142 = select i1 %141, i64 9, i64 10, !dbg !3241
  br label %30, !dbg !3241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3245 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3249, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %1, metadata !3250, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %2, metadata !3251, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %3, metadata !3252, metadata !DIExpression()), !dbg !3259
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3260
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3260
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3253, metadata !DIExpression()), !dbg !3261
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3262
  call void @llvm.va_start(i8* nonnull %6), !dbg !3262
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3263
  call void @llvm.va_end(i8* nonnull %6), !dbg !3264
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3265
  ret void, !dbg !3265
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3266 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3267, !tbaa !1238
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.79, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3267
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.94, i64 0, i64 0), i32 5) #18, !dbg !3268
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.95, i64 0, i64 0)) #18, !dbg !3268
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.96, i64 0, i64 0), i32 5) #18, !dbg !3269
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.97, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.98, i64 0, i64 0)) #18, !dbg !3269
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.99, i64 0, i64 0), i32 5) #18, !dbg !3270
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.100, i64 0, i64 0)) #18, !dbg !3270
  ret void, !dbg !3271
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3272 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3276, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 %1, metadata !3277, metadata !DIExpression()), !dbg !3278
  %3 = udiv i64 9223372036854775807, %1, !dbg !3279
  %4 = icmp ult i64 %3, %0, !dbg !3279
  br i1 %4, label %5, label %6, !dbg !3281

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3282
  unreachable, !dbg !3282

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %7, metadata !3284, metadata !DIExpression()) #18, !dbg !3290
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %8, metadata !3289, metadata !DIExpression()) #18, !dbg !3290
  %9 = icmp eq i8* %8, null, !dbg !3293
  %10 = icmp ne i64 %7, 0, !dbg !3295
  %11 = and i1 %10, %9, !dbg !3296
  br i1 %11, label %12, label %13, !dbg !3296

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3297
  unreachable, !dbg !3297

13:                                               ; preds = %6
  ret i8* %8, !dbg !3298
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3285 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3299
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %2, metadata !3289, metadata !DIExpression()), !dbg !3299
  %3 = icmp eq i8* %2, null, !dbg !3301
  %4 = icmp ne i64 %0, 0, !dbg !3302
  %5 = and i1 %4, %3, !dbg !3303
  br i1 %5, label %6, label %7, !dbg !3303

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3304
  unreachable, !dbg !3304

7:                                                ; preds = %1
  ret i8* %2, !dbg !3305
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3306 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3310, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3311, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %2, metadata !3312, metadata !DIExpression()), !dbg !3313
  %4 = udiv i64 9223372036854775807, %2, !dbg !3314
  %5 = icmp ult i64 %4, %1, !dbg !3314
  br i1 %5, label %6, label %7, !dbg !3316

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3317
  unreachable, !dbg !3317

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()) #18, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %8, metadata !3324, metadata !DIExpression()) #18, !dbg !3325
  %9 = icmp eq i64 %8, 0, !dbg !3327
  %10 = icmp ne i8* %0, null, !dbg !3329
  %11 = and i1 %10, %9, !dbg !3330
  br i1 %11, label %12, label %13, !dbg !3330

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3331
  br label %19, !dbg !3333

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3334
  call void @llvm.dbg.value(metadata i8* %14, metadata !3319, metadata !DIExpression()) #18, !dbg !3325
  %15 = icmp eq i8* %14, null, !dbg !3335
  %16 = icmp ne i64 %8, 0, !dbg !3337
  %17 = and i1 %16, %15, !dbg !3338
  br i1 %17, label %18, label %19, !dbg !3338

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3339
  unreachable, !dbg !3339

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3325
  ret i8* %20, !dbg !3340
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3320 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %1, metadata !3324, metadata !DIExpression()), !dbg !3341
  %3 = icmp eq i64 %1, 0, !dbg !3342
  %4 = icmp ne i8* %0, null, !dbg !3343
  %5 = and i1 %4, %3, !dbg !3344
  br i1 %5, label %6, label %7, !dbg !3344

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3345
  br label %13, !dbg !3346

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3347
  call void @llvm.dbg.value(metadata i8* %8, metadata !3319, metadata !DIExpression()), !dbg !3341
  %9 = icmp eq i8* %8, null, !dbg !3348
  %10 = icmp ne i64 %1, 0, !dbg !3349
  %11 = and i1 %10, %9, !dbg !3350
  br i1 %11, label %12, label %13, !dbg !3350

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3351
  unreachable, !dbg !3351

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3341
  ret i8* %14, !dbg !3352
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !546 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !551, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64* %1, metadata !552, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %2, metadata !553, metadata !DIExpression()), !dbg !3353
  %4 = load i64, i64* %1, align 8, !dbg !3354, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %4, metadata !554, metadata !DIExpression()), !dbg !3353
  %5 = icmp eq i8* %0, null, !dbg !3355
  br i1 %5, label %6, label %20, !dbg !3357

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3358
  br i1 %7, label %8, label %13, !dbg !3361

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %9, metadata !554, metadata !DIExpression()), !dbg !3353
  %10 = icmp ugt i64 %2, 128, !dbg !3364
  %11 = zext i1 %10 to i64, !dbg !3364
  %12 = add nuw nsw i64 %9, %11, !dbg !3365
  call void @llvm.dbg.value(metadata i64 %12, metadata !554, metadata !DIExpression()), !dbg !3353
  br label %13, !dbg !3366

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3353
  call void @llvm.dbg.value(metadata i64 %14, metadata !554, metadata !DIExpression()), !dbg !3353
  %15 = udiv i64 9223372036854775807, %2, !dbg !3367
  %16 = icmp ult i64 %15, %14, !dbg !3367
  br i1 %16, label %19, label %17, !dbg !3369

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !554, metadata !DIExpression()), !dbg !3353
  store i64 %14, i64* %1, align 8, !dbg !3370, !tbaa !2592
  %18 = mul i64 %14, %2, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()) #18, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %28, metadata !3324, metadata !DIExpression()) #18, !dbg !3372
  br label %31, !dbg !3374

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3375
  unreachable, !dbg !3375

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3376
  %22 = icmp ugt i64 %21, %4, !dbg !3379
  br i1 %22, label %24, label %23, !dbg !3380

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3381
  unreachable, !dbg !3381

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3382
  %26 = add nuw i64 %4, 1, !dbg !3383
  %27 = add i64 %26, %25, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %27, metadata !554, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %27, metadata !554, metadata !DIExpression()), !dbg !3353
  store i64 %27, i64* %1, align 8, !dbg !3370, !tbaa !2592
  %28 = mul i64 %27, %2, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()) #18, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %28, metadata !3324, metadata !DIExpression()) #18, !dbg !3372
  %29 = icmp eq i64 %28, 0, !dbg !3385
  br i1 %29, label %30, label %31, !dbg !3374

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3386
  br label %38, !dbg !3387

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %33, metadata !3319, metadata !DIExpression()) #18, !dbg !3372
  %34 = icmp eq i8* %33, null, !dbg !3389
  %35 = icmp ne i64 %32, 0, !dbg !3390
  %36 = and i1 %35, %34, !dbg !3391
  br i1 %36, label %37, label %38, !dbg !3391

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3392
  unreachable, !dbg !3392

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3372
  ret i8* %39, !dbg !3393
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3394 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()) #18, !dbg !3398
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3400
  call void @llvm.dbg.value(metadata i8* %2, metadata !3289, metadata !DIExpression()) #18, !dbg !3398
  %3 = icmp eq i8* %2, null, !dbg !3401
  %4 = icmp ne i64 %0, 0, !dbg !3402
  %5 = and i1 %4, %3, !dbg !3403
  br i1 %5, label %6, label %7, !dbg !3403

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3404
  unreachable, !dbg !3404

7:                                                ; preds = %1
  ret i8* %2, !dbg !3405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3406 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3410, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i64* %1, metadata !3411, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata i8* %0, metadata !551, metadata !DIExpression()) #18, !dbg !3413
  call void @llvm.dbg.value(metadata i64* %1, metadata !552, metadata !DIExpression()) #18, !dbg !3413
  call void @llvm.dbg.value(metadata i64 1, metadata !553, metadata !DIExpression()) #18, !dbg !3413
  %3 = load i64, i64* %1, align 8, !dbg !3415, !tbaa !2592
  call void @llvm.dbg.value(metadata i64 %3, metadata !554, metadata !DIExpression()) #18, !dbg !3413
  %4 = icmp eq i8* %0, null, !dbg !3416
  br i1 %4, label %5, label %12, !dbg !3417

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3418
  br i1 %6, label %9, label %7, !dbg !3419

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !554, metadata !DIExpression()) #18, !dbg !3413
  %8 = icmp slt i64 %3, 0, !dbg !3420
  br i1 %8, label %11, label %9, !dbg !3421

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !554, metadata !DIExpression()) #18, !dbg !3413
  store i64 %10, i64* %1, align 8, !dbg !3422, !tbaa !2592
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()) #18, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %18, metadata !3324, metadata !DIExpression()) #18, !dbg !3423
  br label %21, !dbg !3425

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3426
  unreachable, !dbg !3426

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3427
  br i1 %13, label %15, label %14, !dbg !3428

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3429
  unreachable, !dbg !3429

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3430
  %17 = add nuw nsw i64 %3, 1, !dbg !3431
  %18 = add nuw nsw i64 %17, %16, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %18, metadata !554, metadata !DIExpression()) #18, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %18, metadata !554, metadata !DIExpression()) #18, !dbg !3413
  store i64 %18, i64* %1, align 8, !dbg !3422, !tbaa !2592
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()) #18, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %18, metadata !3324, metadata !DIExpression()) #18, !dbg !3423
  %19 = icmp eq i64 %18, 0, !dbg !3433
  br i1 %19, label %20, label %21, !dbg !3425

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3434
  br label %28, !dbg !3435

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %23, metadata !3319, metadata !DIExpression()) #18, !dbg !3423
  %24 = icmp eq i8* %23, null, !dbg !3437
  %25 = icmp ne i64 %22, 0, !dbg !3438
  %26 = and i1 %25, %24, !dbg !3439
  br i1 %26, label %27, label %28, !dbg !3439

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3440
  unreachable, !dbg !3440

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3423
  ret i8* %29, !dbg !3441
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3442 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3444, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %0, metadata !3446, metadata !DIExpression()) #18, !dbg !3451
  call void @llvm.dbg.value(metadata i64 1, metadata !3449, metadata !DIExpression()) #18, !dbg !3451
  %2 = icmp slt i64 %0, 0, !dbg !3453
  br i1 %2, label %6, label %3, !dbg !3455

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3456
  call void @llvm.dbg.value(metadata i8* %4, metadata !3450, metadata !DIExpression()) #18, !dbg !3451
  %5 = icmp eq i8* %4, null, !dbg !3457
  br i1 %5, label %6, label %7, !dbg !3458

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3459
  unreachable, !dbg !3459

7:                                                ; preds = %3
  ret i8* %4, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3447 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3446, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3461
  %3 = udiv i64 9223372036854775807, %1, !dbg !3462
  %4 = icmp ult i64 %3, %0, !dbg !3462
  br i1 %4, label %8, label %5, !dbg !3463

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3464
  call void @llvm.dbg.value(metadata i8* %6, metadata !3450, metadata !DIExpression()), !dbg !3461
  %7 = icmp eq i8* %6, null, !dbg !3465
  br i1 %7, label %8, label %9, !dbg !3466

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3467
  unreachable, !dbg !3467

9:                                                ; preds = %5
  ret i8* %6, !dbg !3468
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3469 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3473, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %1, metadata !3474, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %1, metadata !3284, metadata !DIExpression()) #18, !dbg !3476
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3478
  call void @llvm.dbg.value(metadata i8* %3, metadata !3289, metadata !DIExpression()) #18, !dbg !3476
  %4 = icmp eq i8* %3, null, !dbg !3479
  %5 = icmp ne i64 %1, 0, !dbg !3480
  %6 = and i1 %5, %4, !dbg !3481
  br i1 %6, label %7, label %8, !dbg !3481

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3482
  unreachable, !dbg !3482

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3483, metadata !DIExpression()) #18, !dbg !3492
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()) #18, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %1, metadata !3491, metadata !DIExpression()) #18, !dbg !3492
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3494
  ret i8* %3, !dbg !3495
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3498, metadata !DIExpression()), !dbg !3499
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3500
  %3 = add i64 %2, 1, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %0, metadata !3473, metadata !DIExpression()) #18, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3474, metadata !DIExpression()) #18, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %3, metadata !3284, metadata !DIExpression()) #18, !dbg !3504
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %4, metadata !3289, metadata !DIExpression()) #18, !dbg !3504
  %5 = icmp eq i8* %4, null, !dbg !3507
  %6 = icmp ne i64 %3, 0, !dbg !3508
  %7 = and i1 %6, %5, !dbg !3509
  br i1 %7, label %8, label %9, !dbg !3509

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3510
  unreachable, !dbg !3510

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3483, metadata !DIExpression()) #18, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %0, metadata !3490, metadata !DIExpression()) #18, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %3, metadata !3491, metadata !DIExpression()) #18, !dbg !3511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3513
  ret i8* %4, !dbg !3514
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3515 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3516, !tbaa !1313
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.111, i64 0, i64 0), i32 5) #18, !dbg !3517
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i64 0, i64 0), i8* %2) #18, !dbg !3518
  tail call void @abort() #22, !dbg !3519
  unreachable, !dbg !3519
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xgetgroups(i8* %0, i32 %1, i32** %2) local_unnamed_addr #8 !dbg !3520 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3522, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32 %1, metadata !3523, metadata !DIExpression()), !dbg !3526
  call void @llvm.dbg.value(metadata i32** %2, metadata !3524, metadata !DIExpression()), !dbg !3526
  %4 = tail call i32 @mgetgroups(i8* %0, i32 %1, i32** %2) #18, !dbg !3527
  call void @llvm.dbg.value(metadata i32 %4, metadata !3525, metadata !DIExpression()), !dbg !3526
  %5 = icmp eq i32 %4, -1, !dbg !3528
  br i1 %5, label %6, label %11, !dbg !3530

6:                                                ; preds = %3
  %7 = tail call i32* @__errno_location() #24, !dbg !3531
  %8 = load i32, i32* %7, align 4, !dbg !3531, !tbaa !1313
  %9 = icmp eq i32 %8, 12, !dbg !3532
  br i1 %9, label %10, label %11, !dbg !3533

10:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3534
  unreachable, !dbg !3534

11:                                               ; preds = %6, %3
  ret i32 %4, !dbg !3535
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3536 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %1, metadata !3539, metadata !DIExpression()), !dbg !3544
  %3 = icmp eq i64 %0, 0, !dbg !3545
  %4 = icmp eq i64 %1, 0, !dbg !3546
  %5 = or i1 %3, %4, !dbg !3547
  br i1 %5, label %11, label %6, !dbg !3547

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3541, metadata !DIExpression()), !dbg !3548
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3549
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3549
  br i1 %8, label %9, label %11, !dbg !3551

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3552
  store i32 12, i32* %10, align 4, !dbg !3554, !tbaa !1313
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3538, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i64 %12, metadata !3539, metadata !DIExpression()), !dbg !3544
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3555
  call void @llvm.dbg.value(metadata i8* %14, metadata !3540, metadata !DIExpression()), !dbg !3544
  br label %15, !dbg !3556

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3544
  ret i8* %16, !dbg !3557
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3558 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3566, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %1, metadata !3567, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i64 %2, metadata !3568, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3569, metadata !DIExpression()), !dbg !3575
  %6 = bitcast i32* %5 to i8*, !dbg !3576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3576
  %7 = icmp eq i32* %0, null, !dbg !3577
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3579
  call void @llvm.dbg.value(metadata i32* %8, metadata !3566, metadata !DIExpression()), !dbg !3575
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %9, metadata !3570, metadata !DIExpression()), !dbg !3575
  %10 = icmp ugt i64 %9, -3, !dbg !3581
  %11 = icmp ne i64 %2, 0, !dbg !3582
  %12 = and i1 %11, %10, !dbg !3583
  br i1 %12, label %13, label %18, !dbg !3583

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3584
  br i1 %14, label %18, label %15, !dbg !3585

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3586, !tbaa !1364
  call void @llvm.dbg.value(metadata i8 %16, metadata !3572, metadata !DIExpression()), !dbg !3587
  %17 = zext i8 %16 to i32, !dbg !3588
  store i32 %17, i32* %8, align 4, !dbg !3589, !tbaa !1313
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3575
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3590
  ret i64 %19, !dbg !3590
}

; Function Attrs: nounwind
declare !dbg !576 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3591 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3597, metadata !DIExpression()), !dbg !3602
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3603
  call void @llvm.dbg.value(metadata i1 undef, metadata !3598, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3604, metadata !DIExpression()), !dbg !3607
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3609
  %4 = load i32, i32* %3, align 8, !dbg !3609, !tbaa !3610
  %5 = and i32 %4, 32, !dbg !3609
  %6 = icmp eq i32 %5, 0, !dbg !3611
  call void @llvm.dbg.value(metadata i1 %6, metadata !3600, metadata !DIExpression()), !dbg !3602
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3612
  %8 = icmp ne i32 %7, 0, !dbg !3613
  call void @llvm.dbg.value(metadata i1 %8, metadata !3601, metadata !DIExpression()), !dbg !3602
  br i1 %6, label %9, label %19, !dbg !3614

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3616
  call void @llvm.dbg.value(metadata i1 %10, metadata !3598, metadata !DIExpression()), !dbg !3602
  %11 = xor i1 %8, true, !dbg !3617
  %12 = or i1 %10, %11, !dbg !3617
  %13 = sext i1 %8 to i32, !dbg !3617
  br i1 %12, label %22, label %14, !dbg !3617

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3618
  %16 = load i32, i32* %15, align 4, !dbg !3618, !tbaa !1313
  %17 = icmp ne i32 %16, 9, !dbg !3619
  %18 = sext i1 %17 to i32, !dbg !3620
  br label %22, !dbg !3620

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3621

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3623
  store i32 0, i32* %21, align 4, !dbg !3625, !tbaa !1313
  br label %22, !dbg !3623

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3602
  ret i32 %23, !dbg !3626
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3627 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3629, metadata !DIExpression()), !dbg !3634
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3635
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3635
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3630, metadata !DIExpression()), !dbg !3636
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3637
  %5 = icmp eq i32 %4, 0, !dbg !3637
  br i1 %5, label %6, label %13, !dbg !3639

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3640
  %8 = load i16, i16* %7, align 16, !dbg !3640
  %9 = icmp eq i16 %8, 67, !dbg !3640
  br i1 %9, label %13, label %10, !dbg !3641

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i64 6), !dbg !3642
  %12 = icmp ne i32 %11, 0, !dbg !3643
  br label %13, !dbg !3641

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3634
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3644
  ret i1 %14, !dbg !3644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3645 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %1, metadata !3647, metadata !DIExpression()), !dbg !3649
  %2 = icmp eq i8* %1, null, !dbg !3650
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.126, i64 0, i64 0), i8* %1, !dbg !3652
  call void @llvm.dbg.value(metadata i8* %3, metadata !3647, metadata !DIExpression()), !dbg !3649
  %4 = load i8, i8* %3, align 1, !dbg !3653, !tbaa !1364
  %5 = icmp eq i8 %4, 0, !dbg !3657
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.127, i64 0, i64 0), i8* %3, !dbg !3658
  call void @llvm.dbg.value(metadata i8* %6, metadata !3647, metadata !DIExpression()), !dbg !3649
  ret i8* %6, !dbg !3659
}

; Function Attrs: nounwind
declare !dbg !1028 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @mgetgroups(i8* %0, i32 %1, i32** nocapture %2) local_unnamed_addr #8 !dbg !1035 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1041, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 %1, metadata !1042, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32** %2, metadata !1043, metadata !DIExpression()), !dbg !3660
  %5 = bitcast i32* %4 to i8*, !dbg !3661
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !3661
  %6 = icmp eq i8* %0, null, !dbg !3662
  br i1 %6, label %43, label %7, !dbg !3663

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !1044, metadata !DIExpression()), !dbg !3660
  store i32 10, i32* %4, align 4, !dbg !3664, !tbaa !1313
  call void @llvm.dbg.value(metadata i32* null, metadata !3665, metadata !DIExpression()) #18, !dbg !3671
  call void @llvm.dbg.value(metadata i64 10, metadata !3670, metadata !DIExpression()) #18, !dbg !3671
  %8 = tail call dereferenceable_or_null(40) i8* @malloc(i64 40), !dbg !3673
  call void @llvm.dbg.value(metadata i8* %8, metadata !1046, metadata !DIExpression()), !dbg !3660
  %9 = icmp eq i8* %8, null, !dbg !3674
  br i1 %9, label %144, label %10, !dbg !3676

10:                                               ; preds = %7, %38
  %11 = phi i32 [ %39, %38 ], [ 10, %7 ], !dbg !3677
  %12 = phi i8* [ %29, %38 ], [ %8, %7 ]
  %13 = bitcast i8* %12 to i32*, !dbg !3678
  call void @llvm.dbg.value(metadata i32* %13, metadata !1046, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 %11, metadata !1044, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 %11, metadata !1051, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i32* %4, metadata !1044, metadata !DIExpression(DW_OP_deref)), !dbg !3660
  %14 = call i32 @getgrouplist(i8* nonnull %0, i32 %1, i32* nonnull %13, i32* nonnull %4) #18, !dbg !3680
  call void @llvm.dbg.value(metadata i32 %14, metadata !1045, metadata !DIExpression()), !dbg !3660
  %15 = icmp slt i32 %14, 0, !dbg !3681
  %16 = load i32, i32* %4, align 4, !dbg !3679, !tbaa !1313
  %17 = icmp eq i32 %11, %16, !dbg !3683
  %18 = and i1 %15, %17, !dbg !3684
  call void @llvm.dbg.value(metadata i32 %16, metadata !1044, metadata !DIExpression()), !dbg !3660
  br i1 %18, label %19, label %21, !dbg !3684

19:                                               ; preds = %10
  %20 = shl nsw i32 %11, 1, !dbg !3685
  call void @llvm.dbg.value(metadata i32 %20, metadata !1044, metadata !DIExpression()), !dbg !3660
  store i32 %20, i32* %4, align 4, !dbg !3685, !tbaa !1313
  br label %21, !dbg !3686

21:                                               ; preds = %10, %19
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ], !dbg !3687
  call void @llvm.dbg.value(metadata i32 %22, metadata !1044, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %13, metadata !3665, metadata !DIExpression()) #18, !dbg !3688
  call void @llvm.dbg.value(metadata i32 %22, metadata !3670, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !3688
  %23 = icmp slt i32 %22, 0, !dbg !3690
  br i1 %23, label %24, label %26, !dbg !3692

24:                                               ; preds = %21
  %25 = tail call i32* @__errno_location() #24, !dbg !3693
  store i32 12, i32* %25, align 4, !dbg !3695, !tbaa !1313
  call void @llvm.dbg.value(metadata i8* %29, metadata !1047, metadata !DIExpression()), !dbg !3679
  br label %33, !dbg !3696

26:                                               ; preds = %21
  %27 = zext i32 %22 to i64, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %27, metadata !3670, metadata !DIExpression()) #18, !dbg !3688
  %28 = shl nuw nsw i64 %27, 2, !dbg !3697
  %29 = call i8* @realloc(i8* nonnull %12, i64 %28) #18, !dbg !3698
  call void @llvm.dbg.value(metadata i8* %29, metadata !1047, metadata !DIExpression()), !dbg !3679
  %30 = icmp eq i8* %29, null, !dbg !3699
  br i1 %30, label %31, label %36, !dbg !3696

31:                                               ; preds = %26
  %32 = tail call i32* @__errno_location() #24, !dbg !3700
  br label %33, !dbg !3700

33:                                               ; preds = %31, %24
  %34 = phi i32* [ %32, %31 ], [ %25, %24 ], !dbg !3700
  %35 = load i32, i32* %34, align 4, !dbg !3700, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %35, metadata !1052, metadata !DIExpression()), !dbg !3701
  call void @free(i8* nonnull %12) #18, !dbg !3702
  store i32 %35, i32* %34, align 4, !dbg !3703, !tbaa !1313
  br label %144

36:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %29, metadata !1047, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %29, metadata !1046, metadata !DIExpression()), !dbg !3660
  %37 = icmp sgt i32 %14, -1, !dbg !3704
  br i1 %37, label %40, label %38, !dbg !3706

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4, !dbg !3677, !tbaa !1313
  br label %10, !dbg !3706

40:                                               ; preds = %36
  %41 = bitcast i32** %2 to i8**, !dbg !3707
  store i8* %29, i8** %41, align 8, !dbg !3707, !tbaa !1238
  %42 = load i32, i32* %4, align 4, !dbg !3709, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %42, metadata !1044, metadata !DIExpression()), !dbg !3660
  br label %144, !dbg !3710

43:                                               ; preds = %3
  %44 = tail call i32 @getgroups(i32 0, i32* null) #18, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %44, metadata !1044, metadata !DIExpression()), !dbg !3660
  store i32 %44, i32* %4, align 4, !dbg !3712, !tbaa !1313
  %45 = icmp slt i32 %44, 0, !dbg !3713
  br i1 %45, label %46, label %58, !dbg !3715

46:                                               ; preds = %43
  %47 = tail call i32* @__errno_location() #24, !dbg !3716
  %48 = load i32, i32* %47, align 4, !dbg !3716, !tbaa !1313
  %49 = icmp eq i32 %48, 38, !dbg !3719
  br i1 %49, label %50, label %144, !dbg !3720

50:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32* null, metadata !3665, metadata !DIExpression()) #18, !dbg !3721
  call void @llvm.dbg.value(metadata i64 1, metadata !3670, metadata !DIExpression()) #18, !dbg !3721
  %51 = tail call dereferenceable_or_null(4) i8* @malloc(i64 4), !dbg !3723
  call void @llvm.dbg.value(metadata i8* %51, metadata !1046, metadata !DIExpression()), !dbg !3660
  %52 = icmp eq i8* %51, null, !dbg !3724
  br i1 %52, label %144, label %53, !dbg !3725

53:                                               ; preds = %50
  %54 = bitcast i8* %51 to i32*, !dbg !3723
  call void @llvm.dbg.value(metadata i32* %54, metadata !1046, metadata !DIExpression()), !dbg !3660
  %55 = bitcast i32** %2 to i8**, !dbg !3726
  store i8* %51, i8** %55, align 8, !dbg !3726, !tbaa !1238
  store i32 %1, i32* %54, align 4, !dbg !3728, !tbaa !1313
  %56 = icmp ne i32 %1, -1, !dbg !3729
  %57 = zext i1 %56 to i32, !dbg !3729
  br label %144, !dbg !3730

58:                                               ; preds = %43
  %59 = icmp ne i32 %44, 0, !dbg !3731
  %60 = icmp eq i32 %1, -1, !dbg !3733
  %61 = and i1 %60, %59, !dbg !3734
  br i1 %61, label %64, label %62, !dbg !3734

62:                                               ; preds = %58
  call void @llvm.dbg.value(metadata i32 %44, metadata !1044, metadata !DIExpression()), !dbg !3660
  %63 = add nuw nsw i32 %44, 1, !dbg !3735
  call void @llvm.dbg.value(metadata i32 %63, metadata !1044, metadata !DIExpression()), !dbg !3660
  store i32 %63, i32* %4, align 4, !dbg !3735, !tbaa !1313
  br label %64, !dbg !3736

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %44, %58 ], [ %63, %62 ], !dbg !3737
  call void @llvm.dbg.value(metadata i32 %65, metadata !1044, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* null, metadata !3665, metadata !DIExpression()) #18, !dbg !3738
  call void @llvm.dbg.value(metadata i32 %65, metadata !3670, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #18, !dbg !3738
  %66 = zext i32 %65 to i64, !dbg !3737
  call void @llvm.dbg.value(metadata i64 %66, metadata !3670, metadata !DIExpression()) #18, !dbg !3738
  %67 = shl nuw nsw i64 %66, 2, !dbg !3740
  %68 = tail call i8* @malloc(i64 %67), !dbg !3741
  %69 = bitcast i8* %68 to i32*, !dbg !3741
  call void @llvm.dbg.value(metadata i32* %69, metadata !1046, metadata !DIExpression()), !dbg !3660
  %70 = icmp eq i8* %68, null, !dbg !3742
  br i1 %70, label %144, label %71, !dbg !3744

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 undef, metadata !1044, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 %65, metadata !1044, metadata !DIExpression()), !dbg !3660
  %72 = icmp ne i32 %1, -1, !dbg !3745
  %73 = sext i1 %72 to i32, !dbg !3746
  %74 = add nsw i32 %65, %73, !dbg !3746
  %75 = zext i1 %72 to i64, !dbg !3747
  %76 = getelementptr inbounds i32, i32* %69, i64 %75, !dbg !3747
  %77 = tail call i32 @getgroups(i32 %74, i32* nonnull %76) #18, !dbg !3748
  call void @llvm.dbg.value(metadata i32 %77, metadata !1045, metadata !DIExpression()), !dbg !3660
  %78 = icmp slt i32 %77, 0, !dbg !3749
  br i1 %78, label %79, label %82, !dbg !3750

79:                                               ; preds = %71
  %80 = tail call i32* @__errno_location() #24, !dbg !3751
  %81 = load i32, i32* %80, align 4, !dbg !3751, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %81, metadata !1055, metadata !DIExpression()), !dbg !3752
  tail call void @free(i8* nonnull %68) #18, !dbg !3753
  store i32 %81, i32* %80, align 4, !dbg !3754, !tbaa !1313
  br label %144

82:                                               ; preds = %71
  br i1 %60, label %85, label %83, !dbg !3755

83:                                               ; preds = %82
  store i32 %1, i32* %69, align 4, !dbg !3757, !tbaa !1313
  %84 = add nuw nsw i32 %77, 1, !dbg !3759
  call void @llvm.dbg.value(metadata i32 %84, metadata !1045, metadata !DIExpression()), !dbg !3660
  br label %85, !dbg !3760

85:                                               ; preds = %82, %83
  %86 = phi i32 [ %84, %83 ], [ %77, %82 ], !dbg !3660
  call void @llvm.dbg.value(metadata i32 %86, metadata !1045, metadata !DIExpression()), !dbg !3660
  %87 = bitcast i32** %2 to i8**, !dbg !3761
  store i8* %68, i8** %87, align 8, !dbg !3761, !tbaa !1238
  %88 = icmp sgt i32 %86, 1, !dbg !3762
  br i1 %88, label %89, label %144, !dbg !3763

89:                                               ; preds = %85
  %90 = load i32, i32* %69, align 4, !dbg !3764, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %90, metadata !1058, metadata !DIExpression()), !dbg !3765
  %91 = zext i32 %86 to i64, !dbg !3766
  %92 = getelementptr inbounds i32, i32* %69, i64 %91, !dbg !3766
  call void @llvm.dbg.value(metadata i32* %92, metadata !1062, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32* %69, metadata !1061, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3765
  %93 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !3767
  %94 = bitcast i8* %93 to i32*, !dbg !3767
  call void @llvm.dbg.value(metadata i32* %94, metadata !1061, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 %86, metadata !1045, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %69, metadata !1046, metadata !DIExpression()), !dbg !3660
  %95 = icmp ugt i32* %92, %94, !dbg !3769
  br i1 %95, label %96, label %144, !dbg !3771

96:                                               ; preds = %89
  %97 = shl nuw nsw i64 %91, 2, !dbg !3771
  %98 = add nsw i64 %97, -5, !dbg !3771
  %99 = and i64 %98, 4, !dbg !3771
  %100 = icmp eq i64 %99, 0, !dbg !3771
  br i1 %100, label %101, label %115, !dbg !3771

101:                                              ; preds = %96
  call void @llvm.dbg.value(metadata i32 %86, metadata !1045, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %69, metadata !1046, metadata !DIExpression()), !dbg !3660
  %102 = load i32, i32* %94, align 4, !dbg !3772, !tbaa !1313
  %103 = icmp eq i32 %102, %90, !dbg !3775
  br i1 %103, label %107, label %104, !dbg !3776

104:                                              ; preds = %101
  %105 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !3777
  %106 = bitcast i8* %105 to i32*, !dbg !3777
  call void @llvm.dbg.value(metadata i32* %106, metadata !1046, metadata !DIExpression()), !dbg !3660
  store i32 %102, i32* %106, align 4, !dbg !3778, !tbaa !1313
  br label %109

107:                                              ; preds = %101
  %108 = add nsw i32 %86, -1, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %108, metadata !1045, metadata !DIExpression()), !dbg !3660
  br label %109, !dbg !3780

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %90, %107 ], [ %102, %104 ]
  %111 = phi i32* [ %69, %107 ], [ %106, %104 ], !dbg !3660
  %112 = phi i32 [ %108, %107 ], [ %86, %104 ], !dbg !3660
  call void @llvm.dbg.value(metadata i32 %112, metadata !1045, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %111, metadata !1046, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %94, metadata !1061, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3765
  %113 = getelementptr inbounds i8, i8* %68, i64 8, !dbg !3767
  %114 = bitcast i8* %113 to i32*, !dbg !3767
  call void @llvm.dbg.value(metadata i32* %114, metadata !1061, metadata !DIExpression()), !dbg !3765
  br label %115, !dbg !3771

115:                                              ; preds = %109, %96
  %116 = phi i32 [ %90, %96 ], [ %110, %109 ]
  %117 = phi i32* [ %94, %96 ], [ %114, %109 ]
  %118 = phi i32 [ %86, %96 ], [ %112, %109 ]
  %119 = phi i32* [ %69, %96 ], [ %111, %109 ]
  %120 = phi i32 [ undef, %96 ], [ %112, %109 ]
  %121 = icmp eq i64 %98, 3, !dbg !3771
  br i1 %121, label %144, label %122, !dbg !3771

122:                                              ; preds = %115, %150
  %123 = phi i32 [ %151, %150 ], [ %116, %115 ]
  %124 = phi i32* [ %154, %150 ], [ %117, %115 ]
  %125 = phi i32 [ %153, %150 ], [ %118, %115 ]
  %126 = phi i32* [ %152, %150 ], [ %119, %115 ]
  call void @llvm.dbg.value(metadata i32 %125, metadata !1045, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %126, metadata !1046, metadata !DIExpression()), !dbg !3660
  %127 = load i32, i32* %124, align 4, !dbg !3772, !tbaa !1313
  %128 = icmp eq i32 %127, %90, !dbg !3781
  %129 = icmp eq i32 %127, %123, !dbg !3775
  %130 = or i1 %128, %129, !dbg !3776
  br i1 %130, label %131, label %133, !dbg !3776

131:                                              ; preds = %122
  %132 = add nsw i32 %125, -1, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %132, metadata !1045, metadata !DIExpression()), !dbg !3660
  br label %135, !dbg !3780

133:                                              ; preds = %122
  %134 = getelementptr inbounds i32, i32* %126, i64 1, !dbg !3777
  call void @llvm.dbg.value(metadata i32* %134, metadata !1046, metadata !DIExpression()), !dbg !3660
  store i32 %127, i32* %134, align 4, !dbg !3778, !tbaa !1313
  br label %135

135:                                              ; preds = %131, %133
  %136 = phi i32 [ %123, %131 ], [ %127, %133 ]
  %137 = phi i32* [ %126, %131 ], [ %134, %133 ], !dbg !3660
  %138 = phi i32 [ %132, %131 ], [ %125, %133 ], !dbg !3660
  call void @llvm.dbg.value(metadata i32 %138, metadata !1045, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %137, metadata !1046, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %124, metadata !1061, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3765
  %139 = getelementptr inbounds i32, i32* %124, i64 1, !dbg !3767
  call void @llvm.dbg.value(metadata i32* %139, metadata !1061, metadata !DIExpression()), !dbg !3765
  %140 = load i32, i32* %139, align 4, !dbg !3772, !tbaa !1313
  %141 = icmp eq i32 %140, %90, !dbg !3781
  %142 = icmp eq i32 %140, %136, !dbg !3775
  %143 = or i1 %141, %142, !dbg !3776
  br i1 %143, label %148, label %146, !dbg !3776

144:                                              ; preds = %115, %150, %89, %40, %33, %85, %64, %46, %50, %7, %79, %53
  %145 = phi i32 [ %57, %53 ], [ -1, %79 ], [ -1, %7 ], [ -1, %50 ], [ -1, %46 ], [ -1, %64 ], [ %86, %85 ], [ %42, %40 ], [ -1, %33 ], [ %86, %89 ], [ %120, %115 ], [ %153, %150 ], !dbg !3660
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !3782
  ret i32 %145, !dbg !3782

146:                                              ; preds = %135
  %147 = getelementptr inbounds i32, i32* %137, i64 1, !dbg !3777
  call void @llvm.dbg.value(metadata i32* %147, metadata !1046, metadata !DIExpression()), !dbg !3660
  store i32 %140, i32* %147, align 4, !dbg !3778, !tbaa !1313
  br label %150

148:                                              ; preds = %135
  %149 = add nsw i32 %138, -1, !dbg !3779
  call void @llvm.dbg.value(metadata i32 %149, metadata !1045, metadata !DIExpression()), !dbg !3660
  br label %150, !dbg !3780

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %136, %148 ], [ %140, %146 ]
  %152 = phi i32* [ %137, %148 ], [ %147, %146 ], !dbg !3660
  %153 = phi i32 [ %149, %148 ], [ %138, %146 ], !dbg !3660
  call void @llvm.dbg.value(metadata i32 %153, metadata !1045, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %152, metadata !1046, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32* %139, metadata !1061, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !3765
  %154 = getelementptr inbounds i32, i32* %124, i64 2, !dbg !3767
  call void @llvm.dbg.value(metadata i32* %154, metadata !1061, metadata !DIExpression()), !dbg !3765
  %155 = icmp ult i32* %154, %92, !dbg !3769
  br i1 %155, label %122, label %144, !dbg !3771, !llvm.loop !3783
}

declare !dbg !1066 i32 @getgrouplist(i8*, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3785 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3789, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i8* %1, metadata !3790, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i64 %2, metadata !3791, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i32 %0, metadata !3793, metadata !DIExpression()) #18, !dbg !3802
  call void @llvm.dbg.value(metadata i8* %1, metadata !3796, metadata !DIExpression()) #18, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %2, metadata !3797, metadata !DIExpression()) #18, !dbg !3802
  call void @llvm.dbg.value(metadata i32 %0, metadata !3804, metadata !DIExpression()) #18, !dbg !3810
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3812
  call void @llvm.dbg.value(metadata i8* %4, metadata !3809, metadata !DIExpression()) #18, !dbg !3810
  call void @llvm.dbg.value(metadata i8* %4, metadata !3798, metadata !DIExpression()) #18, !dbg !3802
  %5 = icmp eq i8* %4, null, !dbg !3813
  br i1 %5, label %6, label %9, !dbg !3814

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3815
  br i1 %7, label %19, label %8, !dbg !3818

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3819, !tbaa !1364
  br label %19, !dbg !3820

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3821
  call void @llvm.dbg.value(metadata i64 %10, metadata !3799, metadata !DIExpression()) #18, !dbg !3822
  %11 = icmp ult i64 %10, %2, !dbg !3823
  br i1 %11, label %12, label %14, !dbg !3825

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %1, metadata !3828, metadata !DIExpression()) #18, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %4, metadata !3831, metadata !DIExpression()) #18, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %13, metadata !3832, metadata !DIExpression()) #18, !dbg !3833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3835
  br label %19, !dbg !3836

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3837
  br i1 %15, label %19, label %16, !dbg !3840

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3841
  call void @llvm.dbg.value(metadata i8* %1, metadata !3828, metadata !DIExpression()) #18, !dbg !3843
  call void @llvm.dbg.value(metadata i8* %4, metadata !3831, metadata !DIExpression()) #18, !dbg !3843
  call void @llvm.dbg.value(metadata i64 %17, metadata !3832, metadata !DIExpression()) #18, !dbg !3843
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3845
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3846
  store i8 0, i8* %18, align 1, !dbg !3847, !tbaa !1364
  br label %19, !dbg !3848

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3849
  ret i32 %20, !dbg !3850
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3851 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %0, metadata !3804, metadata !DIExpression()) #18, !dbg !3855
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3857
  call void @llvm.dbg.value(metadata i8* %2, metadata !3809, metadata !DIExpression()) #18, !dbg !3855
  ret i8* %2, !dbg !3858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3859 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3865, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3866, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3868, metadata !DIExpression()), !dbg !3869
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3870
  call void @llvm.dbg.value(metadata i32 %2, metadata !3867, metadata !DIExpression()), !dbg !3869
  %3 = icmp slt i32 %2, 0, !dbg !3871
  br i1 %3, label %4, label %6, !dbg !3873

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3874
  br label %24, !dbg !3875

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3876
  %8 = icmp eq i32 %7, 0, !dbg !3876
  br i1 %8, label %13, label %9, !dbg !3878

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3879
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3880
  %12 = icmp eq i64 %11, -1, !dbg !3881
  br i1 %12, label %16, label %13, !dbg !3882

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3883
  %15 = icmp eq i32 %14, 0, !dbg !3883
  br i1 %15, label %16, label %18, !dbg !3884

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3866, metadata !DIExpression()), !dbg !3869
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %21, metadata !3868, metadata !DIExpression()), !dbg !3869
  br label %24, !dbg !3886

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3887
  %20 = load i32, i32* %19, align 4, !dbg !3887, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 %20, metadata !3866, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i32 %20, metadata !3866, metadata !DIExpression()), !dbg !3869
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3885
  call void @llvm.dbg.value(metadata i32 %21, metadata !3868, metadata !DIExpression()), !dbg !3869
  %22 = icmp eq i32 %20, 0, !dbg !3888
  br i1 %22, label %24, label %23, !dbg !3886

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3890, !tbaa !1313
  call void @llvm.dbg.value(metadata i32 -1, metadata !3868, metadata !DIExpression()), !dbg !3869
  br label %24, !dbg !3892

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3869
  ret i32 %25, !dbg !3893
}

; Function Attrs: nofree nounwind
declare !dbg !1079 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1114 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1115 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3894 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3900, metadata !DIExpression()), !dbg !3901
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3902
  br i1 %2, label %6, label %3, !dbg !3904

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3905
  %5 = icmp eq i32 %4, 0, !dbg !3905
  br i1 %5, label %6, label %8, !dbg !3906

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3907
  br label %17, !dbg !3908

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3909, metadata !DIExpression()) #18, !dbg !3914
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3916
  %10 = load i32, i32* %9, align 8, !dbg !3916, !tbaa !3610
  %11 = and i32 %10, 256, !dbg !3918
  %12 = icmp eq i32 %11, 0, !dbg !3918
  br i1 %12, label %15, label %13, !dbg !3919

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3920
  br label %15, !dbg !3920

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3921
  br label %17, !dbg !3922

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3901
  ret i32 %18, !dbg !3923
}

; Function Attrs: nofree nounwind
declare !dbg !1122 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3924 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3931, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i64 %1, metadata !3932, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata i32 %2, metadata !3933, metadata !DIExpression()), !dbg !3937
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3938
  %5 = load i8*, i8** %4, align 8, !dbg !3938, !tbaa !3939
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3940
  %7 = load i8*, i8** %6, align 8, !dbg !3940, !tbaa !3941
  %8 = icmp eq i8* %5, %7, !dbg !3942
  br i1 %8, label %9, label %28, !dbg !3943

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3944
  %11 = load i8*, i8** %10, align 8, !dbg !3944, !tbaa !1357
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3945
  %13 = load i8*, i8** %12, align 8, !dbg !3945, !tbaa !3946
  %14 = icmp eq i8* %11, %13, !dbg !3947
  br i1 %14, label %15, label %28, !dbg !3948

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3949
  %17 = load i8*, i8** %16, align 8, !dbg !3949, !tbaa !3950
  %18 = icmp eq i8* %17, null, !dbg !3951
  br i1 %18, label %19, label %28, !dbg !3952

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3953
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %21, metadata !3934, metadata !DIExpression()), !dbg !3955
  %22 = icmp eq i64 %21, -1, !dbg !3956
  br i1 %22, label %30, label %23, !dbg !3958

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3959
  %25 = load i32, i32* %24, align 8, !dbg !3960, !tbaa !3610
  %26 = and i32 %25, -17, !dbg !3960
  store i32 %26, i32* %24, align 8, !dbg !3960, !tbaa !3610
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3961
  store i64 %21, i64* %27, align 8, !dbg !3962, !tbaa !3963
  br label %30, !dbg !3964

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3965
  br label %30, !dbg !3966

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3937
  ret i32 %31, !dbg !3967
}

; Function Attrs: nofree nounwind
declare !dbg !1198 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind readonly }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!2, !167, !253, !258, !304, !494, !310, !351, !500, !488, !542, !563, !566, !570, !573, !592, !631, !638, !1031, !1073, !1076, !1119, !1160}
!llvm.ident = !{!1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201, !1201}
!llvm.module.flags = !{!1202, !1203, !1204, !1205, !1206}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 40, type: !154, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !153, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/groups.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !15, !76, !80, !84, !87, !90, !97, !10, !66, !112, !116, !121, !125, !126, !127, !132, !148, !152}
!6 = !DISubprogram(name: "dcgettext", scope: !7, file: !7, line: 51, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !12, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !17, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!16 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!17 = !DISubroutineType(types: !18)
!18 = !{!14, !12, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !39, !40, !41, !45, !47, !49, !53, !56, !58, !61, !64, !65, !67, !71, !72}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 51, baseType: !14, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 36, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 70, baseType: !19, size: 64, offset: 832)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 152, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 1)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 43, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 153, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !20, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !21, line: 37, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !20, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !21, line: 38, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !20, file: !21, line: 93, baseType: !19, size: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !20, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 20)
!76 = !DISubprogram(name: "set_program_name", scope: !77, file: !77, line: 37, type: !78, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!77 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!78 = !DISubroutineType(types: !79)
!79 = !{null, !12}
!80 = !DISubprogram(name: "setlocale", scope: !81, file: !81, line: 122, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!81 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!82 = !DISubroutineType(types: !83)
!83 = !{!10, !14, !12}
!84 = !DISubprogram(name: "bindtextdomain", scope: !7, file: !7, line: 86, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!85 = !DISubroutineType(types: !86)
!86 = !{!10, !12, !12}
!87 = !DISubprogram(name: "textdomain", scope: !7, file: !7, line: 82, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!88 = !DISubroutineType(types: !89)
!89 = !{!10, !12}
!90 = !DISubprogram(name: "atexit", scope: !91, file: !91, line: 595, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!91 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!92 = !DISubroutineType(types: !93)
!93 = !{!14, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DISubprogram(name: "getopt_long", scope: !98, file: !98, line: 66, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!98 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!99 = !DISubroutineType(types: !100)
!100 = !{!14, !14, !101, !12, !103, !110}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !98, line: 50, size: 256, elements: !106)
!106 = !{!107, !108, !109, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !98, line: 52, baseType: !12, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !105, file: !98, line: 55, baseType: !14, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !105, file: !98, line: 56, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !105, file: !98, line: 57, baseType: !14, size: 32, offset: 192)
!112 = !DISubprogram(name: "version_etc", scope: !113, file: !113, line: 69, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!113 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!114 = !DISubroutineType(types: !115)
!115 = !{null, !19, !12, !12, !12, null}
!116 = !DISubprogram(name: "getuid", scope: !117, file: !117, line: 675, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!117 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!118 = !DISubroutineType(types: !119)
!119 = !{!120}
!120 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!121 = !DISubprogram(name: "error", scope: !122, file: !122, line: 52, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!122 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!123 = !DISubroutineType(types: !124)
!124 = !{null, !14, !14, !12, null}
!125 = !DISubprogram(name: "getegid", scope: !117, file: !117, line: 684, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!126 = !DISubprogram(name: "getgid", scope: !117, file: !117, line: 681, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!127 = !DISubprogram(name: "print_group_list", scope: !128, file: !128, line: 19, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!128 = !DIFile(filename: "src/group-list.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !12, !120, !120, !120, !131, !11}
!131 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!132 = !DISubprogram(name: "getpwnam", scope: !133, file: !133, line: 116, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!133 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !12}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !133, line: 49, size: 384, elements: !138)
!138 = !{!139, !140, !141, !143, !145, !146, !147}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !137, file: !133, line: 51, baseType: !10, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !137, file: !133, line: 52, baseType: !10, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !137, file: !133, line: 54, baseType: !142, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !43, line: 146, baseType: !120)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !137, file: !133, line: 55, baseType: !144, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !43, line: 147, baseType: !120)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !137, file: !133, line: 56, baseType: !10, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !137, file: !133, line: 57, baseType: !10, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !137, file: !133, line: 58, baseType: !10, size: 64, offset: 320)
!148 = !DISubprogram(name: "quote", scope: !149, file: !149, line: 44, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!149 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!150 = !DISubroutineType(types: !151)
!151 = !{!12, !12}
!152 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !{!0}
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 768, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 3)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "buf", scope: !159, file: !160, line: 96, type: !248, isLocal: true, isDefinition: true)
!159 = distinct !DISubprogram(name: "gidtostr_ptr", scope: !160, file: !160, line: 94, type: !161, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !246)
!160 = !DIFile(filename: "src/group-list.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!161 = !DISubroutineType(types: !162)
!162 = !{!10, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !166, line: 64, baseType: !144)
!166 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !168, globals: !245, splitDebugInlining: false, nameTableKind: None)
!168 = !{!169, !66, !182, !185, !6, !148, !121, !191, !194, !70, !206, !152, !241}
!169 = !DISubprogram(name: "getpwuid", scope: !133, file: !133, line: 110, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !120}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !133, line: 49, size: 384, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !173, file: !133, line: 51, baseType: !10, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !173, file: !133, line: 52, baseType: !10, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !173, file: !133, line: 54, baseType: !142, size: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !173, file: !133, line: 55, baseType: !144, size: 32, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !173, file: !133, line: 56, baseType: !10, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !173, file: !133, line: 57, baseType: !10, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !173, file: !133, line: 58, baseType: !10, size: 64, offset: 320)
!182 = !DISubprogram(name: "print_group", scope: !128, file: !128, line: 18, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!183 = !DISubroutineType(types: !184)
!184 = !{!131, !120, !131}
!185 = !DISubprogram(name: "xgetgroups", scope: !186, file: !186, line: 21, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!186 = !DIFile(filename: "./lib/mgetgroups.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = !DISubroutineType(types: !188)
!188 = !{!14, !12, !120, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!191 = !DISubprogram(name: "free", scope: !91, file: !91, line: 565, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !66}
!194 = !DISubprogram(name: "getgrgid", scope: !195, file: !195, line: 101, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!195 = !DIFile(filename: "/usr/include/grp.h", directory: "")
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !120}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group", file: !195, line: 42, size: 256, elements: !200)
!200 = !{!201, !202, !203, !204}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "gr_name", scope: !199, file: !195, line: 44, baseType: !10, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "gr_passwd", scope: !199, file: !195, line: 45, baseType: !10, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "gr_gid", scope: !199, file: !195, line: 46, baseType: !144, size: 32, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "gr_mem", scope: !199, file: !195, line: 47, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!206 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!207 = !DISubroutineType(types: !208)
!208 = !{!14, !12, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !210, file: !21, line: 51, baseType: !14, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !210, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !210, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !210, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !210, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !210, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !210, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !210, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !210, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !210, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !210, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !210, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !210, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !210, file: !21, line: 70, baseType: !209, size: 64, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !210, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !210, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !210, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !210, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !210, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !210, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !210, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !210, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !210, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !210, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !210, file: !21, line: 93, baseType: !209, size: 64, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !210, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !210, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !210, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !210, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!241 = !DISubprogram(name: "umaxtostr", scope: !242, file: !242, line: 46, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!242 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!243 = !DISubroutineType(types: !244)
!244 = !{!10, !70, !10}
!245 = !{!157}
!246 = !{!247}
!247 = !DILocalVariable(name: "gid", arg: 1, scope: !159, file: !160, line: 94, type: !163)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 168, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 21)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "Version", scope: !253, file: !254, line: 2, type: !12, isLocal: false, isDefinition: true)
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !255, splitDebugInlining: false, nameTableKind: None)
!254 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!255 = !{!251}
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "file_name", scope: !258, file: !259, line: 46, type: !12, isLocal: true, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !260, globals: !299, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!260 = !{!261, !6, !297, !121}
!261 = !DISubprogram(name: "close_stream", scope: !262, file: !262, line: 2, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!262 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!263 = !DISubroutineType(types: !264)
!264 = !{!14, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !266, file: !21, line: 51, baseType: !14, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !266, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !266, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !266, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !266, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !266, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !266, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !266, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !266, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !266, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !266, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !266, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !266, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !266, file: !21, line: 70, baseType: !265, size: 64, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !266, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !266, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !266, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !266, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !266, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !266, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !266, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !266, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !266, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !266, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !266, file: !21, line: 93, baseType: !265, size: 64, offset: 1344)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !266, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !266, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !266, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !266, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!297 = !DISubprogram(name: "quotearg_colon", scope: !298, file: !298, line: 391, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!298 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = !{!256, !300}
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !258, file: !259, line: 56, type: !131, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "exit_failure", scope: !304, file: !305, line: 24, type: !307, isLocal: false, isDefinition: true)
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !306, splitDebugInlining: false, nameTableKind: None)
!305 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!306 = !{!302}
!307 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "program_name", scope: !310, file: !311, line: 33, type: !12, isLocal: false, isDefinition: true)
!310 = distinct !DICompileUnit(language: DW_LANG_C99, file: !311, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !312, globals: !348, splitDebugInlining: false, nameTableKind: None)
!311 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!312 = !{!66, !313, !10}
!313 = !DISubprogram(name: "fputs", scope: !16, file: !16, line: 626, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!314 = !DISubroutineType(types: !315)
!315 = !{!14, !12, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !317, file: !21, line: 51, baseType: !14, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !317, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !317, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !317, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !317, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !317, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !317, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !317, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !317, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !317, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !317, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !317, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !317, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !317, file: !21, line: 70, baseType: !316, size: 64, offset: 832)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !317, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !317, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !317, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !317, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !317, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !317, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !317, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !317, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !317, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !317, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !317, file: !21, line: 93, baseType: !316, size: 64, offset: 1344)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !317, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !317, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !317, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !317, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!348 = !{!308}
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !351, file: !352, line: 85, type: !482, isLocal: false, isDefinition: true)
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !353, retainedTypes: !387, globals: !455, splitDebugInlining: false, nameTableKind: None)
!352 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!353 = !{!354, !367, !372}
!354 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !298, line: 32, baseType: !120, size: 32, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!356 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!357 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!358 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!359 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!360 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!361 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!362 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!363 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!364 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!365 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!366 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !298, line: 242, baseType: !120, size: 32, elements: !368)
!368 = !{!369, !370, !371}
!369 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!372 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !373, line: 46, baseType: !120, size: 32, elements: !374)
!373 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!375 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!376 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!377 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!378 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!379 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!380 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!381 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!382 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!383 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!384 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!385 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!386 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!387 = !{!388, !394, !191, !410, !14, !46, !413, !68, !430, !434, !6, !440, !444, !10, !448, !451, !452}
!388 = !DISubprogram(name: "xmemdup", scope: !389, file: !389, line: 62, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!389 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!390 = !DISubroutineType(types: !391)
!391 = !{!66, !392, !70}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!394 = !DISubprogram(name: "quotearg_alloc_mem", scope: !298, file: !298, line: 342, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!395 = !DISubroutineType(types: !396)
!396 = !{!10, !12, !70, !397, !398}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !352, line: 65, size: 448, elements: !401)
!401 = !{!402, !403, !404, !408, !409}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !400, file: !352, line: 68, baseType: !354, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !352, line: 71, baseType: !14, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !400, file: !352, line: 75, baseType: !405, size: 256, offset: 64)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 8)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !400, file: !352, line: 78, baseType: !12, size: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !400, file: !352, line: 81, baseType: !12, size: 64, offset: 384)
!410 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !298, file: !298, line: 408, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{!10, !14, !12, !12, !12, !70}
!413 = !DISubprogram(name: "rpl_mbrtowc", scope: !414, file: !414, line: 717, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!414 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!415 = !DISubroutineType(types: !416)
!416 = !{!70, !110, !12, !70, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 13, size: 64, elements: !420)
!419 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !418, file: !419, line: 15, baseType: !14, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !418, file: !419, line: 20, baseType: !423, size: 32, offset: 32)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !419, line: 16, size: 32, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !423, file: !419, line: 18, baseType: !120, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !423, file: !419, line: 19, baseType: !427, size: 32)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 4)
!430 = !DISubprogram(name: "iswprint", scope: !431, file: !431, line: 120, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!431 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!432 = !DISubroutineType(types: !433)
!433 = !{!14, !120}
!434 = !DISubprogram(name: "mbsinit", scope: !435, file: !435, line: 292, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!435 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!436 = !DISubroutineType(types: !437)
!437 = !{!14, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!440 = !DISubprogram(name: "locale_charset", scope: !441, file: !441, line: 35, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!441 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!442 = !DISubroutineType(types: !443)
!443 = !{!12}
!444 = !DISubprogram(name: "c_strcasecmp", scope: !445, file: !445, line: 42, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!445 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!446 = !DISubroutineType(types: !447)
!447 = !{!14, !12, !12}
!448 = !DISubprogram(name: "xmalloc", scope: !389, file: !389, line: 53, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!449 = !DISubroutineType(types: !450)
!450 = !{!66, !70}
!451 = !DISubprogram(name: "xalloc_die", scope: !389, file: !389, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!452 = !DISubprogram(name: "xrealloc", scope: !389, file: !389, line: 59, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!453 = !DISubroutineType(types: !454)
!454 = !{!66, !66, !70}
!455 = !{!349, !456, !462, !464, !466, !471, !478, !480}
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !351, file: !352, line: 101, type: !458, isLocal: false, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 320, elements: !460)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!460 = !{!461}
!461 = !DISubrange(count: 10)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !351, file: !352, line: 1052, type: !400, isLocal: false, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !351, file: !352, line: 116, type: !400, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(name: "slot0", scope: !351, file: !352, line: 842, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 256)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(name: "slotvec", scope: !351, file: !352, line: 845, type: !473, isLocal: true, isDefinition: true)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !352, line: 834, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !474, file: !352, line: 836, baseType: !68, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !474, file: !352, line: 837, baseType: !10, size: 64, offset: 64)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "nslots", scope: !351, file: !352, line: 843, type: !14, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(name: "slotvec0", scope: !351, file: !352, line: 844, type: !474, isLocal: true, isDefinition: true)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 704, elements: !484)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!484 = !{!485}
!485 = !DISubrange(count: 11)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !488, file: !489, line: 26, type: !491, isLocal: false, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !490, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!490 = !{!486}
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 47)
!494 = distinct !DICompileUnit(language: DW_LANG_C99, file: !495, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !496, splitDebugInlining: false, nameTableKind: None)
!495 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !498, line: 102, baseType: !499)
!498 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !43, line: 73, baseType: !70)
!500 = distinct !DICompileUnit(language: DW_LANG_C99, file: !501, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !502, retainedTypes: !506, splitDebugInlining: false, nameTableKind: None)
!501 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!502 = !{!503}
!503 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !501, line: 40, baseType: !120, size: 32, elements: !504)
!504 = !{!505}
!505 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!506 = !{!6, !507, !66}
!507 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!508 = !DISubroutineType(types: !509)
!509 = !{!14, !12, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !511, file: !21, line: 51, baseType: !14, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !511, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !511, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !511, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !511, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !511, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !511, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !511, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !511, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !511, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !511, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !511, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !511, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !511, file: !21, line: 70, baseType: !510, size: 64, offset: 832)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !511, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !511, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !511, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !511, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !511, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !511, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !511, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !511, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !511, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !511, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !511, file: !21, line: 93, baseType: !510, size: 64, offset: 1344)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !511, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !511, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !511, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !511, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!542 = distinct !DICompileUnit(language: DW_LANG_C99, file: !543, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !544, retainedTypes: !557, splitDebugInlining: false, nameTableKind: None)
!543 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!544 = !{!545}
!545 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !546, file: !389, line: 186, baseType: !120, size: 32, elements: !555)
!546 = distinct !DISubprogram(name: "x2nrealloc", scope: !389, file: !389, line: 174, type: !547, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !550)
!547 = !DISubroutineType(types: !548)
!548 = !{!66, !66, !549, !68}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!550 = !{!551, !552, !553, !554}
!551 = !DILocalVariable(name: "p", arg: 1, scope: !546, file: !389, line: 174, type: !66)
!552 = !DILocalVariable(name: "pn", arg: 2, scope: !546, file: !389, line: 174, type: !549)
!553 = !DILocalVariable(name: "s", arg: 3, scope: !546, file: !389, line: 174, type: !68)
!554 = !DILocalVariable(name: "n", scope: !546, file: !389, line: 176, type: !68)
!555 = !{!556}
!556 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!557 = !{!68, !451, !448, !452, !10, !191, !66, !558, !561}
!558 = !DISubprogram(name: "xcalloc", scope: !389, file: !389, line: 57, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!559 = !DISubroutineType(types: !560)
!560 = !{!66, !70, !70}
!561 = !DISubprogram(name: "rpl_calloc", scope: !562, file: !562, line: 688, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!562 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!563 = distinct !DICompileUnit(language: DW_LANG_C99, file: !564, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !565, splitDebugInlining: false, nameTableKind: None)
!564 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!565 = !{!6, !121}
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !568, splitDebugInlining: false, nameTableKind: None)
!567 = !DIFile(filename: "lib/xgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!568 = !{!569, !451}
!569 = !DISubprogram(name: "mgetgroups", scope: !186, file: !186, line: 19, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !572, splitDebugInlining: false, nameTableKind: None)
!571 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = !{!66}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !575, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !{!576, !68, !588}
!576 = !DISubprogram(name: "mbrtowc", scope: !435, file: !435, line: 296, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!577 = !DISubroutineType(types: !578)
!578 = !{!70, !110, !12, !70, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !419, line: 13, size: 64, elements: !581)
!581 = !{!582, !583}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !580, file: !419, line: 15, baseType: !14, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !580, file: !419, line: 20, baseType: !584, size: 32, offset: 32)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !419, line: 16, size: 32, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !584, file: !419, line: 18, baseType: !120, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !584, file: !419, line: 19, baseType: !427, size: 32)
!588 = !DISubprogram(name: "hard_locale", scope: !589, file: !589, line: 26, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!589 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!590 = !DISubroutineType(types: !591)
!591 = !{!131, !14}
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !594, splitDebugInlining: false, nameTableKind: None)
!593 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!594 = !{!595}
!595 = !DISubprogram(name: "rpl_fclose", scope: !596, file: !596, line: 672, type: !597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!596 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!597 = !DISubroutineType(types: !598)
!598 = !{!14, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !600, file: !21, line: 51, baseType: !14, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !600, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !600, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !600, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !600, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !600, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !600, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !600, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !600, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !600, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !600, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !600, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !600, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !600, file: !21, line: 70, baseType: !599, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !600, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !600, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !600, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !600, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !600, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !600, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !600, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !600, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !600, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !600, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !600, file: !21, line: 93, baseType: !599, size: 64, offset: 1344)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !600, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !600, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !600, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !600, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !633, splitDebugInlining: false, nameTableKind: None)
!632 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!633 = !{!634}
!634 = !DISubprogram(name: "setlocale_null_r", scope: !635, file: !635, line: 64, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!635 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!636 = !DISubroutineType(types: !637)
!637 = !{!14, !14, !10, !70}
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !640, retainedTypes: !1027, splitDebugInlining: false, nameTableKind: None)
!639 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!640 = !{!641}
!641 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !642, line: 41, baseType: !120, size: 32, elements: !643)
!642 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!644 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!645 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!646 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!647 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!648 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!649 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!650 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!651 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!652 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!653 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!654 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!655 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!656 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!657 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!658 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!659 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!660 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!661 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!662 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!663 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!664 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!665 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!666 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!667 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!668 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!669 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!670 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!671 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!672 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!673 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!674 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!675 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!676 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!677 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!678 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!679 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!680 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!681 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!682 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!683 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!684 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!685 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!686 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!687 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!688 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!689 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!690 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!691 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!692 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!693 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!752 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!755 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!756 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!757 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!758 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!759 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!760 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!761 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!762 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!763 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!764 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!765 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!766 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!839 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!912 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!913 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!914 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!915 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!916 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!917 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!918 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!919 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!920 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!921 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!922 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!923 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!924 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!925 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!926 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!928 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!929 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!930 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!931 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!932 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!933 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!959 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!960 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!961 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!962 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!963 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!968 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!969 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!970 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!971 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1027 = !{!1028, !66}
!1028 = !DISubprogram(name: "nl_langinfo", scope: !642, file: !642, line: 661, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!10, !14}
!1031 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1032, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1033, retainedTypes: !1065, splitDebugInlining: false, nameTableKind: None)
!1032 = !DIFile(filename: "lib/mgetgroups.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1033 = !{!1034}
!1034 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1035, file: !1032, line: 83, baseType: !120, size: 32, elements: !1063)
!1035 = distinct !DISubprogram(name: "mgetgroups", scope: !1032, file: !1032, line: 66, type: !1036, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !1040)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!14, !12, !165, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1051, !1052, !1055, !1058, !1061, !1062}
!1041 = !DILocalVariable(name: "username", arg: 1, scope: !1035, file: !1032, line: 66, type: !12)
!1042 = !DILocalVariable(name: "gid", arg: 2, scope: !1035, file: !1032, line: 66, type: !165)
!1043 = !DILocalVariable(name: "groups", arg: 3, scope: !1035, file: !1032, line: 66, type: !1038)
!1044 = !DILocalVariable(name: "max_n_groups", scope: !1035, file: !1032, line: 68, type: !14)
!1045 = !DILocalVariable(name: "ng", scope: !1035, file: !1032, line: 69, type: !14)
!1046 = !DILocalVariable(name: "g", scope: !1035, file: !1032, line: 70, type: !1039)
!1047 = !DILocalVariable(name: "h", scope: !1048, file: !1032, line: 92, type: !1039)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !1032, line: 91, column: 9)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !1032, line: 82, column: 5)
!1050 = distinct !DILexicalBlock(scope: !1035, file: !1032, line: 81, column: 7)
!1051 = !DILocalVariable(name: "last_n_groups", scope: !1048, file: !1032, line: 93, type: !14)
!1052 = !DILocalVariable(name: "saved_errno", scope: !1053, file: !1032, line: 105, type: !14)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !1032, line: 104, column: 13)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !1032, line: 103, column: 15)
!1055 = !DILocalVariable(name: "saved_errno", scope: !1056, file: !1032, line: 156, type: !14)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !1032, line: 154, column: 5)
!1057 = distinct !DILexicalBlock(scope: !1035, file: !1032, line: 153, column: 7)
!1058 = !DILocalVariable(name: "first", scope: !1059, file: !1032, line: 187, type: !165)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !1032, line: 186, column: 5)
!1060 = distinct !DILexicalBlock(scope: !1035, file: !1032, line: 185, column: 7)
!1061 = !DILocalVariable(name: "next", scope: !1059, file: !1032, line: 188, type: !1039)
!1062 = !DILocalVariable(name: "groups_end", scope: !1059, file: !1032, line: 189, type: !1039)
!1063 = !{!1064}
!1064 = !DIEnumerator(name: "N_GROUPS_INIT", value: 10, isUnsigned: true)
!1065 = !{!66, !1066, !191, !1069, !165, !68}
!1066 = !DISubprogram(name: "getgrouplist", scope: !195, file: !195, line: 186, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!14, !12, !120, !190, !110}
!1069 = !DISubprogram(name: "getugroups", scope: !1070, file: !1070, line: 18, type: !1071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1070 = !DIFile(filename: "./lib/getugroups.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!14, !14, !190, !12, !120}
!1073 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1074, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1075, splitDebugInlining: false, nameTableKind: None)
!1074 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1075 = !{!66, !80}
!1076 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1077, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1078, splitDebugInlining: false, nameTableKind: None)
!1077 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1078 = !{!1079, !1114, !1115, !1118}
!1079 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!14, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1083, file: !21, line: 51, baseType: !14, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1083, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1083, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1083, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1083, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1083, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1083, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1083, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1083, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1083, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1083, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1083, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1083, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1083, file: !21, line: 70, baseType: !1082, size: 64, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1083, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1083, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1083, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1083, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1083, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1083, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1083, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1083, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1083, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1083, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1083, file: !21, line: 93, baseType: !1082, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1083, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1083, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1083, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1083, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1114 = !DISubprogram(name: "fclose", scope: !16, file: !16, line: 213, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1115 = !DISubprogram(name: "lseek", scope: !117, file: !117, line: 334, type: !1116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!44, !14, !44, !14}
!1118 = !DISubprogram(name: "rpl_fflush", scope: !596, file: !596, line: 718, type: !1080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1119 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1120, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1121, splitDebugInlining: false, nameTableKind: None)
!1120 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1121 = !{!66, !1122, !1157}
!1122 = !DISubprogram(name: "fflush", scope: !16, file: !16, line: 218, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!14, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1126, file: !21, line: 51, baseType: !14, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1126, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1126, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1126, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1126, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1126, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1126, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1126, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1126, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1126, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1126, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1126, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1126, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1126, file: !21, line: 70, baseType: !1125, size: 64, offset: 832)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1126, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1126, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1126, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1126, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1126, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1126, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1126, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1126, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1126, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1126, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1126, file: !21, line: 93, baseType: !1125, size: 64, offset: 1344)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1126, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1126, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1126, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1126, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1157 = !DISubprogram(name: "rpl_fseeko", scope: !596, file: !596, line: 1034, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!14, !1125, !44, !14}
!1160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1161, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1162, splitDebugInlining: false, nameTableKind: None)
!1161 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1162 = !{!66, !1163, !1115, !1198}
!1163 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!14, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1167, file: !21, line: 51, baseType: !14, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1167, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1167, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1167, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1167, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1167, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1167, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1167, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1167, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1167, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1167, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1167, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1167, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1167, file: !21, line: 70, baseType: !1166, size: 64, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1167, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1167, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1167, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1167, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1167, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1167, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1167, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1167, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1167, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1167, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1167, file: !21, line: 93, baseType: !1166, size: 64, offset: 1344)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1167, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1167, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1167, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1167, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1198 = !DISubprogram(name: "fseeko", scope: !16, file: !16, line: 707, type: !1199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!14, !1166, !44, !14}
!1201 = !{!"clang version 10.0.0 "}
!1202 = !{i32 7, !"Dwarf Version", i32 4}
!1203 = !{i32 2, !"Debug Info Version", i32 3}
!1204 = !{i32 1, !"wchar_size", i32 4}
!1205 = !{i32 7, !"PIC Level", i32 2}
!1206 = !{i32 7, !"PIE Level", i32 2}
!1207 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 48, type: !1208, scopeLine: 49, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1210)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !14}
!1210 = !{!1211}
!1211 = !DILocalVariable(name: "status", arg: 1, scope: !1207, file: !3, line: 48, type: !14)
!1212 = !DILocalVariable(name: "infomap", scope: !1213, file: !1214, line: 636, type: !1226)
!1213 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1214, file: !1214, line: 634, type: !78, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1215)
!1214 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1215 = !{!1216, !1212, !1217, !1218, !1225}
!1216 = !DILocalVariable(name: "program", arg: 1, scope: !1213, file: !1214, line: 634, type: !12)
!1217 = !DILocalVariable(name: "node", scope: !1213, file: !1214, line: 646, type: !12)
!1218 = !DILocalVariable(name: "map_prog", scope: !1213, file: !1214, line: 647, type: !1219)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1213, file: !1214, line: 636, size: 128, elements: !1222)
!1222 = !{!1223, !1224}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1221, file: !1214, line: 636, baseType: !12, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1221, file: !1214, line: 636, baseType: !12, size: 64, offset: 64)
!1225 = !DILocalVariable(name: "lc_messages", scope: !1213, file: !1214, line: 659, type: !12)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 896, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 7)
!1229 = !DILocation(line: 636, column: 67, scope: !1213, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 62, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 53, column: 5)
!1232 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 50, column: 7)
!1233 = !DILocation(line: 0, scope: !1207)
!1234 = !DILocation(line: 50, column: 14, scope: !1232)
!1235 = !DILocation(line: 50, column: 7, scope: !1207)
!1236 = !DILocation(line: 51, column: 5, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 51, column: 5)
!1238 = !{!1239, !1239, i64 0}
!1239 = !{!"any pointer", !1240, i64 0}
!1240 = !{!"omnipotent char", !1241, i64 0}
!1241 = !{!"Simple C/C++ TBAA"}
!1242 = !DILocation(line: 54, column: 7, scope: !1231)
!1243 = !DILocation(line: 55, column: 7, scope: !1231)
!1244 = !DILocation(line: 60, column: 7, scope: !1231)
!1245 = !DILocation(line: 61, column: 7, scope: !1231)
!1246 = !DILocation(line: 0, scope: !1213, inlinedAt: !1230)
!1247 = !DILocation(line: 636, column: 3, scope: !1213, inlinedAt: !1230)
!1248 = !DILocation(line: 647, column: 36, scope: !1213, inlinedAt: !1230)
!1249 = !DILocation(line: 649, column: 3, scope: !1213, inlinedAt: !1230)
!1250 = !DILocation(line: 649, column: 33, scope: !1213, inlinedAt: !1230)
!1251 = !DILocation(line: 650, column: 13, scope: !1213, inlinedAt: !1230)
!1252 = !DILocation(line: 649, column: 20, scope: !1213, inlinedAt: !1230)
!1253 = !{!1254, !1239, i64 0}
!1254 = !{!"infomap", !1239, i64 0, !1239, i64 8}
!1255 = !DILocation(line: 649, column: 10, scope: !1213, inlinedAt: !1230)
!1256 = !DILocation(line: 649, column: 28, scope: !1213, inlinedAt: !1230)
!1257 = distinct !{!1257, !1249, !1251}
!1258 = !DILocation(line: 652, column: 17, scope: !1259, inlinedAt: !1230)
!1259 = distinct !DILexicalBlock(scope: !1213, file: !1214, line: 652, column: 7)
!1260 = !{!1254, !1239, i64 8}
!1261 = !DILocation(line: 652, column: 7, scope: !1259, inlinedAt: !1230)
!1262 = !DILocation(line: 652, column: 7, scope: !1213, inlinedAt: !1230)
!1263 = !DILocation(line: 655, column: 3, scope: !1213, inlinedAt: !1230)
!1264 = !DILocation(line: 659, column: 29, scope: !1213, inlinedAt: !1230)
!1265 = !DILocation(line: 660, column: 7, scope: !1266, inlinedAt: !1230)
!1266 = distinct !DILexicalBlock(scope: !1213, file: !1214, line: 660, column: 7)
!1267 = !DILocation(line: 660, column: 19, scope: !1266, inlinedAt: !1230)
!1268 = !DILocation(line: 660, column: 22, scope: !1266, inlinedAt: !1230)
!1269 = !DILocation(line: 660, column: 7, scope: !1213, inlinedAt: !1230)
!1270 = !DILocation(line: 666, column: 7, scope: !1271, inlinedAt: !1230)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !1214, line: 661, column: 5)
!1272 = !DILocation(line: 668, column: 5, scope: !1271, inlinedAt: !1230)
!1273 = !DILocation(line: 669, column: 3, scope: !1213, inlinedAt: !1230)
!1274 = !DILocation(line: 671, column: 3, scope: !1213, inlinedAt: !1230)
!1275 = !DILocation(line: 673, column: 1, scope: !1213, inlinedAt: !1230)
!1276 = !DILocation(line: 64, column: 3, scope: !1207)
!1277 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !1278, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!14, !14, !205}
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1289, !1292, !1293}
!1281 = !DILocalVariable(name: "argc", arg: 1, scope: !1277, file: !3, line: 68, type: !14)
!1282 = !DILocalVariable(name: "argv", arg: 2, scope: !1277, file: !3, line: 68, type: !205)
!1283 = !DILocalVariable(name: "optc", scope: !1277, file: !3, line: 70, type: !14)
!1284 = !DILocalVariable(name: "ok", scope: !1277, file: !3, line: 71, type: !131)
!1285 = !DILocalVariable(name: "rgid", scope: !1277, file: !3, line: 72, type: !165)
!1286 = !DILocalVariable(name: "egid", scope: !1277, file: !3, line: 72, type: !165)
!1287 = !DILocalVariable(name: "ruid", scope: !1277, file: !3, line: 73, type: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !166, line: 79, baseType: !142)
!1289 = !DILocalVariable(name: "NO_UID", scope: !1290, file: !3, line: 100, type: !1288)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 98, column: 5)
!1291 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 97, column: 7)
!1292 = !DILocalVariable(name: "NO_GID", scope: !1290, file: !3, line: 101, type: !165)
!1293 = !DILocalVariable(name: "pwd", scope: !1294, file: !3, line: 127, type: !136)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 126, column: 9)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 125, column: 7)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 125, column: 7)
!1297 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 123, column: 5)
!1298 = !DILocation(line: 0, scope: !1277)
!1299 = !DILocation(line: 76, column: 21, scope: !1277)
!1300 = !DILocation(line: 76, column: 3, scope: !1277)
!1301 = !DILocation(line: 77, column: 3, scope: !1277)
!1302 = !DILocation(line: 78, column: 3, scope: !1277)
!1303 = !DILocation(line: 79, column: 3, scope: !1277)
!1304 = !DILocation(line: 81, column: 3, scope: !1277)
!1305 = !DILocation(line: 86, column: 18, scope: !1277)
!1306 = !DILocation(line: 86, column: 3, scope: !1277)
!1307 = !DILocation(line: 90, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 89, column: 9)
!1309 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 87, column: 5)
!1310 = !DILocation(line: 91, column: 9, scope: !1308)
!1311 = !DILocation(line: 93, column: 11, scope: !1308)
!1312 = !DILocation(line: 97, column: 7, scope: !1291)
!1313 = !{!1314, !1314, i64 0}
!1314 = !{!"int", !1240, i64 0}
!1315 = !DILocation(line: 97, column: 14, scope: !1291)
!1316 = !DILocation(line: 97, column: 7, scope: !1277)
!1317 = !DILocation(line: 125, column: 22, scope: !1295)
!1318 = !DILocation(line: 125, column: 7, scope: !1296)
!1319 = !DILocation(line: 0, scope: !1290)
!1320 = !DILocation(line: 103, column: 7, scope: !1290)
!1321 = !DILocation(line: 103, column: 13, scope: !1290)
!1322 = !DILocation(line: 104, column: 14, scope: !1290)
!1323 = !DILocation(line: 105, column: 16, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 105, column: 11)
!1325 = !DILocation(line: 105, column: 26, scope: !1324)
!1326 = !DILocation(line: 105, column: 29, scope: !1324)
!1327 = !DILocation(line: 105, column: 11, scope: !1290)
!1328 = !DILocation(line: 106, column: 9, scope: !1324)
!1329 = !DILocation(line: 108, column: 13, scope: !1290)
!1330 = !DILocation(line: 109, column: 14, scope: !1290)
!1331 = !DILocation(line: 110, column: 16, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 110, column: 11)
!1333 = !DILocation(line: 110, column: 26, scope: !1332)
!1334 = !DILocation(line: 110, column: 29, scope: !1332)
!1335 = !DILocation(line: 110, column: 11, scope: !1290)
!1336 = !DILocation(line: 111, column: 9, scope: !1332)
!1337 = !DILocation(line: 113, column: 13, scope: !1290)
!1338 = !DILocation(line: 114, column: 14, scope: !1290)
!1339 = !DILocation(line: 115, column: 16, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 115, column: 11)
!1341 = !DILocation(line: 115, column: 26, scope: !1340)
!1342 = !DILocation(line: 115, column: 29, scope: !1340)
!1343 = !DILocation(line: 115, column: 11, scope: !1290)
!1344 = !DILocation(line: 116, column: 9, scope: !1340)
!1345 = !DILocation(line: 118, column: 12, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 118, column: 11)
!1347 = !DILocation(line: 118, column: 11, scope: !1290)
!1348 = !DILocalVariable(name: "__c", arg: 1, scope: !1349, file: !1350, line: 108, type: !14)
!1349 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1350, file: !1350, line: 108, type: !1351, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1353)
!1350 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!14, !14}
!1353 = !{!1348}
!1354 = !DILocation(line: 0, scope: !1349, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 120, column: 7, scope: !1290)
!1356 = !DILocation(line: 110, column: 10, scope: !1349, inlinedAt: !1355)
!1357 = !{!1358, !1239, i64 40}
!1358 = !{!"_IO_FILE", !1314, i64 0, !1239, i64 8, !1239, i64 16, !1239, i64 24, !1239, i64 32, !1239, i64 40, !1239, i64 48, !1239, i64 56, !1239, i64 64, !1239, i64 72, !1239, i64 80, !1239, i64 88, !1239, i64 96, !1239, i64 104, !1314, i64 112, !1314, i64 116, !1359, i64 120, !1360, i64 128, !1240, i64 130, !1240, i64 131, !1239, i64 136, !1359, i64 144, !1239, i64 152, !1239, i64 160, !1239, i64 168, !1239, i64 176, !1359, i64 184, !1314, i64 192, !1240, i64 196}
!1359 = !{!"long", !1240, i64 0}
!1360 = !{!"short", !1240, i64 0}
!1361 = !{!1358, !1239, i64 48}
!1362 = !{!"branch_weights", i32 2000, i32 1}
!1363 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1364 = !{!1240, !1240, i64 0}
!1365 = !DILocation(line: 127, column: 42, scope: !1294)
!1366 = !DILocation(line: 127, column: 32, scope: !1294)
!1367 = !DILocation(line: 0, scope: !1294)
!1368 = !DILocation(line: 128, column: 19, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 128, column: 15)
!1370 = !DILocation(line: 128, column: 15, scope: !1294)
!1371 = !DILocation(line: 130, column: 28, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 129, column: 13)
!1373 = !DILocation(line: 130, column: 63, scope: !1372)
!1374 = !DILocation(line: 130, column: 58, scope: !1372)
!1375 = !DILocation(line: 130, column: 51, scope: !1372)
!1376 = !DILocation(line: 130, column: 15, scope: !1372)
!1377 = !DILocation(line: 132, column: 15, scope: !1372)
!1378 = !DILocation(line: 134, column: 23, scope: !1294)
!1379 = !{!1380, !1314, i64 16}
!1380 = !{!"passwd", !1239, i64 0, !1239, i64 8, !1314, i64 16, !1314, i64 20, !1239, i64 24, !1239, i64 32, !1239, i64 40}
!1381 = !DILocation(line: 135, column: 30, scope: !1294)
!1382 = !{!1380, !1314, i64 20}
!1383 = !DILocation(line: 137, column: 11, scope: !1294)
!1384 = !DILocation(line: 138, column: 39, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 138, column: 15)
!1386 = !DILocation(line: 138, column: 34, scope: !1385)
!1387 = !DILocation(line: 138, column: 16, scope: !1385)
!1388 = !DILocation(line: 138, column: 15, scope: !1294)
!1389 = !DILocation(line: 0, scope: !1349, inlinedAt: !1390)
!1390 = distinct !DILocation(line: 140, column: 11, scope: !1294)
!1391 = !DILocation(line: 110, column: 10, scope: !1349, inlinedAt: !1390)
!1392 = !DILocation(line: 125, column: 36, scope: !1295)
!1393 = distinct !{!1393, !1318, !1394}
!1394 = !DILocation(line: 141, column: 9, scope: !1296)
!1395 = !DILocation(line: 71, column: 8, scope: !1277)
!1396 = !DILocation(line: 144, column: 10, scope: !1277)
!1397 = !DILocation(line: 145, column: 1, scope: !1277)
!1398 = distinct !DISubprogram(name: "print_group_list", scope: !160, file: !160, line: 36, type: !1399, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !1401)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!131, !12, !1288, !165, !165, !131, !11}
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1412, !1413}
!1402 = !DILocalVariable(name: "username", arg: 1, scope: !1398, file: !160, line: 36, type: !12)
!1403 = !DILocalVariable(name: "ruid", arg: 2, scope: !1398, file: !160, line: 37, type: !1288)
!1404 = !DILocalVariable(name: "rgid", arg: 3, scope: !1398, file: !160, line: 37, type: !165)
!1405 = !DILocalVariable(name: "egid", arg: 4, scope: !1398, file: !160, line: 37, type: !165)
!1406 = !DILocalVariable(name: "use_names", arg: 5, scope: !1398, file: !160, line: 38, type: !131)
!1407 = !DILocalVariable(name: "delim", arg: 6, scope: !1398, file: !160, line: 38, type: !11)
!1408 = !DILocalVariable(name: "ok", scope: !1398, file: !160, line: 40, type: !131)
!1409 = !DILocalVariable(name: "pwd", scope: !1398, file: !160, line: 41, type: !172)
!1410 = !DILocalVariable(name: "groups", scope: !1411, file: !160, line: 61, type: !1039)
!1411 = distinct !DILexicalBlock(scope: !1398, file: !160, line: 60, column: 3)
!1412 = !DILocalVariable(name: "n_groups", scope: !1411, file: !160, line: 63, type: !14)
!1413 = !DILocalVariable(name: "i", scope: !1414, file: !160, line: 78, type: !14)
!1414 = distinct !DILexicalBlock(scope: !1411, file: !160, line: 78, column: 5)
!1415 = !DILocation(line: 0, scope: !1398)
!1416 = !DILocation(line: 43, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1398, file: !160, line: 43, column: 7)
!1418 = !DILocation(line: 43, column: 7, scope: !1398)
!1419 = !DILocation(line: 45, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !160, line: 44, column: 5)
!1421 = !DILocation(line: 46, column: 15, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1420, file: !160, line: 46, column: 11)
!1423 = !DILocation(line: 46, column: 11, scope: !1420)
!1424 = !DILocalVariable(name: "gid", arg: 1, scope: !1425, file: !160, line: 103, type: !165)
!1425 = distinct !DISubprogram(name: "print_group", scope: !160, file: !160, line: 103, type: !1426, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!131, !165, !131}
!1428 = !{!1424, !1429, !1430, !1431, !1432}
!1429 = !DILocalVariable(name: "use_name", arg: 2, scope: !1425, file: !160, line: 103, type: !131)
!1430 = !DILocalVariable(name: "grp", scope: !1425, file: !160, line: 105, type: !198)
!1431 = !DILocalVariable(name: "ok", scope: !1425, file: !160, line: 106, type: !131)
!1432 = !DILocalVariable(name: "s", scope: !1425, file: !160, line: 119, type: !10)
!1433 = !DILocation(line: 0, scope: !1425, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 50, column: 8, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1398, file: !160, line: 50, column: 7)
!1436 = !DILocation(line: 108, column: 7, scope: !1425, inlinedAt: !1434)
!1437 = !DILocation(line: 97, column: 21, scope: !159, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 119, column: 34, scope: !1425, inlinedAt: !1434)
!1439 = !DILocation(line: 97, column: 10, scope: !159, inlinedAt: !1438)
!1440 = !DILocation(line: 50, column: 7, scope: !1398)
!1441 = !DILocation(line: 110, column: 13, scope: !1442, inlinedAt: !1434)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !160, line: 109, column: 5)
!1443 = distinct !DILexicalBlock(scope: !1425, file: !160, line: 108, column: 7)
!1444 = !DILocation(line: 111, column: 15, scope: !1445, inlinedAt: !1434)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !160, line: 111, column: 11)
!1446 = !DILocation(line: 111, column: 11, scope: !1442, inlinedAt: !1434)
!1447 = !DILocation(line: 113, column: 24, scope: !1448, inlinedAt: !1434)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !160, line: 112, column: 9)
!1449 = !DILocation(line: 114, column: 18, scope: !1448, inlinedAt: !1434)
!1450 = !DILocation(line: 113, column: 11, scope: !1448, inlinedAt: !1434)
!1451 = !DILocation(line: 119, column: 24, scope: !1425, inlinedAt: !1434)
!1452 = !{!1453, !1239, i64 0}
!1453 = !{!"group", !1239, i64 0, !1239, i64 8, !1314, i64 16, !1239, i64 24}
!1454 = !DILocation(line: 120, column: 3, scope: !1425, inlinedAt: !1434)
!1455 = !DILocation(line: 53, column: 12, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1398, file: !160, line: 53, column: 7)
!1457 = !DILocation(line: 53, column: 7, scope: !1398)
!1458 = !DILocalVariable(name: "__c", arg: 1, scope: !1459, file: !1350, line: 108, type: !14)
!1459 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1350, file: !1350, line: 108, type: !1351, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !1460)
!1460 = !{!1458}
!1461 = !DILocation(line: 0, scope: !1459, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 55, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1456, file: !160, line: 54, column: 5)
!1464 = !DILocation(line: 110, column: 10, scope: !1459, inlinedAt: !1462)
!1465 = !DILocation(line: 55, column: 7, scope: !1463)
!1466 = !DILocation(line: 0, scope: !1425, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 56, column: 12, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !160, line: 56, column: 11)
!1469 = !DILocation(line: 108, column: 7, scope: !1425, inlinedAt: !1467)
!1470 = !DILocation(line: 97, column: 21, scope: !159, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 119, column: 34, scope: !1425, inlinedAt: !1467)
!1472 = !DILocation(line: 97, column: 10, scope: !159, inlinedAt: !1471)
!1473 = !DILocation(line: 56, column: 11, scope: !1463)
!1474 = !DILocation(line: 110, column: 13, scope: !1442, inlinedAt: !1467)
!1475 = !DILocation(line: 111, column: 15, scope: !1445, inlinedAt: !1467)
!1476 = !DILocation(line: 111, column: 11, scope: !1442, inlinedAt: !1467)
!1477 = !DILocation(line: 113, column: 24, scope: !1448, inlinedAt: !1467)
!1478 = !DILocation(line: 114, column: 18, scope: !1448, inlinedAt: !1467)
!1479 = !DILocation(line: 113, column: 11, scope: !1448, inlinedAt: !1467)
!1480 = !DILocation(line: 119, column: 24, scope: !1425, inlinedAt: !1467)
!1481 = !DILocation(line: 120, column: 3, scope: !1425, inlinedAt: !1467)
!1482 = !DILocation(line: 61, column: 5, scope: !1411)
!1483 = !DILocation(line: 63, column: 43, scope: !1411)
!1484 = !DILocation(line: 63, column: 54, scope: !1411)
!1485 = !DILocation(line: 0, scope: !1411)
!1486 = !DILocation(line: 63, column: 20, scope: !1411)
!1487 = !DILocation(line: 64, column: 18, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1411, file: !160, line: 64, column: 9)
!1489 = !DILocation(line: 64, column: 9, scope: !1411)
!1490 = !DILocation(line: 0, scope: !1414)
!1491 = !DILocation(line: 78, column: 23, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1414, file: !160, line: 78, column: 5)
!1493 = !DILocation(line: 78, column: 5, scope: !1414)
!1494 = !DILocation(line: 0, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !160, line: 80, column: 9)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !160, line: 79, column: 11)
!1497 = !DILocation(line: 0, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !160, line: 66, column: 13)
!1499 = distinct !DILexicalBlock(scope: !1488, file: !160, line: 65, column: 7)
!1500 = !DILocation(line: 66, column: 13, scope: !1499)
!1501 = !DILocation(line: 68, column: 30, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !160, line: 67, column: 11)
!1503 = !DILocation(line: 69, column: 20, scope: !1502)
!1504 = !DILocation(line: 68, column: 13, scope: !1502)
!1505 = !DILocation(line: 70, column: 11, scope: !1502)
!1506 = !DILocation(line: 73, column: 30, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1498, file: !160, line: 72, column: 11)
!1508 = !DILocation(line: 73, column: 13, scope: !1507)
!1509 = !DILocation(line: 79, column: 11, scope: !1496)
!1510 = !DILocation(line: 79, column: 21, scope: !1496)
!1511 = !DILocation(line: 79, column: 42, scope: !1496)
!1512 = !DILocation(line: 79, column: 29, scope: !1496)
!1513 = !DILocation(line: 0, scope: !1459, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 81, column: 11, scope: !1495)
!1515 = !DILocation(line: 110, column: 10, scope: !1459, inlinedAt: !1514)
!1516 = !DILocation(line: 82, column: 29, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1495, file: !160, line: 82, column: 15)
!1518 = !DILocation(line: 0, scope: !1425, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 82, column: 16, scope: !1517)
!1520 = !DILocation(line: 108, column: 7, scope: !1425, inlinedAt: !1519)
!1521 = !DILocation(line: 97, column: 21, scope: !159, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 119, column: 34, scope: !1425, inlinedAt: !1519)
!1523 = !DILocation(line: 97, column: 10, scope: !159, inlinedAt: !1522)
!1524 = !DILocation(line: 82, column: 15, scope: !1495)
!1525 = !DILocation(line: 110, column: 13, scope: !1442, inlinedAt: !1519)
!1526 = !DILocation(line: 111, column: 15, scope: !1445, inlinedAt: !1519)
!1527 = !DILocation(line: 111, column: 11, scope: !1442, inlinedAt: !1519)
!1528 = !DILocation(line: 113, column: 24, scope: !1448, inlinedAt: !1519)
!1529 = !DILocation(line: 114, column: 18, scope: !1448, inlinedAt: !1519)
!1530 = !DILocation(line: 113, column: 11, scope: !1448, inlinedAt: !1519)
!1531 = !DILocation(line: 119, column: 24, scope: !1425, inlinedAt: !1519)
!1532 = !DILocation(line: 120, column: 3, scope: !1425, inlinedAt: !1519)
!1533 = !DILocation(line: 78, column: 36, scope: !1492)
!1534 = distinct !{!1534, !1493, !1535}
!1535 = !DILocation(line: 84, column: 9, scope: !1414)
!1536 = !DILocation(line: 86, column: 3, scope: !1398)
!1537 = !DILocation(line: 47, column: 12, scope: !1422)
!1538 = !DILocation(line: 85, column: 11, scope: !1411)
!1539 = !DILocation(line: 85, column: 5, scope: !1411)
!1540 = !DILocation(line: 88, column: 1, scope: !1398)
!1541 = !DILocation(line: 0, scope: !1425)
!1542 = !DILocation(line: 108, column: 7, scope: !1425)
!1543 = !DILocation(line: 97, column: 21, scope: !159, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 119, column: 34, scope: !1425)
!1545 = !DILocation(line: 110, column: 13, scope: !1442)
!1546 = !DILocation(line: 111, column: 15, scope: !1445)
!1547 = !DILocation(line: 111, column: 11, scope: !1442)
!1548 = !DILocation(line: 113, column: 24, scope: !1448)
!1549 = !DILocation(line: 114, column: 18, scope: !1448)
!1550 = !DILocation(line: 113, column: 11, scope: !1448)
!1551 = !DILocation(line: 116, column: 9, scope: !1448)
!1552 = !DILocation(line: 119, column: 24, scope: !1425)
!1553 = !DILocation(line: 119, column: 13, scope: !1425)
!1554 = !DILocation(line: 97, column: 10, scope: !159, inlinedAt: !1544)
!1555 = !DILocation(line: 120, column: 3, scope: !1425)
!1556 = !DILocation(line: 121, column: 3, scope: !1425)
!1557 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !259, file: !259, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1558)
!1558 = !{!1559}
!1559 = !DILocalVariable(name: "file", arg: 1, scope: !1557, file: !259, line: 51, type: !12)
!1560 = !DILocation(line: 0, scope: !1557)
!1561 = !DILocation(line: 53, column: 13, scope: !1557)
!1562 = !DILocation(line: 54, column: 1, scope: !1557)
!1563 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !259, file: !259, line: 88, type: !1564, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !131}
!1566 = !{!1567}
!1567 = !DILocalVariable(name: "ignore", arg: 1, scope: !1563, file: !259, line: 88, type: !131)
!1568 = !DILocation(line: 0, scope: !1563)
!1569 = !DILocation(line: 90, column: 16, scope: !1563)
!1570 = !{!1571, !1571, i64 0}
!1571 = !{!"_Bool", !1240, i64 0}
!1572 = !DILocation(line: 91, column: 1, scope: !1563)
!1573 = distinct !DISubprogram(name: "close_stdout", scope: !259, file: !259, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1574)
!1574 = !{!1575}
!1575 = !DILocalVariable(name: "write_error", scope: !1576, file: !259, line: 122, type: !12)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !259, line: 121, column: 5)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !259, line: 119, column: 7)
!1578 = !DILocation(line: 119, column: 21, scope: !1577)
!1579 = !DILocation(line: 119, column: 7, scope: !1577)
!1580 = !DILocation(line: 119, column: 29, scope: !1577)
!1581 = !DILocation(line: 120, column: 7, scope: !1577)
!1582 = !DILocation(line: 120, column: 12, scope: !1577)
!1583 = !{i8 0, i8 2}
!1584 = !DILocation(line: 120, column: 25, scope: !1577)
!1585 = !DILocation(line: 120, column: 28, scope: !1577)
!1586 = !DILocation(line: 120, column: 34, scope: !1577)
!1587 = !DILocation(line: 119, column: 7, scope: !1573)
!1588 = !DILocation(line: 122, column: 33, scope: !1576)
!1589 = !DILocation(line: 0, scope: !1576)
!1590 = !DILocation(line: 123, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1576, file: !259, line: 123, column: 11)
!1592 = !DILocation(line: 0, scope: !1591)
!1593 = !DILocation(line: 123, column: 11, scope: !1576)
!1594 = !DILocation(line: 124, column: 36, scope: !1591)
!1595 = !DILocation(line: 124, column: 9, scope: !1591)
!1596 = !DILocation(line: 127, column: 9, scope: !1591)
!1597 = !DILocation(line: 129, column: 14, scope: !1576)
!1598 = !DILocation(line: 129, column: 7, scope: !1576)
!1599 = !DILocation(line: 134, column: 42, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1573, file: !259, line: 134, column: 7)
!1601 = !DILocation(line: 134, column: 28, scope: !1600)
!1602 = !DILocation(line: 134, column: 50, scope: !1600)
!1603 = !DILocation(line: 134, column: 7, scope: !1573)
!1604 = !DILocation(line: 135, column: 12, scope: !1600)
!1605 = !DILocation(line: 135, column: 5, scope: !1600)
!1606 = !DILocation(line: 136, column: 1, scope: !1573)
!1607 = distinct !DISubprogram(name: "umaxtostr", scope: !1608, file: !1608, line: 36, type: !1609, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1611)
!1608 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!10, !497, !10}
!1611 = !{!1612, !1613, !1614}
!1612 = !DILocalVariable(name: "i", arg: 1, scope: !1607, file: !1608, line: 36, type: !497)
!1613 = !DILocalVariable(name: "buf", arg: 2, scope: !1607, file: !1608, line: 36, type: !10)
!1614 = !DILocalVariable(name: "p", scope: !1607, file: !1608, line: 38, type: !10)
!1615 = !DILocation(line: 0, scope: !1607)
!1616 = !DILocation(line: 38, column: 17, scope: !1607)
!1617 = !DILocation(line: 39, column: 6, scope: !1607)
!1618 = !DILocation(line: 41, column: 7, scope: !1607)
!1619 = !DILocation(line: 52, column: 24, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !1608, line: 50, column: 5)
!1621 = distinct !DILexicalBlock(scope: !1607, file: !1608, line: 41, column: 7)
!1622 = !DILocation(line: 52, column: 16, scope: !1620)
!1623 = !DILocation(line: 52, column: 10, scope: !1620)
!1624 = !DILocation(line: 52, column: 14, scope: !1620)
!1625 = !DILocation(line: 53, column: 17, scope: !1620)
!1626 = !DILocation(line: 53, column: 24, scope: !1620)
!1627 = !DILocation(line: 52, column: 9, scope: !1620)
!1628 = distinct !{!1628, !1629, !1630}
!1629 = !DILocation(line: 51, column: 7, scope: !1620)
!1630 = !DILocation(line: 53, column: 28, scope: !1620)
!1631 = !DILocation(line: 56, column: 3, scope: !1607)
!1632 = distinct !DISubprogram(name: "set_program_name", scope: !311, file: !311, line: 39, type: !78, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !310, retainedNodes: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DILocalVariable(name: "argv0", arg: 1, scope: !1632, file: !311, line: 39, type: !12)
!1635 = !DILocalVariable(name: "slash", scope: !1632, file: !311, line: 46, type: !12)
!1636 = !DILocalVariable(name: "base", scope: !1632, file: !311, line: 47, type: !12)
!1637 = !DILocation(line: 0, scope: !1632)
!1638 = !DILocation(line: 51, column: 13, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1632, file: !311, line: 51, column: 7)
!1640 = !DILocation(line: 51, column: 7, scope: !1632)
!1641 = !DILocation(line: 55, column: 14, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !311, line: 52, column: 5)
!1643 = !DILocation(line: 54, column: 7, scope: !1642)
!1644 = !DILocation(line: 56, column: 7, scope: !1642)
!1645 = !DILocation(line: 59, column: 11, scope: !1632)
!1646 = !DILocation(line: 60, column: 17, scope: !1632)
!1647 = !DILocation(line: 60, column: 11, scope: !1632)
!1648 = !DILocation(line: 61, column: 12, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1632, file: !311, line: 61, column: 7)
!1650 = !DILocation(line: 61, column: 20, scope: !1649)
!1651 = !DILocation(line: 61, column: 25, scope: !1649)
!1652 = !DILocation(line: 61, column: 42, scope: !1649)
!1653 = !DILocation(line: 61, column: 28, scope: !1649)
!1654 = !DILocation(line: 61, column: 61, scope: !1649)
!1655 = !DILocation(line: 61, column: 7, scope: !1632)
!1656 = !DILocation(line: 64, column: 11, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !311, line: 64, column: 11)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !311, line: 62, column: 5)
!1659 = !DILocation(line: 64, column: 36, scope: !1657)
!1660 = !DILocation(line: 64, column: 11, scope: !1658)
!1661 = !DILocation(line: 66, column: 24, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !311, line: 65, column: 9)
!1663 = !DILocation(line: 70, column: 41, scope: !1662)
!1664 = !DILocation(line: 72, column: 9, scope: !1662)
!1665 = !DILocation(line: 84, column: 16, scope: !1632)
!1666 = !DILocation(line: 90, column: 27, scope: !1632)
!1667 = !DILocation(line: 92, column: 1, scope: !1632)
!1668 = distinct !DISubprogram(name: "clone_quoting_options", scope: !352, file: !352, line: 122, type: !1669, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1672)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!1671, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!1672 = !{!1673, !1674, !1675}
!1673 = !DILocalVariable(name: "o", arg: 1, scope: !1668, file: !352, line: 122, type: !1671)
!1674 = !DILocalVariable(name: "e", scope: !1668, file: !352, line: 124, type: !14)
!1675 = !DILocalVariable(name: "p", scope: !1668, file: !352, line: 125, type: !1671)
!1676 = !DILocation(line: 0, scope: !1668)
!1677 = !DILocation(line: 124, column: 11, scope: !1668)
!1678 = !DILocation(line: 125, column: 40, scope: !1668)
!1679 = !DILocation(line: 125, column: 31, scope: !1668)
!1680 = !DILocation(line: 127, column: 9, scope: !1668)
!1681 = !DILocation(line: 128, column: 3, scope: !1668)
!1682 = distinct !DISubprogram(name: "get_quoting_style", scope: !352, file: !352, line: 133, type: !1683, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!354, !398}
!1685 = !{!1686}
!1686 = !DILocalVariable(name: "o", arg: 1, scope: !1682, file: !352, line: 133, type: !398)
!1687 = !DILocation(line: 0, scope: !1682)
!1688 = !DILocation(line: 135, column: 11, scope: !1682)
!1689 = !DILocation(line: 135, column: 46, scope: !1682)
!1690 = !{!1691, !1240, i64 0}
!1691 = !{!"quoting_options", !1240, i64 0, !1314, i64 4, !1240, i64 8, !1239, i64 40, !1239, i64 48}
!1692 = !DILocation(line: 135, column: 3, scope: !1682)
!1693 = distinct !DISubprogram(name: "set_quoting_style", scope: !352, file: !352, line: 141, type: !1694, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1671, !354}
!1696 = !{!1697, !1698}
!1697 = !DILocalVariable(name: "o", arg: 1, scope: !1693, file: !352, line: 141, type: !1671)
!1698 = !DILocalVariable(name: "s", arg: 2, scope: !1693, file: !352, line: 141, type: !354)
!1699 = !DILocation(line: 0, scope: !1693)
!1700 = !DILocation(line: 143, column: 4, scope: !1693)
!1701 = !DILocation(line: 143, column: 39, scope: !1693)
!1702 = !DILocation(line: 143, column: 45, scope: !1693)
!1703 = !DILocation(line: 144, column: 1, scope: !1693)
!1704 = distinct !DISubprogram(name: "set_char_quoting", scope: !352, file: !352, line: 152, type: !1705, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1707)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!14, !1671, !11, !14}
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714}
!1708 = !DILocalVariable(name: "o", arg: 1, scope: !1704, file: !352, line: 152, type: !1671)
!1709 = !DILocalVariable(name: "c", arg: 2, scope: !1704, file: !352, line: 152, type: !11)
!1710 = !DILocalVariable(name: "i", arg: 3, scope: !1704, file: !352, line: 152, type: !14)
!1711 = !DILocalVariable(name: "uc", scope: !1704, file: !352, line: 154, type: !152)
!1712 = !DILocalVariable(name: "p", scope: !1704, file: !352, line: 155, type: !190)
!1713 = !DILocalVariable(name: "shift", scope: !1704, file: !352, line: 157, type: !14)
!1714 = !DILocalVariable(name: "r", scope: !1704, file: !352, line: 158, type: !14)
!1715 = !DILocation(line: 0, scope: !1704)
!1716 = !DILocation(line: 156, column: 6, scope: !1704)
!1717 = !DILocation(line: 156, column: 62, scope: !1704)
!1718 = !DILocation(line: 156, column: 57, scope: !1704)
!1719 = !DILocation(line: 157, column: 15, scope: !1704)
!1720 = !DILocation(line: 158, column: 12, scope: !1704)
!1721 = !DILocation(line: 158, column: 15, scope: !1704)
!1722 = !DILocation(line: 158, column: 25, scope: !1704)
!1723 = !DILocation(line: 159, column: 13, scope: !1704)
!1724 = !DILocation(line: 159, column: 18, scope: !1704)
!1725 = !DILocation(line: 159, column: 23, scope: !1704)
!1726 = !DILocation(line: 159, column: 6, scope: !1704)
!1727 = !DILocation(line: 160, column: 3, scope: !1704)
!1728 = distinct !DISubprogram(name: "set_quoting_flags", scope: !352, file: !352, line: 168, type: !1729, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!14, !1671, !14}
!1731 = !{!1732, !1733, !1734}
!1732 = !DILocalVariable(name: "o", arg: 1, scope: !1728, file: !352, line: 168, type: !1671)
!1733 = !DILocalVariable(name: "i", arg: 2, scope: !1728, file: !352, line: 168, type: !14)
!1734 = !DILocalVariable(name: "r", scope: !1728, file: !352, line: 170, type: !14)
!1735 = !DILocation(line: 0, scope: !1728)
!1736 = !DILocation(line: 171, column: 8, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1728, file: !352, line: 171, column: 7)
!1738 = !DILocation(line: 171, column: 7, scope: !1728)
!1739 = !DILocation(line: 173, column: 10, scope: !1728)
!1740 = !{!1691, !1314, i64 4}
!1741 = !DILocation(line: 174, column: 12, scope: !1728)
!1742 = !DILocation(line: 175, column: 3, scope: !1728)
!1743 = distinct !DISubprogram(name: "set_custom_quoting", scope: !352, file: !352, line: 179, type: !1744, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !1671, !12, !12}
!1746 = !{!1747, !1748, !1749}
!1747 = !DILocalVariable(name: "o", arg: 1, scope: !1743, file: !352, line: 179, type: !1671)
!1748 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1743, file: !352, line: 180, type: !12)
!1749 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1743, file: !352, line: 180, type: !12)
!1750 = !DILocation(line: 0, scope: !1743)
!1751 = !DILocation(line: 182, column: 8, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1743, file: !352, line: 182, column: 7)
!1753 = !DILocation(line: 182, column: 7, scope: !1743)
!1754 = !DILocation(line: 184, column: 6, scope: !1743)
!1755 = !DILocation(line: 184, column: 12, scope: !1743)
!1756 = !DILocation(line: 185, column: 8, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1743, file: !352, line: 185, column: 7)
!1758 = !DILocation(line: 185, column: 23, scope: !1757)
!1759 = !DILocation(line: 185, column: 19, scope: !1757)
!1760 = !DILocation(line: 186, column: 5, scope: !1757)
!1761 = !DILocation(line: 187, column: 6, scope: !1743)
!1762 = !DILocation(line: 187, column: 17, scope: !1743)
!1763 = !{!1691, !1239, i64 40}
!1764 = !DILocation(line: 188, column: 6, scope: !1743)
!1765 = !DILocation(line: 188, column: 18, scope: !1743)
!1766 = !{!1691, !1239, i64 48}
!1767 = !DILocation(line: 189, column: 1, scope: !1743)
!1768 = distinct !DISubprogram(name: "quotearg_buffer", scope: !352, file: !352, line: 784, type: !1769, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1771)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!68, !10, !68, !12, !68, !398}
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1772 = !DILocalVariable(name: "buffer", arg: 1, scope: !1768, file: !352, line: 784, type: !10)
!1773 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1768, file: !352, line: 784, type: !68)
!1774 = !DILocalVariable(name: "arg", arg: 3, scope: !1768, file: !352, line: 785, type: !12)
!1775 = !DILocalVariable(name: "argsize", arg: 4, scope: !1768, file: !352, line: 785, type: !68)
!1776 = !DILocalVariable(name: "o", arg: 5, scope: !1768, file: !352, line: 786, type: !398)
!1777 = !DILocalVariable(name: "p", scope: !1768, file: !352, line: 788, type: !398)
!1778 = !DILocalVariable(name: "e", scope: !1768, file: !352, line: 789, type: !14)
!1779 = !DILocalVariable(name: "r", scope: !1768, file: !352, line: 790, type: !68)
!1780 = !DILocation(line: 0, scope: !1768)
!1781 = !DILocation(line: 788, column: 37, scope: !1768)
!1782 = !DILocation(line: 789, column: 11, scope: !1768)
!1783 = !DILocation(line: 791, column: 43, scope: !1768)
!1784 = !DILocation(line: 791, column: 53, scope: !1768)
!1785 = !DILocation(line: 791, column: 60, scope: !1768)
!1786 = !DILocation(line: 792, column: 43, scope: !1768)
!1787 = !DILocation(line: 792, column: 58, scope: !1768)
!1788 = !DILocation(line: 790, column: 14, scope: !1768)
!1789 = !DILocation(line: 793, column: 9, scope: !1768)
!1790 = !DILocation(line: 794, column: 3, scope: !1768)
!1791 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !352, file: !352, line: 256, type: !1792, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1796)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!68, !10, !68, !12, !68, !354, !14, !1794, !12, !12}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1821, !1822, !1823, !1824, !1825, !1828, !1829, !1835, !1838, !1839, !1846, !1849, !1850, !1851, !1852, !1853, !1854}
!1797 = !DILocalVariable(name: "buffer", arg: 1, scope: !1791, file: !352, line: 256, type: !10)
!1798 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1791, file: !352, line: 256, type: !68)
!1799 = !DILocalVariable(name: "arg", arg: 3, scope: !1791, file: !352, line: 257, type: !12)
!1800 = !DILocalVariable(name: "argsize", arg: 4, scope: !1791, file: !352, line: 257, type: !68)
!1801 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1791, file: !352, line: 258, type: !354)
!1802 = !DILocalVariable(name: "flags", arg: 6, scope: !1791, file: !352, line: 258, type: !14)
!1803 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1791, file: !352, line: 259, type: !1794)
!1804 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1791, file: !352, line: 260, type: !12)
!1805 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1791, file: !352, line: 261, type: !12)
!1806 = !DILocalVariable(name: "i", scope: !1791, file: !352, line: 263, type: !68)
!1807 = !DILocalVariable(name: "len", scope: !1791, file: !352, line: 264, type: !68)
!1808 = !DILocalVariable(name: "orig_buffersize", scope: !1791, file: !352, line: 265, type: !68)
!1809 = !DILocalVariable(name: "quote_string", scope: !1791, file: !352, line: 266, type: !12)
!1810 = !DILocalVariable(name: "quote_string_len", scope: !1791, file: !352, line: 267, type: !68)
!1811 = !DILocalVariable(name: "backslash_escapes", scope: !1791, file: !352, line: 268, type: !131)
!1812 = !DILocalVariable(name: "unibyte_locale", scope: !1791, file: !352, line: 269, type: !131)
!1813 = !DILocalVariable(name: "elide_outer_quotes", scope: !1791, file: !352, line: 270, type: !131)
!1814 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1791, file: !352, line: 271, type: !131)
!1815 = !DILocalVariable(name: "encountered_single_quote", scope: !1791, file: !352, line: 272, type: !131)
!1816 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1791, file: !352, line: 273, type: !131)
!1817 = !DILocalVariable(name: "c", scope: !1818, file: !352, line: 402, type: !152)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !352, line: 401, column: 5)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !352, line: 400, column: 3)
!1820 = distinct !DILexicalBlock(scope: !1791, file: !352, line: 400, column: 3)
!1821 = !DILocalVariable(name: "esc", scope: !1818, file: !352, line: 403, type: !152)
!1822 = !DILocalVariable(name: "is_right_quote", scope: !1818, file: !352, line: 404, type: !131)
!1823 = !DILocalVariable(name: "escaping", scope: !1818, file: !352, line: 405, type: !131)
!1824 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1818, file: !352, line: 406, type: !131)
!1825 = !DILocalVariable(name: "m", scope: !1826, file: !352, line: 610, type: !68)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 608, column: 11)
!1827 = distinct !DILexicalBlock(scope: !1818, file: !352, line: 426, column: 9)
!1828 = !DILocalVariable(name: "printable", scope: !1826, file: !352, line: 612, type: !131)
!1829 = !DILocalVariable(name: "mbstate", scope: !1830, file: !352, line: 621, type: !1832)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !352, line: 620, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1826, file: !352, line: 614, column: 17)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1833, line: 6, baseType: !1834)
!1833 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !419, line: 21, baseType: !418)
!1835 = !DILocalVariable(name: "w", scope: !1836, file: !352, line: 631, type: !1837)
!1836 = distinct !DILexicalBlock(scope: !1830, file: !352, line: 630, column: 19)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !14)
!1838 = !DILocalVariable(name: "bytes", scope: !1836, file: !352, line: 632, type: !68)
!1839 = !DILocalVariable(name: "j", scope: !1840, file: !352, line: 657, type: !68)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !352, line: 656, column: 27)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !352, line: 654, column: 29)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !352, line: 649, column: 23)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !352, line: 641, column: 30)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !352, line: 636, column: 30)
!1845 = distinct !DILexicalBlock(scope: !1836, file: !352, line: 634, column: 25)
!1846 = !DILocalVariable(name: "ilim", scope: !1847, file: !352, line: 684, type: !68)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !352, line: 681, column: 15)
!1848 = distinct !DILexicalBlock(scope: !1826, file: !352, line: 680, column: 17)
!1849 = !DILabel(scope: !1791, name: "process_input", file: !352, line: 314)
!1850 = !DILabel(scope: !1827, name: "c_and_shell_escape", file: !352, line: 512)
!1851 = !DILabel(scope: !1827, name: "c_escape", file: !352, line: 517)
!1852 = !DILabel(scope: !1818, name: "store_escape", file: !352, line: 719)
!1853 = !DILabel(scope: !1818, name: "store_c", file: !352, line: 722)
!1854 = !DILabel(scope: !1791, name: "force_outer_quoting_style", file: !352, line: 763)
!1855 = !DILocation(line: 0, scope: !1791)
!1856 = !DILocation(line: 269, column: 25, scope: !1791)
!1857 = !DILocation(line: 269, column: 36, scope: !1791)
!1858 = !DILocation(line: 270, column: 8, scope: !1791)
!1859 = !DILocation(line: 0, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 526, column: 15)
!1861 = !DILocation(line: 0, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !352, line: 462, column: 19)
!1863 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 455, column: 13)
!1864 = !DILocation(line: 0, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !352, line: 449, column: 20)
!1866 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 428, column: 15)
!1867 = !DILocation(line: 0, scope: !1830)
!1868 = !DILocation(line: 0, scope: !1836)
!1869 = !DILocation(line: 0, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1818, file: !352, line: 712, column: 11)
!1871 = !DILocation(line: 273, column: 3, scope: !1791)
!1872 = !DILocation(line: 265, column: 10, scope: !1791)
!1873 = !DILocation(line: 266, column: 15, scope: !1791)
!1874 = !DILocation(line: 267, column: 10, scope: !1791)
!1875 = !DILocation(line: 268, column: 8, scope: !1791)
!1876 = !DILocation(line: 271, column: 8, scope: !1791)
!1877 = !DILocation(line: 272, column: 8, scope: !1791)
!1878 = !DILocation(line: 273, column: 8, scope: !1791)
!1879 = !DILocation(line: 314, column: 2, scope: !1791)
!1880 = !DILocation(line: 316, column: 3, scope: !1791)
!1881 = !DILocation(line: 323, column: 11, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1791, file: !352, line: 317, column: 5)
!1883 = !DILocation(line: 323, column: 12, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1882, file: !352, line: 323, column: 11)
!1885 = !DILocation(line: 324, column: 9, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !352, line: 324, column: 9)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !352, line: 324, column: 9)
!1888 = !DILocation(line: 324, column: 9, scope: !1887)
!1889 = !DILocation(line: 362, column: 26, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !352, line: 340, column: 11)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !352, line: 339, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1882, file: !352, line: 338, column: 7)
!1893 = !DILocation(line: 363, column: 27, scope: !1890)
!1894 = !DILocation(line: 364, column: 11, scope: !1890)
!1895 = !DILocation(line: 365, column: 14, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !352, line: 365, column: 13)
!1897 = !DILocation(line: 365, column: 13, scope: !1892)
!1898 = !DILocation(line: 366, column: 43, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !352, line: 366, column: 11)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !352, line: 366, column: 11)
!1901 = !DILocation(line: 366, column: 11, scope: !1900)
!1902 = !DILocation(line: 367, column: 13, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !352, line: 367, column: 13)
!1904 = distinct !DILexicalBlock(scope: !1899, file: !352, line: 367, column: 13)
!1905 = !DILocation(line: 367, column: 13, scope: !1904)
!1906 = !DILocation(line: 366, column: 70, scope: !1899)
!1907 = distinct !{!1907, !1901, !1908}
!1908 = !DILocation(line: 367, column: 13, scope: !1900)
!1909 = !DILocation(line: 264, column: 10, scope: !1791)
!1910 = !DILocation(line: 370, column: 28, scope: !1892)
!1911 = !DILocation(line: 372, column: 7, scope: !1882)
!1912 = !DILocation(line: 376, column: 7, scope: !1882)
!1913 = !DILocation(line: 379, column: 7, scope: !1882)
!1914 = !DILocation(line: 381, column: 12, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1882, file: !352, line: 381, column: 11)
!1916 = !DILocation(line: 381, column: 11, scope: !1882)
!1917 = !DILocation(line: 386, column: 12, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1882, file: !352, line: 386, column: 11)
!1919 = !DILocation(line: 386, column: 11, scope: !1882)
!1920 = !DILocation(line: 387, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !352, line: 387, column: 9)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !352, line: 387, column: 9)
!1923 = !DILocation(line: 387, column: 9, scope: !1922)
!1924 = !DILocation(line: 394, column: 7, scope: !1882)
!1925 = !DILocation(line: 397, column: 7, scope: !1882)
!1926 = !DILocation(line: 0, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1818, file: !352, line: 408, column: 11)
!1928 = !DILocation(line: 0, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !352, line: 419, column: 15)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !352, line: 418, column: 9)
!1931 = !DILocation(line: 0, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 556, column: 15)
!1933 = !DILocation(line: 0, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 548, column: 15)
!1935 = !DILocation(line: 0, scope: !1841)
!1936 = !DILocation(line: 0, scope: !1848)
!1937 = !DILocation(line: 0, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 509, column: 15)
!1939 = !DILocation(line: 400, column: 8, scope: !1820)
!1940 = !DILocation(line: 0, scope: !1820)
!1941 = !DILocation(line: 400, column: 27, scope: !1819)
!1942 = !DILocation(line: 400, column: 19, scope: !1819)
!1943 = !DILocation(line: 400, column: 41, scope: !1819)
!1944 = !DILocation(line: 400, column: 48, scope: !1819)
!1945 = !DILocation(line: 400, column: 3, scope: !1820)
!1946 = !DILocation(line: 400, column: 60, scope: !1819)
!1947 = !DILocation(line: 0, scope: !1818)
!1948 = !DILocation(line: 409, column: 11, scope: !1927)
!1949 = !DILocation(line: 411, column: 17, scope: !1927)
!1950 = !DILocation(line: 412, column: 39, scope: !1927)
!1951 = !DILocation(line: 416, column: 32, scope: !1927)
!1952 = !DILocation(line: 412, column: 19, scope: !1927)
!1953 = !DILocation(line: 412, column: 15, scope: !1927)
!1954 = !DILocation(line: 417, column: 11, scope: !1927)
!1955 = !DILocation(line: 417, column: 26, scope: !1927)
!1956 = !DILocation(line: 417, column: 14, scope: !1927)
!1957 = !DILocation(line: 417, column: 63, scope: !1927)
!1958 = !DILocation(line: 408, column: 11, scope: !1818)
!1959 = !DILocation(line: 424, column: 11, scope: !1818)
!1960 = !DILocation(line: 425, column: 7, scope: !1818)
!1961 = !DILocation(line: 428, column: 15, scope: !1827)
!1962 = !DILocation(line: 430, column: 15, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !352, line: 430, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1866, file: !352, line: 429, column: 13)
!1965 = !DILocation(line: 430, column: 15, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1963, file: !352, line: 430, column: 15)
!1967 = !DILocation(line: 430, column: 15, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !352, line: 430, column: 15)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !352, line: 430, column: 15)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !352, line: 430, column: 15)
!1971 = !DILocation(line: 430, column: 15, scope: !1969)
!1972 = !DILocation(line: 430, column: 15, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !352, line: 430, column: 15)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !352, line: 430, column: 15)
!1975 = !DILocation(line: 430, column: 15, scope: !1974)
!1976 = !DILocation(line: 430, column: 15, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !352, line: 430, column: 15)
!1978 = distinct !DILexicalBlock(scope: !1970, file: !352, line: 430, column: 15)
!1979 = !DILocation(line: 430, column: 15, scope: !1978)
!1980 = !DILocation(line: 430, column: 15, scope: !1970)
!1981 = !DILocation(line: 430, column: 15, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !352, line: 430, column: 15)
!1983 = distinct !DILexicalBlock(scope: !1963, file: !352, line: 430, column: 15)
!1984 = !DILocation(line: 430, column: 15, scope: !1983)
!1985 = !DILocation(line: 438, column: 19, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1964, file: !352, line: 437, column: 19)
!1987 = !DILocation(line: 438, column: 24, scope: !1986)
!1988 = !DILocation(line: 438, column: 28, scope: !1986)
!1989 = !DILocation(line: 438, column: 38, scope: !1986)
!1990 = !DILocation(line: 438, column: 48, scope: !1986)
!1991 = !DILocation(line: 438, column: 59, scope: !1986)
!1992 = !DILocation(line: 440, column: 19, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !352, line: 440, column: 19)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !352, line: 440, column: 19)
!1995 = distinct !DILexicalBlock(scope: !1986, file: !352, line: 439, column: 17)
!1996 = !DILocation(line: 440, column: 19, scope: !1994)
!1997 = !DILocation(line: 441, column: 19, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !352, line: 441, column: 19)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !352, line: 441, column: 19)
!2000 = !DILocation(line: 441, column: 19, scope: !1999)
!2001 = !DILocation(line: 442, column: 17, scope: !1995)
!2002 = !DILocation(line: 449, column: 20, scope: !1866)
!2003 = !DILocation(line: 454, column: 11, scope: !1827)
!2004 = !DILocation(line: 457, column: 19, scope: !1863)
!2005 = !DILocation(line: 463, column: 19, scope: !1862)
!2006 = !DILocation(line: 463, column: 24, scope: !1862)
!2007 = !DILocation(line: 463, column: 28, scope: !1862)
!2008 = !DILocation(line: 463, column: 38, scope: !1862)
!2009 = !DILocation(line: 463, column: 47, scope: !1862)
!2010 = !DILocation(line: 463, column: 41, scope: !1862)
!2011 = !DILocation(line: 463, column: 52, scope: !1862)
!2012 = !DILocation(line: 462, column: 19, scope: !1863)
!2013 = !DILocation(line: 464, column: 25, scope: !1862)
!2014 = !DILocation(line: 464, column: 17, scope: !1862)
!2015 = !DILocation(line: 471, column: 25, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1862, file: !352, line: 465, column: 19)
!2017 = !DILocation(line: 475, column: 21, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !352, line: 475, column: 21)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !352, line: 475, column: 21)
!2020 = !DILocation(line: 475, column: 21, scope: !2019)
!2021 = !DILocation(line: 476, column: 21, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !352, line: 476, column: 21)
!2023 = distinct !DILexicalBlock(scope: !2016, file: !352, line: 476, column: 21)
!2024 = !DILocation(line: 476, column: 21, scope: !2023)
!2025 = !DILocation(line: 477, column: 21, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !352, line: 477, column: 21)
!2027 = distinct !DILexicalBlock(scope: !2016, file: !352, line: 477, column: 21)
!2028 = !DILocation(line: 477, column: 21, scope: !2027)
!2029 = !DILocation(line: 478, column: 21, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !352, line: 478, column: 21)
!2031 = distinct !DILexicalBlock(scope: !2016, file: !352, line: 478, column: 21)
!2032 = !DILocation(line: 478, column: 21, scope: !2031)
!2033 = !DILocation(line: 479, column: 21, scope: !2016)
!2034 = !DILocation(line: 492, column: 31, scope: !1827)
!2035 = !DILocation(line: 493, column: 31, scope: !1827)
!2036 = !DILocation(line: 495, column: 31, scope: !1827)
!2037 = !DILocation(line: 496, column: 31, scope: !1827)
!2038 = !DILocation(line: 497, column: 31, scope: !1827)
!2039 = !DILocation(line: 500, column: 15, scope: !1827)
!2040 = !DILocation(line: 502, column: 19, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !352, line: 501, column: 13)
!2042 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 500, column: 15)
!2043 = !DILocation(line: 509, column: 33, scope: !1938)
!2044 = !DILocation(line: 0, scope: !1827)
!2045 = !DILocation(line: 512, column: 9, scope: !1827)
!2046 = !DILocation(line: 514, column: 15, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 513, column: 15)
!2048 = !DILocation(line: 517, column: 9, scope: !1827)
!2049 = !DILocation(line: 518, column: 15, scope: !1827)
!2050 = !DILocation(line: 526, column: 15, scope: !1827)
!2051 = !DILocation(line: 526, column: 40, scope: !1860)
!2052 = !DILocation(line: 526, column: 47, scope: !1860)
!2053 = !DILocation(line: 526, column: 18, scope: !1860)
!2054 = !DILocation(line: 530, column: 17, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1827, file: !352, line: 530, column: 15)
!2056 = !DILocation(line: 530, column: 15, scope: !1827)
!2057 = !DILocation(line: 535, column: 11, scope: !1827)
!2058 = !DILocation(line: 549, column: 15, scope: !1934)
!2059 = !DILocation(line: 556, column: 15, scope: !1827)
!2060 = !DILocation(line: 558, column: 19, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1932, file: !352, line: 557, column: 13)
!2062 = !DILocation(line: 561, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !352, line: 561, column: 19)
!2064 = !DILocation(line: 561, column: 35, scope: !2063)
!2065 = !DILocation(line: 561, column: 30, scope: !2063)
!2066 = !DILocation(line: 570, column: 15, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !352, line: 570, column: 15)
!2068 = distinct !DILexicalBlock(scope: !2061, file: !352, line: 570, column: 15)
!2069 = !DILocation(line: 570, column: 15, scope: !2068)
!2070 = !DILocation(line: 571, column: 15, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !352, line: 571, column: 15)
!2072 = distinct !DILexicalBlock(scope: !2061, file: !352, line: 571, column: 15)
!2073 = !DILocation(line: 571, column: 15, scope: !2072)
!2074 = !DILocation(line: 572, column: 15, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !352, line: 572, column: 15)
!2076 = distinct !DILexicalBlock(scope: !2061, file: !352, line: 572, column: 15)
!2077 = !DILocation(line: 572, column: 15, scope: !2076)
!2078 = !DILocation(line: 574, column: 13, scope: !2061)
!2079 = !DILocation(line: 614, column: 17, scope: !1826)
!2080 = !DILocation(line: 0, scope: !1826)
!2081 = !DILocation(line: 617, column: 29, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1831, file: !352, line: 615, column: 15)
!2083 = !{!1360, !1360, i64 0}
!2084 = !DILocation(line: 617, column: 27, scope: !2082)
!2085 = !DILocation(line: 618, column: 15, scope: !2082)
!2086 = !DILocation(line: 621, column: 17, scope: !1830)
!2087 = !DILocation(line: 621, column: 27, scope: !1830)
!2088 = !DILocalVariable(name: "__dest", arg: 1, scope: !2089, file: !2090, line: 59, type: !66)
!2089 = distinct !DISubprogram(name: "memset", scope: !2090, file: !2090, line: 59, type: !2091, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2093)
!2090 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!66, !66, !14, !68}
!2093 = !{!2088, !2094, !2095}
!2094 = !DILocalVariable(name: "__ch", arg: 2, scope: !2089, file: !2090, line: 59, type: !14)
!2095 = !DILocalVariable(name: "__len", arg: 3, scope: !2089, file: !2090, line: 59, type: !68)
!2096 = !DILocation(line: 0, scope: !2089, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 622, column: 17, scope: !1830)
!2098 = !DILocation(line: 71, column: 10, scope: !2089, inlinedAt: !2097)
!2099 = !DILocation(line: 626, column: 29, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1830, file: !352, line: 626, column: 21)
!2101 = !DILocation(line: 626, column: 21, scope: !1830)
!2102 = !DILocation(line: 627, column: 29, scope: !2100)
!2103 = !DILocation(line: 627, column: 19, scope: !2100)
!2104 = !DILocation(line: 629, column: 17, scope: !1830)
!2105 = !DILocation(line: 624, column: 19, scope: !1830)
!2106 = !DILocation(line: 625, column: 27, scope: !1830)
!2107 = !DILocation(line: 631, column: 21, scope: !1836)
!2108 = !DILocation(line: 632, column: 56, scope: !1836)
!2109 = !DILocation(line: 632, column: 50, scope: !1836)
!2110 = !DILocation(line: 633, column: 53, scope: !1836)
!2111 = !DILocation(line: 632, column: 36, scope: !1836)
!2112 = !DILocation(line: 634, column: 25, scope: !1836)
!2113 = !DILocation(line: 644, column: 38, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1843, file: !352, line: 642, column: 23)
!2115 = !DILocation(line: 644, column: 48, scope: !2114)
!2116 = !DILocation(line: 644, column: 25, scope: !2114)
!2117 = !DILocation(line: 644, column: 51, scope: !2114)
!2118 = !DILocation(line: 645, column: 28, scope: !2114)
!2119 = !DILocation(line: 644, column: 34, scope: !2114)
!2120 = distinct !{!2120, !2116, !2118}
!2121 = !DILocation(line: 658, column: 43, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !352, line: 658, column: 29)
!2123 = distinct !DILexicalBlock(scope: !1840, file: !352, line: 658, column: 29)
!2124 = !DILocation(line: 655, column: 29, scope: !1841)
!2125 = !DILocation(line: 0, scope: !1840)
!2126 = !DILocation(line: 659, column: 49, scope: !2122)
!2127 = !DILocation(line: 659, column: 39, scope: !2122)
!2128 = !DILocation(line: 659, column: 31, scope: !2122)
!2129 = !DILocation(line: 658, column: 53, scope: !2122)
!2130 = !DILocation(line: 658, column: 29, scope: !2123)
!2131 = distinct !{!2131, !2130, !2132}
!2132 = !DILocation(line: 667, column: 33, scope: !2123)
!2133 = !DILocation(line: 674, column: 19, scope: !1830)
!2134 = !DILocation(line: 670, column: 41, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1842, file: !352, line: 670, column: 29)
!2136 = !DILocation(line: 670, column: 31, scope: !2135)
!2137 = !DILocation(line: 670, column: 29, scope: !1842)
!2138 = !DILocation(line: 672, column: 27, scope: !1842)
!2139 = !DILocation(line: 675, column: 26, scope: !1830)
!2140 = !DILocation(line: 675, column: 24, scope: !1830)
!2141 = !DILocation(line: 674, column: 19, scope: !1836)
!2142 = distinct !{!2142, !2104, !2143}
!2143 = !DILocation(line: 675, column: 44, scope: !1830)
!2144 = !DILocation(line: 676, column: 15, scope: !1831)
!2145 = !DILocation(line: 0, scope: !1831)
!2146 = !DILocation(line: 678, column: 40, scope: !1826)
!2147 = !DILocation(line: 680, column: 19, scope: !1848)
!2148 = !DILocation(line: 680, column: 45, scope: !1848)
!2149 = !DILocation(line: 680, column: 23, scope: !1848)
!2150 = !DILocation(line: 684, column: 33, scope: !1847)
!2151 = !DILocation(line: 0, scope: !1847)
!2152 = !DILocation(line: 686, column: 17, scope: !1847)
!2153 = !DILocation(line: 405, column: 12, scope: !1818)
!2154 = !DILocation(line: 688, column: 43, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !352, line: 688, column: 25)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !352, line: 687, column: 19)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !352, line: 686, column: 17)
!2158 = distinct !DILexicalBlock(scope: !1847, file: !352, line: 686, column: 17)
!2159 = !DILocation(line: 690, column: 25, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !352, line: 690, column: 25)
!2161 = distinct !DILexicalBlock(scope: !2155, file: !352, line: 689, column: 23)
!2162 = !DILocation(line: 690, column: 25, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !352, line: 690, column: 25)
!2164 = !DILocation(line: 690, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !352, line: 690, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !352, line: 690, column: 25)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !352, line: 690, column: 25)
!2168 = !DILocation(line: 690, column: 25, scope: !2166)
!2169 = !DILocation(line: 690, column: 25, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !352, line: 690, column: 25)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !352, line: 690, column: 25)
!2172 = !DILocation(line: 690, column: 25, scope: !2171)
!2173 = !DILocation(line: 690, column: 25, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !352, line: 690, column: 25)
!2175 = distinct !DILexicalBlock(scope: !2167, file: !352, line: 690, column: 25)
!2176 = !DILocation(line: 690, column: 25, scope: !2175)
!2177 = !DILocation(line: 690, column: 25, scope: !2167)
!2178 = !DILocation(line: 690, column: 25, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !352, line: 690, column: 25)
!2180 = distinct !DILexicalBlock(scope: !2160, file: !352, line: 690, column: 25)
!2181 = !DILocation(line: 690, column: 25, scope: !2180)
!2182 = !DILocation(line: 691, column: 25, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !352, line: 691, column: 25)
!2184 = distinct !DILexicalBlock(scope: !2161, file: !352, line: 691, column: 25)
!2185 = !DILocation(line: 691, column: 25, scope: !2184)
!2186 = !DILocation(line: 692, column: 25, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !352, line: 692, column: 25)
!2188 = distinct !DILexicalBlock(scope: !2161, file: !352, line: 692, column: 25)
!2189 = !DILocation(line: 692, column: 25, scope: !2188)
!2190 = !DILocation(line: 693, column: 38, scope: !2161)
!2191 = !DILocation(line: 693, column: 33, scope: !2161)
!2192 = !DILocation(line: 694, column: 23, scope: !2161)
!2193 = !DILocation(line: 695, column: 30, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2155, file: !352, line: 695, column: 30)
!2195 = !DILocation(line: 695, column: 30, scope: !2155)
!2196 = !DILocation(line: 697, column: 25, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !352, line: 697, column: 25)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !352, line: 697, column: 25)
!2199 = distinct !DILexicalBlock(scope: !2194, file: !352, line: 696, column: 23)
!2200 = !DILocation(line: 697, column: 25, scope: !2198)
!2201 = !DILocation(line: 699, column: 23, scope: !2199)
!2202 = !DILocation(line: 700, column: 35, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2156, file: !352, line: 700, column: 25)
!2204 = !DILocation(line: 700, column: 30, scope: !2203)
!2205 = !DILocation(line: 700, column: 25, scope: !2156)
!2206 = !DILocation(line: 702, column: 21, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !352, line: 702, column: 21)
!2208 = distinct !DILexicalBlock(scope: !2156, file: !352, line: 702, column: 21)
!2209 = !DILocation(line: 702, column: 21, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !352, line: 702, column: 21)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !352, line: 702, column: 21)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !352, line: 702, column: 21)
!2213 = !DILocation(line: 702, column: 21, scope: !2211)
!2214 = !DILocation(line: 702, column: 21, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !352, line: 702, column: 21)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !352, line: 702, column: 21)
!2217 = !DILocation(line: 702, column: 21, scope: !2216)
!2218 = !DILocation(line: 702, column: 21, scope: !2212)
!2219 = !DILocation(line: 0, scope: !2156)
!2220 = !DILocation(line: 703, column: 21, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !352, line: 703, column: 21)
!2222 = distinct !DILexicalBlock(scope: !2156, file: !352, line: 703, column: 21)
!2223 = !DILocation(line: 703, column: 21, scope: !2222)
!2224 = !DILocation(line: 704, column: 25, scope: !2156)
!2225 = !DILocation(line: 686, column: 17, scope: !2157)
!2226 = distinct !{!2226, !2227, !2228}
!2227 = !DILocation(line: 686, column: 17, scope: !2158)
!2228 = !DILocation(line: 705, column: 19, scope: !2158)
!2229 = !DILocation(line: 416, column: 30, scope: !1927)
!2230 = !DILocation(line: 712, column: 34, scope: !1870)
!2231 = !DILocation(line: 715, column: 35, scope: !1870)
!2232 = !DILocation(line: 715, column: 17, scope: !1870)
!2233 = !DILocation(line: 715, column: 47, scope: !1870)
!2234 = !DILocation(line: 715, column: 65, scope: !1870)
!2235 = !DILocation(line: 716, column: 15, scope: !1870)
!2236 = !DILocation(line: 716, column: 11, scope: !1870)
!2237 = !DILocation(line: 712, column: 11, scope: !1818)
!2238 = !DILocation(line: 400, column: 10, scope: !1820)
!2239 = !DILocation(line: 719, column: 5, scope: !1818)
!2240 = !DILocation(line: 720, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !1818, file: !352, line: 720, column: 7)
!2242 = !DILocation(line: 720, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2241, file: !352, line: 720, column: 7)
!2244 = !DILocation(line: 720, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !352, line: 720, column: 7)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !352, line: 720, column: 7)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !352, line: 720, column: 7)
!2248 = !DILocation(line: 720, column: 7, scope: !2246)
!2249 = !DILocation(line: 720, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !352, line: 720, column: 7)
!2251 = distinct !DILexicalBlock(scope: !2247, file: !352, line: 720, column: 7)
!2252 = !DILocation(line: 720, column: 7, scope: !2251)
!2253 = !DILocation(line: 720, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !352, line: 720, column: 7)
!2255 = distinct !DILexicalBlock(scope: !2247, file: !352, line: 720, column: 7)
!2256 = !DILocation(line: 720, column: 7, scope: !2255)
!2257 = !DILocation(line: 720, column: 7, scope: !2247)
!2258 = !DILocation(line: 720, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !352, line: 720, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2241, file: !352, line: 720, column: 7)
!2261 = !DILocation(line: 720, column: 7, scope: !2260)
!2262 = !DILocation(line: 722, column: 5, scope: !1818)
!2263 = !DILocation(line: 723, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !352, line: 723, column: 7)
!2265 = distinct !DILexicalBlock(scope: !1818, file: !352, line: 723, column: 7)
!2266 = !DILocation(line: 424, column: 9, scope: !1818)
!2267 = !DILocation(line: 723, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !352, line: 723, column: 7)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !352, line: 723, column: 7)
!2270 = distinct !DILexicalBlock(scope: !2264, file: !352, line: 723, column: 7)
!2271 = !DILocation(line: 723, column: 7, scope: !2269)
!2272 = !DILocation(line: 723, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !352, line: 723, column: 7)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !352, line: 723, column: 7)
!2275 = !DILocation(line: 723, column: 7, scope: !2274)
!2276 = !DILocation(line: 723, column: 7, scope: !2270)
!2277 = !DILocation(line: 724, column: 7, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !352, line: 724, column: 7)
!2279 = distinct !DILexicalBlock(scope: !1818, file: !352, line: 724, column: 7)
!2280 = !DILocation(line: 724, column: 7, scope: !2279)
!2281 = !DILocation(line: 726, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1818, file: !352, line: 726, column: 11)
!2283 = !DILocation(line: 726, column: 11, scope: !1818)
!2284 = !DILocation(line: 728, column: 5, scope: !1819)
!2285 = !DILocation(line: 400, column: 75, scope: !1819)
!2286 = !DILocation(line: 400, column: 3, scope: !1819)
!2287 = distinct !{!2287, !1945, !2288}
!2288 = !DILocation(line: 728, column: 5, scope: !1820)
!2289 = !DILocation(line: 730, column: 11, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1791, file: !352, line: 730, column: 7)
!2291 = !DILocation(line: 730, column: 16, scope: !2290)
!2292 = !DILocation(line: 738, column: 51, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !1791, file: !352, line: 738, column: 7)
!2294 = !DILocation(line: 739, column: 10, scope: !2293)
!2295 = !DILocation(line: 741, column: 11, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !352, line: 741, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !352, line: 740, column: 5)
!2298 = !DILocation(line: 741, column: 11, scope: !2297)
!2299 = !DILocation(line: 742, column: 16, scope: !2296)
!2300 = !DILocation(line: 742, column: 9, scope: !2296)
!2301 = !DILocation(line: 746, column: 18, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !352, line: 746, column: 16)
!2303 = !DILocation(line: 746, column: 32, scope: !2302)
!2304 = !DILocation(line: 746, column: 29, scope: !2302)
!2305 = !DILocation(line: 755, column: 7, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !1791, file: !352, line: 755, column: 7)
!2307 = !DILocation(line: 755, column: 20, scope: !2306)
!2308 = !DILocation(line: 756, column: 12, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !352, line: 756, column: 5)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !352, line: 756, column: 5)
!2311 = !DILocation(line: 756, column: 5, scope: !2310)
!2312 = !DILocation(line: 757, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !352, line: 757, column: 7)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !352, line: 757, column: 7)
!2315 = !DILocation(line: 757, column: 7, scope: !2314)
!2316 = !DILocation(line: 756, column: 39, scope: !2309)
!2317 = distinct !{!2317, !2311, !2318}
!2318 = !DILocation(line: 757, column: 7, scope: !2310)
!2319 = !DILocation(line: 759, column: 11, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !1791, file: !352, line: 759, column: 7)
!2321 = !DILocation(line: 759, column: 7, scope: !1791)
!2322 = !DILocation(line: 760, column: 5, scope: !2320)
!2323 = !DILocation(line: 760, column: 17, scope: !2320)
!2324 = !DILocation(line: 763, column: 2, scope: !1791)
!2325 = !DILocation(line: 766, column: 51, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !1791, file: !352, line: 766, column: 7)
!2327 = !DILocation(line: 766, column: 21, scope: !2326)
!2328 = !DILocation(line: 770, column: 42, scope: !1791)
!2329 = !DILocation(line: 768, column: 10, scope: !1791)
!2330 = !DILocation(line: 768, column: 3, scope: !1791)
!2331 = !DILocation(line: 772, column: 1, scope: !1791)
!2332 = distinct !DISubprogram(name: "gettext_quote", scope: !352, file: !352, line: 207, type: !2333, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!12, !12, !354}
!2335 = !{!2336, !2337, !2338, !2339}
!2336 = !DILocalVariable(name: "msgid", arg: 1, scope: !2332, file: !352, line: 207, type: !12)
!2337 = !DILocalVariable(name: "s", arg: 2, scope: !2332, file: !352, line: 207, type: !354)
!2338 = !DILocalVariable(name: "translation", scope: !2332, file: !352, line: 209, type: !12)
!2339 = !DILocalVariable(name: "locale_code", scope: !2332, file: !352, line: 210, type: !12)
!2340 = !DILocation(line: 0, scope: !2332)
!2341 = !DILocation(line: 209, column: 29, scope: !2332)
!2342 = !DILocation(line: 212, column: 19, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2332, file: !352, line: 212, column: 7)
!2344 = !DILocation(line: 212, column: 7, scope: !2332)
!2345 = !DILocation(line: 233, column: 17, scope: !2332)
!2346 = !DILocalVariable(name: "s1", arg: 1, scope: !2347, file: !2348, line: 160, type: !12)
!2347 = distinct !DISubprogram(name: "strcaseeq0", scope: !2348, file: !2348, line: 160, type: !2349, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2351)
!2348 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!2351 = !{!2346, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2352 = !DILocalVariable(name: "s2", arg: 2, scope: !2347, file: !2348, line: 160, type: !12)
!2353 = !DILocalVariable(name: "s20", arg: 3, scope: !2347, file: !2348, line: 160, type: !11)
!2354 = !DILocalVariable(name: "s21", arg: 4, scope: !2347, file: !2348, line: 160, type: !11)
!2355 = !DILocalVariable(name: "s22", arg: 5, scope: !2347, file: !2348, line: 160, type: !11)
!2356 = !DILocalVariable(name: "s23", arg: 6, scope: !2347, file: !2348, line: 160, type: !11)
!2357 = !DILocalVariable(name: "s24", arg: 7, scope: !2347, file: !2348, line: 160, type: !11)
!2358 = !DILocalVariable(name: "s25", arg: 8, scope: !2347, file: !2348, line: 160, type: !11)
!2359 = !DILocalVariable(name: "s26", arg: 9, scope: !2347, file: !2348, line: 160, type: !11)
!2360 = !DILocalVariable(name: "s27", arg: 10, scope: !2347, file: !2348, line: 160, type: !11)
!2361 = !DILocalVariable(name: "s28", arg: 11, scope: !2347, file: !2348, line: 160, type: !11)
!2362 = !DILocation(line: 0, scope: !2347, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 234, column: 7, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2332, file: !352, line: 234, column: 7)
!2365 = !DILocation(line: 162, column: 7, scope: !2366, inlinedAt: !2363)
!2366 = distinct !DILexicalBlock(scope: !2347, file: !2348, line: 162, column: 7)
!2367 = !DILocalVariable(name: "s1", arg: 1, scope: !2368, file: !2348, line: 146, type: !12)
!2368 = distinct !DISubprogram(name: "strcaseeq1", scope: !2348, file: !2348, line: 146, type: !2369, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11}
!2371 = !{!2367, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2372 = !DILocalVariable(name: "s2", arg: 2, scope: !2368, file: !2348, line: 146, type: !12)
!2373 = !DILocalVariable(name: "s21", arg: 3, scope: !2368, file: !2348, line: 146, type: !11)
!2374 = !DILocalVariable(name: "s22", arg: 4, scope: !2368, file: !2348, line: 146, type: !11)
!2375 = !DILocalVariable(name: "s23", arg: 5, scope: !2368, file: !2348, line: 146, type: !11)
!2376 = !DILocalVariable(name: "s24", arg: 6, scope: !2368, file: !2348, line: 146, type: !11)
!2377 = !DILocalVariable(name: "s25", arg: 7, scope: !2368, file: !2348, line: 146, type: !11)
!2378 = !DILocalVariable(name: "s26", arg: 8, scope: !2368, file: !2348, line: 146, type: !11)
!2379 = !DILocalVariable(name: "s27", arg: 9, scope: !2368, file: !2348, line: 146, type: !11)
!2380 = !DILocalVariable(name: "s28", arg: 10, scope: !2368, file: !2348, line: 146, type: !11)
!2381 = !DILocation(line: 0, scope: !2368, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 167, column: 16, scope: !2383, inlinedAt: !2363)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !2348, line: 164, column: 11)
!2384 = distinct !DILexicalBlock(scope: !2366, file: !2348, line: 163, column: 5)
!2385 = !DILocation(line: 148, column: 7, scope: !2386, inlinedAt: !2382)
!2386 = distinct !DILexicalBlock(scope: !2368, file: !2348, line: 148, column: 7)
!2387 = !DILocalVariable(name: "s1", arg: 1, scope: !2388, file: !2348, line: 132, type: !12)
!2388 = distinct !DISubprogram(name: "strcaseeq2", scope: !2348, file: !2348, line: 132, type: !2389, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11}
!2391 = !{!2387, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399}
!2392 = !DILocalVariable(name: "s2", arg: 2, scope: !2388, file: !2348, line: 132, type: !12)
!2393 = !DILocalVariable(name: "s22", arg: 3, scope: !2388, file: !2348, line: 132, type: !11)
!2394 = !DILocalVariable(name: "s23", arg: 4, scope: !2388, file: !2348, line: 132, type: !11)
!2395 = !DILocalVariable(name: "s24", arg: 5, scope: !2388, file: !2348, line: 132, type: !11)
!2396 = !DILocalVariable(name: "s25", arg: 6, scope: !2388, file: !2348, line: 132, type: !11)
!2397 = !DILocalVariable(name: "s26", arg: 7, scope: !2388, file: !2348, line: 132, type: !11)
!2398 = !DILocalVariable(name: "s27", arg: 8, scope: !2388, file: !2348, line: 132, type: !11)
!2399 = !DILocalVariable(name: "s28", arg: 9, scope: !2388, file: !2348, line: 132, type: !11)
!2400 = !DILocation(line: 0, scope: !2388, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 153, column: 16, scope: !2402, inlinedAt: !2382)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !2348, line: 150, column: 11)
!2403 = distinct !DILexicalBlock(scope: !2386, file: !2348, line: 149, column: 5)
!2404 = !DILocation(line: 134, column: 7, scope: !2405, inlinedAt: !2401)
!2405 = distinct !DILexicalBlock(scope: !2388, file: !2348, line: 134, column: 7)
!2406 = !DILocalVariable(name: "s1", arg: 1, scope: !2407, file: !2348, line: 118, type: !12)
!2407 = distinct !DISubprogram(name: "strcaseeq3", scope: !2348, file: !2348, line: 118, type: !2408, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11}
!2410 = !{!2406, !2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2411 = !DILocalVariable(name: "s2", arg: 2, scope: !2407, file: !2348, line: 118, type: !12)
!2412 = !DILocalVariable(name: "s23", arg: 3, scope: !2407, file: !2348, line: 118, type: !11)
!2413 = !DILocalVariable(name: "s24", arg: 4, scope: !2407, file: !2348, line: 118, type: !11)
!2414 = !DILocalVariable(name: "s25", arg: 5, scope: !2407, file: !2348, line: 118, type: !11)
!2415 = !DILocalVariable(name: "s26", arg: 6, scope: !2407, file: !2348, line: 118, type: !11)
!2416 = !DILocalVariable(name: "s27", arg: 7, scope: !2407, file: !2348, line: 118, type: !11)
!2417 = !DILocalVariable(name: "s28", arg: 8, scope: !2407, file: !2348, line: 118, type: !11)
!2418 = !DILocation(line: 0, scope: !2407, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 139, column: 16, scope: !2420, inlinedAt: !2401)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !2348, line: 136, column: 11)
!2421 = distinct !DILexicalBlock(scope: !2405, file: !2348, line: 135, column: 5)
!2422 = !DILocation(line: 120, column: 7, scope: !2423, inlinedAt: !2419)
!2423 = distinct !DILexicalBlock(scope: !2407, file: !2348, line: 120, column: 7)
!2424 = !DILocation(line: 120, column: 7, scope: !2407, inlinedAt: !2419)
!2425 = !DILocalVariable(name: "s1", arg: 1, scope: !2426, file: !2348, line: 104, type: !12)
!2426 = distinct !DISubprogram(name: "strcaseeq4", scope: !2348, file: !2348, line: 104, type: !2427, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!14, !12, !12, !11, !11, !11, !11, !11}
!2429 = !{!2425, !2430, !2431, !2432, !2433, !2434, !2435}
!2430 = !DILocalVariable(name: "s2", arg: 2, scope: !2426, file: !2348, line: 104, type: !12)
!2431 = !DILocalVariable(name: "s24", arg: 3, scope: !2426, file: !2348, line: 104, type: !11)
!2432 = !DILocalVariable(name: "s25", arg: 4, scope: !2426, file: !2348, line: 104, type: !11)
!2433 = !DILocalVariable(name: "s26", arg: 5, scope: !2426, file: !2348, line: 104, type: !11)
!2434 = !DILocalVariable(name: "s27", arg: 6, scope: !2426, file: !2348, line: 104, type: !11)
!2435 = !DILocalVariable(name: "s28", arg: 7, scope: !2426, file: !2348, line: 104, type: !11)
!2436 = !DILocation(line: 0, scope: !2426, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 125, column: 16, scope: !2438, inlinedAt: !2419)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !2348, line: 122, column: 11)
!2439 = distinct !DILexicalBlock(scope: !2423, file: !2348, line: 121, column: 5)
!2440 = !DILocation(line: 106, column: 7, scope: !2441, inlinedAt: !2437)
!2441 = distinct !DILexicalBlock(scope: !2426, file: !2348, line: 106, column: 7)
!2442 = !DILocation(line: 106, column: 7, scope: !2426, inlinedAt: !2437)
!2443 = !DILocalVariable(name: "s1", arg: 1, scope: !2444, file: !2348, line: 90, type: !12)
!2444 = distinct !DISubprogram(name: "strcaseeq5", scope: !2348, file: !2348, line: 90, type: !2445, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!14, !12, !12, !11, !11, !11, !11}
!2447 = !{!2443, !2448, !2449, !2450, !2451, !2452}
!2448 = !DILocalVariable(name: "s2", arg: 2, scope: !2444, file: !2348, line: 90, type: !12)
!2449 = !DILocalVariable(name: "s25", arg: 3, scope: !2444, file: !2348, line: 90, type: !11)
!2450 = !DILocalVariable(name: "s26", arg: 4, scope: !2444, file: !2348, line: 90, type: !11)
!2451 = !DILocalVariable(name: "s27", arg: 5, scope: !2444, file: !2348, line: 90, type: !11)
!2452 = !DILocalVariable(name: "s28", arg: 6, scope: !2444, file: !2348, line: 90, type: !11)
!2453 = !DILocation(line: 0, scope: !2444, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 111, column: 16, scope: !2455, inlinedAt: !2437)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !2348, line: 108, column: 11)
!2456 = distinct !DILexicalBlock(scope: !2441, file: !2348, line: 107, column: 5)
!2457 = !DILocation(line: 92, column: 7, scope: !2458, inlinedAt: !2454)
!2458 = distinct !DILexicalBlock(scope: !2444, file: !2348, line: 92, column: 7)
!2459 = !DILocation(line: 92, column: 7, scope: !2444, inlinedAt: !2454)
!2460 = !DILocation(line: 235, column: 12, scope: !2364)
!2461 = !DILocation(line: 235, column: 21, scope: !2364)
!2462 = !DILocation(line: 235, column: 5, scope: !2364)
!2463 = !DILocation(line: 0, scope: !2368, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 167, column: 16, scope: !2383, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 236, column: 7, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2332, file: !352, line: 236, column: 7)
!2467 = !DILocation(line: 148, column: 7, scope: !2386, inlinedAt: !2464)
!2468 = !DILocation(line: 0, scope: !2388, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 153, column: 16, scope: !2402, inlinedAt: !2464)
!2470 = !DILocation(line: 134, column: 7, scope: !2405, inlinedAt: !2469)
!2471 = !DILocation(line: 134, column: 7, scope: !2388, inlinedAt: !2469)
!2472 = !DILocation(line: 0, scope: !2407, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 139, column: 16, scope: !2420, inlinedAt: !2469)
!2474 = !DILocation(line: 120, column: 7, scope: !2423, inlinedAt: !2473)
!2475 = !DILocation(line: 120, column: 7, scope: !2407, inlinedAt: !2473)
!2476 = !DILocation(line: 0, scope: !2426, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 125, column: 16, scope: !2438, inlinedAt: !2473)
!2478 = !DILocation(line: 106, column: 7, scope: !2441, inlinedAt: !2477)
!2479 = !DILocation(line: 106, column: 7, scope: !2426, inlinedAt: !2477)
!2480 = !DILocation(line: 0, scope: !2444, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 111, column: 16, scope: !2455, inlinedAt: !2477)
!2482 = !DILocation(line: 92, column: 7, scope: !2458, inlinedAt: !2481)
!2483 = !DILocation(line: 92, column: 7, scope: !2444, inlinedAt: !2481)
!2484 = !DILocalVariable(name: "s1", arg: 1, scope: !2485, file: !2348, line: 76, type: !12)
!2485 = distinct !DISubprogram(name: "strcaseeq6", scope: !2348, file: !2348, line: 76, type: !2486, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!14, !12, !12, !11, !11, !11}
!2488 = !{!2484, !2489, !2490, !2491, !2492}
!2489 = !DILocalVariable(name: "s2", arg: 2, scope: !2485, file: !2348, line: 76, type: !12)
!2490 = !DILocalVariable(name: "s26", arg: 3, scope: !2485, file: !2348, line: 76, type: !11)
!2491 = !DILocalVariable(name: "s27", arg: 4, scope: !2485, file: !2348, line: 76, type: !11)
!2492 = !DILocalVariable(name: "s28", arg: 5, scope: !2485, file: !2348, line: 76, type: !11)
!2493 = !DILocation(line: 0, scope: !2485, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 97, column: 16, scope: !2495, inlinedAt: !2481)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !2348, line: 94, column: 11)
!2496 = distinct !DILexicalBlock(scope: !2458, file: !2348, line: 93, column: 5)
!2497 = !DILocation(line: 78, column: 7, scope: !2498, inlinedAt: !2494)
!2498 = distinct !DILexicalBlock(scope: !2485, file: !2348, line: 78, column: 7)
!2499 = !DILocation(line: 78, column: 7, scope: !2485, inlinedAt: !2494)
!2500 = !DILocalVariable(name: "s1", arg: 1, scope: !2501, file: !2348, line: 62, type: !12)
!2501 = distinct !DISubprogram(name: "strcaseeq7", scope: !2348, file: !2348, line: 62, type: !2502, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!14, !12, !12, !11, !11}
!2504 = !{!2500, !2505, !2506, !2507}
!2505 = !DILocalVariable(name: "s2", arg: 2, scope: !2501, file: !2348, line: 62, type: !12)
!2506 = !DILocalVariable(name: "s27", arg: 3, scope: !2501, file: !2348, line: 62, type: !11)
!2507 = !DILocalVariable(name: "s28", arg: 4, scope: !2501, file: !2348, line: 62, type: !11)
!2508 = !DILocation(line: 0, scope: !2501, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 83, column: 16, scope: !2510, inlinedAt: !2494)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !2348, line: 80, column: 11)
!2511 = distinct !DILexicalBlock(scope: !2498, file: !2348, line: 79, column: 5)
!2512 = !DILocation(line: 64, column: 7, scope: !2513, inlinedAt: !2509)
!2513 = distinct !DILexicalBlock(scope: !2501, file: !2348, line: 64, column: 7)
!2514 = !DILocation(line: 236, column: 7, scope: !2332)
!2515 = !DILocation(line: 237, column: 12, scope: !2466)
!2516 = !DILocation(line: 237, column: 21, scope: !2466)
!2517 = !DILocation(line: 237, column: 5, scope: !2466)
!2518 = !DILocation(line: 239, column: 13, scope: !2332)
!2519 = !DILocation(line: 239, column: 11, scope: !2332)
!2520 = !DILocation(line: 239, column: 3, scope: !2332)
!2521 = !DILocation(line: 240, column: 1, scope: !2332)
!2522 = distinct !DISubprogram(name: "quotearg_alloc", scope: !352, file: !352, line: 799, type: !2523, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!10, !12, !68, !398}
!2525 = !{!2526, !2527, !2528}
!2526 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !352, line: 799, type: !12)
!2527 = !DILocalVariable(name: "argsize", arg: 2, scope: !2522, file: !352, line: 799, type: !68)
!2528 = !DILocalVariable(name: "o", arg: 3, scope: !2522, file: !352, line: 800, type: !398)
!2529 = !DILocation(line: 0, scope: !2522)
!2530 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !352, line: 812, type: !12)
!2531 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !352, file: !352, line: 812, type: !2532, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!10, !12, !68, !549, !398}
!2534 = !{!2530, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542}
!2535 = !DILocalVariable(name: "argsize", arg: 2, scope: !2531, file: !352, line: 812, type: !68)
!2536 = !DILocalVariable(name: "size", arg: 3, scope: !2531, file: !352, line: 812, type: !549)
!2537 = !DILocalVariable(name: "o", arg: 4, scope: !2531, file: !352, line: 813, type: !398)
!2538 = !DILocalVariable(name: "p", scope: !2531, file: !352, line: 815, type: !398)
!2539 = !DILocalVariable(name: "e", scope: !2531, file: !352, line: 816, type: !14)
!2540 = !DILocalVariable(name: "flags", scope: !2531, file: !352, line: 818, type: !14)
!2541 = !DILocalVariable(name: "bufsize", scope: !2531, file: !352, line: 819, type: !68)
!2542 = !DILocalVariable(name: "buf", scope: !2531, file: !352, line: 823, type: !10)
!2543 = !DILocation(line: 0, scope: !2531, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 802, column: 10, scope: !2522)
!2545 = !DILocation(line: 815, column: 37, scope: !2531, inlinedAt: !2544)
!2546 = !DILocation(line: 816, column: 11, scope: !2531, inlinedAt: !2544)
!2547 = !DILocation(line: 818, column: 18, scope: !2531, inlinedAt: !2544)
!2548 = !DILocation(line: 818, column: 24, scope: !2531, inlinedAt: !2544)
!2549 = !DILocation(line: 819, column: 69, scope: !2531, inlinedAt: !2544)
!2550 = !DILocation(line: 820, column: 53, scope: !2531, inlinedAt: !2544)
!2551 = !DILocation(line: 821, column: 49, scope: !2531, inlinedAt: !2544)
!2552 = !DILocation(line: 822, column: 49, scope: !2531, inlinedAt: !2544)
!2553 = !DILocation(line: 819, column: 20, scope: !2531, inlinedAt: !2544)
!2554 = !DILocation(line: 822, column: 62, scope: !2531, inlinedAt: !2544)
!2555 = !DILocalVariable(name: "n", arg: 1, scope: !2556, file: !389, line: 216, type: !68)
!2556 = distinct !DISubprogram(name: "xcharalloc", scope: !389, file: !389, line: 216, type: !2557, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!10, !68}
!2559 = !{!2555}
!2560 = !DILocation(line: 0, scope: !2556, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 823, column: 15, scope: !2531, inlinedAt: !2544)
!2562 = !DILocation(line: 218, column: 10, scope: !2556, inlinedAt: !2561)
!2563 = !DILocation(line: 824, column: 60, scope: !2531, inlinedAt: !2544)
!2564 = !DILocation(line: 826, column: 32, scope: !2531, inlinedAt: !2544)
!2565 = !DILocation(line: 826, column: 47, scope: !2531, inlinedAt: !2544)
!2566 = !DILocation(line: 824, column: 3, scope: !2531, inlinedAt: !2544)
!2567 = !DILocation(line: 827, column: 9, scope: !2531, inlinedAt: !2544)
!2568 = !DILocation(line: 802, column: 3, scope: !2522)
!2569 = !DILocation(line: 0, scope: !2531)
!2570 = !DILocation(line: 815, column: 37, scope: !2531)
!2571 = !DILocation(line: 816, column: 11, scope: !2531)
!2572 = !DILocation(line: 818, column: 18, scope: !2531)
!2573 = !DILocation(line: 818, column: 27, scope: !2531)
!2574 = !DILocation(line: 818, column: 24, scope: !2531)
!2575 = !DILocation(line: 819, column: 69, scope: !2531)
!2576 = !DILocation(line: 820, column: 53, scope: !2531)
!2577 = !DILocation(line: 821, column: 49, scope: !2531)
!2578 = !DILocation(line: 822, column: 49, scope: !2531)
!2579 = !DILocation(line: 819, column: 20, scope: !2531)
!2580 = !DILocation(line: 822, column: 62, scope: !2531)
!2581 = !DILocation(line: 0, scope: !2556, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 823, column: 15, scope: !2531)
!2583 = !DILocation(line: 218, column: 10, scope: !2556, inlinedAt: !2582)
!2584 = !DILocation(line: 824, column: 60, scope: !2531)
!2585 = !DILocation(line: 826, column: 32, scope: !2531)
!2586 = !DILocation(line: 826, column: 47, scope: !2531)
!2587 = !DILocation(line: 824, column: 3, scope: !2531)
!2588 = !DILocation(line: 827, column: 9, scope: !2531)
!2589 = !DILocation(line: 828, column: 7, scope: !2531)
!2590 = !DILocation(line: 829, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2531, file: !352, line: 828, column: 7)
!2592 = !{!1359, !1359, i64 0}
!2593 = !DILocation(line: 829, column: 5, scope: !2591)
!2594 = !DILocation(line: 830, column: 3, scope: !2531)
!2595 = distinct !DISubprogram(name: "quotearg_free", scope: !352, file: !352, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2596)
!2596 = !{!2597, !2598}
!2597 = !DILocalVariable(name: "sv", scope: !2595, file: !352, line: 850, type: !473)
!2598 = !DILocalVariable(name: "i", scope: !2595, file: !352, line: 851, type: !14)
!2599 = !DILocation(line: 850, column: 24, scope: !2595)
!2600 = !DILocation(line: 0, scope: !2595)
!2601 = !DILocation(line: 852, column: 19, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !352, line: 852, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2595, file: !352, line: 852, column: 3)
!2604 = !DILocation(line: 852, column: 17, scope: !2602)
!2605 = !DILocation(line: 852, column: 3, scope: !2603)
!2606 = !DILocation(line: 853, column: 17, scope: !2602)
!2607 = !{!2608, !1239, i64 8}
!2608 = !{!"slotvec", !1359, i64 0, !1239, i64 8}
!2609 = !DILocation(line: 853, column: 5, scope: !2602)
!2610 = !DILocation(line: 852, column: 28, scope: !2602)
!2611 = distinct !{!2611, !2605, !2612}
!2612 = !DILocation(line: 853, column: 20, scope: !2603)
!2613 = !DILocation(line: 854, column: 13, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2595, file: !352, line: 854, column: 7)
!2615 = !DILocation(line: 854, column: 17, scope: !2614)
!2616 = !DILocation(line: 854, column: 7, scope: !2595)
!2617 = !DILocation(line: 856, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !352, line: 855, column: 5)
!2619 = !DILocation(line: 857, column: 21, scope: !2618)
!2620 = !{!2608, !1359, i64 0}
!2621 = !DILocation(line: 858, column: 20, scope: !2618)
!2622 = !DILocation(line: 859, column: 5, scope: !2618)
!2623 = !DILocation(line: 860, column: 10, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2595, file: !352, line: 860, column: 7)
!2625 = !DILocation(line: 860, column: 7, scope: !2595)
!2626 = !DILocation(line: 862, column: 13, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2624, file: !352, line: 861, column: 5)
!2628 = !DILocation(line: 862, column: 7, scope: !2627)
!2629 = !DILocation(line: 863, column: 15, scope: !2627)
!2630 = !DILocation(line: 864, column: 5, scope: !2627)
!2631 = !DILocation(line: 865, column: 10, scope: !2595)
!2632 = !DILocation(line: 866, column: 1, scope: !2595)
!2633 = distinct !DISubprogram(name: "quotearg_n", scope: !352, file: !352, line: 931, type: !82, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2634)
!2634 = !{!2635, !2636}
!2635 = !DILocalVariable(name: "n", arg: 1, scope: !2633, file: !352, line: 931, type: !14)
!2636 = !DILocalVariable(name: "arg", arg: 2, scope: !2633, file: !352, line: 931, type: !12)
!2637 = !DILocation(line: 0, scope: !2633)
!2638 = !DILocation(line: 933, column: 10, scope: !2633)
!2639 = !DILocation(line: 933, column: 3, scope: !2633)
!2640 = distinct !DISubprogram(name: "quotearg_n_options", scope: !352, file: !352, line: 877, type: !2641, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!10, !14, !12, !68, !398}
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2649, !2650, !2653, !2654, !2656, !2657, !2658}
!2644 = !DILocalVariable(name: "n", arg: 1, scope: !2640, file: !352, line: 877, type: !14)
!2645 = !DILocalVariable(name: "arg", arg: 2, scope: !2640, file: !352, line: 877, type: !12)
!2646 = !DILocalVariable(name: "argsize", arg: 3, scope: !2640, file: !352, line: 877, type: !68)
!2647 = !DILocalVariable(name: "options", arg: 4, scope: !2640, file: !352, line: 878, type: !398)
!2648 = !DILocalVariable(name: "e", scope: !2640, file: !352, line: 880, type: !14)
!2649 = !DILocalVariable(name: "sv", scope: !2640, file: !352, line: 882, type: !473)
!2650 = !DILocalVariable(name: "preallocated", scope: !2651, file: !352, line: 889, type: !131)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !352, line: 888, column: 5)
!2652 = distinct !DILexicalBlock(scope: !2640, file: !352, line: 887, column: 7)
!2653 = !DILocalVariable(name: "nmax", scope: !2651, file: !352, line: 890, type: !14)
!2654 = !DILocalVariable(name: "size", scope: !2655, file: !352, line: 903, type: !68)
!2655 = distinct !DILexicalBlock(scope: !2640, file: !352, line: 902, column: 3)
!2656 = !DILocalVariable(name: "val", scope: !2655, file: !352, line: 904, type: !10)
!2657 = !DILocalVariable(name: "flags", scope: !2655, file: !352, line: 906, type: !14)
!2658 = !DILocalVariable(name: "qsize", scope: !2655, file: !352, line: 907, type: !68)
!2659 = !DILocation(line: 0, scope: !2640)
!2660 = !DILocation(line: 880, column: 11, scope: !2640)
!2661 = !DILocation(line: 882, column: 24, scope: !2640)
!2662 = !DILocation(line: 884, column: 9, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2640, file: !352, line: 884, column: 7)
!2664 = !DILocation(line: 884, column: 7, scope: !2640)
!2665 = !DILocation(line: 885, column: 5, scope: !2663)
!2666 = !DILocation(line: 887, column: 7, scope: !2652)
!2667 = !DILocation(line: 887, column: 14, scope: !2652)
!2668 = !DILocation(line: 887, column: 7, scope: !2640)
!2669 = !DILocation(line: 889, column: 31, scope: !2651)
!2670 = !DILocation(line: 0, scope: !2651)
!2671 = !DILocation(line: 892, column: 16, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2651, file: !352, line: 892, column: 11)
!2673 = !DILocation(line: 892, column: 11, scope: !2651)
!2674 = !DILocation(line: 893, column: 9, scope: !2672)
!2675 = !DILocation(line: 895, column: 32, scope: !2651)
!2676 = !DILocation(line: 895, column: 61, scope: !2651)
!2677 = !DILocation(line: 895, column: 58, scope: !2651)
!2678 = !DILocation(line: 895, column: 66, scope: !2651)
!2679 = !DILocation(line: 895, column: 22, scope: !2651)
!2680 = !DILocation(line: 895, column: 15, scope: !2651)
!2681 = !DILocation(line: 896, column: 11, scope: !2651)
!2682 = !DILocation(line: 897, column: 15, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2651, file: !352, line: 896, column: 11)
!2684 = !{i64 0, i64 8, !2592, i64 8, i64 8, !1238}
!2685 = !DILocation(line: 897, column: 9, scope: !2683)
!2686 = !DILocation(line: 898, column: 20, scope: !2651)
!2687 = !DILocation(line: 898, column: 18, scope: !2651)
!2688 = !DILocation(line: 898, column: 15, scope: !2651)
!2689 = !DILocation(line: 898, column: 38, scope: !2651)
!2690 = !DILocation(line: 898, column: 31, scope: !2651)
!2691 = !DILocation(line: 898, column: 48, scope: !2651)
!2692 = !DILocation(line: 0, scope: !2089, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 898, column: 7, scope: !2651)
!2694 = !DILocation(line: 71, column: 10, scope: !2089, inlinedAt: !2693)
!2695 = !DILocation(line: 899, column: 14, scope: !2651)
!2696 = !DILocation(line: 900, column: 5, scope: !2651)
!2697 = !DILocation(line: 903, column: 19, scope: !2655)
!2698 = !DILocation(line: 903, column: 25, scope: !2655)
!2699 = !DILocation(line: 0, scope: !2655)
!2700 = !DILocation(line: 904, column: 23, scope: !2655)
!2701 = !DILocation(line: 906, column: 26, scope: !2655)
!2702 = !DILocation(line: 906, column: 32, scope: !2655)
!2703 = !DILocation(line: 908, column: 55, scope: !2655)
!2704 = !DILocation(line: 909, column: 46, scope: !2655)
!2705 = !DILocation(line: 910, column: 55, scope: !2655)
!2706 = !DILocation(line: 911, column: 55, scope: !2655)
!2707 = !DILocation(line: 907, column: 20, scope: !2655)
!2708 = !DILocation(line: 913, column: 14, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2655, file: !352, line: 913, column: 9)
!2710 = !DILocation(line: 913, column: 9, scope: !2655)
!2711 = !DILocation(line: 915, column: 35, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !352, line: 914, column: 7)
!2713 = !DILocation(line: 915, column: 20, scope: !2712)
!2714 = !DILocation(line: 916, column: 17, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !352, line: 916, column: 13)
!2716 = !DILocation(line: 916, column: 13, scope: !2712)
!2717 = !DILocation(line: 917, column: 11, scope: !2715)
!2718 = !DILocation(line: 0, scope: !2556, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 918, column: 27, scope: !2712)
!2720 = !DILocation(line: 218, column: 10, scope: !2556, inlinedAt: !2719)
!2721 = !DILocation(line: 918, column: 19, scope: !2712)
!2722 = !DILocation(line: 919, column: 69, scope: !2712)
!2723 = !DILocation(line: 921, column: 44, scope: !2712)
!2724 = !DILocation(line: 922, column: 44, scope: !2712)
!2725 = !DILocation(line: 919, column: 9, scope: !2712)
!2726 = !DILocation(line: 923, column: 7, scope: !2712)
!2727 = !DILocation(line: 925, column: 11, scope: !2655)
!2728 = !DILocation(line: 926, column: 5, scope: !2655)
!2729 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !352, file: !352, line: 937, type: !2730, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!10, !14, !12, !68}
!2732 = !{!2733, !2734, !2735}
!2733 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !352, line: 937, type: !14)
!2734 = !DILocalVariable(name: "arg", arg: 2, scope: !2729, file: !352, line: 937, type: !12)
!2735 = !DILocalVariable(name: "argsize", arg: 3, scope: !2729, file: !352, line: 937, type: !68)
!2736 = !DILocation(line: 0, scope: !2729)
!2737 = !DILocation(line: 939, column: 10, scope: !2729)
!2738 = !DILocation(line: 939, column: 3, scope: !2729)
!2739 = distinct !DISubprogram(name: "quotearg", scope: !352, file: !352, line: 943, type: !88, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2740)
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !352, line: 943, type: !12)
!2742 = !DILocation(line: 0, scope: !2739)
!2743 = !DILocation(line: 0, scope: !2633, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 945, column: 10, scope: !2739)
!2745 = !DILocation(line: 933, column: 10, scope: !2633, inlinedAt: !2744)
!2746 = !DILocation(line: 945, column: 3, scope: !2739)
!2747 = distinct !DISubprogram(name: "quotearg_mem", scope: !352, file: !352, line: 949, type: !2748, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!10, !12, !68}
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2747, file: !352, line: 949, type: !12)
!2752 = !DILocalVariable(name: "argsize", arg: 2, scope: !2747, file: !352, line: 949, type: !68)
!2753 = !DILocation(line: 0, scope: !2747)
!2754 = !DILocation(line: 0, scope: !2729, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 951, column: 10, scope: !2747)
!2756 = !DILocation(line: 939, column: 10, scope: !2729, inlinedAt: !2755)
!2757 = !DILocation(line: 951, column: 3, scope: !2747)
!2758 = distinct !DISubprogram(name: "quotearg_n_style", scope: !352, file: !352, line: 955, type: !2759, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!10, !14, !354, !12}
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DILocalVariable(name: "n", arg: 1, scope: !2758, file: !352, line: 955, type: !14)
!2763 = !DILocalVariable(name: "s", arg: 2, scope: !2758, file: !352, line: 955, type: !354)
!2764 = !DILocalVariable(name: "arg", arg: 3, scope: !2758, file: !352, line: 955, type: !12)
!2765 = !DILocalVariable(name: "o", scope: !2758, file: !352, line: 957, type: !399)
!2766 = !DILocation(line: 0, scope: !2758)
!2767 = !DILocation(line: 957, column: 3, scope: !2758)
!2768 = !DILocation(line: 957, column: 32, scope: !2758)
!2769 = !DILocalVariable(name: "style", arg: 1, scope: !2770, file: !352, line: 193, type: !354)
!2770 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !352, file: !352, line: 193, type: !2771, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!400, !354}
!2773 = !{!2769, !2774}
!2774 = !DILocalVariable(name: "o", scope: !2770, file: !352, line: 195, type: !400)
!2775 = !DILocation(line: 0, scope: !2770, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 957, column: 36, scope: !2758)
!2777 = !DILocation(line: 195, column: 26, scope: !2770, inlinedAt: !2776)
!2778 = !{!2779}
!2779 = distinct !{!2779, !2780, !"quoting_options_from_style: argument 0"}
!2780 = distinct !{!2780, !"quoting_options_from_style"}
!2781 = !DILocation(line: 196, column: 13, scope: !2782, inlinedAt: !2776)
!2782 = distinct !DILexicalBlock(scope: !2770, file: !352, line: 196, column: 7)
!2783 = !DILocation(line: 196, column: 7, scope: !2770, inlinedAt: !2776)
!2784 = !DILocation(line: 197, column: 5, scope: !2782, inlinedAt: !2776)
!2785 = !DILocation(line: 198, column: 5, scope: !2770, inlinedAt: !2776)
!2786 = !DILocation(line: 198, column: 11, scope: !2770, inlinedAt: !2776)
!2787 = !DILocation(line: 958, column: 10, scope: !2758)
!2788 = !DILocation(line: 959, column: 1, scope: !2758)
!2789 = !DILocation(line: 958, column: 3, scope: !2758)
!2790 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !352, file: !352, line: 962, type: !2791, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2793)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!10, !14, !354, !12, !68}
!2793 = !{!2794, !2795, !2796, !2797, !2798}
!2794 = !DILocalVariable(name: "n", arg: 1, scope: !2790, file: !352, line: 962, type: !14)
!2795 = !DILocalVariable(name: "s", arg: 2, scope: !2790, file: !352, line: 962, type: !354)
!2796 = !DILocalVariable(name: "arg", arg: 3, scope: !2790, file: !352, line: 963, type: !12)
!2797 = !DILocalVariable(name: "argsize", arg: 4, scope: !2790, file: !352, line: 963, type: !68)
!2798 = !DILocalVariable(name: "o", scope: !2790, file: !352, line: 965, type: !399)
!2799 = !DILocation(line: 0, scope: !2790)
!2800 = !DILocation(line: 965, column: 3, scope: !2790)
!2801 = !DILocation(line: 965, column: 32, scope: !2790)
!2802 = !DILocation(line: 0, scope: !2770, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 965, column: 36, scope: !2790)
!2804 = !DILocation(line: 195, column: 26, scope: !2770, inlinedAt: !2803)
!2805 = !{!2806}
!2806 = distinct !{!2806, !2807, !"quoting_options_from_style: argument 0"}
!2807 = distinct !{!2807, !"quoting_options_from_style"}
!2808 = !DILocation(line: 196, column: 13, scope: !2782, inlinedAt: !2803)
!2809 = !DILocation(line: 196, column: 7, scope: !2770, inlinedAt: !2803)
!2810 = !DILocation(line: 197, column: 5, scope: !2782, inlinedAt: !2803)
!2811 = !DILocation(line: 198, column: 5, scope: !2770, inlinedAt: !2803)
!2812 = !DILocation(line: 198, column: 11, scope: !2770, inlinedAt: !2803)
!2813 = !DILocation(line: 966, column: 10, scope: !2790)
!2814 = !DILocation(line: 967, column: 1, scope: !2790)
!2815 = !DILocation(line: 966, column: 3, scope: !2790)
!2816 = distinct !DISubprogram(name: "quotearg_style", scope: !352, file: !352, line: 970, type: !2817, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!10, !354, !12}
!2819 = !{!2820, !2821}
!2820 = !DILocalVariable(name: "s", arg: 1, scope: !2816, file: !352, line: 970, type: !354)
!2821 = !DILocalVariable(name: "arg", arg: 2, scope: !2816, file: !352, line: 970, type: !12)
!2822 = !DILocation(line: 195, column: 26, scope: !2770, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 957, column: 36, scope: !2758, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 972, column: 10, scope: !2816)
!2825 = !DILocation(line: 957, column: 32, scope: !2758, inlinedAt: !2824)
!2826 = !DILocation(line: 0, scope: !2816)
!2827 = !DILocation(line: 0, scope: !2758, inlinedAt: !2824)
!2828 = !DILocation(line: 957, column: 3, scope: !2758, inlinedAt: !2824)
!2829 = !DILocation(line: 0, scope: !2770, inlinedAt: !2823)
!2830 = !{!2831}
!2831 = distinct !{!2831, !2832, !"quoting_options_from_style: argument 0"}
!2832 = distinct !{!2832, !"quoting_options_from_style"}
!2833 = !DILocation(line: 196, column: 13, scope: !2782, inlinedAt: !2823)
!2834 = !DILocation(line: 196, column: 7, scope: !2770, inlinedAt: !2823)
!2835 = !DILocation(line: 197, column: 5, scope: !2782, inlinedAt: !2823)
!2836 = !DILocation(line: 198, column: 5, scope: !2770, inlinedAt: !2823)
!2837 = !DILocation(line: 198, column: 11, scope: !2770, inlinedAt: !2823)
!2838 = !DILocation(line: 958, column: 10, scope: !2758, inlinedAt: !2824)
!2839 = !DILocation(line: 959, column: 1, scope: !2758, inlinedAt: !2824)
!2840 = !DILocation(line: 972, column: 3, scope: !2816)
!2841 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !352, file: !352, line: 976, type: !2842, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2844)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!10, !354, !12, !68}
!2844 = !{!2845, !2846, !2847}
!2845 = !DILocalVariable(name: "s", arg: 1, scope: !2841, file: !352, line: 976, type: !354)
!2846 = !DILocalVariable(name: "arg", arg: 2, scope: !2841, file: !352, line: 976, type: !12)
!2847 = !DILocalVariable(name: "argsize", arg: 3, scope: !2841, file: !352, line: 976, type: !68)
!2848 = !DILocation(line: 195, column: 26, scope: !2770, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 965, column: 36, scope: !2790, inlinedAt: !2850)
!2850 = distinct !DILocation(line: 978, column: 10, scope: !2841)
!2851 = !DILocation(line: 965, column: 32, scope: !2790, inlinedAt: !2850)
!2852 = !DILocation(line: 0, scope: !2841)
!2853 = !DILocation(line: 0, scope: !2790, inlinedAt: !2850)
!2854 = !DILocation(line: 965, column: 3, scope: !2790, inlinedAt: !2850)
!2855 = !DILocation(line: 0, scope: !2770, inlinedAt: !2849)
!2856 = !{!2857}
!2857 = distinct !{!2857, !2858, !"quoting_options_from_style: argument 0"}
!2858 = distinct !{!2858, !"quoting_options_from_style"}
!2859 = !DILocation(line: 196, column: 13, scope: !2782, inlinedAt: !2849)
!2860 = !DILocation(line: 196, column: 7, scope: !2770, inlinedAt: !2849)
!2861 = !DILocation(line: 197, column: 5, scope: !2782, inlinedAt: !2849)
!2862 = !DILocation(line: 198, column: 5, scope: !2770, inlinedAt: !2849)
!2863 = !DILocation(line: 198, column: 11, scope: !2770, inlinedAt: !2849)
!2864 = !DILocation(line: 966, column: 10, scope: !2790, inlinedAt: !2850)
!2865 = !DILocation(line: 967, column: 1, scope: !2790, inlinedAt: !2850)
!2866 = !DILocation(line: 978, column: 3, scope: !2841)
!2867 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !352, file: !352, line: 982, type: !2868, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!10, !12, !68, !11}
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DILocalVariable(name: "arg", arg: 1, scope: !2867, file: !352, line: 982, type: !12)
!2872 = !DILocalVariable(name: "argsize", arg: 2, scope: !2867, file: !352, line: 982, type: !68)
!2873 = !DILocalVariable(name: "ch", arg: 3, scope: !2867, file: !352, line: 982, type: !11)
!2874 = !DILocalVariable(name: "options", scope: !2867, file: !352, line: 984, type: !400)
!2875 = !DILocation(line: 0, scope: !2867)
!2876 = !DILocation(line: 984, column: 3, scope: !2867)
!2877 = !DILocation(line: 984, column: 26, scope: !2867)
!2878 = !DILocation(line: 985, column: 13, scope: !2867)
!2879 = !{i64 0, i64 4, !1364, i64 4, i64 4, !1313, i64 8, i64 32, !1364, i64 40, i64 8, !1238, i64 48, i64 8, !1238}
!2880 = !DILocation(line: 0, scope: !1704, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 986, column: 3, scope: !2867)
!2882 = !DILocation(line: 156, column: 62, scope: !1704, inlinedAt: !2881)
!2883 = !DILocation(line: 156, column: 57, scope: !1704, inlinedAt: !2881)
!2884 = !DILocation(line: 157, column: 15, scope: !1704, inlinedAt: !2881)
!2885 = !DILocation(line: 158, column: 12, scope: !1704, inlinedAt: !2881)
!2886 = !DILocation(line: 158, column: 15, scope: !1704, inlinedAt: !2881)
!2887 = !DILocation(line: 158, column: 25, scope: !1704, inlinedAt: !2881)
!2888 = !DILocation(line: 159, column: 18, scope: !1704, inlinedAt: !2881)
!2889 = !DILocation(line: 159, column: 23, scope: !1704, inlinedAt: !2881)
!2890 = !DILocation(line: 159, column: 6, scope: !1704, inlinedAt: !2881)
!2891 = !DILocation(line: 987, column: 10, scope: !2867)
!2892 = !DILocation(line: 988, column: 1, scope: !2867)
!2893 = !DILocation(line: 987, column: 3, scope: !2867)
!2894 = distinct !DISubprogram(name: "quotearg_char", scope: !352, file: !352, line: 991, type: !2895, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!10, !12, !11}
!2897 = !{!2898, !2899}
!2898 = !DILocalVariable(name: "arg", arg: 1, scope: !2894, file: !352, line: 991, type: !12)
!2899 = !DILocalVariable(name: "ch", arg: 2, scope: !2894, file: !352, line: 991, type: !11)
!2900 = !DILocation(line: 984, column: 26, scope: !2867, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 993, column: 10, scope: !2894)
!2902 = !DILocation(line: 0, scope: !2894)
!2903 = !DILocation(line: 0, scope: !2867, inlinedAt: !2901)
!2904 = !DILocation(line: 984, column: 3, scope: !2867, inlinedAt: !2901)
!2905 = !DILocation(line: 985, column: 13, scope: !2867, inlinedAt: !2901)
!2906 = !DILocation(line: 0, scope: !1704, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 986, column: 3, scope: !2867, inlinedAt: !2901)
!2908 = !DILocation(line: 156, column: 62, scope: !1704, inlinedAt: !2907)
!2909 = !DILocation(line: 156, column: 57, scope: !1704, inlinedAt: !2907)
!2910 = !DILocation(line: 157, column: 15, scope: !1704, inlinedAt: !2907)
!2911 = !DILocation(line: 158, column: 12, scope: !1704, inlinedAt: !2907)
!2912 = !DILocation(line: 158, column: 15, scope: !1704, inlinedAt: !2907)
!2913 = !DILocation(line: 158, column: 25, scope: !1704, inlinedAt: !2907)
!2914 = !DILocation(line: 159, column: 18, scope: !1704, inlinedAt: !2907)
!2915 = !DILocation(line: 159, column: 23, scope: !1704, inlinedAt: !2907)
!2916 = !DILocation(line: 159, column: 6, scope: !1704, inlinedAt: !2907)
!2917 = !DILocation(line: 987, column: 10, scope: !2867, inlinedAt: !2901)
!2918 = !DILocation(line: 988, column: 1, scope: !2867, inlinedAt: !2901)
!2919 = !DILocation(line: 993, column: 3, scope: !2894)
!2920 = distinct !DISubprogram(name: "quotearg_colon", scope: !352, file: !352, line: 997, type: !88, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2921)
!2921 = !{!2922}
!2922 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !352, line: 997, type: !12)
!2923 = !DILocation(line: 984, column: 26, scope: !2867, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 993, column: 10, scope: !2894, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 999, column: 10, scope: !2920)
!2926 = !DILocation(line: 0, scope: !2920)
!2927 = !DILocation(line: 0, scope: !2894, inlinedAt: !2925)
!2928 = !DILocation(line: 0, scope: !2867, inlinedAt: !2924)
!2929 = !DILocation(line: 984, column: 3, scope: !2867, inlinedAt: !2924)
!2930 = !DILocation(line: 985, column: 13, scope: !2867, inlinedAt: !2924)
!2931 = !DILocation(line: 0, scope: !1704, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 986, column: 3, scope: !2867, inlinedAt: !2924)
!2933 = !DILocation(line: 156, column: 57, scope: !1704, inlinedAt: !2932)
!2934 = !DILocation(line: 158, column: 12, scope: !1704, inlinedAt: !2932)
!2935 = !DILocation(line: 159, column: 6, scope: !1704, inlinedAt: !2932)
!2936 = !DILocation(line: 987, column: 10, scope: !2867, inlinedAt: !2924)
!2937 = !DILocation(line: 988, column: 1, scope: !2867, inlinedAt: !2924)
!2938 = !DILocation(line: 999, column: 3, scope: !2920)
!2939 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !352, file: !352, line: 1003, type: !2748, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2940)
!2940 = !{!2941, !2942}
!2941 = !DILocalVariable(name: "arg", arg: 1, scope: !2939, file: !352, line: 1003, type: !12)
!2942 = !DILocalVariable(name: "argsize", arg: 2, scope: !2939, file: !352, line: 1003, type: !68)
!2943 = !DILocation(line: 984, column: 26, scope: !2867, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1005, column: 10, scope: !2939)
!2945 = !DILocation(line: 0, scope: !2939)
!2946 = !DILocation(line: 0, scope: !2867, inlinedAt: !2944)
!2947 = !DILocation(line: 984, column: 3, scope: !2867, inlinedAt: !2944)
!2948 = !DILocation(line: 985, column: 13, scope: !2867, inlinedAt: !2944)
!2949 = !DILocation(line: 0, scope: !1704, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 986, column: 3, scope: !2867, inlinedAt: !2944)
!2951 = !DILocation(line: 156, column: 57, scope: !1704, inlinedAt: !2950)
!2952 = !DILocation(line: 158, column: 12, scope: !1704, inlinedAt: !2950)
!2953 = !DILocation(line: 159, column: 6, scope: !1704, inlinedAt: !2950)
!2954 = !DILocation(line: 987, column: 10, scope: !2867, inlinedAt: !2944)
!2955 = !DILocation(line: 988, column: 1, scope: !2867, inlinedAt: !2944)
!2956 = !DILocation(line: 1005, column: 3, scope: !2939)
!2957 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !352, file: !352, line: 1009, type: !2759, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2958)
!2958 = !{!2959, !2960, !2961, !2962}
!2959 = !DILocalVariable(name: "n", arg: 1, scope: !2957, file: !352, line: 1009, type: !14)
!2960 = !DILocalVariable(name: "s", arg: 2, scope: !2957, file: !352, line: 1009, type: !354)
!2961 = !DILocalVariable(name: "arg", arg: 3, scope: !2957, file: !352, line: 1009, type: !12)
!2962 = !DILocalVariable(name: "options", scope: !2957, file: !352, line: 1011, type: !400)
!2963 = !DILocation(line: 195, column: 26, scope: !2770, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 1012, column: 13, scope: !2957)
!2965 = !DILocation(line: 0, scope: !2957)
!2966 = !DILocation(line: 1011, column: 3, scope: !2957)
!2967 = !DILocation(line: 1011, column: 26, scope: !2957)
!2968 = !DILocation(line: 1012, column: 13, scope: !2957)
!2969 = !DILocation(line: 0, scope: !2770, inlinedAt: !2964)
!2970 = !{!2971}
!2971 = distinct !{!2971, !2972, !"quoting_options_from_style: argument 0"}
!2972 = distinct !{!2972, !"quoting_options_from_style"}
!2973 = !DILocation(line: 196, column: 13, scope: !2782, inlinedAt: !2964)
!2974 = !DILocation(line: 196, column: 7, scope: !2770, inlinedAt: !2964)
!2975 = !DILocation(line: 197, column: 5, scope: !2782, inlinedAt: !2964)
!2976 = !DILocation(line: 0, scope: !1704, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 1013, column: 3, scope: !2957)
!2978 = !DILocation(line: 156, column: 57, scope: !1704, inlinedAt: !2977)
!2979 = !DILocation(line: 158, column: 12, scope: !1704, inlinedAt: !2977)
!2980 = !DILocation(line: 159, column: 6, scope: !1704, inlinedAt: !2977)
!2981 = !DILocation(line: 1014, column: 10, scope: !2957)
!2982 = !DILocation(line: 1015, column: 1, scope: !2957)
!2983 = !DILocation(line: 1014, column: 3, scope: !2957)
!2984 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !352, file: !352, line: 1018, type: !2985, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!10, !14, !12, !12, !12}
!2987 = !{!2988, !2989, !2990, !2991}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !352, line: 1018, type: !14)
!2989 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2984, file: !352, line: 1018, type: !12)
!2990 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2984, file: !352, line: 1019, type: !12)
!2991 = !DILocalVariable(name: "arg", arg: 4, scope: !2984, file: !352, line: 1019, type: !12)
!2992 = !DILocalVariable(name: "o", scope: !2993, file: !352, line: 1030, type: !400)
!2993 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !352, file: !352, line: 1026, type: !2994, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!10, !14, !12, !12, !12, !68}
!2996 = !{!2997, !2998, !2999, !3000, !3001, !2992}
!2997 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !352, line: 1026, type: !14)
!2998 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2993, file: !352, line: 1026, type: !12)
!2999 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2993, file: !352, line: 1027, type: !12)
!3000 = !DILocalVariable(name: "arg", arg: 4, scope: !2993, file: !352, line: 1028, type: !12)
!3001 = !DILocalVariable(name: "argsize", arg: 5, scope: !2993, file: !352, line: 1028, type: !68)
!3002 = !DILocation(line: 1030, column: 26, scope: !2993, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 1021, column: 10, scope: !2984)
!3004 = !DILocation(line: 0, scope: !2984)
!3005 = !DILocation(line: 0, scope: !2993, inlinedAt: !3003)
!3006 = !DILocation(line: 1030, column: 3, scope: !2993, inlinedAt: !3003)
!3007 = !DILocation(line: 1030, column: 30, scope: !2993, inlinedAt: !3003)
!3008 = !DILocation(line: 0, scope: !1743, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 1031, column: 3, scope: !2993, inlinedAt: !3003)
!3010 = !DILocation(line: 184, column: 6, scope: !1743, inlinedAt: !3009)
!3011 = !DILocation(line: 184, column: 12, scope: !1743, inlinedAt: !3009)
!3012 = !DILocation(line: 185, column: 8, scope: !1757, inlinedAt: !3009)
!3013 = !DILocation(line: 185, column: 23, scope: !1757, inlinedAt: !3009)
!3014 = !DILocation(line: 185, column: 19, scope: !1757, inlinedAt: !3009)
!3015 = !DILocation(line: 186, column: 5, scope: !1757, inlinedAt: !3009)
!3016 = !DILocation(line: 187, column: 6, scope: !1743, inlinedAt: !3009)
!3017 = !DILocation(line: 187, column: 17, scope: !1743, inlinedAt: !3009)
!3018 = !DILocation(line: 188, column: 6, scope: !1743, inlinedAt: !3009)
!3019 = !DILocation(line: 188, column: 18, scope: !1743, inlinedAt: !3009)
!3020 = !DILocation(line: 1032, column: 10, scope: !2993, inlinedAt: !3003)
!3021 = !DILocation(line: 1033, column: 1, scope: !2993, inlinedAt: !3003)
!3022 = !DILocation(line: 1021, column: 3, scope: !2984)
!3023 = !DILocation(line: 0, scope: !2993)
!3024 = !DILocation(line: 1030, column: 3, scope: !2993)
!3025 = !DILocation(line: 1030, column: 26, scope: !2993)
!3026 = !DILocation(line: 1030, column: 30, scope: !2993)
!3027 = !DILocation(line: 0, scope: !1743, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 1031, column: 3, scope: !2993)
!3029 = !DILocation(line: 184, column: 6, scope: !1743, inlinedAt: !3028)
!3030 = !DILocation(line: 184, column: 12, scope: !1743, inlinedAt: !3028)
!3031 = !DILocation(line: 185, column: 8, scope: !1757, inlinedAt: !3028)
!3032 = !DILocation(line: 185, column: 23, scope: !1757, inlinedAt: !3028)
!3033 = !DILocation(line: 185, column: 19, scope: !1757, inlinedAt: !3028)
!3034 = !DILocation(line: 186, column: 5, scope: !1757, inlinedAt: !3028)
!3035 = !DILocation(line: 187, column: 6, scope: !1743, inlinedAt: !3028)
!3036 = !DILocation(line: 187, column: 17, scope: !1743, inlinedAt: !3028)
!3037 = !DILocation(line: 188, column: 6, scope: !1743, inlinedAt: !3028)
!3038 = !DILocation(line: 188, column: 18, scope: !1743, inlinedAt: !3028)
!3039 = !DILocation(line: 1032, column: 10, scope: !2993)
!3040 = !DILocation(line: 1033, column: 1, scope: !2993)
!3041 = !DILocation(line: 1032, column: 3, scope: !2993)
!3042 = distinct !DISubprogram(name: "quotearg_custom", scope: !352, file: !352, line: 1036, type: !3043, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!10, !12, !12, !12}
!3045 = !{!3046, !3047, !3048}
!3046 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3042, file: !352, line: 1036, type: !12)
!3047 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3042, file: !352, line: 1036, type: !12)
!3048 = !DILocalVariable(name: "arg", arg: 3, scope: !3042, file: !352, line: 1037, type: !12)
!3049 = !DILocation(line: 1030, column: 26, scope: !2993, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1021, column: 10, scope: !2984, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 1039, column: 10, scope: !3042)
!3052 = !DILocation(line: 0, scope: !3042)
!3053 = !DILocation(line: 0, scope: !2984, inlinedAt: !3051)
!3054 = !DILocation(line: 0, scope: !2993, inlinedAt: !3050)
!3055 = !DILocation(line: 1030, column: 3, scope: !2993, inlinedAt: !3050)
!3056 = !DILocation(line: 1030, column: 30, scope: !2993, inlinedAt: !3050)
!3057 = !DILocation(line: 0, scope: !1743, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 1031, column: 3, scope: !2993, inlinedAt: !3050)
!3059 = !DILocation(line: 184, column: 6, scope: !1743, inlinedAt: !3058)
!3060 = !DILocation(line: 184, column: 12, scope: !1743, inlinedAt: !3058)
!3061 = !DILocation(line: 185, column: 8, scope: !1757, inlinedAt: !3058)
!3062 = !DILocation(line: 185, column: 23, scope: !1757, inlinedAt: !3058)
!3063 = !DILocation(line: 185, column: 19, scope: !1757, inlinedAt: !3058)
!3064 = !DILocation(line: 186, column: 5, scope: !1757, inlinedAt: !3058)
!3065 = !DILocation(line: 187, column: 6, scope: !1743, inlinedAt: !3058)
!3066 = !DILocation(line: 187, column: 17, scope: !1743, inlinedAt: !3058)
!3067 = !DILocation(line: 188, column: 6, scope: !1743, inlinedAt: !3058)
!3068 = !DILocation(line: 188, column: 18, scope: !1743, inlinedAt: !3058)
!3069 = !DILocation(line: 1032, column: 10, scope: !2993, inlinedAt: !3050)
!3070 = !DILocation(line: 1033, column: 1, scope: !2993, inlinedAt: !3050)
!3071 = !DILocation(line: 1039, column: 3, scope: !3042)
!3072 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !352, file: !352, line: 1043, type: !3073, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!10, !12, !12, !12, !68}
!3075 = !{!3076, !3077, !3078, !3079}
!3076 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3072, file: !352, line: 1043, type: !12)
!3077 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3072, file: !352, line: 1043, type: !12)
!3078 = !DILocalVariable(name: "arg", arg: 3, scope: !3072, file: !352, line: 1044, type: !12)
!3079 = !DILocalVariable(name: "argsize", arg: 4, scope: !3072, file: !352, line: 1044, type: !68)
!3080 = !DILocation(line: 1030, column: 26, scope: !2993, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 1046, column: 10, scope: !3072)
!3082 = !DILocation(line: 0, scope: !3072)
!3083 = !DILocation(line: 0, scope: !2993, inlinedAt: !3081)
!3084 = !DILocation(line: 1030, column: 3, scope: !2993, inlinedAt: !3081)
!3085 = !DILocation(line: 1030, column: 30, scope: !2993, inlinedAt: !3081)
!3086 = !DILocation(line: 0, scope: !1743, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 1031, column: 3, scope: !2993, inlinedAt: !3081)
!3088 = !DILocation(line: 184, column: 6, scope: !1743, inlinedAt: !3087)
!3089 = !DILocation(line: 184, column: 12, scope: !1743, inlinedAt: !3087)
!3090 = !DILocation(line: 185, column: 8, scope: !1757, inlinedAt: !3087)
!3091 = !DILocation(line: 185, column: 23, scope: !1757, inlinedAt: !3087)
!3092 = !DILocation(line: 185, column: 19, scope: !1757, inlinedAt: !3087)
!3093 = !DILocation(line: 186, column: 5, scope: !1757, inlinedAt: !3087)
!3094 = !DILocation(line: 187, column: 6, scope: !1743, inlinedAt: !3087)
!3095 = !DILocation(line: 187, column: 17, scope: !1743, inlinedAt: !3087)
!3096 = !DILocation(line: 188, column: 6, scope: !1743, inlinedAt: !3087)
!3097 = !DILocation(line: 188, column: 18, scope: !1743, inlinedAt: !3087)
!3098 = !DILocation(line: 1032, column: 10, scope: !2993, inlinedAt: !3081)
!3099 = !DILocation(line: 1033, column: 1, scope: !2993, inlinedAt: !3081)
!3100 = !DILocation(line: 1046, column: 3, scope: !3072)
!3101 = distinct !DISubprogram(name: "quote_n_mem", scope: !352, file: !352, line: 1061, type: !3102, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!12, !14, !12, !68}
!3104 = !{!3105, !3106, !3107}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !352, line: 1061, type: !14)
!3106 = !DILocalVariable(name: "arg", arg: 2, scope: !3101, file: !352, line: 1061, type: !12)
!3107 = !DILocalVariable(name: "argsize", arg: 3, scope: !3101, file: !352, line: 1061, type: !68)
!3108 = !DILocation(line: 0, scope: !3101)
!3109 = !DILocation(line: 1063, column: 10, scope: !3101)
!3110 = !DILocation(line: 1063, column: 3, scope: !3101)
!3111 = distinct !DISubprogram(name: "quote_mem", scope: !352, file: !352, line: 1067, type: !3112, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!12, !12, !68}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "arg", arg: 1, scope: !3111, file: !352, line: 1067, type: !12)
!3116 = !DILocalVariable(name: "argsize", arg: 2, scope: !3111, file: !352, line: 1067, type: !68)
!3117 = !DILocation(line: 0, scope: !3111)
!3118 = !DILocation(line: 0, scope: !3101, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 1069, column: 10, scope: !3111)
!3120 = !DILocation(line: 1063, column: 10, scope: !3101, inlinedAt: !3119)
!3121 = !DILocation(line: 1069, column: 3, scope: !3111)
!3122 = distinct !DISubprogram(name: "quote_n", scope: !352, file: !352, line: 1073, type: !3123, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!12, !14, !12}
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "n", arg: 1, scope: !3122, file: !352, line: 1073, type: !14)
!3127 = !DILocalVariable(name: "arg", arg: 2, scope: !3122, file: !352, line: 1073, type: !12)
!3128 = !DILocation(line: 0, scope: !3122)
!3129 = !DILocation(line: 0, scope: !3101, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 1075, column: 10, scope: !3122)
!3131 = !DILocation(line: 1063, column: 10, scope: !3101, inlinedAt: !3130)
!3132 = !DILocation(line: 1075, column: 3, scope: !3122)
!3133 = distinct !DISubprogram(name: "quote", scope: !352, file: !352, line: 1079, type: !150, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !3134)
!3134 = !{!3135}
!3135 = !DILocalVariable(name: "arg", arg: 1, scope: !3133, file: !352, line: 1079, type: !12)
!3136 = !DILocation(line: 0, scope: !3133)
!3137 = !DILocation(line: 0, scope: !3122, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 1081, column: 10, scope: !3133)
!3139 = !DILocation(line: 0, scope: !3101, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 1075, column: 10, scope: !3122, inlinedAt: !3138)
!3141 = !DILocation(line: 1063, column: 10, scope: !3101, inlinedAt: !3140)
!3142 = !DILocation(line: 1081, column: 3, scope: !3133)
!3143 = distinct !DISubprogram(name: "version_etc_arn", scope: !501, file: !501, line: 61, type: !3144, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3150)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{null, !3146, !12, !12, !12, !3149, !68}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3148, line: 7, baseType: !511)
!3148 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!3150 = !{!3151, !3152, !3153, !3154, !3155, !3156}
!3151 = !DILocalVariable(name: "stream", arg: 1, scope: !3143, file: !501, line: 61, type: !3146)
!3152 = !DILocalVariable(name: "command_name", arg: 2, scope: !3143, file: !501, line: 62, type: !12)
!3153 = !DILocalVariable(name: "package", arg: 3, scope: !3143, file: !501, line: 62, type: !12)
!3154 = !DILocalVariable(name: "version", arg: 4, scope: !3143, file: !501, line: 63, type: !12)
!3155 = !DILocalVariable(name: "authors", arg: 5, scope: !3143, file: !501, line: 64, type: !3149)
!3156 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3143, file: !501, line: 64, type: !68)
!3157 = !DILocation(line: 0, scope: !3143)
!3158 = !DILocation(line: 66, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3143, file: !501, line: 66, column: 7)
!3160 = !DILocation(line: 66, column: 7, scope: !3143)
!3161 = !DILocation(line: 67, column: 5, scope: !3159)
!3162 = !DILocation(line: 69, column: 5, scope: !3159)
!3163 = !DILocation(line: 83, column: 3, scope: !3143)
!3164 = !DILocation(line: 85, column: 3, scope: !3143)
!3165 = !DILocation(line: 88, column: 3, scope: !3143)
!3166 = !DILocation(line: 95, column: 3, scope: !3143)
!3167 = !DILocation(line: 97, column: 3, scope: !3143)
!3168 = !DILocation(line: 105, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3143, file: !501, line: 98, column: 5)
!3170 = !DILocation(line: 106, column: 7, scope: !3169)
!3171 = !DILocation(line: 109, column: 7, scope: !3169)
!3172 = !DILocation(line: 110, column: 7, scope: !3169)
!3173 = !DILocation(line: 113, column: 7, scope: !3169)
!3174 = !DILocation(line: 115, column: 7, scope: !3169)
!3175 = !DILocation(line: 120, column: 7, scope: !3169)
!3176 = !DILocation(line: 122, column: 7, scope: !3169)
!3177 = !DILocation(line: 127, column: 7, scope: !3169)
!3178 = !DILocation(line: 129, column: 7, scope: !3169)
!3179 = !DILocation(line: 134, column: 7, scope: !3169)
!3180 = !DILocation(line: 137, column: 7, scope: !3169)
!3181 = !DILocation(line: 142, column: 7, scope: !3169)
!3182 = !DILocation(line: 145, column: 7, scope: !3169)
!3183 = !DILocation(line: 150, column: 7, scope: !3169)
!3184 = !DILocation(line: 154, column: 7, scope: !3169)
!3185 = !DILocation(line: 159, column: 7, scope: !3169)
!3186 = !DILocation(line: 163, column: 7, scope: !3169)
!3187 = !DILocation(line: 170, column: 7, scope: !3169)
!3188 = !DILocation(line: 174, column: 7, scope: !3169)
!3189 = !DILocation(line: 176, column: 1, scope: !3143)
!3190 = distinct !DISubprogram(name: "version_etc_ar", scope: !501, file: !501, line: 183, type: !3191, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !3146, !12, !12, !12, !3149}
!3193 = !{!3194, !3195, !3196, !3197, !3198, !3199}
!3194 = !DILocalVariable(name: "stream", arg: 1, scope: !3190, file: !501, line: 183, type: !3146)
!3195 = !DILocalVariable(name: "command_name", arg: 2, scope: !3190, file: !501, line: 184, type: !12)
!3196 = !DILocalVariable(name: "package", arg: 3, scope: !3190, file: !501, line: 184, type: !12)
!3197 = !DILocalVariable(name: "version", arg: 4, scope: !3190, file: !501, line: 185, type: !12)
!3198 = !DILocalVariable(name: "authors", arg: 5, scope: !3190, file: !501, line: 185, type: !3149)
!3199 = !DILocalVariable(name: "n_authors", scope: !3190, file: !501, line: 187, type: !68)
!3200 = !DILocation(line: 0, scope: !3190)
!3201 = !DILocation(line: 189, column: 8, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3190, file: !501, line: 189, column: 3)
!3203 = !DILocation(line: 0, scope: !3202)
!3204 = !DILocation(line: 189, column: 23, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !501, line: 189, column: 3)
!3206 = !DILocation(line: 189, column: 3, scope: !3202)
!3207 = !DILocation(line: 189, column: 52, scope: !3205)
!3208 = distinct !{!3208, !3206, !3209}
!3209 = !DILocation(line: 190, column: 5, scope: !3202)
!3210 = !DILocation(line: 191, column: 3, scope: !3190)
!3211 = !DILocation(line: 192, column: 1, scope: !3190)
!3212 = distinct !DISubprogram(name: "version_etc_va", scope: !501, file: !501, line: 199, type: !3213, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3222)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !3146, !12, !12, !12, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !501, line: 192, size: 192, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3216, file: !501, line: 192, baseType: !120, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3216, file: !501, line: 192, baseType: !120, size: 32, offset: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3216, file: !501, line: 192, baseType: !66, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3216, file: !501, line: 192, baseType: !66, size: 64, offset: 128)
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229}
!3223 = !DILocalVariable(name: "stream", arg: 1, scope: !3212, file: !501, line: 199, type: !3146)
!3224 = !DILocalVariable(name: "command_name", arg: 2, scope: !3212, file: !501, line: 200, type: !12)
!3225 = !DILocalVariable(name: "package", arg: 3, scope: !3212, file: !501, line: 200, type: !12)
!3226 = !DILocalVariable(name: "version", arg: 4, scope: !3212, file: !501, line: 201, type: !12)
!3227 = !DILocalVariable(name: "authors", arg: 5, scope: !3212, file: !501, line: 201, type: !3215)
!3228 = !DILocalVariable(name: "n_authors", scope: !3212, file: !501, line: 203, type: !68)
!3229 = !DILocalVariable(name: "authtab", scope: !3212, file: !501, line: 204, type: !3230)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !460)
!3231 = !DILocation(line: 0, scope: !3212)
!3232 = !DILocation(line: 204, column: 3, scope: !3212)
!3233 = !DILocation(line: 204, column: 15, scope: !3212)
!3234 = !DILocation(line: 0, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !501, line: 206, column: 3)
!3236 = distinct !DILexicalBlock(scope: !3212, file: !501, line: 206, column: 3)
!3237 = !DILocation(line: 208, column: 35, scope: !3235)
!3238 = !DILocation(line: 208, column: 14, scope: !3235)
!3239 = !DILocation(line: 208, column: 33, scope: !3235)
!3240 = !DILocation(line: 208, column: 67, scope: !3235)
!3241 = !DILocation(line: 206, column: 3, scope: !3236)
!3242 = !DILocation(line: 0, scope: !3236)
!3243 = !DILocation(line: 211, column: 3, scope: !3212)
!3244 = !DILocation(line: 213, column: 1, scope: !3212)
!3245 = distinct !DISubprogram(name: "version_etc", scope: !501, file: !501, line: 230, type: !3246, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{null, !3146, !12, !12, !12, null}
!3248 = !{!3249, !3250, !3251, !3252, !3253}
!3249 = !DILocalVariable(name: "stream", arg: 1, scope: !3245, file: !501, line: 230, type: !3146)
!3250 = !DILocalVariable(name: "command_name", arg: 2, scope: !3245, file: !501, line: 231, type: !12)
!3251 = !DILocalVariable(name: "package", arg: 3, scope: !3245, file: !501, line: 231, type: !12)
!3252 = !DILocalVariable(name: "version", arg: 4, scope: !3245, file: !501, line: 232, type: !12)
!3253 = !DILocalVariable(name: "authors", scope: !3245, file: !501, line: 234, type: !3254)
!3254 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !16, line: 52, baseType: !3255)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3256, line: 32, baseType: !3257)
!3256 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !501, line: 234, baseType: !3258)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3216, size: 192, elements: !51)
!3259 = !DILocation(line: 0, scope: !3245)
!3260 = !DILocation(line: 234, column: 3, scope: !3245)
!3261 = !DILocation(line: 234, column: 11, scope: !3245)
!3262 = !DILocation(line: 236, column: 3, scope: !3245)
!3263 = !DILocation(line: 237, column: 3, scope: !3245)
!3264 = !DILocation(line: 238, column: 3, scope: !3245)
!3265 = !DILocation(line: 239, column: 1, scope: !3245)
!3266 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !501, file: !501, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !500, retainedNodes: !4)
!3267 = !DILocation(line: 244, column: 3, scope: !3266)
!3268 = !DILocation(line: 249, column: 3, scope: !3266)
!3269 = !DILocation(line: 255, column: 3, scope: !3266)
!3270 = !DILocation(line: 260, column: 3, scope: !3266)
!3271 = !DILocation(line: 262, column: 1, scope: !3266)
!3272 = distinct !DISubprogram(name: "xnmalloc", scope: !389, file: !389, line: 99, type: !3273, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!66, !68, !68}
!3275 = !{!3276, !3277}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !389, line: 99, type: !68)
!3277 = !DILocalVariable(name: "s", arg: 2, scope: !3272, file: !389, line: 99, type: !68)
!3278 = !DILocation(line: 0, scope: !3272)
!3279 = !DILocation(line: 101, column: 7, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3272, file: !389, line: 101, column: 7)
!3281 = !DILocation(line: 101, column: 7, scope: !3272)
!3282 = !DILocation(line: 102, column: 5, scope: !3280)
!3283 = !DILocation(line: 103, column: 21, scope: !3272)
!3284 = !DILocalVariable(name: "n", arg: 1, scope: !3285, file: !543, line: 39, type: !68)
!3285 = distinct !DISubprogram(name: "xmalloc", scope: !543, file: !543, line: 39, type: !3286, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!66, !68}
!3288 = !{!3284, !3289}
!3289 = !DILocalVariable(name: "p", scope: !3285, file: !543, line: 41, type: !66)
!3290 = !DILocation(line: 0, scope: !3285, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 103, column: 10, scope: !3272)
!3292 = !DILocation(line: 41, column: 13, scope: !3285, inlinedAt: !3291)
!3293 = !DILocation(line: 42, column: 8, scope: !3294, inlinedAt: !3291)
!3294 = distinct !DILexicalBlock(scope: !3285, file: !543, line: 42, column: 7)
!3295 = !DILocation(line: 42, column: 15, scope: !3294, inlinedAt: !3291)
!3296 = !DILocation(line: 42, column: 10, scope: !3294, inlinedAt: !3291)
!3297 = !DILocation(line: 43, column: 5, scope: !3294, inlinedAt: !3291)
!3298 = !DILocation(line: 103, column: 3, scope: !3272)
!3299 = !DILocation(line: 0, scope: !3285)
!3300 = !DILocation(line: 41, column: 13, scope: !3285)
!3301 = !DILocation(line: 42, column: 8, scope: !3294)
!3302 = !DILocation(line: 42, column: 15, scope: !3294)
!3303 = !DILocation(line: 42, column: 10, scope: !3294)
!3304 = !DILocation(line: 43, column: 5, scope: !3294)
!3305 = !DILocation(line: 44, column: 3, scope: !3285)
!3306 = distinct !DISubprogram(name: "xnrealloc", scope: !389, file: !389, line: 112, type: !3307, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!66, !66, !68, !68}
!3309 = !{!3310, !3311, !3312}
!3310 = !DILocalVariable(name: "p", arg: 1, scope: !3306, file: !389, line: 112, type: !66)
!3311 = !DILocalVariable(name: "n", arg: 2, scope: !3306, file: !389, line: 112, type: !68)
!3312 = !DILocalVariable(name: "s", arg: 3, scope: !3306, file: !389, line: 112, type: !68)
!3313 = !DILocation(line: 0, scope: !3306)
!3314 = !DILocation(line: 114, column: 7, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3306, file: !389, line: 114, column: 7)
!3316 = !DILocation(line: 114, column: 7, scope: !3306)
!3317 = !DILocation(line: 115, column: 5, scope: !3315)
!3318 = !DILocation(line: 116, column: 25, scope: !3306)
!3319 = !DILocalVariable(name: "p", arg: 1, scope: !3320, file: !543, line: 51, type: !66)
!3320 = distinct !DISubprogram(name: "xrealloc", scope: !543, file: !543, line: 51, type: !3321, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!66, !66, !68}
!3323 = !{!3319, !3324}
!3324 = !DILocalVariable(name: "n", arg: 2, scope: !3320, file: !543, line: 51, type: !68)
!3325 = !DILocation(line: 0, scope: !3320, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 116, column: 10, scope: !3306)
!3327 = !DILocation(line: 53, column: 8, scope: !3328, inlinedAt: !3326)
!3328 = distinct !DILexicalBlock(scope: !3320, file: !543, line: 53, column: 7)
!3329 = !DILocation(line: 53, column: 13, scope: !3328, inlinedAt: !3326)
!3330 = !DILocation(line: 53, column: 10, scope: !3328, inlinedAt: !3326)
!3331 = !DILocation(line: 57, column: 7, scope: !3332, inlinedAt: !3326)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !543, line: 54, column: 5)
!3333 = !DILocation(line: 58, column: 7, scope: !3332, inlinedAt: !3326)
!3334 = !DILocation(line: 61, column: 7, scope: !3320, inlinedAt: !3326)
!3335 = !DILocation(line: 62, column: 8, scope: !3336, inlinedAt: !3326)
!3336 = distinct !DILexicalBlock(scope: !3320, file: !543, line: 62, column: 7)
!3337 = !DILocation(line: 62, column: 13, scope: !3336, inlinedAt: !3326)
!3338 = !DILocation(line: 62, column: 10, scope: !3336, inlinedAt: !3326)
!3339 = !DILocation(line: 63, column: 5, scope: !3336, inlinedAt: !3326)
!3340 = !DILocation(line: 116, column: 3, scope: !3306)
!3341 = !DILocation(line: 0, scope: !3320)
!3342 = !DILocation(line: 53, column: 8, scope: !3328)
!3343 = !DILocation(line: 53, column: 13, scope: !3328)
!3344 = !DILocation(line: 53, column: 10, scope: !3328)
!3345 = !DILocation(line: 57, column: 7, scope: !3332)
!3346 = !DILocation(line: 58, column: 7, scope: !3332)
!3347 = !DILocation(line: 61, column: 7, scope: !3320)
!3348 = !DILocation(line: 62, column: 8, scope: !3336)
!3349 = !DILocation(line: 62, column: 13, scope: !3336)
!3350 = !DILocation(line: 62, column: 10, scope: !3336)
!3351 = !DILocation(line: 63, column: 5, scope: !3336)
!3352 = !DILocation(line: 65, column: 1, scope: !3320)
!3353 = !DILocation(line: 0, scope: !546)
!3354 = !DILocation(line: 176, column: 14, scope: !546)
!3355 = !DILocation(line: 178, column: 9, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !546, file: !389, line: 178, column: 7)
!3357 = !DILocation(line: 178, column: 7, scope: !546)
!3358 = !DILocation(line: 180, column: 13, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !389, line: 180, column: 11)
!3360 = distinct !DILexicalBlock(scope: !3356, file: !389, line: 179, column: 5)
!3361 = !DILocation(line: 180, column: 11, scope: !3360)
!3362 = !DILocation(line: 188, column: 30, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3359, file: !389, line: 181, column: 9)
!3364 = !DILocation(line: 189, column: 16, scope: !3363)
!3365 = !DILocation(line: 189, column: 13, scope: !3363)
!3366 = !DILocation(line: 190, column: 9, scope: !3363)
!3367 = !DILocation(line: 191, column: 11, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3360, file: !389, line: 191, column: 11)
!3369 = !DILocation(line: 191, column: 11, scope: !3360)
!3370 = !DILocation(line: 206, column: 7, scope: !546)
!3371 = !DILocation(line: 207, column: 25, scope: !546)
!3372 = !DILocation(line: 0, scope: !3320, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 207, column: 10, scope: !546)
!3374 = !DILocation(line: 53, column: 10, scope: !3328, inlinedAt: !3373)
!3375 = !DILocation(line: 192, column: 9, scope: !3368)
!3376 = !DILocation(line: 200, column: 69, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !389, line: 200, column: 11)
!3378 = distinct !DILexicalBlock(scope: !3356, file: !389, line: 195, column: 5)
!3379 = !DILocation(line: 201, column: 11, scope: !3377)
!3380 = !DILocation(line: 200, column: 11, scope: !3378)
!3381 = !DILocation(line: 202, column: 9, scope: !3377)
!3382 = !DILocation(line: 203, column: 14, scope: !3378)
!3383 = !DILocation(line: 203, column: 18, scope: !3378)
!3384 = !DILocation(line: 203, column: 9, scope: !3378)
!3385 = !DILocation(line: 53, column: 8, scope: !3328, inlinedAt: !3373)
!3386 = !DILocation(line: 57, column: 7, scope: !3332, inlinedAt: !3373)
!3387 = !DILocation(line: 58, column: 7, scope: !3332, inlinedAt: !3373)
!3388 = !DILocation(line: 61, column: 7, scope: !3320, inlinedAt: !3373)
!3389 = !DILocation(line: 62, column: 8, scope: !3336, inlinedAt: !3373)
!3390 = !DILocation(line: 62, column: 13, scope: !3336, inlinedAt: !3373)
!3391 = !DILocation(line: 62, column: 10, scope: !3336, inlinedAt: !3373)
!3392 = !DILocation(line: 63, column: 5, scope: !3336, inlinedAt: !3373)
!3393 = !DILocation(line: 207, column: 3, scope: !546)
!3394 = distinct !DISubprogram(name: "xcharalloc", scope: !389, file: !389, line: 216, type: !2557, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3395)
!3395 = !{!3396}
!3396 = !DILocalVariable(name: "n", arg: 1, scope: !3394, file: !389, line: 216, type: !68)
!3397 = !DILocation(line: 0, scope: !3394)
!3398 = !DILocation(line: 0, scope: !3285, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 218, column: 10, scope: !3394)
!3400 = !DILocation(line: 41, column: 13, scope: !3285, inlinedAt: !3399)
!3401 = !DILocation(line: 42, column: 8, scope: !3294, inlinedAt: !3399)
!3402 = !DILocation(line: 42, column: 15, scope: !3294, inlinedAt: !3399)
!3403 = !DILocation(line: 42, column: 10, scope: !3294, inlinedAt: !3399)
!3404 = !DILocation(line: 43, column: 5, scope: !3294, inlinedAt: !3399)
!3405 = !DILocation(line: 218, column: 3, scope: !3394)
!3406 = distinct !DISubprogram(name: "x2realloc", scope: !543, file: !543, line: 74, type: !3407, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!66, !66, !549}
!3409 = !{!3410, !3411}
!3410 = !DILocalVariable(name: "p", arg: 1, scope: !3406, file: !543, line: 74, type: !66)
!3411 = !DILocalVariable(name: "pn", arg: 2, scope: !3406, file: !543, line: 74, type: !549)
!3412 = !DILocation(line: 0, scope: !3406)
!3413 = !DILocation(line: 0, scope: !546, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 76, column: 10, scope: !3406)
!3415 = !DILocation(line: 176, column: 14, scope: !546, inlinedAt: !3414)
!3416 = !DILocation(line: 178, column: 9, scope: !3356, inlinedAt: !3414)
!3417 = !DILocation(line: 178, column: 7, scope: !546, inlinedAt: !3414)
!3418 = !DILocation(line: 180, column: 13, scope: !3359, inlinedAt: !3414)
!3419 = !DILocation(line: 180, column: 11, scope: !3360, inlinedAt: !3414)
!3420 = !DILocation(line: 191, column: 11, scope: !3368, inlinedAt: !3414)
!3421 = !DILocation(line: 191, column: 11, scope: !3360, inlinedAt: !3414)
!3422 = !DILocation(line: 206, column: 7, scope: !546, inlinedAt: !3414)
!3423 = !DILocation(line: 0, scope: !3320, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 207, column: 10, scope: !546, inlinedAt: !3414)
!3425 = !DILocation(line: 53, column: 10, scope: !3328, inlinedAt: !3424)
!3426 = !DILocation(line: 192, column: 9, scope: !3368, inlinedAt: !3414)
!3427 = !DILocation(line: 201, column: 11, scope: !3377, inlinedAt: !3414)
!3428 = !DILocation(line: 200, column: 11, scope: !3378, inlinedAt: !3414)
!3429 = !DILocation(line: 202, column: 9, scope: !3377, inlinedAt: !3414)
!3430 = !DILocation(line: 203, column: 14, scope: !3378, inlinedAt: !3414)
!3431 = !DILocation(line: 203, column: 18, scope: !3378, inlinedAt: !3414)
!3432 = !DILocation(line: 203, column: 9, scope: !3378, inlinedAt: !3414)
!3433 = !DILocation(line: 53, column: 8, scope: !3328, inlinedAt: !3424)
!3434 = !DILocation(line: 57, column: 7, scope: !3332, inlinedAt: !3424)
!3435 = !DILocation(line: 58, column: 7, scope: !3332, inlinedAt: !3424)
!3436 = !DILocation(line: 61, column: 7, scope: !3320, inlinedAt: !3424)
!3437 = !DILocation(line: 62, column: 8, scope: !3336, inlinedAt: !3424)
!3438 = !DILocation(line: 62, column: 13, scope: !3336, inlinedAt: !3424)
!3439 = !DILocation(line: 62, column: 10, scope: !3336, inlinedAt: !3424)
!3440 = !DILocation(line: 63, column: 5, scope: !3336, inlinedAt: !3424)
!3441 = !DILocation(line: 76, column: 3, scope: !3406)
!3442 = distinct !DISubprogram(name: "xzalloc", scope: !543, file: !543, line: 84, type: !3286, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3443)
!3443 = !{!3444}
!3444 = !DILocalVariable(name: "n", arg: 1, scope: !3442, file: !543, line: 84, type: !68)
!3445 = !DILocation(line: 0, scope: !3442)
!3446 = !DILocalVariable(name: "n", arg: 1, scope: !3447, file: !543, line: 93, type: !68)
!3447 = distinct !DISubprogram(name: "xcalloc", scope: !543, file: !543, line: 93, type: !3273, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3448)
!3448 = !{!3446, !3449, !3450}
!3449 = !DILocalVariable(name: "s", arg: 2, scope: !3447, file: !543, line: 93, type: !68)
!3450 = !DILocalVariable(name: "p", scope: !3447, file: !543, line: 95, type: !66)
!3451 = !DILocation(line: 0, scope: !3447, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 86, column: 10, scope: !3442)
!3453 = !DILocation(line: 100, column: 7, scope: !3454, inlinedAt: !3452)
!3454 = distinct !DILexicalBlock(scope: !3447, file: !543, line: 100, column: 7)
!3455 = !DILocation(line: 101, column: 7, scope: !3454, inlinedAt: !3452)
!3456 = !DILocation(line: 101, column: 18, scope: !3454, inlinedAt: !3452)
!3457 = !DILocation(line: 101, column: 16, scope: !3454, inlinedAt: !3452)
!3458 = !DILocation(line: 100, column: 7, scope: !3447, inlinedAt: !3452)
!3459 = !DILocation(line: 102, column: 5, scope: !3454, inlinedAt: !3452)
!3460 = !DILocation(line: 86, column: 3, scope: !3442)
!3461 = !DILocation(line: 0, scope: !3447)
!3462 = !DILocation(line: 100, column: 7, scope: !3454)
!3463 = !DILocation(line: 101, column: 7, scope: !3454)
!3464 = !DILocation(line: 101, column: 18, scope: !3454)
!3465 = !DILocation(line: 101, column: 16, scope: !3454)
!3466 = !DILocation(line: 100, column: 7, scope: !3447)
!3467 = !DILocation(line: 102, column: 5, scope: !3454)
!3468 = !DILocation(line: 103, column: 3, scope: !3447)
!3469 = distinct !DISubprogram(name: "xmemdup", scope: !543, file: !543, line: 111, type: !3470, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3472)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!66, !392, !68}
!3472 = !{!3473, !3474}
!3473 = !DILocalVariable(name: "p", arg: 1, scope: !3469, file: !543, line: 111, type: !392)
!3474 = !DILocalVariable(name: "s", arg: 2, scope: !3469, file: !543, line: 111, type: !68)
!3475 = !DILocation(line: 0, scope: !3469)
!3476 = !DILocation(line: 0, scope: !3285, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 113, column: 18, scope: !3469)
!3478 = !DILocation(line: 41, column: 13, scope: !3285, inlinedAt: !3477)
!3479 = !DILocation(line: 42, column: 8, scope: !3294, inlinedAt: !3477)
!3480 = !DILocation(line: 42, column: 15, scope: !3294, inlinedAt: !3477)
!3481 = !DILocation(line: 42, column: 10, scope: !3294, inlinedAt: !3477)
!3482 = !DILocation(line: 43, column: 5, scope: !3294, inlinedAt: !3477)
!3483 = !DILocalVariable(name: "__dest", arg: 1, scope: !3484, file: !2090, line: 31, type: !3487)
!3484 = distinct !DISubprogram(name: "memcpy", scope: !2090, file: !2090, line: 31, type: !3485, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3489)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!66, !3487, !3488, !68}
!3487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!3488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !392)
!3489 = !{!3483, !3490, !3491}
!3490 = !DILocalVariable(name: "__src", arg: 2, scope: !3484, file: !2090, line: 31, type: !3488)
!3491 = !DILocalVariable(name: "__len", arg: 3, scope: !3484, file: !2090, line: 31, type: !68)
!3492 = !DILocation(line: 0, scope: !3484, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 113, column: 10, scope: !3469)
!3494 = !DILocation(line: 34, column: 10, scope: !3484, inlinedAt: !3493)
!3495 = !DILocation(line: 113, column: 3, scope: !3469)
!3496 = distinct !DISubprogram(name: "xstrdup", scope: !543, file: !543, line: 119, type: !88, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !542, retainedNodes: !3497)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "string", arg: 1, scope: !3496, file: !543, line: 119, type: !12)
!3499 = !DILocation(line: 0, scope: !3496)
!3500 = !DILocation(line: 121, column: 27, scope: !3496)
!3501 = !DILocation(line: 121, column: 43, scope: !3496)
!3502 = !DILocation(line: 0, scope: !3469, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 121, column: 10, scope: !3496)
!3504 = !DILocation(line: 0, scope: !3285, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 113, column: 18, scope: !3469, inlinedAt: !3503)
!3506 = !DILocation(line: 41, column: 13, scope: !3285, inlinedAt: !3505)
!3507 = !DILocation(line: 42, column: 8, scope: !3294, inlinedAt: !3505)
!3508 = !DILocation(line: 42, column: 15, scope: !3294, inlinedAt: !3505)
!3509 = !DILocation(line: 42, column: 10, scope: !3294, inlinedAt: !3505)
!3510 = !DILocation(line: 43, column: 5, scope: !3294, inlinedAt: !3505)
!3511 = !DILocation(line: 0, scope: !3484, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 113, column: 10, scope: !3469, inlinedAt: !3503)
!3513 = !DILocation(line: 34, column: 10, scope: !3484, inlinedAt: !3512)
!3514 = !DILocation(line: 121, column: 3, scope: !3496)
!3515 = distinct !DISubprogram(name: "xalloc_die", scope: !564, file: !564, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !563, retainedNodes: !4)
!3516 = !DILocation(line: 34, column: 10, scope: !3515)
!3517 = !DILocation(line: 34, column: 33, scope: !3515)
!3518 = !DILocation(line: 34, column: 3, scope: !3515)
!3519 = !DILocation(line: 40, column: 3, scope: !3515)
!3520 = distinct !DISubprogram(name: "xgetgroups", scope: !567, file: !567, line: 31, type: !1036, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !566, retainedNodes: !3521)
!3521 = !{!3522, !3523, !3524, !3525}
!3522 = !DILocalVariable(name: "username", arg: 1, scope: !3520, file: !567, line: 31, type: !12)
!3523 = !DILocalVariable(name: "gid", arg: 2, scope: !3520, file: !567, line: 31, type: !165)
!3524 = !DILocalVariable(name: "groups", arg: 3, scope: !3520, file: !567, line: 31, type: !1038)
!3525 = !DILocalVariable(name: "result", scope: !3520, file: !567, line: 33, type: !14)
!3526 = !DILocation(line: 0, scope: !3520)
!3527 = !DILocation(line: 33, column: 16, scope: !3520)
!3528 = !DILocation(line: 34, column: 14, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3520, file: !567, line: 34, column: 7)
!3530 = !DILocation(line: 34, column: 20, scope: !3529)
!3531 = !DILocation(line: 34, column: 23, scope: !3529)
!3532 = !DILocation(line: 34, column: 29, scope: !3529)
!3533 = !DILocation(line: 34, column: 7, scope: !3520)
!3534 = !DILocation(line: 35, column: 5, scope: !3529)
!3535 = !DILocation(line: 36, column: 3, scope: !3520)
!3536 = distinct !DISubprogram(name: "rpl_calloc", scope: !571, file: !571, line: 42, type: !3273, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !3537)
!3537 = !{!3538, !3539, !3540, !3541}
!3538 = !DILocalVariable(name: "n", arg: 1, scope: !3536, file: !571, line: 42, type: !68)
!3539 = !DILocalVariable(name: "s", arg: 2, scope: !3536, file: !571, line: 42, type: !68)
!3540 = !DILocalVariable(name: "result", scope: !3536, file: !571, line: 44, type: !66)
!3541 = !DILocalVariable(name: "bytes", scope: !3542, file: !571, line: 56, type: !68)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !571, line: 53, column: 5)
!3543 = distinct !DILexicalBlock(scope: !3536, file: !571, line: 47, column: 7)
!3544 = !DILocation(line: 0, scope: !3536)
!3545 = !DILocation(line: 47, column: 9, scope: !3543)
!3546 = !DILocation(line: 47, column: 19, scope: !3543)
!3547 = !DILocation(line: 47, column: 14, scope: !3543)
!3548 = !DILocation(line: 0, scope: !3542)
!3549 = !DILocation(line: 57, column: 21, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3542, file: !571, line: 57, column: 11)
!3551 = !DILocation(line: 57, column: 11, scope: !3542)
!3552 = !DILocation(line: 59, column: 11, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !571, line: 58, column: 9)
!3554 = !DILocation(line: 59, column: 17, scope: !3553)
!3555 = !DILocation(line: 65, column: 12, scope: !3536)
!3556 = !DILocation(line: 72, column: 3, scope: !3536)
!3557 = !DILocation(line: 73, column: 1, scope: !3536)
!3558 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !574, file: !574, line: 86, type: !3559, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3565)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!68, !3561, !12, !68, !3562}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1833, line: 6, baseType: !3564)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !419, line: 21, baseType: !580)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572}
!3566 = !DILocalVariable(name: "pwc", arg: 1, scope: !3558, file: !574, line: 86, type: !3561)
!3567 = !DILocalVariable(name: "s", arg: 2, scope: !3558, file: !574, line: 86, type: !12)
!3568 = !DILocalVariable(name: "n", arg: 3, scope: !3558, file: !574, line: 86, type: !68)
!3569 = !DILocalVariable(name: "ps", arg: 4, scope: !3558, file: !574, line: 86, type: !3562)
!3570 = !DILocalVariable(name: "ret", scope: !3558, file: !574, line: 88, type: !68)
!3571 = !DILocalVariable(name: "wc", scope: !3558, file: !574, line: 89, type: !1837)
!3572 = !DILocalVariable(name: "uc", scope: !3573, file: !574, line: 156, type: !152)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !574, line: 155, column: 5)
!3574 = distinct !DILexicalBlock(scope: !3558, file: !574, line: 154, column: 7)
!3575 = !DILocation(line: 0, scope: !3558)
!3576 = !DILocation(line: 89, column: 3, scope: !3558)
!3577 = !DILocation(line: 105, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3558, file: !574, line: 105, column: 7)
!3579 = !DILocation(line: 105, column: 7, scope: !3558)
!3580 = !DILocation(line: 145, column: 9, scope: !3558)
!3581 = !DILocation(line: 154, column: 19, scope: !3574)
!3582 = !DILocation(line: 154, column: 31, scope: !3574)
!3583 = !DILocation(line: 154, column: 26, scope: !3574)
!3584 = !DILocation(line: 154, column: 41, scope: !3574)
!3585 = !DILocation(line: 154, column: 7, scope: !3558)
!3586 = !DILocation(line: 156, column: 26, scope: !3573)
!3587 = !DILocation(line: 0, scope: !3573)
!3588 = !DILocation(line: 157, column: 14, scope: !3573)
!3589 = !DILocation(line: 157, column: 12, scope: !3573)
!3590 = !DILocation(line: 163, column: 1, scope: !3558)
!3591 = distinct !DISubprogram(name: "close_stream", scope: !593, file: !593, line: 56, type: !3592, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3596)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!14, !3594}
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3148, line: 7, baseType: !600)
!3596 = !{!3597, !3598, !3600, !3601}
!3597 = !DILocalVariable(name: "stream", arg: 1, scope: !3591, file: !593, line: 56, type: !3594)
!3598 = !DILocalVariable(name: "some_pending", scope: !3591, file: !593, line: 58, type: !3599)
!3599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!3600 = !DILocalVariable(name: "prev_fail", scope: !3591, file: !593, line: 59, type: !3599)
!3601 = !DILocalVariable(name: "fclose_fail", scope: !3591, file: !593, line: 60, type: !3599)
!3602 = !DILocation(line: 0, scope: !3591)
!3603 = !DILocation(line: 58, column: 30, scope: !3591)
!3604 = !DILocalVariable(name: "__stream", arg: 1, scope: !3605, file: !1350, line: 135, type: !3594)
!3605 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1350, file: !1350, line: 135, type: !3592, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !592, retainedNodes: !3606)
!3606 = !{!3604}
!3607 = !DILocation(line: 0, scope: !3605, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 59, column: 27, scope: !3591)
!3609 = !DILocation(line: 137, column: 10, scope: !3605, inlinedAt: !3608)
!3610 = !{!1358, !1314, i64 0}
!3611 = !DILocation(line: 59, column: 43, scope: !3591)
!3612 = !DILocation(line: 60, column: 29, scope: !3591)
!3613 = !DILocation(line: 60, column: 45, scope: !3591)
!3614 = !DILocation(line: 70, column: 17, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3591, file: !593, line: 70, column: 7)
!3616 = !DILocation(line: 58, column: 50, scope: !3591)
!3617 = !DILocation(line: 70, column: 33, scope: !3615)
!3618 = !DILocation(line: 70, column: 53, scope: !3615)
!3619 = !DILocation(line: 70, column: 59, scope: !3615)
!3620 = !DILocation(line: 70, column: 7, scope: !3591)
!3621 = !DILocation(line: 72, column: 11, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3615, file: !593, line: 71, column: 5)
!3623 = !DILocation(line: 73, column: 9, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3622, file: !593, line: 72, column: 11)
!3625 = !DILocation(line: 73, column: 15, scope: !3624)
!3626 = !DILocation(line: 78, column: 1, scope: !3591)
!3627 = distinct !DISubprogram(name: "hard_locale", scope: !632, file: !632, line: 27, type: !590, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !3628)
!3628 = !{!3629, !3630}
!3629 = !DILocalVariable(name: "category", arg: 1, scope: !3627, file: !632, line: 27, type: !14)
!3630 = !DILocalVariable(name: "locale", scope: !3627, file: !632, line: 29, type: !3631)
!3631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !3632)
!3632 = !{!3633}
!3633 = !DISubrange(count: 257)
!3634 = !DILocation(line: 0, scope: !3627)
!3635 = !DILocation(line: 29, column: 3, scope: !3627)
!3636 = !DILocation(line: 29, column: 8, scope: !3627)
!3637 = !DILocation(line: 31, column: 7, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3627, file: !632, line: 31, column: 7)
!3639 = !DILocation(line: 31, column: 7, scope: !3627)
!3640 = !DILocation(line: 34, column: 12, scope: !3627)
!3641 = !DILocation(line: 34, column: 38, scope: !3627)
!3642 = !DILocation(line: 34, column: 41, scope: !3627)
!3643 = !DILocation(line: 34, column: 66, scope: !3627)
!3644 = !DILocation(line: 35, column: 1, scope: !3627)
!3645 = distinct !DISubprogram(name: "locale_charset", scope: !639, file: !639, line: 831, type: !442, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !638, retainedNodes: !3646)
!3646 = !{!3647}
!3647 = !DILocalVariable(name: "codeset", scope: !3645, file: !639, line: 833, type: !12)
!3648 = !DILocation(line: 847, column: 13, scope: !3645)
!3649 = !DILocation(line: 0, scope: !3645)
!3650 = !DILocation(line: 911, column: 15, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3645, file: !639, line: 911, column: 7)
!3652 = !DILocation(line: 911, column: 7, scope: !3645)
!3653 = !DILocation(line: 1070, column: 13, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !639, line: 1070, column: 13)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !639, line: 1060, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3645, file: !639, line: 1019, column: 3)
!3657 = !DILocation(line: 1070, column: 24, scope: !3654)
!3658 = !DILocation(line: 1070, column: 13, scope: !3655)
!3659 = !DILocation(line: 1158, column: 3, scope: !3645)
!3660 = !DILocation(line: 0, scope: !1035)
!3661 = !DILocation(line: 68, column: 3, scope: !1035)
!3662 = !DILocation(line: 81, column: 7, scope: !1050)
!3663 = !DILocation(line: 81, column: 7, scope: !1035)
!3664 = !DILocation(line: 84, column: 20, scope: !1049)
!3665 = !DILocalVariable(name: "g", arg: 1, scope: !3666, file: !1032, line: 43, type: !1039)
!3666 = distinct !DISubprogram(name: "realloc_groupbuf", scope: !1032, file: !1032, line: 43, type: !3667, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!1039, !1039, !68}
!3669 = !{!3665, !3670}
!3670 = !DILocalVariable(name: "num", arg: 2, scope: !3666, file: !1032, line: 43, type: !68)
!3671 = !DILocation(line: 0, scope: !3666, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 86, column: 11, scope: !1049)
!3673 = !DILocation(line: 51, column: 10, scope: !3666, inlinedAt: !3672)
!3674 = !DILocation(line: 87, column: 13, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !1049, file: !1032, line: 87, column: 11)
!3676 = !DILocation(line: 87, column: 11, scope: !1049)
!3677 = !DILocation(line: 93, column: 31, scope: !1048)
!3678 = !DILocation(line: 86, column: 9, scope: !1049)
!3679 = !DILocation(line: 0, scope: !1048)
!3680 = !DILocation(line: 96, column: 16, scope: !1048)
!3681 = !DILocation(line: 100, column: 18, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !1048, file: !1032, line: 100, column: 15)
!3683 = !DILocation(line: 100, column: 39, scope: !3682)
!3684 = !DILocation(line: 100, column: 22, scope: !3682)
!3685 = !DILocation(line: 101, column: 26, scope: !3682)
!3686 = !DILocation(line: 101, column: 13, scope: !3682)
!3687 = !DILocation(line: 103, column: 41, scope: !1054)
!3688 = !DILocation(line: 0, scope: !3666, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 103, column: 20, scope: !1054)
!3690 = !DILocation(line: 45, column: 7, scope: !3691, inlinedAt: !3689)
!3691 = distinct !DILexicalBlock(scope: !3666, file: !1032, line: 45, column: 7)
!3692 = !DILocation(line: 45, column: 7, scope: !3666, inlinedAt: !3689)
!3693 = !DILocation(line: 47, column: 7, scope: !3694, inlinedAt: !3689)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !1032, line: 46, column: 5)
!3695 = !DILocation(line: 47, column: 13, scope: !3694, inlinedAt: !3689)
!3696 = !DILocation(line: 103, column: 15, scope: !1048)
!3697 = !DILocation(line: 51, column: 26, scope: !3666, inlinedAt: !3689)
!3698 = !DILocation(line: 51, column: 10, scope: !3666, inlinedAt: !3689)
!3699 = !DILocation(line: 103, column: 56, scope: !1054)
!3700 = !DILocation(line: 105, column: 33, scope: !1053)
!3701 = !DILocation(line: 0, scope: !1053)
!3702 = !DILocation(line: 106, column: 15, scope: !1053)
!3703 = !DILocation(line: 107, column: 21, scope: !1053)
!3704 = !DILocation(line: 112, column: 17, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !1048, file: !1032, line: 112, column: 15)
!3706 = !DILocation(line: 112, column: 15, scope: !1048)
!3707 = !DILocation(line: 114, column: 23, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !1032, line: 113, column: 13)
!3709 = !DILocation(line: 117, column: 22, scope: !3708)
!3710 = !DILocation(line: 117, column: 15, scope: !3708)
!3711 = !DILocation(line: 126, column: 21, scope: !1035)
!3712 = !DILocation(line: 124, column: 16, scope: !1035)
!3713 = !DILocation(line: 131, column: 20, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !1035, file: !1032, line: 131, column: 7)
!3715 = !DILocation(line: 131, column: 7, scope: !1035)
!3716 = !DILocation(line: 133, column: 11, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !1032, line: 133, column: 11)
!3718 = distinct !DILexicalBlock(scope: !3714, file: !1032, line: 132, column: 5)
!3719 = !DILocation(line: 133, column: 17, scope: !3717)
!3720 = !DILocation(line: 133, column: 27, scope: !3717)
!3721 = !DILocation(line: 0, scope: !3666, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 133, column: 35, scope: !3717)
!3723 = !DILocation(line: 51, column: 10, scope: !3666, inlinedAt: !3722)
!3724 = !DILocation(line: 133, column: 33, scope: !3717)
!3725 = !DILocation(line: 133, column: 11, scope: !3718)
!3726 = !DILocation(line: 135, column: 19, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3717, file: !1032, line: 134, column: 9)
!3728 = !DILocation(line: 136, column: 14, scope: !3727)
!3729 = !DILocation(line: 137, column: 22, scope: !3727)
!3730 = !DILocation(line: 137, column: 11, scope: !3727)
!3731 = !DILocation(line: 142, column: 20, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !1035, file: !1032, line: 142, column: 7)
!3733 = !DILocation(line: 142, column: 46, scope: !3732)
!3734 = !DILocation(line: 142, column: 25, scope: !3732)
!3735 = !DILocation(line: 143, column: 17, scope: !3732)
!3736 = !DILocation(line: 143, column: 5, scope: !3732)
!3737 = !DILocation(line: 144, column: 31, scope: !1035)
!3738 = !DILocation(line: 0, scope: !3666, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 144, column: 7, scope: !1035)
!3740 = !DILocation(line: 51, column: 26, scope: !3666, inlinedAt: !3739)
!3741 = !DILocation(line: 51, column: 10, scope: !3666, inlinedAt: !3739)
!3742 = !DILocation(line: 145, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !1035, file: !1032, line: 145, column: 7)
!3744 = !DILocation(line: 145, column: 7, scope: !1035)
!3745 = !DILocation(line: 150, column: 42, scope: !1035)
!3746 = !DILocation(line: 150, column: 35, scope: !1035)
!3747 = !DILocation(line: 151, column: 35, scope: !1035)
!3748 = !DILocation(line: 150, column: 11, scope: !1035)
!3749 = !DILocation(line: 153, column: 10, scope: !1057)
!3750 = !DILocation(line: 153, column: 7, scope: !1035)
!3751 = !DILocation(line: 156, column: 25, scope: !1056)
!3752 = !DILocation(line: 0, scope: !1056)
!3753 = !DILocation(line: 157, column: 7, scope: !1056)
!3754 = !DILocation(line: 158, column: 13, scope: !1056)
!3755 = !DILocation(line: 162, column: 17, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !1035, file: !1032, line: 162, column: 7)
!3757 = !DILocation(line: 164, column: 10, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3756, file: !1032, line: 163, column: 5)
!3759 = !DILocation(line: 165, column: 9, scope: !3758)
!3760 = !DILocation(line: 166, column: 5, scope: !3758)
!3761 = !DILocation(line: 167, column: 11, scope: !1035)
!3762 = !DILocation(line: 185, column: 9, scope: !1060)
!3763 = !DILocation(line: 185, column: 7, scope: !1035)
!3764 = !DILocation(line: 187, column: 21, scope: !1059)
!3765 = !DILocation(line: 0, scope: !1059)
!3766 = !DILocation(line: 189, column: 29, scope: !1059)
!3767 = !DILocation(line: 0, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !1059, file: !1032, line: 191, column: 7)
!3769 = !DILocation(line: 191, column: 31, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3768, file: !1032, line: 191, column: 7)
!3771 = !DILocation(line: 191, column: 7, scope: !3768)
!3772 = !DILocation(line: 193, column: 15, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !1032, line: 193, column: 15)
!3774 = distinct !DILexicalBlock(scope: !3770, file: !1032, line: 192, column: 9)
!3775 = !DILocation(line: 193, column: 39, scope: !3773)
!3776 = !DILocation(line: 193, column: 30, scope: !3773)
!3777 = !DILocation(line: 196, column: 14, scope: !3773)
!3778 = !DILocation(line: 196, column: 18, scope: !3773)
!3779 = !DILocation(line: 194, column: 15, scope: !3773)
!3780 = !DILocation(line: 194, column: 13, scope: !3773)
!3781 = !DILocation(line: 193, column: 21, scope: !3773)
!3782 = !DILocation(line: 201, column: 1, scope: !1035)
!3783 = distinct !{!3783, !3771, !3784}
!3784 = !DILocation(line: 197, column: 9, scope: !3768)
!3785 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1074, file: !1074, line: 269, type: !3786, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !3788)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!14, !14, !10, !68}
!3788 = !{!3789, !3790, !3791}
!3789 = !DILocalVariable(name: "category", arg: 1, scope: !3785, file: !1074, line: 269, type: !14)
!3790 = !DILocalVariable(name: "buf", arg: 2, scope: !3785, file: !1074, line: 269, type: !10)
!3791 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3785, file: !1074, line: 269, type: !68)
!3792 = !DILocation(line: 0, scope: !3785)
!3793 = !DILocalVariable(name: "category", arg: 1, scope: !3794, file: !1074, line: 91, type: !14)
!3794 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1074, file: !1074, line: 91, type: !3786, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !3795)
!3795 = !{!3793, !3796, !3797, !3798, !3799}
!3796 = !DILocalVariable(name: "buf", arg: 2, scope: !3794, file: !1074, line: 91, type: !10)
!3797 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3794, file: !1074, line: 91, type: !68)
!3798 = !DILocalVariable(name: "result", scope: !3794, file: !1074, line: 140, type: !12)
!3799 = !DILocalVariable(name: "length", scope: !3800, file: !1074, line: 154, type: !68)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !1074, line: 153, column: 5)
!3801 = distinct !DILexicalBlock(scope: !3794, file: !1074, line: 142, column: 7)
!3802 = !DILocation(line: 0, scope: !3794, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 274, column: 10, scope: !3785)
!3804 = !DILocalVariable(name: "category", arg: 1, scope: !3805, file: !1074, line: 60, type: !14)
!3805 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1074, file: !1074, line: 60, type: !3806, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!12, !14}
!3808 = !{!3804, !3809}
!3809 = !DILocalVariable(name: "result", scope: !3805, file: !1074, line: 62, type: !12)
!3810 = !DILocation(line: 0, scope: !3805, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 140, column: 24, scope: !3794, inlinedAt: !3803)
!3812 = !DILocation(line: 62, column: 24, scope: !3805, inlinedAt: !3811)
!3813 = !DILocation(line: 142, column: 14, scope: !3801, inlinedAt: !3803)
!3814 = !DILocation(line: 142, column: 7, scope: !3794, inlinedAt: !3803)
!3815 = !DILocation(line: 145, column: 19, scope: !3816, inlinedAt: !3803)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !1074, line: 145, column: 11)
!3817 = distinct !DILexicalBlock(scope: !3801, file: !1074, line: 143, column: 5)
!3818 = !DILocation(line: 145, column: 11, scope: !3817, inlinedAt: !3803)
!3819 = !DILocation(line: 149, column: 16, scope: !3816, inlinedAt: !3803)
!3820 = !DILocation(line: 149, column: 9, scope: !3816, inlinedAt: !3803)
!3821 = !DILocation(line: 154, column: 23, scope: !3800, inlinedAt: !3803)
!3822 = !DILocation(line: 0, scope: !3800, inlinedAt: !3803)
!3823 = !DILocation(line: 155, column: 18, scope: !3824, inlinedAt: !3803)
!3824 = distinct !DILexicalBlock(scope: !3800, file: !1074, line: 155, column: 11)
!3825 = !DILocation(line: 155, column: 11, scope: !3800, inlinedAt: !3803)
!3826 = !DILocation(line: 157, column: 39, scope: !3827, inlinedAt: !3803)
!3827 = distinct !DILexicalBlock(scope: !3824, file: !1074, line: 156, column: 9)
!3828 = !DILocalVariable(name: "__dest", arg: 1, scope: !3829, file: !2090, line: 31, type: !3487)
!3829 = distinct !DISubprogram(name: "memcpy", scope: !2090, file: !2090, line: 31, type: !3485, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !3830)
!3830 = !{!3828, !3831, !3832}
!3831 = !DILocalVariable(name: "__src", arg: 2, scope: !3829, file: !2090, line: 31, type: !3488)
!3832 = !DILocalVariable(name: "__len", arg: 3, scope: !3829, file: !2090, line: 31, type: !68)
!3833 = !DILocation(line: 0, scope: !3829, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 157, column: 11, scope: !3827, inlinedAt: !3803)
!3835 = !DILocation(line: 34, column: 10, scope: !3829, inlinedAt: !3834)
!3836 = !DILocation(line: 158, column: 11, scope: !3827, inlinedAt: !3803)
!3837 = !DILocation(line: 162, column: 23, scope: !3838, inlinedAt: !3803)
!3838 = distinct !DILexicalBlock(scope: !3839, file: !1074, line: 162, column: 15)
!3839 = distinct !DILexicalBlock(scope: !3824, file: !1074, line: 161, column: 9)
!3840 = !DILocation(line: 162, column: 15, scope: !3839, inlinedAt: !3803)
!3841 = !DILocation(line: 167, column: 44, scope: !3842, inlinedAt: !3803)
!3842 = distinct !DILexicalBlock(scope: !3838, file: !1074, line: 163, column: 13)
!3843 = !DILocation(line: 0, scope: !3829, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 167, column: 15, scope: !3842, inlinedAt: !3803)
!3845 = !DILocation(line: 34, column: 10, scope: !3829, inlinedAt: !3844)
!3846 = !DILocation(line: 168, column: 15, scope: !3842, inlinedAt: !3803)
!3847 = !DILocation(line: 168, column: 32, scope: !3842, inlinedAt: !3803)
!3848 = !DILocation(line: 169, column: 13, scope: !3842, inlinedAt: !3803)
!3849 = !DILocation(line: 0, scope: !3801, inlinedAt: !3803)
!3850 = !DILocation(line: 274, column: 3, scope: !3785)
!3851 = distinct !DISubprogram(name: "setlocale_null", scope: !1074, file: !1074, line: 301, type: !3806, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1073, retainedNodes: !3852)
!3852 = !{!3853}
!3853 = !DILocalVariable(name: "category", arg: 1, scope: !3851, file: !1074, line: 301, type: !14)
!3854 = !DILocation(line: 0, scope: !3851)
!3855 = !DILocation(line: 0, scope: !3805, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 304, column: 10, scope: !3851)
!3857 = !DILocation(line: 62, column: 24, scope: !3805, inlinedAt: !3856)
!3858 = !DILocation(line: 304, column: 3, scope: !3851)
!3859 = distinct !DISubprogram(name: "rpl_fclose", scope: !1077, file: !1077, line: 58, type: !3860, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !3864)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!14, !3862}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3148, line: 7, baseType: !1083)
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DILocalVariable(name: "fp", arg: 1, scope: !3859, file: !1077, line: 58, type: !3862)
!3866 = !DILocalVariable(name: "saved_errno", scope: !3859, file: !1077, line: 60, type: !14)
!3867 = !DILocalVariable(name: "fd", scope: !3859, file: !1077, line: 61, type: !14)
!3868 = !DILocalVariable(name: "result", scope: !3859, file: !1077, line: 62, type: !14)
!3869 = !DILocation(line: 0, scope: !3859)
!3870 = !DILocation(line: 65, column: 8, scope: !3859)
!3871 = !DILocation(line: 66, column: 10, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3859, file: !1077, line: 66, column: 7)
!3873 = !DILocation(line: 66, column: 7, scope: !3859)
!3874 = !DILocation(line: 67, column: 12, scope: !3872)
!3875 = !DILocation(line: 67, column: 5, scope: !3872)
!3876 = !DILocation(line: 72, column: 9, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3859, file: !1077, line: 72, column: 7)
!3878 = !DILocation(line: 72, column: 23, scope: !3877)
!3879 = !DILocation(line: 72, column: 33, scope: !3877)
!3880 = !DILocation(line: 72, column: 26, scope: !3877)
!3881 = !DILocation(line: 72, column: 59, scope: !3877)
!3882 = !DILocation(line: 73, column: 7, scope: !3877)
!3883 = !DILocation(line: 73, column: 10, scope: !3877)
!3884 = !DILocation(line: 72, column: 7, scope: !3859)
!3885 = !DILocation(line: 100, column: 12, scope: !3859)
!3886 = !DILocation(line: 105, column: 7, scope: !3859)
!3887 = !DILocation(line: 74, column: 19, scope: !3877)
!3888 = !DILocation(line: 105, column: 19, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3859, file: !1077, line: 105, column: 7)
!3890 = !DILocation(line: 107, column: 13, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3889, file: !1077, line: 106, column: 5)
!3892 = !DILocation(line: 109, column: 5, scope: !3891)
!3893 = !DILocation(line: 112, column: 1, scope: !3859)
!3894 = distinct !DISubprogram(name: "rpl_fflush", scope: !1120, file: !1120, line: 129, type: !3895, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1119, retainedNodes: !3899)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!14, !3897}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3148, line: 7, baseType: !1126)
!3899 = !{!3900}
!3900 = !DILocalVariable(name: "stream", arg: 1, scope: !3894, file: !1120, line: 129, type: !3897)
!3901 = !DILocation(line: 0, scope: !3894)
!3902 = !DILocation(line: 150, column: 14, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3894, file: !1120, line: 150, column: 7)
!3904 = !DILocation(line: 150, column: 22, scope: !3903)
!3905 = !DILocation(line: 150, column: 27, scope: !3903)
!3906 = !DILocation(line: 150, column: 7, scope: !3894)
!3907 = !DILocation(line: 151, column: 12, scope: !3903)
!3908 = !DILocation(line: 151, column: 5, scope: !3903)
!3909 = !DILocalVariable(name: "fp", arg: 1, scope: !3910, file: !1120, line: 41, type: !3897)
!3910 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1120, file: !1120, line: 41, type: !3911, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1119, retainedNodes: !3913)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{null, !3897}
!3913 = !{!3909}
!3914 = !DILocation(line: 0, scope: !3910, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 156, column: 3, scope: !3894)
!3916 = !DILocation(line: 43, column: 11, scope: !3917, inlinedAt: !3915)
!3917 = distinct !DILexicalBlock(scope: !3910, file: !1120, line: 43, column: 7)
!3918 = !DILocation(line: 43, column: 18, scope: !3917, inlinedAt: !3915)
!3919 = !DILocation(line: 43, column: 7, scope: !3910, inlinedAt: !3915)
!3920 = !DILocation(line: 45, column: 5, scope: !3917, inlinedAt: !3915)
!3921 = !DILocation(line: 158, column: 10, scope: !3894)
!3922 = !DILocation(line: 158, column: 3, scope: !3894)
!3923 = !DILocation(line: 235, column: 1, scope: !3894)
!3924 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1161, file: !1161, line: 28, type: !3925, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1160, retainedNodes: !3930)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!14, !3927, !3929, !14}
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3148, line: 7, baseType: !1167)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 63, baseType: !42)
!3930 = !{!3931, !3932, !3933, !3934}
!3931 = !DILocalVariable(name: "fp", arg: 1, scope: !3924, file: !1161, line: 28, type: !3927)
!3932 = !DILocalVariable(name: "offset", arg: 2, scope: !3924, file: !1161, line: 28, type: !3929)
!3933 = !DILocalVariable(name: "whence", arg: 3, scope: !3924, file: !1161, line: 28, type: !14)
!3934 = !DILocalVariable(name: "pos", scope: !3935, file: !1161, line: 117, type: !3929)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !1161, line: 113, column: 5)
!3936 = distinct !DILexicalBlock(scope: !3924, file: !1161, line: 52, column: 7)
!3937 = !DILocation(line: 0, scope: !3924)
!3938 = !DILocation(line: 52, column: 11, scope: !3936)
!3939 = !{!1358, !1239, i64 16}
!3940 = !DILocation(line: 52, column: 31, scope: !3936)
!3941 = !{!1358, !1239, i64 8}
!3942 = !DILocation(line: 52, column: 24, scope: !3936)
!3943 = !DILocation(line: 53, column: 7, scope: !3936)
!3944 = !DILocation(line: 53, column: 14, scope: !3936)
!3945 = !DILocation(line: 53, column: 35, scope: !3936)
!3946 = !{!1358, !1239, i64 32}
!3947 = !DILocation(line: 53, column: 28, scope: !3936)
!3948 = !DILocation(line: 54, column: 7, scope: !3936)
!3949 = !DILocation(line: 54, column: 14, scope: !3936)
!3950 = !{!1358, !1239, i64 72}
!3951 = !DILocation(line: 54, column: 28, scope: !3936)
!3952 = !DILocation(line: 52, column: 7, scope: !3924)
!3953 = !DILocation(line: 117, column: 26, scope: !3935)
!3954 = !DILocation(line: 117, column: 19, scope: !3935)
!3955 = !DILocation(line: 0, scope: !3935)
!3956 = !DILocation(line: 118, column: 15, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3935, file: !1161, line: 118, column: 11)
!3958 = !DILocation(line: 118, column: 11, scope: !3935)
!3959 = !DILocation(line: 129, column: 11, scope: !3935)
!3960 = !DILocation(line: 129, column: 18, scope: !3935)
!3961 = !DILocation(line: 130, column: 11, scope: !3935)
!3962 = !DILocation(line: 130, column: 19, scope: !3935)
!3963 = !{!1358, !1359, i64 144}
!3964 = !DILocation(line: 161, column: 7, scope: !3935)
!3965 = !DILocation(line: 163, column: 10, scope: !3924)
!3966 = !DILocation(line: 163, column: 3, scope: !3924)
!3967 = !DILocation(line: 164, column: 1, scope: !3924)
