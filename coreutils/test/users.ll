; ModuleID = 'coreutils-8.32/src/users.bc'
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
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i32, %struct.anon, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }
%struct.anon = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"Output who is currently logged in according to FILE.\0AIf FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), align 8, !dbg !0
@.str.31 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.34 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.40, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.41, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !99
@.str.2.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !167
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16, !dbg !209
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !328
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !330
@.str.11.62 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.63 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.65 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.66 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.67 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.68 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !337
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !344
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !332
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !346
@.str.75 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.78 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.79 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.80 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.81 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.82 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.83 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.84 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.85 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.86 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.87 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.88 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.89 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.90 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.93 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.94 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.95 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.96 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.97 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.98 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.99 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !352
@.str.1.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1189 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1192, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %0, metadata !1191, metadata !DIExpression()), !dbg !1213
  %3 = icmp eq i32 %0, 0, !dbg !1214
  br i1 %3, label %9, label %4, !dbg !1215

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1216, !tbaa !1218
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #14, !dbg !1216
  %7 = load i8*, i8** @program_name, align 8, !dbg !1216, !tbaa !1218
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #14, !dbg !1216
  br label %57, !dbg !1216

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #14, !dbg !1222
  %11 = load i8*, i8** @program_name, align 8, !dbg !1222, !tbaa !1218
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #14, !dbg !1222
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i32 5) #14, !dbg !1223
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #14, !dbg !1223
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #14, !dbg !1224
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1224, !tbaa !1218
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16), !dbg !1224
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #14, !dbg !1225
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1225, !tbaa !1218
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19), !dbg !1225
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !1196, metadata !DIExpression()) #14, !dbg !1226
  %21 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1227
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %21) #14, !dbg !1227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %21, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #14, !dbg !1209
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), metadata !1197, metadata !DIExpression()) #14, !dbg !1226
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1198, metadata !DIExpression()) #14, !dbg !1226
  %22 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1228
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !1198, metadata !DIExpression()) #14, !dbg !1226
  br label %23, !dbg !1229

23:                                               ; preds = %28, %9
  %24 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %25 = phi %struct.infomap* [ %29, %28 ], [ %22, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !1198, metadata !DIExpression()) #14, !dbg !1226
  %26 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %24) #23, !dbg !1230
  %27 = icmp eq i32 %26, 0, !dbg !1230
  br i1 %27, label %33, label %28, !dbg !1229

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %25, i64 1, !dbg !1231
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1198, metadata !DIExpression()) #14, !dbg !1226
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 0, i32 0, !dbg !1232
  %31 = load i8*, i8** %30, align 8, !dbg !1232, !tbaa !1233
  %32 = icmp eq i8* %31, null, !dbg !1235
  br i1 %32, label %33, label %23, !dbg !1236, !llvm.loop !1237

33:                                               ; preds = %28, %23
  %34 = phi %struct.infomap* [ %29, %28 ], [ %25, %23 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !1198, metadata !DIExpression()) #14, !dbg !1226
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !1198, metadata !DIExpression()) #14, !dbg !1226
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 1, !dbg !1238
  %36 = load i8*, i8** %35, align 8, !dbg !1238, !tbaa !1240
  %37 = icmp eq i8* %36, null, !dbg !1241
  %38 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %36, !dbg !1242
  call void @llvm.dbg.value(metadata i8* %38, metadata !1197, metadata !DIExpression()) #14, !dbg !1226
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #14, !dbg !1243
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #14, !dbg !1243
  %41 = tail call i8* @setlocale(i32 5, i8* null) #14, !dbg !1244
  call void @llvm.dbg.value(metadata i8* %41, metadata !1205, metadata !DIExpression()) #14, !dbg !1226
  %42 = icmp eq i8* %41, null, !dbg !1245
  br i1 %42, label %50, label %43, !dbg !1247

43:                                               ; preds = %33
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #23, !dbg !1248
  %45 = icmp eq i32 %44, 0, !dbg !1248
  br i1 %45, label %50, label %46, !dbg !1249

46:                                               ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #14, !dbg !1250
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1250, !tbaa !1218
  %49 = tail call i32 @fputs_unlocked(i8* %47, %struct._IO_FILE* %48) #14, !dbg !1250
  br label %50, !dbg !1252

50:                                               ; preds = %33, %43, %46
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #14, !dbg !1253
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #14, !dbg !1253
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #14, !dbg !1254
  %54 = icmp eq i8* %38, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), !dbg !1254
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !1254
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %38, i8* %55) #14, !dbg !1254
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #14, !dbg !1255
  br label %57

57:                                               ; preds = %50, %4
  tail call void @exit(i32 %0) #24, !dbg !1256
  unreachable, !dbg !1256
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !77 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !369 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !408 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1261, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i8** %1, metadata !1262, metadata !DIExpression()), !dbg !1263
  %3 = load i8*, i8** %1, align 8, !dbg !1264, !tbaa !1218
  tail call void @set_program_name(i8* %3) #14, !dbg !1265
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #14, !dbg !1266
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !1267
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #14, !dbg !1268
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #14, !dbg !1269
  %8 = load i8*, i8** @Version, align 8, !dbg !1270, !tbaa !1218
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #14, !dbg !1271
  %9 = load i32, i32* @optind, align 4, !dbg !1272, !tbaa !1273
  %10 = sub nsw i32 %0, %9, !dbg !1275
  switch i32 %10, label %16 [
    i32 0, label %11
    i32 1, label %12
  ], !dbg !1276

11:                                               ; preds = %2
  tail call fastcc void @users(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 1), !dbg !1277
  br label %24, !dbg !1279

12:                                               ; preds = %2
  %13 = sext i32 %9 to i64, !dbg !1280
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !1280
  %15 = load i8*, i8** %14, align 8, !dbg !1280, !tbaa !1218
  tail call fastcc void @users(i8* %15, i32 0), !dbg !1281
  br label %24, !dbg !1282

16:                                               ; preds = %2
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #14, !dbg !1283
  %18 = load i32, i32* @optind, align 4, !dbg !1284, !tbaa !1273
  %19 = add nsw i32 %18, 1, !dbg !1285
  %20 = sext i32 %19 to i64, !dbg !1286
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20, !dbg !1286
  %22 = load i8*, i8** %21, align 8, !dbg !1286, !tbaa !1218
  %23 = tail call i8* @quote(i8* %22) #14, !dbg !1287
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %23) #14, !dbg !1288
  tail call void @usage(i32 1) #25, !dbg !1289
  unreachable, !dbg !1289

24:                                               ; preds = %12, %11
  ret i32 0, !dbg !1290
}

; Function Attrs: nounwind
declare !dbg !412 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !415 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !416 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @users(i8* %0, i32 %1) unnamed_addr #8 !dbg !1291 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.utmpx*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1295, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i32 %1, metadata !1296, metadata !DIExpression()), !dbg !1301
  %5 = bitcast i64* %3 to i8*, !dbg !1302
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #14, !dbg !1302
  %6 = bitcast %struct.utmpx** %4 to i8*, !dbg !1303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #14, !dbg !1303
  call void @llvm.dbg.value(metadata i64* %3, metadata !1297, metadata !DIExpression(DW_OP_deref)), !dbg !1301
  call void @llvm.dbg.value(metadata %struct.utmpx** %4, metadata !1298, metadata !DIExpression(DW_OP_deref)), !dbg !1301
  %7 = call i32 @read_utmp(i8* %0, i64* nonnull %3, %struct.utmpx** nonnull %4, i32 %1) #14, !dbg !1304
  %8 = icmp eq i32 %7, 0, !dbg !1306
  br i1 %8, label %13, label %9, !dbg !1307

9:                                                ; preds = %2
  %10 = tail call i32* @__errno_location() #26, !dbg !1308
  %11 = load i32, i32* %10, align 4, !dbg !1308, !tbaa !1273
  %12 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #14, !dbg !1308
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %12) #14, !dbg !1308
  unreachable, !dbg !1308

13:                                               ; preds = %2
  %14 = load i64, i64* %3, align 8, !dbg !1309, !tbaa !1310
  call void @llvm.dbg.value(metadata i64 %14, metadata !1297, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !1298, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %14, metadata !1312, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !1319, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %14, metadata !1333, metadata !DIExpression()) #14, !dbg !1339
  call void @llvm.dbg.value(metadata i64 8, metadata !1338, metadata !DIExpression()) #14, !dbg !1339
  %15 = icmp ugt i64 %14, 1152921504606846975, !dbg !1341
  br i1 %15, label %16, label %17, !dbg !1343

16:                                               ; preds = %13
  call void @xalloc_die() #24, !dbg !1344
  unreachable, !dbg !1344

17:                                               ; preds = %13
  %18 = load %struct.utmpx*, %struct.utmpx** %4, align 8, !dbg !1345, !tbaa !1218
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, metadata !1298, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, metadata !1319, metadata !DIExpression()) #14, !dbg !1331
  %19 = shl nuw nsw i64 %14, 3, !dbg !1346
  %20 = call noalias i8* @xmalloc(i64 %19) #14, !dbg !1347
  %21 = bitcast i8* %20 to i8**, !dbg !1348
  call void @llvm.dbg.value(metadata i8** %21, metadata !1320, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 0, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %14, metadata !1312, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.utmpx* %18, metadata !1319, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %14, metadata !1312, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #14, !dbg !1331
  %22 = icmp eq i64 %14, 0, !dbg !1349
  br i1 %22, label %23, label %24, !dbg !1349

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @qsort(i8* %20, i64 0, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #14, !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()) #14, !dbg !1331
  br label %76, !dbg !1351

24:                                               ; preds = %17, %40
  %25 = phi i64 [ %28, %40 ], [ %14, %17 ]
  %26 = phi %struct.utmpx* [ %42, %40 ], [ %18, %17 ]
  %27 = phi i64 [ %41, %40 ], [ 0, %17 ]
  %28 = add i64 %25, -1, !dbg !1352
  call void @llvm.dbg.value(metadata %struct.utmpx* %26, metadata !1319, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %27, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  %29 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 0, i32 4, i64 0, !dbg !1353
  %30 = load i8, i8* %29, align 4, !dbg !1353, !tbaa !1354
  %31 = icmp eq i8 %30, 0, !dbg !1353
  br i1 %31, label %40, label %32, !dbg !1353

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 0, i32 0, !dbg !1353
  %34 = load i16, i16* %33, align 4, !dbg !1353, !tbaa !1355
  %35 = icmp eq i16 %34, 7, !dbg !1353
  br i1 %35, label %36, label %40, !dbg !1360

36:                                               ; preds = %32
  %37 = call i8* @extract_trimmed_name(%struct.utmpx* nonnull %26) #14, !dbg !1361
  call void @llvm.dbg.value(metadata i8* %37, metadata !1323, metadata !DIExpression()) #14, !dbg !1362
  %38 = getelementptr inbounds i8*, i8** %21, i64 %27, !dbg !1363
  store i8* %37, i8** %38, align 8, !dbg !1364, !tbaa !1218
  %39 = add i64 %27, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %39, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  br label %40, !dbg !1366

40:                                               ; preds = %36, %32, %24
  %41 = phi i64 [ %39, %36 ], [ %27, %32 ], [ %27, %24 ], !dbg !1331
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  %42 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %26, i64 1, !dbg !1367
  call void @llvm.dbg.value(metadata i64 %28, metadata !1312, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.utmpx* %42, metadata !1319, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %28, metadata !1312, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #14, !dbg !1331
  %43 = icmp eq i64 %28, 0, !dbg !1349
  br i1 %43, label %44, label %24, !dbg !1349, !llvm.loop !1368

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()) #14, !dbg !1331
  call void @qsort(i8* %20, i64 %41, i64 8, i32 (i8*, i8*)* nonnull @userid_compare) #14, !dbg !1350
  call void @llvm.dbg.value(metadata i64 0, metadata !1321, metadata !DIExpression()) #14, !dbg !1331
  %45 = icmp eq i64 %41, 0, !dbg !1370
  br i1 %45, label %76, label %46, !dbg !1351

46:                                               ; preds = %44
  %47 = add i64 %41, -1, !dbg !1371
  br label %48, !dbg !1351

48:                                               ; preds = %67, %46
  %49 = phi i64 [ 0, %46 ], [ %68, %67 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !1321, metadata !DIExpression()) #14, !dbg !1331
  %50 = icmp ult i64 %49, %47, !dbg !1372
  call void @llvm.dbg.value(metadata i8 undef, metadata !1327, metadata !DIExpression()) #14, !dbg !1371
  %51 = getelementptr inbounds i8*, i8** %21, i64 %49, !dbg !1373
  %52 = load i8*, i8** %51, align 8, !dbg !1373, !tbaa !1218
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1373, !tbaa !1218
  %54 = call i32 @fputs_unlocked(i8* %52, %struct._IO_FILE* %53) #14, !dbg !1373
  %55 = select i1 %50, i32 32, i32 10, !dbg !1374
  call void @llvm.dbg.value(metadata i32 %55, metadata !1375, metadata !DIExpression()) #14, !dbg !1381
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1383, !tbaa !1218
  %57 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 5, !dbg !1383
  %58 = load i8*, i8** %57, align 8, !dbg !1383, !tbaa !1384
  %59 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %56, i64 0, i32 6, !dbg !1383
  %60 = load i8*, i8** %59, align 8, !dbg !1383, !tbaa !1386
  %61 = icmp ult i8* %58, %60, !dbg !1383
  br i1 %61, label %64, label %62, !dbg !1383, !prof !1387, !misexpect !1388

62:                                               ; preds = %48
  %63 = call i32 @__overflow(%struct._IO_FILE* %56, i32 %55) #14, !dbg !1383
  br label %67, !dbg !1383

64:                                               ; preds = %48
  %65 = trunc i32 %55 to i8, !dbg !1383
  %66 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1383
  store i8* %66, i8** %57, align 8, !dbg !1383, !tbaa !1384
  store i8 %65, i8* %58, align 1, !dbg !1383, !tbaa !1354
  br label %67, !dbg !1383

67:                                               ; preds = %64, %62
  %68 = add nuw i64 %49, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %68, metadata !1321, metadata !DIExpression()) #14, !dbg !1331
  %69 = icmp eq i64 %68, %41, !dbg !1370
  br i1 %69, label %70, label %48, !dbg !1351, !llvm.loop !1390

70:                                               ; preds = %67, %70
  %71 = phi i64 [ %74, %70 ], [ 0, %67 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !1321, metadata !DIExpression()) #14, !dbg !1331
  %72 = getelementptr inbounds i8*, i8** %21, i64 %71, !dbg !1392
  %73 = load i8*, i8** %72, align 8, !dbg !1392, !tbaa !1218
  call void @free(i8* %73) #14, !dbg !1395
  %74 = add nuw i64 %71, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %74, metadata !1321, metadata !DIExpression()) #14, !dbg !1331
  %75 = icmp eq i64 %74, %41, !dbg !1397
  br i1 %75, label %76, label %70, !dbg !1398, !llvm.loop !1399

76:                                               ; preds = %70, %23, %44
  call void @free(i8* %20) #14, !dbg !1401
  %77 = bitcast %struct.utmpx** %4 to i8**, !dbg !1402
  %78 = load i8*, i8** %77, align 8, !dbg !1402, !tbaa !1218
  call void @llvm.dbg.value(metadata %struct.utmpx* undef, metadata !1298, metadata !DIExpression()), !dbg !1301
  call void @free(i8* %78) #14, !dbg !1403
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #14, !dbg !1404
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #14, !dbg !1404
  ret void, !dbg !1404
}

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @userid_compare(i8* nocapture readonly %0, i8* nocapture readonly %1) #10 !dbg !1405 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1407, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %1, metadata !1408, metadata !DIExpression()), !dbg !1411
  %3 = bitcast i8* %0 to i8**, !dbg !1412
  call void @llvm.dbg.value(metadata i8** %3, metadata !1409, metadata !DIExpression()), !dbg !1411
  %4 = bitcast i8* %1 to i8**, !dbg !1413
  call void @llvm.dbg.value(metadata i8** %4, metadata !1410, metadata !DIExpression()), !dbg !1411
  %5 = load i8*, i8** %3, align 8, !dbg !1414, !tbaa !1218
  %6 = load i8*, i8** %4, align 8, !dbg !1415, !tbaa !1218
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %5, i8* nonnull dereferenceable(1) %6) #23, !dbg !1416
  ret i32 %7, !dbg !1417
}

; Function Attrs: nofree
declare !dbg !474 void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #11

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1418 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1420, metadata !DIExpression()), !dbg !1421
  store i8* %0, i8** @file_name, align 8, !dbg !1422, !tbaa !1218
  ret void, !dbg !1423
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1424 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1428, metadata !DIExpression()), !dbg !1429
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1430, !tbaa !1431
  ret void, !dbg !1433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1434 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1439, !tbaa !1218
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #14, !dbg !1440
  %3 = icmp eq i32 %2, 0, !dbg !1441
  br i1 %3, label %22, label %4, !dbg !1442

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1443, !tbaa !1431, !range !1444
  %6 = icmp eq i8 %5, 0, !dbg !1443
  br i1 %6, label %11, label %7, !dbg !1445

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !1446
  %9 = load i32, i32* %8, align 4, !dbg !1446, !tbaa !1273
  %10 = icmp eq i32 %9, 32, !dbg !1447
  br i1 %10, label %22, label %11, !dbg !1448

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 5) #14, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %12, metadata !1436, metadata !DIExpression()), !dbg !1450
  %13 = load i8*, i8** @file_name, align 8, !dbg !1451, !tbaa !1218
  %14 = icmp eq i8* %13, null, !dbg !1451
  %15 = tail call i32* @__errno_location() #26, !dbg !1453
  %16 = load i32, i32* %15, align 4, !dbg !1453, !tbaa !1273
  br i1 %14, label %19, label %17, !dbg !1454

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #14, !dbg !1455
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.35, i64 0, i64 0), i8* %18, i8* %12) #14, !dbg !1456
  br label %20, !dbg !1456

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.36, i64 0, i64 0), i8* %12) #14, !dbg !1457
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1458, !tbaa !1273
  tail call void @_exit(i32 %21) #24, !dbg !1459
  unreachable, !dbg !1459

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1460, !tbaa !1218
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #14, !dbg !1462
  %25 = icmp eq i32 %24, 0, !dbg !1463
  br i1 %25, label %28, label %26, !dbg !1464

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1465, !tbaa !1273
  tail call void @_exit(i32 %27) #24, !dbg !1466
  unreachable, !dbg !1466

28:                                               ; preds = %22
  ret void, !dbg !1467
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1468 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1472, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8** %1, metadata !1473, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %2, metadata !1474, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %3, metadata !1475, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8* %4, metadata !1476, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1477, metadata !DIExpression()), !dbg !1490
  %8 = load i32, i32* @opterr, align 4, !dbg !1491, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %8, metadata !1479, metadata !DIExpression()), !dbg !1490
  store i32 0, i32* @opterr, align 4, !dbg !1492, !tbaa !1273
  %9 = icmp eq i32 %0, 2, !dbg !1493
  br i1 %9, label %10, label %17, !dbg !1494

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #14, !dbg !1495
  call void @llvm.dbg.value(metadata i32 %11, metadata !1478, metadata !DIExpression()), !dbg !1490
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1496

12:                                               ; preds = %10
  tail call void %5(i32 0) #14, !dbg !1497
  br label %17, !dbg !1498

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1499
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #14, !dbg !1499
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1480, metadata !DIExpression()), !dbg !1500
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1501
  call void @llvm.va_start(i8* nonnull %14), !dbg !1501
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1502, !tbaa !1218
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #14, !dbg !1503
  call void @exit(i32 0) #24, !dbg !1504
  unreachable, !dbg !1504

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1505, !tbaa !1273
  store i32 0, i32* @optind, align 4, !dbg !1506, !tbaa !1273
  ret void, !dbg !1507
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1508 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1510, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8** %1, metadata !1511, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8* %2, metadata !1512, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8* %3, metadata !1513, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8* %4, metadata !1514, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i1 %5, metadata !1515, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1516, metadata !DIExpression()), !dbg !1525
  %9 = load i32, i32* @opterr, align 4, !dbg !1526, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %9, metadata !1518, metadata !DIExpression()), !dbg !1525
  store i32 1, i32* @opterr, align 4, !dbg !1527, !tbaa !1273
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.44, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), !dbg !1528
  call void @llvm.dbg.value(metadata i8* %10, metadata !1519, metadata !DIExpression()), !dbg !1525
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #14, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %11, metadata !1517, metadata !DIExpression()), !dbg !1525
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1530

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1531
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #14, !dbg !1531
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1520, metadata !DIExpression()), !dbg !1532
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1533
  call void @llvm.va_start(i8* nonnull %13), !dbg !1533
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1534, !tbaa !1218
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #14, !dbg !1535
  call void @exit(i32 0) #24, !dbg !1536
  unreachable, !dbg !1536

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1537, !tbaa !1273
  br label %18, !dbg !1538

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #14, !dbg !1539
  br label %20, !dbg !1540

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1540, !tbaa !1273
  ret void, !dbg !1541
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1542 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1544, metadata !DIExpression()), !dbg !1547
  %2 = icmp eq i8* %0, null, !dbg !1548
  br i1 %2, label %3, label %6, !dbg !1550

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1551, !tbaa !1218
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !1553
  tail call void @abort() #24, !dbg !1554
  unreachable, !dbg !1554

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !1555
  call void @llvm.dbg.value(metadata i8* %7, metadata !1545, metadata !DIExpression()), !dbg !1547
  %8 = icmp eq i8* %7, null, !dbg !1556
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1557
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1557
  call void @llvm.dbg.value(metadata i8* %10, metadata !1546, metadata !DIExpression()), !dbg !1547
  %11 = ptrtoint i8* %10 to i64, !dbg !1558
  %12 = ptrtoint i8* %0 to i64, !dbg !1558
  %13 = sub i64 %11, %12, !dbg !1558
  %14 = icmp sgt i64 %13, 6, !dbg !1560
  br i1 %14, label %15, label %24, !dbg !1561

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1562
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #23, !dbg !1563
  %18 = icmp eq i32 %17, 0, !dbg !1564
  br i1 %18, label %19, label %24, !dbg !1565

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1544, metadata !DIExpression()), !dbg !1547
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #23, !dbg !1566
  %21 = icmp eq i32 %20, 0, !dbg !1569
  br i1 %21, label %22, label %24, !dbg !1570

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1571
  call void @llvm.dbg.value(metadata i8* %23, metadata !1544, metadata !DIExpression()), !dbg !1547
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1573, !tbaa !1218
  br label %24, !dbg !1574

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1544, metadata !DIExpression()), !dbg !1547
  store i8* %25, i8** @program_name, align 8, !dbg !1575, !tbaa !1218
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1576, !tbaa !1218
  ret void, !dbg !1577
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1578 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1583, metadata !DIExpression()), !dbg !1586
  %2 = tail call i32* @__errno_location() #26, !dbg !1587
  %3 = load i32, i32* %2, align 4, !dbg !1587, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %3, metadata !1584, metadata !DIExpression()), !dbg !1586
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1588
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1588
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1588
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #14, !dbg !1589
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1589
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1585, metadata !DIExpression()), !dbg !1586
  store i32 %3, i32* %2, align 4, !dbg !1590, !tbaa !1273
  ret %struct.quoting_options* %8, !dbg !1591
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !1592 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1596, metadata !DIExpression()), !dbg !1597
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1598
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1598
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1599
  %5 = load i32, i32* %4, align 8, !dbg !1599, !tbaa !1600
  ret i32 %5, !dbg !1602
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1603 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %1, metadata !1608, metadata !DIExpression()), !dbg !1609
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1610
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1610
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1611
  store i32 %1, i32* %5, align 8, !dbg !1612, !tbaa !1600
  ret void, !dbg !1613
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1614 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1618, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8 %1, metadata !1619, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i32 %2, metadata !1620, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8 %1, metadata !1621, metadata !DIExpression()), !dbg !1626
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1627
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1627
  %6 = lshr i8 %1, 5, !dbg !1628
  %7 = zext i8 %6 to i64, !dbg !1628
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1629
  call void @llvm.dbg.value(metadata i32* %8, metadata !1622, metadata !DIExpression()), !dbg !1626
  %9 = and i8 %1, 31, !dbg !1630
  %10 = zext i8 %9 to i32, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %10, metadata !1624, metadata !DIExpression()), !dbg !1626
  %11 = load i32, i32* %8, align 4, !dbg !1631, !tbaa !1273
  %12 = lshr i32 %11, %10, !dbg !1632
  %13 = and i32 %12, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %13, metadata !1625, metadata !DIExpression()), !dbg !1626
  %14 = and i32 %2, 1, !dbg !1634
  %15 = xor i32 %13, %14, !dbg !1635
  %16 = shl i32 %15, %10, !dbg !1636
  %17 = xor i32 %16, %11, !dbg !1637
  store i32 %17, i32* %8, align 4, !dbg !1637, !tbaa !1273
  ret i32 %13, !dbg !1638
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1639 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1643, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %1, metadata !1644, metadata !DIExpression()), !dbg !1646
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1647
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1643, metadata !DIExpression()), !dbg !1646
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1650
  %6 = load i32, i32* %5, align 4, !dbg !1650, !tbaa !1651
  call void @llvm.dbg.value(metadata i32 %6, metadata !1645, metadata !DIExpression()), !dbg !1646
  store i32 %1, i32* %5, align 4, !dbg !1652, !tbaa !1651
  ret i32 %6, !dbg !1653
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1654 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1658, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %1, metadata !1659, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8* %2, metadata !1660, metadata !DIExpression()), !dbg !1661
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1662
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()), !dbg !1661
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1665
  store i32 10, i32* %6, align 8, !dbg !1666, !tbaa !1600
  %7 = icmp ne i8* %1, null, !dbg !1667
  %8 = icmp ne i8* %2, null, !dbg !1669
  %9 = and i1 %7, %8, !dbg !1670
  br i1 %9, label %11, label %10, !dbg !1670

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !1671
  unreachable, !dbg !1671

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1672
  store i8* %1, i8** %12, align 8, !dbg !1673, !tbaa !1674
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1675
  store i8* %2, i8** %13, align 8, !dbg !1676, !tbaa !1677
  ret void, !dbg !1678
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1679 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1683, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %1, metadata !1684, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8* %2, metadata !1685, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %3, metadata !1686, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1687, metadata !DIExpression()), !dbg !1691
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1692
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1692
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1688, metadata !DIExpression()), !dbg !1691
  %8 = tail call i32* @__errno_location() #26, !dbg !1693
  %9 = load i32, i32* %8, align 4, !dbg !1693, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %9, metadata !1689, metadata !DIExpression()), !dbg !1691
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1694
  %11 = load i32, i32* %10, align 8, !dbg !1694, !tbaa !1600
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1695
  %13 = load i32, i32* %12, align 4, !dbg !1695, !tbaa !1651
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1696
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1697
  %16 = load i8*, i8** %15, align 8, !dbg !1697, !tbaa !1674
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1698
  %18 = load i8*, i8** %17, align 8, !dbg !1698, !tbaa !1677
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1699
  call void @llvm.dbg.value(metadata i64 %19, metadata !1690, metadata !DIExpression()), !dbg !1691
  store i32 %9, i32* %8, align 4, !dbg !1700, !tbaa !1273
  ret i64 %19, !dbg !1701
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1702 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1708, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %1, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %2, metadata !1710, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %3, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %4, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %5, metadata !1713, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32* %6, metadata !1714, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %7, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %8, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 0, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 0, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* null, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 0, metadata !1721, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1722, metadata !DIExpression()), !dbg !1766
  %13 = tail call i64 @__ctype_get_mb_cur_max() #14, !dbg !1767
  %14 = icmp eq i64 %13, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i1 %14, metadata !1723, metadata !DIExpression()), !dbg !1766
  %15 = lshr i32 %5, 1, !dbg !1769
  %16 = trunc i32 %15 to i8, !dbg !1769
  %17 = and i8 %16, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i8 %17, metadata !1724, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1727, metadata !DIExpression()), !dbg !1766
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1770
  %19 = and i32 %5, 4, !dbg !1772
  %20 = icmp eq i32 %19, 0, !dbg !1772
  %21 = and i32 %5, 1, !dbg !1775
  %22 = icmp eq i32 %21, 0, !dbg !1775
  %23 = bitcast i64* %10 to i8*, !dbg !1778
  %24 = bitcast i32* %12 to i8*, !dbg !1779
  %25 = icmp eq i32* %6, null, !dbg !1780
  br label %26, !dbg !1782

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1783
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1784
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1785
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1786
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1766
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1787
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1788
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1789
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %38, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %37, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %36, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %35, metadata !1724, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %34, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %33, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %32, metadata !1721, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %31, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %30, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 0, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %29, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %28, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %27, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.label(metadata !1760), !dbg !1790
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
  ], !dbg !1791

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %35, metadata !1724, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 5, metadata !1712, metadata !DIExpression()), !dbg !1766
  br label %92, !dbg !1792

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1724, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 5, metadata !1712, metadata !DIExpression()), !dbg !1766
  %42 = and i8 %35, 1, !dbg !1794
  %43 = icmp eq i8 %42, 0, !dbg !1794
  br i1 %43, label %44, label %92, !dbg !1792

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1796
  br i1 %45, label %92, label %46, !dbg !1799

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1796, !tbaa !1354
  br label %92, !dbg !1796

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.62, i64 0, i64 0), i32 %27), !dbg !1800
  call void @llvm.dbg.value(metadata i8* %48, metadata !1715, metadata !DIExpression()), !dbg !1766
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), i32 %27), !dbg !1804
  call void @llvm.dbg.value(metadata i8* %49, metadata !1716, metadata !DIExpression()), !dbg !1766
  br label %50, !dbg !1805

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %51, metadata !1715, metadata !DIExpression()), !dbg !1766
  %53 = and i8 %35, 1, !dbg !1806
  %54 = icmp eq i8 %53, 0, !dbg !1806
  br i1 %54, label %55, label %70, !dbg !1808

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 0, metadata !1718, metadata !DIExpression()), !dbg !1766
  %56 = load i8, i8* %51, align 1, !dbg !1809, !tbaa !1354
  %57 = icmp eq i8 %56, 0, !dbg !1812
  br i1 %57, label %70, label %58, !dbg !1812

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %61, metadata !1718, metadata !DIExpression()), !dbg !1766
  %62 = icmp ult i64 %61, %39, !dbg !1813
  br i1 %62, label %63, label %65, !dbg !1816

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1813
  store i8 %59, i8* %64, align 1, !dbg !1813, !tbaa !1354
  br label %65, !dbg !1813

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %66, metadata !1718, metadata !DIExpression()), !dbg !1766
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1817
  call void @llvm.dbg.value(metadata i8* %67, metadata !1720, metadata !DIExpression()), !dbg !1766
  %68 = load i8, i8* %67, align 1, !dbg !1809, !tbaa !1354
  %69 = icmp eq i8 %68, 0, !dbg !1812
  br i1 %69, label %70, label %58, !dbg !1812, !llvm.loop !1818

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1820
  call void @llvm.dbg.value(metadata i64 %71, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %52, metadata !1720, metadata !DIExpression()), !dbg !1766
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %72, metadata !1721, metadata !DIExpression()), !dbg !1766
  br label %92, !dbg !1822

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1722, metadata !DIExpression()), !dbg !1766
  br label %74, !dbg !1823

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %75, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1724, metadata !DIExpression()), !dbg !1766
  br label %76, !dbg !1824

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1786
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %78, metadata !1724, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %77, metadata !1722, metadata !DIExpression()), !dbg !1766
  %79 = and i8 %78, 1, !dbg !1825
  %80 = icmp eq i8 %79, 0, !dbg !1825
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1827
  br label %82, !dbg !1827

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1766
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1769
  call void @llvm.dbg.value(metadata i8 %84, metadata !1724, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %83, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  %85 = and i8 %84, 1, !dbg !1828
  %86 = icmp eq i8 %85, 0, !dbg !1828
  br i1 %86, label %87, label %92, !dbg !1830

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1831
  br i1 %88, label %92, label %89, !dbg !1834

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1831, !tbaa !1354
  br label %92, !dbg !1831

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1724, metadata !DIExpression()), !dbg !1766
  br label %92, !dbg !1835

91:                                               ; preds = %26
  call void @abort() #24, !dbg !1836
  unreachable, !dbg !1836

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1820
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), %40 ], !dbg !1766
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1766
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1766
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %100, metadata !1724, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %98, metadata !1721, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %96, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 %93, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 0, metadata !1717, metadata !DIExpression()), !dbg !1766
  %101 = and i8 %99, 1, !dbg !1837
  %102 = icmp ne i8 %101, 0, !dbg !1837
  %103 = icmp ne i32 %93, 2, !dbg !1837
  %104 = and i1 %103, %102, !dbg !1837
  %105 = icmp ne i64 %98, 0, !dbg !1837
  %106 = and i1 %105, %104, !dbg !1837
  %107 = icmp ugt i64 %98, 1, !dbg !1837
  %108 = and i8 %100, 1, !dbg !1839
  %109 = icmp eq i8 %108, 0, !dbg !1839
  %110 = icmp eq i32 %93, 2, !dbg !1842
  %111 = or i1 %103, %109, !dbg !1844
  %112 = icmp ne i8 %108, 0, !dbg !1846
  %113 = and i1 %110, %112, !dbg !1846
  %114 = xor i1 %102, true, !dbg !1847
  %115 = xor i1 %104, true, !dbg !1780
  %116 = and i1 %109, %115, !dbg !1780
  %117 = or i1 %25, %116, !dbg !1780
  %118 = and i8 %99, %100, !dbg !1848
  %119 = and i8 %118, 1, !dbg !1848
  %120 = icmp ne i8 %119, 0, !dbg !1848
  %121 = and i1 %120, %105, !dbg !1848
  br label %122, !dbg !1850

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1851
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1820
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1783
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1787
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1788
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1789
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %126, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %123, metadata !1717, metadata !DIExpression()), !dbg !1766
  %131 = icmp eq i64 %126, -1, !dbg !1852
  br i1 %131, label %132, label %136, !dbg !1853

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1854
  %134 = load i8, i8* %133, align 1, !dbg !1854, !tbaa !1354
  %135 = icmp eq i8 %134, 0, !dbg !1855
  br i1 %135, label %581, label %138, !dbg !1856

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1857
  br i1 %137, label %581, label %138, !dbg !1856

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1734, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1858
  br i1 %106, label %139, label %154, !dbg !1859

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1860
  %141 = and i1 %107, %131, !dbg !1861
  br i1 %141, label %142, label %144, !dbg !1861

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %143, metadata !1711, metadata !DIExpression()), !dbg !1766
  br label %144, !dbg !1863

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1711, metadata !DIExpression()), !dbg !1766
  %146 = icmp ugt i64 %140, %145, !dbg !1864
  br i1 %146, label %154, label %147, !dbg !1865

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1866
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1867
  %150 = icmp ne i32 %149, 0, !dbg !1868
  %151 = or i1 %150, %109, !dbg !1869
  %152 = xor i1 %150, true, !dbg !1869
  %153 = zext i1 %152 to i8, !dbg !1869
  br i1 %151, label %154, label %639, !dbg !1869

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1858
  call void @llvm.dbg.value(metadata i8 %156, metadata !1733, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %155, metadata !1711, metadata !DIExpression()), !dbg !1766
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1870
  %158 = load i8, i8* %157, align 1, !dbg !1870, !tbaa !1354
  call void @llvm.dbg.value(metadata i8 %158, metadata !1728, metadata !DIExpression()), !dbg !1858
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
  ], !dbg !1871

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1872

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1873

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1858
  %162 = and i8 %127, 1, !dbg !1876
  %163 = icmp eq i8 %162, 0, !dbg !1876
  %164 = and i1 %110, %163, !dbg !1876
  br i1 %164, label %165, label %181, !dbg !1876

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1878
  br i1 %166, label %167, label %169, !dbg !1882

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1878
  store i8 39, i8* %168, align 1, !dbg !1878, !tbaa !1354
  br label %169, !dbg !1878

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %170, metadata !1718, metadata !DIExpression()), !dbg !1766
  %171 = icmp ult i64 %170, %130, !dbg !1883
  br i1 %171, label %172, label %174, !dbg !1886

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1883
  store i8 36, i8* %173, align 1, !dbg !1883, !tbaa !1354
  br label %174, !dbg !1883

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %175, metadata !1718, metadata !DIExpression()), !dbg !1766
  %176 = icmp ult i64 %175, %130, !dbg !1887
  br i1 %176, label %177, label %179, !dbg !1890

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1887
  store i8 39, i8* %178, align 1, !dbg !1887, !tbaa !1354
  br label %179, !dbg !1887

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %180, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1725, metadata !DIExpression()), !dbg !1766
  br label %181, !dbg !1891

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1766
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %183, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %182, metadata !1718, metadata !DIExpression()), !dbg !1766
  %184 = icmp ult i64 %182, %130, !dbg !1892
  br i1 %184, label %185, label %187, !dbg !1895

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1892
  store i8 92, i8* %186, align 1, !dbg !1892, !tbaa !1354
  br label %187, !dbg !1892

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %188, metadata !1718, metadata !DIExpression()), !dbg !1766
  br i1 %103, label %189, label %463, !dbg !1896

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1898
  %191 = icmp ult i64 %190, %155, !dbg !1899
  br i1 %191, label %192, label %463, !dbg !1900

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1901
  %194 = load i8, i8* %193, align 1, !dbg !1901, !tbaa !1354
  %195 = add i8 %194, -48, !dbg !1902
  %196 = icmp ult i8 %195, 10, !dbg !1902
  br i1 %196, label %197, label %463, !dbg !1902

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1903
  br i1 %198, label %199, label %201, !dbg !1907

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1903
  store i8 48, i8* %200, align 1, !dbg !1903, !tbaa !1354
  br label %201, !dbg !1903

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %202, metadata !1718, metadata !DIExpression()), !dbg !1766
  %203 = icmp ult i64 %202, %130, !dbg !1908
  br i1 %203, label %204, label %206, !dbg !1911

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1908
  store i8 48, i8* %205, align 1, !dbg !1908, !tbaa !1354
  br label %206, !dbg !1908

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %207, metadata !1718, metadata !DIExpression()), !dbg !1766
  br label %463, !dbg !1912

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1913

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1914

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1915

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1916

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1917
  %214 = icmp ult i64 %213, %155, !dbg !1918
  br i1 %214, label %215, label %463, !dbg !1919

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1920
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1921
  %218 = load i8, i8* %217, align 1, !dbg !1921, !tbaa !1354
  %219 = icmp eq i8 %218, 63, !dbg !1922
  br i1 %219, label %220, label %463, !dbg !1923

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1924
  %222 = load i8, i8* %221, align 1, !dbg !1924, !tbaa !1354
  %223 = sext i8 %222 to i32, !dbg !1924
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
  ], !dbg !1925

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1926

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1728, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %213, metadata !1717, metadata !DIExpression()), !dbg !1766
  %226 = icmp ult i64 %124, %130, !dbg !1928
  br i1 %226, label %227, label %229, !dbg !1931

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1928
  store i8 63, i8* %228, align 1, !dbg !1928, !tbaa !1354
  br label %229, !dbg !1928

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %230, metadata !1718, metadata !DIExpression()), !dbg !1766
  %231 = icmp ult i64 %230, %130, !dbg !1932
  br i1 %231, label %232, label %234, !dbg !1935

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1932
  store i8 34, i8* %233, align 1, !dbg !1932, !tbaa !1354
  br label %234, !dbg !1932

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %235, metadata !1718, metadata !DIExpression()), !dbg !1766
  %236 = icmp ult i64 %235, %130, !dbg !1936
  br i1 %236, label %237, label %239, !dbg !1939

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1936
  store i8 34, i8* %238, align 1, !dbg !1936, !tbaa !1354
  br label %239, !dbg !1936

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %240, metadata !1718, metadata !DIExpression()), !dbg !1766
  %241 = icmp ult i64 %240, %130, !dbg !1940
  br i1 %241, label %242, label %244, !dbg !1943

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1940
  store i8 63, i8* %243, align 1, !dbg !1940, !tbaa !1354
  br label %244, !dbg !1940

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %245, metadata !1718, metadata !DIExpression()), !dbg !1766
  br label %463, !dbg !1944

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1732, metadata !DIExpression()), !dbg !1858
  br label %256, !dbg !1945

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1732, metadata !DIExpression()), !dbg !1858
  br label %256, !dbg !1946

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1732, metadata !DIExpression()), !dbg !1858
  br label %254, !dbg !1947

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1732, metadata !DIExpression()), !dbg !1858
  br label %254, !dbg !1948

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1732, metadata !DIExpression()), !dbg !1858
  br label %256, !dbg !1949

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1732, metadata !DIExpression()), !dbg !1858
  br i1 %110, label %252, label %253, !dbg !1950

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1951

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1954

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8 %255, metadata !1732, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.label(metadata !1761), !dbg !1956
  br i1 %111, label %256, label %625, !dbg !1957

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1955
  call void @llvm.dbg.value(metadata i8 %257, metadata !1732, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.label(metadata !1762), !dbg !1959
  br i1 %102, label %488, label %463, !dbg !1960

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1961

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1962, !tbaa !1354
  %261 = icmp eq i8 %260, 0, !dbg !1963
  br i1 %261, label %262, label %463, !dbg !1964

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1965
  br i1 %263, label %264, label %463, !dbg !1967

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1858
  br label %265, !dbg !1968

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1858
  call void @llvm.dbg.value(metadata i8 %266, metadata !1735, metadata !DIExpression()), !dbg !1858
  br i1 %111, label %463, label %625, !dbg !1969

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1735, metadata !DIExpression()), !dbg !1858
  br i1 %110, label %268, label %463, !dbg !1970

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1971

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1973
  %271 = icmp ne i64 %125, 0, !dbg !1975
  %272 = or i1 %271, %270, !dbg !1976
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1976
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %274, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %273, metadata !1719, metadata !DIExpression()), !dbg !1766
  %275 = icmp ult i64 %124, %274, !dbg !1977
  br i1 %275, label %276, label %278, !dbg !1980

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1977
  store i8 39, i8* %277, align 1, !dbg !1977, !tbaa !1354
  br label %278, !dbg !1977

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %279, metadata !1718, metadata !DIExpression()), !dbg !1766
  %280 = icmp ult i64 %279, %274, !dbg !1981
  br i1 %280, label %281, label %283, !dbg !1984

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1981
  store i8 92, i8* %282, align 1, !dbg !1981, !tbaa !1354
  br label %283, !dbg !1981

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %284, metadata !1718, metadata !DIExpression()), !dbg !1766
  %285 = icmp ult i64 %284, %274, !dbg !1985
  br i1 %285, label %286, label %288, !dbg !1988

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1985
  store i8 39, i8* %287, align 1, !dbg !1985, !tbaa !1354
  br label %288, !dbg !1985

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %289, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1766
  br label %463, !dbg !1989

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1990

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1736, metadata !DIExpression()), !dbg !1991
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !1992
  %293 = load i16*, i16** %292, align 8, !dbg !1992, !tbaa !1218
  %294 = zext i8 %158 to i64, !dbg !1992
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1992
  %296 = load i16, i16* %295, align 2, !dbg !1992, !tbaa !1994
  %297 = lshr i16 %296, 14, !dbg !1995
  %298 = trunc i16 %297 to i8, !dbg !1995
  %299 = and i8 %298, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i8 %299, metadata !1739, metadata !DIExpression()), !dbg !1991
  br label %355, !dbg !1996

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #14, !dbg !1997
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1740, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i8* %23, metadata !1999, metadata !DIExpression()) #14, !dbg !2007
  call void @llvm.dbg.value(metadata i32 0, metadata !2005, metadata !DIExpression()) #14, !dbg !2007
  call void @llvm.dbg.value(metadata i64 8, metadata !2006, metadata !DIExpression()) #14, !dbg !2007
  store i64 0, i64* %10, align 8, !dbg !2009
  call void @llvm.dbg.value(metadata i64 0, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8 1, metadata !1739, metadata !DIExpression()), !dbg !1991
  %301 = icmp eq i64 %155, -1, !dbg !2010
  br i1 %301, label %302, label %304, !dbg !2012

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %303, metadata !1711, metadata !DIExpression()), !dbg !1766
  br label %304, !dbg !2014

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1858
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  br label %306, !dbg !2015

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2016
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2017
  call void @llvm.dbg.value(metadata i8 %308, metadata !1739, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2018
  %309 = add i64 %307, %123, !dbg !2019
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2020
  %311 = sub i64 %305, %309, !dbg !2021
  call void @llvm.dbg.value(metadata i32* %12, metadata !1746, metadata !DIExpression(DW_OP_deref)), !dbg !1779
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #14, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %312, metadata !1749, metadata !DIExpression()), !dbg !1779
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2023

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  %314 = icmp ugt i64 %305, %309, !dbg !2024
  br i1 %314, label %315, label %340, !dbg !2026

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2027
  br label %317, !dbg !2027

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1736, metadata !DIExpression()), !dbg !1991
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2028
  %321 = load i8, i8* %320, align 1, !dbg !2028, !tbaa !1354
  %322 = icmp eq i8 %321, 0, !dbg !2026
  br i1 %322, label %340, label %323, !dbg !2027

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %324, metadata !1736, metadata !DIExpression()), !dbg !1991
  %325 = add i64 %324, %123, !dbg !2030
  %326 = icmp ult i64 %325, %305, !dbg !2024
  br i1 %326, label %317, label %340, !dbg !2026, !llvm.loop !2031

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2032
  %329 = and i1 %113, %328, !dbg !2035
  call void @llvm.dbg.value(metadata i64 1, metadata !1750, metadata !DIExpression()), !dbg !2036
  br i1 %329, label %330, label %343, !dbg !2035

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1750, metadata !DIExpression()), !dbg !2036
  %332 = add i64 %331, %309, !dbg !2037
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2038
  %334 = load i8, i8* %333, align 1, !dbg !2038, !tbaa !1354
  %335 = sext i8 %334 to i32, !dbg !2038
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2039

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %337, metadata !1750, metadata !DIExpression()), !dbg !2036
  %338 = icmp eq i64 %337, %312, !dbg !2032
  br i1 %338, label %343, label %330, !dbg !2041, !llvm.loop !2042

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8 %308, metadata !1739, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %307, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8 %308, metadata !1739, metadata !DIExpression()), !dbg !1991
  br label %340, !dbg !2044

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2044
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2045, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %344, metadata !1746, metadata !DIExpression()), !dbg !1779
  %345 = call i32 @iswprint(i32 %344) #14, !dbg !2047
  %346 = icmp eq i32 %345, 0, !dbg !2047
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2048
  call void @llvm.dbg.value(metadata i8 %347, metadata !1739, metadata !DIExpression()), !dbg !1991
  %348 = add i64 %312, %307, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %348, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i8 %347, metadata !1739, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %348, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2044
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !2050
  %350 = icmp eq i32 %349, 0, !dbg !2051
  br i1 %350, label %306, label %351, !dbg !2052, !llvm.loop !2053

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2055
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i32 2, metadata !1712, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %99, metadata !1722, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %305, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #14, !dbg !2044
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #14, !dbg !2055
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1858
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2056
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2056
  call void @llvm.dbg.value(metadata i8 %358, metadata !1739, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %357, metadata !1736, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata i64 %356, metadata !1711, metadata !DIExpression()), !dbg !1766
  %359 = and i8 %358, 1, !dbg !2057
  %360 = icmp ne i8 %359, 0, !dbg !2057
  call void @llvm.dbg.value(metadata i8 %359, metadata !1735, metadata !DIExpression()), !dbg !1858
  %361 = icmp ult i64 %357, 2, !dbg !2058
  %362 = or i1 %360, %114, !dbg !2059
  %363 = and i1 %361, %362, !dbg !2060
  br i1 %363, label %463, label %364, !dbg !2060

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2061
  call void @llvm.dbg.value(metadata i64 %365, metadata !1757, metadata !DIExpression()), !dbg !2062
  br label %366, !dbg !2063

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1851
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1766
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1787
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1858
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1858
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2064
  call void @llvm.dbg.value(metadata i8 %372, metadata !1734, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %371, metadata !1733, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %370, metadata !1728, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %369, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %368, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %367, metadata !1717, metadata !DIExpression()), !dbg !1766
  br i1 %362, label %419, label %373, !dbg !2065

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2070

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1858
  %375 = and i8 %369, 1, !dbg !2073
  %376 = icmp eq i8 %375, 0, !dbg !2073
  %377 = and i1 %110, %376, !dbg !2073
  br i1 %377, label %378, label %394, !dbg !2073

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2075
  br i1 %379, label %380, label %382, !dbg !2079

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2075
  store i8 39, i8* %381, align 1, !dbg !2075, !tbaa !1354
  br label %382, !dbg !2075

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %383, metadata !1718, metadata !DIExpression()), !dbg !1766
  %384 = icmp ult i64 %383, %130, !dbg !2080
  br i1 %384, label %385, label %387, !dbg !2083

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2080
  store i8 36, i8* %386, align 1, !dbg !2080, !tbaa !1354
  br label %387, !dbg !2080

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %388, metadata !1718, metadata !DIExpression()), !dbg !1766
  %389 = icmp ult i64 %388, %130, !dbg !2084
  br i1 %389, label %390, label %392, !dbg !2087

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2084
  store i8 39, i8* %391, align 1, !dbg !2084, !tbaa !1354
  br label %392, !dbg !2084

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %393, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1725, metadata !DIExpression()), !dbg !1766
  br label %394, !dbg !2088

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1766
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %396, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %395, metadata !1718, metadata !DIExpression()), !dbg !1766
  %397 = icmp ult i64 %395, %130, !dbg !2089
  br i1 %397, label %398, label %400, !dbg !2092

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2089
  store i8 92, i8* %399, align 1, !dbg !2089, !tbaa !1354
  br label %400, !dbg !2089

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %401, metadata !1718, metadata !DIExpression()), !dbg !1766
  %402 = icmp ult i64 %401, %130, !dbg !2093
  br i1 %402, label %403, label %407, !dbg !2096

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2093
  %405 = or i8 %404, 48, !dbg !2093
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2093
  store i8 %405, i8* %406, align 1, !dbg !2093, !tbaa !1354
  br label %407, !dbg !2093

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %408, metadata !1718, metadata !DIExpression()), !dbg !1766
  %409 = icmp ult i64 %408, %130, !dbg !2097
  br i1 %409, label %410, label %415, !dbg !2100

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2097
  %412 = and i8 %411, 7, !dbg !2097
  %413 = or i8 %412, 48, !dbg !2097
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2097
  store i8 %413, i8* %414, align 1, !dbg !2097, !tbaa !1354
  br label %415, !dbg !2097

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %416, metadata !1718, metadata !DIExpression()), !dbg !1766
  %417 = and i8 %370, 7, !dbg !2101
  %418 = or i8 %417, 48, !dbg !2102
  call void @llvm.dbg.value(metadata i8 %418, metadata !1728, metadata !DIExpression()), !dbg !1858
  br label %428, !dbg !2103

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2104
  %421 = icmp eq i8 %420, 0, !dbg !2104
  br i1 %421, label %428, label %422, !dbg !2106

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2107
  br i1 %423, label %424, label %426, !dbg !2111

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2107
  store i8 92, i8* %425, align 1, !dbg !2107, !tbaa !1354
  br label %426, !dbg !2107

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i64 %427, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1858
  br label %428, !dbg !2112

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1766
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1787
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1858
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1858
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1858
  call void @llvm.dbg.value(metadata i8 %433, metadata !1734, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %432, metadata !1733, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %431, metadata !1728, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %430, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %429, metadata !1718, metadata !DIExpression()), !dbg !1766
  %434 = add i64 %367, 1, !dbg !2113
  %435 = icmp ugt i64 %365, %434, !dbg !2115
  br i1 %435, label %436, label %526, !dbg !2116

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2117
  %438 = icmp ne i8 %437, 0, !dbg !2117
  %439 = and i8 %433, 1, !dbg !2117
  %440 = icmp eq i8 %439, 0, !dbg !2117
  %441 = and i1 %438, %440, !dbg !2117
  br i1 %441, label %442, label %453, !dbg !2117

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2120
  br i1 %443, label %444, label %446, !dbg !2124

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2120
  store i8 39, i8* %445, align 1, !dbg !2120, !tbaa !1354
  br label %446, !dbg !2120

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %447, metadata !1718, metadata !DIExpression()), !dbg !1766
  %448 = icmp ult i64 %447, %130, !dbg !2125
  br i1 %448, label %449, label %451, !dbg !2128

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2125
  store i8 39, i8* %450, align 1, !dbg !2125, !tbaa !1354
  br label %451, !dbg !2125

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %452, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1766
  br label %453, !dbg !2129

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2130
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %455, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %454, metadata !1718, metadata !DIExpression()), !dbg !1766
  %456 = icmp ult i64 %454, %130, !dbg !2131
  br i1 %456, label %457, label %459, !dbg !2134

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2131
  store i8 %431, i8* %458, align 1, !dbg !2131, !tbaa !1354
  br label %459, !dbg !2131

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %460, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %434, metadata !1717, metadata !DIExpression()), !dbg !1766
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2135
  %462 = load i8, i8* %461, align 1, !dbg !2135, !tbaa !1354
  call void @llvm.dbg.value(metadata i8 %462, metadata !1728, metadata !DIExpression()), !dbg !1858
  br label %366, !dbg !2136, !llvm.loop !2137

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1851
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1766
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1783
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2140
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1766
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1766
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1858
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1858
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1858
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %472, metadata !1735, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %471, metadata !1734, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %156, metadata !1733, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %470, metadata !1728, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %469, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %468, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %467, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %466, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %465, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %464, metadata !1717, metadata !DIExpression()), !dbg !1766
  br i1 %117, label %486, label %474, !dbg !2141

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2142
  %476 = zext i8 %475 to i64, !dbg !2142
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2143
  %478 = load i32, i32* %477, align 4, !dbg !2143, !tbaa !1273
  %479 = and i8 %470, 31, !dbg !2144
  %480 = zext i8 %479 to i32, !dbg !2144
  %481 = shl nuw i32 1, %480, !dbg !2145
  %482 = and i32 %478, %481, !dbg !2145
  %483 = icmp eq i32 %482, 0, !dbg !2145
  %484 = icmp eq i8 %156, 0, !dbg !2146
  %485 = and i1 %484, %483, !dbg !2147
  br i1 %485, label %526, label %488, !dbg !2147

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2146
  br i1 %487, label %526, label %488, !dbg !2148

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2149
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1766
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1783
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2140
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1787
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1788
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1858
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1858
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %496, metadata !1735, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %495, metadata !1728, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %494, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %493, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %492, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %491, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %490, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %489, metadata !1717, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.label(metadata !1763), !dbg !2150
  br i1 %109, label %498, label %629, !dbg !2151

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1734, metadata !DIExpression()), !dbg !1858
  %499 = and i8 %493, 1, !dbg !2153
  %500 = icmp eq i8 %499, 0, !dbg !2153
  %501 = and i1 %110, %500, !dbg !2153
  br i1 %501, label %502, label %518, !dbg !2153

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2155
  br i1 %503, label %504, label %506, !dbg !2159

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2155
  store i8 39, i8* %505, align 1, !dbg !2155, !tbaa !1354
  br label %506, !dbg !2155

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %507, metadata !1718, metadata !DIExpression()), !dbg !1766
  %508 = icmp ult i64 %507, %497, !dbg !2160
  br i1 %508, label %509, label %511, !dbg !2163

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2160
  store i8 36, i8* %510, align 1, !dbg !2160, !tbaa !1354
  br label %511, !dbg !2160

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %512, metadata !1718, metadata !DIExpression()), !dbg !1766
  %513 = icmp ult i64 %512, %497, !dbg !2164
  br i1 %513, label %514, label %516, !dbg !2167

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2164
  store i8 39, i8* %515, align 1, !dbg !2164, !tbaa !1354
  br label %516, !dbg !2164

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %517, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 1, metadata !1725, metadata !DIExpression()), !dbg !1766
  br label %518, !dbg !2168

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1858
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %520, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %519, metadata !1718, metadata !DIExpression()), !dbg !1766
  %521 = icmp ult i64 %519, %497, !dbg !2169
  br i1 %521, label %522, label %524, !dbg !2172

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2169
  store i8 92, i8* %523, align 1, !dbg !2169, !tbaa !1354
  br label %524, !dbg !2169

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %525, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %536, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %535, metadata !1735, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %534, metadata !1734, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %533, metadata !1728, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %532, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %531, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %530, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %529, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %528, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %527, metadata !1717, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.label(metadata !1764), !dbg !2173
  br label %553, !dbg !2174

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2149
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1766
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1783
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2140
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1787
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1788
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2177
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1858
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1858
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %535, metadata !1735, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %534, metadata !1734, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %533, metadata !1728, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 %532, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %531, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %530, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %529, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %528, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %527, metadata !1717, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.label(metadata !1764), !dbg !2173
  %537 = and i8 %531, 1, !dbg !2174
  %538 = icmp ne i8 %537, 0, !dbg !2174
  %539 = and i8 %534, 1, !dbg !2174
  %540 = icmp eq i8 %539, 0, !dbg !2174
  %541 = and i1 %538, %540, !dbg !2174
  br i1 %541, label %542, label %553, !dbg !2174

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2178
  br i1 %543, label %544, label %546, !dbg !2182

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2178
  store i8 39, i8* %545, align 1, !dbg !2178, !tbaa !1354
  br label %546, !dbg !2178

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %547, metadata !1718, metadata !DIExpression()), !dbg !1766
  %548 = icmp ult i64 %547, %536, !dbg !2183
  br i1 %548, label %549, label %551, !dbg !2186

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2183
  store i8 39, i8* %550, align 1, !dbg !2183, !tbaa !1354
  br label %551, !dbg !2183

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %552, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1766
  br label %553, !dbg !2187

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1858
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1766
  call void @llvm.dbg.value(metadata i8 %562, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %561, metadata !1718, metadata !DIExpression()), !dbg !1766
  %563 = icmp ult i64 %561, %554, !dbg !2188
  br i1 %563, label %564, label %566, !dbg !2191

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2188
  store i8 %556, i8* %565, align 1, !dbg !2188, !tbaa !1354
  br label %566, !dbg !2188

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %567, metadata !1718, metadata !DIExpression()), !dbg !1766
  %568 = and i8 %555, 1, !dbg !2192
  %569 = icmp eq i8 %568, 0, !dbg !2192
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2194
  call void @llvm.dbg.value(metadata i8 %570, metadata !1727, metadata !DIExpression()), !dbg !1766
  br label %571, !dbg !2195

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2149
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1766
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1783
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2140
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1787
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1766
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1789
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %578, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %577, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %576, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %575, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %574, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %573, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %572, metadata !1717, metadata !DIExpression()), !dbg !1766
  %580 = add i64 %572, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %580, metadata !1717, metadata !DIExpression()), !dbg !1766
  br label %122, !dbg !2197, !llvm.loop !2198

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %127, metadata !1725, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %128, metadata !1726, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 %129, metadata !1727, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  %583 = icmp eq i64 %124, 0, !dbg !2200
  %584 = and i1 %110, %583, !dbg !2202
  %585 = xor i1 %584, true, !dbg !2202
  %586 = or i1 %109, %585, !dbg !2202
  br i1 %586, label %587, label %629, !dbg !2202

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2203
  %589 = xor i1 %588, true, !dbg !2203
  %590 = and i8 %128, 1, !dbg !2205
  %591 = icmp eq i8 %590, 0, !dbg !2205
  %592 = or i1 %591, %589, !dbg !2203
  br i1 %592, label %602, label %593, !dbg !2203

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2206
  %595 = icmp eq i8 %594, 0, !dbg !2206
  br i1 %595, label %598, label %596, !dbg !2209

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %94, metadata !1715, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %95, metadata !1716, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1719, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %582, metadata !1711, metadata !DIExpression()), !dbg !1766
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2210
  br label %645, !dbg !2211

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2212
  %600 = icmp ne i64 %125, 0, !dbg !2214
  %601 = and i1 %600, %599, !dbg !2215
  br i1 %601, label %26, label %602, !dbg !2215

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %130, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  %603 = icmp ne i8* %97, null, !dbg !2216
  %604 = and i1 %603, %109, !dbg !2218
  br i1 %604, label %605, label %620, !dbg !2218

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %124, metadata !1718, metadata !DIExpression()), !dbg !1766
  %606 = load i8, i8* %97, align 1, !dbg !2219, !tbaa !1354
  %607 = icmp eq i8 %606, 0, !dbg !2222
  br i1 %607, label %620, label %608, !dbg !2222

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1720, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %611, metadata !1718, metadata !DIExpression()), !dbg !1766
  %612 = icmp ult i64 %611, %130, !dbg !2223
  br i1 %612, label %613, label %615, !dbg !2226

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2223
  store i8 %609, i8* %614, align 1, !dbg !2223, !tbaa !1354
  br label %615, !dbg !2223

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %616, metadata !1718, metadata !DIExpression()), !dbg !1766
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2227
  call void @llvm.dbg.value(metadata i8* %617, metadata !1720, metadata !DIExpression()), !dbg !1766
  %618 = load i8, i8* %617, align 1, !dbg !2219, !tbaa !1354
  %619 = icmp eq i8 %618, 0, !dbg !2222
  br i1 %619, label %620, label %608, !dbg !2222, !llvm.loop !2228

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1820
  call void @llvm.dbg.value(metadata i64 %621, metadata !1718, metadata !DIExpression()), !dbg !1766
  %622 = icmp ult i64 %621, %130, !dbg !2230
  br i1 %622, label %623, label %645, !dbg !2232

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2233
  store i8 0, i8* %624, align 1, !dbg !2234, !tbaa !1354
  br label %645, !dbg !2233

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %630, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.label(metadata !1765), !dbg !2235
  %627 = icmp eq i8 %101, 0, !dbg !2236
  %628 = select i1 %627, i32 2, i32 4, !dbg !2236
  br label %635, !dbg !2236

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1709, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i64 %630, metadata !1711, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.label(metadata !1765), !dbg !2235
  %632 = icmp eq i32 %93, 2, !dbg !2238
  %633 = icmp eq i8 %101, 0, !dbg !2236
  %634 = select i1 %633, i32 2, i32 4, !dbg !2236
  br i1 %632, label %635, label %639, !dbg !2236

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2236

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1712, metadata !DIExpression()), !dbg !1766
  %643 = and i32 %5, -3, !dbg !2239
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2240
  br label %645, !dbg !2241

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2242
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2243 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2247, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32 %1, metadata !2248, metadata !DIExpression()), !dbg !2251
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #14, !dbg !2252
  call void @llvm.dbg.value(metadata i8* %3, metadata !2249, metadata !DIExpression()), !dbg !2251
  %4 = icmp eq i8* %3, %0, !dbg !2253
  br i1 %4, label %5, label %71, !dbg !2255

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #14, !dbg !2256
  call void @llvm.dbg.value(metadata i8* %6, metadata !2250, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* %6, metadata !2257, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* undef, metadata !2263, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 85, metadata !2264, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 84, metadata !2265, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 70, metadata !2266, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 45, metadata !2267, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 56, metadata !2268, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 0, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 0, metadata !2272, metadata !DIExpression()), !dbg !2273
  %7 = load i8, i8* %6, align 1, !dbg !2276, !tbaa !1354
  %8 = and i8 %7, -33, !dbg !2276
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2276

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2278, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* undef, metadata !2283, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 84, metadata !2284, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 70, metadata !2285, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 45, metadata !2286, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 56, metadata !2287, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2288, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2292
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2296
  %11 = load i8, i8* %10, align 1, !dbg !2296, !tbaa !1354
  %12 = and i8 %11, -33, !dbg !2296
  %13 = icmp eq i8 %12, 84, !dbg !2296
  br i1 %13, label %14, label %68, !dbg !2296

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2298, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* undef, metadata !2303, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 70, metadata !2304, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 45, metadata !2305, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 56, metadata !2306, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2307, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2311
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2315
  %16 = load i8, i8* %15, align 1, !dbg !2315, !tbaa !1354
  %17 = and i8 %16, -33, !dbg !2315
  %18 = icmp eq i8 %17, 70, !dbg !2315
  br i1 %18, label %19, label %68, !dbg !2315

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2317, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8* undef, metadata !2322, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 45, metadata !2323, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 56, metadata !2324, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 0, metadata !2326, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 0, metadata !2327, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 0, metadata !2328, metadata !DIExpression()), !dbg !2329
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2333
  %21 = load i8, i8* %20, align 1, !dbg !2333, !tbaa !1354
  %22 = icmp eq i8 %21, 45, !dbg !2333
  br i1 %22, label %23, label %68, !dbg !2335

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2336, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8* undef, metadata !2341, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 56, metadata !2342, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i8 0, metadata !2346, metadata !DIExpression()), !dbg !2347
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2351
  %25 = load i8, i8* %24, align 1, !dbg !2351, !tbaa !1354
  %26 = icmp eq i8 %25, 56, !dbg !2351
  br i1 %26, label %27, label %68, !dbg !2353

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2354, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8* undef, metadata !2359, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2364
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2368
  %29 = load i8, i8* %28, align 1, !dbg !2368, !tbaa !1354
  %30 = icmp eq i8 %29, 0, !dbg !2368
  br i1 %30, label %31, label %68, !dbg !2370

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2371, !tbaa !1354
  %33 = icmp eq i8 %32, 96, !dbg !2372
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.65, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.66, i64 0, i64 0), !dbg !2371
  br label %71, !dbg !2373

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2278, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8* undef, metadata !2283, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 66, metadata !2284, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 49, metadata !2285, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 56, metadata !2286, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 48, metadata !2287, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 51, metadata !2288, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 48, metadata !2289, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 0, metadata !2290, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8 0, metadata !2291, metadata !DIExpression()), !dbg !2374
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2378
  %37 = load i8, i8* %36, align 1, !dbg !2378, !tbaa !1354
  %38 = and i8 %37, -33, !dbg !2378
  %39 = icmp eq i8 %38, 66, !dbg !2378
  br i1 %39, label %40, label %68, !dbg !2378

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2298, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* undef, metadata !2303, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 49, metadata !2304, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 56, metadata !2305, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 48, metadata !2306, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 51, metadata !2307, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 48, metadata !2308, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 0, metadata !2309, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 0, metadata !2310, metadata !DIExpression()), !dbg !2379
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2381
  %42 = load i8, i8* %41, align 1, !dbg !2381, !tbaa !1354
  %43 = icmp eq i8 %42, 49, !dbg !2381
  br i1 %43, label %44, label %68, !dbg !2382

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2317, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* undef, metadata !2322, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 56, metadata !2323, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 48, metadata !2324, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 51, metadata !2325, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 48, metadata !2326, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2327, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2328, metadata !DIExpression()), !dbg !2383
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2385
  %46 = load i8, i8* %45, align 1, !dbg !2385, !tbaa !1354
  %47 = icmp eq i8 %46, 56, !dbg !2385
  br i1 %47, label %48, label %68, !dbg !2386

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2336, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8* undef, metadata !2341, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 48, metadata !2342, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 51, metadata !2343, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 48, metadata !2344, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 0, metadata !2345, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 0, metadata !2346, metadata !DIExpression()), !dbg !2387
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2389
  %50 = load i8, i8* %49, align 1, !dbg !2389, !tbaa !1354
  %51 = icmp eq i8 %50, 48, !dbg !2389
  br i1 %51, label %52, label %68, !dbg !2390

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2354, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* undef, metadata !2359, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 51, metadata !2360, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 48, metadata !2361, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2391
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2393
  %54 = load i8, i8* %53, align 1, !dbg !2393, !tbaa !1354
  %55 = icmp eq i8 %54, 51, !dbg !2393
  br i1 %55, label %56, label %68, !dbg !2394

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2395, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8* undef, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8 48, metadata !2401, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8 0, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2404
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2408
  %58 = load i8, i8* %57, align 1, !dbg !2408, !tbaa !1354
  %59 = icmp eq i8 %58, 48, !dbg !2408
  br i1 %59, label %60, label %68, !dbg !2410

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2411, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* undef, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 0, metadata !2418, metadata !DIExpression()), !dbg !2419
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2423
  %62 = load i8, i8* %61, align 1, !dbg !2423, !tbaa !1354
  %63 = icmp eq i8 %62, 0, !dbg !2423
  br i1 %63, label %64, label %68, !dbg !2425

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2426, !tbaa !1354
  %66 = icmp eq i8 %65, 96, !dbg !2427
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.67, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.68, i64 0, i64 0), !dbg !2426
  br label %71, !dbg !2428

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2429
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.63, i64 0, i64 0), !dbg !2430
  br label %71, !dbg !2431

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2251
  ret i8* %72, !dbg !2432
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #18

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !294 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !298 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2433 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %1, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2439, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()) #14, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %1, metadata !2446, metadata !DIExpression()) #14, !dbg !2454
  call void @llvm.dbg.value(metadata i64* null, metadata !2447, metadata !DIExpression()) #14, !dbg !2454
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2448, metadata !DIExpression()) #14, !dbg !2454
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2456
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2449, metadata !DIExpression()) #14, !dbg !2454
  %6 = tail call i32* @__errno_location() #26, !dbg !2457
  %7 = load i32, i32* %6, align 4, !dbg !2457, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %7, metadata !2450, metadata !DIExpression()) #14, !dbg !2454
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2458
  %9 = load i32, i32* %8, align 4, !dbg !2458, !tbaa !1651
  %10 = or i32 %9, 1, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %10, metadata !2451, metadata !DIExpression()) #14, !dbg !2454
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2460
  %12 = load i32, i32* %11, align 8, !dbg !2460, !tbaa !1600
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2461
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2462
  %15 = load i8*, i8** %14, align 8, !dbg !2462, !tbaa !1674
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2463
  %17 = load i8*, i8** %16, align 8, !dbg !2463, !tbaa !1677
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #14, !dbg !2464
  %19 = add i64 %18, 1, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %19, metadata !2452, metadata !DIExpression()) #14, !dbg !2454
  call void @llvm.dbg.value(metadata i64 %19, metadata !2466, metadata !DIExpression()) #14, !dbg !2471
  %20 = tail call noalias i8* @xmalloc(i64 %19) #14, !dbg !2473
  call void @llvm.dbg.value(metadata i8* %20, metadata !2453, metadata !DIExpression()) #14, !dbg !2454
  %21 = load i32, i32* %11, align 8, !dbg !2474, !tbaa !1600
  %22 = load i8*, i8** %14, align 8, !dbg !2475, !tbaa !1674
  %23 = load i8*, i8** %16, align 8, !dbg !2476, !tbaa !1677
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #14, !dbg !2477
  store i32 %7, i32* %6, align 4, !dbg !2478, !tbaa !1273
  ret i8* %20, !dbg !2479
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2442 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %1, metadata !2446, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64* %2, metadata !2447, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2448, metadata !DIExpression()), !dbg !2480
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2481
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2481
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2449, metadata !DIExpression()), !dbg !2480
  %7 = tail call i32* @__errno_location() #26, !dbg !2482
  %8 = load i32, i32* %7, align 4, !dbg !2482, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %8, metadata !2450, metadata !DIExpression()), !dbg !2480
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2483
  %10 = load i32, i32* %9, align 4, !dbg !2483, !tbaa !1651
  %11 = icmp ne i64* %2, null, !dbg !2484
  %12 = xor i1 %11, true, !dbg !2484
  %13 = zext i1 %12 to i32, !dbg !2484
  %14 = or i32 %10, %13, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %14, metadata !2451, metadata !DIExpression()), !dbg !2480
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2486
  %16 = load i32, i32* %15, align 8, !dbg !2486, !tbaa !1600
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2487
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2488
  %19 = load i8*, i8** %18, align 8, !dbg !2488, !tbaa !1674
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2489
  %21 = load i8*, i8** %20, align 8, !dbg !2489, !tbaa !1677
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2490
  %23 = add i64 %22, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i64 %23, metadata !2452, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %23, metadata !2466, metadata !DIExpression()) #14, !dbg !2492
  %24 = tail call noalias i8* @xmalloc(i64 %23) #14, !dbg !2494
  call void @llvm.dbg.value(metadata i8* %24, metadata !2453, metadata !DIExpression()), !dbg !2480
  %25 = load i32, i32* %15, align 8, !dbg !2495, !tbaa !1600
  %26 = load i8*, i8** %18, align 8, !dbg !2496, !tbaa !1674
  %27 = load i8*, i8** %20, align 8, !dbg !2497, !tbaa !1677
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2498
  store i32 %8, i32* %7, align 4, !dbg !2499, !tbaa !1273
  br i1 %11, label %29, label %30, !dbg !2500

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2501, !tbaa !1310
  br label %30, !dbg !2503

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2504
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2505 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2509, !tbaa !1218
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 1, metadata !2508, metadata !DIExpression()), !dbg !2510
  %2 = load i32, i32* @nslots, align 4, !dbg !2511, !tbaa !1273
  %3 = icmp sgt i32 %2, 1, !dbg !2514
  br i1 %3, label %4, label %12, !dbg !2515

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2508, metadata !DIExpression()), !dbg !2510
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2516
  %7 = load i8*, i8** %6, align 8, !dbg !2516, !tbaa !2517
  tail call void @free(i8* %7) #14, !dbg !2519
  %8 = add nuw nsw i64 %5, 1, !dbg !2520
  call void @llvm.dbg.value(metadata i64 %8, metadata !2508, metadata !DIExpression()), !dbg !2510
  %9 = load i32, i32* @nslots, align 4, !dbg !2511, !tbaa !1273
  %10 = sext i32 %9 to i64, !dbg !2514
  %11 = icmp slt i64 %8, %10, !dbg !2514
  br i1 %11, label %4, label %12, !dbg !2515, !llvm.loop !2521

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2523
  %14 = load i8*, i8** %13, align 8, !dbg !2523, !tbaa !2517
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2525
  br i1 %15, label %17, label %16, !dbg !2526

16:                                               ; preds = %12
  tail call void @free(i8* %14) #14, !dbg !2527
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2529, !tbaa !2530
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2531, !tbaa !2517
  br label %17, !dbg !2532

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2533
  br i1 %18, label %21, label %19, !dbg !2535

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2536
  tail call void @free(i8* %20) #14, !dbg !2538
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2539, !tbaa !1218
  br label %21, !dbg !2540

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2541, !tbaa !1273
  ret void, !dbg !2542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %1, metadata !2546, metadata !DIExpression()), !dbg !2547
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2548
  ret i8* %3, !dbg !2549
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2550 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2554, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %1, metadata !2555, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %2, metadata !2556, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2557, metadata !DIExpression()), !dbg !2569
  %5 = tail call i32* @__errno_location() #26, !dbg !2570
  %6 = load i32, i32* %5, align 4, !dbg !2570, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %6, metadata !2558, metadata !DIExpression()), !dbg !2569
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2571, !tbaa !1218
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2559, metadata !DIExpression()), !dbg !2569
  %8 = icmp slt i32 %0, 0, !dbg !2572
  br i1 %8, label %9, label %10, !dbg !2574

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !2575
  unreachable, !dbg !2575

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2576, !tbaa !1273
  %12 = icmp sgt i32 %11, %0, !dbg !2577
  br i1 %12, label %34, label %13, !dbg !2578

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2579
  call void @llvm.dbg.value(metadata i1 %14, metadata !2560, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2563, metadata !DIExpression()), !dbg !2580
  %15 = icmp eq i32 %0, 2147483647, !dbg !2581
  br i1 %15, label %16, label %17, !dbg !2583

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !2584
  unreachable, !dbg !2584

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2585
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2585
  %20 = add nuw nsw i32 %0, 1, !dbg !2586
  %21 = sext i32 %20 to i64, !dbg !2587
  %22 = shl nuw nsw i64 %21, 4, !dbg !2588
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #14, !dbg !2589
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2559, metadata !DIExpression()), !dbg !2569
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2590, !tbaa !1218
  br i1 %14, label %25, label %26, !dbg !2591

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2592, !tbaa.struct !2594
  br label %26, !dbg !2595

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2596, !tbaa !1273
  %28 = sext i32 %27 to i64, !dbg !2597
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2597
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2598
  %31 = sub nsw i32 %20, %27, !dbg !2599
  %32 = sext i32 %31 to i64, !dbg !2600
  %33 = shl nsw i64 %32, 4, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %30, metadata !1999, metadata !DIExpression()) #14, !dbg !2602
  call void @llvm.dbg.value(metadata i32 0, metadata !2005, metadata !DIExpression()) #14, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %33, metadata !2006, metadata !DIExpression()) #14, !dbg !2602
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #14, !dbg !2604
  store i32 %20, i32* @nslots, align 4, !dbg !2605, !tbaa !1273
  br label %34, !dbg !2606

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2569
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2559, metadata !DIExpression()), !dbg !2569
  %36 = zext i32 %0 to i64, !dbg !2607
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2608
  %38 = load i64, i64* %37, align 8, !dbg !2608, !tbaa !2530
  call void @llvm.dbg.value(metadata i64 %38, metadata !2564, metadata !DIExpression()), !dbg !2609
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2610
  %40 = load i8*, i8** %39, align 8, !dbg !2610, !tbaa !2517
  call void @llvm.dbg.value(metadata i8* %40, metadata !2566, metadata !DIExpression()), !dbg !2609
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2611
  %42 = load i32, i32* %41, align 4, !dbg !2611, !tbaa !1651
  %43 = or i32 %42, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %43, metadata !2567, metadata !DIExpression()), !dbg !2609
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2613
  %45 = load i32, i32* %44, align 8, !dbg !2613, !tbaa !1600
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2614
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2615
  %48 = load i8*, i8** %47, align 8, !dbg !2615, !tbaa !1674
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2616
  %50 = load i8*, i8** %49, align 8, !dbg !2616, !tbaa !1677
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %51, metadata !2568, metadata !DIExpression()), !dbg !2609
  %52 = icmp ugt i64 %38, %51, !dbg !2618
  br i1 %52, label %63, label %53, !dbg !2620

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2621
  call void @llvm.dbg.value(metadata i64 %54, metadata !2564, metadata !DIExpression()), !dbg !2609
  store i64 %54, i64* %37, align 8, !dbg !2623, !tbaa !2530
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2624
  br i1 %55, label %57, label %56, !dbg !2626

56:                                               ; preds = %53
  tail call void @free(i8* %40) #14, !dbg !2627
  br label %57, !dbg !2627

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2466, metadata !DIExpression()) #14, !dbg !2628
  %58 = tail call noalias i8* @xmalloc(i64 %54) #14, !dbg !2630
  call void @llvm.dbg.value(metadata i8* %58, metadata !2566, metadata !DIExpression()), !dbg !2609
  store i8* %58, i8** %39, align 8, !dbg !2631, !tbaa !2517
  %59 = load i32, i32* %44, align 8, !dbg !2632, !tbaa !1600
  %60 = load i8*, i8** %47, align 8, !dbg !2633, !tbaa !1674
  %61 = load i8*, i8** %49, align 8, !dbg !2634, !tbaa !1677
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2635
  br label %63, !dbg !2636

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2609
  call void @llvm.dbg.value(metadata i8* %64, metadata !2566, metadata !DIExpression()), !dbg !2609
  store i32 %6, i32* %5, align 4, !dbg !2637, !tbaa !1273
  ret i8* %64, !dbg !2638
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %1, metadata !2644, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 %2, metadata !2645, metadata !DIExpression()), !dbg !2646
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2647
  ret i8* %4, !dbg !2648
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2649 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 0, metadata !2545, metadata !DIExpression()) #14, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %0, metadata !2546, metadata !DIExpression()) #14, !dbg !2653
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #14, !dbg !2655
  ret i8* %2, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2657 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2643, metadata !DIExpression()) #14, !dbg !2664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2644, metadata !DIExpression()) #14, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2645, metadata !DIExpression()) #14, !dbg !2664
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #14, !dbg !2666
  ret i8* %3, !dbg !2667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2668 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2670, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %1, metadata !2671, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8* %2, metadata !2672, metadata !DIExpression()), !dbg !2674
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2675
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2675
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2673, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 %1, metadata !2677, metadata !DIExpression()) #14, !dbg !2683
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2682, metadata !DIExpression()) #14, !dbg !2685
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14, !dbg !2685, !alias.scope !2686
  %6 = icmp eq i32 %1, 10, !dbg !2689
  br i1 %6, label %7, label %8, !dbg !2691

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !2692, !noalias !2686
  unreachable, !dbg !2692

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2693
  store i32 %1, i32* %9, align 8, !dbg !2694, !tbaa !1600, !alias.scope !2686
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2695
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2696
  ret i8* %10, !dbg !2697
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2698 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2702, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 %1, metadata !2703, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* %2, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64 %3, metadata !2705, metadata !DIExpression()), !dbg !2707
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2708
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2708
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2706, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 %1, metadata !2677, metadata !DIExpression()) #14, !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2682, metadata !DIExpression()) #14, !dbg !2712
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #14, !dbg !2712, !alias.scope !2713
  %7 = icmp eq i32 %1, 10, !dbg !2716
  br i1 %7, label %8, label %9, !dbg !2717

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !2718, !noalias !2713
  unreachable, !dbg !2718

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2719
  store i32 %1, i32* %10, align 8, !dbg !2720, !tbaa !1600, !alias.scope !2713
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2721
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2722
  ret i8* %11, !dbg !2723
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2724 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2682, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2673, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %0, metadata !2728, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2729, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2670, metadata !DIExpression()) #14, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %0, metadata !2671, metadata !DIExpression()) #14, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %1, metadata !2672, metadata !DIExpression()) #14, !dbg !2735
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %0, metadata !2677, metadata !DIExpression()) #14, !dbg !2737
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #14, !dbg !2730, !alias.scope !2738
  %5 = icmp eq i32 %0, 10, !dbg !2741
  br i1 %5, label %6, label %7, !dbg !2742

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !2743, !noalias !2738
  unreachable, !dbg !2743

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2744
  store i32 %0, i32* %8, align 8, !dbg !2745, !tbaa !1600, !alias.scope !2738
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #14, !dbg !2746
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2747
  ret i8* %9, !dbg !2748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2749 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2682, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2706, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %1, metadata !2754, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %2, metadata !2755, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 0, metadata !2702, metadata !DIExpression()) #14, !dbg !2761
  call void @llvm.dbg.value(metadata i32 %0, metadata !2703, metadata !DIExpression()) #14, !dbg !2761
  call void @llvm.dbg.value(metadata i8* %1, metadata !2704, metadata !DIExpression()) #14, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %2, metadata !2705, metadata !DIExpression()) #14, !dbg !2761
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2762
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2762
  call void @llvm.dbg.value(metadata i32 %0, metadata !2677, metadata !DIExpression()) #14, !dbg !2763
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #14, !dbg !2756, !alias.scope !2764
  %6 = icmp eq i32 %0, 10, !dbg !2767
  br i1 %6, label %7, label %8, !dbg !2768

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !2769, !noalias !2764
  unreachable, !dbg !2769

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2770
  store i32 %0, i32* %9, align 8, !dbg !2771, !tbaa !1600, !alias.scope !2764
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #14, !dbg !2772
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2773
  ret i8* %10, !dbg !2774
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2775 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8 %2, metadata !2781, metadata !DIExpression()), !dbg !2783
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2784
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2784
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2782, metadata !DIExpression()), !dbg !2785
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2786, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1618, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %2, metadata !1619, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 1, metadata !1620, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8 %2, metadata !1621, metadata !DIExpression()), !dbg !2788
  %6 = lshr i8 %2, 5, !dbg !2790
  %7 = zext i8 %6 to i64, !dbg !2790
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2791
  call void @llvm.dbg.value(metadata i32* %8, metadata !1622, metadata !DIExpression()), !dbg !2788
  %9 = and i8 %2, 31, !dbg !2792
  %10 = zext i8 %9 to i32, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %10, metadata !1624, metadata !DIExpression()), !dbg !2788
  %11 = load i32, i32* %8, align 4, !dbg !2793, !tbaa !1273
  %12 = lshr i32 %11, %10, !dbg !2794
  %13 = and i32 %12, 1, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %13, metadata !1625, metadata !DIExpression()), !dbg !2788
  %14 = xor i32 %13, 1, !dbg !2796
  %15 = shl i32 %14, %10, !dbg !2797
  %16 = xor i32 %15, %11, !dbg !2798
  store i32 %16, i32* %8, align 4, !dbg !2798, !tbaa !1273
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2799
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2800
  ret i8* %17, !dbg !2801
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2802 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2782, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8 %1, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()) #14, !dbg !2811
  call void @llvm.dbg.value(metadata i64 -1, metadata !2780, metadata !DIExpression()) #14, !dbg !2811
  call void @llvm.dbg.value(metadata i8 %1, metadata !2781, metadata !DIExpression()) #14, !dbg !2811
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2812
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2812
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2813, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1618, metadata !DIExpression()) #14, !dbg !2814
  call void @llvm.dbg.value(metadata i8 %1, metadata !1619, metadata !DIExpression()) #14, !dbg !2814
  call void @llvm.dbg.value(metadata i32 1, metadata !1620, metadata !DIExpression()) #14, !dbg !2814
  call void @llvm.dbg.value(metadata i8 %1, metadata !1621, metadata !DIExpression()) #14, !dbg !2814
  %5 = lshr i8 %1, 5, !dbg !2816
  %6 = zext i8 %5 to i64, !dbg !2816
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2817
  call void @llvm.dbg.value(metadata i32* %7, metadata !1622, metadata !DIExpression()) #14, !dbg !2814
  %8 = and i8 %1, 31, !dbg !2818
  %9 = zext i8 %8 to i32, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %9, metadata !1624, metadata !DIExpression()) #14, !dbg !2814
  %10 = load i32, i32* %7, align 4, !dbg !2819, !tbaa !1273
  %11 = lshr i32 %10, %9, !dbg !2820
  %12 = and i32 %11, 1, !dbg !2821
  call void @llvm.dbg.value(metadata i32 %12, metadata !1625, metadata !DIExpression()) #14, !dbg !2814
  %13 = xor i32 %12, 1, !dbg !2822
  %14 = shl i32 %13, %9, !dbg !2823
  %15 = xor i32 %14, %10, !dbg !2824
  store i32 %15, i32* %7, align 4, !dbg !2824, !tbaa !1273
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #14, !dbg !2825
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2826
  ret i8* %16, !dbg !2827
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2828 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2782, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()) #14, !dbg !2835
  call void @llvm.dbg.value(metadata i8 58, metadata !2807, metadata !DIExpression()) #14, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()) #14, !dbg !2836
  call void @llvm.dbg.value(metadata i64 -1, metadata !2780, metadata !DIExpression()) #14, !dbg !2836
  call void @llvm.dbg.value(metadata i8 58, metadata !2781, metadata !DIExpression()) #14, !dbg !2836
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2837
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #14, !dbg !2837
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2838, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1618, metadata !DIExpression()) #14, !dbg !2839
  call void @llvm.dbg.value(metadata i8 58, metadata !1619, metadata !DIExpression()) #14, !dbg !2839
  call void @llvm.dbg.value(metadata i32 1, metadata !1620, metadata !DIExpression()) #14, !dbg !2839
  call void @llvm.dbg.value(metadata i8 58, metadata !1621, metadata !DIExpression()) #14, !dbg !2839
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2841
  call void @llvm.dbg.value(metadata i32* %4, metadata !1622, metadata !DIExpression()) #14, !dbg !2839
  call void @llvm.dbg.value(metadata i32 26, metadata !1624, metadata !DIExpression()) #14, !dbg !2839
  %5 = load i32, i32* %4, align 4, !dbg !2842, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %5, metadata !1625, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #14, !dbg !2839
  %6 = or i32 %5, 67108864, !dbg !2843
  store i32 %6, i32* %4, align 4, !dbg !2843, !tbaa !1273
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #14, !dbg !2844
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #14, !dbg !2845
  ret i8* %7, !dbg !2846
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2847 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2782, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %0, metadata !2849, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 %1, metadata !2850, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8* %0, metadata !2779, metadata !DIExpression()) #14, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2780, metadata !DIExpression()) #14, !dbg !2854
  call void @llvm.dbg.value(metadata i8 58, metadata !2781, metadata !DIExpression()) #14, !dbg !2854
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2855
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2855
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2856, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1618, metadata !DIExpression()) #14, !dbg !2857
  call void @llvm.dbg.value(metadata i8 58, metadata !1619, metadata !DIExpression()) #14, !dbg !2857
  call void @llvm.dbg.value(metadata i32 1, metadata !1620, metadata !DIExpression()) #14, !dbg !2857
  call void @llvm.dbg.value(metadata i8 58, metadata !1621, metadata !DIExpression()) #14, !dbg !2857
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2859
  call void @llvm.dbg.value(metadata i32* %5, metadata !1622, metadata !DIExpression()) #14, !dbg !2857
  call void @llvm.dbg.value(metadata i32 26, metadata !1624, metadata !DIExpression()) #14, !dbg !2857
  %6 = load i32, i32* %5, align 4, !dbg !2860, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %6, metadata !1625, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #14, !dbg !2857
  %7 = or i32 %6, 67108864, !dbg !2861
  store i32 %7, i32* %5, align 4, !dbg !2861, !tbaa !1273
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #14, !dbg !2862
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #14, !dbg !2863
  ret i8* %8, !dbg !2864
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2865 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2682, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2871
  call void @llvm.dbg.value(metadata i32 %0, metadata !2867, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i32 %1, metadata !2868, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* %2, metadata !2869, metadata !DIExpression()), !dbg !2873
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2874
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2874
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2870, metadata !DIExpression()), !dbg !2875
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2876
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2876
  call void @llvm.dbg.value(metadata i32 %1, metadata !2677, metadata !DIExpression()) #14, !dbg !2877
  call void @llvm.dbg.value(metadata i32 0, metadata !2682, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2877
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2871, !alias.scope !2878
  %8 = icmp eq i32 %1, 10, !dbg !2881
  br i1 %8, label %9, label %10, !dbg !2882

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !2883, !noalias !2878
  unreachable, !dbg !2883

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2682, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2877
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2876
  store i32 %1, i32* %11, align 8, !dbg !2876, !tbaa.struct !2787
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2876
  %13 = bitcast i32* %12 to i8*, !dbg !2876
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2876, !tbaa.struct !2787
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2876
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1618, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !1619, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 1, metadata !1620, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8 58, metadata !1621, metadata !DIExpression()), !dbg !2884
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2886
  call void @llvm.dbg.value(metadata i32* %14, metadata !1622, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i32 26, metadata !1624, metadata !DIExpression()), !dbg !2884
  %15 = load i32, i32* %14, align 4, !dbg !2887, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %15, metadata !1625, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2884
  %16 = or i32 %15, 67108864, !dbg !2888
  store i32 %16, i32* %14, align 4, !dbg !2888, !tbaa !1273
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2890
  ret i8* %17, !dbg !2891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2892 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2900, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i32 %0, metadata !2896, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %1, metadata !2897, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %2, metadata !2898, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %3, metadata !2899, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()) #14, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %1, metadata !2906, metadata !DIExpression()) #14, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %2, metadata !2907, metadata !DIExpression()) #14, !dbg !2913
  call void @llvm.dbg.value(metadata i8* %3, metadata !2908, metadata !DIExpression()) #14, !dbg !2913
  call void @llvm.dbg.value(metadata i64 -1, metadata !2909, metadata !DIExpression()) #14, !dbg !2913
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2915, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()) #14, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %1, metadata !1659, metadata !DIExpression()) #14, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %2, metadata !1660, metadata !DIExpression()) #14, !dbg !2916
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()) #14, !dbg !2916
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2918
  store i32 10, i32* %7, align 8, !dbg !2919, !tbaa !1600
  %8 = icmp ne i8* %1, null, !dbg !2920
  %9 = icmp ne i8* %2, null, !dbg !2921
  %10 = and i1 %8, %9, !dbg !2922
  br i1 %10, label %12, label %11, !dbg !2922

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !2923
  unreachable, !dbg !2923

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2924
  store i8* %1, i8** %13, align 8, !dbg !2925, !tbaa !1674
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2926
  store i8* %2, i8** %14, align 8, !dbg !2927, !tbaa !1677
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #14, !dbg !2928
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2929
  ret i8* %15, !dbg !2930
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2901 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* %1, metadata !2906, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* %2, metadata !2907, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* %3, metadata !2908, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %4, metadata !2909, metadata !DIExpression()), !dbg !2931
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2932
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #14, !dbg !2932
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2900, metadata !DIExpression()), !dbg !2933
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2934, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1658, metadata !DIExpression()) #14, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %1, metadata !1659, metadata !DIExpression()) #14, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %2, metadata !1660, metadata !DIExpression()) #14, !dbg !2935
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1658, metadata !DIExpression()) #14, !dbg !2935
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2937
  store i32 10, i32* %8, align 8, !dbg !2938, !tbaa !1600
  %9 = icmp ne i8* %1, null, !dbg !2939
  %10 = icmp ne i8* %2, null, !dbg !2940
  %11 = and i1 %9, %10, !dbg !2941
  br i1 %11, label %13, label %12, !dbg !2941

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !2942
  unreachable, !dbg !2942

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2943
  store i8* %1, i8** %14, align 8, !dbg !2944, !tbaa !1674
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2945
  store i8* %2, i8** %15, align 8, !dbg !2946, !tbaa !1677
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #14, !dbg !2948
  ret i8* %16, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2950 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2900, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %1, metadata !2955, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i8* %2, metadata !2956, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i32 0, metadata !2896, metadata !DIExpression()) #14, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %0, metadata !2897, metadata !DIExpression()) #14, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %1, metadata !2898, metadata !DIExpression()) #14, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %2, metadata !2899, metadata !DIExpression()) #14, !dbg !2961
  call void @llvm.dbg.value(metadata i32 0, metadata !2905, metadata !DIExpression()) #14, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()) #14, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %1, metadata !2907, metadata !DIExpression()) #14, !dbg !2962
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()) #14, !dbg !2962
  call void @llvm.dbg.value(metadata i64 -1, metadata !2909, metadata !DIExpression()) #14, !dbg !2962
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2963
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2963
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2964, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1658, metadata !DIExpression()) #14, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !1659, metadata !DIExpression()) #14, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %1, metadata !1660, metadata !DIExpression()) #14, !dbg !2965
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1658, metadata !DIExpression()) #14, !dbg !2965
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2967
  store i32 10, i32* %6, align 8, !dbg !2968, !tbaa !1600
  %7 = icmp ne i8* %0, null, !dbg !2969
  %8 = icmp ne i8* %1, null, !dbg !2970
  %9 = and i1 %7, %8, !dbg !2971
  br i1 %9, label %11, label %10, !dbg !2971

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2972
  unreachable, !dbg !2972

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2973
  store i8* %0, i8** %12, align 8, !dbg !2974, !tbaa !1674
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2975
  store i8* %1, i8** %13, align 8, !dbg !2976, !tbaa !1677
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #14, !dbg !2977
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #14, !dbg !2978
  ret i8* %14, !dbg !2979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2980 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2900, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %0, metadata !2984, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* %1, metadata !2985, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* %2, metadata !2986, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %3, metadata !2987, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i32 0, metadata !2905, metadata !DIExpression()) #14, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()) #14, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %1, metadata !2907, metadata !DIExpression()) #14, !dbg !2991
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()) #14, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %3, metadata !2909, metadata !DIExpression()) #14, !dbg !2991
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2992
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #14, !dbg !2992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #14, !dbg !2993, !tbaa.struct !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()) #14, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %0, metadata !1659, metadata !DIExpression()) #14, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %1, metadata !1660, metadata !DIExpression()) #14, !dbg !2994
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1658, metadata !DIExpression()) #14, !dbg !2994
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2996
  store i32 10, i32* %7, align 8, !dbg !2997, !tbaa !1600
  %8 = icmp ne i8* %0, null, !dbg !2998
  %9 = icmp ne i8* %1, null, !dbg !2999
  %10 = and i1 %8, %9, !dbg !3000
  br i1 %10, label %12, label %11, !dbg !3000

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3001
  unreachable, !dbg !3001

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3002
  store i8* %0, i8** %13, align 8, !dbg !3003, !tbaa !1674
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3004
  store i8* %1, i8** %14, align 8, !dbg !3005, !tbaa !1677
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #14, !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #14, !dbg !3007
  ret i8* %15, !dbg !3008
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %2, metadata !3015, metadata !DIExpression()), !dbg !3016
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3017
  ret i8* %4, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3023, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()) #14, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()) #14, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3015, metadata !DIExpression()) #14, !dbg !3026
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3028
  ret i8* %3, !dbg !3029
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3034, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8* %1, metadata !3035, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()) #14, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %1, metadata !3014, metadata !DIExpression()) #14, !dbg !3037
  call void @llvm.dbg.value(metadata i64 -1, metadata !3015, metadata !DIExpression()) #14, !dbg !3037
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3039
  ret i8* %3, !dbg !3040
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 0, metadata !3034, metadata !DIExpression()) #14, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %0, metadata !3035, metadata !DIExpression()) #14, !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !3013, metadata !DIExpression()) #14, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !3014, metadata !DIExpression()) #14, !dbg !3047
  call void @llvm.dbg.value(metadata i64 -1, metadata !3015, metadata !DIExpression()) #14, !dbg !3047
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #14, !dbg !3049
  ret i8* %2, !dbg !3050
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3051 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3059, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %1, metadata !3060, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %2, metadata !3061, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %3, metadata !3062, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8** %4, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %5, metadata !3064, metadata !DIExpression()), !dbg !3065
  %7 = icmp eq i8* %1, null, !dbg !3066
  br i1 %7, label %10, label %8, !dbg !3068

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #14, !dbg !3069
  br label %12, !dbg !3069

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.76, i64 0, i64 0), i8* %2, i8* %3) #14, !dbg !3070
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #14, !dbg !3071
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #14, !dbg !3071
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3072
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.79, i64 0, i64 0), i32 5) #14, !dbg !3073
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.80, i64 0, i64 0)) #14, !dbg !3073
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3074
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
  ], !dbg !3075

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.81, i64 0, i64 0), i32 5) #14, !dbg !3076
  %21 = load i8*, i8** %4, align 8, !dbg !3076, !tbaa !1218
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #14, !dbg !3076
  br label %147, !dbg !3078

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.82, i64 0, i64 0), i32 5) #14, !dbg !3079
  %25 = load i8*, i8** %4, align 8, !dbg !3079, !tbaa !1218
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3079
  %27 = load i8*, i8** %26, align 8, !dbg !3079, !tbaa !1218
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #14, !dbg !3079
  br label %147, !dbg !3080

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.83, i64 0, i64 0), i32 5) #14, !dbg !3081
  %31 = load i8*, i8** %4, align 8, !dbg !3081, !tbaa !1218
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3081
  %33 = load i8*, i8** %32, align 8, !dbg !3081, !tbaa !1218
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3081
  %35 = load i8*, i8** %34, align 8, !dbg !3081, !tbaa !1218
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #14, !dbg !3081
  br label %147, !dbg !3082

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.84, i64 0, i64 0), i32 5) #14, !dbg !3083
  %39 = load i8*, i8** %4, align 8, !dbg !3083, !tbaa !1218
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3083
  %41 = load i8*, i8** %40, align 8, !dbg !3083, !tbaa !1218
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3083
  %43 = load i8*, i8** %42, align 8, !dbg !3083, !tbaa !1218
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3083
  %45 = load i8*, i8** %44, align 8, !dbg !3083, !tbaa !1218
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #14, !dbg !3083
  br label %147, !dbg !3084

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.85, i64 0, i64 0), i32 5) #14, !dbg !3085
  %49 = load i8*, i8** %4, align 8, !dbg !3085, !tbaa !1218
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3085
  %51 = load i8*, i8** %50, align 8, !dbg !3085, !tbaa !1218
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3085
  %53 = load i8*, i8** %52, align 8, !dbg !3085, !tbaa !1218
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3085
  %55 = load i8*, i8** %54, align 8, !dbg !3085, !tbaa !1218
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3085
  %57 = load i8*, i8** %56, align 8, !dbg !3085, !tbaa !1218
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #14, !dbg !3085
  br label %147, !dbg !3086

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.86, i64 0, i64 0), i32 5) #14, !dbg !3087
  %61 = load i8*, i8** %4, align 8, !dbg !3087, !tbaa !1218
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3087
  %63 = load i8*, i8** %62, align 8, !dbg !3087, !tbaa !1218
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3087
  %65 = load i8*, i8** %64, align 8, !dbg !3087, !tbaa !1218
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3087
  %67 = load i8*, i8** %66, align 8, !dbg !3087, !tbaa !1218
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3087
  %69 = load i8*, i8** %68, align 8, !dbg !3087, !tbaa !1218
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3087
  %71 = load i8*, i8** %70, align 8, !dbg !3087, !tbaa !1218
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #14, !dbg !3087
  br label %147, !dbg !3088

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.87, i64 0, i64 0), i32 5) #14, !dbg !3089
  %75 = load i8*, i8** %4, align 8, !dbg !3089, !tbaa !1218
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3089
  %77 = load i8*, i8** %76, align 8, !dbg !3089, !tbaa !1218
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3089
  %79 = load i8*, i8** %78, align 8, !dbg !3089, !tbaa !1218
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3089
  %81 = load i8*, i8** %80, align 8, !dbg !3089, !tbaa !1218
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3089
  %83 = load i8*, i8** %82, align 8, !dbg !3089, !tbaa !1218
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3089
  %85 = load i8*, i8** %84, align 8, !dbg !3089, !tbaa !1218
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3089
  %87 = load i8*, i8** %86, align 8, !dbg !3089, !tbaa !1218
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #14, !dbg !3089
  br label %147, !dbg !3090

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.88, i64 0, i64 0), i32 5) #14, !dbg !3091
  %91 = load i8*, i8** %4, align 8, !dbg !3091, !tbaa !1218
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3091
  %93 = load i8*, i8** %92, align 8, !dbg !3091, !tbaa !1218
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3091
  %95 = load i8*, i8** %94, align 8, !dbg !3091, !tbaa !1218
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3091
  %97 = load i8*, i8** %96, align 8, !dbg !3091, !tbaa !1218
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3091
  %99 = load i8*, i8** %98, align 8, !dbg !3091, !tbaa !1218
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3091
  %101 = load i8*, i8** %100, align 8, !dbg !3091, !tbaa !1218
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3091
  %103 = load i8*, i8** %102, align 8, !dbg !3091, !tbaa !1218
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3091
  %105 = load i8*, i8** %104, align 8, !dbg !3091, !tbaa !1218
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #14, !dbg !3091
  br label %147, !dbg !3092

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.89, i64 0, i64 0), i32 5) #14, !dbg !3093
  %109 = load i8*, i8** %4, align 8, !dbg !3093, !tbaa !1218
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3093
  %111 = load i8*, i8** %110, align 8, !dbg !3093, !tbaa !1218
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3093
  %113 = load i8*, i8** %112, align 8, !dbg !3093, !tbaa !1218
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3093
  %115 = load i8*, i8** %114, align 8, !dbg !3093, !tbaa !1218
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3093
  %117 = load i8*, i8** %116, align 8, !dbg !3093, !tbaa !1218
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3093
  %119 = load i8*, i8** %118, align 8, !dbg !3093, !tbaa !1218
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3093
  %121 = load i8*, i8** %120, align 8, !dbg !3093, !tbaa !1218
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3093
  %123 = load i8*, i8** %122, align 8, !dbg !3093, !tbaa !1218
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3093
  %125 = load i8*, i8** %124, align 8, !dbg !3093, !tbaa !1218
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #14, !dbg !3093
  br label %147, !dbg !3094

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.90, i64 0, i64 0), i32 5) #14, !dbg !3095
  %129 = load i8*, i8** %4, align 8, !dbg !3095, !tbaa !1218
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3095
  %131 = load i8*, i8** %130, align 8, !dbg !3095, !tbaa !1218
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3095
  %133 = load i8*, i8** %132, align 8, !dbg !3095, !tbaa !1218
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3095
  %135 = load i8*, i8** %134, align 8, !dbg !3095, !tbaa !1218
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3095
  %137 = load i8*, i8** %136, align 8, !dbg !3095, !tbaa !1218
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3095
  %139 = load i8*, i8** %138, align 8, !dbg !3095, !tbaa !1218
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3095
  %141 = load i8*, i8** %140, align 8, !dbg !3095, !tbaa !1218
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3095
  %143 = load i8*, i8** %142, align 8, !dbg !3095, !tbaa !1218
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3095
  %145 = load i8*, i8** %144, align 8, !dbg !3095, !tbaa !1218
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #14, !dbg !3095
  br label %147, !dbg !3096

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3097
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3098 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3102, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %1, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %2, metadata !3104, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %3, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8** %4, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 0, metadata !3107, metadata !DIExpression()), !dbg !3108
  br label %6, !dbg !3109

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3111
  call void @llvm.dbg.value(metadata i64 %7, metadata !3107, metadata !DIExpression()), !dbg !3108
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3112
  %9 = load i8*, i8** %8, align 8, !dbg !3112, !tbaa !1218
  %10 = icmp eq i8* %9, null, !dbg !3114
  %11 = add i64 %7, 1, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %11, metadata !3107, metadata !DIExpression()), !dbg !3108
  br i1 %10, label %12, label %6, !dbg !3114, !llvm.loop !3116

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %7, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %7, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %7, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %7, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %7, metadata !3107, metadata !DIExpression()), !dbg !3108
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3118
  ret void, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3120 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3131, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8* %1, metadata !3132, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8* %2, metadata !3133, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8* %3, metadata !3134, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3135, metadata !DIExpression()), !dbg !3139
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3140
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3137, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 0, metadata !3136, metadata !DIExpression()), !dbg !3139
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3142
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3142
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3142
  %11 = load i32, i32* %8, align 8, !dbg !3145
  %12 = icmp ult i32 %11, 41, !dbg !3145
  br i1 %12, label %13, label %18, !dbg !3145

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3145
  %15 = zext i32 %11 to i64, !dbg !3145
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3145
  %17 = add nuw nsw i32 %11, 8, !dbg !3145
  store i32 %17, i32* %8, align 8, !dbg !3145
  br label %21, !dbg !3145

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3145
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3145
  store i8* %20, i8** %9, align 8, !dbg !3145
  br label %21, !dbg !3145

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3145
  %25 = load i8*, i8** %24, align 8, !dbg !3145
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3146
  store i8* %25, i8** %26, align 16, !dbg !3147, !tbaa !1218
  %27 = icmp eq i8* %25, null, !dbg !3148
  br i1 %27, label %30, label %28, !dbg !3149

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3136, metadata !DIExpression()), !dbg !3139
  %29 = icmp ult i32 %22, 41, !dbg !3145
  br i1 %29, label %35, label %32, !dbg !3145

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3150
  call void @llvm.dbg.value(metadata i64 %31, metadata !3136, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %31, metadata !3136, metadata !DIExpression()), !dbg !3139
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3151
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #14, !dbg !3152
  ret void, !dbg !3152

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3145
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3145
  store i8* %34, i8** %9, align 8, !dbg !3145
  br label %40, !dbg !3145

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3145
  %37 = zext i32 %22 to i64, !dbg !3145
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3145
  %39 = add nuw nsw i32 %22, 8, !dbg !3145
  store i32 %39, i32* %8, align 8, !dbg !3145
  br label %40, !dbg !3145

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3145
  %44 = load i8*, i8** %43, align 8, !dbg !3145
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3146
  store i8* %44, i8** %45, align 8, !dbg !3147, !tbaa !1218
  %46 = icmp eq i8* %44, null, !dbg !3148
  br i1 %46, label %30, label %47, !dbg !3149

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3136, metadata !DIExpression()), !dbg !3139
  %48 = icmp ult i32 %41, 41, !dbg !3145
  br i1 %48, label %52, label %49, !dbg !3145

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3145
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3145
  store i8* %51, i8** %9, align 8, !dbg !3145
  br label %57, !dbg !3145

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3145
  %54 = zext i32 %41 to i64, !dbg !3145
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3145
  %56 = add nuw nsw i32 %41, 8, !dbg !3145
  store i32 %56, i32* %8, align 8, !dbg !3145
  br label %57, !dbg !3145

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3145
  %61 = load i8*, i8** %60, align 8, !dbg !3145
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3146
  store i8* %61, i8** %62, align 16, !dbg !3147, !tbaa !1218
  %63 = icmp eq i8* %61, null, !dbg !3148
  br i1 %63, label %30, label %64, !dbg !3149

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3136, metadata !DIExpression()), !dbg !3139
  %65 = icmp ult i32 %58, 41, !dbg !3145
  br i1 %65, label %69, label %66, !dbg !3145

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3145
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3145
  store i8* %68, i8** %9, align 8, !dbg !3145
  br label %74, !dbg !3145

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3145
  %71 = zext i32 %58 to i64, !dbg !3145
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3145
  %73 = add nuw nsw i32 %58, 8, !dbg !3145
  store i32 %73, i32* %8, align 8, !dbg !3145
  br label %74, !dbg !3145

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3145
  %78 = load i8*, i8** %77, align 8, !dbg !3145
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3146
  store i8* %78, i8** %79, align 8, !dbg !3147, !tbaa !1218
  %80 = icmp eq i8* %78, null, !dbg !3148
  br i1 %80, label %30, label %81, !dbg !3149

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3136, metadata !DIExpression()), !dbg !3139
  %82 = icmp ult i32 %75, 41, !dbg !3145
  br i1 %82, label %86, label %83, !dbg !3145

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3145
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3145
  store i8* %85, i8** %9, align 8, !dbg !3145
  br label %91, !dbg !3145

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3145
  %88 = zext i32 %75 to i64, !dbg !3145
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3145
  %90 = add nuw nsw i32 %75, 8, !dbg !3145
  store i32 %90, i32* %8, align 8, !dbg !3145
  br label %91, !dbg !3145

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3145
  %95 = load i8*, i8** %94, align 8, !dbg !3145
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3146
  store i8* %95, i8** %96, align 16, !dbg !3147, !tbaa !1218
  %97 = icmp eq i8* %95, null, !dbg !3148
  br i1 %97, label %30, label %98, !dbg !3149

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3136, metadata !DIExpression()), !dbg !3139
  %99 = icmp ult i32 %92, 41, !dbg !3145
  br i1 %99, label %103, label %100, !dbg !3145

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3145
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3145
  store i8* %102, i8** %9, align 8, !dbg !3145
  br label %108, !dbg !3145

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3145
  %105 = zext i32 %92 to i64, !dbg !3145
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3145
  %107 = add nuw nsw i32 %92, 8, !dbg !3145
  store i32 %107, i32* %8, align 8, !dbg !3145
  br label %108, !dbg !3145

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3145
  %111 = load i8*, i8** %110, align 8, !dbg !3145
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3146
  store i8* %111, i8** %112, align 8, !dbg !3147, !tbaa !1218
  %113 = icmp eq i8* %111, null, !dbg !3148
  br i1 %113, label %30, label %114, !dbg !3149

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3136, metadata !DIExpression()), !dbg !3139
  %115 = load i8*, i8** %9, align 8, !dbg !3145
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3145
  store i8* %116, i8** %9, align 8, !dbg !3145
  %117 = bitcast i8* %115 to i8**, !dbg !3145
  %118 = load i8*, i8** %117, align 8, !dbg !3145
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3146
  store i8* %118, i8** %119, align 16, !dbg !3147, !tbaa !1218
  %120 = icmp eq i8* %118, null, !dbg !3148
  br i1 %120, label %30, label %121, !dbg !3149

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3136, metadata !DIExpression()), !dbg !3139
  %122 = load i8*, i8** %9, align 8, !dbg !3145
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3145
  store i8* %123, i8** %9, align 8, !dbg !3145
  %124 = bitcast i8* %122 to i8**, !dbg !3145
  %125 = load i8*, i8** %124, align 8, !dbg !3145
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3146
  store i8* %125, i8** %126, align 8, !dbg !3147, !tbaa !1218
  %127 = icmp eq i8* %125, null, !dbg !3148
  br i1 %127, label %30, label %128, !dbg !3149

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3136, metadata !DIExpression()), !dbg !3139
  %129 = load i8*, i8** %9, align 8, !dbg !3145
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3145
  store i8* %130, i8** %9, align 8, !dbg !3145
  %131 = bitcast i8* %129 to i8**, !dbg !3145
  %132 = load i8*, i8** %131, align 8, !dbg !3145
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3146
  store i8* %132, i8** %133, align 16, !dbg !3147, !tbaa !1218
  %134 = icmp eq i8* %132, null, !dbg !3148
  br i1 %134, label %30, label %135, !dbg !3149

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3136, metadata !DIExpression()), !dbg !3139
  %136 = load i8*, i8** %9, align 8, !dbg !3145
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3145
  store i8* %137, i8** %9, align 8, !dbg !3145
  %138 = bitcast i8* %136 to i8**, !dbg !3145
  %139 = load i8*, i8** %138, align 8, !dbg !3145
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3146
  store i8* %139, i8** %140, align 8, !dbg !3147, !tbaa !1218
  %141 = icmp eq i8* %139, null, !dbg !3148
  %142 = select i1 %141, i64 9, i64 10, !dbg !3149
  br label %30, !dbg !3149
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3153 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3157, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* %1, metadata !3158, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* %2, metadata !3159, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* %3, metadata !3160, metadata !DIExpression()), !dbg !3166
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3167
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #14, !dbg !3167
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3161, metadata !DIExpression()), !dbg !3168
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3169
  call void @llvm.va_start(i8* nonnull %6), !dbg !3169
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3170
  call void @llvm.va_end(i8* nonnull %6), !dbg !3171
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #14, !dbg !3172
  ret void, !dbg !3172
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3173 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3174, !tbaa !1218
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.78, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3174
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.93, i64 0, i64 0), i32 5) #14, !dbg !3175
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.94, i64 0, i64 0)) #14, !dbg !3175
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.95, i64 0, i64 0), i32 5) #14, !dbg !3176
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.96, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.97, i64 0, i64 0)) #14, !dbg !3176
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.98, i64 0, i64 0), i32 5) #14, !dbg !3177
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.99, i64 0, i64 0)) #14, !dbg !3177
  ret void, !dbg !3178
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3179 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 %1, metadata !3182, metadata !DIExpression()), !dbg !3183
  %3 = udiv i64 9223372036854775807, %1, !dbg !3184
  %4 = icmp ult i64 %3, %0, !dbg !3184
  br i1 %4, label %5, label %6, !dbg !3186

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3187
  unreachable, !dbg !3187

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %7, metadata !3189, metadata !DIExpression()) #14, !dbg !3195
  %8 = tail call noalias i8* @malloc(i64 %7) #14, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %8, metadata !3194, metadata !DIExpression()) #14, !dbg !3195
  %9 = icmp eq i8* %8, null, !dbg !3198
  %10 = icmp ne i64 %7, 0, !dbg !3200
  %11 = and i1 %10, %9, !dbg !3201
  br i1 %11, label %12, label %13, !dbg !3201

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !3202
  unreachable, !dbg !3202

13:                                               ; preds = %6
  ret i8* %8, !dbg !3203
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3190 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3189, metadata !DIExpression()), !dbg !3204
  %2 = tail call noalias i8* @malloc(i64 %0) #14, !dbg !3205
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()), !dbg !3204
  %3 = icmp eq i8* %2, null, !dbg !3206
  %4 = icmp ne i64 %0, 0, !dbg !3207
  %5 = and i1 %4, %3, !dbg !3208
  br i1 %5, label %6, label %7, !dbg !3208

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3209
  unreachable, !dbg !3209

7:                                                ; preds = %1
  ret i8* %2, !dbg !3210
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3211 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %1, metadata !3216, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %2, metadata !3217, metadata !DIExpression()), !dbg !3218
  %4 = udiv i64 9223372036854775807, %2, !dbg !3219
  %5 = icmp ult i64 %4, %1, !dbg !3219
  br i1 %5, label %6, label %7, !dbg !3221

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !3222
  unreachable, !dbg !3222

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #14, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %8, metadata !3229, metadata !DIExpression()) #14, !dbg !3230
  %9 = icmp eq i64 %8, 0, !dbg !3232
  %10 = icmp ne i8* %0, null, !dbg !3234
  %11 = and i1 %10, %9, !dbg !3235
  br i1 %11, label %12, label %13, !dbg !3235

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #14, !dbg !3236
  br label %19, !dbg !3238

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #14, !dbg !3239
  call void @llvm.dbg.value(metadata i8* %14, metadata !3224, metadata !DIExpression()) #14, !dbg !3230
  %15 = icmp eq i8* %14, null, !dbg !3240
  %16 = icmp ne i64 %8, 0, !dbg !3242
  %17 = and i1 %16, %15, !dbg !3243
  br i1 %17, label %18, label %19, !dbg !3243

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3244
  unreachable, !dbg !3244

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3230
  ret i8* %20, !dbg !3245
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3225 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %1, metadata !3229, metadata !DIExpression()), !dbg !3246
  %3 = icmp eq i64 %1, 0, !dbg !3247
  %4 = icmp ne i8* %0, null, !dbg !3248
  %5 = and i1 %4, %3, !dbg !3249
  br i1 %5, label %6, label %7, !dbg !3249

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #14, !dbg !3250
  br label %13, !dbg !3251

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #14, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %8, metadata !3224, metadata !DIExpression()), !dbg !3246
  %9 = icmp eq i8* %8, null, !dbg !3253
  %10 = icmp ne i64 %1, 0, !dbg !3254
  %11 = and i1 %10, %9, !dbg !3255
  br i1 %11, label %12, label %13, !dbg !3255

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3256
  unreachable, !dbg !3256

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3246
  ret i8* %14, !dbg !3257
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !527 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !532, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64* %1, metadata !533, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %2, metadata !534, metadata !DIExpression()), !dbg !3258
  %4 = load i64, i64* %1, align 8, !dbg !3259, !tbaa !1310
  call void @llvm.dbg.value(metadata i64 %4, metadata !535, metadata !DIExpression()), !dbg !3258
  %5 = icmp eq i8* %0, null, !dbg !3260
  br i1 %5, label %6, label %20, !dbg !3262

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3263
  br i1 %7, label %8, label %13, !dbg !3266

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %9, metadata !535, metadata !DIExpression()), !dbg !3258
  %10 = icmp ugt i64 %2, 128, !dbg !3269
  %11 = zext i1 %10 to i64, !dbg !3269
  %12 = add nuw nsw i64 %9, %11, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %12, metadata !535, metadata !DIExpression()), !dbg !3258
  br label %13, !dbg !3271

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3258
  call void @llvm.dbg.value(metadata i64 %14, metadata !535, metadata !DIExpression()), !dbg !3258
  %15 = udiv i64 9223372036854775807, %2, !dbg !3272
  %16 = icmp ult i64 %15, %14, !dbg !3272
  br i1 %16, label %19, label %17, !dbg !3274

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !535, metadata !DIExpression()), !dbg !3258
  store i64 %14, i64* %1, align 8, !dbg !3275, !tbaa !1310
  %18 = mul i64 %14, %2, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #14, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %28, metadata !3229, metadata !DIExpression()) #14, !dbg !3277
  br label %31, !dbg !3279

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3280
  unreachable, !dbg !3280

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3281
  %22 = icmp ugt i64 %21, %4, !dbg !3284
  br i1 %22, label %24, label %23, !dbg !3285

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !3286
  unreachable, !dbg !3286

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3287
  %26 = add nuw i64 %4, 1, !dbg !3288
  %27 = add i64 %26, %25, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %27, metadata !535, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %27, metadata !535, metadata !DIExpression()), !dbg !3258
  store i64 %27, i64* %1, align 8, !dbg !3275, !tbaa !1310
  %28 = mul i64 %27, %2, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #14, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %28, metadata !3229, metadata !DIExpression()) #14, !dbg !3277
  %29 = icmp eq i64 %28, 0, !dbg !3290
  br i1 %29, label %30, label %31, !dbg !3279

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #14, !dbg !3291
  br label %38, !dbg !3292

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #14, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %33, metadata !3224, metadata !DIExpression()) #14, !dbg !3277
  %34 = icmp eq i8* %33, null, !dbg !3294
  %35 = icmp ne i64 %32, 0, !dbg !3295
  %36 = and i1 %35, %34, !dbg !3296
  br i1 %36, label %37, label %38, !dbg !3296

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !3297
  unreachable, !dbg !3297

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3277
  ret i8* %39, !dbg !3298
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3299 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3301, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %0, metadata !3189, metadata !DIExpression()) #14, !dbg !3303
  %2 = tail call noalias i8* @malloc(i64 %0) #14, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %2, metadata !3194, metadata !DIExpression()) #14, !dbg !3303
  %3 = icmp eq i8* %2, null, !dbg !3306
  %4 = icmp ne i64 %0, 0, !dbg !3307
  %5 = and i1 %4, %3, !dbg !3308
  br i1 %5, label %6, label %7, !dbg !3308

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3309
  unreachable, !dbg !3309

7:                                                ; preds = %1
  ret i8* %2, !dbg !3310
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3311 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3315, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64* %1, metadata !3316, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8* %0, metadata !532, metadata !DIExpression()) #14, !dbg !3318
  call void @llvm.dbg.value(metadata i64* %1, metadata !533, metadata !DIExpression()) #14, !dbg !3318
  call void @llvm.dbg.value(metadata i64 1, metadata !534, metadata !DIExpression()) #14, !dbg !3318
  %3 = load i64, i64* %1, align 8, !dbg !3320, !tbaa !1310
  call void @llvm.dbg.value(metadata i64 %3, metadata !535, metadata !DIExpression()) #14, !dbg !3318
  %4 = icmp eq i8* %0, null, !dbg !3321
  br i1 %4, label %5, label %12, !dbg !3322

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3323
  br i1 %6, label %9, label %7, !dbg !3324

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !535, metadata !DIExpression()) #14, !dbg !3318
  %8 = icmp slt i64 %3, 0, !dbg !3325
  br i1 %8, label %11, label %9, !dbg !3326

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !535, metadata !DIExpression()) #14, !dbg !3318
  store i64 %10, i64* %1, align 8, !dbg !3327, !tbaa !1310
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #14, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %18, metadata !3229, metadata !DIExpression()) #14, !dbg !3328
  br label %21, !dbg !3330

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3331
  unreachable, !dbg !3331

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3332
  br i1 %13, label %15, label %14, !dbg !3333

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !3334
  unreachable, !dbg !3334

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3335
  %17 = add nuw nsw i64 %3, 1, !dbg !3336
  %18 = add nuw nsw i64 %17, %16, !dbg !3337
  call void @llvm.dbg.value(metadata i64 %18, metadata !535, metadata !DIExpression()) #14, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %18, metadata !535, metadata !DIExpression()) #14, !dbg !3318
  store i64 %18, i64* %1, align 8, !dbg !3327, !tbaa !1310
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #14, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %18, metadata !3229, metadata !DIExpression()) #14, !dbg !3328
  %19 = icmp eq i64 %18, 0, !dbg !3338
  br i1 %19, label %20, label %21, !dbg !3330

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #14, !dbg !3339
  br label %28, !dbg !3340

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #14, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %23, metadata !3224, metadata !DIExpression()) #14, !dbg !3328
  %24 = icmp eq i8* %23, null, !dbg !3342
  %25 = icmp ne i64 %22, 0, !dbg !3343
  %26 = and i1 %25, %24, !dbg !3344
  br i1 %26, label %27, label %28, !dbg !3344

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !3345
  unreachable, !dbg !3345

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3328
  ret i8* %29, !dbg !3346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3347 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3349, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %0, metadata !3351, metadata !DIExpression()) #14, !dbg !3356
  call void @llvm.dbg.value(metadata i64 1, metadata !3354, metadata !DIExpression()) #14, !dbg !3356
  %2 = icmp slt i64 %0, 0, !dbg !3358
  br i1 %2, label %6, label %3, !dbg !3360

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #14, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %4, metadata !3355, metadata !DIExpression()) #14, !dbg !3356
  %5 = icmp eq i8* %4, null, !dbg !3362
  br i1 %5, label %6, label %7, !dbg !3363

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !3364
  unreachable, !dbg !3364

7:                                                ; preds = %3
  ret i8* %4, !dbg !3365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3352 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3351, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()), !dbg !3366
  %3 = udiv i64 9223372036854775807, %1, !dbg !3367
  %4 = icmp ult i64 %3, %0, !dbg !3367
  br i1 %4, label %8, label %5, !dbg !3368

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #14, !dbg !3369
  call void @llvm.dbg.value(metadata i8* %6, metadata !3355, metadata !DIExpression()), !dbg !3366
  %7 = icmp eq i8* %6, null, !dbg !3370
  br i1 %7, label %8, label %9, !dbg !3371

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !3372
  unreachable, !dbg !3372

9:                                                ; preds = %5
  ret i8* %6, !dbg !3373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3374 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3378, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %1, metadata !3379, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i64 %1, metadata !3189, metadata !DIExpression()) #14, !dbg !3381
  %3 = tail call noalias i8* @malloc(i64 %1) #14, !dbg !3383
  call void @llvm.dbg.value(metadata i8* %3, metadata !3194, metadata !DIExpression()) #14, !dbg !3381
  %4 = icmp eq i8* %3, null, !dbg !3384
  %5 = icmp ne i64 %1, 0, !dbg !3385
  %6 = and i1 %5, %4, !dbg !3386
  br i1 %6, label %7, label %8, !dbg !3386

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3387
  unreachable, !dbg !3387

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3388, metadata !DIExpression()) #14, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %0, metadata !3395, metadata !DIExpression()) #14, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %1, metadata !3396, metadata !DIExpression()) #14, !dbg !3397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #14, !dbg !3399
  ret i8* %3, !dbg !3400
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3403, metadata !DIExpression()), !dbg !3404
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !3405
  %3 = add i64 %2, 1, !dbg !3406
  call void @llvm.dbg.value(metadata i8* %0, metadata !3378, metadata !DIExpression()) #14, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %3, metadata !3379, metadata !DIExpression()) #14, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %3, metadata !3189, metadata !DIExpression()) #14, !dbg !3409
  %4 = tail call noalias i8* @malloc(i64 %3) #14, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %4, metadata !3194, metadata !DIExpression()) #14, !dbg !3409
  %5 = icmp eq i8* %4, null, !dbg !3412
  %6 = icmp ne i64 %3, 0, !dbg !3413
  %7 = and i1 %6, %5, !dbg !3414
  br i1 %7, label %8, label %9, !dbg !3414

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3415
  unreachable, !dbg !3415

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3388, metadata !DIExpression()) #14, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %0, metadata !3395, metadata !DIExpression()) #14, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %3, metadata !3396, metadata !DIExpression()) #14, !dbg !3416
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #14, !dbg !3418
  ret i8* %4, !dbg !3419
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3420 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3421, !tbaa !1273
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.110, i64 0, i64 0), i32 5) #14, !dbg !3422
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i64 0, i64 0), i8* %2) #14, !dbg !3423
  tail call void @abort() #24, !dbg !3424
  unreachable, !dbg !3424
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3425 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3428, metadata !DIExpression()), !dbg !3433
  %3 = icmp eq i64 %0, 0, !dbg !3434
  %4 = icmp eq i64 %1, 0, !dbg !3435
  %5 = or i1 %3, %4, !dbg !3436
  br i1 %5, label %11, label %6, !dbg !3436

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3430, metadata !DIExpression()), !dbg !3437
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3438
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3438
  br i1 %8, label %9, label %11, !dbg !3440

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !3441
  store i32 12, i32* %10, align 4, !dbg !3443, !tbaa !1273
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3427, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %12, metadata !3428, metadata !DIExpression()), !dbg !3433
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #14, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %14, metadata !3429, metadata !DIExpression()), !dbg !3433
  br label %15, !dbg !3445

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3433
  ret i8* %16, !dbg !3446
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3447 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3455, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i8* %1, metadata !3456, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %2, metadata !3457, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3458, metadata !DIExpression()), !dbg !3464
  %6 = bitcast i32* %5 to i8*, !dbg !3465
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3465
  %7 = icmp eq i32* %0, null, !dbg !3466
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3468
  call void @llvm.dbg.value(metadata i32* %8, metadata !3455, metadata !DIExpression()), !dbg !3464
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #14, !dbg !3469
  call void @llvm.dbg.value(metadata i64 %9, metadata !3459, metadata !DIExpression()), !dbg !3464
  %10 = icmp ugt i64 %9, -3, !dbg !3470
  %11 = icmp ne i64 %2, 0, !dbg !3471
  %12 = and i1 %11, %10, !dbg !3472
  br i1 %12, label %13, label %18, !dbg !3472

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #14, !dbg !3473
  br i1 %14, label %18, label %15, !dbg !3474

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3475, !tbaa !1354
  call void @llvm.dbg.value(metadata i8 %16, metadata !3461, metadata !DIExpression()), !dbg !3476
  %17 = zext i8 %16 to i32, !dbg !3477
  store i32 %17, i32* %8, align 4, !dbg !3478, !tbaa !1273
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3464
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #14, !dbg !3479
  ret i64 %19, !dbg !3479
}

; Function Attrs: nounwind
declare !dbg !553 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @extract_trimmed_name(%struct.utmpx* %0) local_unnamed_addr #8 !dbg !3480 {
  call void @llvm.dbg.value(metadata %struct.utmpx* %0, metadata !3487, metadata !DIExpression()), !dbg !3490
  %2 = tail call noalias i8* @xmalloc(i64 33) #14, !dbg !3491
  call void @llvm.dbg.value(metadata i8* %2, metadata !3489, metadata !DIExpression()), !dbg !3490
  %3 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %0, i64 0, i32 4, i64 0, !dbg !3492
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()) #14, !dbg !3502
  call void @llvm.dbg.value(metadata i8* %3, metadata !3500, metadata !DIExpression()) #14, !dbg !3502
  call void @llvm.dbg.value(metadata i64 32, metadata !3501, metadata !DIExpression()) #14, !dbg !3502
  %4 = call i8* @strncpy(i8* nonnull dereferenceable(1) %2, i8* nonnull dereferenceable(1) %3, i64 32), !dbg !3504
  %5 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !3505
  store i8 0, i8* %5, align 1, !dbg !3506, !tbaa !1354
  %6 = tail call i64 @strlen(i8* nonnull %2) #23, !dbg !3507
  call void @llvm.dbg.value(metadata i8* undef, metadata !3488, metadata !DIExpression()), !dbg !3490
  %7 = icmp sgt i64 %6, 0, !dbg !3509
  br i1 %7, label %8, label %17, !dbg !3511

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, i8* %2, i64 %6, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %9, metadata !3488, metadata !DIExpression()), !dbg !3490
  br label %10, !dbg !3513

10:                                               ; preds = %8, %15
  %11 = phi i8* [ %12, %15 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !3488, metadata !DIExpression()), !dbg !3490
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3514
  %13 = load i8, i8* %12, align 1, !dbg !3514, !tbaa !1354
  %14 = icmp eq i8 %13, 32, !dbg !3515
  br i1 %14, label %15, label %17, !dbg !3513

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %12, metadata !3488, metadata !DIExpression()), !dbg !3490
  store i8 0, i8* %12, align 1, !dbg !3516, !tbaa !1354
  %16 = icmp ult i8* %2, %12, !dbg !3509
  br i1 %16, label %10, label %17, !dbg !3511, !llvm.loop !3517

17:                                               ; preds = %10, %15, %1
  ret i8* %2, !dbg !3519
}

; Function Attrs: nofree nounwind
declare i8* @strncpy(i8* noalias returned, i8* noalias nocapture readonly, i64) #15

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @read_utmp(i8* %0, i64* nocapture %1, %struct.utmpx** nocapture %2, i32 %3) local_unnamed_addr #8 !dbg !3520 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3526, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64* %1, metadata !3527, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.utmpx** %2, metadata !3528, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 %3, metadata !3529, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 0, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 0, metadata !3531, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !3532, metadata !DIExpression()), !dbg !3534
  %5 = tail call i32 @utmpxname(i8* %0) #14, !dbg !3535
  tail call void @setutxent() #14, !dbg !3536
  call void @llvm.dbg.value(metadata i64 0, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.utmpx* null, metadata !3532, metadata !DIExpression()), !dbg !3534
  %6 = tail call %struct.utmpx* @getutxent() #14, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.utmpx* %6, metadata !3533, metadata !DIExpression()), !dbg !3534
  %7 = icmp eq %struct.utmpx* %6, null, !dbg !3538
  br i1 %7, label %77, label %8, !dbg !3539

8:                                                ; preds = %4
  %9 = and i32 %3, 2, !dbg !3540
  %10 = icmp eq i32 %9, 0, !dbg !3540
  %11 = and i32 %3, 1, !dbg !3551
  %12 = icmp eq i32 %11, 0, !dbg !3551
  br label %13, !dbg !3539

13:                                               ; preds = %8, %71
  %14 = phi %struct.utmpx* [ %6, %8 ], [ %75, %71 ]
  %15 = phi i64 [ 0, %8 ], [ %74, %71 ]
  %16 = phi %struct.utmpx* [ null, %8 ], [ %73, %71 ]
  %17 = phi i64 [ 0, %8 ], [ %72, %71 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.utmpx* %16, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.utmpx* %14, metadata !3546, metadata !DIExpression()) #14, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %3, metadata !3547, metadata !DIExpression()) #14, !dbg !3553
  %18 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 4, i64 0, !dbg !3554
  %19 = load i8, i8* %18, align 4, !dbg !3554, !tbaa !1354
  %20 = icmp eq i8 %19, 0, !dbg !3554
  br i1 %20, label %25, label %21, !dbg !3554

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 0, !dbg !3554
  %23 = load i16, i16* %22, align 4, !dbg !3554, !tbaa !1355
  %24 = icmp eq i16 %23, 7, !dbg !3554
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i1 [ false, %13 ], [ %24, %21 ], !dbg !3553
  call void @llvm.dbg.value(metadata i1 %26, metadata !3548, metadata !DIExpression()) #14, !dbg !3553
  %27 = or i1 %10, %26, !dbg !3555
  br i1 %27, label %28, label %71, !dbg !3555

28:                                               ; preds = %25
  %29 = xor i1 %26, true, !dbg !3556
  %30 = or i1 %12, %29, !dbg !3556
  br i1 %30, label %42, label %31, !dbg !3556

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %14, i64 0, i32 1, !dbg !3557
  %33 = load i32, i32* %32, align 4, !dbg !3557, !tbaa !3558
  %34 = icmp sgt i32 %33, 0, !dbg !3559
  br i1 %34, label %35, label %42, !dbg !3560

35:                                               ; preds = %31
  %36 = tail call i32 @kill(i32 %33, i32 0) #14, !dbg !3561
  %37 = icmp slt i32 %36, 0, !dbg !3562
  br i1 %37, label %38, label %42, !dbg !3563

38:                                               ; preds = %35
  %39 = tail call i32* @__errno_location() #26, !dbg !3564
  %40 = load i32, i32* %39, align 4, !dbg !3564, !tbaa !1273
  %41 = icmp eq i32 %40, 3, !dbg !3565
  br i1 %41, label %71, label %42, !dbg !3566

42:                                               ; preds = %38, %35, %31, %28
  call void @llvm.dbg.value(metadata i64 %17, metadata !3531, metadata !DIExpression()), !dbg !3534
  %43 = icmp eq i64 %15, %17, !dbg !3567
  br i1 %43, label %44, label %64, !dbg !3570

44:                                               ; preds = %42
  %45 = bitcast %struct.utmpx* %16 to i8*, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %45, metadata !575, metadata !DIExpression()) #14, !dbg !3572
  call void @llvm.dbg.value(metadata i64 384, metadata !577, metadata !DIExpression()) #14, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %17, metadata !578, metadata !DIExpression()) #14, !dbg !3572
  %46 = icmp eq %struct.utmpx* %16, null, !dbg !3574
  br i1 %46, label %47, label %52, !dbg !3576

47:                                               ; preds = %44
  %48 = icmp eq i64 %15, 0, !dbg !3577
  br i1 %48, label %59, label %49, !dbg !3580

49:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i64 %17, metadata !578, metadata !DIExpression()) #14, !dbg !3572
  %50 = icmp ugt i64 %15, 24019198012642645, !dbg !3581
  br i1 %50, label %51, label %59, !dbg !3583

51:                                               ; preds = %49
  tail call void @xalloc_die() #24, !dbg !3584
  unreachable, !dbg !3584

52:                                               ; preds = %44
  %53 = icmp ult i64 %15, 16012798675095096, !dbg !3585
  br i1 %53, label %55, label %54, !dbg !3588

54:                                               ; preds = %52
  tail call void @xalloc_die() #24, !dbg !3589
  unreachable, !dbg !3589

55:                                               ; preds = %52
  %56 = lshr i64 %15, 1, !dbg !3590
  %57 = add nuw nsw i64 %15, 1, !dbg !3591
  %58 = add nuw nsw i64 %57, %56, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %58, metadata !578, metadata !DIExpression()) #14, !dbg !3572
  br label %59

59:                                               ; preds = %47, %49, %55
  %60 = phi i64 [ %58, %55 ], [ %15, %49 ], [ 1, %47 ], !dbg !3572
  call void @llvm.dbg.value(metadata i64 %60, metadata !578, metadata !DIExpression()) #14, !dbg !3572
  %61 = mul nuw nsw i64 %60, 384, !dbg !3593
  %62 = tail call i8* @xrealloc(i8* %45, i64 %61) #14, !dbg !3594
  %63 = bitcast i8* %62 to %struct.utmpx*, !dbg !3595
  call void @llvm.dbg.value(metadata %struct.utmpx* %63, metadata !3532, metadata !DIExpression()), !dbg !3534
  br label %64, !dbg !3596

64:                                               ; preds = %59, %42
  %65 = phi i64 [ %60, %59 ], [ %17, %42 ], !dbg !3534
  %66 = phi %struct.utmpx* [ %63, %59 ], [ %16, %42 ], !dbg !3534
  call void @llvm.dbg.value(metadata %struct.utmpx* %66, metadata !3532, metadata !DIExpression()), !dbg !3534
  %67 = add i64 %15, 1, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %67, metadata !3530, metadata !DIExpression()), !dbg !3534
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %66, i64 %15, !dbg !3598
  %69 = bitcast %struct.utmpx* %68 to i8*, !dbg !3599
  %70 = bitcast %struct.utmpx* %14 to i8*, !dbg !3599
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(384) %69, i8* nonnull align 4 dereferenceable(384) %70, i64 384, i1 false), !dbg !3599, !tbaa.struct !3600
  br label %71, !dbg !3601

71:                                               ; preds = %38, %25, %64
  %72 = phi i64 [ %65, %64 ], [ %17, %25 ], [ %17, %38 ], !dbg !3534
  %73 = phi %struct.utmpx* [ %66, %64 ], [ %16, %25 ], [ %16, %38 ], !dbg !3534
  %74 = phi i64 [ %67, %64 ], [ %15, %25 ], [ %15, %38 ], !dbg !3534
  call void @llvm.dbg.value(metadata i64 %74, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata %struct.utmpx* %73, metadata !3532, metadata !DIExpression()), !dbg !3534
  %75 = tail call %struct.utmpx* @getutxent() #14, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.utmpx* %75, metadata !3533, metadata !DIExpression()), !dbg !3534
  %76 = icmp eq %struct.utmpx* %75, null, !dbg !3538
  br i1 %76, label %77, label %13, !dbg !3539, !llvm.loop !3602

77:                                               ; preds = %71, %4
  %78 = phi %struct.utmpx* [ null, %4 ], [ %73, %71 ], !dbg !3534
  %79 = phi i64 [ 0, %4 ], [ %74, %71 ], !dbg !3534
  call void @llvm.dbg.value(metadata %struct.utmpx* %78, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %79, metadata !3530, metadata !DIExpression()), !dbg !3534
  tail call void @endutxent() #14, !dbg !3604
  store i64 %79, i64* %1, align 8, !dbg !3605, !tbaa !1310
  store %struct.utmpx* %78, %struct.utmpx** %2, align 8, !dbg !3606, !tbaa !1218
  ret i32 0, !dbg !3607
}

declare !dbg !580 i32 @utmpxname(i8*) local_unnamed_addr #3

declare !dbg !584 void @setutxent() local_unnamed_addr #3

declare !dbg !585 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !611 i32 @kill(i32, i32) local_unnamed_addr #2

declare !dbg !610 void @endutxent() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3608 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3614, metadata !DIExpression()), !dbg !3619
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #14, !dbg !3620
  call void @llvm.dbg.value(metadata i1 undef, metadata !3615, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3621, metadata !DIExpression()), !dbg !3624
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3626
  %4 = load i32, i32* %3, align 8, !dbg !3626, !tbaa !3627
  %5 = and i32 %4, 32, !dbg !3626
  %6 = icmp eq i32 %5, 0, !dbg !3628
  call void @llvm.dbg.value(metadata i1 %6, metadata !3617, metadata !DIExpression()), !dbg !3619
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #14, !dbg !3629
  %8 = icmp ne i32 %7, 0, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %8, metadata !3618, metadata !DIExpression()), !dbg !3619
  br i1 %6, label %9, label %19, !dbg !3631

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3633
  call void @llvm.dbg.value(metadata i1 %10, metadata !3615, metadata !DIExpression()), !dbg !3619
  %11 = xor i1 %8, true, !dbg !3634
  %12 = or i1 %10, %11, !dbg !3634
  %13 = sext i1 %8 to i32, !dbg !3634
  br i1 %12, label %22, label %14, !dbg !3634

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !3635
  %16 = load i32, i32* %15, align 4, !dbg !3635, !tbaa !1273
  %17 = icmp ne i32 %16, 9, !dbg !3636
  %18 = sext i1 %17 to i32, !dbg !3637
  br label %22, !dbg !3637

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3638

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !3640
  store i32 0, i32* %21, align 4, !dbg !3642, !tbaa !1273
  br label %22, !dbg !3640

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3619
  ret i32 %23, !dbg !3643
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3644 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3646, metadata !DIExpression()), !dbg !3651
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3652
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #14, !dbg !3652
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3647, metadata !DIExpression()), !dbg !3653
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #14, !dbg !3654
  %5 = icmp eq i32 %4, 0, !dbg !3654
  br i1 %5, label %6, label %13, !dbg !3656

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3657
  %8 = load i16, i16* %7, align 16, !dbg !3657
  %9 = icmp eq i16 %8, 67, !dbg !3657
  br i1 %9, label %13, label %10, !dbg !3658

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.124, i64 0, i64 0), i64 6), !dbg !3659
  %12 = icmp ne i32 %11, 0, !dbg !3660
  br label %13, !dbg !3658

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3651
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #14, !dbg !3661
  ret i1 %14, !dbg !3661
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3662 {
  %1 = tail call i8* @nl_langinfo(i32 14) #14, !dbg !3665
  call void @llvm.dbg.value(metadata i8* %1, metadata !3664, metadata !DIExpression()), !dbg !3666
  %2 = icmp eq i8* %1, null, !dbg !3667
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.127, i64 0, i64 0), i8* %1, !dbg !3669
  call void @llvm.dbg.value(metadata i8* %3, metadata !3664, metadata !DIExpression()), !dbg !3666
  %4 = load i8, i8* %3, align 1, !dbg !3670, !tbaa !1354
  %5 = icmp eq i8 %4, 0, !dbg !3674
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i8* %3, !dbg !3675
  call void @llvm.dbg.value(metadata i8* %6, metadata !3664, metadata !DIExpression()), !dbg !3666
  ret i8* %6, !dbg !3676
}

; Function Attrs: nounwind
declare !dbg !1051 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3677 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3681, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i8* %1, metadata !3682, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 %2, metadata !3683, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()) #14, !dbg !3694
  call void @llvm.dbg.value(metadata i8* %1, metadata !3688, metadata !DIExpression()) #14, !dbg !3694
  call void @llvm.dbg.value(metadata i64 %2, metadata !3689, metadata !DIExpression()) #14, !dbg !3694
  call void @llvm.dbg.value(metadata i32 %0, metadata !3696, metadata !DIExpression()) #14, !dbg !3702
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #14, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %4, metadata !3701, metadata !DIExpression()) #14, !dbg !3702
  call void @llvm.dbg.value(metadata i8* %4, metadata !3690, metadata !DIExpression()) #14, !dbg !3694
  %5 = icmp eq i8* %4, null, !dbg !3705
  br i1 %5, label %6, label %9, !dbg !3706

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3707
  br i1 %7, label %19, label %8, !dbg !3710

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3711, !tbaa !1354
  br label %19, !dbg !3712

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %10, metadata !3691, metadata !DIExpression()) #14, !dbg !3714
  %11 = icmp ult i64 %10, %2, !dbg !3715
  br i1 %11, label %12, label %14, !dbg !3717

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %1, metadata !3720, metadata !DIExpression()) #14, !dbg !3725
  call void @llvm.dbg.value(metadata i8* %4, metadata !3723, metadata !DIExpression()) #14, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %13, metadata !3724, metadata !DIExpression()) #14, !dbg !3725
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #14, !dbg !3727
  br label %19, !dbg !3728

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3729
  br i1 %15, label %19, label %16, !dbg !3732

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3733
  call void @llvm.dbg.value(metadata i8* %1, metadata !3720, metadata !DIExpression()) #14, !dbg !3735
  call void @llvm.dbg.value(metadata i8* %4, metadata !3723, metadata !DIExpression()) #14, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %17, metadata !3724, metadata !DIExpression()) #14, !dbg !3735
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #14, !dbg !3737
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3738
  store i8 0, i8* %18, align 1, !dbg !3739, !tbaa !1354
  br label %19, !dbg !3740

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3741
  ret i32 %20, !dbg !3742
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3745, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 %0, metadata !3696, metadata !DIExpression()) #14, !dbg !3747
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #14, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %2, metadata !3701, metadata !DIExpression()) #14, !dbg !3747
  ret i8* %2, !dbg !3750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3751 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3757, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 0, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 0, metadata !3760, metadata !DIExpression()), !dbg !3761
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %2, metadata !3759, metadata !DIExpression()), !dbg !3761
  %3 = icmp slt i32 %2, 0, !dbg !3763
  br i1 %3, label %4, label %6, !dbg !3765

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3766
  br label %24, !dbg !3767

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #14, !dbg !3768
  %8 = icmp eq i32 %7, 0, !dbg !3768
  br i1 %8, label %13, label %9, !dbg !3770

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !3771
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #14, !dbg !3772
  %12 = icmp eq i64 %11, -1, !dbg !3773
  br i1 %12, label %16, label %13, !dbg !3774

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #14, !dbg !3775
  %15 = icmp eq i32 %14, 0, !dbg !3775
  br i1 %15, label %16, label %18, !dbg !3776

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3758, metadata !DIExpression()), !dbg !3761
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3777
  call void @llvm.dbg.value(metadata i32 %21, metadata !3760, metadata !DIExpression()), !dbg !3761
  br label %24, !dbg !3778

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !3779
  %20 = load i32, i32* %19, align 4, !dbg !3779, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 %20, metadata !3758, metadata !DIExpression()), !dbg !3761
  call void @llvm.dbg.value(metadata i32 %20, metadata !3758, metadata !DIExpression()), !dbg !3761
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3777
  call void @llvm.dbg.value(metadata i32 %21, metadata !3760, metadata !DIExpression()), !dbg !3761
  %22 = icmp eq i32 %20, 0, !dbg !3780
  br i1 %22, label %24, label %23, !dbg !3778

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3782, !tbaa !1273
  call void @llvm.dbg.value(metadata i32 -1, metadata !3760, metadata !DIExpression()), !dbg !3761
  br label %24, !dbg !3784

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3761
  ret i32 %25, !dbg !3785
}

; Function Attrs: nofree nounwind
declare !dbg !1060 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1095 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1096 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3786 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3792, metadata !DIExpression()), !dbg !3793
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3794
  br i1 %2, label %6, label %3, !dbg !3796

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #14, !dbg !3797
  %5 = icmp eq i32 %4, 0, !dbg !3797
  br i1 %5, label %6, label %8, !dbg !3798

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3799
  br label %17, !dbg !3800

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3801, metadata !DIExpression()) #14, !dbg !3806
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3808
  %10 = load i32, i32* %9, align 8, !dbg !3808, !tbaa !3627
  %11 = and i32 %10, 256, !dbg !3810
  %12 = icmp eq i32 %11, 0, !dbg !3810
  br i1 %12, label %15, label %13, !dbg !3811

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #14, !dbg !3812
  br label %15, !dbg !3812

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3813
  br label %17, !dbg !3814

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3793
  ret i32 %18, !dbg !3815
}

; Function Attrs: nofree nounwind
declare !dbg !1104 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3816 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3823, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %1, metadata !3824, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i32 %2, metadata !3825, metadata !DIExpression()), !dbg !3829
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3830
  %5 = load i8*, i8** %4, align 8, !dbg !3830, !tbaa !3831
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3832
  %7 = load i8*, i8** %6, align 8, !dbg !3832, !tbaa !3833
  %8 = icmp eq i8* %5, %7, !dbg !3834
  br i1 %8, label %9, label %28, !dbg !3835

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3836
  %11 = load i8*, i8** %10, align 8, !dbg !3836, !tbaa !1384
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3837
  %13 = load i8*, i8** %12, align 8, !dbg !3837, !tbaa !3838
  %14 = icmp eq i8* %11, %13, !dbg !3839
  br i1 %14, label %15, label %28, !dbg !3840

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3841
  %17 = load i8*, i8** %16, align 8, !dbg !3841, !tbaa !3842
  %18 = icmp eq i8* %17, null, !dbg !3843
  br i1 %18, label %19, label %28, !dbg !3844

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #14, !dbg !3845
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #14, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %21, metadata !3826, metadata !DIExpression()), !dbg !3847
  %22 = icmp eq i64 %21, -1, !dbg !3848
  br i1 %22, label %30, label %23, !dbg !3850

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3851
  %25 = load i32, i32* %24, align 8, !dbg !3852, !tbaa !3627
  %26 = and i32 %25, -17, !dbg !3852
  store i32 %26, i32* %24, align 8, !dbg !3852, !tbaa !3627
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3853
  store i64 %21, i64* %27, align 8, !dbg !3854, !tbaa !3855
  br label %30, !dbg !3856

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3857
  br label %30, !dbg !3858

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3829
  ret i32 %31, !dbg !3859
}

; Function Attrs: nofree nounwind
declare !dbg !1180 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { nofree nounwind readonly }
attributes #20 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!360, !2, !11, !95, !101, !169, !211, !481, !354, !523, !544, !547, !550, !569, !615, !654, !661, !1054, !1057, !1101, !1142}
!llvm.ident = !{!1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183, !1183}
!llvm.module.flags = !{!1184, !1185, !1186, !1187, !1188}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !12, line: 46, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !89, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!13 = !{!14, !77, !81, !85}
!14 = !DISubprogram(name: "close_stream", scope: !15, file: !15, line: 2, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!15 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!22 = !{!23, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !39, !40, !41, !42, !46, !48, !50, !54, !57, !59, !62, !65, !66, !68, !72, !73}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !20, file: !21, line: 51, baseType: !18, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !20, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !20, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !20, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !20, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !20, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !20, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !20, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !20, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !20, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !20, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !20, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !20, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !21, line: 36, flags: DIFlagFwdDecl)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !20, file: !21, line: 70, baseType: !19, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !20, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !20, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !20, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 152, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !20, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !20, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!49 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !20, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !20, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !21, line: 43, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !20, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 153, baseType: !45)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !20, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !21, line: 37, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !20, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !21, line: 38, flags: DIFlagFwdDecl)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !20, file: !21, line: 93, baseType: !19, size: 64, offset: 1344)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !20, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !20, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !20, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !20, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 20)
!77 = !DISubprogram(name: "dcgettext", scope: !78, file: !78, line: 51, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!78 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!79 = !DISubroutineType(types: !80)
!80 = !{!25, !6, !6, !18}
!81 = !DISubprogram(name: "quotearg_colon", scope: !82, file: !82, line: 391, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!82 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!83 = !DISubroutineType(types: !84)
!84 = !{!25, !6}
!85 = !DISubprogram(name: "error", scope: !86, file: !86, line: 52, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!86 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!87 = !DISubroutineType(types: !88)
!88 = !{null, !18, !18, !6, null}
!89 = !{!9, !90}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !12, line: 56, type: !92, isLocal: true, isDefinition: true)
!92 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "exit_failure", scope: !95, file: !96, line: 24, type: !98, isLocal: false, isDefinition: true)
!95 = distinct !DICompileUnit(language: DW_LANG_C99, file: !96, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !97, splitDebugInlining: false, nameTableKind: None)
!96 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!97 = !{!93}
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "long_options", scope: !101, file: !102, line: 34, type: !164, isLocal: true, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !103, globals: !163, splitDebugInlining: false, nameTableKind: None)
!102 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !{!104, !119}
!104 = !DISubprogram(name: "getopt_long", scope: !105, file: !105, line: 66, type: !106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!105 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!106 = !DISubroutineType(types: !107)
!107 = !{!18, !18, !108, !6, !110, !117}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !105, line: 50, size: 256, elements: !113)
!113 = !{!114, !115, !116, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !105, line: 52, baseType: !6, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !112, file: !105, line: 55, baseType: !18, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !112, file: !105, line: 56, baseType: !117, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !112, file: !105, line: 57, baseType: !18, size: 32, offset: 192)
!119 = !DISubprogram(name: "version_etc_va", scope: !120, file: !120, line: 63, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!120 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !6, !6, !6, !155}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !124, file: !21, line: 51, baseType: !18, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !124, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !124, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !124, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !124, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !124, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !124, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !124, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !124, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !124, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !124, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !124, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !124, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !124, file: !21, line: 70, baseType: !123, size: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !124, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !124, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !124, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !124, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !124, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !124, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !124, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !124, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !124, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !124, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !124, file: !21, line: 93, baseType: !123, size: 64, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !124, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !124, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !124, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !124, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !102, line: 72, size: 192, elements: !157)
!157 = !{!158, !160, !161, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !156, file: !102, line: 72, baseType: !159, size: 32)
!159 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !156, file: !102, line: 72, baseType: !159, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !156, file: !102, line: 72, baseType: !67, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !156, file: !102, line: 72, baseType: !67, size: 64, offset: 128)
!163 = !{!99}
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 768, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 3)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "program_name", scope: !169, file: !170, line: 33, type: !6, isLocal: false, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, globals: !208, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!67, !172, !25}
!172 = !DISubprogram(name: "fputs", scope: !173, file: !173, line: 626, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!173 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!174 = !DISubroutineType(types: !175)
!175 = !{!18, !6, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !177, file: !21, line: 51, baseType: !18, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !177, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !177, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !177, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !177, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !177, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !177, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !177, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !177, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !177, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !177, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !177, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !177, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !177, file: !21, line: 70, baseType: !176, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !177, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !177, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !177, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !177, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !177, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !177, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !177, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !177, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !177, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !177, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !177, file: !21, line: 93, baseType: !176, size: 64, offset: 1344)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !177, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !177, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !177, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !177, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!208 = !{!167}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !211, file: !212, line: 85, type: !348, isLocal: false, isDefinition: true)
!211 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !213, retainedTypes: !247, globals: !321, splitDebugInlining: false, nameTableKind: None)
!212 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!213 = !{!214, !227, !232}
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !82, line: 32, baseType: !159, size: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!216 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!220 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!221 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!222 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!223 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!224 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!225 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!226 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!227 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !82, line: 242, baseType: !159, size: 32, elements: !228)
!228 = !{!229, !230, !231}
!229 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!231 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !233, line: 46, baseType: !159, size: 32, elements: !234)
!233 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!235 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!236 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!237 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!238 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!239 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!240 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!241 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!242 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!243 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!246 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!247 = !{!248, !254, !270, !274, !18, !47, !277, !69, !294, !298, !77, !304, !308, !25, !312, !315, !318}
!248 = !DISubprogram(name: "xmemdup", scope: !249, file: !249, line: 62, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!249 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!250 = !DISubroutineType(types: !251)
!251 = !{!67, !252, !71}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!254 = !DISubprogram(name: "quotearg_alloc_mem", scope: !82, file: !82, line: 342, type: !255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!255 = !DISubroutineType(types: !256)
!256 = !{!25, !6, !71, !257, !258}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !212, line: 65, size: 448, elements: !261)
!261 = !{!262, !263, !264, !268, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !260, file: !212, line: 68, baseType: !214, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !260, file: !212, line: 71, baseType: !18, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !260, file: !212, line: 75, baseType: !265, size: 256, offset: 64)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 8)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !260, file: !212, line: 78, baseType: !6, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !260, file: !212, line: 81, baseType: !6, size: 64, offset: 384)
!270 = !DISubprogram(name: "free", scope: !271, file: !271, line: 565, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!271 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!272 = !DISubroutineType(types: !273)
!273 = !{null, !67}
!274 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !82, file: !82, line: 408, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!275 = !DISubroutineType(types: !276)
!276 = !{!25, !18, !6, !6, !6, !71}
!277 = !DISubprogram(name: "rpl_mbrtowc", scope: !278, file: !278, line: 717, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!278 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!279 = !DISubroutineType(types: !280)
!280 = !{!71, !117, !6, !71, !281}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !284)
!283 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !282, file: !283, line: 15, baseType: !18, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !282, file: !283, line: 20, baseType: !287, size: 32, offset: 32)
!287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !283, line: 16, size: 32, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !287, file: !283, line: 18, baseType: !159, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !287, file: !283, line: 19, baseType: !291, size: 32)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 4)
!294 = !DISubprogram(name: "iswprint", scope: !295, file: !295, line: 120, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!295 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!296 = !DISubroutineType(types: !297)
!297 = !{!18, !159}
!298 = !DISubprogram(name: "mbsinit", scope: !299, file: !299, line: 292, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!299 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!300 = !DISubroutineType(types: !301)
!301 = !{!18, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!304 = !DISubprogram(name: "locale_charset", scope: !305, file: !305, line: 35, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!305 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!306 = !DISubroutineType(types: !307)
!307 = !{!6}
!308 = !DISubprogram(name: "c_strcasecmp", scope: !309, file: !309, line: 42, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!309 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!310 = !DISubroutineType(types: !311)
!311 = !{!18, !6, !6}
!312 = !DISubprogram(name: "xmalloc", scope: !249, file: !249, line: 53, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!313 = !DISubroutineType(types: !314)
!314 = !{!67, !71}
!315 = !DISubprogram(name: "xalloc_die", scope: !249, file: !249, line: 51, type: !316, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!316 = !DISubroutineType(types: !317)
!317 = !{null}
!318 = !DISubprogram(name: "xrealloc", scope: !249, file: !249, line: 59, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!319 = !DISubroutineType(types: !320)
!320 = !{!67, !67, !71}
!321 = !{!209, !322, !328, !330, !332, !337, !344, !346}
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !211, file: !212, line: 101, type: !324, isLocal: false, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 320, elements: !326)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!326 = !{!327}
!327 = !DISubrange(count: 10)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !211, file: !212, line: 1052, type: !260, isLocal: false, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !211, file: !212, line: 116, type: !260, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "slot0", scope: !211, file: !212, line: 842, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 256)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "slotvec", scope: !211, file: !212, line: 845, type: !339, isLocal: true, isDefinition: true)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !212, line: 834, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !212, line: 836, baseType: !69, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !340, file: !212, line: 837, baseType: !25, size: 64, offset: 64)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "nslots", scope: !211, file: !212, line: 843, type: !18, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "slotvec0", scope: !211, file: !212, line: 844, type: !340, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 704, elements: !350)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!350 = !{!351}
!351 = !DISubrange(count: 11)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !354, file: !355, line: 26, type: !357, isLocal: false, isDefinition: true)
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !356, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!356 = !{!352}
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 47)
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !362, retainedTypes: !368, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "src/users.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!362 = !{!363, !214}
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !364, line: 208, baseType: !159, size: 32, elements: !365)
!364 = !DIFile(filename: "./lib/readutmp.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!365 = !{!366, !367}
!366 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1, isUnsigned: true)
!367 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2, isUnsigned: true)
!368 = !{!77, !369, !404, !408, !412, !415, !416, !6, !67, !420, !428, !85, !432, !466, !270, !469, !474, !69, !315, !312, !424, !480}
!369 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!370 = !DISubroutineType(types: !371)
!371 = !{!18, !6, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !373, file: !21, line: 51, baseType: !18, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !373, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !373, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !373, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !373, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !373, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !373, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !373, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !373, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !373, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !373, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !373, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !373, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !373, file: !21, line: 70, baseType: !372, size: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !373, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !373, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !373, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !373, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !373, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !373, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !373, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !373, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !373, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !373, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !373, file: !21, line: 93, baseType: !372, size: 64, offset: 1344)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !373, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !373, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !373, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !373, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!404 = !DISubprogram(name: "set_program_name", scope: !405, file: !405, line: 37, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!405 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!406 = !DISubroutineType(types: !407)
!407 = !{null, !6}
!408 = !DISubprogram(name: "setlocale", scope: !409, file: !409, line: 122, type: !410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!409 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!410 = !DISubroutineType(types: !411)
!411 = !{!25, !18, !6}
!412 = !DISubprogram(name: "bindtextdomain", scope: !78, file: !78, line: 86, type: !413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!413 = !DISubroutineType(types: !414)
!414 = !{!25, !6, !6}
!415 = !DISubprogram(name: "textdomain", scope: !78, file: !78, line: 82, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!416 = !DISubprogram(name: "atexit", scope: !271, file: !271, line: 595, type: !417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!417 = !DISubroutineType(types: !418)
!418 = !{!18, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!420 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !421, file: !421, line: 33, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!421 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!422 = !DISubroutineType(types: !423)
!423 = !{null, !18, !424, !6, !6, !6, !92, !425, null}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !18}
!428 = !DISubprogram(name: "quote", scope: !429, file: !429, line: 44, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!429 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!430 = !DISubroutineType(types: !431)
!431 = !{!6, !6}
!432 = !DISubprogram(name: "read_utmp", scope: !364, file: !364, line: 215, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!433 = !DISubroutineType(types: !434)
!434 = !{!18, !6, !257, !435, !18}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !438, line: 55, size: 3072, elements: !439)
!438 = !DIFile(filename: "/usr/include/bits/utmpx.h", directory: "")
!439 = !{!440, !442, !444, !448, !449, !450, !451, !456, !458, !463, !465}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !437, file: !438, line: 57, baseType: !441, size: 16)
!441 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !437, file: !438, line: 58, baseType: !443, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !44, line: 154, baseType: !18)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !437, file: !438, line: 59, baseType: !445, size: 256, offset: 64)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !437, file: !438, line: 61, baseType: !291, size: 32, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !437, file: !438, line: 63, baseType: !445, size: 256, offset: 352)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !437, file: !438, line: 65, baseType: !334, size: 2048, offset: 608)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !437, file: !438, line: 67, baseType: !452, size: 32, offset: 2656)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !438, line: 42, size: 32, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !452, file: !438, line: 45, baseType: !441, size: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !452, file: !438, line: 46, baseType: !441, size: 16, offset: 16)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !437, file: !438, line: 74, baseType: !457, size: 32, offset: 2688)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !44, line: 41, baseType: !18)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !437, file: !438, line: 79, baseType: !459, size: 64, offset: 2720)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !437, file: !438, line: 75, size: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !459, file: !438, line: 77, baseType: !457, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !459, file: !438, line: 78, baseType: !457, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !437, file: !438, line: 84, baseType: !464, size: 128, offset: 2784)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 128, elements: !292)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !437, file: !438, line: 85, baseType: !74, size: 160, offset: 2912)
!466 = !DISubprogram(name: "quotearg_n_style_colon", scope: !82, file: !82, line: 397, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!467 = !DISubroutineType(types: !468)
!468 = !{!25, !18, !214, !6}
!469 = !DISubprogram(name: "extract_trimmed_name", scope: !364, file: !364, line: 214, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!470 = !DISubroutineType(types: !471)
!471 = !{!25, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!474 = !DISubprogram(name: "qsort", scope: !271, file: !271, line: 830, type: !475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !67, !71, !71, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!18, !252, !252}
!480 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !483, retainedTypes: !487, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!483 = !{!484}
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !482, line: 40, baseType: !159, size: 32, elements: !485)
!485 = !{!486}
!486 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!487 = !{!77, !488, !67}
!488 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!489 = !DISubroutineType(types: !490)
!490 = !{!18, !6, !491}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !492, file: !21, line: 51, baseType: !18, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !492, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !492, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !492, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !492, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !492, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !492, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !492, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !492, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !492, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !492, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !492, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !492, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !492, file: !21, line: 70, baseType: !491, size: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !492, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !492, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !492, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !492, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !492, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !492, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !492, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !492, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !492, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !492, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !492, file: !21, line: 93, baseType: !491, size: 64, offset: 1344)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !492, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !492, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !492, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !492, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!523 = distinct !DICompileUnit(language: DW_LANG_C99, file: !524, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !525, retainedTypes: !538, splitDebugInlining: false, nameTableKind: None)
!524 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!525 = !{!526}
!526 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !527, file: !249, line: 186, baseType: !159, size: 32, elements: !536)
!527 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !528, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !531)
!528 = !DISubroutineType(types: !529)
!529 = !{!67, !67, !530, !69}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!531 = !{!532, !533, !534, !535}
!532 = !DILocalVariable(name: "p", arg: 1, scope: !527, file: !249, line: 174, type: !67)
!533 = !DILocalVariable(name: "pn", arg: 2, scope: !527, file: !249, line: 174, type: !530)
!534 = !DILocalVariable(name: "s", arg: 3, scope: !527, file: !249, line: 174, type: !69)
!535 = !DILocalVariable(name: "n", scope: !527, file: !249, line: 176, type: !69)
!536 = !{!537}
!537 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!538 = !{!69, !315, !312, !318, !25, !270, !67, !539, !542}
!539 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!540 = !DISubroutineType(types: !541)
!541 = !{!67, !71, !71}
!542 = !DISubprogram(name: "rpl_calloc", scope: !543, file: !543, line: 688, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!543 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!544 = distinct !DICompileUnit(language: DW_LANG_C99, file: !545, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !546, splitDebugInlining: false, nameTableKind: None)
!545 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!546 = !{!77, !85}
!547 = distinct !DICompileUnit(language: DW_LANG_C99, file: !548, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !549, splitDebugInlining: false, nameTableKind: None)
!548 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!549 = !{!67}
!550 = distinct !DICompileUnit(language: DW_LANG_C99, file: !551, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !552, splitDebugInlining: false, nameTableKind: None)
!551 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!552 = !{!553, !69, !565}
!553 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!554 = !DISubroutineType(types: !555)
!555 = !{!71, !117, !6, !71, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !558)
!558 = !{!559, !560}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !557, file: !283, line: 15, baseType: !18, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !557, file: !283, line: 20, baseType: !561, size: 32, offset: 32)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !557, file: !283, line: 16, size: 32, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !561, file: !283, line: 18, baseType: !159, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !561, file: !283, line: 19, baseType: !291, size: 32)
!565 = !DISubprogram(name: "hard_locale", scope: !566, file: !566, line: 26, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!566 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!567 = !DISubroutineType(types: !568)
!568 = !{!92, !18}
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !571, retainedTypes: !579, splitDebugInlining: false, nameTableKind: None)
!570 = !DIFile(filename: "lib/readutmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!571 = !{!363, !572}
!572 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !573, file: !249, line: 186, baseType: !159, size: 32, elements: !536)
!573 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !528, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !574)
!574 = !{!575, !576, !577, !578}
!575 = !DILocalVariable(name: "p", arg: 1, scope: !573, file: !249, line: 174, type: !67)
!576 = !DILocalVariable(name: "pn", arg: 2, scope: !573, file: !249, line: 174, type: !530)
!577 = !DILocalVariable(name: "s", arg: 3, scope: !573, file: !249, line: 174, type: !69)
!578 = !DILocalVariable(name: "n", scope: !573, file: !249, line: 176, type: !69)
!579 = !{!312, !25, !580, !584, !585, !67, !610, !611, !69, !315, !318}
!580 = !DISubprogram(name: "utmpxname", scope: !581, file: !581, line: 93, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!581 = !DIFile(filename: "/usr/include/utmpx.h", directory: "")
!582 = !DISubroutineType(types: !583)
!583 = !{!18, !6}
!584 = !DISubprogram(name: "setutxent", scope: !581, file: !581, line: 53, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!585 = !DISubprogram(name: "getutxent", scope: !581, file: !581, line: 65, type: !586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!586 = !DISubroutineType(types: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !438, line: 55, size: 3072, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !602, !603, !608, !609}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !589, file: !438, line: 57, baseType: !441, size: 16)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !589, file: !438, line: 58, baseType: !443, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !589, file: !438, line: 59, baseType: !445, size: 256, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !589, file: !438, line: 61, baseType: !291, size: 32, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !589, file: !438, line: 63, baseType: !445, size: 256, offset: 352)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !589, file: !438, line: 65, baseType: !334, size: 2048, offset: 608)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !589, file: !438, line: 67, baseType: !598, size: 32, offset: 2656)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !438, line: 42, size: 32, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !598, file: !438, line: 45, baseType: !441, size: 16)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !598, file: !438, line: 46, baseType: !441, size: 16, offset: 16)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !589, file: !438, line: 74, baseType: !457, size: 32, offset: 2688)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !589, file: !438, line: 79, baseType: !604, size: 64, offset: 2720)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !589, file: !438, line: 75, size: 64, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !604, file: !438, line: 77, baseType: !457, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !604, file: !438, line: 78, baseType: !457, size: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !589, file: !438, line: 84, baseType: !464, size: 128, offset: 2784)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !589, file: !438, line: 85, baseType: !74, size: 160, offset: 2912)
!610 = !DISubprogram(name: "endutxent", scope: !581, file: !581, line: 59, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!611 = !DISubprogram(name: "kill", scope: !612, file: !612, line: 112, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!612 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!613 = !DISubroutineType(types: !614)
!614 = !{!18, !18, !18}
!615 = distinct !DICompileUnit(language: DW_LANG_C99, file: !616, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !617, splitDebugInlining: false, nameTableKind: None)
!616 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!617 = !{!618}
!618 = !DISubprogram(name: "rpl_fclose", scope: !619, file: !619, line: 672, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!619 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!620 = !DISubroutineType(types: !621)
!621 = !{!18, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !623, file: !21, line: 51, baseType: !18, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !623, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !623, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !623, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !623, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !623, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !623, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !623, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !623, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !623, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !623, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !623, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !623, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !623, file: !21, line: 70, baseType: !622, size: 64, offset: 832)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !623, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !623, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !623, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !623, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !623, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !623, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !623, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !623, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !623, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !623, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !623, file: !21, line: 93, baseType: !622, size: 64, offset: 1344)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !623, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !623, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !623, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !623, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!654 = distinct !DICompileUnit(language: DW_LANG_C99, file: !655, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !656, splitDebugInlining: false, nameTableKind: None)
!655 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!656 = !{!657}
!657 = !DISubprogram(name: "setlocale_null_r", scope: !658, file: !658, line: 64, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!658 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!659 = !DISubroutineType(types: !660)
!660 = !{!18, !18, !25, !71}
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !663, retainedTypes: !1050, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = !{!664}
!664 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !665, line: 41, baseType: !159, size: 32, elements: !666)
!665 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049}
!667 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!668 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!669 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!670 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!671 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!672 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!673 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!674 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!675 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!676 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!677 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!678 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!679 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!680 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!681 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!682 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!683 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!684 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!685 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!686 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!687 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!688 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!689 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!690 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!691 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!692 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!693 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!694 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!695 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!696 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!697 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!698 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!699 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!700 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!701 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!702 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!703 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!704 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!705 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!706 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!707 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!708 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!709 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!710 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!711 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!712 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!713 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!714 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!715 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!716 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!775 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!778 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!779 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!780 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!781 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!782 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!783 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!784 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!785 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!786 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!787 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!788 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!789 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!862 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!935 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!936 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!937 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!938 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!939 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!940 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!941 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!942 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!943 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!944 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!945 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!946 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!947 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!948 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!949 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!951 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!952 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!953 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!954 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!955 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!956 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!982 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!983 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!984 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!985 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!986 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!991 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!992 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!993 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!994 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1050 = !{!1051, !67}
!1051 = !DISubprogram(name: "nl_langinfo", scope: !665, file: !665, line: 661, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!25, !18}
!1054 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1055, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1056, splitDebugInlining: false, nameTableKind: None)
!1055 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1056 = !{!67, !408}
!1057 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1058, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1059, splitDebugInlining: false, nameTableKind: None)
!1058 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1059 = !{!1060, !1095, !1096, !1100}
!1060 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!18, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1064, file: !21, line: 51, baseType: !18, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1064, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1064, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1064, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1064, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1064, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1064, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1064, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1064, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1064, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1064, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1064, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1064, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1064, file: !21, line: 70, baseType: !1063, size: 64, offset: 832)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1064, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1064, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1064, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1064, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1064, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1064, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1064, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1064, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1064, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1064, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1064, file: !21, line: 93, baseType: !1063, size: 64, offset: 1344)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1064, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1064, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1064, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1064, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1095 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1096 = !DISubprogram(name: "lseek", scope: !1097, file: !1097, line: 334, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1097 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!45, !18, !45, !18}
!1100 = !DISubprogram(name: "rpl_fflush", scope: !619, file: !619, line: 718, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1102, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1103, splitDebugInlining: false, nameTableKind: None)
!1102 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1103 = !{!67, !1104, !1139}
!1104 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!18, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1108, file: !21, line: 51, baseType: !18, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1108, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1108, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1108, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1108, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1108, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1108, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1108, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1108, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1108, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1108, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1108, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1108, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1108, file: !21, line: 70, baseType: !1107, size: 64, offset: 832)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1108, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1108, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1108, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1108, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1108, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1108, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1108, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1108, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1108, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1108, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1108, file: !21, line: 93, baseType: !1107, size: 64, offset: 1344)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1108, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1108, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1108, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1108, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1139 = !DISubprogram(name: "rpl_fseeko", scope: !619, file: !619, line: 1034, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!18, !1107, !45, !18}
!1142 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1143, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1144, splitDebugInlining: false, nameTableKind: None)
!1143 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1144 = !{!67, !1145, !1096, !1180}
!1145 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!18, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1149, file: !21, line: 51, baseType: !18, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1149, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1149, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1149, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1149, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1149, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1149, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1149, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1149, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1149, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1149, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1149, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1149, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1149, file: !21, line: 70, baseType: !1148, size: 64, offset: 832)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1149, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1149, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1149, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1149, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1149, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1149, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1149, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1149, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1149, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1149, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1149, file: !21, line: 93, baseType: !1148, size: 64, offset: 1344)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1149, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1149, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1149, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1149, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1180 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!18, !1148, !45, !18}
!1183 = !{!"clang version 10.0.0 "}
!1184 = !{i32 7, !"Dwarf Version", i32 4}
!1185 = !{i32 2, !"Debug Info Version", i32 3}
!1186 = !{i32 1, !"wchar_size", i32 4}
!1187 = !{i32 7, !"PIC Level", i32 2}
!1188 = !{i32 7, !"PIE Level", i32 2}
!1189 = distinct !DISubprogram(name: "usage", scope: !361, file: !361, line: 99, type: !426, scopeLine: 100, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1190)
!1190 = !{!1191}
!1191 = !DILocalVariable(name: "status", arg: 1, scope: !1189, file: !361, line: 99, type: !18)
!1192 = !DILocalVariable(name: "infomap", scope: !1193, file: !1194, line: 636, type: !1206)
!1193 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1194, file: !1194, line: 634, type: !406, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1195)
!1194 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1195 = !{!1196, !1192, !1197, !1198, !1205}
!1196 = !DILocalVariable(name: "program", arg: 1, scope: !1193, file: !1194, line: 634, type: !6)
!1197 = !DILocalVariable(name: "node", scope: !1193, file: !1194, line: 646, type: !6)
!1198 = !DILocalVariable(name: "map_prog", scope: !1193, file: !1194, line: 647, type: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1193, file: !1194, line: 636, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1201, file: !1194, line: 636, baseType: !6, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1201, file: !1194, line: 636, baseType: !6, size: 64, offset: 64)
!1205 = !DILocalVariable(name: "lc_messages", scope: !1193, file: !1194, line: 659, type: !6)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 896, elements: !1207)
!1207 = !{!1208}
!1208 = !DISubrange(count: 7)
!1209 = !DILocation(line: 636, column: 67, scope: !1193, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 114, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !361, line: 104, column: 5)
!1212 = distinct !DILexicalBlock(scope: !1189, file: !361, line: 101, column: 7)
!1213 = !DILocation(line: 0, scope: !1189)
!1214 = !DILocation(line: 101, column: 14, scope: !1212)
!1215 = !DILocation(line: 101, column: 7, scope: !1189)
!1216 = !DILocation(line: 102, column: 5, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !361, line: 102, column: 5)
!1218 = !{!1219, !1219, i64 0}
!1219 = !{!"any pointer", !1220, i64 0}
!1220 = !{!"omnipotent char", !1221, i64 0}
!1221 = !{!"Simple C/C++ TBAA"}
!1222 = !DILocation(line: 105, column: 7, scope: !1211)
!1223 = !DILocation(line: 106, column: 7, scope: !1211)
!1224 = !DILocation(line: 112, column: 7, scope: !1211)
!1225 = !DILocation(line: 113, column: 7, scope: !1211)
!1226 = !DILocation(line: 0, scope: !1193, inlinedAt: !1210)
!1227 = !DILocation(line: 636, column: 3, scope: !1193, inlinedAt: !1210)
!1228 = !DILocation(line: 647, column: 36, scope: !1193, inlinedAt: !1210)
!1229 = !DILocation(line: 649, column: 3, scope: !1193, inlinedAt: !1210)
!1230 = !DILocation(line: 649, column: 33, scope: !1193, inlinedAt: !1210)
!1231 = !DILocation(line: 650, column: 13, scope: !1193, inlinedAt: !1210)
!1232 = !DILocation(line: 649, column: 20, scope: !1193, inlinedAt: !1210)
!1233 = !{!1234, !1219, i64 0}
!1234 = !{!"infomap", !1219, i64 0, !1219, i64 8}
!1235 = !DILocation(line: 649, column: 10, scope: !1193, inlinedAt: !1210)
!1236 = !DILocation(line: 649, column: 28, scope: !1193, inlinedAt: !1210)
!1237 = distinct !{!1237, !1229, !1231}
!1238 = !DILocation(line: 652, column: 17, scope: !1239, inlinedAt: !1210)
!1239 = distinct !DILexicalBlock(scope: !1193, file: !1194, line: 652, column: 7)
!1240 = !{!1234, !1219, i64 8}
!1241 = !DILocation(line: 652, column: 7, scope: !1239, inlinedAt: !1210)
!1242 = !DILocation(line: 652, column: 7, scope: !1193, inlinedAt: !1210)
!1243 = !DILocation(line: 655, column: 3, scope: !1193, inlinedAt: !1210)
!1244 = !DILocation(line: 659, column: 29, scope: !1193, inlinedAt: !1210)
!1245 = !DILocation(line: 660, column: 7, scope: !1246, inlinedAt: !1210)
!1246 = distinct !DILexicalBlock(scope: !1193, file: !1194, line: 660, column: 7)
!1247 = !DILocation(line: 660, column: 19, scope: !1246, inlinedAt: !1210)
!1248 = !DILocation(line: 660, column: 22, scope: !1246, inlinedAt: !1210)
!1249 = !DILocation(line: 660, column: 7, scope: !1193, inlinedAt: !1210)
!1250 = !DILocation(line: 666, column: 7, scope: !1251, inlinedAt: !1210)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !1194, line: 661, column: 5)
!1252 = !DILocation(line: 668, column: 5, scope: !1251, inlinedAt: !1210)
!1253 = !DILocation(line: 669, column: 3, scope: !1193, inlinedAt: !1210)
!1254 = !DILocation(line: 671, column: 3, scope: !1193, inlinedAt: !1210)
!1255 = !DILocation(line: 673, column: 1, scope: !1193, inlinedAt: !1210)
!1256 = !DILocation(line: 116, column: 3, scope: !1189)
!1257 = distinct !DISubprogram(name: "main", scope: !361, file: !361, line: 120, type: !1258, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1260)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!18, !18, !424}
!1260 = !{!1261, !1262}
!1261 = !DILocalVariable(name: "argc", arg: 1, scope: !1257, file: !361, line: 120, type: !18)
!1262 = !DILocalVariable(name: "argv", arg: 2, scope: !1257, file: !361, line: 120, type: !424)
!1263 = !DILocation(line: 0, scope: !1257)
!1264 = !DILocation(line: 123, column: 21, scope: !1257)
!1265 = !DILocation(line: 123, column: 3, scope: !1257)
!1266 = !DILocation(line: 124, column: 3, scope: !1257)
!1267 = !DILocation(line: 125, column: 3, scope: !1257)
!1268 = !DILocation(line: 126, column: 3, scope: !1257)
!1269 = !DILocation(line: 128, column: 3, scope: !1257)
!1270 = !DILocation(line: 131, column: 36, scope: !1257)
!1271 = !DILocation(line: 130, column: 3, scope: !1257)
!1272 = !DILocation(line: 134, column: 18, scope: !1257)
!1273 = !{!1274, !1274, i64 0}
!1274 = !{!"int", !1220, i64 0}
!1275 = !DILocation(line: 134, column: 16, scope: !1257)
!1276 = !DILocation(line: 134, column: 3, scope: !1257)
!1277 = !DILocation(line: 137, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1257, file: !361, line: 135, column: 5)
!1279 = !DILocation(line: 138, column: 7, scope: !1278)
!1280 = !DILocation(line: 141, column: 14, scope: !1278)
!1281 = !DILocation(line: 141, column: 7, scope: !1278)
!1282 = !DILocation(line: 142, column: 7, scope: !1278)
!1283 = !DILocation(line: 145, column: 20, scope: !1278)
!1284 = !DILocation(line: 145, column: 55, scope: !1278)
!1285 = !DILocation(line: 145, column: 62, scope: !1278)
!1286 = !DILocation(line: 145, column: 50, scope: !1278)
!1287 = !DILocation(line: 145, column: 43, scope: !1278)
!1288 = !DILocation(line: 145, column: 7, scope: !1278)
!1289 = !DILocation(line: 146, column: 7, scope: !1278)
!1290 = !DILocation(line: 149, column: 3, scope: !1257)
!1291 = distinct !DISubprogram(name: "users", scope: !361, file: !361, line: 85, type: !1292, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !6, !18}
!1294 = !{!1295, !1296, !1297, !1298}
!1295 = !DILocalVariable(name: "filename", arg: 1, scope: !1291, file: !361, line: 85, type: !6)
!1296 = !DILocalVariable(name: "options", arg: 2, scope: !1291, file: !361, line: 85, type: !18)
!1297 = !DILocalVariable(name: "n_users", scope: !1291, file: !361, line: 87, type: !69)
!1298 = !DILocalVariable(name: "utmp_buf", scope: !1291, file: !361, line: 88, type: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !364, line: 146, baseType: !437)
!1301 = !DILocation(line: 0, scope: !1291)
!1302 = !DILocation(line: 87, column: 3, scope: !1291)
!1303 = !DILocation(line: 88, column: 3, scope: !1291)
!1304 = !DILocation(line: 90, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1291, file: !361, line: 90, column: 7)
!1306 = !DILocation(line: 90, column: 58, scope: !1305)
!1307 = !DILocation(line: 90, column: 7, scope: !1291)
!1308 = !DILocation(line: 91, column: 5, scope: !1305)
!1309 = !DILocation(line: 93, column: 23, scope: !1291)
!1310 = !{!1311, !1311, i64 0}
!1311 = !{!"long", !1220, i64 0}
!1312 = !DILocalVariable(name: "n", arg: 1, scope: !1313, file: !361, line: 47, type: !69)
!1313 = distinct !DISubprogram(name: "list_entries_users", scope: !361, file: !361, line: 47, type: !1314, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1318)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !69, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1318 = !{!1312, !1319, !1320, !1321, !1322, !1323, !1327}
!1319 = !DILocalVariable(name: "this", arg: 2, scope: !1313, file: !361, line: 47, type: !1316)
!1320 = !DILocalVariable(name: "u", scope: !1313, file: !361, line: 49, type: !424)
!1321 = !DILocalVariable(name: "i", scope: !1313, file: !361, line: 50, type: !69)
!1322 = !DILocalVariable(name: "n_entries", scope: !1313, file: !361, line: 51, type: !69)
!1323 = !DILocalVariable(name: "trimmed_name", scope: !1324, file: !361, line: 57, type: !25)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !361, line: 56, column: 9)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !361, line: 55, column: 11)
!1326 = distinct !DILexicalBlock(scope: !1313, file: !361, line: 54, column: 5)
!1327 = !DILocalVariable(name: "c", scope: !1328, file: !361, line: 71, type: !8)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !361, line: 70, column: 5)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !361, line: 69, column: 3)
!1330 = distinct !DILexicalBlock(scope: !1313, file: !361, line: 69, column: 3)
!1331 = !DILocation(line: 0, scope: !1313, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 93, column: 3, scope: !1291)
!1333 = !DILocalVariable(name: "n", arg: 1, scope: !1334, file: !249, line: 99, type: !69)
!1334 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !1335, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!67, !69, !69}
!1337 = !{!1333, !1338}
!1338 = !DILocalVariable(name: "s", arg: 2, scope: !1334, file: !249, line: 99, type: !69)
!1339 = !DILocation(line: 0, scope: !1334, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 49, column: 14, scope: !1313, inlinedAt: !1332)
!1341 = !DILocation(line: 101, column: 7, scope: !1342, inlinedAt: !1340)
!1342 = distinct !DILexicalBlock(scope: !1334, file: !249, line: 101, column: 7)
!1343 = !DILocation(line: 101, column: 7, scope: !1334, inlinedAt: !1340)
!1344 = !DILocation(line: 102, column: 5, scope: !1342, inlinedAt: !1340)
!1345 = !DILocation(line: 93, column: 32, scope: !1291)
!1346 = !DILocation(line: 103, column: 21, scope: !1334, inlinedAt: !1340)
!1347 = !DILocation(line: 103, column: 10, scope: !1334, inlinedAt: !1340)
!1348 = !DILocation(line: 49, column: 14, scope: !1313, inlinedAt: !1332)
!1349 = !DILocation(line: 53, column: 3, scope: !1313, inlinedAt: !1332)
!1350 = !DILocation(line: 67, column: 3, scope: !1313, inlinedAt: !1332)
!1351 = !DILocation(line: 69, column: 3, scope: !1330, inlinedAt: !1332)
!1352 = !DILocation(line: 53, column: 11, scope: !1313, inlinedAt: !1332)
!1353 = !DILocation(line: 55, column: 11, scope: !1325, inlinedAt: !1332)
!1354 = !{!1220, !1220, i64 0}
!1355 = !{!1356, !1357, i64 0}
!1356 = !{!"utmpx", !1357, i64 0, !1274, i64 4, !1220, i64 8, !1220, i64 40, !1220, i64 44, !1220, i64 76, !1358, i64 332, !1274, i64 336, !1359, i64 340, !1220, i64 348, !1220, i64 364}
!1357 = !{!"short", !1220, i64 0}
!1358 = !{!"__exit_status", !1357, i64 0, !1357, i64 2}
!1359 = !{!"", !1274, i64 0, !1274, i64 4}
!1360 = !DILocation(line: 55, column: 11, scope: !1326, inlinedAt: !1332)
!1361 = !DILocation(line: 59, column: 26, scope: !1324, inlinedAt: !1332)
!1362 = !DILocation(line: 0, scope: !1324, inlinedAt: !1332)
!1363 = !DILocation(line: 61, column: 11, scope: !1324, inlinedAt: !1332)
!1364 = !DILocation(line: 61, column: 24, scope: !1324, inlinedAt: !1332)
!1365 = !DILocation(line: 62, column: 11, scope: !1324, inlinedAt: !1332)
!1366 = !DILocation(line: 63, column: 9, scope: !1324, inlinedAt: !1332)
!1367 = !DILocation(line: 64, column: 11, scope: !1326, inlinedAt: !1332)
!1368 = distinct !{!1368, !1349, !1369}
!1369 = !DILocation(line: 65, column: 5, scope: !1313, inlinedAt: !1332)
!1370 = !DILocation(line: 69, column: 17, scope: !1329, inlinedAt: !1332)
!1371 = !DILocation(line: 0, scope: !1328, inlinedAt: !1332)
!1372 = !DILocation(line: 71, column: 19, scope: !1328, inlinedAt: !1332)
!1373 = !DILocation(line: 72, column: 7, scope: !1328, inlinedAt: !1332)
!1374 = !DILocation(line: 73, column: 7, scope: !1328, inlinedAt: !1332)
!1375 = !DILocalVariable(name: "__c", arg: 1, scope: !1376, file: !1377, line: 108, type: !18)
!1376 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1377, file: !1377, line: 108, type: !1378, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1380)
!1377 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!18, !18}
!1380 = !{!1375}
!1381 = !DILocation(line: 0, scope: !1376, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 73, column: 7, scope: !1328, inlinedAt: !1332)
!1383 = !DILocation(line: 110, column: 10, scope: !1376, inlinedAt: !1382)
!1384 = !{!1385, !1219, i64 40}
!1385 = !{!"_IO_FILE", !1274, i64 0, !1219, i64 8, !1219, i64 16, !1219, i64 24, !1219, i64 32, !1219, i64 40, !1219, i64 48, !1219, i64 56, !1219, i64 64, !1219, i64 72, !1219, i64 80, !1219, i64 88, !1219, i64 96, !1219, i64 104, !1274, i64 112, !1274, i64 116, !1311, i64 120, !1357, i64 128, !1220, i64 130, !1220, i64 131, !1219, i64 136, !1311, i64 144, !1219, i64 152, !1219, i64 160, !1219, i64 168, !1219, i64 176, !1311, i64 184, !1274, i64 192, !1220, i64 196}
!1386 = !{!1385, !1219, i64 48}
!1387 = !{!"branch_weights", i32 2000, i32 1}
!1388 = !{!"misexpect", i64 1, i64 2000, i64 1}
!1389 = !DILocation(line: 69, column: 31, scope: !1329, inlinedAt: !1332)
!1390 = distinct !{!1390, !1351, !1391}
!1391 = !DILocation(line: 74, column: 5, scope: !1330, inlinedAt: !1332)
!1392 = !DILocation(line: 77, column: 11, scope: !1393, inlinedAt: !1332)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !361, line: 76, column: 3)
!1394 = distinct !DILexicalBlock(scope: !1313, file: !361, line: 76, column: 3)
!1395 = !DILocation(line: 77, column: 5, scope: !1393, inlinedAt: !1332)
!1396 = !DILocation(line: 76, column: 31, scope: !1393, inlinedAt: !1332)
!1397 = !DILocation(line: 76, column: 17, scope: !1393, inlinedAt: !1332)
!1398 = !DILocation(line: 76, column: 3, scope: !1394, inlinedAt: !1332)
!1399 = distinct !{!1399, !1398, !1400}
!1400 = !DILocation(line: 77, column: 15, scope: !1394, inlinedAt: !1332)
!1401 = !DILocation(line: 78, column: 3, scope: !1313, inlinedAt: !1332)
!1402 = !DILocation(line: 95, column: 9, scope: !1291)
!1403 = !DILocation(line: 95, column: 3, scope: !1291)
!1404 = !DILocation(line: 96, column: 1, scope: !1291)
!1405 = distinct !DISubprogram(name: "userid_compare", scope: !361, file: !361, line: 39, type: !478, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1406)
!1406 = !{!1407, !1408, !1409, !1410}
!1407 = !DILocalVariable(name: "v_a", arg: 1, scope: !1405, file: !361, line: 39, type: !252)
!1408 = !DILocalVariable(name: "v_b", arg: 2, scope: !1405, file: !361, line: 39, type: !252)
!1409 = !DILocalVariable(name: "a", scope: !1405, file: !361, line: 41, type: !424)
!1410 = !DILocalVariable(name: "b", scope: !1405, file: !361, line: 42, type: !424)
!1411 = !DILocation(line: 0, scope: !1405)
!1412 = !DILocation(line: 41, column: 14, scope: !1405)
!1413 = !DILocation(line: 42, column: 14, scope: !1405)
!1414 = !DILocation(line: 43, column: 18, scope: !1405)
!1415 = !DILocation(line: 43, column: 22, scope: !1405)
!1416 = !DILocation(line: 43, column: 10, scope: !1405)
!1417 = !DILocation(line: 43, column: 3, scope: !1405)
!1418 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !406, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1419)
!1419 = !{!1420}
!1420 = !DILocalVariable(name: "file", arg: 1, scope: !1418, file: !12, line: 51, type: !6)
!1421 = !DILocation(line: 0, scope: !1418)
!1422 = !DILocation(line: 53, column: 13, scope: !1418)
!1423 = !DILocation(line: 54, column: 1, scope: !1418)
!1424 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1425, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !92}
!1427 = !{!1428}
!1428 = !DILocalVariable(name: "ignore", arg: 1, scope: !1424, file: !12, line: 88, type: !92)
!1429 = !DILocation(line: 0, scope: !1424)
!1430 = !DILocation(line: 90, column: 16, scope: !1424)
!1431 = !{!1432, !1432, i64 0}
!1432 = !{!"_Bool", !1220, i64 0}
!1433 = !DILocation(line: 91, column: 1, scope: !1424)
!1434 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1435)
!1435 = !{!1436}
!1436 = !DILocalVariable(name: "write_error", scope: !1437, file: !12, line: 122, type: !6)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !12, line: 121, column: 5)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !12, line: 119, column: 7)
!1439 = !DILocation(line: 119, column: 21, scope: !1438)
!1440 = !DILocation(line: 119, column: 7, scope: !1438)
!1441 = !DILocation(line: 119, column: 29, scope: !1438)
!1442 = !DILocation(line: 120, column: 7, scope: !1438)
!1443 = !DILocation(line: 120, column: 12, scope: !1438)
!1444 = !{i8 0, i8 2}
!1445 = !DILocation(line: 120, column: 25, scope: !1438)
!1446 = !DILocation(line: 120, column: 28, scope: !1438)
!1447 = !DILocation(line: 120, column: 34, scope: !1438)
!1448 = !DILocation(line: 119, column: 7, scope: !1434)
!1449 = !DILocation(line: 122, column: 33, scope: !1437)
!1450 = !DILocation(line: 0, scope: !1437)
!1451 = !DILocation(line: 123, column: 11, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1437, file: !12, line: 123, column: 11)
!1453 = !DILocation(line: 0, scope: !1452)
!1454 = !DILocation(line: 123, column: 11, scope: !1437)
!1455 = !DILocation(line: 124, column: 36, scope: !1452)
!1456 = !DILocation(line: 124, column: 9, scope: !1452)
!1457 = !DILocation(line: 127, column: 9, scope: !1452)
!1458 = !DILocation(line: 129, column: 14, scope: !1437)
!1459 = !DILocation(line: 129, column: 7, scope: !1437)
!1460 = !DILocation(line: 134, column: 42, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1434, file: !12, line: 134, column: 7)
!1462 = !DILocation(line: 134, column: 28, scope: !1461)
!1463 = !DILocation(line: 134, column: 50, scope: !1461)
!1464 = !DILocation(line: 134, column: 7, scope: !1434)
!1465 = !DILocation(line: 135, column: 12, scope: !1461)
!1466 = !DILocation(line: 135, column: 5, scope: !1461)
!1467 = !DILocation(line: 136, column: 1, scope: !1434)
!1468 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1469, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !18, !424, !6, !6, !6, !425, null}
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1472 = !DILocalVariable(name: "argc", arg: 1, scope: !1468, file: !102, line: 45, type: !18)
!1473 = !DILocalVariable(name: "argv", arg: 2, scope: !1468, file: !102, line: 46, type: !424)
!1474 = !DILocalVariable(name: "command_name", arg: 3, scope: !1468, file: !102, line: 47, type: !6)
!1475 = !DILocalVariable(name: "package", arg: 4, scope: !1468, file: !102, line: 48, type: !6)
!1476 = !DILocalVariable(name: "version", arg: 5, scope: !1468, file: !102, line: 49, type: !6)
!1477 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1468, file: !102, line: 50, type: !425)
!1478 = !DILocalVariable(name: "c", scope: !1468, file: !102, line: 53, type: !18)
!1479 = !DILocalVariable(name: "saved_opterr", scope: !1468, file: !102, line: 54, type: !18)
!1480 = !DILocalVariable(name: "authors", scope: !1481, file: !102, line: 72, type: !1485)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !102, line: 71, column: 11)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !102, line: 65, column: 9)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !102, line: 63, column: 5)
!1484 = distinct !DILexicalBlock(scope: !1468, file: !102, line: 61, column: 7)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1487, line: 32, baseType: !1488)
!1487 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1489)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1490 = !DILocation(line: 0, scope: !1468)
!1491 = !DILocation(line: 56, column: 18, scope: !1468)
!1492 = !DILocation(line: 59, column: 10, scope: !1468)
!1493 = !DILocation(line: 61, column: 12, scope: !1484)
!1494 = !DILocation(line: 62, column: 7, scope: !1484)
!1495 = !DILocation(line: 62, column: 15, scope: !1484)
!1496 = !DILocation(line: 61, column: 7, scope: !1468)
!1497 = !DILocation(line: 67, column: 11, scope: !1482)
!1498 = !DILocation(line: 68, column: 11, scope: !1482)
!1499 = !DILocation(line: 72, column: 13, scope: !1481)
!1500 = !DILocation(line: 72, column: 21, scope: !1481)
!1501 = !DILocation(line: 73, column: 13, scope: !1481)
!1502 = !DILocation(line: 74, column: 29, scope: !1481)
!1503 = !DILocation(line: 74, column: 13, scope: !1481)
!1504 = !DILocation(line: 75, column: 13, scope: !1481)
!1505 = !DILocation(line: 85, column: 10, scope: !1468)
!1506 = !DILocation(line: 89, column: 10, scope: !1468)
!1507 = !DILocation(line: 90, column: 1, scope: !1468)
!1508 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !422, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1509)
!1509 = !{!1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1510 = !DILocalVariable(name: "argc", arg: 1, scope: !1508, file: !102, line: 98, type: !18)
!1511 = !DILocalVariable(name: "argv", arg: 2, scope: !1508, file: !102, line: 99, type: !424)
!1512 = !DILocalVariable(name: "command_name", arg: 3, scope: !1508, file: !102, line: 100, type: !6)
!1513 = !DILocalVariable(name: "package", arg: 4, scope: !1508, file: !102, line: 101, type: !6)
!1514 = !DILocalVariable(name: "version", arg: 5, scope: !1508, file: !102, line: 102, type: !6)
!1515 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1508, file: !102, line: 103, type: !92)
!1516 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1508, file: !102, line: 104, type: !425)
!1517 = !DILocalVariable(name: "c", scope: !1508, file: !102, line: 107, type: !18)
!1518 = !DILocalVariable(name: "saved_opterr", scope: !1508, file: !102, line: 108, type: !18)
!1519 = !DILocalVariable(name: "optstring", scope: !1508, file: !102, line: 113, type: !6)
!1520 = !DILocalVariable(name: "authors", scope: !1521, file: !102, line: 125, type: !1485)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !102, line: 124, column: 11)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !102, line: 118, column: 9)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !102, line: 116, column: 5)
!1524 = distinct !DILexicalBlock(scope: !1508, file: !102, line: 115, column: 7)
!1525 = !DILocation(line: 0, scope: !1508)
!1526 = !DILocation(line: 108, column: 22, scope: !1508)
!1527 = !DILocation(line: 111, column: 10, scope: !1508)
!1528 = !DILocation(line: 113, column: 27, scope: !1508)
!1529 = !DILocation(line: 115, column: 12, scope: !1524)
!1530 = !DILocation(line: 115, column: 7, scope: !1508)
!1531 = !DILocation(line: 125, column: 13, scope: !1521)
!1532 = !DILocation(line: 125, column: 21, scope: !1521)
!1533 = !DILocation(line: 126, column: 13, scope: !1521)
!1534 = !DILocation(line: 127, column: 29, scope: !1521)
!1535 = !DILocation(line: 127, column: 13, scope: !1521)
!1536 = !DILocation(line: 128, column: 13, scope: !1521)
!1537 = !DILocation(line: 132, column: 26, scope: !1522)
!1538 = !DILocation(line: 133, column: 11, scope: !1522)
!1539 = !DILocation(line: 0, scope: !1522)
!1540 = !DILocation(line: 138, column: 10, scope: !1508)
!1541 = !DILocation(line: 139, column: 1, scope: !1508)
!1542 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !406, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DILocalVariable(name: "argv0", arg: 1, scope: !1542, file: !170, line: 39, type: !6)
!1545 = !DILocalVariable(name: "slash", scope: !1542, file: !170, line: 46, type: !6)
!1546 = !DILocalVariable(name: "base", scope: !1542, file: !170, line: 47, type: !6)
!1547 = !DILocation(line: 0, scope: !1542)
!1548 = !DILocation(line: 51, column: 13, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1542, file: !170, line: 51, column: 7)
!1550 = !DILocation(line: 51, column: 7, scope: !1542)
!1551 = !DILocation(line: 55, column: 14, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !170, line: 52, column: 5)
!1553 = !DILocation(line: 54, column: 7, scope: !1552)
!1554 = !DILocation(line: 56, column: 7, scope: !1552)
!1555 = !DILocation(line: 59, column: 11, scope: !1542)
!1556 = !DILocation(line: 60, column: 17, scope: !1542)
!1557 = !DILocation(line: 60, column: 11, scope: !1542)
!1558 = !DILocation(line: 61, column: 12, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1542, file: !170, line: 61, column: 7)
!1560 = !DILocation(line: 61, column: 20, scope: !1559)
!1561 = !DILocation(line: 61, column: 25, scope: !1559)
!1562 = !DILocation(line: 61, column: 42, scope: !1559)
!1563 = !DILocation(line: 61, column: 28, scope: !1559)
!1564 = !DILocation(line: 61, column: 61, scope: !1559)
!1565 = !DILocation(line: 61, column: 7, scope: !1542)
!1566 = !DILocation(line: 64, column: 11, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !170, line: 64, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1559, file: !170, line: 62, column: 5)
!1569 = !DILocation(line: 64, column: 36, scope: !1567)
!1570 = !DILocation(line: 64, column: 11, scope: !1568)
!1571 = !DILocation(line: 66, column: 24, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !170, line: 65, column: 9)
!1573 = !DILocation(line: 70, column: 41, scope: !1572)
!1574 = !DILocation(line: 72, column: 9, scope: !1572)
!1575 = !DILocation(line: 84, column: 16, scope: !1542)
!1576 = !DILocation(line: 90, column: 27, scope: !1542)
!1577 = !DILocation(line: 92, column: 1, scope: !1542)
!1578 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1579, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1582)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!1581, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1582 = !{!1583, !1584, !1585}
!1583 = !DILocalVariable(name: "o", arg: 1, scope: !1578, file: !212, line: 122, type: !1581)
!1584 = !DILocalVariable(name: "e", scope: !1578, file: !212, line: 124, type: !18)
!1585 = !DILocalVariable(name: "p", scope: !1578, file: !212, line: 125, type: !1581)
!1586 = !DILocation(line: 0, scope: !1578)
!1587 = !DILocation(line: 124, column: 11, scope: !1578)
!1588 = !DILocation(line: 125, column: 40, scope: !1578)
!1589 = !DILocation(line: 125, column: 31, scope: !1578)
!1590 = !DILocation(line: 127, column: 9, scope: !1578)
!1591 = !DILocation(line: 128, column: 3, scope: !1578)
!1592 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1593, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!214, !258}
!1595 = !{!1596}
!1596 = !DILocalVariable(name: "o", arg: 1, scope: !1592, file: !212, line: 133, type: !258)
!1597 = !DILocation(line: 0, scope: !1592)
!1598 = !DILocation(line: 135, column: 11, scope: !1592)
!1599 = !DILocation(line: 135, column: 46, scope: !1592)
!1600 = !{!1601, !1220, i64 0}
!1601 = !{!"quoting_options", !1220, i64 0, !1274, i64 4, !1220, i64 8, !1219, i64 40, !1219, i64 48}
!1602 = !DILocation(line: 135, column: 3, scope: !1592)
!1603 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1604, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1581, !214}
!1606 = !{!1607, !1608}
!1607 = !DILocalVariable(name: "o", arg: 1, scope: !1603, file: !212, line: 141, type: !1581)
!1608 = !DILocalVariable(name: "s", arg: 2, scope: !1603, file: !212, line: 141, type: !214)
!1609 = !DILocation(line: 0, scope: !1603)
!1610 = !DILocation(line: 143, column: 4, scope: !1603)
!1611 = !DILocation(line: 143, column: 39, scope: !1603)
!1612 = !DILocation(line: 143, column: 45, scope: !1603)
!1613 = !DILocation(line: 144, column: 1, scope: !1603)
!1614 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1615, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!18, !1581, !8, !18}
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1624, !1625}
!1618 = !DILocalVariable(name: "o", arg: 1, scope: !1614, file: !212, line: 152, type: !1581)
!1619 = !DILocalVariable(name: "c", arg: 2, scope: !1614, file: !212, line: 152, type: !8)
!1620 = !DILocalVariable(name: "i", arg: 3, scope: !1614, file: !212, line: 152, type: !18)
!1621 = !DILocalVariable(name: "uc", scope: !1614, file: !212, line: 154, type: !480)
!1622 = !DILocalVariable(name: "p", scope: !1614, file: !212, line: 155, type: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1624 = !DILocalVariable(name: "shift", scope: !1614, file: !212, line: 157, type: !18)
!1625 = !DILocalVariable(name: "r", scope: !1614, file: !212, line: 158, type: !18)
!1626 = !DILocation(line: 0, scope: !1614)
!1627 = !DILocation(line: 156, column: 6, scope: !1614)
!1628 = !DILocation(line: 156, column: 62, scope: !1614)
!1629 = !DILocation(line: 156, column: 57, scope: !1614)
!1630 = !DILocation(line: 157, column: 15, scope: !1614)
!1631 = !DILocation(line: 158, column: 12, scope: !1614)
!1632 = !DILocation(line: 158, column: 15, scope: !1614)
!1633 = !DILocation(line: 158, column: 25, scope: !1614)
!1634 = !DILocation(line: 159, column: 13, scope: !1614)
!1635 = !DILocation(line: 159, column: 18, scope: !1614)
!1636 = !DILocation(line: 159, column: 23, scope: !1614)
!1637 = !DILocation(line: 159, column: 6, scope: !1614)
!1638 = !DILocation(line: 160, column: 3, scope: !1614)
!1639 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1640, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!18, !1581, !18}
!1642 = !{!1643, !1644, !1645}
!1643 = !DILocalVariable(name: "o", arg: 1, scope: !1639, file: !212, line: 168, type: !1581)
!1644 = !DILocalVariable(name: "i", arg: 2, scope: !1639, file: !212, line: 168, type: !18)
!1645 = !DILocalVariable(name: "r", scope: !1639, file: !212, line: 170, type: !18)
!1646 = !DILocation(line: 0, scope: !1639)
!1647 = !DILocation(line: 171, column: 8, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1639, file: !212, line: 171, column: 7)
!1649 = !DILocation(line: 171, column: 7, scope: !1639)
!1650 = !DILocation(line: 173, column: 10, scope: !1639)
!1651 = !{!1601, !1274, i64 4}
!1652 = !DILocation(line: 174, column: 12, scope: !1639)
!1653 = !DILocation(line: 175, column: 3, scope: !1639)
!1654 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1655, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1581, !6, !6}
!1657 = !{!1658, !1659, !1660}
!1658 = !DILocalVariable(name: "o", arg: 1, scope: !1654, file: !212, line: 179, type: !1581)
!1659 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1654, file: !212, line: 180, type: !6)
!1660 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1654, file: !212, line: 180, type: !6)
!1661 = !DILocation(line: 0, scope: !1654)
!1662 = !DILocation(line: 182, column: 8, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1654, file: !212, line: 182, column: 7)
!1664 = !DILocation(line: 182, column: 7, scope: !1654)
!1665 = !DILocation(line: 184, column: 6, scope: !1654)
!1666 = !DILocation(line: 184, column: 12, scope: !1654)
!1667 = !DILocation(line: 185, column: 8, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1654, file: !212, line: 185, column: 7)
!1669 = !DILocation(line: 185, column: 23, scope: !1668)
!1670 = !DILocation(line: 185, column: 19, scope: !1668)
!1671 = !DILocation(line: 186, column: 5, scope: !1668)
!1672 = !DILocation(line: 187, column: 6, scope: !1654)
!1673 = !DILocation(line: 187, column: 17, scope: !1654)
!1674 = !{!1601, !1219, i64 40}
!1675 = !DILocation(line: 188, column: 6, scope: !1654)
!1676 = !DILocation(line: 188, column: 18, scope: !1654)
!1677 = !{!1601, !1219, i64 48}
!1678 = !DILocation(line: 189, column: 1, scope: !1654)
!1679 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1680, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1682)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!69, !25, !69, !6, !69, !258}
!1682 = !{!1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690}
!1683 = !DILocalVariable(name: "buffer", arg: 1, scope: !1679, file: !212, line: 784, type: !25)
!1684 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1679, file: !212, line: 784, type: !69)
!1685 = !DILocalVariable(name: "arg", arg: 3, scope: !1679, file: !212, line: 785, type: !6)
!1686 = !DILocalVariable(name: "argsize", arg: 4, scope: !1679, file: !212, line: 785, type: !69)
!1687 = !DILocalVariable(name: "o", arg: 5, scope: !1679, file: !212, line: 786, type: !258)
!1688 = !DILocalVariable(name: "p", scope: !1679, file: !212, line: 788, type: !258)
!1689 = !DILocalVariable(name: "e", scope: !1679, file: !212, line: 789, type: !18)
!1690 = !DILocalVariable(name: "r", scope: !1679, file: !212, line: 790, type: !69)
!1691 = !DILocation(line: 0, scope: !1679)
!1692 = !DILocation(line: 788, column: 37, scope: !1679)
!1693 = !DILocation(line: 789, column: 11, scope: !1679)
!1694 = !DILocation(line: 791, column: 43, scope: !1679)
!1695 = !DILocation(line: 791, column: 53, scope: !1679)
!1696 = !DILocation(line: 791, column: 60, scope: !1679)
!1697 = !DILocation(line: 792, column: 43, scope: !1679)
!1698 = !DILocation(line: 792, column: 58, scope: !1679)
!1699 = !DILocation(line: 790, column: 14, scope: !1679)
!1700 = !DILocation(line: 793, column: 9, scope: !1679)
!1701 = !DILocation(line: 794, column: 3, scope: !1679)
!1702 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1703, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1707)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!69, !25, !69, !6, !69, !214, !18, !1705, !6, !6}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1732, !1733, !1734, !1735, !1736, !1739, !1740, !1746, !1749, !1750, !1757, !1760, !1761, !1762, !1763, !1764, !1765}
!1708 = !DILocalVariable(name: "buffer", arg: 1, scope: !1702, file: !212, line: 256, type: !25)
!1709 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1702, file: !212, line: 256, type: !69)
!1710 = !DILocalVariable(name: "arg", arg: 3, scope: !1702, file: !212, line: 257, type: !6)
!1711 = !DILocalVariable(name: "argsize", arg: 4, scope: !1702, file: !212, line: 257, type: !69)
!1712 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1702, file: !212, line: 258, type: !214)
!1713 = !DILocalVariable(name: "flags", arg: 6, scope: !1702, file: !212, line: 258, type: !18)
!1714 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1702, file: !212, line: 259, type: !1705)
!1715 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1702, file: !212, line: 260, type: !6)
!1716 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1702, file: !212, line: 261, type: !6)
!1717 = !DILocalVariable(name: "i", scope: !1702, file: !212, line: 263, type: !69)
!1718 = !DILocalVariable(name: "len", scope: !1702, file: !212, line: 264, type: !69)
!1719 = !DILocalVariable(name: "orig_buffersize", scope: !1702, file: !212, line: 265, type: !69)
!1720 = !DILocalVariable(name: "quote_string", scope: !1702, file: !212, line: 266, type: !6)
!1721 = !DILocalVariable(name: "quote_string_len", scope: !1702, file: !212, line: 267, type: !69)
!1722 = !DILocalVariable(name: "backslash_escapes", scope: !1702, file: !212, line: 268, type: !92)
!1723 = !DILocalVariable(name: "unibyte_locale", scope: !1702, file: !212, line: 269, type: !92)
!1724 = !DILocalVariable(name: "elide_outer_quotes", scope: !1702, file: !212, line: 270, type: !92)
!1725 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1702, file: !212, line: 271, type: !92)
!1726 = !DILocalVariable(name: "encountered_single_quote", scope: !1702, file: !212, line: 272, type: !92)
!1727 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1702, file: !212, line: 273, type: !92)
!1728 = !DILocalVariable(name: "c", scope: !1729, file: !212, line: 402, type: !480)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !212, line: 401, column: 5)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !212, line: 400, column: 3)
!1731 = distinct !DILexicalBlock(scope: !1702, file: !212, line: 400, column: 3)
!1732 = !DILocalVariable(name: "esc", scope: !1729, file: !212, line: 403, type: !480)
!1733 = !DILocalVariable(name: "is_right_quote", scope: !1729, file: !212, line: 404, type: !92)
!1734 = !DILocalVariable(name: "escaping", scope: !1729, file: !212, line: 405, type: !92)
!1735 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1729, file: !212, line: 406, type: !92)
!1736 = !DILocalVariable(name: "m", scope: !1737, file: !212, line: 610, type: !69)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 608, column: 11)
!1738 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 426, column: 9)
!1739 = !DILocalVariable(name: "printable", scope: !1737, file: !212, line: 612, type: !92)
!1740 = !DILocalVariable(name: "mbstate", scope: !1741, file: !212, line: 621, type: !1743)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !212, line: 620, column: 15)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !212, line: 614, column: 17)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1744, line: 6, baseType: !1745)
!1744 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1746 = !DILocalVariable(name: "w", scope: !1747, file: !212, line: 631, type: !1748)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !212, line: 630, column: 19)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1749 = !DILocalVariable(name: "bytes", scope: !1747, file: !212, line: 632, type: !69)
!1750 = !DILocalVariable(name: "j", scope: !1751, file: !212, line: 657, type: !69)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !212, line: 656, column: 27)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !212, line: 654, column: 29)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !212, line: 649, column: 23)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !212, line: 641, column: 30)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !212, line: 636, column: 30)
!1756 = distinct !DILexicalBlock(scope: !1747, file: !212, line: 634, column: 25)
!1757 = !DILocalVariable(name: "ilim", scope: !1758, file: !212, line: 684, type: !69)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !212, line: 681, column: 15)
!1759 = distinct !DILexicalBlock(scope: !1737, file: !212, line: 680, column: 17)
!1760 = !DILabel(scope: !1702, name: "process_input", file: !212, line: 314)
!1761 = !DILabel(scope: !1738, name: "c_and_shell_escape", file: !212, line: 512)
!1762 = !DILabel(scope: !1738, name: "c_escape", file: !212, line: 517)
!1763 = !DILabel(scope: !1729, name: "store_escape", file: !212, line: 719)
!1764 = !DILabel(scope: !1729, name: "store_c", file: !212, line: 722)
!1765 = !DILabel(scope: !1702, name: "force_outer_quoting_style", file: !212, line: 763)
!1766 = !DILocation(line: 0, scope: !1702)
!1767 = !DILocation(line: 269, column: 25, scope: !1702)
!1768 = !DILocation(line: 269, column: 36, scope: !1702)
!1769 = !DILocation(line: 270, column: 8, scope: !1702)
!1770 = !DILocation(line: 0, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 526, column: 15)
!1772 = !DILocation(line: 0, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !212, line: 462, column: 19)
!1774 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 455, column: 13)
!1775 = !DILocation(line: 0, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !212, line: 449, column: 20)
!1777 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 428, column: 15)
!1778 = !DILocation(line: 0, scope: !1741)
!1779 = !DILocation(line: 0, scope: !1747)
!1780 = !DILocation(line: 0, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 712, column: 11)
!1782 = !DILocation(line: 273, column: 3, scope: !1702)
!1783 = !DILocation(line: 265, column: 10, scope: !1702)
!1784 = !DILocation(line: 266, column: 15, scope: !1702)
!1785 = !DILocation(line: 267, column: 10, scope: !1702)
!1786 = !DILocation(line: 268, column: 8, scope: !1702)
!1787 = !DILocation(line: 271, column: 8, scope: !1702)
!1788 = !DILocation(line: 272, column: 8, scope: !1702)
!1789 = !DILocation(line: 273, column: 8, scope: !1702)
!1790 = !DILocation(line: 314, column: 2, scope: !1702)
!1791 = !DILocation(line: 316, column: 3, scope: !1702)
!1792 = !DILocation(line: 323, column: 11, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1702, file: !212, line: 317, column: 5)
!1794 = !DILocation(line: 323, column: 12, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1793, file: !212, line: 323, column: 11)
!1796 = !DILocation(line: 324, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !212, line: 324, column: 9)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !212, line: 324, column: 9)
!1799 = !DILocation(line: 324, column: 9, scope: !1798)
!1800 = !DILocation(line: 362, column: 26, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !212, line: 340, column: 11)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !212, line: 339, column: 13)
!1803 = distinct !DILexicalBlock(scope: !1793, file: !212, line: 338, column: 7)
!1804 = !DILocation(line: 363, column: 27, scope: !1801)
!1805 = !DILocation(line: 364, column: 11, scope: !1801)
!1806 = !DILocation(line: 365, column: 14, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !212, line: 365, column: 13)
!1808 = !DILocation(line: 365, column: 13, scope: !1803)
!1809 = !DILocation(line: 366, column: 43, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !212, line: 366, column: 11)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !212, line: 366, column: 11)
!1812 = !DILocation(line: 366, column: 11, scope: !1811)
!1813 = !DILocation(line: 367, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !212, line: 367, column: 13)
!1815 = distinct !DILexicalBlock(scope: !1810, file: !212, line: 367, column: 13)
!1816 = !DILocation(line: 367, column: 13, scope: !1815)
!1817 = !DILocation(line: 366, column: 70, scope: !1810)
!1818 = distinct !{!1818, !1812, !1819}
!1819 = !DILocation(line: 367, column: 13, scope: !1811)
!1820 = !DILocation(line: 264, column: 10, scope: !1702)
!1821 = !DILocation(line: 370, column: 28, scope: !1803)
!1822 = !DILocation(line: 372, column: 7, scope: !1793)
!1823 = !DILocation(line: 376, column: 7, scope: !1793)
!1824 = !DILocation(line: 379, column: 7, scope: !1793)
!1825 = !DILocation(line: 381, column: 12, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1793, file: !212, line: 381, column: 11)
!1827 = !DILocation(line: 381, column: 11, scope: !1793)
!1828 = !DILocation(line: 386, column: 12, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1793, file: !212, line: 386, column: 11)
!1830 = !DILocation(line: 386, column: 11, scope: !1793)
!1831 = !DILocation(line: 387, column: 9, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !212, line: 387, column: 9)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !212, line: 387, column: 9)
!1834 = !DILocation(line: 387, column: 9, scope: !1833)
!1835 = !DILocation(line: 394, column: 7, scope: !1793)
!1836 = !DILocation(line: 397, column: 7, scope: !1793)
!1837 = !DILocation(line: 0, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 408, column: 11)
!1839 = !DILocation(line: 0, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !212, line: 419, column: 15)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !212, line: 418, column: 9)
!1842 = !DILocation(line: 0, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 556, column: 15)
!1844 = !DILocation(line: 0, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 548, column: 15)
!1846 = !DILocation(line: 0, scope: !1752)
!1847 = !DILocation(line: 0, scope: !1759)
!1848 = !DILocation(line: 0, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 509, column: 15)
!1850 = !DILocation(line: 400, column: 8, scope: !1731)
!1851 = !DILocation(line: 0, scope: !1731)
!1852 = !DILocation(line: 400, column: 27, scope: !1730)
!1853 = !DILocation(line: 400, column: 19, scope: !1730)
!1854 = !DILocation(line: 400, column: 41, scope: !1730)
!1855 = !DILocation(line: 400, column: 48, scope: !1730)
!1856 = !DILocation(line: 400, column: 3, scope: !1731)
!1857 = !DILocation(line: 400, column: 60, scope: !1730)
!1858 = !DILocation(line: 0, scope: !1729)
!1859 = !DILocation(line: 409, column: 11, scope: !1838)
!1860 = !DILocation(line: 411, column: 17, scope: !1838)
!1861 = !DILocation(line: 412, column: 39, scope: !1838)
!1862 = !DILocation(line: 416, column: 32, scope: !1838)
!1863 = !DILocation(line: 412, column: 19, scope: !1838)
!1864 = !DILocation(line: 412, column: 15, scope: !1838)
!1865 = !DILocation(line: 417, column: 11, scope: !1838)
!1866 = !DILocation(line: 417, column: 26, scope: !1838)
!1867 = !DILocation(line: 417, column: 14, scope: !1838)
!1868 = !DILocation(line: 417, column: 63, scope: !1838)
!1869 = !DILocation(line: 408, column: 11, scope: !1729)
!1870 = !DILocation(line: 424, column: 11, scope: !1729)
!1871 = !DILocation(line: 425, column: 7, scope: !1729)
!1872 = !DILocation(line: 428, column: 15, scope: !1738)
!1873 = !DILocation(line: 430, column: 15, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !212, line: 430, column: 15)
!1875 = distinct !DILexicalBlock(scope: !1777, file: !212, line: 429, column: 13)
!1876 = !DILocation(line: 430, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !212, line: 430, column: 15)
!1878 = !DILocation(line: 430, column: 15, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !212, line: 430, column: 15)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !212, line: 430, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !212, line: 430, column: 15)
!1882 = !DILocation(line: 430, column: 15, scope: !1880)
!1883 = !DILocation(line: 430, column: 15, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !212, line: 430, column: 15)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !212, line: 430, column: 15)
!1886 = !DILocation(line: 430, column: 15, scope: !1885)
!1887 = !DILocation(line: 430, column: 15, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !212, line: 430, column: 15)
!1889 = distinct !DILexicalBlock(scope: !1881, file: !212, line: 430, column: 15)
!1890 = !DILocation(line: 430, column: 15, scope: !1889)
!1891 = !DILocation(line: 430, column: 15, scope: !1881)
!1892 = !DILocation(line: 430, column: 15, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !212, line: 430, column: 15)
!1894 = distinct !DILexicalBlock(scope: !1874, file: !212, line: 430, column: 15)
!1895 = !DILocation(line: 430, column: 15, scope: !1894)
!1896 = !DILocation(line: 438, column: 19, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1875, file: !212, line: 437, column: 19)
!1898 = !DILocation(line: 438, column: 24, scope: !1897)
!1899 = !DILocation(line: 438, column: 28, scope: !1897)
!1900 = !DILocation(line: 438, column: 38, scope: !1897)
!1901 = !DILocation(line: 438, column: 48, scope: !1897)
!1902 = !DILocation(line: 438, column: 59, scope: !1897)
!1903 = !DILocation(line: 440, column: 19, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !212, line: 440, column: 19)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !212, line: 440, column: 19)
!1906 = distinct !DILexicalBlock(scope: !1897, file: !212, line: 439, column: 17)
!1907 = !DILocation(line: 440, column: 19, scope: !1905)
!1908 = !DILocation(line: 441, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !212, line: 441, column: 19)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !212, line: 441, column: 19)
!1911 = !DILocation(line: 441, column: 19, scope: !1910)
!1912 = !DILocation(line: 442, column: 17, scope: !1906)
!1913 = !DILocation(line: 449, column: 20, scope: !1777)
!1914 = !DILocation(line: 454, column: 11, scope: !1738)
!1915 = !DILocation(line: 457, column: 19, scope: !1774)
!1916 = !DILocation(line: 463, column: 19, scope: !1773)
!1917 = !DILocation(line: 463, column: 24, scope: !1773)
!1918 = !DILocation(line: 463, column: 28, scope: !1773)
!1919 = !DILocation(line: 463, column: 38, scope: !1773)
!1920 = !DILocation(line: 463, column: 47, scope: !1773)
!1921 = !DILocation(line: 463, column: 41, scope: !1773)
!1922 = !DILocation(line: 463, column: 52, scope: !1773)
!1923 = !DILocation(line: 462, column: 19, scope: !1774)
!1924 = !DILocation(line: 464, column: 25, scope: !1773)
!1925 = !DILocation(line: 464, column: 17, scope: !1773)
!1926 = !DILocation(line: 471, column: 25, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1773, file: !212, line: 465, column: 19)
!1928 = !DILocation(line: 475, column: 21, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !212, line: 475, column: 21)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !212, line: 475, column: 21)
!1931 = !DILocation(line: 475, column: 21, scope: !1930)
!1932 = !DILocation(line: 476, column: 21, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !212, line: 476, column: 21)
!1934 = distinct !DILexicalBlock(scope: !1927, file: !212, line: 476, column: 21)
!1935 = !DILocation(line: 476, column: 21, scope: !1934)
!1936 = !DILocation(line: 477, column: 21, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !212, line: 477, column: 21)
!1938 = distinct !DILexicalBlock(scope: !1927, file: !212, line: 477, column: 21)
!1939 = !DILocation(line: 477, column: 21, scope: !1938)
!1940 = !DILocation(line: 478, column: 21, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !212, line: 478, column: 21)
!1942 = distinct !DILexicalBlock(scope: !1927, file: !212, line: 478, column: 21)
!1943 = !DILocation(line: 478, column: 21, scope: !1942)
!1944 = !DILocation(line: 479, column: 21, scope: !1927)
!1945 = !DILocation(line: 492, column: 31, scope: !1738)
!1946 = !DILocation(line: 493, column: 31, scope: !1738)
!1947 = !DILocation(line: 495, column: 31, scope: !1738)
!1948 = !DILocation(line: 496, column: 31, scope: !1738)
!1949 = !DILocation(line: 497, column: 31, scope: !1738)
!1950 = !DILocation(line: 500, column: 15, scope: !1738)
!1951 = !DILocation(line: 502, column: 19, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !212, line: 501, column: 13)
!1953 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 500, column: 15)
!1954 = !DILocation(line: 509, column: 33, scope: !1849)
!1955 = !DILocation(line: 0, scope: !1738)
!1956 = !DILocation(line: 512, column: 9, scope: !1738)
!1957 = !DILocation(line: 514, column: 15, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 513, column: 15)
!1959 = !DILocation(line: 517, column: 9, scope: !1738)
!1960 = !DILocation(line: 518, column: 15, scope: !1738)
!1961 = !DILocation(line: 526, column: 15, scope: !1738)
!1962 = !DILocation(line: 526, column: 40, scope: !1771)
!1963 = !DILocation(line: 526, column: 47, scope: !1771)
!1964 = !DILocation(line: 526, column: 18, scope: !1771)
!1965 = !DILocation(line: 530, column: 17, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1738, file: !212, line: 530, column: 15)
!1967 = !DILocation(line: 530, column: 15, scope: !1738)
!1968 = !DILocation(line: 535, column: 11, scope: !1738)
!1969 = !DILocation(line: 549, column: 15, scope: !1845)
!1970 = !DILocation(line: 556, column: 15, scope: !1738)
!1971 = !DILocation(line: 558, column: 19, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1843, file: !212, line: 557, column: 13)
!1973 = !DILocation(line: 561, column: 19, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1972, file: !212, line: 561, column: 19)
!1975 = !DILocation(line: 561, column: 35, scope: !1974)
!1976 = !DILocation(line: 561, column: 30, scope: !1974)
!1977 = !DILocation(line: 570, column: 15, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !212, line: 570, column: 15)
!1979 = distinct !DILexicalBlock(scope: !1972, file: !212, line: 570, column: 15)
!1980 = !DILocation(line: 570, column: 15, scope: !1979)
!1981 = !DILocation(line: 571, column: 15, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !212, line: 571, column: 15)
!1983 = distinct !DILexicalBlock(scope: !1972, file: !212, line: 571, column: 15)
!1984 = !DILocation(line: 571, column: 15, scope: !1983)
!1985 = !DILocation(line: 572, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !212, line: 572, column: 15)
!1987 = distinct !DILexicalBlock(scope: !1972, file: !212, line: 572, column: 15)
!1988 = !DILocation(line: 572, column: 15, scope: !1987)
!1989 = !DILocation(line: 574, column: 13, scope: !1972)
!1990 = !DILocation(line: 614, column: 17, scope: !1737)
!1991 = !DILocation(line: 0, scope: !1737)
!1992 = !DILocation(line: 617, column: 29, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1742, file: !212, line: 615, column: 15)
!1994 = !{!1357, !1357, i64 0}
!1995 = !DILocation(line: 617, column: 27, scope: !1993)
!1996 = !DILocation(line: 618, column: 15, scope: !1993)
!1997 = !DILocation(line: 621, column: 17, scope: !1741)
!1998 = !DILocation(line: 621, column: 27, scope: !1741)
!1999 = !DILocalVariable(name: "__dest", arg: 1, scope: !2000, file: !2001, line: 59, type: !67)
!2000 = distinct !DISubprogram(name: "memset", scope: !2001, file: !2001, line: 59, type: !2002, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2004)
!2001 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!67, !67, !18, !69}
!2004 = !{!1999, !2005, !2006}
!2005 = !DILocalVariable(name: "__ch", arg: 2, scope: !2000, file: !2001, line: 59, type: !18)
!2006 = !DILocalVariable(name: "__len", arg: 3, scope: !2000, file: !2001, line: 59, type: !69)
!2007 = !DILocation(line: 0, scope: !2000, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 622, column: 17, scope: !1741)
!2009 = !DILocation(line: 71, column: 10, scope: !2000, inlinedAt: !2008)
!2010 = !DILocation(line: 626, column: 29, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1741, file: !212, line: 626, column: 21)
!2012 = !DILocation(line: 626, column: 21, scope: !1741)
!2013 = !DILocation(line: 627, column: 29, scope: !2011)
!2014 = !DILocation(line: 627, column: 19, scope: !2011)
!2015 = !DILocation(line: 629, column: 17, scope: !1741)
!2016 = !DILocation(line: 624, column: 19, scope: !1741)
!2017 = !DILocation(line: 625, column: 27, scope: !1741)
!2018 = !DILocation(line: 631, column: 21, scope: !1747)
!2019 = !DILocation(line: 632, column: 56, scope: !1747)
!2020 = !DILocation(line: 632, column: 50, scope: !1747)
!2021 = !DILocation(line: 633, column: 53, scope: !1747)
!2022 = !DILocation(line: 632, column: 36, scope: !1747)
!2023 = !DILocation(line: 634, column: 25, scope: !1747)
!2024 = !DILocation(line: 644, column: 38, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1754, file: !212, line: 642, column: 23)
!2026 = !DILocation(line: 644, column: 48, scope: !2025)
!2027 = !DILocation(line: 644, column: 25, scope: !2025)
!2028 = !DILocation(line: 644, column: 51, scope: !2025)
!2029 = !DILocation(line: 645, column: 28, scope: !2025)
!2030 = !DILocation(line: 644, column: 34, scope: !2025)
!2031 = distinct !{!2031, !2027, !2029}
!2032 = !DILocation(line: 658, column: 43, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !212, line: 658, column: 29)
!2034 = distinct !DILexicalBlock(scope: !1751, file: !212, line: 658, column: 29)
!2035 = !DILocation(line: 655, column: 29, scope: !1752)
!2036 = !DILocation(line: 0, scope: !1751)
!2037 = !DILocation(line: 659, column: 49, scope: !2033)
!2038 = !DILocation(line: 659, column: 39, scope: !2033)
!2039 = !DILocation(line: 659, column: 31, scope: !2033)
!2040 = !DILocation(line: 658, column: 53, scope: !2033)
!2041 = !DILocation(line: 658, column: 29, scope: !2034)
!2042 = distinct !{!2042, !2041, !2043}
!2043 = !DILocation(line: 667, column: 33, scope: !2034)
!2044 = !DILocation(line: 674, column: 19, scope: !1741)
!2045 = !DILocation(line: 670, column: 41, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1753, file: !212, line: 670, column: 29)
!2047 = !DILocation(line: 670, column: 31, scope: !2046)
!2048 = !DILocation(line: 670, column: 29, scope: !1753)
!2049 = !DILocation(line: 672, column: 27, scope: !1753)
!2050 = !DILocation(line: 675, column: 26, scope: !1741)
!2051 = !DILocation(line: 675, column: 24, scope: !1741)
!2052 = !DILocation(line: 674, column: 19, scope: !1747)
!2053 = distinct !{!2053, !2015, !2054}
!2054 = !DILocation(line: 675, column: 44, scope: !1741)
!2055 = !DILocation(line: 676, column: 15, scope: !1742)
!2056 = !DILocation(line: 0, scope: !1742)
!2057 = !DILocation(line: 678, column: 40, scope: !1737)
!2058 = !DILocation(line: 680, column: 19, scope: !1759)
!2059 = !DILocation(line: 680, column: 45, scope: !1759)
!2060 = !DILocation(line: 680, column: 23, scope: !1759)
!2061 = !DILocation(line: 684, column: 33, scope: !1758)
!2062 = !DILocation(line: 0, scope: !1758)
!2063 = !DILocation(line: 686, column: 17, scope: !1758)
!2064 = !DILocation(line: 405, column: 12, scope: !1729)
!2065 = !DILocation(line: 688, column: 43, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !212, line: 688, column: 25)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !212, line: 687, column: 19)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !212, line: 686, column: 17)
!2069 = distinct !DILexicalBlock(scope: !1758, file: !212, line: 686, column: 17)
!2070 = !DILocation(line: 690, column: 25, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !212, line: 690, column: 25)
!2072 = distinct !DILexicalBlock(scope: !2066, file: !212, line: 689, column: 23)
!2073 = !DILocation(line: 690, column: 25, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !212, line: 690, column: 25)
!2075 = !DILocation(line: 690, column: 25, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !212, line: 690, column: 25)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !212, line: 690, column: 25)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !212, line: 690, column: 25)
!2079 = !DILocation(line: 690, column: 25, scope: !2077)
!2080 = !DILocation(line: 690, column: 25, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !212, line: 690, column: 25)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !212, line: 690, column: 25)
!2083 = !DILocation(line: 690, column: 25, scope: !2082)
!2084 = !DILocation(line: 690, column: 25, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !212, line: 690, column: 25)
!2086 = distinct !DILexicalBlock(scope: !2078, file: !212, line: 690, column: 25)
!2087 = !DILocation(line: 690, column: 25, scope: !2086)
!2088 = !DILocation(line: 690, column: 25, scope: !2078)
!2089 = !DILocation(line: 690, column: 25, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !212, line: 690, column: 25)
!2091 = distinct !DILexicalBlock(scope: !2071, file: !212, line: 690, column: 25)
!2092 = !DILocation(line: 690, column: 25, scope: !2091)
!2093 = !DILocation(line: 691, column: 25, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !212, line: 691, column: 25)
!2095 = distinct !DILexicalBlock(scope: !2072, file: !212, line: 691, column: 25)
!2096 = !DILocation(line: 691, column: 25, scope: !2095)
!2097 = !DILocation(line: 692, column: 25, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !212, line: 692, column: 25)
!2099 = distinct !DILexicalBlock(scope: !2072, file: !212, line: 692, column: 25)
!2100 = !DILocation(line: 692, column: 25, scope: !2099)
!2101 = !DILocation(line: 693, column: 38, scope: !2072)
!2102 = !DILocation(line: 693, column: 33, scope: !2072)
!2103 = !DILocation(line: 694, column: 23, scope: !2072)
!2104 = !DILocation(line: 695, column: 30, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2066, file: !212, line: 695, column: 30)
!2106 = !DILocation(line: 695, column: 30, scope: !2066)
!2107 = !DILocation(line: 697, column: 25, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !212, line: 697, column: 25)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !212, line: 697, column: 25)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !212, line: 696, column: 23)
!2111 = !DILocation(line: 697, column: 25, scope: !2109)
!2112 = !DILocation(line: 699, column: 23, scope: !2110)
!2113 = !DILocation(line: 700, column: 35, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2067, file: !212, line: 700, column: 25)
!2115 = !DILocation(line: 700, column: 30, scope: !2114)
!2116 = !DILocation(line: 700, column: 25, scope: !2067)
!2117 = !DILocation(line: 702, column: 21, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !212, line: 702, column: 21)
!2119 = distinct !DILexicalBlock(scope: !2067, file: !212, line: 702, column: 21)
!2120 = !DILocation(line: 702, column: 21, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !212, line: 702, column: 21)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !212, line: 702, column: 21)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !212, line: 702, column: 21)
!2124 = !DILocation(line: 702, column: 21, scope: !2122)
!2125 = !DILocation(line: 702, column: 21, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !212, line: 702, column: 21)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !212, line: 702, column: 21)
!2128 = !DILocation(line: 702, column: 21, scope: !2127)
!2129 = !DILocation(line: 702, column: 21, scope: !2123)
!2130 = !DILocation(line: 0, scope: !2067)
!2131 = !DILocation(line: 703, column: 21, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !212, line: 703, column: 21)
!2133 = distinct !DILexicalBlock(scope: !2067, file: !212, line: 703, column: 21)
!2134 = !DILocation(line: 703, column: 21, scope: !2133)
!2135 = !DILocation(line: 704, column: 25, scope: !2067)
!2136 = !DILocation(line: 686, column: 17, scope: !2068)
!2137 = distinct !{!2137, !2138, !2139}
!2138 = !DILocation(line: 686, column: 17, scope: !2069)
!2139 = !DILocation(line: 705, column: 19, scope: !2069)
!2140 = !DILocation(line: 416, column: 30, scope: !1838)
!2141 = !DILocation(line: 712, column: 34, scope: !1781)
!2142 = !DILocation(line: 715, column: 35, scope: !1781)
!2143 = !DILocation(line: 715, column: 17, scope: !1781)
!2144 = !DILocation(line: 715, column: 47, scope: !1781)
!2145 = !DILocation(line: 715, column: 65, scope: !1781)
!2146 = !DILocation(line: 716, column: 15, scope: !1781)
!2147 = !DILocation(line: 716, column: 11, scope: !1781)
!2148 = !DILocation(line: 712, column: 11, scope: !1729)
!2149 = !DILocation(line: 400, column: 10, scope: !1731)
!2150 = !DILocation(line: 719, column: 5, scope: !1729)
!2151 = !DILocation(line: 720, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 720, column: 7)
!2153 = !DILocation(line: 720, column: 7, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2152, file: !212, line: 720, column: 7)
!2155 = !DILocation(line: 720, column: 7, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !212, line: 720, column: 7)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !212, line: 720, column: 7)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !212, line: 720, column: 7)
!2159 = !DILocation(line: 720, column: 7, scope: !2157)
!2160 = !DILocation(line: 720, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !212, line: 720, column: 7)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !212, line: 720, column: 7)
!2163 = !DILocation(line: 720, column: 7, scope: !2162)
!2164 = !DILocation(line: 720, column: 7, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !212, line: 720, column: 7)
!2166 = distinct !DILexicalBlock(scope: !2158, file: !212, line: 720, column: 7)
!2167 = !DILocation(line: 720, column: 7, scope: !2166)
!2168 = !DILocation(line: 720, column: 7, scope: !2158)
!2169 = !DILocation(line: 720, column: 7, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !212, line: 720, column: 7)
!2171 = distinct !DILexicalBlock(scope: !2152, file: !212, line: 720, column: 7)
!2172 = !DILocation(line: 720, column: 7, scope: !2171)
!2173 = !DILocation(line: 722, column: 5, scope: !1729)
!2174 = !DILocation(line: 723, column: 7, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !212, line: 723, column: 7)
!2176 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 723, column: 7)
!2177 = !DILocation(line: 424, column: 9, scope: !1729)
!2178 = !DILocation(line: 723, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !212, line: 723, column: 7)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !212, line: 723, column: 7)
!2181 = distinct !DILexicalBlock(scope: !2175, file: !212, line: 723, column: 7)
!2182 = !DILocation(line: 723, column: 7, scope: !2180)
!2183 = !DILocation(line: 723, column: 7, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !212, line: 723, column: 7)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !212, line: 723, column: 7)
!2186 = !DILocation(line: 723, column: 7, scope: !2185)
!2187 = !DILocation(line: 723, column: 7, scope: !2181)
!2188 = !DILocation(line: 724, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !212, line: 724, column: 7)
!2190 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 724, column: 7)
!2191 = !DILocation(line: 724, column: 7, scope: !2190)
!2192 = !DILocation(line: 726, column: 13, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !1729, file: !212, line: 726, column: 11)
!2194 = !DILocation(line: 726, column: 11, scope: !1729)
!2195 = !DILocation(line: 728, column: 5, scope: !1730)
!2196 = !DILocation(line: 400, column: 75, scope: !1730)
!2197 = !DILocation(line: 400, column: 3, scope: !1730)
!2198 = distinct !{!2198, !1856, !2199}
!2199 = !DILocation(line: 728, column: 5, scope: !1731)
!2200 = !DILocation(line: 730, column: 11, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1702, file: !212, line: 730, column: 7)
!2202 = !DILocation(line: 730, column: 16, scope: !2201)
!2203 = !DILocation(line: 738, column: 51, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !1702, file: !212, line: 738, column: 7)
!2205 = !DILocation(line: 739, column: 10, scope: !2204)
!2206 = !DILocation(line: 741, column: 11, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !212, line: 741, column: 11)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !212, line: 740, column: 5)
!2209 = !DILocation(line: 741, column: 11, scope: !2208)
!2210 = !DILocation(line: 742, column: 16, scope: !2207)
!2211 = !DILocation(line: 742, column: 9, scope: !2207)
!2212 = !DILocation(line: 746, column: 18, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2207, file: !212, line: 746, column: 16)
!2214 = !DILocation(line: 746, column: 32, scope: !2213)
!2215 = !DILocation(line: 746, column: 29, scope: !2213)
!2216 = !DILocation(line: 755, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !1702, file: !212, line: 755, column: 7)
!2218 = !DILocation(line: 755, column: 20, scope: !2217)
!2219 = !DILocation(line: 756, column: 12, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !212, line: 756, column: 5)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !212, line: 756, column: 5)
!2222 = !DILocation(line: 756, column: 5, scope: !2221)
!2223 = !DILocation(line: 757, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !212, line: 757, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2220, file: !212, line: 757, column: 7)
!2226 = !DILocation(line: 757, column: 7, scope: !2225)
!2227 = !DILocation(line: 756, column: 39, scope: !2220)
!2228 = distinct !{!2228, !2222, !2229}
!2229 = !DILocation(line: 757, column: 7, scope: !2221)
!2230 = !DILocation(line: 759, column: 11, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !1702, file: !212, line: 759, column: 7)
!2232 = !DILocation(line: 759, column: 7, scope: !1702)
!2233 = !DILocation(line: 760, column: 5, scope: !2231)
!2234 = !DILocation(line: 760, column: 17, scope: !2231)
!2235 = !DILocation(line: 763, column: 2, scope: !1702)
!2236 = !DILocation(line: 766, column: 51, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1702, file: !212, line: 766, column: 7)
!2238 = !DILocation(line: 766, column: 21, scope: !2237)
!2239 = !DILocation(line: 770, column: 42, scope: !1702)
!2240 = !DILocation(line: 768, column: 10, scope: !1702)
!2241 = !DILocation(line: 768, column: 3, scope: !1702)
!2242 = !DILocation(line: 772, column: 1, scope: !1702)
!2243 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2244, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!6, !6, !214}
!2246 = !{!2247, !2248, !2249, !2250}
!2247 = !DILocalVariable(name: "msgid", arg: 1, scope: !2243, file: !212, line: 207, type: !6)
!2248 = !DILocalVariable(name: "s", arg: 2, scope: !2243, file: !212, line: 207, type: !214)
!2249 = !DILocalVariable(name: "translation", scope: !2243, file: !212, line: 209, type: !6)
!2250 = !DILocalVariable(name: "locale_code", scope: !2243, file: !212, line: 210, type: !6)
!2251 = !DILocation(line: 0, scope: !2243)
!2252 = !DILocation(line: 209, column: 29, scope: !2243)
!2253 = !DILocation(line: 212, column: 19, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2243, file: !212, line: 212, column: 7)
!2255 = !DILocation(line: 212, column: 7, scope: !2243)
!2256 = !DILocation(line: 233, column: 17, scope: !2243)
!2257 = !DILocalVariable(name: "s1", arg: 1, scope: !2258, file: !2259, line: 160, type: !6)
!2258 = distinct !DISubprogram(name: "strcaseeq0", scope: !2259, file: !2259, line: 160, type: !2260, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2262)
!2259 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2262 = !{!2257, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272}
!2263 = !DILocalVariable(name: "s2", arg: 2, scope: !2258, file: !2259, line: 160, type: !6)
!2264 = !DILocalVariable(name: "s20", arg: 3, scope: !2258, file: !2259, line: 160, type: !8)
!2265 = !DILocalVariable(name: "s21", arg: 4, scope: !2258, file: !2259, line: 160, type: !8)
!2266 = !DILocalVariable(name: "s22", arg: 5, scope: !2258, file: !2259, line: 160, type: !8)
!2267 = !DILocalVariable(name: "s23", arg: 6, scope: !2258, file: !2259, line: 160, type: !8)
!2268 = !DILocalVariable(name: "s24", arg: 7, scope: !2258, file: !2259, line: 160, type: !8)
!2269 = !DILocalVariable(name: "s25", arg: 8, scope: !2258, file: !2259, line: 160, type: !8)
!2270 = !DILocalVariable(name: "s26", arg: 9, scope: !2258, file: !2259, line: 160, type: !8)
!2271 = !DILocalVariable(name: "s27", arg: 10, scope: !2258, file: !2259, line: 160, type: !8)
!2272 = !DILocalVariable(name: "s28", arg: 11, scope: !2258, file: !2259, line: 160, type: !8)
!2273 = !DILocation(line: 0, scope: !2258, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 234, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2243, file: !212, line: 234, column: 7)
!2276 = !DILocation(line: 162, column: 7, scope: !2277, inlinedAt: !2274)
!2277 = distinct !DILexicalBlock(scope: !2258, file: !2259, line: 162, column: 7)
!2278 = !DILocalVariable(name: "s1", arg: 1, scope: !2279, file: !2259, line: 146, type: !6)
!2279 = distinct !DISubprogram(name: "strcaseeq1", scope: !2259, file: !2259, line: 146, type: !2280, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2282 = !{!2278, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2283 = !DILocalVariable(name: "s2", arg: 2, scope: !2279, file: !2259, line: 146, type: !6)
!2284 = !DILocalVariable(name: "s21", arg: 3, scope: !2279, file: !2259, line: 146, type: !8)
!2285 = !DILocalVariable(name: "s22", arg: 4, scope: !2279, file: !2259, line: 146, type: !8)
!2286 = !DILocalVariable(name: "s23", arg: 5, scope: !2279, file: !2259, line: 146, type: !8)
!2287 = !DILocalVariable(name: "s24", arg: 6, scope: !2279, file: !2259, line: 146, type: !8)
!2288 = !DILocalVariable(name: "s25", arg: 7, scope: !2279, file: !2259, line: 146, type: !8)
!2289 = !DILocalVariable(name: "s26", arg: 8, scope: !2279, file: !2259, line: 146, type: !8)
!2290 = !DILocalVariable(name: "s27", arg: 9, scope: !2279, file: !2259, line: 146, type: !8)
!2291 = !DILocalVariable(name: "s28", arg: 10, scope: !2279, file: !2259, line: 146, type: !8)
!2292 = !DILocation(line: 0, scope: !2279, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 167, column: 16, scope: !2294, inlinedAt: !2274)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !2259, line: 164, column: 11)
!2295 = distinct !DILexicalBlock(scope: !2277, file: !2259, line: 163, column: 5)
!2296 = !DILocation(line: 148, column: 7, scope: !2297, inlinedAt: !2293)
!2297 = distinct !DILexicalBlock(scope: !2279, file: !2259, line: 148, column: 7)
!2298 = !DILocalVariable(name: "s1", arg: 1, scope: !2299, file: !2259, line: 132, type: !6)
!2299 = distinct !DISubprogram(name: "strcaseeq2", scope: !2259, file: !2259, line: 132, type: !2300, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2302 = !{!2298, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2303 = !DILocalVariable(name: "s2", arg: 2, scope: !2299, file: !2259, line: 132, type: !6)
!2304 = !DILocalVariable(name: "s22", arg: 3, scope: !2299, file: !2259, line: 132, type: !8)
!2305 = !DILocalVariable(name: "s23", arg: 4, scope: !2299, file: !2259, line: 132, type: !8)
!2306 = !DILocalVariable(name: "s24", arg: 5, scope: !2299, file: !2259, line: 132, type: !8)
!2307 = !DILocalVariable(name: "s25", arg: 6, scope: !2299, file: !2259, line: 132, type: !8)
!2308 = !DILocalVariable(name: "s26", arg: 7, scope: !2299, file: !2259, line: 132, type: !8)
!2309 = !DILocalVariable(name: "s27", arg: 8, scope: !2299, file: !2259, line: 132, type: !8)
!2310 = !DILocalVariable(name: "s28", arg: 9, scope: !2299, file: !2259, line: 132, type: !8)
!2311 = !DILocation(line: 0, scope: !2299, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 153, column: 16, scope: !2313, inlinedAt: !2293)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !2259, line: 150, column: 11)
!2314 = distinct !DILexicalBlock(scope: !2297, file: !2259, line: 149, column: 5)
!2315 = !DILocation(line: 134, column: 7, scope: !2316, inlinedAt: !2312)
!2316 = distinct !DILexicalBlock(scope: !2299, file: !2259, line: 134, column: 7)
!2317 = !DILocalVariable(name: "s1", arg: 1, scope: !2318, file: !2259, line: 118, type: !6)
!2318 = distinct !DISubprogram(name: "strcaseeq3", scope: !2259, file: !2259, line: 118, type: !2319, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2321 = !{!2317, !2322, !2323, !2324, !2325, !2326, !2327, !2328}
!2322 = !DILocalVariable(name: "s2", arg: 2, scope: !2318, file: !2259, line: 118, type: !6)
!2323 = !DILocalVariable(name: "s23", arg: 3, scope: !2318, file: !2259, line: 118, type: !8)
!2324 = !DILocalVariable(name: "s24", arg: 4, scope: !2318, file: !2259, line: 118, type: !8)
!2325 = !DILocalVariable(name: "s25", arg: 5, scope: !2318, file: !2259, line: 118, type: !8)
!2326 = !DILocalVariable(name: "s26", arg: 6, scope: !2318, file: !2259, line: 118, type: !8)
!2327 = !DILocalVariable(name: "s27", arg: 7, scope: !2318, file: !2259, line: 118, type: !8)
!2328 = !DILocalVariable(name: "s28", arg: 8, scope: !2318, file: !2259, line: 118, type: !8)
!2329 = !DILocation(line: 0, scope: !2318, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 139, column: 16, scope: !2331, inlinedAt: !2312)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !2259, line: 136, column: 11)
!2332 = distinct !DILexicalBlock(scope: !2316, file: !2259, line: 135, column: 5)
!2333 = !DILocation(line: 120, column: 7, scope: !2334, inlinedAt: !2330)
!2334 = distinct !DILexicalBlock(scope: !2318, file: !2259, line: 120, column: 7)
!2335 = !DILocation(line: 120, column: 7, scope: !2318, inlinedAt: !2330)
!2336 = !DILocalVariable(name: "s1", arg: 1, scope: !2337, file: !2259, line: 104, type: !6)
!2337 = distinct !DISubprogram(name: "strcaseeq4", scope: !2259, file: !2259, line: 104, type: !2338, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2340 = !{!2336, !2341, !2342, !2343, !2344, !2345, !2346}
!2341 = !DILocalVariable(name: "s2", arg: 2, scope: !2337, file: !2259, line: 104, type: !6)
!2342 = !DILocalVariable(name: "s24", arg: 3, scope: !2337, file: !2259, line: 104, type: !8)
!2343 = !DILocalVariable(name: "s25", arg: 4, scope: !2337, file: !2259, line: 104, type: !8)
!2344 = !DILocalVariable(name: "s26", arg: 5, scope: !2337, file: !2259, line: 104, type: !8)
!2345 = !DILocalVariable(name: "s27", arg: 6, scope: !2337, file: !2259, line: 104, type: !8)
!2346 = !DILocalVariable(name: "s28", arg: 7, scope: !2337, file: !2259, line: 104, type: !8)
!2347 = !DILocation(line: 0, scope: !2337, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 125, column: 16, scope: !2349, inlinedAt: !2330)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !2259, line: 122, column: 11)
!2350 = distinct !DILexicalBlock(scope: !2334, file: !2259, line: 121, column: 5)
!2351 = !DILocation(line: 106, column: 7, scope: !2352, inlinedAt: !2348)
!2352 = distinct !DILexicalBlock(scope: !2337, file: !2259, line: 106, column: 7)
!2353 = !DILocation(line: 106, column: 7, scope: !2337, inlinedAt: !2348)
!2354 = !DILocalVariable(name: "s1", arg: 1, scope: !2355, file: !2259, line: 90, type: !6)
!2355 = distinct !DISubprogram(name: "strcaseeq5", scope: !2259, file: !2259, line: 90, type: !2356, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!18, !6, !6, !8, !8, !8, !8}
!2358 = !{!2354, !2359, !2360, !2361, !2362, !2363}
!2359 = !DILocalVariable(name: "s2", arg: 2, scope: !2355, file: !2259, line: 90, type: !6)
!2360 = !DILocalVariable(name: "s25", arg: 3, scope: !2355, file: !2259, line: 90, type: !8)
!2361 = !DILocalVariable(name: "s26", arg: 4, scope: !2355, file: !2259, line: 90, type: !8)
!2362 = !DILocalVariable(name: "s27", arg: 5, scope: !2355, file: !2259, line: 90, type: !8)
!2363 = !DILocalVariable(name: "s28", arg: 6, scope: !2355, file: !2259, line: 90, type: !8)
!2364 = !DILocation(line: 0, scope: !2355, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 111, column: 16, scope: !2366, inlinedAt: !2348)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2259, line: 108, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2352, file: !2259, line: 107, column: 5)
!2368 = !DILocation(line: 92, column: 7, scope: !2369, inlinedAt: !2365)
!2369 = distinct !DILexicalBlock(scope: !2355, file: !2259, line: 92, column: 7)
!2370 = !DILocation(line: 92, column: 7, scope: !2355, inlinedAt: !2365)
!2371 = !DILocation(line: 235, column: 12, scope: !2275)
!2372 = !DILocation(line: 235, column: 21, scope: !2275)
!2373 = !DILocation(line: 235, column: 5, scope: !2275)
!2374 = !DILocation(line: 0, scope: !2279, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 167, column: 16, scope: !2294, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 236, column: 7, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2243, file: !212, line: 236, column: 7)
!2378 = !DILocation(line: 148, column: 7, scope: !2297, inlinedAt: !2375)
!2379 = !DILocation(line: 0, scope: !2299, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 153, column: 16, scope: !2313, inlinedAt: !2375)
!2381 = !DILocation(line: 134, column: 7, scope: !2316, inlinedAt: !2380)
!2382 = !DILocation(line: 134, column: 7, scope: !2299, inlinedAt: !2380)
!2383 = !DILocation(line: 0, scope: !2318, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 139, column: 16, scope: !2331, inlinedAt: !2380)
!2385 = !DILocation(line: 120, column: 7, scope: !2334, inlinedAt: !2384)
!2386 = !DILocation(line: 120, column: 7, scope: !2318, inlinedAt: !2384)
!2387 = !DILocation(line: 0, scope: !2337, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 125, column: 16, scope: !2349, inlinedAt: !2384)
!2389 = !DILocation(line: 106, column: 7, scope: !2352, inlinedAt: !2388)
!2390 = !DILocation(line: 106, column: 7, scope: !2337, inlinedAt: !2388)
!2391 = !DILocation(line: 0, scope: !2355, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 111, column: 16, scope: !2366, inlinedAt: !2388)
!2393 = !DILocation(line: 92, column: 7, scope: !2369, inlinedAt: !2392)
!2394 = !DILocation(line: 92, column: 7, scope: !2355, inlinedAt: !2392)
!2395 = !DILocalVariable(name: "s1", arg: 1, scope: !2396, file: !2259, line: 76, type: !6)
!2396 = distinct !DISubprogram(name: "strcaseeq6", scope: !2259, file: !2259, line: 76, type: !2397, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!18, !6, !6, !8, !8, !8}
!2399 = !{!2395, !2400, !2401, !2402, !2403}
!2400 = !DILocalVariable(name: "s2", arg: 2, scope: !2396, file: !2259, line: 76, type: !6)
!2401 = !DILocalVariable(name: "s26", arg: 3, scope: !2396, file: !2259, line: 76, type: !8)
!2402 = !DILocalVariable(name: "s27", arg: 4, scope: !2396, file: !2259, line: 76, type: !8)
!2403 = !DILocalVariable(name: "s28", arg: 5, scope: !2396, file: !2259, line: 76, type: !8)
!2404 = !DILocation(line: 0, scope: !2396, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 97, column: 16, scope: !2406, inlinedAt: !2392)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !2259, line: 94, column: 11)
!2407 = distinct !DILexicalBlock(scope: !2369, file: !2259, line: 93, column: 5)
!2408 = !DILocation(line: 78, column: 7, scope: !2409, inlinedAt: !2405)
!2409 = distinct !DILexicalBlock(scope: !2396, file: !2259, line: 78, column: 7)
!2410 = !DILocation(line: 78, column: 7, scope: !2396, inlinedAt: !2405)
!2411 = !DILocalVariable(name: "s1", arg: 1, scope: !2412, file: !2259, line: 62, type: !6)
!2412 = distinct !DISubprogram(name: "strcaseeq7", scope: !2259, file: !2259, line: 62, type: !2413, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!18, !6, !6, !8, !8}
!2415 = !{!2411, !2416, !2417, !2418}
!2416 = !DILocalVariable(name: "s2", arg: 2, scope: !2412, file: !2259, line: 62, type: !6)
!2417 = !DILocalVariable(name: "s27", arg: 3, scope: !2412, file: !2259, line: 62, type: !8)
!2418 = !DILocalVariable(name: "s28", arg: 4, scope: !2412, file: !2259, line: 62, type: !8)
!2419 = !DILocation(line: 0, scope: !2412, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 83, column: 16, scope: !2421, inlinedAt: !2405)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !2259, line: 80, column: 11)
!2422 = distinct !DILexicalBlock(scope: !2409, file: !2259, line: 79, column: 5)
!2423 = !DILocation(line: 64, column: 7, scope: !2424, inlinedAt: !2420)
!2424 = distinct !DILexicalBlock(scope: !2412, file: !2259, line: 64, column: 7)
!2425 = !DILocation(line: 236, column: 7, scope: !2243)
!2426 = !DILocation(line: 237, column: 12, scope: !2377)
!2427 = !DILocation(line: 237, column: 21, scope: !2377)
!2428 = !DILocation(line: 237, column: 5, scope: !2377)
!2429 = !DILocation(line: 239, column: 13, scope: !2243)
!2430 = !DILocation(line: 239, column: 11, scope: !2243)
!2431 = !DILocation(line: 239, column: 3, scope: !2243)
!2432 = !DILocation(line: 240, column: 1, scope: !2243)
!2433 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2434, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!25, !6, !69, !258}
!2436 = !{!2437, !2438, !2439}
!2437 = !DILocalVariable(name: "arg", arg: 1, scope: !2433, file: !212, line: 799, type: !6)
!2438 = !DILocalVariable(name: "argsize", arg: 2, scope: !2433, file: !212, line: 799, type: !69)
!2439 = !DILocalVariable(name: "o", arg: 3, scope: !2433, file: !212, line: 800, type: !258)
!2440 = !DILocation(line: 0, scope: !2433)
!2441 = !DILocalVariable(name: "arg", arg: 1, scope: !2442, file: !212, line: 812, type: !6)
!2442 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2443, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!25, !6, !69, !530, !258}
!2445 = !{!2441, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453}
!2446 = !DILocalVariable(name: "argsize", arg: 2, scope: !2442, file: !212, line: 812, type: !69)
!2447 = !DILocalVariable(name: "size", arg: 3, scope: !2442, file: !212, line: 812, type: !530)
!2448 = !DILocalVariable(name: "o", arg: 4, scope: !2442, file: !212, line: 813, type: !258)
!2449 = !DILocalVariable(name: "p", scope: !2442, file: !212, line: 815, type: !258)
!2450 = !DILocalVariable(name: "e", scope: !2442, file: !212, line: 816, type: !18)
!2451 = !DILocalVariable(name: "flags", scope: !2442, file: !212, line: 818, type: !18)
!2452 = !DILocalVariable(name: "bufsize", scope: !2442, file: !212, line: 819, type: !69)
!2453 = !DILocalVariable(name: "buf", scope: !2442, file: !212, line: 823, type: !25)
!2454 = !DILocation(line: 0, scope: !2442, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 802, column: 10, scope: !2433)
!2456 = !DILocation(line: 815, column: 37, scope: !2442, inlinedAt: !2455)
!2457 = !DILocation(line: 816, column: 11, scope: !2442, inlinedAt: !2455)
!2458 = !DILocation(line: 818, column: 18, scope: !2442, inlinedAt: !2455)
!2459 = !DILocation(line: 818, column: 24, scope: !2442, inlinedAt: !2455)
!2460 = !DILocation(line: 819, column: 69, scope: !2442, inlinedAt: !2455)
!2461 = !DILocation(line: 820, column: 53, scope: !2442, inlinedAt: !2455)
!2462 = !DILocation(line: 821, column: 49, scope: !2442, inlinedAt: !2455)
!2463 = !DILocation(line: 822, column: 49, scope: !2442, inlinedAt: !2455)
!2464 = !DILocation(line: 819, column: 20, scope: !2442, inlinedAt: !2455)
!2465 = !DILocation(line: 822, column: 62, scope: !2442, inlinedAt: !2455)
!2466 = !DILocalVariable(name: "n", arg: 1, scope: !2467, file: !249, line: 216, type: !69)
!2467 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2468, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!25, !69}
!2470 = !{!2466}
!2471 = !DILocation(line: 0, scope: !2467, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 823, column: 15, scope: !2442, inlinedAt: !2455)
!2473 = !DILocation(line: 218, column: 10, scope: !2467, inlinedAt: !2472)
!2474 = !DILocation(line: 824, column: 60, scope: !2442, inlinedAt: !2455)
!2475 = !DILocation(line: 826, column: 32, scope: !2442, inlinedAt: !2455)
!2476 = !DILocation(line: 826, column: 47, scope: !2442, inlinedAt: !2455)
!2477 = !DILocation(line: 824, column: 3, scope: !2442, inlinedAt: !2455)
!2478 = !DILocation(line: 827, column: 9, scope: !2442, inlinedAt: !2455)
!2479 = !DILocation(line: 802, column: 3, scope: !2433)
!2480 = !DILocation(line: 0, scope: !2442)
!2481 = !DILocation(line: 815, column: 37, scope: !2442)
!2482 = !DILocation(line: 816, column: 11, scope: !2442)
!2483 = !DILocation(line: 818, column: 18, scope: !2442)
!2484 = !DILocation(line: 818, column: 27, scope: !2442)
!2485 = !DILocation(line: 818, column: 24, scope: !2442)
!2486 = !DILocation(line: 819, column: 69, scope: !2442)
!2487 = !DILocation(line: 820, column: 53, scope: !2442)
!2488 = !DILocation(line: 821, column: 49, scope: !2442)
!2489 = !DILocation(line: 822, column: 49, scope: !2442)
!2490 = !DILocation(line: 819, column: 20, scope: !2442)
!2491 = !DILocation(line: 822, column: 62, scope: !2442)
!2492 = !DILocation(line: 0, scope: !2467, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 823, column: 15, scope: !2442)
!2494 = !DILocation(line: 218, column: 10, scope: !2467, inlinedAt: !2493)
!2495 = !DILocation(line: 824, column: 60, scope: !2442)
!2496 = !DILocation(line: 826, column: 32, scope: !2442)
!2497 = !DILocation(line: 826, column: 47, scope: !2442)
!2498 = !DILocation(line: 824, column: 3, scope: !2442)
!2499 = !DILocation(line: 827, column: 9, scope: !2442)
!2500 = !DILocation(line: 828, column: 7, scope: !2442)
!2501 = !DILocation(line: 829, column: 11, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2442, file: !212, line: 828, column: 7)
!2503 = !DILocation(line: 829, column: 5, scope: !2502)
!2504 = !DILocation(line: 830, column: 3, scope: !2442)
!2505 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2506)
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "sv", scope: !2505, file: !212, line: 850, type: !339)
!2508 = !DILocalVariable(name: "i", scope: !2505, file: !212, line: 851, type: !18)
!2509 = !DILocation(line: 850, column: 24, scope: !2505)
!2510 = !DILocation(line: 0, scope: !2505)
!2511 = !DILocation(line: 852, column: 19, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !212, line: 852, column: 3)
!2513 = distinct !DILexicalBlock(scope: !2505, file: !212, line: 852, column: 3)
!2514 = !DILocation(line: 852, column: 17, scope: !2512)
!2515 = !DILocation(line: 852, column: 3, scope: !2513)
!2516 = !DILocation(line: 853, column: 17, scope: !2512)
!2517 = !{!2518, !1219, i64 8}
!2518 = !{!"slotvec", !1311, i64 0, !1219, i64 8}
!2519 = !DILocation(line: 853, column: 5, scope: !2512)
!2520 = !DILocation(line: 852, column: 28, scope: !2512)
!2521 = distinct !{!2521, !2515, !2522}
!2522 = !DILocation(line: 853, column: 20, scope: !2513)
!2523 = !DILocation(line: 854, column: 13, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2505, file: !212, line: 854, column: 7)
!2525 = !DILocation(line: 854, column: 17, scope: !2524)
!2526 = !DILocation(line: 854, column: 7, scope: !2505)
!2527 = !DILocation(line: 856, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !212, line: 855, column: 5)
!2529 = !DILocation(line: 857, column: 21, scope: !2528)
!2530 = !{!2518, !1311, i64 0}
!2531 = !DILocation(line: 858, column: 20, scope: !2528)
!2532 = !DILocation(line: 859, column: 5, scope: !2528)
!2533 = !DILocation(line: 860, column: 10, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2505, file: !212, line: 860, column: 7)
!2535 = !DILocation(line: 860, column: 7, scope: !2505)
!2536 = !DILocation(line: 862, column: 13, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !212, line: 861, column: 5)
!2538 = !DILocation(line: 862, column: 7, scope: !2537)
!2539 = !DILocation(line: 863, column: 15, scope: !2537)
!2540 = !DILocation(line: 864, column: 5, scope: !2537)
!2541 = !DILocation(line: 865, column: 10, scope: !2505)
!2542 = !DILocation(line: 866, column: 1, scope: !2505)
!2543 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !410, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2544)
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "n", arg: 1, scope: !2543, file: !212, line: 931, type: !18)
!2546 = !DILocalVariable(name: "arg", arg: 2, scope: !2543, file: !212, line: 931, type: !6)
!2547 = !DILocation(line: 0, scope: !2543)
!2548 = !DILocation(line: 933, column: 10, scope: !2543)
!2549 = !DILocation(line: 933, column: 3, scope: !2543)
!2550 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2551, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!25, !18, !6, !69, !258}
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2560, !2563, !2564, !2566, !2567, !2568}
!2554 = !DILocalVariable(name: "n", arg: 1, scope: !2550, file: !212, line: 877, type: !18)
!2555 = !DILocalVariable(name: "arg", arg: 2, scope: !2550, file: !212, line: 877, type: !6)
!2556 = !DILocalVariable(name: "argsize", arg: 3, scope: !2550, file: !212, line: 877, type: !69)
!2557 = !DILocalVariable(name: "options", arg: 4, scope: !2550, file: !212, line: 878, type: !258)
!2558 = !DILocalVariable(name: "e", scope: !2550, file: !212, line: 880, type: !18)
!2559 = !DILocalVariable(name: "sv", scope: !2550, file: !212, line: 882, type: !339)
!2560 = !DILocalVariable(name: "preallocated", scope: !2561, file: !212, line: 889, type: !92)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !212, line: 888, column: 5)
!2562 = distinct !DILexicalBlock(scope: !2550, file: !212, line: 887, column: 7)
!2563 = !DILocalVariable(name: "nmax", scope: !2561, file: !212, line: 890, type: !18)
!2564 = !DILocalVariable(name: "size", scope: !2565, file: !212, line: 903, type: !69)
!2565 = distinct !DILexicalBlock(scope: !2550, file: !212, line: 902, column: 3)
!2566 = !DILocalVariable(name: "val", scope: !2565, file: !212, line: 904, type: !25)
!2567 = !DILocalVariable(name: "flags", scope: !2565, file: !212, line: 906, type: !18)
!2568 = !DILocalVariable(name: "qsize", scope: !2565, file: !212, line: 907, type: !69)
!2569 = !DILocation(line: 0, scope: !2550)
!2570 = !DILocation(line: 880, column: 11, scope: !2550)
!2571 = !DILocation(line: 882, column: 24, scope: !2550)
!2572 = !DILocation(line: 884, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2550, file: !212, line: 884, column: 7)
!2574 = !DILocation(line: 884, column: 7, scope: !2550)
!2575 = !DILocation(line: 885, column: 5, scope: !2573)
!2576 = !DILocation(line: 887, column: 7, scope: !2562)
!2577 = !DILocation(line: 887, column: 14, scope: !2562)
!2578 = !DILocation(line: 887, column: 7, scope: !2550)
!2579 = !DILocation(line: 889, column: 31, scope: !2561)
!2580 = !DILocation(line: 0, scope: !2561)
!2581 = !DILocation(line: 892, column: 16, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2561, file: !212, line: 892, column: 11)
!2583 = !DILocation(line: 892, column: 11, scope: !2561)
!2584 = !DILocation(line: 893, column: 9, scope: !2582)
!2585 = !DILocation(line: 895, column: 32, scope: !2561)
!2586 = !DILocation(line: 895, column: 61, scope: !2561)
!2587 = !DILocation(line: 895, column: 58, scope: !2561)
!2588 = !DILocation(line: 895, column: 66, scope: !2561)
!2589 = !DILocation(line: 895, column: 22, scope: !2561)
!2590 = !DILocation(line: 895, column: 15, scope: !2561)
!2591 = !DILocation(line: 896, column: 11, scope: !2561)
!2592 = !DILocation(line: 897, column: 15, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2561, file: !212, line: 896, column: 11)
!2594 = !{i64 0, i64 8, !1310, i64 8, i64 8, !1218}
!2595 = !DILocation(line: 897, column: 9, scope: !2593)
!2596 = !DILocation(line: 898, column: 20, scope: !2561)
!2597 = !DILocation(line: 898, column: 18, scope: !2561)
!2598 = !DILocation(line: 898, column: 15, scope: !2561)
!2599 = !DILocation(line: 898, column: 38, scope: !2561)
!2600 = !DILocation(line: 898, column: 31, scope: !2561)
!2601 = !DILocation(line: 898, column: 48, scope: !2561)
!2602 = !DILocation(line: 0, scope: !2000, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 898, column: 7, scope: !2561)
!2604 = !DILocation(line: 71, column: 10, scope: !2000, inlinedAt: !2603)
!2605 = !DILocation(line: 899, column: 14, scope: !2561)
!2606 = !DILocation(line: 900, column: 5, scope: !2561)
!2607 = !DILocation(line: 903, column: 19, scope: !2565)
!2608 = !DILocation(line: 903, column: 25, scope: !2565)
!2609 = !DILocation(line: 0, scope: !2565)
!2610 = !DILocation(line: 904, column: 23, scope: !2565)
!2611 = !DILocation(line: 906, column: 26, scope: !2565)
!2612 = !DILocation(line: 906, column: 32, scope: !2565)
!2613 = !DILocation(line: 908, column: 55, scope: !2565)
!2614 = !DILocation(line: 909, column: 46, scope: !2565)
!2615 = !DILocation(line: 910, column: 55, scope: !2565)
!2616 = !DILocation(line: 911, column: 55, scope: !2565)
!2617 = !DILocation(line: 907, column: 20, scope: !2565)
!2618 = !DILocation(line: 913, column: 14, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2565, file: !212, line: 913, column: 9)
!2620 = !DILocation(line: 913, column: 9, scope: !2565)
!2621 = !DILocation(line: 915, column: 35, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !212, line: 914, column: 7)
!2623 = !DILocation(line: 915, column: 20, scope: !2622)
!2624 = !DILocation(line: 916, column: 17, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2622, file: !212, line: 916, column: 13)
!2626 = !DILocation(line: 916, column: 13, scope: !2622)
!2627 = !DILocation(line: 917, column: 11, scope: !2625)
!2628 = !DILocation(line: 0, scope: !2467, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 918, column: 27, scope: !2622)
!2630 = !DILocation(line: 218, column: 10, scope: !2467, inlinedAt: !2629)
!2631 = !DILocation(line: 918, column: 19, scope: !2622)
!2632 = !DILocation(line: 919, column: 69, scope: !2622)
!2633 = !DILocation(line: 921, column: 44, scope: !2622)
!2634 = !DILocation(line: 922, column: 44, scope: !2622)
!2635 = !DILocation(line: 919, column: 9, scope: !2622)
!2636 = !DILocation(line: 923, column: 7, scope: !2622)
!2637 = !DILocation(line: 925, column: 11, scope: !2565)
!2638 = !DILocation(line: 926, column: 5, scope: !2565)
!2639 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2640, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!25, !18, !6, !69}
!2642 = !{!2643, !2644, !2645}
!2643 = !DILocalVariable(name: "n", arg: 1, scope: !2639, file: !212, line: 937, type: !18)
!2644 = !DILocalVariable(name: "arg", arg: 2, scope: !2639, file: !212, line: 937, type: !6)
!2645 = !DILocalVariable(name: "argsize", arg: 3, scope: !2639, file: !212, line: 937, type: !69)
!2646 = !DILocation(line: 0, scope: !2639)
!2647 = !DILocation(line: 939, column: 10, scope: !2639)
!2648 = !DILocation(line: 939, column: 3, scope: !2639)
!2649 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2650)
!2650 = !{!2651}
!2651 = !DILocalVariable(name: "arg", arg: 1, scope: !2649, file: !212, line: 943, type: !6)
!2652 = !DILocation(line: 0, scope: !2649)
!2653 = !DILocation(line: 0, scope: !2543, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 945, column: 10, scope: !2649)
!2655 = !DILocation(line: 933, column: 10, scope: !2543, inlinedAt: !2654)
!2656 = !DILocation(line: 945, column: 3, scope: !2649)
!2657 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2658, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!25, !6, !69}
!2660 = !{!2661, !2662}
!2661 = !DILocalVariable(name: "arg", arg: 1, scope: !2657, file: !212, line: 949, type: !6)
!2662 = !DILocalVariable(name: "argsize", arg: 2, scope: !2657, file: !212, line: 949, type: !69)
!2663 = !DILocation(line: 0, scope: !2657)
!2664 = !DILocation(line: 0, scope: !2639, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 951, column: 10, scope: !2657)
!2666 = !DILocation(line: 939, column: 10, scope: !2639, inlinedAt: !2665)
!2667 = !DILocation(line: 951, column: 3, scope: !2657)
!2668 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !467, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2669)
!2669 = !{!2670, !2671, !2672, !2673}
!2670 = !DILocalVariable(name: "n", arg: 1, scope: !2668, file: !212, line: 955, type: !18)
!2671 = !DILocalVariable(name: "s", arg: 2, scope: !2668, file: !212, line: 955, type: !214)
!2672 = !DILocalVariable(name: "arg", arg: 3, scope: !2668, file: !212, line: 955, type: !6)
!2673 = !DILocalVariable(name: "o", scope: !2668, file: !212, line: 957, type: !259)
!2674 = !DILocation(line: 0, scope: !2668)
!2675 = !DILocation(line: 957, column: 3, scope: !2668)
!2676 = !DILocation(line: 957, column: 32, scope: !2668)
!2677 = !DILocalVariable(name: "style", arg: 1, scope: !2678, file: !212, line: 193, type: !214)
!2678 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2679, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!260, !214}
!2681 = !{!2677, !2682}
!2682 = !DILocalVariable(name: "o", scope: !2678, file: !212, line: 195, type: !260)
!2683 = !DILocation(line: 0, scope: !2678, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 957, column: 36, scope: !2668)
!2685 = !DILocation(line: 195, column: 26, scope: !2678, inlinedAt: !2684)
!2686 = !{!2687}
!2687 = distinct !{!2687, !2688, !"quoting_options_from_style: argument 0"}
!2688 = distinct !{!2688, !"quoting_options_from_style"}
!2689 = !DILocation(line: 196, column: 13, scope: !2690, inlinedAt: !2684)
!2690 = distinct !DILexicalBlock(scope: !2678, file: !212, line: 196, column: 7)
!2691 = !DILocation(line: 196, column: 7, scope: !2678, inlinedAt: !2684)
!2692 = !DILocation(line: 197, column: 5, scope: !2690, inlinedAt: !2684)
!2693 = !DILocation(line: 198, column: 5, scope: !2678, inlinedAt: !2684)
!2694 = !DILocation(line: 198, column: 11, scope: !2678, inlinedAt: !2684)
!2695 = !DILocation(line: 958, column: 10, scope: !2668)
!2696 = !DILocation(line: 959, column: 1, scope: !2668)
!2697 = !DILocation(line: 958, column: 3, scope: !2668)
!2698 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2699, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!25, !18, !214, !6, !69}
!2701 = !{!2702, !2703, !2704, !2705, !2706}
!2702 = !DILocalVariable(name: "n", arg: 1, scope: !2698, file: !212, line: 962, type: !18)
!2703 = !DILocalVariable(name: "s", arg: 2, scope: !2698, file: !212, line: 962, type: !214)
!2704 = !DILocalVariable(name: "arg", arg: 3, scope: !2698, file: !212, line: 963, type: !6)
!2705 = !DILocalVariable(name: "argsize", arg: 4, scope: !2698, file: !212, line: 963, type: !69)
!2706 = !DILocalVariable(name: "o", scope: !2698, file: !212, line: 965, type: !259)
!2707 = !DILocation(line: 0, scope: !2698)
!2708 = !DILocation(line: 965, column: 3, scope: !2698)
!2709 = !DILocation(line: 965, column: 32, scope: !2698)
!2710 = !DILocation(line: 0, scope: !2678, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 965, column: 36, scope: !2698)
!2712 = !DILocation(line: 195, column: 26, scope: !2678, inlinedAt: !2711)
!2713 = !{!2714}
!2714 = distinct !{!2714, !2715, !"quoting_options_from_style: argument 0"}
!2715 = distinct !{!2715, !"quoting_options_from_style"}
!2716 = !DILocation(line: 196, column: 13, scope: !2690, inlinedAt: !2711)
!2717 = !DILocation(line: 196, column: 7, scope: !2678, inlinedAt: !2711)
!2718 = !DILocation(line: 197, column: 5, scope: !2690, inlinedAt: !2711)
!2719 = !DILocation(line: 198, column: 5, scope: !2678, inlinedAt: !2711)
!2720 = !DILocation(line: 198, column: 11, scope: !2678, inlinedAt: !2711)
!2721 = !DILocation(line: 966, column: 10, scope: !2698)
!2722 = !DILocation(line: 967, column: 1, scope: !2698)
!2723 = !DILocation(line: 966, column: 3, scope: !2698)
!2724 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !2725, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!25, !214, !6}
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "s", arg: 1, scope: !2724, file: !212, line: 970, type: !214)
!2729 = !DILocalVariable(name: "arg", arg: 2, scope: !2724, file: !212, line: 970, type: !6)
!2730 = !DILocation(line: 195, column: 26, scope: !2678, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 957, column: 36, scope: !2668, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 972, column: 10, scope: !2724)
!2733 = !DILocation(line: 957, column: 32, scope: !2668, inlinedAt: !2732)
!2734 = !DILocation(line: 0, scope: !2724)
!2735 = !DILocation(line: 0, scope: !2668, inlinedAt: !2732)
!2736 = !DILocation(line: 957, column: 3, scope: !2668, inlinedAt: !2732)
!2737 = !DILocation(line: 0, scope: !2678, inlinedAt: !2731)
!2738 = !{!2739}
!2739 = distinct !{!2739, !2740, !"quoting_options_from_style: argument 0"}
!2740 = distinct !{!2740, !"quoting_options_from_style"}
!2741 = !DILocation(line: 196, column: 13, scope: !2690, inlinedAt: !2731)
!2742 = !DILocation(line: 196, column: 7, scope: !2678, inlinedAt: !2731)
!2743 = !DILocation(line: 197, column: 5, scope: !2690, inlinedAt: !2731)
!2744 = !DILocation(line: 198, column: 5, scope: !2678, inlinedAt: !2731)
!2745 = !DILocation(line: 198, column: 11, scope: !2678, inlinedAt: !2731)
!2746 = !DILocation(line: 958, column: 10, scope: !2668, inlinedAt: !2732)
!2747 = !DILocation(line: 959, column: 1, scope: !2668, inlinedAt: !2732)
!2748 = !DILocation(line: 972, column: 3, scope: !2724)
!2749 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2750, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!25, !214, !6, !69}
!2752 = !{!2753, !2754, !2755}
!2753 = !DILocalVariable(name: "s", arg: 1, scope: !2749, file: !212, line: 976, type: !214)
!2754 = !DILocalVariable(name: "arg", arg: 2, scope: !2749, file: !212, line: 976, type: !6)
!2755 = !DILocalVariable(name: "argsize", arg: 3, scope: !2749, file: !212, line: 976, type: !69)
!2756 = !DILocation(line: 195, column: 26, scope: !2678, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 965, column: 36, scope: !2698, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 978, column: 10, scope: !2749)
!2759 = !DILocation(line: 965, column: 32, scope: !2698, inlinedAt: !2758)
!2760 = !DILocation(line: 0, scope: !2749)
!2761 = !DILocation(line: 0, scope: !2698, inlinedAt: !2758)
!2762 = !DILocation(line: 965, column: 3, scope: !2698, inlinedAt: !2758)
!2763 = !DILocation(line: 0, scope: !2678, inlinedAt: !2757)
!2764 = !{!2765}
!2765 = distinct !{!2765, !2766, !"quoting_options_from_style: argument 0"}
!2766 = distinct !{!2766, !"quoting_options_from_style"}
!2767 = !DILocation(line: 196, column: 13, scope: !2690, inlinedAt: !2757)
!2768 = !DILocation(line: 196, column: 7, scope: !2678, inlinedAt: !2757)
!2769 = !DILocation(line: 197, column: 5, scope: !2690, inlinedAt: !2757)
!2770 = !DILocation(line: 198, column: 5, scope: !2678, inlinedAt: !2757)
!2771 = !DILocation(line: 198, column: 11, scope: !2678, inlinedAt: !2757)
!2772 = !DILocation(line: 966, column: 10, scope: !2698, inlinedAt: !2758)
!2773 = !DILocation(line: 967, column: 1, scope: !2698, inlinedAt: !2758)
!2774 = !DILocation(line: 978, column: 3, scope: !2749)
!2775 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2776, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!25, !6, !69, !8}
!2778 = !{!2779, !2780, !2781, !2782}
!2779 = !DILocalVariable(name: "arg", arg: 1, scope: !2775, file: !212, line: 982, type: !6)
!2780 = !DILocalVariable(name: "argsize", arg: 2, scope: !2775, file: !212, line: 982, type: !69)
!2781 = !DILocalVariable(name: "ch", arg: 3, scope: !2775, file: !212, line: 982, type: !8)
!2782 = !DILocalVariable(name: "options", scope: !2775, file: !212, line: 984, type: !260)
!2783 = !DILocation(line: 0, scope: !2775)
!2784 = !DILocation(line: 984, column: 3, scope: !2775)
!2785 = !DILocation(line: 984, column: 26, scope: !2775)
!2786 = !DILocation(line: 985, column: 13, scope: !2775)
!2787 = !{i64 0, i64 4, !1354, i64 4, i64 4, !1273, i64 8, i64 32, !1354, i64 40, i64 8, !1218, i64 48, i64 8, !1218}
!2788 = !DILocation(line: 0, scope: !1614, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 986, column: 3, scope: !2775)
!2790 = !DILocation(line: 156, column: 62, scope: !1614, inlinedAt: !2789)
!2791 = !DILocation(line: 156, column: 57, scope: !1614, inlinedAt: !2789)
!2792 = !DILocation(line: 157, column: 15, scope: !1614, inlinedAt: !2789)
!2793 = !DILocation(line: 158, column: 12, scope: !1614, inlinedAt: !2789)
!2794 = !DILocation(line: 158, column: 15, scope: !1614, inlinedAt: !2789)
!2795 = !DILocation(line: 158, column: 25, scope: !1614, inlinedAt: !2789)
!2796 = !DILocation(line: 159, column: 18, scope: !1614, inlinedAt: !2789)
!2797 = !DILocation(line: 159, column: 23, scope: !1614, inlinedAt: !2789)
!2798 = !DILocation(line: 159, column: 6, scope: !1614, inlinedAt: !2789)
!2799 = !DILocation(line: 987, column: 10, scope: !2775)
!2800 = !DILocation(line: 988, column: 1, scope: !2775)
!2801 = !DILocation(line: 987, column: 3, scope: !2775)
!2802 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2803, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!25, !6, !8}
!2805 = !{!2806, !2807}
!2806 = !DILocalVariable(name: "arg", arg: 1, scope: !2802, file: !212, line: 991, type: !6)
!2807 = !DILocalVariable(name: "ch", arg: 2, scope: !2802, file: !212, line: 991, type: !8)
!2808 = !DILocation(line: 984, column: 26, scope: !2775, inlinedAt: !2809)
!2809 = distinct !DILocation(line: 993, column: 10, scope: !2802)
!2810 = !DILocation(line: 0, scope: !2802)
!2811 = !DILocation(line: 0, scope: !2775, inlinedAt: !2809)
!2812 = !DILocation(line: 984, column: 3, scope: !2775, inlinedAt: !2809)
!2813 = !DILocation(line: 985, column: 13, scope: !2775, inlinedAt: !2809)
!2814 = !DILocation(line: 0, scope: !1614, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 986, column: 3, scope: !2775, inlinedAt: !2809)
!2816 = !DILocation(line: 156, column: 62, scope: !1614, inlinedAt: !2815)
!2817 = !DILocation(line: 156, column: 57, scope: !1614, inlinedAt: !2815)
!2818 = !DILocation(line: 157, column: 15, scope: !1614, inlinedAt: !2815)
!2819 = !DILocation(line: 158, column: 12, scope: !1614, inlinedAt: !2815)
!2820 = !DILocation(line: 158, column: 15, scope: !1614, inlinedAt: !2815)
!2821 = !DILocation(line: 158, column: 25, scope: !1614, inlinedAt: !2815)
!2822 = !DILocation(line: 159, column: 18, scope: !1614, inlinedAt: !2815)
!2823 = !DILocation(line: 159, column: 23, scope: !1614, inlinedAt: !2815)
!2824 = !DILocation(line: 159, column: 6, scope: !1614, inlinedAt: !2815)
!2825 = !DILocation(line: 987, column: 10, scope: !2775, inlinedAt: !2809)
!2826 = !DILocation(line: 988, column: 1, scope: !2775, inlinedAt: !2809)
!2827 = !DILocation(line: 993, column: 3, scope: !2802)
!2828 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2829)
!2829 = !{!2830}
!2830 = !DILocalVariable(name: "arg", arg: 1, scope: !2828, file: !212, line: 997, type: !6)
!2831 = !DILocation(line: 984, column: 26, scope: !2775, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 993, column: 10, scope: !2802, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 999, column: 10, scope: !2828)
!2834 = !DILocation(line: 0, scope: !2828)
!2835 = !DILocation(line: 0, scope: !2802, inlinedAt: !2833)
!2836 = !DILocation(line: 0, scope: !2775, inlinedAt: !2832)
!2837 = !DILocation(line: 984, column: 3, scope: !2775, inlinedAt: !2832)
!2838 = !DILocation(line: 985, column: 13, scope: !2775, inlinedAt: !2832)
!2839 = !DILocation(line: 0, scope: !1614, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 986, column: 3, scope: !2775, inlinedAt: !2832)
!2841 = !DILocation(line: 156, column: 57, scope: !1614, inlinedAt: !2840)
!2842 = !DILocation(line: 158, column: 12, scope: !1614, inlinedAt: !2840)
!2843 = !DILocation(line: 159, column: 6, scope: !1614, inlinedAt: !2840)
!2844 = !DILocation(line: 987, column: 10, scope: !2775, inlinedAt: !2832)
!2845 = !DILocation(line: 988, column: 1, scope: !2775, inlinedAt: !2832)
!2846 = !DILocation(line: 999, column: 3, scope: !2828)
!2847 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2658, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2848)
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "arg", arg: 1, scope: !2847, file: !212, line: 1003, type: !6)
!2850 = !DILocalVariable(name: "argsize", arg: 2, scope: !2847, file: !212, line: 1003, type: !69)
!2851 = !DILocation(line: 984, column: 26, scope: !2775, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 1005, column: 10, scope: !2847)
!2853 = !DILocation(line: 0, scope: !2847)
!2854 = !DILocation(line: 0, scope: !2775, inlinedAt: !2852)
!2855 = !DILocation(line: 984, column: 3, scope: !2775, inlinedAt: !2852)
!2856 = !DILocation(line: 985, column: 13, scope: !2775, inlinedAt: !2852)
!2857 = !DILocation(line: 0, scope: !1614, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 986, column: 3, scope: !2775, inlinedAt: !2852)
!2859 = !DILocation(line: 156, column: 57, scope: !1614, inlinedAt: !2858)
!2860 = !DILocation(line: 158, column: 12, scope: !1614, inlinedAt: !2858)
!2861 = !DILocation(line: 159, column: 6, scope: !1614, inlinedAt: !2858)
!2862 = !DILocation(line: 987, column: 10, scope: !2775, inlinedAt: !2852)
!2863 = !DILocation(line: 988, column: 1, scope: !2775, inlinedAt: !2852)
!2864 = !DILocation(line: 1005, column: 3, scope: !2847)
!2865 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !467, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2866)
!2866 = !{!2867, !2868, !2869, !2870}
!2867 = !DILocalVariable(name: "n", arg: 1, scope: !2865, file: !212, line: 1009, type: !18)
!2868 = !DILocalVariable(name: "s", arg: 2, scope: !2865, file: !212, line: 1009, type: !214)
!2869 = !DILocalVariable(name: "arg", arg: 3, scope: !2865, file: !212, line: 1009, type: !6)
!2870 = !DILocalVariable(name: "options", scope: !2865, file: !212, line: 1011, type: !260)
!2871 = !DILocation(line: 195, column: 26, scope: !2678, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 1012, column: 13, scope: !2865)
!2873 = !DILocation(line: 0, scope: !2865)
!2874 = !DILocation(line: 1011, column: 3, scope: !2865)
!2875 = !DILocation(line: 1011, column: 26, scope: !2865)
!2876 = !DILocation(line: 1012, column: 13, scope: !2865)
!2877 = !DILocation(line: 0, scope: !2678, inlinedAt: !2872)
!2878 = !{!2879}
!2879 = distinct !{!2879, !2880, !"quoting_options_from_style: argument 0"}
!2880 = distinct !{!2880, !"quoting_options_from_style"}
!2881 = !DILocation(line: 196, column: 13, scope: !2690, inlinedAt: !2872)
!2882 = !DILocation(line: 196, column: 7, scope: !2678, inlinedAt: !2872)
!2883 = !DILocation(line: 197, column: 5, scope: !2690, inlinedAt: !2872)
!2884 = !DILocation(line: 0, scope: !1614, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1013, column: 3, scope: !2865)
!2886 = !DILocation(line: 156, column: 57, scope: !1614, inlinedAt: !2885)
!2887 = !DILocation(line: 158, column: 12, scope: !1614, inlinedAt: !2885)
!2888 = !DILocation(line: 159, column: 6, scope: !1614, inlinedAt: !2885)
!2889 = !DILocation(line: 1014, column: 10, scope: !2865)
!2890 = !DILocation(line: 1015, column: 1, scope: !2865)
!2891 = !DILocation(line: 1014, column: 3, scope: !2865)
!2892 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2893, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!25, !18, !6, !6, !6}
!2895 = !{!2896, !2897, !2898, !2899}
!2896 = !DILocalVariable(name: "n", arg: 1, scope: !2892, file: !212, line: 1018, type: !18)
!2897 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2892, file: !212, line: 1018, type: !6)
!2898 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2892, file: !212, line: 1019, type: !6)
!2899 = !DILocalVariable(name: "arg", arg: 4, scope: !2892, file: !212, line: 1019, type: !6)
!2900 = !DILocalVariable(name: "o", scope: !2901, file: !212, line: 1030, type: !260)
!2901 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2902, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!25, !18, !6, !6, !6, !69}
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2900}
!2905 = !DILocalVariable(name: "n", arg: 1, scope: !2901, file: !212, line: 1026, type: !18)
!2906 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2901, file: !212, line: 1026, type: !6)
!2907 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2901, file: !212, line: 1027, type: !6)
!2908 = !DILocalVariable(name: "arg", arg: 4, scope: !2901, file: !212, line: 1028, type: !6)
!2909 = !DILocalVariable(name: "argsize", arg: 5, scope: !2901, file: !212, line: 1028, type: !69)
!2910 = !DILocation(line: 1030, column: 26, scope: !2901, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 1021, column: 10, scope: !2892)
!2912 = !DILocation(line: 0, scope: !2892)
!2913 = !DILocation(line: 0, scope: !2901, inlinedAt: !2911)
!2914 = !DILocation(line: 1030, column: 3, scope: !2901, inlinedAt: !2911)
!2915 = !DILocation(line: 1030, column: 30, scope: !2901, inlinedAt: !2911)
!2916 = !DILocation(line: 0, scope: !1654, inlinedAt: !2917)
!2917 = distinct !DILocation(line: 1031, column: 3, scope: !2901, inlinedAt: !2911)
!2918 = !DILocation(line: 184, column: 6, scope: !1654, inlinedAt: !2917)
!2919 = !DILocation(line: 184, column: 12, scope: !1654, inlinedAt: !2917)
!2920 = !DILocation(line: 185, column: 8, scope: !1668, inlinedAt: !2917)
!2921 = !DILocation(line: 185, column: 23, scope: !1668, inlinedAt: !2917)
!2922 = !DILocation(line: 185, column: 19, scope: !1668, inlinedAt: !2917)
!2923 = !DILocation(line: 186, column: 5, scope: !1668, inlinedAt: !2917)
!2924 = !DILocation(line: 187, column: 6, scope: !1654, inlinedAt: !2917)
!2925 = !DILocation(line: 187, column: 17, scope: !1654, inlinedAt: !2917)
!2926 = !DILocation(line: 188, column: 6, scope: !1654, inlinedAt: !2917)
!2927 = !DILocation(line: 188, column: 18, scope: !1654, inlinedAt: !2917)
!2928 = !DILocation(line: 1032, column: 10, scope: !2901, inlinedAt: !2911)
!2929 = !DILocation(line: 1033, column: 1, scope: !2901, inlinedAt: !2911)
!2930 = !DILocation(line: 1021, column: 3, scope: !2892)
!2931 = !DILocation(line: 0, scope: !2901)
!2932 = !DILocation(line: 1030, column: 3, scope: !2901)
!2933 = !DILocation(line: 1030, column: 26, scope: !2901)
!2934 = !DILocation(line: 1030, column: 30, scope: !2901)
!2935 = !DILocation(line: 0, scope: !1654, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 1031, column: 3, scope: !2901)
!2937 = !DILocation(line: 184, column: 6, scope: !1654, inlinedAt: !2936)
!2938 = !DILocation(line: 184, column: 12, scope: !1654, inlinedAt: !2936)
!2939 = !DILocation(line: 185, column: 8, scope: !1668, inlinedAt: !2936)
!2940 = !DILocation(line: 185, column: 23, scope: !1668, inlinedAt: !2936)
!2941 = !DILocation(line: 185, column: 19, scope: !1668, inlinedAt: !2936)
!2942 = !DILocation(line: 186, column: 5, scope: !1668, inlinedAt: !2936)
!2943 = !DILocation(line: 187, column: 6, scope: !1654, inlinedAt: !2936)
!2944 = !DILocation(line: 187, column: 17, scope: !1654, inlinedAt: !2936)
!2945 = !DILocation(line: 188, column: 6, scope: !1654, inlinedAt: !2936)
!2946 = !DILocation(line: 188, column: 18, scope: !1654, inlinedAt: !2936)
!2947 = !DILocation(line: 1032, column: 10, scope: !2901)
!2948 = !DILocation(line: 1033, column: 1, scope: !2901)
!2949 = !DILocation(line: 1032, column: 3, scope: !2901)
!2950 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !2951, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!25, !6, !6, !6}
!2953 = !{!2954, !2955, !2956}
!2954 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2950, file: !212, line: 1036, type: !6)
!2955 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2950, file: !212, line: 1036, type: !6)
!2956 = !DILocalVariable(name: "arg", arg: 3, scope: !2950, file: !212, line: 1037, type: !6)
!2957 = !DILocation(line: 1030, column: 26, scope: !2901, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 1021, column: 10, scope: !2892, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 1039, column: 10, scope: !2950)
!2960 = !DILocation(line: 0, scope: !2950)
!2961 = !DILocation(line: 0, scope: !2892, inlinedAt: !2959)
!2962 = !DILocation(line: 0, scope: !2901, inlinedAt: !2958)
!2963 = !DILocation(line: 1030, column: 3, scope: !2901, inlinedAt: !2958)
!2964 = !DILocation(line: 1030, column: 30, scope: !2901, inlinedAt: !2958)
!2965 = !DILocation(line: 0, scope: !1654, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 1031, column: 3, scope: !2901, inlinedAt: !2958)
!2967 = !DILocation(line: 184, column: 6, scope: !1654, inlinedAt: !2966)
!2968 = !DILocation(line: 184, column: 12, scope: !1654, inlinedAt: !2966)
!2969 = !DILocation(line: 185, column: 8, scope: !1668, inlinedAt: !2966)
!2970 = !DILocation(line: 185, column: 23, scope: !1668, inlinedAt: !2966)
!2971 = !DILocation(line: 185, column: 19, scope: !1668, inlinedAt: !2966)
!2972 = !DILocation(line: 186, column: 5, scope: !1668, inlinedAt: !2966)
!2973 = !DILocation(line: 187, column: 6, scope: !1654, inlinedAt: !2966)
!2974 = !DILocation(line: 187, column: 17, scope: !1654, inlinedAt: !2966)
!2975 = !DILocation(line: 188, column: 6, scope: !1654, inlinedAt: !2966)
!2976 = !DILocation(line: 188, column: 18, scope: !1654, inlinedAt: !2966)
!2977 = !DILocation(line: 1032, column: 10, scope: !2901, inlinedAt: !2958)
!2978 = !DILocation(line: 1033, column: 1, scope: !2901, inlinedAt: !2958)
!2979 = !DILocation(line: 1039, column: 3, scope: !2950)
!2980 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !2981, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!25, !6, !6, !6, !69}
!2983 = !{!2984, !2985, !2986, !2987}
!2984 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2980, file: !212, line: 1043, type: !6)
!2985 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2980, file: !212, line: 1043, type: !6)
!2986 = !DILocalVariable(name: "arg", arg: 3, scope: !2980, file: !212, line: 1044, type: !6)
!2987 = !DILocalVariable(name: "argsize", arg: 4, scope: !2980, file: !212, line: 1044, type: !69)
!2988 = !DILocation(line: 1030, column: 26, scope: !2901, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 1046, column: 10, scope: !2980)
!2990 = !DILocation(line: 0, scope: !2980)
!2991 = !DILocation(line: 0, scope: !2901, inlinedAt: !2989)
!2992 = !DILocation(line: 1030, column: 3, scope: !2901, inlinedAt: !2989)
!2993 = !DILocation(line: 1030, column: 30, scope: !2901, inlinedAt: !2989)
!2994 = !DILocation(line: 0, scope: !1654, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 1031, column: 3, scope: !2901, inlinedAt: !2989)
!2996 = !DILocation(line: 184, column: 6, scope: !1654, inlinedAt: !2995)
!2997 = !DILocation(line: 184, column: 12, scope: !1654, inlinedAt: !2995)
!2998 = !DILocation(line: 185, column: 8, scope: !1668, inlinedAt: !2995)
!2999 = !DILocation(line: 185, column: 23, scope: !1668, inlinedAt: !2995)
!3000 = !DILocation(line: 185, column: 19, scope: !1668, inlinedAt: !2995)
!3001 = !DILocation(line: 186, column: 5, scope: !1668, inlinedAt: !2995)
!3002 = !DILocation(line: 187, column: 6, scope: !1654, inlinedAt: !2995)
!3003 = !DILocation(line: 187, column: 17, scope: !1654, inlinedAt: !2995)
!3004 = !DILocation(line: 188, column: 6, scope: !1654, inlinedAt: !2995)
!3005 = !DILocation(line: 188, column: 18, scope: !1654, inlinedAt: !2995)
!3006 = !DILocation(line: 1032, column: 10, scope: !2901, inlinedAt: !2989)
!3007 = !DILocation(line: 1033, column: 1, scope: !2901, inlinedAt: !2989)
!3008 = !DILocation(line: 1046, column: 3, scope: !2980)
!3009 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !3010, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!6, !18, !6, !69}
!3012 = !{!3013, !3014, !3015}
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !212, line: 1061, type: !18)
!3014 = !DILocalVariable(name: "arg", arg: 2, scope: !3009, file: !212, line: 1061, type: !6)
!3015 = !DILocalVariable(name: "argsize", arg: 3, scope: !3009, file: !212, line: 1061, type: !69)
!3016 = !DILocation(line: 0, scope: !3009)
!3017 = !DILocation(line: 1063, column: 10, scope: !3009)
!3018 = !DILocation(line: 1063, column: 3, scope: !3009)
!3019 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !3020, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!6, !6, !69}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "arg", arg: 1, scope: !3019, file: !212, line: 1067, type: !6)
!3024 = !DILocalVariable(name: "argsize", arg: 2, scope: !3019, file: !212, line: 1067, type: !69)
!3025 = !DILocation(line: 0, scope: !3019)
!3026 = !DILocation(line: 0, scope: !3009, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 1069, column: 10, scope: !3019)
!3028 = !DILocation(line: 1063, column: 10, scope: !3009, inlinedAt: !3027)
!3029 = !DILocation(line: 1069, column: 3, scope: !3019)
!3030 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !3031, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!6, !18, !6}
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "n", arg: 1, scope: !3030, file: !212, line: 1073, type: !18)
!3035 = !DILocalVariable(name: "arg", arg: 2, scope: !3030, file: !212, line: 1073, type: !6)
!3036 = !DILocation(line: 0, scope: !3030)
!3037 = !DILocation(line: 0, scope: !3009, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1075, column: 10, scope: !3030)
!3039 = !DILocation(line: 1063, column: 10, scope: !3009, inlinedAt: !3038)
!3040 = !DILocation(line: 1075, column: 3, scope: !3030)
!3041 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !430, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !3042)
!3042 = !{!3043}
!3043 = !DILocalVariable(name: "arg", arg: 1, scope: !3041, file: !212, line: 1079, type: !6)
!3044 = !DILocation(line: 0, scope: !3041)
!3045 = !DILocation(line: 0, scope: !3030, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1081, column: 10, scope: !3041)
!3047 = !DILocation(line: 0, scope: !3009, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 1075, column: 10, scope: !3030, inlinedAt: !3046)
!3049 = !DILocation(line: 1063, column: 10, scope: !3009, inlinedAt: !3048)
!3050 = !DILocation(line: 1081, column: 3, scope: !3041)
!3051 = distinct !DISubprogram(name: "version_etc_arn", scope: !482, file: !482, line: 61, type: !3052, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3058)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !3054, !6, !6, !6, !3057, !69}
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3056, line: 7, baseType: !492)
!3056 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!3058 = !{!3059, !3060, !3061, !3062, !3063, !3064}
!3059 = !DILocalVariable(name: "stream", arg: 1, scope: !3051, file: !482, line: 61, type: !3054)
!3060 = !DILocalVariable(name: "command_name", arg: 2, scope: !3051, file: !482, line: 62, type: !6)
!3061 = !DILocalVariable(name: "package", arg: 3, scope: !3051, file: !482, line: 62, type: !6)
!3062 = !DILocalVariable(name: "version", arg: 4, scope: !3051, file: !482, line: 63, type: !6)
!3063 = !DILocalVariable(name: "authors", arg: 5, scope: !3051, file: !482, line: 64, type: !3057)
!3064 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3051, file: !482, line: 64, type: !69)
!3065 = !DILocation(line: 0, scope: !3051)
!3066 = !DILocation(line: 66, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3051, file: !482, line: 66, column: 7)
!3068 = !DILocation(line: 66, column: 7, scope: !3051)
!3069 = !DILocation(line: 67, column: 5, scope: !3067)
!3070 = !DILocation(line: 69, column: 5, scope: !3067)
!3071 = !DILocation(line: 83, column: 3, scope: !3051)
!3072 = !DILocation(line: 85, column: 3, scope: !3051)
!3073 = !DILocation(line: 88, column: 3, scope: !3051)
!3074 = !DILocation(line: 95, column: 3, scope: !3051)
!3075 = !DILocation(line: 97, column: 3, scope: !3051)
!3076 = !DILocation(line: 105, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3051, file: !482, line: 98, column: 5)
!3078 = !DILocation(line: 106, column: 7, scope: !3077)
!3079 = !DILocation(line: 109, column: 7, scope: !3077)
!3080 = !DILocation(line: 110, column: 7, scope: !3077)
!3081 = !DILocation(line: 113, column: 7, scope: !3077)
!3082 = !DILocation(line: 115, column: 7, scope: !3077)
!3083 = !DILocation(line: 120, column: 7, scope: !3077)
!3084 = !DILocation(line: 122, column: 7, scope: !3077)
!3085 = !DILocation(line: 127, column: 7, scope: !3077)
!3086 = !DILocation(line: 129, column: 7, scope: !3077)
!3087 = !DILocation(line: 134, column: 7, scope: !3077)
!3088 = !DILocation(line: 137, column: 7, scope: !3077)
!3089 = !DILocation(line: 142, column: 7, scope: !3077)
!3090 = !DILocation(line: 145, column: 7, scope: !3077)
!3091 = !DILocation(line: 150, column: 7, scope: !3077)
!3092 = !DILocation(line: 154, column: 7, scope: !3077)
!3093 = !DILocation(line: 159, column: 7, scope: !3077)
!3094 = !DILocation(line: 163, column: 7, scope: !3077)
!3095 = !DILocation(line: 170, column: 7, scope: !3077)
!3096 = !DILocation(line: 174, column: 7, scope: !3077)
!3097 = !DILocation(line: 176, column: 1, scope: !3051)
!3098 = distinct !DISubprogram(name: "version_etc_ar", scope: !482, file: !482, line: 183, type: !3099, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3101)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !3054, !6, !6, !6, !3057}
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107}
!3102 = !DILocalVariable(name: "stream", arg: 1, scope: !3098, file: !482, line: 183, type: !3054)
!3103 = !DILocalVariable(name: "command_name", arg: 2, scope: !3098, file: !482, line: 184, type: !6)
!3104 = !DILocalVariable(name: "package", arg: 3, scope: !3098, file: !482, line: 184, type: !6)
!3105 = !DILocalVariable(name: "version", arg: 4, scope: !3098, file: !482, line: 185, type: !6)
!3106 = !DILocalVariable(name: "authors", arg: 5, scope: !3098, file: !482, line: 185, type: !3057)
!3107 = !DILocalVariable(name: "n_authors", scope: !3098, file: !482, line: 187, type: !69)
!3108 = !DILocation(line: 0, scope: !3098)
!3109 = !DILocation(line: 189, column: 8, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3098, file: !482, line: 189, column: 3)
!3111 = !DILocation(line: 0, scope: !3110)
!3112 = !DILocation(line: 189, column: 23, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !482, line: 189, column: 3)
!3114 = !DILocation(line: 189, column: 3, scope: !3110)
!3115 = !DILocation(line: 189, column: 52, scope: !3113)
!3116 = distinct !{!3116, !3114, !3117}
!3117 = !DILocation(line: 190, column: 5, scope: !3110)
!3118 = !DILocation(line: 191, column: 3, scope: !3098)
!3119 = !DILocation(line: 192, column: 1, scope: !3098)
!3120 = distinct !DISubprogram(name: "version_etc_va", scope: !482, file: !482, line: 199, type: !3121, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3130)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3054, !6, !6, !6, !3123}
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !482, line: 192, size: 192, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3124, file: !482, line: 192, baseType: !159, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3124, file: !482, line: 192, baseType: !159, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3124, file: !482, line: 192, baseType: !67, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3124, file: !482, line: 192, baseType: !67, size: 64, offset: 128)
!3130 = !{!3131, !3132, !3133, !3134, !3135, !3136, !3137}
!3131 = !DILocalVariable(name: "stream", arg: 1, scope: !3120, file: !482, line: 199, type: !3054)
!3132 = !DILocalVariable(name: "command_name", arg: 2, scope: !3120, file: !482, line: 200, type: !6)
!3133 = !DILocalVariable(name: "package", arg: 3, scope: !3120, file: !482, line: 200, type: !6)
!3134 = !DILocalVariable(name: "version", arg: 4, scope: !3120, file: !482, line: 201, type: !6)
!3135 = !DILocalVariable(name: "authors", arg: 5, scope: !3120, file: !482, line: 201, type: !3123)
!3136 = !DILocalVariable(name: "n_authors", scope: !3120, file: !482, line: 203, type: !69)
!3137 = !DILocalVariable(name: "authtab", scope: !3120, file: !482, line: 204, type: !3138)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!3139 = !DILocation(line: 0, scope: !3120)
!3140 = !DILocation(line: 204, column: 3, scope: !3120)
!3141 = !DILocation(line: 204, column: 15, scope: !3120)
!3142 = !DILocation(line: 0, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !482, line: 206, column: 3)
!3144 = distinct !DILexicalBlock(scope: !3120, file: !482, line: 206, column: 3)
!3145 = !DILocation(line: 208, column: 35, scope: !3143)
!3146 = !DILocation(line: 208, column: 14, scope: !3143)
!3147 = !DILocation(line: 208, column: 33, scope: !3143)
!3148 = !DILocation(line: 208, column: 67, scope: !3143)
!3149 = !DILocation(line: 206, column: 3, scope: !3144)
!3150 = !DILocation(line: 0, scope: !3144)
!3151 = !DILocation(line: 211, column: 3, scope: !3120)
!3152 = !DILocation(line: 213, column: 1, scope: !3120)
!3153 = distinct !DISubprogram(name: "version_etc", scope: !482, file: !482, line: 230, type: !3154, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3054, !6, !6, !6, null}
!3156 = !{!3157, !3158, !3159, !3160, !3161}
!3157 = !DILocalVariable(name: "stream", arg: 1, scope: !3153, file: !482, line: 230, type: !3054)
!3158 = !DILocalVariable(name: "command_name", arg: 2, scope: !3153, file: !482, line: 231, type: !6)
!3159 = !DILocalVariable(name: "package", arg: 3, scope: !3153, file: !482, line: 231, type: !6)
!3160 = !DILocalVariable(name: "version", arg: 4, scope: !3153, file: !482, line: 232, type: !6)
!3161 = !DILocalVariable(name: "authors", scope: !3153, file: !482, line: 234, type: !3162)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !3163)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1487, line: 32, baseType: !3164)
!3164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !482, line: 234, baseType: !3165)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3124, size: 192, elements: !52)
!3166 = !DILocation(line: 0, scope: !3153)
!3167 = !DILocation(line: 234, column: 3, scope: !3153)
!3168 = !DILocation(line: 234, column: 11, scope: !3153)
!3169 = !DILocation(line: 236, column: 3, scope: !3153)
!3170 = !DILocation(line: 237, column: 3, scope: !3153)
!3171 = !DILocation(line: 238, column: 3, scope: !3153)
!3172 = !DILocation(line: 239, column: 1, scope: !3153)
!3173 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !482, file: !482, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !4)
!3174 = !DILocation(line: 244, column: 3, scope: !3173)
!3175 = !DILocation(line: 249, column: 3, scope: !3173)
!3176 = !DILocation(line: 255, column: 3, scope: !3173)
!3177 = !DILocation(line: 260, column: 3, scope: !3173)
!3178 = !DILocation(line: 262, column: 1, scope: !3173)
!3179 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !1335, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3180)
!3180 = !{!3181, !3182}
!3181 = !DILocalVariable(name: "n", arg: 1, scope: !3179, file: !249, line: 99, type: !69)
!3182 = !DILocalVariable(name: "s", arg: 2, scope: !3179, file: !249, line: 99, type: !69)
!3183 = !DILocation(line: 0, scope: !3179)
!3184 = !DILocation(line: 101, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3179, file: !249, line: 101, column: 7)
!3186 = !DILocation(line: 101, column: 7, scope: !3179)
!3187 = !DILocation(line: 102, column: 5, scope: !3185)
!3188 = !DILocation(line: 103, column: 21, scope: !3179)
!3189 = !DILocalVariable(name: "n", arg: 1, scope: !3190, file: !524, line: 39, type: !69)
!3190 = distinct !DISubprogram(name: "xmalloc", scope: !524, file: !524, line: 39, type: !3191, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3193)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!67, !69}
!3193 = !{!3189, !3194}
!3194 = !DILocalVariable(name: "p", scope: !3190, file: !524, line: 41, type: !67)
!3195 = !DILocation(line: 0, scope: !3190, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 103, column: 10, scope: !3179)
!3197 = !DILocation(line: 41, column: 13, scope: !3190, inlinedAt: !3196)
!3198 = !DILocation(line: 42, column: 8, scope: !3199, inlinedAt: !3196)
!3199 = distinct !DILexicalBlock(scope: !3190, file: !524, line: 42, column: 7)
!3200 = !DILocation(line: 42, column: 15, scope: !3199, inlinedAt: !3196)
!3201 = !DILocation(line: 42, column: 10, scope: !3199, inlinedAt: !3196)
!3202 = !DILocation(line: 43, column: 5, scope: !3199, inlinedAt: !3196)
!3203 = !DILocation(line: 103, column: 3, scope: !3179)
!3204 = !DILocation(line: 0, scope: !3190)
!3205 = !DILocation(line: 41, column: 13, scope: !3190)
!3206 = !DILocation(line: 42, column: 8, scope: !3199)
!3207 = !DILocation(line: 42, column: 15, scope: !3199)
!3208 = !DILocation(line: 42, column: 10, scope: !3199)
!3209 = !DILocation(line: 43, column: 5, scope: !3199)
!3210 = !DILocation(line: 44, column: 3, scope: !3190)
!3211 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !3212, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3214)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!67, !67, !69, !69}
!3214 = !{!3215, !3216, !3217}
!3215 = !DILocalVariable(name: "p", arg: 1, scope: !3211, file: !249, line: 112, type: !67)
!3216 = !DILocalVariable(name: "n", arg: 2, scope: !3211, file: !249, line: 112, type: !69)
!3217 = !DILocalVariable(name: "s", arg: 3, scope: !3211, file: !249, line: 112, type: !69)
!3218 = !DILocation(line: 0, scope: !3211)
!3219 = !DILocation(line: 114, column: 7, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3211, file: !249, line: 114, column: 7)
!3221 = !DILocation(line: 114, column: 7, scope: !3211)
!3222 = !DILocation(line: 115, column: 5, scope: !3220)
!3223 = !DILocation(line: 116, column: 25, scope: !3211)
!3224 = !DILocalVariable(name: "p", arg: 1, scope: !3225, file: !524, line: 51, type: !67)
!3225 = distinct !DISubprogram(name: "xrealloc", scope: !524, file: !524, line: 51, type: !3226, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3228)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!67, !67, !69}
!3228 = !{!3224, !3229}
!3229 = !DILocalVariable(name: "n", arg: 2, scope: !3225, file: !524, line: 51, type: !69)
!3230 = !DILocation(line: 0, scope: !3225, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 116, column: 10, scope: !3211)
!3232 = !DILocation(line: 53, column: 8, scope: !3233, inlinedAt: !3231)
!3233 = distinct !DILexicalBlock(scope: !3225, file: !524, line: 53, column: 7)
!3234 = !DILocation(line: 53, column: 13, scope: !3233, inlinedAt: !3231)
!3235 = !DILocation(line: 53, column: 10, scope: !3233, inlinedAt: !3231)
!3236 = !DILocation(line: 57, column: 7, scope: !3237, inlinedAt: !3231)
!3237 = distinct !DILexicalBlock(scope: !3233, file: !524, line: 54, column: 5)
!3238 = !DILocation(line: 58, column: 7, scope: !3237, inlinedAt: !3231)
!3239 = !DILocation(line: 61, column: 7, scope: !3225, inlinedAt: !3231)
!3240 = !DILocation(line: 62, column: 8, scope: !3241, inlinedAt: !3231)
!3241 = distinct !DILexicalBlock(scope: !3225, file: !524, line: 62, column: 7)
!3242 = !DILocation(line: 62, column: 13, scope: !3241, inlinedAt: !3231)
!3243 = !DILocation(line: 62, column: 10, scope: !3241, inlinedAt: !3231)
!3244 = !DILocation(line: 63, column: 5, scope: !3241, inlinedAt: !3231)
!3245 = !DILocation(line: 116, column: 3, scope: !3211)
!3246 = !DILocation(line: 0, scope: !3225)
!3247 = !DILocation(line: 53, column: 8, scope: !3233)
!3248 = !DILocation(line: 53, column: 13, scope: !3233)
!3249 = !DILocation(line: 53, column: 10, scope: !3233)
!3250 = !DILocation(line: 57, column: 7, scope: !3237)
!3251 = !DILocation(line: 58, column: 7, scope: !3237)
!3252 = !DILocation(line: 61, column: 7, scope: !3225)
!3253 = !DILocation(line: 62, column: 8, scope: !3241)
!3254 = !DILocation(line: 62, column: 13, scope: !3241)
!3255 = !DILocation(line: 62, column: 10, scope: !3241)
!3256 = !DILocation(line: 63, column: 5, scope: !3241)
!3257 = !DILocation(line: 65, column: 1, scope: !3225)
!3258 = !DILocation(line: 0, scope: !527)
!3259 = !DILocation(line: 176, column: 14, scope: !527)
!3260 = !DILocation(line: 178, column: 9, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !527, file: !249, line: 178, column: 7)
!3262 = !DILocation(line: 178, column: 7, scope: !527)
!3263 = !DILocation(line: 180, column: 13, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !249, line: 180, column: 11)
!3265 = distinct !DILexicalBlock(scope: !3261, file: !249, line: 179, column: 5)
!3266 = !DILocation(line: 180, column: 11, scope: !3265)
!3267 = !DILocation(line: 188, column: 30, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !249, line: 181, column: 9)
!3269 = !DILocation(line: 189, column: 16, scope: !3268)
!3270 = !DILocation(line: 189, column: 13, scope: !3268)
!3271 = !DILocation(line: 190, column: 9, scope: !3268)
!3272 = !DILocation(line: 191, column: 11, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3265, file: !249, line: 191, column: 11)
!3274 = !DILocation(line: 191, column: 11, scope: !3265)
!3275 = !DILocation(line: 206, column: 7, scope: !527)
!3276 = !DILocation(line: 207, column: 25, scope: !527)
!3277 = !DILocation(line: 0, scope: !3225, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 207, column: 10, scope: !527)
!3279 = !DILocation(line: 53, column: 10, scope: !3233, inlinedAt: !3278)
!3280 = !DILocation(line: 192, column: 9, scope: !3273)
!3281 = !DILocation(line: 200, column: 69, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !249, line: 200, column: 11)
!3283 = distinct !DILexicalBlock(scope: !3261, file: !249, line: 195, column: 5)
!3284 = !DILocation(line: 201, column: 11, scope: !3282)
!3285 = !DILocation(line: 200, column: 11, scope: !3283)
!3286 = !DILocation(line: 202, column: 9, scope: !3282)
!3287 = !DILocation(line: 203, column: 14, scope: !3283)
!3288 = !DILocation(line: 203, column: 18, scope: !3283)
!3289 = !DILocation(line: 203, column: 9, scope: !3283)
!3290 = !DILocation(line: 53, column: 8, scope: !3233, inlinedAt: !3278)
!3291 = !DILocation(line: 57, column: 7, scope: !3237, inlinedAt: !3278)
!3292 = !DILocation(line: 58, column: 7, scope: !3237, inlinedAt: !3278)
!3293 = !DILocation(line: 61, column: 7, scope: !3225, inlinedAt: !3278)
!3294 = !DILocation(line: 62, column: 8, scope: !3241, inlinedAt: !3278)
!3295 = !DILocation(line: 62, column: 13, scope: !3241, inlinedAt: !3278)
!3296 = !DILocation(line: 62, column: 10, scope: !3241, inlinedAt: !3278)
!3297 = !DILocation(line: 63, column: 5, scope: !3241, inlinedAt: !3278)
!3298 = !DILocation(line: 207, column: 3, scope: !527)
!3299 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2468, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3300)
!3300 = !{!3301}
!3301 = !DILocalVariable(name: "n", arg: 1, scope: !3299, file: !249, line: 216, type: !69)
!3302 = !DILocation(line: 0, scope: !3299)
!3303 = !DILocation(line: 0, scope: !3190, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 218, column: 10, scope: !3299)
!3305 = !DILocation(line: 41, column: 13, scope: !3190, inlinedAt: !3304)
!3306 = !DILocation(line: 42, column: 8, scope: !3199, inlinedAt: !3304)
!3307 = !DILocation(line: 42, column: 15, scope: !3199, inlinedAt: !3304)
!3308 = !DILocation(line: 42, column: 10, scope: !3199, inlinedAt: !3304)
!3309 = !DILocation(line: 43, column: 5, scope: !3199, inlinedAt: !3304)
!3310 = !DILocation(line: 218, column: 3, scope: !3299)
!3311 = distinct !DISubprogram(name: "x2realloc", scope: !524, file: !524, line: 74, type: !3312, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!67, !67, !530}
!3314 = !{!3315, !3316}
!3315 = !DILocalVariable(name: "p", arg: 1, scope: !3311, file: !524, line: 74, type: !67)
!3316 = !DILocalVariable(name: "pn", arg: 2, scope: !3311, file: !524, line: 74, type: !530)
!3317 = !DILocation(line: 0, scope: !3311)
!3318 = !DILocation(line: 0, scope: !527, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 76, column: 10, scope: !3311)
!3320 = !DILocation(line: 176, column: 14, scope: !527, inlinedAt: !3319)
!3321 = !DILocation(line: 178, column: 9, scope: !3261, inlinedAt: !3319)
!3322 = !DILocation(line: 178, column: 7, scope: !527, inlinedAt: !3319)
!3323 = !DILocation(line: 180, column: 13, scope: !3264, inlinedAt: !3319)
!3324 = !DILocation(line: 180, column: 11, scope: !3265, inlinedAt: !3319)
!3325 = !DILocation(line: 191, column: 11, scope: !3273, inlinedAt: !3319)
!3326 = !DILocation(line: 191, column: 11, scope: !3265, inlinedAt: !3319)
!3327 = !DILocation(line: 206, column: 7, scope: !527, inlinedAt: !3319)
!3328 = !DILocation(line: 0, scope: !3225, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 207, column: 10, scope: !527, inlinedAt: !3319)
!3330 = !DILocation(line: 53, column: 10, scope: !3233, inlinedAt: !3329)
!3331 = !DILocation(line: 192, column: 9, scope: !3273, inlinedAt: !3319)
!3332 = !DILocation(line: 201, column: 11, scope: !3282, inlinedAt: !3319)
!3333 = !DILocation(line: 200, column: 11, scope: !3283, inlinedAt: !3319)
!3334 = !DILocation(line: 202, column: 9, scope: !3282, inlinedAt: !3319)
!3335 = !DILocation(line: 203, column: 14, scope: !3283, inlinedAt: !3319)
!3336 = !DILocation(line: 203, column: 18, scope: !3283, inlinedAt: !3319)
!3337 = !DILocation(line: 203, column: 9, scope: !3283, inlinedAt: !3319)
!3338 = !DILocation(line: 53, column: 8, scope: !3233, inlinedAt: !3329)
!3339 = !DILocation(line: 57, column: 7, scope: !3237, inlinedAt: !3329)
!3340 = !DILocation(line: 58, column: 7, scope: !3237, inlinedAt: !3329)
!3341 = !DILocation(line: 61, column: 7, scope: !3225, inlinedAt: !3329)
!3342 = !DILocation(line: 62, column: 8, scope: !3241, inlinedAt: !3329)
!3343 = !DILocation(line: 62, column: 13, scope: !3241, inlinedAt: !3329)
!3344 = !DILocation(line: 62, column: 10, scope: !3241, inlinedAt: !3329)
!3345 = !DILocation(line: 63, column: 5, scope: !3241, inlinedAt: !3329)
!3346 = !DILocation(line: 76, column: 3, scope: !3311)
!3347 = distinct !DISubprogram(name: "xzalloc", scope: !524, file: !524, line: 84, type: !3191, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3348)
!3348 = !{!3349}
!3349 = !DILocalVariable(name: "n", arg: 1, scope: !3347, file: !524, line: 84, type: !69)
!3350 = !DILocation(line: 0, scope: !3347)
!3351 = !DILocalVariable(name: "n", arg: 1, scope: !3352, file: !524, line: 93, type: !69)
!3352 = distinct !DISubprogram(name: "xcalloc", scope: !524, file: !524, line: 93, type: !1335, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3353)
!3353 = !{!3351, !3354, !3355}
!3354 = !DILocalVariable(name: "s", arg: 2, scope: !3352, file: !524, line: 93, type: !69)
!3355 = !DILocalVariable(name: "p", scope: !3352, file: !524, line: 95, type: !67)
!3356 = !DILocation(line: 0, scope: !3352, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 86, column: 10, scope: !3347)
!3358 = !DILocation(line: 100, column: 7, scope: !3359, inlinedAt: !3357)
!3359 = distinct !DILexicalBlock(scope: !3352, file: !524, line: 100, column: 7)
!3360 = !DILocation(line: 101, column: 7, scope: !3359, inlinedAt: !3357)
!3361 = !DILocation(line: 101, column: 18, scope: !3359, inlinedAt: !3357)
!3362 = !DILocation(line: 101, column: 16, scope: !3359, inlinedAt: !3357)
!3363 = !DILocation(line: 100, column: 7, scope: !3352, inlinedAt: !3357)
!3364 = !DILocation(line: 102, column: 5, scope: !3359, inlinedAt: !3357)
!3365 = !DILocation(line: 86, column: 3, scope: !3347)
!3366 = !DILocation(line: 0, scope: !3352)
!3367 = !DILocation(line: 100, column: 7, scope: !3359)
!3368 = !DILocation(line: 101, column: 7, scope: !3359)
!3369 = !DILocation(line: 101, column: 18, scope: !3359)
!3370 = !DILocation(line: 101, column: 16, scope: !3359)
!3371 = !DILocation(line: 100, column: 7, scope: !3352)
!3372 = !DILocation(line: 102, column: 5, scope: !3359)
!3373 = !DILocation(line: 103, column: 3, scope: !3352)
!3374 = distinct !DISubprogram(name: "xmemdup", scope: !524, file: !524, line: 111, type: !3375, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!67, !252, !69}
!3377 = !{!3378, !3379}
!3378 = !DILocalVariable(name: "p", arg: 1, scope: !3374, file: !524, line: 111, type: !252)
!3379 = !DILocalVariable(name: "s", arg: 2, scope: !3374, file: !524, line: 111, type: !69)
!3380 = !DILocation(line: 0, scope: !3374)
!3381 = !DILocation(line: 0, scope: !3190, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 113, column: 18, scope: !3374)
!3383 = !DILocation(line: 41, column: 13, scope: !3190, inlinedAt: !3382)
!3384 = !DILocation(line: 42, column: 8, scope: !3199, inlinedAt: !3382)
!3385 = !DILocation(line: 42, column: 15, scope: !3199, inlinedAt: !3382)
!3386 = !DILocation(line: 42, column: 10, scope: !3199, inlinedAt: !3382)
!3387 = !DILocation(line: 43, column: 5, scope: !3199, inlinedAt: !3382)
!3388 = !DILocalVariable(name: "__dest", arg: 1, scope: !3389, file: !2001, line: 31, type: !3392)
!3389 = distinct !DISubprogram(name: "memcpy", scope: !2001, file: !2001, line: 31, type: !3390, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3394)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!67, !3392, !3393, !69}
!3392 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3393 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!3394 = !{!3388, !3395, !3396}
!3395 = !DILocalVariable(name: "__src", arg: 2, scope: !3389, file: !2001, line: 31, type: !3393)
!3396 = !DILocalVariable(name: "__len", arg: 3, scope: !3389, file: !2001, line: 31, type: !69)
!3397 = !DILocation(line: 0, scope: !3389, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 113, column: 10, scope: !3374)
!3399 = !DILocation(line: 34, column: 10, scope: !3389, inlinedAt: !3398)
!3400 = !DILocation(line: 113, column: 3, scope: !3374)
!3401 = distinct !DISubprogram(name: "xstrdup", scope: !524, file: !524, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !523, retainedNodes: !3402)
!3402 = !{!3403}
!3403 = !DILocalVariable(name: "string", arg: 1, scope: !3401, file: !524, line: 119, type: !6)
!3404 = !DILocation(line: 0, scope: !3401)
!3405 = !DILocation(line: 121, column: 27, scope: !3401)
!3406 = !DILocation(line: 121, column: 43, scope: !3401)
!3407 = !DILocation(line: 0, scope: !3374, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 121, column: 10, scope: !3401)
!3409 = !DILocation(line: 0, scope: !3190, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 113, column: 18, scope: !3374, inlinedAt: !3408)
!3411 = !DILocation(line: 41, column: 13, scope: !3190, inlinedAt: !3410)
!3412 = !DILocation(line: 42, column: 8, scope: !3199, inlinedAt: !3410)
!3413 = !DILocation(line: 42, column: 15, scope: !3199, inlinedAt: !3410)
!3414 = !DILocation(line: 42, column: 10, scope: !3199, inlinedAt: !3410)
!3415 = !DILocation(line: 43, column: 5, scope: !3199, inlinedAt: !3410)
!3416 = !DILocation(line: 0, scope: !3389, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 113, column: 10, scope: !3374, inlinedAt: !3408)
!3418 = !DILocation(line: 34, column: 10, scope: !3389, inlinedAt: !3417)
!3419 = !DILocation(line: 121, column: 3, scope: !3401)
!3420 = distinct !DISubprogram(name: "xalloc_die", scope: !545, file: !545, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !544, retainedNodes: !4)
!3421 = !DILocation(line: 34, column: 10, scope: !3420)
!3422 = !DILocation(line: 34, column: 33, scope: !3420)
!3423 = !DILocation(line: 34, column: 3, scope: !3420)
!3424 = !DILocation(line: 40, column: 3, scope: !3420)
!3425 = distinct !DISubprogram(name: "rpl_calloc", scope: !548, file: !548, line: 42, type: !1335, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !547, retainedNodes: !3426)
!3426 = !{!3427, !3428, !3429, !3430}
!3427 = !DILocalVariable(name: "n", arg: 1, scope: !3425, file: !548, line: 42, type: !69)
!3428 = !DILocalVariable(name: "s", arg: 2, scope: !3425, file: !548, line: 42, type: !69)
!3429 = !DILocalVariable(name: "result", scope: !3425, file: !548, line: 44, type: !67)
!3430 = !DILocalVariable(name: "bytes", scope: !3431, file: !548, line: 56, type: !69)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !548, line: 53, column: 5)
!3432 = distinct !DILexicalBlock(scope: !3425, file: !548, line: 47, column: 7)
!3433 = !DILocation(line: 0, scope: !3425)
!3434 = !DILocation(line: 47, column: 9, scope: !3432)
!3435 = !DILocation(line: 47, column: 19, scope: !3432)
!3436 = !DILocation(line: 47, column: 14, scope: !3432)
!3437 = !DILocation(line: 0, scope: !3431)
!3438 = !DILocation(line: 57, column: 21, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3431, file: !548, line: 57, column: 11)
!3440 = !DILocation(line: 57, column: 11, scope: !3431)
!3441 = !DILocation(line: 59, column: 11, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3439, file: !548, line: 58, column: 9)
!3443 = !DILocation(line: 59, column: 17, scope: !3442)
!3444 = !DILocation(line: 65, column: 12, scope: !3425)
!3445 = !DILocation(line: 72, column: 3, scope: !3425)
!3446 = !DILocation(line: 73, column: 1, scope: !3425)
!3447 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !551, file: !551, line: 86, type: !3448, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !550, retainedNodes: !3454)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!69, !3450, !6, !69, !3451}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1744, line: 6, baseType: !3453)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !557)
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3460, !3461}
!3455 = !DILocalVariable(name: "pwc", arg: 1, scope: !3447, file: !551, line: 86, type: !3450)
!3456 = !DILocalVariable(name: "s", arg: 2, scope: !3447, file: !551, line: 86, type: !6)
!3457 = !DILocalVariable(name: "n", arg: 3, scope: !3447, file: !551, line: 86, type: !69)
!3458 = !DILocalVariable(name: "ps", arg: 4, scope: !3447, file: !551, line: 86, type: !3451)
!3459 = !DILocalVariable(name: "ret", scope: !3447, file: !551, line: 88, type: !69)
!3460 = !DILocalVariable(name: "wc", scope: !3447, file: !551, line: 89, type: !1748)
!3461 = !DILocalVariable(name: "uc", scope: !3462, file: !551, line: 156, type: !480)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !551, line: 155, column: 5)
!3463 = distinct !DILexicalBlock(scope: !3447, file: !551, line: 154, column: 7)
!3464 = !DILocation(line: 0, scope: !3447)
!3465 = !DILocation(line: 89, column: 3, scope: !3447)
!3466 = !DILocation(line: 105, column: 9, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3447, file: !551, line: 105, column: 7)
!3468 = !DILocation(line: 105, column: 7, scope: !3447)
!3469 = !DILocation(line: 145, column: 9, scope: !3447)
!3470 = !DILocation(line: 154, column: 19, scope: !3463)
!3471 = !DILocation(line: 154, column: 31, scope: !3463)
!3472 = !DILocation(line: 154, column: 26, scope: !3463)
!3473 = !DILocation(line: 154, column: 41, scope: !3463)
!3474 = !DILocation(line: 154, column: 7, scope: !3447)
!3475 = !DILocation(line: 156, column: 26, scope: !3462)
!3476 = !DILocation(line: 0, scope: !3462)
!3477 = !DILocation(line: 157, column: 14, scope: !3462)
!3478 = !DILocation(line: 157, column: 12, scope: !3462)
!3479 = !DILocation(line: 163, column: 1, scope: !3447)
!3480 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !570, file: !570, line: 49, type: !3481, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !3486)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!25, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3485)
!3485 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !364, line: 146, baseType: !589)
!3486 = !{!3487, !3488, !3489}
!3487 = !DILocalVariable(name: "ut", arg: 1, scope: !3480, file: !570, line: 49, type: !3483)
!3488 = !DILocalVariable(name: "p", scope: !3480, file: !570, line: 51, type: !25)
!3489 = !DILocalVariable(name: "trimmed_name", scope: !3480, file: !570, line: 51, type: !25)
!3490 = !DILocation(line: 0, scope: !3480)
!3491 = !DILocation(line: 53, column: 18, scope: !3480)
!3492 = !DILocation(line: 54, column: 26, scope: !3480)
!3493 = !DILocalVariable(name: "__dest", arg: 1, scope: !3494, file: !2001, line: 103, type: !3497)
!3494 = distinct !DISubprogram(name: "strncpy", scope: !2001, file: !2001, line: 103, type: !3495, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !3499)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!25, !3497, !3498, !69}
!3497 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!3498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3499 = !{!3493, !3500, !3501}
!3500 = !DILocalVariable(name: "__src", arg: 2, scope: !3494, file: !2001, line: 103, type: !3498)
!3501 = !DILocalVariable(name: "__len", arg: 3, scope: !3494, file: !2001, line: 103, type: !69)
!3502 = !DILocation(line: 0, scope: !3494, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 54, column: 3, scope: !3480)
!3504 = !DILocation(line: 106, column: 10, scope: !3494, inlinedAt: !3503)
!3505 = !DILocation(line: 58, column: 3, scope: !3480)
!3506 = !DILocation(line: 58, column: 39, scope: !3480)
!3507 = !DILocation(line: 59, column: 27, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3480, file: !570, line: 59, column: 3)
!3509 = !DILocation(line: 60, column: 21, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3508, file: !570, line: 59, column: 3)
!3511 = !DILocation(line: 60, column: 25, scope: !3510)
!3512 = !DILocation(line: 59, column: 25, scope: !3508)
!3513 = !DILocation(line: 59, column: 3, scope: !3508)
!3514 = !DILocation(line: 60, column: 28, scope: !3510)
!3515 = !DILocation(line: 60, column: 34, scope: !3510)
!3516 = !DILocation(line: 61, column: 13, scope: !3510)
!3517 = distinct !{!3517, !3513, !3518}
!3518 = !DILocation(line: 62, column: 5, scope: !3508)
!3519 = !DILocation(line: 63, column: 3, scope: !3480)
!3520 = distinct !DISubprogram(name: "read_utmp", scope: !570, file: !570, line: 92, type: !3521, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !3525)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!18, !6, !530, !3523, !18}
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533}
!3526 = !DILocalVariable(name: "file", arg: 1, scope: !3520, file: !570, line: 92, type: !6)
!3527 = !DILocalVariable(name: "n_entries", arg: 2, scope: !3520, file: !570, line: 92, type: !530)
!3528 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !3520, file: !570, line: 92, type: !3523)
!3529 = !DILocalVariable(name: "options", arg: 4, scope: !3520, file: !570, line: 93, type: !18)
!3530 = !DILocalVariable(name: "n_read", scope: !3520, file: !570, line: 95, type: !69)
!3531 = !DILocalVariable(name: "n_alloc", scope: !3520, file: !570, line: 96, type: !69)
!3532 = !DILocalVariable(name: "utmp", scope: !3520, file: !570, line: 97, type: !3524)
!3533 = !DILocalVariable(name: "u", scope: !3520, file: !570, line: 98, type: !3524)
!3534 = !DILocation(line: 0, scope: !3520)
!3535 = !DILocation(line: 104, column: 3, scope: !3520)
!3536 = !DILocation(line: 106, column: 3, scope: !3520)
!3537 = !DILocation(line: 108, column: 15, scope: !3520)
!3538 = !DILocation(line: 108, column: 32, scope: !3520)
!3539 = !DILocation(line: 108, column: 3, scope: !3520)
!3540 = !DILocation(line: 0, scope: !3541, inlinedAt: !3549)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !570, line: 72, column: 7)
!3542 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !570, file: !570, line: 69, type: !3543, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!92, !3483, !18}
!3545 = !{!3546, !3547, !3548}
!3546 = !DILocalVariable(name: "u", arg: 1, scope: !3542, file: !570, line: 69, type: !3483)
!3547 = !DILocalVariable(name: "options", arg: 2, scope: !3542, file: !570, line: 69, type: !18)
!3548 = !DILocalVariable(name: "user_proc", scope: !3542, file: !570, line: 71, type: !92)
!3549 = distinct !DILocation(line: 109, column: 9, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3520, file: !570, line: 109, column: 9)
!3551 = !DILocation(line: 0, scope: !3552, inlinedAt: !3549)
!3552 = distinct !DILexicalBlock(scope: !3542, file: !570, line: 74, column: 7)
!3553 = !DILocation(line: 0, scope: !3542, inlinedAt: !3549)
!3554 = !DILocation(line: 71, column: 20, scope: !3542, inlinedAt: !3549)
!3555 = !DILocation(line: 72, column: 42, scope: !3541, inlinedAt: !3549)
!3556 = !DILocation(line: 75, column: 7, scope: !3552, inlinedAt: !3549)
!3557 = !DILocation(line: 76, column: 14, scope: !3552, inlinedAt: !3549)
!3558 = !{!1356, !1274, i64 4}
!3559 = !DILocation(line: 76, column: 12, scope: !3552, inlinedAt: !3549)
!3560 = !DILocation(line: 77, column: 7, scope: !3552, inlinedAt: !3549)
!3561 = !DILocation(line: 77, column: 11, scope: !3552, inlinedAt: !3549)
!3562 = !DILocation(line: 77, column: 32, scope: !3552, inlinedAt: !3549)
!3563 = !DILocation(line: 77, column: 36, scope: !3552, inlinedAt: !3549)
!3564 = !DILocation(line: 77, column: 39, scope: !3552, inlinedAt: !3549)
!3565 = !DILocation(line: 77, column: 45, scope: !3552, inlinedAt: !3549)
!3566 = !DILocation(line: 74, column: 7, scope: !3542, inlinedAt: !3549)
!3567 = !DILocation(line: 111, column: 20, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !570, line: 111, column: 13)
!3569 = distinct !DILexicalBlock(scope: !3550, file: !570, line: 110, column: 7)
!3570 = !DILocation(line: 111, column: 13, scope: !3569)
!3571 = !DILocation(line: 112, column: 30, scope: !3568)
!3572 = !DILocation(line: 0, scope: !573, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 112, column: 18, scope: !3568)
!3574 = !DILocation(line: 178, column: 9, scope: !3575, inlinedAt: !3573)
!3575 = distinct !DILexicalBlock(scope: !573, file: !249, line: 178, column: 7)
!3576 = !DILocation(line: 178, column: 7, scope: !573, inlinedAt: !3573)
!3577 = !DILocation(line: 180, column: 13, scope: !3578, inlinedAt: !3573)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !249, line: 180, column: 11)
!3579 = distinct !DILexicalBlock(scope: !3575, file: !249, line: 179, column: 5)
!3580 = !DILocation(line: 180, column: 11, scope: !3579, inlinedAt: !3573)
!3581 = !DILocation(line: 191, column: 11, scope: !3582, inlinedAt: !3573)
!3582 = distinct !DILexicalBlock(scope: !3579, file: !249, line: 191, column: 11)
!3583 = !DILocation(line: 191, column: 11, scope: !3579, inlinedAt: !3573)
!3584 = !DILocation(line: 192, column: 9, scope: !3582, inlinedAt: !3573)
!3585 = !DILocation(line: 201, column: 11, scope: !3586, inlinedAt: !3573)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !249, line: 200, column: 11)
!3587 = distinct !DILexicalBlock(scope: !3575, file: !249, line: 195, column: 5)
!3588 = !DILocation(line: 200, column: 11, scope: !3587, inlinedAt: !3573)
!3589 = !DILocation(line: 202, column: 9, scope: !3586, inlinedAt: !3573)
!3590 = !DILocation(line: 203, column: 14, scope: !3587, inlinedAt: !3573)
!3591 = !DILocation(line: 203, column: 18, scope: !3587, inlinedAt: !3573)
!3592 = !DILocation(line: 203, column: 9, scope: !3587, inlinedAt: !3573)
!3593 = !DILocation(line: 207, column: 25, scope: !573, inlinedAt: !3573)
!3594 = !DILocation(line: 207, column: 10, scope: !573, inlinedAt: !3573)
!3595 = !DILocation(line: 112, column: 18, scope: !3568)
!3596 = !DILocation(line: 112, column: 11, scope: !3568)
!3597 = !DILocation(line: 114, column: 20, scope: !3569)
!3598 = !DILocation(line: 114, column: 9, scope: !3569)
!3599 = !DILocation(line: 114, column: 26, scope: !3569)
!3600 = !{i64 0, i64 2, !1994, i64 4, i64 4, !1273, i64 8, i64 32, !1354, i64 40, i64 4, !1354, i64 44, i64 32, !1354, i64 76, i64 256, !1354, i64 332, i64 2, !1994, i64 334, i64 2, !1994, i64 336, i64 4, !1273, i64 340, i64 4, !1273, i64 344, i64 4, !1273, i64 348, i64 16, !1354, i64 364, i64 20, !1354}
!3601 = !DILocation(line: 115, column: 7, scope: !3569)
!3602 = distinct !{!3602, !3539, !3603}
!3603 = !DILocation(line: 115, column: 7, scope: !3520)
!3604 = !DILocation(line: 117, column: 3, scope: !3520)
!3605 = !DILocation(line: 119, column: 14, scope: !3520)
!3606 = !DILocation(line: 120, column: 13, scope: !3520)
!3607 = !DILocation(line: 122, column: 3, scope: !3520)
!3608 = distinct !DISubprogram(name: "close_stream", scope: !616, file: !616, line: 56, type: !3609, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3613)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!18, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3056, line: 7, baseType: !623)
!3613 = !{!3614, !3615, !3617, !3618}
!3614 = !DILocalVariable(name: "stream", arg: 1, scope: !3608, file: !616, line: 56, type: !3611)
!3615 = !DILocalVariable(name: "some_pending", scope: !3608, file: !616, line: 58, type: !3616)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3617 = !DILocalVariable(name: "prev_fail", scope: !3608, file: !616, line: 59, type: !3616)
!3618 = !DILocalVariable(name: "fclose_fail", scope: !3608, file: !616, line: 60, type: !3616)
!3619 = !DILocation(line: 0, scope: !3608)
!3620 = !DILocation(line: 58, column: 30, scope: !3608)
!3621 = !DILocalVariable(name: "__stream", arg: 1, scope: !3622, file: !1377, line: 135, type: !3611)
!3622 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1377, file: !1377, line: 135, type: !3609, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !615, retainedNodes: !3623)
!3623 = !{!3621}
!3624 = !DILocation(line: 0, scope: !3622, inlinedAt: !3625)
!3625 = distinct !DILocation(line: 59, column: 27, scope: !3608)
!3626 = !DILocation(line: 137, column: 10, scope: !3622, inlinedAt: !3625)
!3627 = !{!1385, !1274, i64 0}
!3628 = !DILocation(line: 59, column: 43, scope: !3608)
!3629 = !DILocation(line: 60, column: 29, scope: !3608)
!3630 = !DILocation(line: 60, column: 45, scope: !3608)
!3631 = !DILocation(line: 70, column: 17, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3608, file: !616, line: 70, column: 7)
!3633 = !DILocation(line: 58, column: 50, scope: !3608)
!3634 = !DILocation(line: 70, column: 33, scope: !3632)
!3635 = !DILocation(line: 70, column: 53, scope: !3632)
!3636 = !DILocation(line: 70, column: 59, scope: !3632)
!3637 = !DILocation(line: 70, column: 7, scope: !3608)
!3638 = !DILocation(line: 72, column: 11, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3632, file: !616, line: 71, column: 5)
!3640 = !DILocation(line: 73, column: 9, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3639, file: !616, line: 72, column: 11)
!3642 = !DILocation(line: 73, column: 15, scope: !3641)
!3643 = !DILocation(line: 78, column: 1, scope: !3608)
!3644 = distinct !DISubprogram(name: "hard_locale", scope: !655, file: !655, line: 27, type: !567, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3645)
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "category", arg: 1, scope: !3644, file: !655, line: 27, type: !18)
!3647 = !DILocalVariable(name: "locale", scope: !3644, file: !655, line: 29, type: !3648)
!3648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3649)
!3649 = !{!3650}
!3650 = !DISubrange(count: 257)
!3651 = !DILocation(line: 0, scope: !3644)
!3652 = !DILocation(line: 29, column: 3, scope: !3644)
!3653 = !DILocation(line: 29, column: 8, scope: !3644)
!3654 = !DILocation(line: 31, column: 7, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3644, file: !655, line: 31, column: 7)
!3656 = !DILocation(line: 31, column: 7, scope: !3644)
!3657 = !DILocation(line: 34, column: 12, scope: !3644)
!3658 = !DILocation(line: 34, column: 38, scope: !3644)
!3659 = !DILocation(line: 34, column: 41, scope: !3644)
!3660 = !DILocation(line: 34, column: 66, scope: !3644)
!3661 = !DILocation(line: 35, column: 1, scope: !3644)
!3662 = distinct !DISubprogram(name: "locale_charset", scope: !662, file: !662, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3663)
!3663 = !{!3664}
!3664 = !DILocalVariable(name: "codeset", scope: !3662, file: !662, line: 833, type: !6)
!3665 = !DILocation(line: 847, column: 13, scope: !3662)
!3666 = !DILocation(line: 0, scope: !3662)
!3667 = !DILocation(line: 911, column: 15, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3662, file: !662, line: 911, column: 7)
!3669 = !DILocation(line: 911, column: 7, scope: !3662)
!3670 = !DILocation(line: 1070, column: 13, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !662, line: 1070, column: 13)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !662, line: 1060, column: 7)
!3673 = distinct !DILexicalBlock(scope: !3662, file: !662, line: 1019, column: 3)
!3674 = !DILocation(line: 1070, column: 24, scope: !3671)
!3675 = !DILocation(line: 1070, column: 13, scope: !3672)
!3676 = !DILocation(line: 1158, column: 3, scope: !3662)
!3677 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1055, file: !1055, line: 269, type: !3678, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1054, retainedNodes: !3680)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!18, !18, !25, !69}
!3680 = !{!3681, !3682, !3683}
!3681 = !DILocalVariable(name: "category", arg: 1, scope: !3677, file: !1055, line: 269, type: !18)
!3682 = !DILocalVariable(name: "buf", arg: 2, scope: !3677, file: !1055, line: 269, type: !25)
!3683 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3677, file: !1055, line: 269, type: !69)
!3684 = !DILocation(line: 0, scope: !3677)
!3685 = !DILocalVariable(name: "category", arg: 1, scope: !3686, file: !1055, line: 91, type: !18)
!3686 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1055, file: !1055, line: 91, type: !3678, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1054, retainedNodes: !3687)
!3687 = !{!3685, !3688, !3689, !3690, !3691}
!3688 = !DILocalVariable(name: "buf", arg: 2, scope: !3686, file: !1055, line: 91, type: !25)
!3689 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3686, file: !1055, line: 91, type: !69)
!3690 = !DILocalVariable(name: "result", scope: !3686, file: !1055, line: 140, type: !6)
!3691 = !DILocalVariable(name: "length", scope: !3692, file: !1055, line: 154, type: !69)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !1055, line: 153, column: 5)
!3693 = distinct !DILexicalBlock(scope: !3686, file: !1055, line: 142, column: 7)
!3694 = !DILocation(line: 0, scope: !3686, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 274, column: 10, scope: !3677)
!3696 = !DILocalVariable(name: "category", arg: 1, scope: !3697, file: !1055, line: 60, type: !18)
!3697 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1055, file: !1055, line: 60, type: !3698, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1054, retainedNodes: !3700)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!6, !18}
!3700 = !{!3696, !3701}
!3701 = !DILocalVariable(name: "result", scope: !3697, file: !1055, line: 62, type: !6)
!3702 = !DILocation(line: 0, scope: !3697, inlinedAt: !3703)
!3703 = distinct !DILocation(line: 140, column: 24, scope: !3686, inlinedAt: !3695)
!3704 = !DILocation(line: 62, column: 24, scope: !3697, inlinedAt: !3703)
!3705 = !DILocation(line: 142, column: 14, scope: !3693, inlinedAt: !3695)
!3706 = !DILocation(line: 142, column: 7, scope: !3686, inlinedAt: !3695)
!3707 = !DILocation(line: 145, column: 19, scope: !3708, inlinedAt: !3695)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !1055, line: 145, column: 11)
!3709 = distinct !DILexicalBlock(scope: !3693, file: !1055, line: 143, column: 5)
!3710 = !DILocation(line: 145, column: 11, scope: !3709, inlinedAt: !3695)
!3711 = !DILocation(line: 149, column: 16, scope: !3708, inlinedAt: !3695)
!3712 = !DILocation(line: 149, column: 9, scope: !3708, inlinedAt: !3695)
!3713 = !DILocation(line: 154, column: 23, scope: !3692, inlinedAt: !3695)
!3714 = !DILocation(line: 0, scope: !3692, inlinedAt: !3695)
!3715 = !DILocation(line: 155, column: 18, scope: !3716, inlinedAt: !3695)
!3716 = distinct !DILexicalBlock(scope: !3692, file: !1055, line: 155, column: 11)
!3717 = !DILocation(line: 155, column: 11, scope: !3692, inlinedAt: !3695)
!3718 = !DILocation(line: 157, column: 39, scope: !3719, inlinedAt: !3695)
!3719 = distinct !DILexicalBlock(scope: !3716, file: !1055, line: 156, column: 9)
!3720 = !DILocalVariable(name: "__dest", arg: 1, scope: !3721, file: !2001, line: 31, type: !3392)
!3721 = distinct !DISubprogram(name: "memcpy", scope: !2001, file: !2001, line: 31, type: !3390, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1054, retainedNodes: !3722)
!3722 = !{!3720, !3723, !3724}
!3723 = !DILocalVariable(name: "__src", arg: 2, scope: !3721, file: !2001, line: 31, type: !3393)
!3724 = !DILocalVariable(name: "__len", arg: 3, scope: !3721, file: !2001, line: 31, type: !69)
!3725 = !DILocation(line: 0, scope: !3721, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 157, column: 11, scope: !3719, inlinedAt: !3695)
!3727 = !DILocation(line: 34, column: 10, scope: !3721, inlinedAt: !3726)
!3728 = !DILocation(line: 158, column: 11, scope: !3719, inlinedAt: !3695)
!3729 = !DILocation(line: 162, column: 23, scope: !3730, inlinedAt: !3695)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !1055, line: 162, column: 15)
!3731 = distinct !DILexicalBlock(scope: !3716, file: !1055, line: 161, column: 9)
!3732 = !DILocation(line: 162, column: 15, scope: !3731, inlinedAt: !3695)
!3733 = !DILocation(line: 167, column: 44, scope: !3734, inlinedAt: !3695)
!3734 = distinct !DILexicalBlock(scope: !3730, file: !1055, line: 163, column: 13)
!3735 = !DILocation(line: 0, scope: !3721, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 167, column: 15, scope: !3734, inlinedAt: !3695)
!3737 = !DILocation(line: 34, column: 10, scope: !3721, inlinedAt: !3736)
!3738 = !DILocation(line: 168, column: 15, scope: !3734, inlinedAt: !3695)
!3739 = !DILocation(line: 168, column: 32, scope: !3734, inlinedAt: !3695)
!3740 = !DILocation(line: 169, column: 13, scope: !3734, inlinedAt: !3695)
!3741 = !DILocation(line: 0, scope: !3693, inlinedAt: !3695)
!3742 = !DILocation(line: 274, column: 3, scope: !3677)
!3743 = distinct !DISubprogram(name: "setlocale_null", scope: !1055, file: !1055, line: 301, type: !3698, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1054, retainedNodes: !3744)
!3744 = !{!3745}
!3745 = !DILocalVariable(name: "category", arg: 1, scope: !3743, file: !1055, line: 301, type: !18)
!3746 = !DILocation(line: 0, scope: !3743)
!3747 = !DILocation(line: 0, scope: !3697, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 304, column: 10, scope: !3743)
!3749 = !DILocation(line: 62, column: 24, scope: !3697, inlinedAt: !3748)
!3750 = !DILocation(line: 304, column: 3, scope: !3743)
!3751 = distinct !DISubprogram(name: "rpl_fclose", scope: !1058, file: !1058, line: 58, type: !3752, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1057, retainedNodes: !3756)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!18, !3754}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3056, line: 7, baseType: !1064)
!3756 = !{!3757, !3758, !3759, !3760}
!3757 = !DILocalVariable(name: "fp", arg: 1, scope: !3751, file: !1058, line: 58, type: !3754)
!3758 = !DILocalVariable(name: "saved_errno", scope: !3751, file: !1058, line: 60, type: !18)
!3759 = !DILocalVariable(name: "fd", scope: !3751, file: !1058, line: 61, type: !18)
!3760 = !DILocalVariable(name: "result", scope: !3751, file: !1058, line: 62, type: !18)
!3761 = !DILocation(line: 0, scope: !3751)
!3762 = !DILocation(line: 65, column: 8, scope: !3751)
!3763 = !DILocation(line: 66, column: 10, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3751, file: !1058, line: 66, column: 7)
!3765 = !DILocation(line: 66, column: 7, scope: !3751)
!3766 = !DILocation(line: 67, column: 12, scope: !3764)
!3767 = !DILocation(line: 67, column: 5, scope: !3764)
!3768 = !DILocation(line: 72, column: 9, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3751, file: !1058, line: 72, column: 7)
!3770 = !DILocation(line: 72, column: 23, scope: !3769)
!3771 = !DILocation(line: 72, column: 33, scope: !3769)
!3772 = !DILocation(line: 72, column: 26, scope: !3769)
!3773 = !DILocation(line: 72, column: 59, scope: !3769)
!3774 = !DILocation(line: 73, column: 7, scope: !3769)
!3775 = !DILocation(line: 73, column: 10, scope: !3769)
!3776 = !DILocation(line: 72, column: 7, scope: !3751)
!3777 = !DILocation(line: 100, column: 12, scope: !3751)
!3778 = !DILocation(line: 105, column: 7, scope: !3751)
!3779 = !DILocation(line: 74, column: 19, scope: !3769)
!3780 = !DILocation(line: 105, column: 19, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3751, file: !1058, line: 105, column: 7)
!3782 = !DILocation(line: 107, column: 13, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3781, file: !1058, line: 106, column: 5)
!3784 = !DILocation(line: 109, column: 5, scope: !3783)
!3785 = !DILocation(line: 112, column: 1, scope: !3751)
!3786 = distinct !DISubprogram(name: "rpl_fflush", scope: !1102, file: !1102, line: 129, type: !3787, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1101, retainedNodes: !3791)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!18, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3056, line: 7, baseType: !1108)
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "stream", arg: 1, scope: !3786, file: !1102, line: 129, type: !3789)
!3793 = !DILocation(line: 0, scope: !3786)
!3794 = !DILocation(line: 150, column: 14, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3786, file: !1102, line: 150, column: 7)
!3796 = !DILocation(line: 150, column: 22, scope: !3795)
!3797 = !DILocation(line: 150, column: 27, scope: !3795)
!3798 = !DILocation(line: 150, column: 7, scope: !3786)
!3799 = !DILocation(line: 151, column: 12, scope: !3795)
!3800 = !DILocation(line: 151, column: 5, scope: !3795)
!3801 = !DILocalVariable(name: "fp", arg: 1, scope: !3802, file: !1102, line: 41, type: !3789)
!3802 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1102, file: !1102, line: 41, type: !3803, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1101, retainedNodes: !3805)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3789}
!3805 = !{!3801}
!3806 = !DILocation(line: 0, scope: !3802, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 156, column: 3, scope: !3786)
!3808 = !DILocation(line: 43, column: 11, scope: !3809, inlinedAt: !3807)
!3809 = distinct !DILexicalBlock(scope: !3802, file: !1102, line: 43, column: 7)
!3810 = !DILocation(line: 43, column: 18, scope: !3809, inlinedAt: !3807)
!3811 = !DILocation(line: 43, column: 7, scope: !3802, inlinedAt: !3807)
!3812 = !DILocation(line: 45, column: 5, scope: !3809, inlinedAt: !3807)
!3813 = !DILocation(line: 158, column: 10, scope: !3786)
!3814 = !DILocation(line: 158, column: 3, scope: !3786)
!3815 = !DILocation(line: 235, column: 1, scope: !3786)
!3816 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1143, file: !1143, line: 28, type: !3817, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1142, retainedNodes: !3822)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!18, !3819, !3821, !18}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3056, line: 7, baseType: !1149)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3822 = !{!3823, !3824, !3825, !3826}
!3823 = !DILocalVariable(name: "fp", arg: 1, scope: !3816, file: !1143, line: 28, type: !3819)
!3824 = !DILocalVariable(name: "offset", arg: 2, scope: !3816, file: !1143, line: 28, type: !3821)
!3825 = !DILocalVariable(name: "whence", arg: 3, scope: !3816, file: !1143, line: 28, type: !18)
!3826 = !DILocalVariable(name: "pos", scope: !3827, file: !1143, line: 117, type: !3821)
!3827 = distinct !DILexicalBlock(scope: !3828, file: !1143, line: 113, column: 5)
!3828 = distinct !DILexicalBlock(scope: !3816, file: !1143, line: 52, column: 7)
!3829 = !DILocation(line: 0, scope: !3816)
!3830 = !DILocation(line: 52, column: 11, scope: !3828)
!3831 = !{!1385, !1219, i64 16}
!3832 = !DILocation(line: 52, column: 31, scope: !3828)
!3833 = !{!1385, !1219, i64 8}
!3834 = !DILocation(line: 52, column: 24, scope: !3828)
!3835 = !DILocation(line: 53, column: 7, scope: !3828)
!3836 = !DILocation(line: 53, column: 14, scope: !3828)
!3837 = !DILocation(line: 53, column: 35, scope: !3828)
!3838 = !{!1385, !1219, i64 32}
!3839 = !DILocation(line: 53, column: 28, scope: !3828)
!3840 = !DILocation(line: 54, column: 7, scope: !3828)
!3841 = !DILocation(line: 54, column: 14, scope: !3828)
!3842 = !{!1385, !1219, i64 72}
!3843 = !DILocation(line: 54, column: 28, scope: !3828)
!3844 = !DILocation(line: 52, column: 7, scope: !3816)
!3845 = !DILocation(line: 117, column: 26, scope: !3827)
!3846 = !DILocation(line: 117, column: 19, scope: !3827)
!3847 = !DILocation(line: 0, scope: !3827)
!3848 = !DILocation(line: 118, column: 15, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3827, file: !1143, line: 118, column: 11)
!3850 = !DILocation(line: 118, column: 11, scope: !3827)
!3851 = !DILocation(line: 129, column: 11, scope: !3827)
!3852 = !DILocation(line: 129, column: 18, scope: !3827)
!3853 = !DILocation(line: 130, column: 11, scope: !3827)
!3854 = !DILocation(line: 130, column: 19, scope: !3827)
!3855 = !{!1385, !1311, i64 144}
!3856 = !DILocation(line: 161, column: 7, scope: !3827)
!3857 = !DILocation(line: 163, column: 10, scope: !3816)
!3858 = !DILocation(line: 163, column: 3, scope: !3816)
!3859 = !DILocation(line: 164, column: 1, scope: !3816)
