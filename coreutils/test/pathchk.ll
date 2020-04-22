; ModuleID = 'coreutils-8.32/src/pathchk.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [228 x i8] c"Diagnose invalid or unportable file names.\0A\0A  -p                  check for most POSIX systems\0A  -P                  check for empty names and leading \22-\22\0A      --portability   check for all POSIX systems (equivalent to -p -P)\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pathchk\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+pP\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.11 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"leading '-' in a component of file name %s\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"empty file name\00", align 1
@.str.41 = private unnamed_addr constant [67 x i8] c"/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789._-\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"nonportable character %s in file name %s\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"%s: unable to determine maximum file name length\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"limit %lu exceeded by length %lu of file name %s\00", align 1
@.str.39 = private unnamed_addr constant [59 x i8] c"limit %lu exceeded by length %lu of file name component %s\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), align 8, !dbg !197
@.str.43 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !202
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !245
@.str.46 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.47 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !248
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !254
@.str.55 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.56 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.57 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.59, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.61, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.62, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.66, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.67, i32 0, i32 0), i8* null], align 16, !dbg !295
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !387
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !393
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !395
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.71 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.72 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.73 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.74 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !402
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !409
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !397
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !411
@.str.87 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.88 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.89 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.90 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.91 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.92 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.93 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.94 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.95 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.96 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.97 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.98 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.99 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.100 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.101 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.102 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.105 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.109 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.110 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.111 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !417
@.str.1.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !425
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.138 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1107 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1112, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i32 %0, metadata !1111, metadata !DIExpression()), !dbg !1133
  %3 = icmp eq i32 %0, 0, !dbg !1134
  br i1 %3, label %9, label %4, !dbg !1135

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1136, !tbaa !1138
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1136
  %7 = load i8*, i8** @program_name, align 8, !dbg !1136, !tbaa !1138
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1136
  br label %58, !dbg !1136

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1142
  %11 = load i8*, i8** @program_name, align 8, !dbg !1142, !tbaa !1138
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #18, !dbg !1142
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1143
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1143, !tbaa !1138
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1143
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1144
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1144, !tbaa !1138
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1144
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1145
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1145, !tbaa !1138
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1145
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !1116, metadata !DIExpression()) #18, !dbg !1146
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1147
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #18, !dbg !1147
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1129
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), metadata !1117, metadata !DIExpression()) #18, !dbg !1146
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1118, metadata !DIExpression()) #18, !dbg !1146
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1148
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1118, metadata !DIExpression()) #18, !dbg !1146
  br label %24, !dbg !1149

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1118, metadata !DIExpression()) #18, !dbg !1146
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #21, !dbg !1150
  %28 = icmp eq i32 %27, 0, !dbg !1150
  br i1 %28, label %34, label %29, !dbg !1149

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1118, metadata !DIExpression()) #18, !dbg !1146
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1152
  %32 = load i8*, i8** %31, align 8, !dbg !1152, !tbaa !1153
  %33 = icmp eq i8* %32, null, !dbg !1155
  br i1 %33, label %34, label %24, !dbg !1156, !llvm.loop !1157

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1118, metadata !DIExpression()) #18, !dbg !1146
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1118, metadata !DIExpression()) #18, !dbg !1146
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1158
  %37 = load i8*, i8** %36, align 8, !dbg !1158, !tbaa !1160
  %38 = icmp eq i8* %37, null, !dbg !1161
  %39 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %39, metadata !1117, metadata !DIExpression()) #18, !dbg !1146
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #18, !dbg !1163
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #18, !dbg !1163
  %42 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %42, metadata !1125, metadata !DIExpression()) #18, !dbg !1146
  %43 = icmp eq i8* %42, null, !dbg !1165
  br i1 %43, label %51, label %44, !dbg !1167

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #21, !dbg !1168
  %46 = icmp eq i32 %45, 0, !dbg !1168
  br i1 %46, label %51, label %47, !dbg !1169

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #18, !dbg !1170
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1170, !tbaa !1138
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #18, !dbg !1170
  br label %51, !dbg !1172

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #18, !dbg !1173
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #18, !dbg !1173
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1174
  %55 = icmp eq i8* %39, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), !dbg !1174
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1174
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #18, !dbg !1174
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #18, !dbg !1175
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #22, !dbg !1176
  unreachable, !dbg !1176
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !45 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !55 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !120 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1177 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !1188, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i32 %0, metadata !1182, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8** %1, metadata !1183, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 1, metadata !1184, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 0, metadata !1185, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 0, metadata !1186, metadata !DIExpression()), !dbg !1277
  %5 = load i8*, i8** %1, align 8, !dbg !1278, !tbaa !1138
  tail call void @set_program_name(i8* %5) #18, !dbg !1279
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #18, !dbg !1280
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1281
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #18, !dbg !1282
  %9 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1283
  br label %10, !dbg !1284

10:                                               ; preds = %17, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %17 ]
  %12 = phi i8 [ 0, %2 ], [ %18, %17 ]
  br label %13, !dbg !1284

13:                                               ; preds = %13, %10
  %14 = phi i8 [ %12, %10 ], [ 1, %13 ], !dbg !1277
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %11, metadata !1185, metadata !DIExpression()), !dbg !1277
  %15 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #18, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %15, metadata !1187, metadata !DIExpression()), !dbg !1277
  switch i32 %15, label %23 [
    i32 -1, label %24
    i32 128, label %17
    i32 112, label %16
    i32 80, label %13
    i32 -130, label %19
    i32 -131, label %20
  ], !dbg !1284, !llvm.loop !1286

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 1, metadata !1185, metadata !DIExpression()), !dbg !1277
  br label %17, !dbg !1288

17:                                               ; preds = %13, %16
  %18 = phi i8 [ %14, %16 ], [ 1, %13 ]
  br label %10, !dbg !1284, !llvm.loop !1286

19:                                               ; preds = %13
  tail call void @usage(i32 0) #23, !dbg !1291
  unreachable, !dbg !1291

20:                                               ; preds = %13
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1292, !tbaa !1138
  %22 = load i8*, i8** @Version, align 8, !dbg !1292, !tbaa !1138
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* null) #18, !dbg !1292
  tail call void @exit(i32 0) #22, !dbg !1292
  unreachable, !dbg !1292

23:                                               ; preds = %13
  tail call void @usage(i32 1) #23, !dbg !1293
  unreachable, !dbg !1293

24:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %11, metadata !1185, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %11, metadata !1185, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %11, metadata !1185, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %11, metadata !1185, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i8 %14, metadata !1186, metadata !DIExpression()), !dbg !1277
  %25 = load i32, i32* @optind, align 4, !dbg !1294, !tbaa !1296
  %26 = icmp eq i32 %25, %0, !dbg !1298
  br i1 %26, label %38, label %27, !dbg !1299

27:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8 undef, metadata !1184, metadata !DIExpression()), !dbg !1277
  %28 = icmp slt i32 %25, %0, !dbg !1300
  br i1 %28, label %29, label %178, !dbg !1301

29:                                               ; preds = %27
  %30 = icmp ne i8 %11, 0, !dbg !1302
  %31 = icmp eq i8 %14, 0, !dbg !1302
  %32 = or i8 %14, %11, !dbg !1303
  %33 = icmp ne i8 %32, 0, !dbg !1303
  %34 = bitcast %struct.stat* %4 to i8*, !dbg !1305
  %35 = bitcast i64* %3 to %struct.__mbstate_t*
  %36 = bitcast i64* %3 to i8*, !dbg !1306
  %37 = select i1 %30, i64 14, i64 0, !dbg !1324
  br label %40, !dbg !1301

38:                                               ; preds = %24
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 5) #18, !dbg !1325
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %39) #18, !dbg !1327
  tail call void @usage(i32 1) #23, !dbg !1328
  unreachable, !dbg !1328

40:                                               ; preds = %29, %169
  %41 = phi i32 [ %25, %29 ], [ %173, %169 ]
  %42 = phi i1 [ true, %29 ], [ %171, %169 ]
  %43 = sext i32 %41 to i64, !dbg !1329
  %44 = getelementptr inbounds i8*, i8** %1, i64 %43, !dbg !1329
  %45 = load i8*, i8** %44, align 8, !dbg !1329, !tbaa !1138
  call void @llvm.dbg.value(metadata i8* %45, metadata !1195, metadata !DIExpression()) #18, !dbg !1330
  call void @llvm.dbg.value(metadata i1 %31, metadata !1197, metadata !DIExpression()) #18, !dbg !1330
  %46 = call i64 @strlen(i8* nonnull dereferenceable(1) %45) #21, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %46, metadata !1198, metadata !DIExpression()) #18, !dbg !1330
  call void @llvm.dbg.value(metadata i8 0, metadata !1201, metadata !DIExpression()) #18, !dbg !1330
  br i1 %31, label %64, label %47, !dbg !1332

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %45, metadata !1334, metadata !DIExpression()) #18, !dbg !1340
  call void @llvm.dbg.value(metadata i8* %45, metadata !1339, metadata !DIExpression()) #18, !dbg !1340
  %48 = call i8* @strchr(i8* nonnull dereferenceable(1) %45, i32 45) #21, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %48, metadata !1339, metadata !DIExpression()) #18, !dbg !1340
  %49 = icmp eq i8* %48, null, !dbg !1345
  br i1 %49, label %64, label %54, !dbg !1345

50:                                               ; preds = %57
  %51 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %51, metadata !1339, metadata !DIExpression()) #18, !dbg !1340
  call void @llvm.dbg.value(metadata i8* %51, metadata !1339, metadata !DIExpression()) #18, !dbg !1340
  %52 = call i8* @strchr(i8* nonnull dereferenceable(1) %51, i32 45) #21, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %52, metadata !1339, metadata !DIExpression()) #18, !dbg !1340
  %53 = icmp eq i8* %52, null, !dbg !1345
  br i1 %53, label %64, label %54, !dbg !1345, !llvm.loop !1347

54:                                               ; preds = %47, %50
  %55 = phi i8* [ %52, %50 ], [ %48, %47 ]
  %56 = icmp eq i8* %55, %45, !dbg !1349
  br i1 %56, label %61, label %57, !dbg !1351

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, i8* %55, i64 -1, !dbg !1352
  %59 = load i8, i8* %58, align 1, !dbg !1352, !tbaa !1353
  %60 = icmp eq i8 %59, 47, !dbg !1354
  call void @llvm.dbg.value(metadata i8* %55, metadata !1339, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !1340
  br i1 %60, label %61, label %50, !dbg !1355

61:                                               ; preds = %57, %54
  %62 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.40, i64 0, i64 0), i32 5) #18, !dbg !1356
  %63 = call i8* @quotearg_style(i32 4, i8* %45) #18, !dbg !1358
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %62, i8* %63) #18, !dbg !1359
  br label %169, !dbg !1360

64:                                               ; preds = %50, %40, %47
  %65 = icmp eq i64 %46, 0, !dbg !1361
  %66 = and i1 %33, %65, !dbg !1362
  br i1 %66, label %67, label %69, !dbg !1362

67:                                               ; preds = %64
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1363
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %68) #18, !dbg !1365
  br label %169, !dbg !1366

69:                                               ; preds = %64
  br i1 %30, label %70, label %83, !dbg !1367

70:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i8* %45, metadata !1313, metadata !DIExpression()) #18, !dbg !1368
  call void @llvm.dbg.value(metadata i64 %46, metadata !1314, metadata !DIExpression()) #18, !dbg !1368
  %71 = call i64 @strspn(i8* %45, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.41, i64 0, i64 0)) #21, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %71, metadata !1315, metadata !DIExpression()) #18, !dbg !1368
  %72 = getelementptr inbounds i8, i8* %45, i64 %71, !dbg !1370
  call void @llvm.dbg.value(metadata i8* %72, metadata !1316, metadata !DIExpression()) #18, !dbg !1368
  %73 = load i8, i8* %72, align 1, !dbg !1371, !tbaa !1353
  %74 = icmp eq i8 %73, 0, !dbg !1371
  br i1 %74, label %107, label %75, !dbg !1372

75:                                               ; preds = %70
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #18, !dbg !1373
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %35, metadata !1317, metadata !DIExpression()) #18, !dbg !1374
  store i64 0, i64* %3, align 8, !dbg !1374
  %76 = sub i64 %46, %71, !dbg !1375
  %77 = call i64 @rpl_mbrlen(i8* nonnull %72, i64 %76, %struct.__mbstate_t* nonnull %35) #18, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %77, metadata !1320, metadata !DIExpression()) #18, !dbg !1306
  %78 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i32 5) #18, !dbg !1377
  %79 = icmp ult i64 %77, 17, !dbg !1378
  %80 = select i1 %79, i64 %77, i64 1, !dbg !1379
  %81 = call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* nonnull %72, i64 %80) #18, !dbg !1380
  %82 = call i8* @quotearg_n_style(i32 0, i32 4, i8* nonnull %45) #18, !dbg !1381
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %78, i8* %81, i8* %82) #18, !dbg !1382
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #18, !dbg !1383
  br label %169, !dbg !1384

83:                                               ; preds = %69
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %34) #18, !dbg !1385
  call void @llvm.dbg.value(metadata i8* %45, metadata !1386, metadata !DIExpression()) #18, !dbg !1394
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1393, metadata !DIExpression()) #18, !dbg !1394
  %84 = call i32 @__lxstat(i32 1, i8* nonnull %45, %struct.stat* nonnull %4) #18, !dbg !1397
  %85 = icmp eq i32 %84, 0, !dbg !1398
  br i1 %85, label %86, label %87, !dbg !1399

86:                                               ; preds = %83
  call void @llvm.dbg.value(metadata i8 0, metadata !1201, metadata !DIExpression()) #18, !dbg !1330
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %34) #18, !dbg !1400
  call void @llvm.dbg.value(metadata i8 0, metadata !1201, metadata !DIExpression()) #18, !dbg !1330
  call void @llvm.dbg.value(metadata i8 undef, metadata !1200, metadata !DIExpression()) #18, !dbg !1330
  br label %169, !dbg !1401

87:                                               ; preds = %83
  %88 = tail call i32* @__errno_location() #24, !dbg !1402
  %89 = load i32, i32* %88, align 4, !dbg !1402, !tbaa !1296
  %90 = icmp ne i32 %89, 2, !dbg !1404
  %91 = or i1 %65, %90, !dbg !1405
  br i1 %91, label %92, label %94, !dbg !1405

92:                                               ; preds = %87
  %93 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %45) #18, !dbg !1406
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %93) #18, !dbg !1408
  call void @llvm.dbg.value(metadata i8 0, metadata !1201, metadata !DIExpression()) #18, !dbg !1330
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %34) #18, !dbg !1400
  br label %169

94:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i8 0, metadata !1201, metadata !DIExpression()) #18, !dbg !1330
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %34) #18, !dbg !1400
  call void @llvm.dbg.value(metadata i8 0, metadata !1201, metadata !DIExpression()) #18, !dbg !1330
  %95 = icmp ugt i64 %46, 255, !dbg !1409
  br i1 %95, label %96, label %115, !dbg !1410

96:                                               ; preds = %94
  %97 = load i8, i8* %45, align 1, !dbg !1411, !tbaa !1353
  %98 = icmp eq i8 %97, 47, !dbg !1412
  %99 = select i1 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %99, metadata !1208, metadata !DIExpression()) #18, !dbg !1413
  store i32 0, i32* %88, align 4, !dbg !1414, !tbaa !1296
  %100 = call i64 @pathconf(i8* %99, i32 4) #18, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %100, metadata !1205, metadata !DIExpression()) #18, !dbg !1413
  %101 = icmp slt i64 %100, 0, !dbg !1416
  br i1 %101, label %102, label %107, !dbg !1418

102:                                              ; preds = %96
  %103 = load i32, i32* %88, align 4, !dbg !1419, !tbaa !1296
  %104 = icmp eq i32 %103, 0, !dbg !1420
  br i1 %104, label %107, label %105, !dbg !1421

105:                                              ; preds = %102
  %106 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.37, i64 0, i64 0), i32 5) #18, !dbg !1422
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %103, i8* %106, i8* %99) #18, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %100, metadata !1202, metadata !DIExpression()) #18, !dbg !1425
  br label %169

107:                                              ; preds = %102, %96, %70
  %108 = phi i64 [ 256, %70 ], [ %100, %102 ], [ %100, %96 ]
  call void @llvm.dbg.value(metadata i64 %108, metadata !1202, metadata !DIExpression()) #18, !dbg !1425
  %109 = icmp ugt i64 %108, %46, !dbg !1426
  br i1 %109, label %114, label %110, !dbg !1427

110:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i64 %46, metadata !1209, metadata !DIExpression()) #18, !dbg !1428
  %111 = add i64 %108, -1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %111, metadata !1212, metadata !DIExpression()) #18, !dbg !1428
  %112 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0), i32 5) #18, !dbg !1430
  %113 = call i8* @quotearg_style(i32 4, i8* nonnull %45) #18, !dbg !1431
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %112, i64 %111, i64 %46, i8* %113) #18, !dbg !1432
  br label %169

114:                                              ; preds = %107
  br i1 %30, label %131, label %115, !dbg !1433

115:                                              ; preds = %94, %114
  br label %116, !dbg !1434

116:                                              ; preds = %120, %115
  %117 = phi i8* [ %45, %115 ], [ %121, %120 ]
  call void @llvm.dbg.value(metadata i8* %117, metadata !1439, metadata !DIExpression()) #18, !dbg !1441
  %118 = load i8, i8* %117, align 1, !dbg !1442, !tbaa !1353
  %119 = getelementptr inbounds i8, i8* %117, i64 1, !dbg !1443
  call void @llvm.dbg.value(metadata i8* %119, metadata !1439, metadata !DIExpression()) #18, !dbg !1441
  switch i8 %118, label %122 [
    i8 47, label %120
    i8 0, label %169
  ], !dbg !1434

120:                                              ; preds = %116, %128
  %121 = phi i8* [ %119, %116 ], [ %129, %128 ]
  br label %116, !dbg !1441, !llvm.loop !1444

122:                                              ; preds = %116, %126
  %123 = phi i64 [ %127, %126 ], [ 1, %116 ], !dbg !1447
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  %124 = getelementptr inbounds i8, i8* %117, i64 %123, !dbg !1457
  %125 = load i8, i8* %124, align 1, !dbg !1457, !tbaa !1353
  switch i8 %125, label %126 [
    i8 47, label %128
    i8 0, label %128
  ], !dbg !1459

126:                                              ; preds = %122
  %127 = add i64 %123, 1, !dbg !1460
  call void @llvm.dbg.value(metadata i64 %127, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  br label %122, !dbg !1461, !llvm.loop !1462

128:                                              ; preds = %122, %122
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  %129 = getelementptr inbounds i8, i8* %117, i64 %123, !dbg !1457
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1454, metadata !DIExpression()) #18, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %123, metadata !1213, metadata !DIExpression()) #18, !dbg !1465
  %130 = icmp ugt i64 %123, 14, !dbg !1466
  br i1 %130, label %131, label %120

131:                                              ; preds = %128, %114
  br label %132, !dbg !1468

132:                                              ; preds = %131, %163
  %133 = phi i64 [ %155, %163 ], [ %37, %131 ], !dbg !1470
  %134 = phi i64 [ %156, %163 ], [ 14, %131 ], !dbg !1324
  %135 = phi i8* [ %164, %163 ], [ %45, %131 ], !dbg !1471
  call void @llvm.dbg.value(metadata i8* %135, metadata !1199, metadata !DIExpression()) #18, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %134, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %133, metadata !1222, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %135, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  br label %136, !dbg !1468

136:                                              ; preds = %136, %132
  %137 = phi i8* [ %135, %132 ], [ %139, %136 ]
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  %138 = load i8, i8* %137, align 1, !dbg !1473, !tbaa !1353
  %139 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !1474
  call void @llvm.dbg.value(metadata i8* %139, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  switch i8 %138, label %140 [
    i8 47, label %136
    i8 0, label %169
  ], !dbg !1468

140:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  %141 = icmp eq i64 %133, 0, !dbg !1475
  br i1 %141, label %142, label %154, !dbg !1476

142:                                              ; preds = %140
  %143 = icmp eq i8* %137, %45, !dbg !1477
  %144 = select i1 %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i8* %45, !dbg !1478
  call void @llvm.dbg.value(metadata i8* %144, metadata !1230, metadata !DIExpression()) #18, !dbg !1479
  call void @llvm.dbg.value(metadata i8 %138, metadata !1231, metadata !DIExpression()) #18, !dbg !1479
  %145 = tail call i32* @__errno_location() #24, !dbg !1480
  store i32 0, i32* %145, align 4, !dbg !1481, !tbaa !1296
  store i8 0, i8* %137, align 1, !dbg !1482, !tbaa !1353
  %146 = call i64 @pathconf(i8* %144, i32 3) #18, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %146, metadata !1227, metadata !DIExpression()) #18, !dbg !1479
  store i8 %138, i8* %137, align 1, !dbg !1484, !tbaa !1353
  %147 = icmp sgt i64 %146, -1, !dbg !1485
  br i1 %147, label %154, label %148, !dbg !1487

148:                                              ; preds = %142
  %149 = load i32, i32* %145, align 4, !dbg !1488, !tbaa !1296
  switch i32 %149, label %151 [
    i32 0, label %154
    i32 2, label %150
  ], !dbg !1489

150:                                              ; preds = %148
  call void @llvm.dbg.value(metadata i64 %134, metadata !1222, metadata !DIExpression()) #18, !dbg !1324
  br label %154, !dbg !1490

151:                                              ; preds = %148
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  store i8 0, i8* %137, align 1, !dbg !1492, !tbaa !1353
  %152 = load i32, i32* %145, align 4, !dbg !1493, !tbaa !1296
  %153 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %144) #18, !dbg !1494
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* %153) #18, !dbg !1495
  store i8 %138, i8* %137, align 1, !dbg !1496, !tbaa !1353
  call void @llvm.dbg.value(metadata i64 %134, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 0, metadata !1222, metadata !DIExpression()) #18, !dbg !1324
  br label %169

154:                                              ; preds = %150, %148, %142, %140
  %155 = phi i64 [ %133, %140 ], [ 0, %148 ], [ 0, %142 ], [ %134, %150 ], !dbg !1470
  %156 = phi i64 [ %133, %140 ], [ -1, %148 ], [ %146, %142 ], [ %134, %150 ], !dbg !1497
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %155, metadata !1222, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %137, metadata !1453, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 1, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  br label %157, !dbg !1500

157:                                              ; preds = %161, %154
  %158 = phi i64 [ 1, %154 ], [ %162, %161 ], !dbg !1501
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  %159 = getelementptr inbounds i8, i8* %137, i64 %158, !dbg !1502
  %160 = load i8, i8* %159, align 1, !dbg !1502, !tbaa !1353
  switch i8 %160, label %161 [
    i8 47, label %163
    i8 0, label %163
  ], !dbg !1503

161:                                              ; preds = %157
  %162 = add i64 %158, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %162, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  br label %157, !dbg !1505, !llvm.loop !1506

163:                                              ; preds = %157, %157
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  %164 = getelementptr inbounds i8, i8* %137, i64 %158, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %158, metadata !1223, metadata !DIExpression()) #18, !dbg !1509
  %165 = icmp ult i64 %156, %158, !dbg !1510
  br i1 %165, label %166, label %132, !dbg !1511

166:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1453, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1453, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1453, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1453, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1453, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1453, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %156, metadata !1219, metadata !DIExpression()) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i64 %158, metadata !1454, metadata !DIExpression()) #18, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %137, metadata !1439, metadata !DIExpression()) #18, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %158, metadata !1232, metadata !DIExpression()) #18, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %156, metadata !1235, metadata !DIExpression()) #18, !dbg !1512
  call void @llvm.dbg.value(metadata i8 %160, metadata !1236, metadata !DIExpression()) #18, !dbg !1512
  store i8 0, i8* %164, align 1, !dbg !1513, !tbaa !1353
  %167 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.39, i64 0, i64 0), i32 5) #18, !dbg !1514
  %168 = call i8* @quote(i8* nonnull %137) #18, !dbg !1515
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %167, i64 %156, i64 %158, i8* %168) #18, !dbg !1516
  store i8 %160, i8* %164, align 1, !dbg !1517, !tbaa !1353
  br label %169

169:                                              ; preds = %116, %136, %61, %67, %75, %86, %92, %105, %110, %151, %166
  %170 = phi i1 [ false, %67 ], [ false, %92 ], [ false, %61 ], [ false, %75 ], [ false, %166 ], [ false, %151 ], [ true, %86 ], [ false, %110 ], [ false, %105 ], [ true, %136 ], [ true, %116 ]
  %171 = and i1 %42, %170, !dbg !1518
  call void @llvm.dbg.value(metadata i1 %171, metadata !1184, metadata !DIExpression()), !dbg !1277
  %172 = load i32, i32* @optind, align 4, !dbg !1519, !tbaa !1296
  %173 = add nsw i32 %172, 1, !dbg !1519
  store i32 %173, i32* @optind, align 4, !dbg !1519, !tbaa !1296
  call void @llvm.dbg.value(metadata i8 undef, metadata !1184, metadata !DIExpression()), !dbg !1277
  %174 = icmp slt i32 %173, %0, !dbg !1300
  br i1 %174, label %40, label %175, !dbg !1301, !llvm.loop !1520

175:                                              ; preds = %169
  %176 = xor i1 %171, true, !dbg !1522
  %177 = zext i1 %176 to i32, !dbg !1522
  br label %178, !dbg !1522

178:                                              ; preds = %175, %27
  %179 = phi i32 [ 0, %27 ], [ %177, %175 ]
  ret i32 %179, !dbg !1523
}

; Function Attrs: nounwind
declare !dbg !124 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !127 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !130 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !137 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !156 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !163 i64 @pathconf(i8*, i32) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #11 !dbg !1524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1526, metadata !DIExpression()), !dbg !1527
  store i8* %0, i8** @file_name, align 8, !dbg !1528, !tbaa !1138
  ret void, !dbg !1529
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #11 !dbg !1530 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1534, metadata !DIExpression()), !dbg !1535
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1536, !tbaa !1537
  ret void, !dbg !1539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1540 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1545, !tbaa !1138
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1546
  %3 = icmp eq i32 %2, 0, !dbg !1547
  br i1 %3, label %22, label %4, !dbg !1548

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1549, !tbaa !1537, !range !1550
  %6 = icmp eq i8 %5, 0, !dbg !1549
  br i1 %6, label %11, label %7, !dbg !1551

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1552
  %9 = load i32, i32* %8, align 4, !dbg !1552, !tbaa !1296
  %10 = icmp eq i32 %9, 32, !dbg !1553
  br i1 %10, label %22, label %11, !dbg !1554

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i32 5) #18, !dbg !1555
  call void @llvm.dbg.value(metadata i8* %12, metadata !1542, metadata !DIExpression()), !dbg !1556
  %13 = load i8*, i8** @file_name, align 8, !dbg !1557, !tbaa !1138
  %14 = icmp eq i8* %13, null, !dbg !1557
  %15 = tail call i32* @__errno_location() #24, !dbg !1559
  %16 = load i32, i32* %15, align 4, !dbg !1559, !tbaa !1296
  br i1 %14, label %19, label %17, !dbg !1560

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1561
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.47, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1562
  br label %20, !dbg !1562

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.48, i64 0, i64 0), i8* %12) #18, !dbg !1563
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1564, !tbaa !1296
  tail call void @_exit(i32 %21) #22, !dbg !1565
  unreachable, !dbg !1565

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1566, !tbaa !1138
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1568
  %25 = icmp eq i32 %24, 0, !dbg !1569
  br i1 %25, label %28, label %26, !dbg !1570

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1571, !tbaa !1296
  tail call void @_exit(i32 %27) #22, !dbg !1572
  unreachable, !dbg !1572

28:                                               ; preds = %22
  ret void, !dbg !1573
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1574 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1576, metadata !DIExpression()), !dbg !1579
  %2 = icmp eq i8* %0, null, !dbg !1580
  br i1 %2, label %3, label %6, !dbg !1582

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1583, !tbaa !1138
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.55, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1585
  tail call void @abort() #22, !dbg !1586
  unreachable, !dbg !1586

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1587
  call void @llvm.dbg.value(metadata i8* %7, metadata !1577, metadata !DIExpression()), !dbg !1579
  %8 = icmp eq i8* %7, null, !dbg !1588
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1589
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1589
  call void @llvm.dbg.value(metadata i8* %10, metadata !1578, metadata !DIExpression()), !dbg !1579
  %11 = ptrtoint i8* %10 to i64, !dbg !1590
  %12 = ptrtoint i8* %0 to i64, !dbg !1590
  %13 = sub i64 %11, %12, !dbg !1590
  %14 = icmp sgt i64 %13, 6, !dbg !1592
  br i1 %14, label %15, label %24, !dbg !1593

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1594
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.56, i64 0, i64 0), i64 7) #21, !dbg !1595
  %18 = icmp eq i32 %17, 0, !dbg !1596
  br i1 %18, label %19, label %24, !dbg !1597

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1576, metadata !DIExpression()), !dbg !1579
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.57, i64 0, i64 0), i64 3) #21, !dbg !1598
  %21 = icmp eq i32 %20, 0, !dbg !1601
  br i1 %21, label %22, label %24, !dbg !1602

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %23, metadata !1576, metadata !DIExpression()), !dbg !1579
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1605, !tbaa !1138
  br label %24, !dbg !1606

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1576, metadata !DIExpression()), !dbg !1579
  store i8* %25, i8** @program_name, align 8, !dbg !1607, !tbaa !1138
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1608, !tbaa !1138
  ret void, !dbg !1609
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1610 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1615, metadata !DIExpression()), !dbg !1618
  %2 = tail call i32* @__errno_location() #24, !dbg !1619
  %3 = load i32, i32* %2, align 4, !dbg !1619, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %3, metadata !1616, metadata !DIExpression()), !dbg !1618
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1620
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1620
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1620
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1621
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1621
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1617, metadata !DIExpression()), !dbg !1618
  store i32 %3, i32* %2, align 4, !dbg !1622, !tbaa !1296
  ret %struct.quoting_options* %8, !dbg !1623
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1624 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1628, metadata !DIExpression()), !dbg !1629
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1630
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1630
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1631
  %5 = load i32, i32* %4, align 8, !dbg !1631, !tbaa !1632
  ret i32 %5, !dbg !1634
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #11 !dbg !1635 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1639, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i32 %1, metadata !1640, metadata !DIExpression()), !dbg !1641
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1642
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1642
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1643
  store i32 %1, i32* %5, align 8, !dbg !1644, !tbaa !1632
  ret void, !dbg !1645
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1646 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1650, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %1, metadata !1651, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %2, metadata !1652, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 %1, metadata !1653, metadata !DIExpression()), !dbg !1659
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1660
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1660
  %6 = lshr i8 %1, 5, !dbg !1661
  %7 = zext i8 %6 to i64, !dbg !1661
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1662
  call void @llvm.dbg.value(metadata i32* %8, metadata !1655, metadata !DIExpression()), !dbg !1659
  %9 = and i8 %1, 31, !dbg !1663
  %10 = zext i8 %9 to i32, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %10, metadata !1657, metadata !DIExpression()), !dbg !1659
  %11 = load i32, i32* %8, align 4, !dbg !1664, !tbaa !1296
  %12 = lshr i32 %11, %10, !dbg !1665
  %13 = and i32 %12, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %13, metadata !1658, metadata !DIExpression()), !dbg !1659
  %14 = and i32 %2, 1, !dbg !1667
  %15 = xor i32 %13, %14, !dbg !1668
  %16 = shl i32 %15, %10, !dbg !1669
  %17 = xor i32 %16, %11, !dbg !1670
  store i32 %17, i32* %8, align 4, !dbg !1670, !tbaa !1296
  ret i32 %13, !dbg !1671
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1672 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1676, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %1, metadata !1677, metadata !DIExpression()), !dbg !1679
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1680
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1682
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1676, metadata !DIExpression()), !dbg !1679
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1683
  %6 = load i32, i32* %5, align 4, !dbg !1683, !tbaa !1684
  call void @llvm.dbg.value(metadata i32 %6, metadata !1678, metadata !DIExpression()), !dbg !1679
  store i32 %1, i32* %5, align 4, !dbg !1685, !tbaa !1684
  ret i32 %6, !dbg !1686
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1687 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1691, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %1, metadata !1692, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* %2, metadata !1693, metadata !DIExpression()), !dbg !1694
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1695
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1697
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()), !dbg !1694
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1698
  store i32 10, i32* %6, align 8, !dbg !1699, !tbaa !1632
  %7 = icmp ne i8* %1, null, !dbg !1700
  %8 = icmp ne i8* %2, null, !dbg !1702
  %9 = and i1 %7, %8, !dbg !1703
  br i1 %9, label %11, label %10, !dbg !1703

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1704
  unreachable, !dbg !1704

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1705
  store i8* %1, i8** %12, align 8, !dbg !1706, !tbaa !1707
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1708
  store i8* %2, i8** %13, align 8, !dbg !1709, !tbaa !1710
  ret void, !dbg !1711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1712 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1716, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %1, metadata !1717, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8* %2, metadata !1718, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 %3, metadata !1719, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1720, metadata !DIExpression()), !dbg !1724
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1725
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1725
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1721, metadata !DIExpression()), !dbg !1724
  %8 = tail call i32* @__errno_location() #24, !dbg !1726
  %9 = load i32, i32* %8, align 4, !dbg !1726, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %9, metadata !1722, metadata !DIExpression()), !dbg !1724
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1727
  %11 = load i32, i32* %10, align 8, !dbg !1727, !tbaa !1632
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1728
  %13 = load i32, i32* %12, align 4, !dbg !1728, !tbaa !1684
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1729
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1730
  %16 = load i8*, i8** %15, align 8, !dbg !1730, !tbaa !1707
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1731
  %18 = load i8*, i8** %17, align 8, !dbg !1731, !tbaa !1710
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1732
  call void @llvm.dbg.value(metadata i64 %19, metadata !1723, metadata !DIExpression()), !dbg !1724
  store i32 %9, i32* %8, align 4, !dbg !1733, !tbaa !1296
  ret i64 %19, !dbg !1734
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1735 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1741, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %1, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %2, metadata !1743, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %3, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %4, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %5, metadata !1746, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32* %6, metadata !1747, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %7, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %8, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 0, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 0, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* null, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 0, metadata !1754, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1755, metadata !DIExpression()), !dbg !1798
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1799
  %14 = icmp eq i64 %13, 1, !dbg !1800
  call void @llvm.dbg.value(metadata i1 %14, metadata !1756, metadata !DIExpression()), !dbg !1798
  %15 = lshr i32 %5, 1, !dbg !1801
  %16 = trunc i32 %15 to i8, !dbg !1801
  %17 = and i8 %16, 1, !dbg !1801
  call void @llvm.dbg.value(metadata i8 %17, metadata !1757, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1798
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1802
  %19 = and i32 %5, 4, !dbg !1804
  %20 = icmp eq i32 %19, 0, !dbg !1804
  %21 = and i32 %5, 1, !dbg !1807
  %22 = icmp eq i32 %21, 0, !dbg !1807
  %23 = bitcast i64* %10 to i8*, !dbg !1810
  %24 = bitcast i32* %12 to i8*, !dbg !1811
  %25 = icmp eq i32* %6, null, !dbg !1812
  br label %26, !dbg !1814

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1815
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1816
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1817
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1818
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1798
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1819
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1820
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1821
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %38, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %37, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %36, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %35, metadata !1757, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %34, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %33, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %32, metadata !1754, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %31, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %30, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 0, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %29, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %28, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %27, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.label(metadata !1792), !dbg !1822
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
  ], !dbg !1823

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %35, metadata !1757, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 5, metadata !1745, metadata !DIExpression()), !dbg !1798
  br label %92, !dbg !1824

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1757, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 5, metadata !1745, metadata !DIExpression()), !dbg !1798
  %42 = and i8 %35, 1, !dbg !1826
  %43 = icmp eq i8 %42, 0, !dbg !1826
  br i1 %43, label %44, label %92, !dbg !1824

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1828
  br i1 %45, label %92, label %46, !dbg !1831

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1828, !tbaa !1353
  br label %92, !dbg !1828

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.68, i64 0, i64 0), i32 %27), !dbg !1832
  call void @llvm.dbg.value(metadata i8* %48, metadata !1748, metadata !DIExpression()), !dbg !1798
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), i32 %27), !dbg !1836
  call void @llvm.dbg.value(metadata i8* %49, metadata !1749, metadata !DIExpression()), !dbg !1798
  br label %50, !dbg !1837

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %51, metadata !1748, metadata !DIExpression()), !dbg !1798
  %53 = and i8 %35, 1, !dbg !1838
  %54 = icmp eq i8 %53, 0, !dbg !1838
  br i1 %54, label %55, label %70, !dbg !1840

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 0, metadata !1751, metadata !DIExpression()), !dbg !1798
  %56 = load i8, i8* %51, align 1, !dbg !1841, !tbaa !1353
  %57 = icmp eq i8 %56, 0, !dbg !1844
  br i1 %57, label %70, label %58, !dbg !1844

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %61, metadata !1751, metadata !DIExpression()), !dbg !1798
  %62 = icmp ult i64 %61, %39, !dbg !1845
  br i1 %62, label %63, label %65, !dbg !1848

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1845
  store i8 %59, i8* %64, align 1, !dbg !1845, !tbaa !1353
  br label %65, !dbg !1845

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %66, metadata !1751, metadata !DIExpression()), !dbg !1798
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1849
  call void @llvm.dbg.value(metadata i8* %67, metadata !1753, metadata !DIExpression()), !dbg !1798
  %68 = load i8, i8* %67, align 1, !dbg !1841, !tbaa !1353
  %69 = icmp eq i8 %68, 0, !dbg !1844
  br i1 %69, label %70, label %58, !dbg !1844, !llvm.loop !1850

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1852
  call void @llvm.dbg.value(metadata i64 %71, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %52, metadata !1753, metadata !DIExpression()), !dbg !1798
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %72, metadata !1754, metadata !DIExpression()), !dbg !1798
  br label %92, !dbg !1854

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1755, metadata !DIExpression()), !dbg !1798
  br label %74, !dbg !1855

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 %75, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1798
  br label %76, !dbg !1856

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1818
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 %78, metadata !1757, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %77, metadata !1755, metadata !DIExpression()), !dbg !1798
  %79 = and i8 %78, 1, !dbg !1857
  %80 = icmp eq i8 %79, 0, !dbg !1857
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1859
  br label %82, !dbg !1859

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1798
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1801
  call void @llvm.dbg.value(metadata i8 %84, metadata !1757, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %83, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  %85 = and i8 %84, 1, !dbg !1860
  %86 = icmp eq i8 %85, 0, !dbg !1860
  br i1 %86, label %87, label %92, !dbg !1862

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1863
  br i1 %88, label %92, label %89, !dbg !1866

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1863, !tbaa !1353
  br label %92, !dbg !1863

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1798
  br label %92, !dbg !1867

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1868
  unreachable, !dbg !1868

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1852
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), %40 ], !dbg !1798
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1798
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1798
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 %100, metadata !1757, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %98, metadata !1754, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %96, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %93, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 0, metadata !1750, metadata !DIExpression()), !dbg !1798
  %101 = and i8 %99, 1, !dbg !1869
  %102 = icmp ne i8 %101, 0, !dbg !1869
  %103 = icmp ne i32 %93, 2, !dbg !1869
  %104 = and i1 %103, %102, !dbg !1869
  %105 = icmp ne i64 %98, 0, !dbg !1869
  %106 = and i1 %105, %104, !dbg !1869
  %107 = icmp ugt i64 %98, 1, !dbg !1869
  %108 = and i8 %100, 1, !dbg !1871
  %109 = icmp eq i8 %108, 0, !dbg !1871
  %110 = icmp eq i32 %93, 2, !dbg !1874
  %111 = or i1 %103, %109, !dbg !1876
  %112 = icmp ne i8 %108, 0, !dbg !1878
  %113 = and i1 %110, %112, !dbg !1878
  %114 = xor i1 %102, true, !dbg !1879
  %115 = xor i1 %104, true, !dbg !1812
  %116 = and i1 %109, %115, !dbg !1812
  %117 = or i1 %25, %116, !dbg !1812
  %118 = and i8 %99, %100, !dbg !1880
  %119 = and i8 %118, 1, !dbg !1880
  %120 = icmp ne i8 %119, 0, !dbg !1880
  %121 = and i1 %120, %105, !dbg !1880
  br label %122, !dbg !1882

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1883
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1852
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1815
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1819
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1820
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1821
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %126, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %123, metadata !1750, metadata !DIExpression()), !dbg !1798
  %131 = icmp eq i64 %126, -1, !dbg !1884
  br i1 %131, label %132, label %136, !dbg !1885

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1886
  %134 = load i8, i8* %133, align 1, !dbg !1886, !tbaa !1353
  %135 = icmp eq i8 %134, 0, !dbg !1887
  br i1 %135, label %581, label %138, !dbg !1888

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1889
  br i1 %137, label %581, label %138, !dbg !1888

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 0, metadata !1768, metadata !DIExpression()), !dbg !1890
  br i1 %106, label %139, label %154, !dbg !1891

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1892
  %141 = and i1 %107, %131, !dbg !1893
  br i1 %141, label %142, label %144, !dbg !1893

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %143, metadata !1744, metadata !DIExpression()), !dbg !1798
  br label %144, !dbg !1895

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1744, metadata !DIExpression()), !dbg !1798
  %146 = icmp ugt i64 %140, %145, !dbg !1896
  br i1 %146, label %154, label %147, !dbg !1897

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1898
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1899
  %150 = icmp ne i32 %149, 0, !dbg !1900
  %151 = or i1 %150, %109, !dbg !1901
  %152 = xor i1 %150, true, !dbg !1901
  %153 = zext i1 %152 to i8, !dbg !1901
  br i1 %151, label %154, label %639, !dbg !1901

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %156, metadata !1766, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %155, metadata !1744, metadata !DIExpression()), !dbg !1798
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1902
  %158 = load i8, i8* %157, align 1, !dbg !1902, !tbaa !1353
  call void @llvm.dbg.value(metadata i8 %158, metadata !1761, metadata !DIExpression()), !dbg !1890
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
  ], !dbg !1903

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1904

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1905

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1767, metadata !DIExpression()), !dbg !1890
  %162 = and i8 %127, 1, !dbg !1908
  %163 = icmp eq i8 %162, 0, !dbg !1908
  %164 = and i1 %110, %163, !dbg !1908
  br i1 %164, label %165, label %181, !dbg !1908

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1910
  br i1 %166, label %167, label %169, !dbg !1914

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1910
  store i8 39, i8* %168, align 1, !dbg !1910, !tbaa !1353
  br label %169, !dbg !1910

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %170, metadata !1751, metadata !DIExpression()), !dbg !1798
  %171 = icmp ult i64 %170, %130, !dbg !1915
  br i1 %171, label %172, label %174, !dbg !1918

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1915
  store i8 36, i8* %173, align 1, !dbg !1915, !tbaa !1353
  br label %174, !dbg !1915

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %175, metadata !1751, metadata !DIExpression()), !dbg !1798
  %176 = icmp ult i64 %175, %130, !dbg !1919
  br i1 %176, label %177, label %179, !dbg !1922

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1919
  store i8 39, i8* %178, align 1, !dbg !1919, !tbaa !1353
  br label %179, !dbg !1919

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %180, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, metadata !1758, metadata !DIExpression()), !dbg !1798
  br label %181, !dbg !1923

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1798
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 %183, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %182, metadata !1751, metadata !DIExpression()), !dbg !1798
  %184 = icmp ult i64 %182, %130, !dbg !1924
  br i1 %184, label %185, label %187, !dbg !1927

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1924
  store i8 92, i8* %186, align 1, !dbg !1924, !tbaa !1353
  br label %187, !dbg !1924

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %188, metadata !1751, metadata !DIExpression()), !dbg !1798
  br i1 %103, label %189, label %463, !dbg !1928

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1930
  %191 = icmp ult i64 %190, %155, !dbg !1931
  br i1 %191, label %192, label %463, !dbg !1932

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1933
  %194 = load i8, i8* %193, align 1, !dbg !1933, !tbaa !1353
  %195 = add i8 %194, -48, !dbg !1934
  %196 = icmp ult i8 %195, 10, !dbg !1934
  br i1 %196, label %197, label %463, !dbg !1934

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1935
  br i1 %198, label %199, label %201, !dbg !1939

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1935
  store i8 48, i8* %200, align 1, !dbg !1935, !tbaa !1353
  br label %201, !dbg !1935

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %202, metadata !1751, metadata !DIExpression()), !dbg !1798
  %203 = icmp ult i64 %202, %130, !dbg !1940
  br i1 %203, label %204, label %206, !dbg !1943

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1940
  store i8 48, i8* %205, align 1, !dbg !1940, !tbaa !1353
  br label %206, !dbg !1940

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %207, metadata !1751, metadata !DIExpression()), !dbg !1798
  br label %463, !dbg !1944

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1945

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1946

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1947

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1948

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1949
  %214 = icmp ult i64 %213, %155, !dbg !1950
  br i1 %214, label %215, label %463, !dbg !1951

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1952
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1953
  %218 = load i8, i8* %217, align 1, !dbg !1953, !tbaa !1353
  %219 = icmp eq i8 %218, 63, !dbg !1954
  br i1 %219, label %220, label %463, !dbg !1955

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1956
  %222 = load i8, i8* %221, align 1, !dbg !1956, !tbaa !1353
  %223 = sext i8 %222 to i32, !dbg !1956
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
  ], !dbg !1957

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1958

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1761, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %213, metadata !1750, metadata !DIExpression()), !dbg !1798
  %226 = icmp ult i64 %124, %130, !dbg !1960
  br i1 %226, label %227, label %229, !dbg !1963

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1960
  store i8 63, i8* %228, align 1, !dbg !1960, !tbaa !1353
  br label %229, !dbg !1960

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %230, metadata !1751, metadata !DIExpression()), !dbg !1798
  %231 = icmp ult i64 %230, %130, !dbg !1964
  br i1 %231, label %232, label %234, !dbg !1967

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1964
  store i8 34, i8* %233, align 1, !dbg !1964, !tbaa !1353
  br label %234, !dbg !1964

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %235, metadata !1751, metadata !DIExpression()), !dbg !1798
  %236 = icmp ult i64 %235, %130, !dbg !1968
  br i1 %236, label %237, label %239, !dbg !1971

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1968
  store i8 34, i8* %238, align 1, !dbg !1968, !tbaa !1353
  br label %239, !dbg !1968

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %240, metadata !1751, metadata !DIExpression()), !dbg !1798
  %241 = icmp ult i64 %240, %130, !dbg !1972
  br i1 %241, label %242, label %244, !dbg !1975

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1972
  store i8 63, i8* %243, align 1, !dbg !1972, !tbaa !1353
  br label %244, !dbg !1972

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %245, metadata !1751, metadata !DIExpression()), !dbg !1798
  br label %463, !dbg !1976

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1765, metadata !DIExpression()), !dbg !1890
  br label %256, !dbg !1977

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1765, metadata !DIExpression()), !dbg !1890
  br label %256, !dbg !1978

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1765, metadata !DIExpression()), !dbg !1890
  br label %254, !dbg !1979

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1765, metadata !DIExpression()), !dbg !1890
  br label %254, !dbg !1980

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1765, metadata !DIExpression()), !dbg !1890
  br label %256, !dbg !1981

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1765, metadata !DIExpression()), !dbg !1890
  br i1 %110, label %252, label %253, !dbg !1982

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1983

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1986

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1987
  call void @llvm.dbg.value(metadata i8 %255, metadata !1765, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.label(metadata !1793), !dbg !1988
  br i1 %111, label %256, label %625, !dbg !1989

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1987
  call void @llvm.dbg.value(metadata i8 %257, metadata !1765, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.label(metadata !1794), !dbg !1991
  br i1 %102, label %488, label %463, !dbg !1992

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1993

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1994, !tbaa !1353
  %261 = icmp eq i8 %260, 0, !dbg !1995
  br i1 %261, label %262, label %463, !dbg !1996

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1997
  br i1 %263, label %264, label %463, !dbg !1999

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1768, metadata !DIExpression()), !dbg !1890
  br label %265, !dbg !2000

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %266, metadata !1768, metadata !DIExpression()), !dbg !1890
  br i1 %111, label %463, label %625, !dbg !2001

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, metadata !1768, metadata !DIExpression()), !dbg !1890
  br i1 %110, label %268, label %463, !dbg !2002

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2003

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2005
  %271 = icmp ne i64 %125, 0, !dbg !2007
  %272 = or i1 %271, %270, !dbg !2008
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2008
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %274, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %273, metadata !1752, metadata !DIExpression()), !dbg !1798
  %275 = icmp ult i64 %124, %274, !dbg !2009
  br i1 %275, label %276, label %278, !dbg !2012

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2009
  store i8 39, i8* %277, align 1, !dbg !2009, !tbaa !1353
  br label %278, !dbg !2009

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %279, metadata !1751, metadata !DIExpression()), !dbg !1798
  %280 = icmp ult i64 %279, %274, !dbg !2013
  br i1 %280, label %281, label %283, !dbg !2016

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2013
  store i8 92, i8* %282, align 1, !dbg !2013, !tbaa !1353
  br label %283, !dbg !2013

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %284, metadata !1751, metadata !DIExpression()), !dbg !1798
  %285 = icmp ult i64 %284, %274, !dbg !2017
  br i1 %285, label %286, label %288, !dbg !2020

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2017
  store i8 39, i8* %287, align 1, !dbg !2017, !tbaa !1353
  br label %288, !dbg !2017

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %289, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1798
  br label %463, !dbg !2021

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2022

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1769, metadata !DIExpression()), !dbg !2023
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !2024
  %293 = load i16*, i16** %292, align 8, !dbg !2024, !tbaa !1138
  %294 = zext i8 %158 to i64, !dbg !2024
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2024
  %296 = load i16, i16* %295, align 2, !dbg !2024, !tbaa !2026
  %297 = lshr i16 %296, 14, !dbg !2028
  %298 = trunc i16 %297 to i8, !dbg !2028
  %299 = and i8 %298, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i8 %299, metadata !1772, metadata !DIExpression()), !dbg !2023
  br label %355, !dbg !2029

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2030
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1773, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8* %23, metadata !2032, metadata !DIExpression()) #18, !dbg !2040
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()) #18, !dbg !2040
  call void @llvm.dbg.value(metadata i64 8, metadata !2039, metadata !DIExpression()) #18, !dbg !2040
  store i64 0, i64* %10, align 8, !dbg !2042
  call void @llvm.dbg.value(metadata i64 0, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !2023
  %301 = icmp eq i64 %155, -1, !dbg !2043
  br i1 %301, label %302, label %304, !dbg !2045

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %303, metadata !1744, metadata !DIExpression()), !dbg !1798
  br label %304, !dbg !2047

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1890
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  br label %306, !dbg !2048

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2049
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2050
  call void @llvm.dbg.value(metadata i8 %308, metadata !1772, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2051
  %309 = add i64 %307, %123, !dbg !2052
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2053
  %311 = sub i64 %305, %309, !dbg !2054
  call void @llvm.dbg.value(metadata i32* %12, metadata !1778, metadata !DIExpression(DW_OP_deref)), !dbg !1811
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %312, metadata !1781, metadata !DIExpression()), !dbg !1811
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2056

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  %314 = icmp ugt i64 %305, %309, !dbg !2057
  br i1 %314, label %315, label %340, !dbg !2059

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2060
  br label %317, !dbg !2060

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1769, metadata !DIExpression()), !dbg !2023
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2061
  %321 = load i8, i8* %320, align 1, !dbg !2061, !tbaa !1353
  %322 = icmp eq i8 %321, 0, !dbg !2059
  br i1 %322, label %340, label %323, !dbg !2060

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %324, metadata !1769, metadata !DIExpression()), !dbg !2023
  %325 = add i64 %324, %123, !dbg !2063
  %326 = icmp ult i64 %325, %305, !dbg !2057
  br i1 %326, label %317, label %340, !dbg !2059, !llvm.loop !2064

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2065
  %329 = and i1 %113, %328, !dbg !2068
  call void @llvm.dbg.value(metadata i64 1, metadata !1782, metadata !DIExpression()), !dbg !2069
  br i1 %329, label %330, label %343, !dbg !2068

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1782, metadata !DIExpression()), !dbg !2069
  %332 = add i64 %331, %309, !dbg !2070
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2071
  %334 = load i8, i8* %333, align 1, !dbg !2071, !tbaa !1353
  %335 = sext i8 %334 to i32, !dbg !2071
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2072

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %337, metadata !1782, metadata !DIExpression()), !dbg !2069
  %338 = icmp eq i64 %337, %312, !dbg !2065
  br i1 %338, label %343, label %330, !dbg !2074, !llvm.loop !2075

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %308, metadata !1772, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %307, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %308, metadata !1772, metadata !DIExpression()), !dbg !2023
  br label %340, !dbg !2077

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2077
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2078, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %344, metadata !1778, metadata !DIExpression()), !dbg !1811
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2080
  %346 = icmp eq i32 %345, 0, !dbg !2080
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2081
  call void @llvm.dbg.value(metadata i8 %347, metadata !1772, metadata !DIExpression()), !dbg !2023
  %348 = add i64 %312, %307, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %348, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i8 %347, metadata !1772, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %348, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2077
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2083
  %350 = icmp eq i32 %349, 0, !dbg !2084
  br i1 %350, label %306, label %351, !dbg !2085, !llvm.loop !2086

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2088
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 2, metadata !1745, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %99, metadata !1755, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %305, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2077
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2088
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1890
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2089
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2089
  call void @llvm.dbg.value(metadata i8 %358, metadata !1772, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %357, metadata !1769, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.value(metadata i64 %356, metadata !1744, metadata !DIExpression()), !dbg !1798
  %359 = and i8 %358, 1, !dbg !2090
  %360 = icmp ne i8 %359, 0, !dbg !2090
  call void @llvm.dbg.value(metadata i8 %359, metadata !1768, metadata !DIExpression()), !dbg !1890
  %361 = icmp ult i64 %357, 2, !dbg !2091
  %362 = or i1 %360, %114, !dbg !2092
  %363 = and i1 %361, %362, !dbg !2093
  br i1 %363, label %463, label %364, !dbg !2093

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %365, metadata !1789, metadata !DIExpression()), !dbg !2095
  br label %366, !dbg !2096

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1883
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1798
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1819
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1890
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1890
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2097
  call void @llvm.dbg.value(metadata i8 %372, metadata !1767, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %371, metadata !1766, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %370, metadata !1761, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %369, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %368, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %367, metadata !1750, metadata !DIExpression()), !dbg !1798
  br i1 %362, label %419, label %373, !dbg !2098

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2103

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1767, metadata !DIExpression()), !dbg !1890
  %375 = and i8 %369, 1, !dbg !2106
  %376 = icmp eq i8 %375, 0, !dbg !2106
  %377 = and i1 %110, %376, !dbg !2106
  br i1 %377, label %378, label %394, !dbg !2106

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2108
  br i1 %379, label %380, label %382, !dbg !2112

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2108
  store i8 39, i8* %381, align 1, !dbg !2108, !tbaa !1353
  br label %382, !dbg !2108

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %383, metadata !1751, metadata !DIExpression()), !dbg !1798
  %384 = icmp ult i64 %383, %130, !dbg !2113
  br i1 %384, label %385, label %387, !dbg !2116

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2113
  store i8 36, i8* %386, align 1, !dbg !2113, !tbaa !1353
  br label %387, !dbg !2113

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %388, metadata !1751, metadata !DIExpression()), !dbg !1798
  %389 = icmp ult i64 %388, %130, !dbg !2117
  br i1 %389, label %390, label %392, !dbg !2120

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2117
  store i8 39, i8* %391, align 1, !dbg !2117, !tbaa !1353
  br label %392, !dbg !2117

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %393, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, metadata !1758, metadata !DIExpression()), !dbg !1798
  br label %394, !dbg !2121

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1798
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 %396, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %395, metadata !1751, metadata !DIExpression()), !dbg !1798
  %397 = icmp ult i64 %395, %130, !dbg !2122
  br i1 %397, label %398, label %400, !dbg !2125

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2122
  store i8 92, i8* %399, align 1, !dbg !2122, !tbaa !1353
  br label %400, !dbg !2122

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %401, metadata !1751, metadata !DIExpression()), !dbg !1798
  %402 = icmp ult i64 %401, %130, !dbg !2126
  br i1 %402, label %403, label %407, !dbg !2129

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2126
  %405 = or i8 %404, 48, !dbg !2126
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2126
  store i8 %405, i8* %406, align 1, !dbg !2126, !tbaa !1353
  br label %407, !dbg !2126

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %408, metadata !1751, metadata !DIExpression()), !dbg !1798
  %409 = icmp ult i64 %408, %130, !dbg !2130
  br i1 %409, label %410, label %415, !dbg !2133

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2130
  %412 = and i8 %411, 7, !dbg !2130
  %413 = or i8 %412, 48, !dbg !2130
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2130
  store i8 %413, i8* %414, align 1, !dbg !2130, !tbaa !1353
  br label %415, !dbg !2130

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %416, metadata !1751, metadata !DIExpression()), !dbg !1798
  %417 = and i8 %370, 7, !dbg !2134
  %418 = or i8 %417, 48, !dbg !2135
  call void @llvm.dbg.value(metadata i8 %418, metadata !1761, metadata !DIExpression()), !dbg !1890
  br label %428, !dbg !2136

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2137
  %421 = icmp eq i8 %420, 0, !dbg !2137
  br i1 %421, label %428, label %422, !dbg !2139

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2140
  br i1 %423, label %424, label %426, !dbg !2144

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2140
  store i8 92, i8* %425, align 1, !dbg !2140, !tbaa !1353
  br label %426, !dbg !2140

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2144
  call void @llvm.dbg.value(metadata i64 %427, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1766, metadata !DIExpression()), !dbg !1890
  br label %428, !dbg !2145

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1798
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1819
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1890
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1890
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1890
  call void @llvm.dbg.value(metadata i8 %433, metadata !1767, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %432, metadata !1766, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %431, metadata !1761, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %430, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %429, metadata !1751, metadata !DIExpression()), !dbg !1798
  %434 = add i64 %367, 1, !dbg !2146
  %435 = icmp ugt i64 %365, %434, !dbg !2148
  br i1 %435, label %436, label %526, !dbg !2149

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2150
  %438 = icmp ne i8 %437, 0, !dbg !2150
  %439 = and i8 %433, 1, !dbg !2150
  %440 = icmp eq i8 %439, 0, !dbg !2150
  %441 = and i1 %438, %440, !dbg !2150
  br i1 %441, label %442, label %453, !dbg !2150

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2153
  br i1 %443, label %444, label %446, !dbg !2157

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2153
  store i8 39, i8* %445, align 1, !dbg !2153, !tbaa !1353
  br label %446, !dbg !2153

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i64 %447, metadata !1751, metadata !DIExpression()), !dbg !1798
  %448 = icmp ult i64 %447, %130, !dbg !2158
  br i1 %448, label %449, label %451, !dbg !2161

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2158
  store i8 39, i8* %450, align 1, !dbg !2158, !tbaa !1353
  br label %451, !dbg !2158

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %452, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1798
  br label %453, !dbg !2162

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2163
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 %455, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %454, metadata !1751, metadata !DIExpression()), !dbg !1798
  %456 = icmp ult i64 %454, %130, !dbg !2164
  br i1 %456, label %457, label %459, !dbg !2167

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2164
  store i8 %431, i8* %458, align 1, !dbg !2164, !tbaa !1353
  br label %459, !dbg !2164

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %460, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %434, metadata !1750, metadata !DIExpression()), !dbg !1798
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2168
  %462 = load i8, i8* %461, align 1, !dbg !2168, !tbaa !1353
  call void @llvm.dbg.value(metadata i8 %462, metadata !1761, metadata !DIExpression()), !dbg !1890
  br label %366, !dbg !2169, !llvm.loop !2170

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1883
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1798
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1815
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2173
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1798
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1798
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1890
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1890
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1890
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %472, metadata !1768, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %471, metadata !1767, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %156, metadata !1766, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %470, metadata !1761, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %469, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %468, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %467, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %466, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %465, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %464, metadata !1750, metadata !DIExpression()), !dbg !1798
  br i1 %117, label %486, label %474, !dbg !2174

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2175
  %476 = zext i8 %475 to i64, !dbg !2175
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2176
  %478 = load i32, i32* %477, align 4, !dbg !2176, !tbaa !1296
  %479 = and i8 %470, 31, !dbg !2177
  %480 = zext i8 %479 to i32, !dbg !2177
  %481 = shl nuw i32 1, %480, !dbg !2178
  %482 = and i32 %478, %481, !dbg !2178
  %483 = icmp eq i32 %482, 0, !dbg !2178
  %484 = icmp eq i8 %156, 0, !dbg !2179
  %485 = and i1 %484, %483, !dbg !2180
  br i1 %485, label %526, label %488, !dbg !2180

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2179
  br i1 %487, label %526, label %488, !dbg !2181

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2182
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1798
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1815
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2173
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1819
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1820
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1890
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1890
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %496, metadata !1768, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %495, metadata !1761, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %494, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %493, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %492, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %491, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %490, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %489, metadata !1750, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.label(metadata !1795), !dbg !2183
  br i1 %109, label %498, label %629, !dbg !2184

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1767, metadata !DIExpression()), !dbg !1890
  %499 = and i8 %493, 1, !dbg !2186
  %500 = icmp eq i8 %499, 0, !dbg !2186
  %501 = and i1 %110, %500, !dbg !2186
  br i1 %501, label %502, label %518, !dbg !2186

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2188
  br i1 %503, label %504, label %506, !dbg !2192

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2188
  store i8 39, i8* %505, align 1, !dbg !2188, !tbaa !1353
  br label %506, !dbg !2188

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %507, metadata !1751, metadata !DIExpression()), !dbg !1798
  %508 = icmp ult i64 %507, %497, !dbg !2193
  br i1 %508, label %509, label %511, !dbg !2196

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2193
  store i8 36, i8* %510, align 1, !dbg !2193, !tbaa !1353
  br label %511, !dbg !2193

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %512, metadata !1751, metadata !DIExpression()), !dbg !1798
  %513 = icmp ult i64 %512, %497, !dbg !2197
  br i1 %513, label %514, label %516, !dbg !2200

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2197
  store i8 39, i8* %515, align 1, !dbg !2197, !tbaa !1353
  br label %516, !dbg !2197

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %517, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 1, metadata !1758, metadata !DIExpression()), !dbg !1798
  br label %518, !dbg !2201

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1890
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 %520, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %519, metadata !1751, metadata !DIExpression()), !dbg !1798
  %521 = icmp ult i64 %519, %497, !dbg !2202
  br i1 %521, label %522, label %524, !dbg !2205

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2202
  store i8 92, i8* %523, align 1, !dbg !2202, !tbaa !1353
  br label %524, !dbg !2202

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %525, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %536, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %535, metadata !1768, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %534, metadata !1767, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %533, metadata !1761, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %532, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %531, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %530, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %529, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %528, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %527, metadata !1750, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.label(metadata !1796), !dbg !2206
  br label %553, !dbg !2207

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2182
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1798
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1815
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2173
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1819
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1820
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2210
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1890
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1890
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %535, metadata !1768, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %534, metadata !1767, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %533, metadata !1761, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 %532, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %531, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %530, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %529, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %528, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %527, metadata !1750, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.label(metadata !1796), !dbg !2206
  %537 = and i8 %531, 1, !dbg !2207
  %538 = icmp ne i8 %537, 0, !dbg !2207
  %539 = and i8 %534, 1, !dbg !2207
  %540 = icmp eq i8 %539, 0, !dbg !2207
  %541 = and i1 %538, %540, !dbg !2207
  br i1 %541, label %542, label %553, !dbg !2207

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2211
  br i1 %543, label %544, label %546, !dbg !2215

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2211
  store i8 39, i8* %545, align 1, !dbg !2211, !tbaa !1353
  br label %546, !dbg !2211

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %547, metadata !1751, metadata !DIExpression()), !dbg !1798
  %548 = icmp ult i64 %547, %536, !dbg !2216
  br i1 %548, label %549, label %551, !dbg !2219

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2216
  store i8 39, i8* %550, align 1, !dbg !2216, !tbaa !1353
  br label %551, !dbg !2216

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %552, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1798
  br label %553, !dbg !2220

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1890
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1798
  call void @llvm.dbg.value(metadata i8 %562, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %561, metadata !1751, metadata !DIExpression()), !dbg !1798
  %563 = icmp ult i64 %561, %554, !dbg !2221
  br i1 %563, label %564, label %566, !dbg !2224

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2221
  store i8 %556, i8* %565, align 1, !dbg !2221, !tbaa !1353
  br label %566, !dbg !2221

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %567, metadata !1751, metadata !DIExpression()), !dbg !1798
  %568 = and i8 %555, 1, !dbg !2225
  %569 = icmp eq i8 %568, 0, !dbg !2225
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2227
  call void @llvm.dbg.value(metadata i8 %570, metadata !1760, metadata !DIExpression()), !dbg !1798
  br label %571, !dbg !2228

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2182
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1798
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1815
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2173
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1819
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1798
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1821
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %578, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %577, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %576, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %575, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %574, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %573, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %572, metadata !1750, metadata !DIExpression()), !dbg !1798
  %580 = add i64 %572, 1, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %580, metadata !1750, metadata !DIExpression()), !dbg !1798
  br label %122, !dbg !2230, !llvm.loop !2231

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %127, metadata !1758, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %128, metadata !1759, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 %129, metadata !1760, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  %583 = icmp eq i64 %124, 0, !dbg !2233
  %584 = and i1 %110, %583, !dbg !2235
  %585 = xor i1 %584, true, !dbg !2235
  %586 = or i1 %109, %585, !dbg !2235
  br i1 %586, label %587, label %629, !dbg !2235

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2236
  %589 = xor i1 %588, true, !dbg !2236
  %590 = and i8 %128, 1, !dbg !2238
  %591 = icmp eq i8 %590, 0, !dbg !2238
  %592 = or i1 %591, %589, !dbg !2236
  br i1 %592, label %602, label %593, !dbg !2236

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2239
  %595 = icmp eq i8 %594, 0, !dbg !2239
  br i1 %595, label %598, label %596, !dbg !2242

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %94, metadata !1748, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %95, metadata !1749, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %125, metadata !1752, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %582, metadata !1744, metadata !DIExpression()), !dbg !1798
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2243
  br label %645, !dbg !2244

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2245
  %600 = icmp ne i64 %125, 0, !dbg !2247
  %601 = and i1 %600, %599, !dbg !2248
  br i1 %601, label %26, label %602, !dbg !2248

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %130, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  %603 = icmp ne i8* %97, null, !dbg !2249
  %604 = and i1 %603, %109, !dbg !2251
  br i1 %604, label %605, label %620, !dbg !2251

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %124, metadata !1751, metadata !DIExpression()), !dbg !1798
  %606 = load i8, i8* %97, align 1, !dbg !2252, !tbaa !1353
  %607 = icmp eq i8 %606, 0, !dbg !2255
  br i1 %607, label %620, label %608, !dbg !2255

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1753, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %611, metadata !1751, metadata !DIExpression()), !dbg !1798
  %612 = icmp ult i64 %611, %130, !dbg !2256
  br i1 %612, label %613, label %615, !dbg !2259

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2256
  store i8 %609, i8* %614, align 1, !dbg !2256, !tbaa !1353
  br label %615, !dbg !2256

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %616, metadata !1751, metadata !DIExpression()), !dbg !1798
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2260
  call void @llvm.dbg.value(metadata i8* %617, metadata !1753, metadata !DIExpression()), !dbg !1798
  %618 = load i8, i8* %617, align 1, !dbg !2252, !tbaa !1353
  %619 = icmp eq i8 %618, 0, !dbg !2255
  br i1 %619, label %620, label %608, !dbg !2255, !llvm.loop !2261

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1852
  call void @llvm.dbg.value(metadata i64 %621, metadata !1751, metadata !DIExpression()), !dbg !1798
  %622 = icmp ult i64 %621, %130, !dbg !2263
  br i1 %622, label %623, label %645, !dbg !2265

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2266
  store i8 0, i8* %624, align 1, !dbg !2267, !tbaa !1353
  br label %645, !dbg !2266

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %630, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.label(metadata !1797), !dbg !2268
  %627 = icmp eq i8 %101, 0, !dbg !2269
  %628 = select i1 %627, i32 2, i32 4, !dbg !2269
  br label %635, !dbg !2269

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1742, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i64 %630, metadata !1744, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.label(metadata !1797), !dbg !2268
  %632 = icmp eq i32 %93, 2, !dbg !2271
  %633 = icmp eq i8 %101, 0, !dbg !2269
  %634 = select i1 %633, i32 2, i32 4, !dbg !2269
  br i1 %632, label %635, label %639, !dbg !2269

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2269

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1745, metadata !DIExpression()), !dbg !1798
  %643 = and i32 %5, -3, !dbg !2272
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2273
  br label %645, !dbg !2274

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2275
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2276 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2280, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i32 %1, metadata !2281, metadata !DIExpression()), !dbg !2284
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2285
  call void @llvm.dbg.value(metadata i8* %3, metadata !2282, metadata !DIExpression()), !dbg !2284
  %4 = icmp eq i8* %3, %0, !dbg !2286
  br i1 %4, label %5, label %71, !dbg !2288

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2289
  call void @llvm.dbg.value(metadata i8* %6, metadata !2283, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8* %6, metadata !2290, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* undef, metadata !2296, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 85, metadata !2297, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 84, metadata !2298, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 70, metadata !2299, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 45, metadata !2300, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 56, metadata !2301, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 0, metadata !2302, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 0, metadata !2303, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 0, metadata !2304, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 0, metadata !2305, metadata !DIExpression()), !dbg !2306
  %7 = load i8, i8* %6, align 1, !dbg !2309, !tbaa !1353
  %8 = and i8 %7, -33, !dbg !2309
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2309

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2311, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8* undef, metadata !2316, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 84, metadata !2317, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 70, metadata !2318, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 45, metadata !2319, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 56, metadata !2320, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 0, metadata !2321, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2325
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2329
  %11 = load i8, i8* %10, align 1, !dbg !2329, !tbaa !1353
  %12 = and i8 %11, -33, !dbg !2329
  %13 = icmp eq i8 %12, 84, !dbg !2329
  br i1 %13, label %14, label %68, !dbg !2329

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2331, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8* undef, metadata !2336, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 70, metadata !2337, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 45, metadata !2338, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 56, metadata !2339, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, metadata !2340, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2344
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2348
  %16 = load i8, i8* %15, align 1, !dbg !2348, !tbaa !1353
  %17 = and i8 %16, -33, !dbg !2348
  %18 = icmp eq i8 %17, 70, !dbg !2348
  br i1 %18, label %19, label %68, !dbg !2348

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2350, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* undef, metadata !2355, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 45, metadata !2356, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 56, metadata !2357, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2358, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2362
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2366
  %21 = load i8, i8* %20, align 1, !dbg !2366, !tbaa !1353
  %22 = icmp eq i8 %21, 45, !dbg !2366
  br i1 %22, label %23, label %68, !dbg !2368

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2369, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8* undef, metadata !2374, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 56, metadata !2375, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2376, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2380
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2384
  %25 = load i8, i8* %24, align 1, !dbg !2384, !tbaa !1353
  %26 = icmp eq i8 %25, 56, !dbg !2384
  br i1 %26, label %27, label %68, !dbg !2386

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2387, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8* undef, metadata !2392, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 0, metadata !2393, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 0, metadata !2394, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2397
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2401
  %29 = load i8, i8* %28, align 1, !dbg !2401, !tbaa !1353
  %30 = icmp eq i8 %29, 0, !dbg !2401
  br i1 %30, label %31, label %68, !dbg !2403

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2404, !tbaa !1353
  %33 = icmp eq i8 %32, 96, !dbg !2405
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.71, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.72, i64 0, i64 0), !dbg !2404
  br label %71, !dbg !2406

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2311, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8* undef, metadata !2316, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 66, metadata !2317, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 49, metadata !2318, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 56, metadata !2319, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 48, metadata !2320, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 51, metadata !2321, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 48, metadata !2322, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2407
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2411
  %37 = load i8, i8* %36, align 1, !dbg !2411, !tbaa !1353
  %38 = and i8 %37, -33, !dbg !2411
  %39 = icmp eq i8 %38, 66, !dbg !2411
  br i1 %39, label %40, label %68, !dbg !2411

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2331, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* undef, metadata !2336, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 49, metadata !2337, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 56, metadata !2338, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 48, metadata !2339, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 51, metadata !2340, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 48, metadata !2341, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2412
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2414
  %42 = load i8, i8* %41, align 1, !dbg !2414, !tbaa !1353
  %43 = icmp eq i8 %42, 49, !dbg !2414
  br i1 %43, label %44, label %68, !dbg !2415

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2350, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8* undef, metadata !2355, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 56, metadata !2356, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 48, metadata !2357, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 51, metadata !2358, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 48, metadata !2359, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2416
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2418
  %46 = load i8, i8* %45, align 1, !dbg !2418, !tbaa !1353
  %47 = icmp eq i8 %46, 56, !dbg !2418
  br i1 %47, label %48, label %68, !dbg !2419

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2369, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* undef, metadata !2374, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 48, metadata !2375, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 51, metadata !2376, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 48, metadata !2377, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2420
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2422
  %50 = load i8, i8* %49, align 1, !dbg !2422, !tbaa !1353
  %51 = icmp eq i8 %50, 48, !dbg !2422
  br i1 %51, label %52, label %68, !dbg !2423

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2387, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* undef, metadata !2392, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 51, metadata !2393, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 48, metadata !2394, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 0, metadata !2395, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2424
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2426
  %54 = load i8, i8* %53, align 1, !dbg !2426, !tbaa !1353
  %55 = icmp eq i8 %54, 51, !dbg !2426
  br i1 %55, label %56, label %68, !dbg !2427

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2428, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* undef, metadata !2433, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 48, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8 0, metadata !2436, metadata !DIExpression()), !dbg !2437
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2441
  %58 = load i8, i8* %57, align 1, !dbg !2441, !tbaa !1353
  %59 = icmp eq i8 %58, 48, !dbg !2441
  br i1 %59, label %60, label %68, !dbg !2443

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2444, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* undef, metadata !2449, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8 0, metadata !2451, metadata !DIExpression()), !dbg !2452
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2456
  %62 = load i8, i8* %61, align 1, !dbg !2456, !tbaa !1353
  %63 = icmp eq i8 %62, 0, !dbg !2456
  br i1 %63, label %64, label %68, !dbg !2458

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2459, !tbaa !1353
  %66 = icmp eq i8 %65, 96, !dbg !2460
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.73, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.74, i64 0, i64 0), !dbg !2459
  br label %71, !dbg !2461

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2462
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.69, i64 0, i64 0), !dbg !2463
  br label %71, !dbg !2464

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2284
  ret i8* %72, !dbg !2465
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #16

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !361 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !365 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2466 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %1, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2472, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()) #18, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %1, metadata !2479, metadata !DIExpression()) #18, !dbg !2487
  call void @llvm.dbg.value(metadata i64* null, metadata !2480, metadata !DIExpression()) #18, !dbg !2487
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2481, metadata !DIExpression()) #18, !dbg !2487
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2489
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2489
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2482, metadata !DIExpression()) #18, !dbg !2487
  %6 = tail call i32* @__errno_location() #24, !dbg !2490
  %7 = load i32, i32* %6, align 4, !dbg !2490, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %7, metadata !2483, metadata !DIExpression()) #18, !dbg !2487
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2491
  %9 = load i32, i32* %8, align 4, !dbg !2491, !tbaa !1684
  %10 = or i32 %9, 1, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %10, metadata !2484, metadata !DIExpression()) #18, !dbg !2487
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2493
  %12 = load i32, i32* %11, align 8, !dbg !2493, !tbaa !1632
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2494
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2495
  %15 = load i8*, i8** %14, align 8, !dbg !2495, !tbaa !1707
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2496
  %17 = load i8*, i8** %16, align 8, !dbg !2496, !tbaa !1710
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2497
  %19 = add i64 %18, 1, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %19, metadata !2485, metadata !DIExpression()) #18, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %19, metadata !2499, metadata !DIExpression()) #18, !dbg !2504
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %20, metadata !2486, metadata !DIExpression()) #18, !dbg !2487
  %21 = load i32, i32* %11, align 8, !dbg !2507, !tbaa !1632
  %22 = load i8*, i8** %14, align 8, !dbg !2508, !tbaa !1707
  %23 = load i8*, i8** %16, align 8, !dbg !2509, !tbaa !1710
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2510
  store i32 %7, i32* %6, align 4, !dbg !2511, !tbaa !1296
  ret i8* %20, !dbg !2512
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2475 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 %1, metadata !2479, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64* %2, metadata !2480, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2481, metadata !DIExpression()), !dbg !2513
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2514
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2482, metadata !DIExpression()), !dbg !2513
  %7 = tail call i32* @__errno_location() #24, !dbg !2515
  %8 = load i32, i32* %7, align 4, !dbg !2515, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %8, metadata !2483, metadata !DIExpression()), !dbg !2513
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2516
  %10 = load i32, i32* %9, align 4, !dbg !2516, !tbaa !1684
  %11 = icmp ne i64* %2, null, !dbg !2517
  %12 = xor i1 %11, true, !dbg !2517
  %13 = zext i1 %12 to i32, !dbg !2517
  %14 = or i32 %10, %13, !dbg !2518
  call void @llvm.dbg.value(metadata i32 %14, metadata !2484, metadata !DIExpression()), !dbg !2513
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2519
  %16 = load i32, i32* %15, align 8, !dbg !2519, !tbaa !1632
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2520
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2521
  %19 = load i8*, i8** %18, align 8, !dbg !2521, !tbaa !1707
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2522
  %21 = load i8*, i8** %20, align 8, !dbg !2522, !tbaa !1710
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2523
  %23 = add i64 %22, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i64 %23, metadata !2485, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 %23, metadata !2499, metadata !DIExpression()) #18, !dbg !2525
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2527
  call void @llvm.dbg.value(metadata i8* %24, metadata !2486, metadata !DIExpression()), !dbg !2513
  %25 = load i32, i32* %15, align 8, !dbg !2528, !tbaa !1632
  %26 = load i8*, i8** %18, align 8, !dbg !2529, !tbaa !1707
  %27 = load i8*, i8** %20, align 8, !dbg !2530, !tbaa !1710
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2531
  store i32 %8, i32* %7, align 4, !dbg !2532, !tbaa !1296
  br i1 %11, label %29, label %30, !dbg !2533

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2534, !tbaa !2536
  br label %30, !dbg !2538

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2540 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2544, !tbaa !1138
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2542, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 1, metadata !2543, metadata !DIExpression()), !dbg !2545
  %2 = load i32, i32* @nslots, align 4, !dbg !2546, !tbaa !1296
  %3 = icmp sgt i32 %2, 1, !dbg !2549
  br i1 %3, label %4, label %12, !dbg !2550

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2543, metadata !DIExpression()), !dbg !2545
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2551
  %7 = load i8*, i8** %6, align 8, !dbg !2551, !tbaa !2552
  tail call void @free(i8* %7) #18, !dbg !2554
  %8 = add nuw nsw i64 %5, 1, !dbg !2555
  call void @llvm.dbg.value(metadata i64 %8, metadata !2543, metadata !DIExpression()), !dbg !2545
  %9 = load i32, i32* @nslots, align 4, !dbg !2546, !tbaa !1296
  %10 = sext i32 %9 to i64, !dbg !2549
  %11 = icmp slt i64 %8, %10, !dbg !2549
  br i1 %11, label %4, label %12, !dbg !2550, !llvm.loop !2556

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2558
  %14 = load i8*, i8** %13, align 8, !dbg !2558, !tbaa !2552
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2560
  br i1 %15, label %17, label %16, !dbg !2561

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2562
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2564, !tbaa !2565
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2566, !tbaa !2552
  br label %17, !dbg !2567

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2568
  br i1 %18, label %21, label %19, !dbg !2570

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2571
  tail call void @free(i8* %20) #18, !dbg !2573
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2574, !tbaa !1138
  br label %21, !dbg !2575

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2576, !tbaa !1296
  ret void, !dbg !2577
}

; Function Attrs: nounwind
declare !dbg !343 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2578 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %1, metadata !2581, metadata !DIExpression()), !dbg !2582
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2583
  ret i8* %3, !dbg !2584
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2585 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2589, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8* %1, metadata !2590, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i64 %2, metadata !2591, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2592, metadata !DIExpression()), !dbg !2604
  %5 = tail call i32* @__errno_location() #24, !dbg !2605
  %6 = load i32, i32* %5, align 4, !dbg !2605, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %6, metadata !2593, metadata !DIExpression()), !dbg !2604
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2606, !tbaa !1138
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2594, metadata !DIExpression()), !dbg !2604
  %8 = icmp slt i32 %0, 0, !dbg !2607
  br i1 %8, label %9, label %10, !dbg !2609

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2610
  unreachable, !dbg !2610

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2611, !tbaa !1296
  %12 = icmp sgt i32 %11, %0, !dbg !2612
  br i1 %12, label %34, label %13, !dbg !2613

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2614
  call void @llvm.dbg.value(metadata i1 %14, metadata !2595, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2598, metadata !DIExpression()), !dbg !2615
  %15 = icmp eq i32 %0, 2147483647, !dbg !2616
  br i1 %15, label %16, label %17, !dbg !2618

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2619
  unreachable, !dbg !2619

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2620
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2620
  %20 = add nuw nsw i32 %0, 1, !dbg !2621
  %21 = sext i32 %20 to i64, !dbg !2622
  %22 = shl nuw nsw i64 %21, 4, !dbg !2623
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2624
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2624
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2594, metadata !DIExpression()), !dbg !2604
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2625, !tbaa !1138
  br i1 %14, label %25, label %26, !dbg !2626

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2627, !tbaa.struct !2629
  br label %26, !dbg !2630

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2631, !tbaa !1296
  %28 = sext i32 %27 to i64, !dbg !2632
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2632
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2633
  %31 = sub nsw i32 %20, %27, !dbg !2634
  %32 = sext i32 %31 to i64, !dbg !2635
  %33 = shl nsw i64 %32, 4, !dbg !2636
  call void @llvm.dbg.value(metadata i8* %30, metadata !2032, metadata !DIExpression()) #18, !dbg !2637
  call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()) #18, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %33, metadata !2039, metadata !DIExpression()) #18, !dbg !2637
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2639
  store i32 %20, i32* @nslots, align 4, !dbg !2640, !tbaa !1296
  br label %34, !dbg !2641

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2604
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2594, metadata !DIExpression()), !dbg !2604
  %36 = zext i32 %0 to i64, !dbg !2642
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2643
  %38 = load i64, i64* %37, align 8, !dbg !2643, !tbaa !2565
  call void @llvm.dbg.value(metadata i64 %38, metadata !2599, metadata !DIExpression()), !dbg !2644
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2645
  %40 = load i8*, i8** %39, align 8, !dbg !2645, !tbaa !2552
  call void @llvm.dbg.value(metadata i8* %40, metadata !2601, metadata !DIExpression()), !dbg !2644
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2646
  %42 = load i32, i32* %41, align 4, !dbg !2646, !tbaa !1684
  %43 = or i32 %42, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %43, metadata !2602, metadata !DIExpression()), !dbg !2644
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2648
  %45 = load i32, i32* %44, align 8, !dbg !2648, !tbaa !1632
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2649
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2650
  %48 = load i8*, i8** %47, align 8, !dbg !2650, !tbaa !1707
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2651
  %50 = load i8*, i8** %49, align 8, !dbg !2651, !tbaa !1710
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2652
  call void @llvm.dbg.value(metadata i64 %51, metadata !2603, metadata !DIExpression()), !dbg !2644
  %52 = icmp ugt i64 %38, %51, !dbg !2653
  br i1 %52, label %63, label %53, !dbg !2655

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %54, metadata !2599, metadata !DIExpression()), !dbg !2644
  store i64 %54, i64* %37, align 8, !dbg !2658, !tbaa !2565
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2659
  br i1 %55, label %57, label %56, !dbg !2661

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2662
  br label %57, !dbg !2662

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2499, metadata !DIExpression()) #18, !dbg !2663
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2665
  call void @llvm.dbg.value(metadata i8* %58, metadata !2601, metadata !DIExpression()), !dbg !2644
  store i8* %58, i8** %39, align 8, !dbg !2666, !tbaa !2552
  %59 = load i32, i32* %44, align 8, !dbg !2667, !tbaa !1632
  %60 = load i8*, i8** %47, align 8, !dbg !2668, !tbaa !1707
  %61 = load i8*, i8** %49, align 8, !dbg !2669, !tbaa !1710
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2670
  br label %63, !dbg !2671

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2644
  call void @llvm.dbg.value(metadata i8* %64, metadata !2601, metadata !DIExpression()), !dbg !2644
  store i32 %6, i32* %5, align 4, !dbg !2672, !tbaa !1296
  ret i8* %64, !dbg !2673
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2674 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8* %1, metadata !2679, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %2, metadata !2680, metadata !DIExpression()), !dbg !2681
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2682
  ret i8* %4, !dbg !2683
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2684 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i32 0, metadata !2580, metadata !DIExpression()) #18, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %0, metadata !2581, metadata !DIExpression()) #18, !dbg !2688
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2690
  ret i8* %2, !dbg !2691
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2692 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2696, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 %1, metadata !2697, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 0, metadata !2678, metadata !DIExpression()) #18, !dbg !2699
  call void @llvm.dbg.value(metadata i8* %0, metadata !2679, metadata !DIExpression()) #18, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()) #18, !dbg !2699
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2701
  ret i8* %3, !dbg !2702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2703 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 %1, metadata !2706, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8* %2, metadata !2707, metadata !DIExpression()), !dbg !2709
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32 %1, metadata !2712, metadata !DIExpression()) #18, !dbg !2718
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2717, metadata !DIExpression()) #18, !dbg !2720
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2720, !alias.scope !2721
  %6 = icmp eq i32 %1, 10, !dbg !2724
  br i1 %6, label %7, label %8, !dbg !2726

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2727, !noalias !2721
  unreachable, !dbg !2727

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2728
  store i32 %1, i32* %9, align 8, !dbg !2729, !tbaa !1632, !alias.scope !2721
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2730
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2731
  ret i8* %10, !dbg !2732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2733 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2737, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 %1, metadata !2738, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8* %2, metadata !2739, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 %3, metadata !2740, metadata !DIExpression()), !dbg !2742
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2743
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2743
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2741, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 %1, metadata !2712, metadata !DIExpression()) #18, !dbg !2745
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2717, metadata !DIExpression()) #18, !dbg !2747
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2747, !alias.scope !2748
  %7 = icmp eq i32 %1, 10, !dbg !2751
  br i1 %7, label %8, label %9, !dbg !2752

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2753, !noalias !2748
  unreachable, !dbg !2753

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2754
  store i32 %1, i32* %10, align 8, !dbg !2755, !tbaa !1632, !alias.scope !2748
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2756
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2757
  ret i8* %11, !dbg !2758
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2759 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2717, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2708, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %0, metadata !2761, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %1, metadata !2762, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2705, metadata !DIExpression()) #18, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %0, metadata !2706, metadata !DIExpression()) #18, !dbg !2768
  call void @llvm.dbg.value(metadata i8* %1, metadata !2707, metadata !DIExpression()) #18, !dbg !2768
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2769
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2769
  call void @llvm.dbg.value(metadata i32 %0, metadata !2712, metadata !DIExpression()) #18, !dbg !2770
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2763, !alias.scope !2771
  %5 = icmp eq i32 %0, 10, !dbg !2774
  br i1 %5, label %6, label %7, !dbg !2775

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2776, !noalias !2771
  unreachable, !dbg !2776

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2777
  store i32 %0, i32* %8, align 8, !dbg !2778, !tbaa !1632, !alias.scope !2771
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2779
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2780
  ret i8* %9, !dbg !2781
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2782 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2717, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2741, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 %0, metadata !2786, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8* %1, metadata !2787, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %2, metadata !2788, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()) #18, !dbg !2794
  call void @llvm.dbg.value(metadata i32 %0, metadata !2738, metadata !DIExpression()) #18, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %1, metadata !2739, metadata !DIExpression()) #18, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %2, metadata !2740, metadata !DIExpression()) #18, !dbg !2794
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %0, metadata !2712, metadata !DIExpression()) #18, !dbg !2796
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2789, !alias.scope !2797
  %6 = icmp eq i32 %0, 10, !dbg !2800
  br i1 %6, label %7, label %8, !dbg !2801

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2802, !noalias !2797
  unreachable, !dbg !2802

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2803
  store i32 %0, i32* %9, align 8, !dbg !2804, !tbaa !1632, !alias.scope !2797
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2805
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2806
  ret i8* %10, !dbg !2807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2808 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2812, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %1, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8 %2, metadata !2814, metadata !DIExpression()), !dbg !2816
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2817
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2817
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2815, metadata !DIExpression()), !dbg !2818
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2819, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1650, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 %2, metadata !1651, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 1, metadata !1652, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8 %2, metadata !1653, metadata !DIExpression()), !dbg !2821
  %6 = lshr i8 %2, 5, !dbg !2823
  %7 = zext i8 %6 to i64, !dbg !2823
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2824
  call void @llvm.dbg.value(metadata i32* %8, metadata !1655, metadata !DIExpression()), !dbg !2821
  %9 = and i8 %2, 31, !dbg !2825
  %10 = zext i8 %9 to i32, !dbg !2825
  call void @llvm.dbg.value(metadata i32 %10, metadata !1657, metadata !DIExpression()), !dbg !2821
  %11 = load i32, i32* %8, align 4, !dbg !2826, !tbaa !1296
  %12 = lshr i32 %11, %10, !dbg !2827
  %13 = and i32 %12, 1, !dbg !2828
  call void @llvm.dbg.value(metadata i32 %13, metadata !1658, metadata !DIExpression()), !dbg !2821
  %14 = xor i32 %13, 1, !dbg !2829
  %15 = shl i32 %14, %10, !dbg !2830
  %16 = xor i32 %15, %11, !dbg !2831
  store i32 %16, i32* %8, align 4, !dbg !2831, !tbaa !1296
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2832
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2833
  ret i8* %17, !dbg !2834
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2835 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2815, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8 %1, metadata !2840, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %0, metadata !2812, metadata !DIExpression()) #18, !dbg !2844
  call void @llvm.dbg.value(metadata i64 -1, metadata !2813, metadata !DIExpression()) #18, !dbg !2844
  call void @llvm.dbg.value(metadata i8 %1, metadata !2814, metadata !DIExpression()) #18, !dbg !2844
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2845
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2846, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1650, metadata !DIExpression()) #18, !dbg !2847
  call void @llvm.dbg.value(metadata i8 %1, metadata !1651, metadata !DIExpression()) #18, !dbg !2847
  call void @llvm.dbg.value(metadata i32 1, metadata !1652, metadata !DIExpression()) #18, !dbg !2847
  call void @llvm.dbg.value(metadata i8 %1, metadata !1653, metadata !DIExpression()) #18, !dbg !2847
  %5 = lshr i8 %1, 5, !dbg !2849
  %6 = zext i8 %5 to i64, !dbg !2849
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2850
  call void @llvm.dbg.value(metadata i32* %7, metadata !1655, metadata !DIExpression()) #18, !dbg !2847
  %8 = and i8 %1, 31, !dbg !2851
  %9 = zext i8 %8 to i32, !dbg !2851
  call void @llvm.dbg.value(metadata i32 %9, metadata !1657, metadata !DIExpression()) #18, !dbg !2847
  %10 = load i32, i32* %7, align 4, !dbg !2852, !tbaa !1296
  %11 = lshr i32 %10, %9, !dbg !2853
  %12 = and i32 %11, 1, !dbg !2854
  call void @llvm.dbg.value(metadata i32 %12, metadata !1658, metadata !DIExpression()) #18, !dbg !2847
  %13 = xor i32 %12, 1, !dbg !2855
  %14 = shl i32 %13, %9, !dbg !2856
  %15 = xor i32 %14, %10, !dbg !2857
  store i32 %15, i32* %7, align 4, !dbg !2857, !tbaa !1296
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2858
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2859
  ret i8* %16, !dbg !2860
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2861 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2815, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %0, metadata !2863, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()) #18, !dbg !2868
  call void @llvm.dbg.value(metadata i8 58, metadata !2840, metadata !DIExpression()) #18, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %0, metadata !2812, metadata !DIExpression()) #18, !dbg !2869
  call void @llvm.dbg.value(metadata i64 -1, metadata !2813, metadata !DIExpression()) #18, !dbg !2869
  call void @llvm.dbg.value(metadata i8 58, metadata !2814, metadata !DIExpression()) #18, !dbg !2869
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2870
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2871, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1650, metadata !DIExpression()) #18, !dbg !2872
  call void @llvm.dbg.value(metadata i8 58, metadata !1651, metadata !DIExpression()) #18, !dbg !2872
  call void @llvm.dbg.value(metadata i32 1, metadata !1652, metadata !DIExpression()) #18, !dbg !2872
  call void @llvm.dbg.value(metadata i8 58, metadata !1653, metadata !DIExpression()) #18, !dbg !2872
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2874
  call void @llvm.dbg.value(metadata i32* %4, metadata !1655, metadata !DIExpression()) #18, !dbg !2872
  call void @llvm.dbg.value(metadata i32 26, metadata !1657, metadata !DIExpression()) #18, !dbg !2872
  %5 = load i32, i32* %4, align 4, !dbg !2875, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %5, metadata !1658, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2872
  %6 = or i32 %5, 67108864, !dbg !2876
  store i32 %6, i32* %4, align 4, !dbg !2876, !tbaa !1296
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2877
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2878
  ret i8* %7, !dbg !2879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2880 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2815, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8* %0, metadata !2882, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8* %0, metadata !2812, metadata !DIExpression()) #18, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %1, metadata !2813, metadata !DIExpression()) #18, !dbg !2887
  call void @llvm.dbg.value(metadata i8 58, metadata !2814, metadata !DIExpression()) #18, !dbg !2887
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2888
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2889, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1650, metadata !DIExpression()) #18, !dbg !2890
  call void @llvm.dbg.value(metadata i8 58, metadata !1651, metadata !DIExpression()) #18, !dbg !2890
  call void @llvm.dbg.value(metadata i32 1, metadata !1652, metadata !DIExpression()) #18, !dbg !2890
  call void @llvm.dbg.value(metadata i8 58, metadata !1653, metadata !DIExpression()) #18, !dbg !2890
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2892
  call void @llvm.dbg.value(metadata i32* %5, metadata !1655, metadata !DIExpression()) #18, !dbg !2890
  call void @llvm.dbg.value(metadata i32 26, metadata !1657, metadata !DIExpression()) #18, !dbg !2890
  %6 = load i32, i32* %5, align 4, !dbg !2893, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %6, metadata !1658, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2890
  %7 = or i32 %6, 67108864, !dbg !2894
  store i32 %7, i32* %5, align 4, !dbg !2894, !tbaa !1296
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2896
  ret i8* %8, !dbg !2897
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2898 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2717, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %0, metadata !2900, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %1, metadata !2901, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %2, metadata !2902, metadata !DIExpression()), !dbg !2906
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2907
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2907
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2903, metadata !DIExpression()), !dbg !2908
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2909
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2909
  call void @llvm.dbg.value(metadata i32 %1, metadata !2712, metadata !DIExpression()) #18, !dbg !2910
  call void @llvm.dbg.value(metadata i32 0, metadata !2717, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2910
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2904, !alias.scope !2911
  %8 = icmp eq i32 %1, 10, !dbg !2914
  br i1 %8, label %9, label %10, !dbg !2915

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2916, !noalias !2911
  unreachable, !dbg !2916

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2717, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2910
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2909
  store i32 %1, i32* %11, align 8, !dbg !2909, !tbaa.struct !2820
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2909
  %13 = bitcast i32* %12 to i8*, !dbg !2909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2909, !tbaa.struct !2820
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1650, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8 58, metadata !1651, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 1, metadata !1652, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i8 58, metadata !1653, metadata !DIExpression()), !dbg !2917
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2919
  call void @llvm.dbg.value(metadata i32* %14, metadata !1655, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 26, metadata !1657, metadata !DIExpression()), !dbg !2917
  %15 = load i32, i32* %14, align 4, !dbg !2920, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %15, metadata !1658, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2917
  %16 = or i32 %15, 67108864, !dbg !2921
  store i32 %16, i32* %14, align 4, !dbg !2921, !tbaa !1296
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2922
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2923
  ret i8* %17, !dbg !2924
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2925 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2933, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i32 %0, metadata !2929, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %1, metadata !2930, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %2, metadata !2931, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %3, metadata !2932, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 %0, metadata !2938, metadata !DIExpression()) #18, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %1, metadata !2939, metadata !DIExpression()) #18, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %2, metadata !2940, metadata !DIExpression()) #18, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %3, metadata !2941, metadata !DIExpression()) #18, !dbg !2946
  call void @llvm.dbg.value(metadata i64 -1, metadata !2942, metadata !DIExpression()) #18, !dbg !2946
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2947
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2947
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2948, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()) #18, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %1, metadata !1692, metadata !DIExpression()) #18, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %2, metadata !1693, metadata !DIExpression()) #18, !dbg !2949
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()) #18, !dbg !2949
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2951
  store i32 10, i32* %7, align 8, !dbg !2952, !tbaa !1632
  %8 = icmp ne i8* %1, null, !dbg !2953
  %9 = icmp ne i8* %2, null, !dbg !2954
  %10 = and i1 %8, %9, !dbg !2955
  br i1 %10, label %12, label %11, !dbg !2955

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2956
  unreachable, !dbg !2956

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2957
  store i8* %1, i8** %13, align 8, !dbg !2958, !tbaa !1707
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2959
  store i8* %2, i8** %14, align 8, !dbg !2960, !tbaa !1710
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !2961
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2962
  ret i8* %15, !dbg !2963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2934 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2938, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %1, metadata !2939, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %2, metadata !2940, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i8* %3, metadata !2941, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %4, metadata !2942, metadata !DIExpression()), !dbg !2964
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2965
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2965
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2933, metadata !DIExpression()), !dbg !2966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2967, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1691, metadata !DIExpression()) #18, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %1, metadata !1692, metadata !DIExpression()) #18, !dbg !2968
  call void @llvm.dbg.value(metadata i8* %2, metadata !1693, metadata !DIExpression()) #18, !dbg !2968
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1691, metadata !DIExpression()) #18, !dbg !2968
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2970
  store i32 10, i32* %8, align 8, !dbg !2971, !tbaa !1632
  %9 = icmp ne i8* %1, null, !dbg !2972
  %10 = icmp ne i8* %2, null, !dbg !2973
  %11 = and i1 %9, %10, !dbg !2974
  br i1 %11, label %13, label %12, !dbg !2974

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2975
  unreachable, !dbg !2975

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2976
  store i8* %1, i8** %14, align 8, !dbg !2977, !tbaa !1707
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2978
  store i8* %2, i8** %15, align 8, !dbg !2979, !tbaa !1710
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2980
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2981
  ret i8* %16, !dbg !2982
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2983 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2933, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i8* %0, metadata !2987, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %1, metadata !2988, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %2, metadata !2989, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i32 0, metadata !2929, metadata !DIExpression()) #18, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %0, metadata !2930, metadata !DIExpression()) #18, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %1, metadata !2931, metadata !DIExpression()) #18, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %2, metadata !2932, metadata !DIExpression()) #18, !dbg !2994
  call void @llvm.dbg.value(metadata i32 0, metadata !2938, metadata !DIExpression()) #18, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %0, metadata !2939, metadata !DIExpression()) #18, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %1, metadata !2940, metadata !DIExpression()) #18, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %2, metadata !2941, metadata !DIExpression()) #18, !dbg !2995
  call void @llvm.dbg.value(metadata i64 -1, metadata !2942, metadata !DIExpression()) #18, !dbg !2995
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2996
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2996
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2997, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1691, metadata !DIExpression()) #18, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()) #18, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %1, metadata !1693, metadata !DIExpression()) #18, !dbg !2998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1691, metadata !DIExpression()) #18, !dbg !2998
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3000
  store i32 10, i32* %6, align 8, !dbg !3001, !tbaa !1632
  %7 = icmp ne i8* %0, null, !dbg !3002
  %8 = icmp ne i8* %1, null, !dbg !3003
  %9 = and i1 %7, %8, !dbg !3004
  br i1 %9, label %11, label %10, !dbg !3004

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3005
  unreachable, !dbg !3005

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3006
  store i8* %0, i8** %12, align 8, !dbg !3007, !tbaa !1707
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3008
  store i8* %1, i8** %13, align 8, !dbg !3009, !tbaa !1710
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3010
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3011
  ret i8* %14, !dbg !3012
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3013 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2933, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i8* %0, metadata !3017, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %1, metadata !3018, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8* %2, metadata !3019, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 %3, metadata !3020, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i32 0, metadata !2938, metadata !DIExpression()) #18, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %0, metadata !2939, metadata !DIExpression()) #18, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %1, metadata !2940, metadata !DIExpression()) #18, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %2, metadata !2941, metadata !DIExpression()) #18, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %3, metadata !2942, metadata !DIExpression()) #18, !dbg !3024
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3025
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3026, !tbaa.struct !2820
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()) #18, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()) #18, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %1, metadata !1693, metadata !DIExpression()) #18, !dbg !3027
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1691, metadata !DIExpression()) #18, !dbg !3027
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3029
  store i32 10, i32* %7, align 8, !dbg !3030, !tbaa !1632
  %8 = icmp ne i8* %0, null, !dbg !3031
  %9 = icmp ne i8* %1, null, !dbg !3032
  %10 = and i1 %8, %9, !dbg !3033
  br i1 %10, label %12, label %11, !dbg !3033

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3034
  unreachable, !dbg !3034

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3035
  store i8* %0, i8** %13, align 8, !dbg !3036, !tbaa !1707
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3037
  store i8* %1, i8** %14, align 8, !dbg !3038, !tbaa !1710
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3039
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3040
  ret i8* %15, !dbg !3041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3042 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3046, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i8* %1, metadata !3047, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %2, metadata !3048, metadata !DIExpression()), !dbg !3049
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3050
  ret i8* %4, !dbg !3051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3052 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %1, metadata !3057, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 0, metadata !3046, metadata !DIExpression()) #18, !dbg !3059
  call void @llvm.dbg.value(metadata i8* %0, metadata !3047, metadata !DIExpression()) #18, !dbg !3059
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()) #18, !dbg !3059
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3061
  ret i8* %3, !dbg !3062
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3063 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3067, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i8* %1, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i32 %0, metadata !3046, metadata !DIExpression()) #18, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %1, metadata !3047, metadata !DIExpression()) #18, !dbg !3070
  call void @llvm.dbg.value(metadata i64 -1, metadata !3048, metadata !DIExpression()) #18, !dbg !3070
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3072
  ret i8* %3, !dbg !3073
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3074 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3076, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 0, metadata !3067, metadata !DIExpression()) #18, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()) #18, !dbg !3078
  call void @llvm.dbg.value(metadata i32 0, metadata !3046, metadata !DIExpression()) #18, !dbg !3080
  call void @llvm.dbg.value(metadata i8* %0, metadata !3047, metadata !DIExpression()) #18, !dbg !3080
  call void @llvm.dbg.value(metadata i64 -1, metadata !3048, metadata !DIExpression()) #18, !dbg !3080
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3082
  ret i8* %2, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3084 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3092, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %1, metadata !3093, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %2, metadata !3094, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8* %3, metadata !3095, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8** %4, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %5, metadata !3097, metadata !DIExpression()), !dbg !3098
  %7 = icmp eq i8* %1, null, !dbg !3099
  br i1 %7, label %10, label %8, !dbg !3101

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3102
  br label %12, !dbg !3102

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.88, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3103
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.89, i64 0, i64 0), i32 5) #18, !dbg !3104
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3104
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.90, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3105
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.91, i64 0, i64 0), i32 5) #18, !dbg !3106
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.92, i64 0, i64 0)) #18, !dbg !3106
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.90, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3107
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
  ], !dbg !3108

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.93, i64 0, i64 0), i32 5) #18, !dbg !3109
  %21 = load i8*, i8** %4, align 8, !dbg !3109, !tbaa !1138
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3109
  br label %147, !dbg !3111

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.94, i64 0, i64 0), i32 5) #18, !dbg !3112
  %25 = load i8*, i8** %4, align 8, !dbg !3112, !tbaa !1138
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3112
  %27 = load i8*, i8** %26, align 8, !dbg !3112, !tbaa !1138
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3112
  br label %147, !dbg !3113

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.95, i64 0, i64 0), i32 5) #18, !dbg !3114
  %31 = load i8*, i8** %4, align 8, !dbg !3114, !tbaa !1138
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3114
  %33 = load i8*, i8** %32, align 8, !dbg !3114, !tbaa !1138
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3114
  %35 = load i8*, i8** %34, align 8, !dbg !3114, !tbaa !1138
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3114
  br label %147, !dbg !3115

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.96, i64 0, i64 0), i32 5) #18, !dbg !3116
  %39 = load i8*, i8** %4, align 8, !dbg !3116, !tbaa !1138
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3116
  %41 = load i8*, i8** %40, align 8, !dbg !3116, !tbaa !1138
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3116
  %43 = load i8*, i8** %42, align 8, !dbg !3116, !tbaa !1138
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3116
  %45 = load i8*, i8** %44, align 8, !dbg !3116, !tbaa !1138
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3116
  br label %147, !dbg !3117

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.97, i64 0, i64 0), i32 5) #18, !dbg !3118
  %49 = load i8*, i8** %4, align 8, !dbg !3118, !tbaa !1138
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3118
  %51 = load i8*, i8** %50, align 8, !dbg !3118, !tbaa !1138
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3118
  %53 = load i8*, i8** %52, align 8, !dbg !3118, !tbaa !1138
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3118
  %55 = load i8*, i8** %54, align 8, !dbg !3118, !tbaa !1138
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3118
  %57 = load i8*, i8** %56, align 8, !dbg !3118, !tbaa !1138
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3118
  br label %147, !dbg !3119

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.98, i64 0, i64 0), i32 5) #18, !dbg !3120
  %61 = load i8*, i8** %4, align 8, !dbg !3120, !tbaa !1138
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3120
  %63 = load i8*, i8** %62, align 8, !dbg !3120, !tbaa !1138
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3120
  %65 = load i8*, i8** %64, align 8, !dbg !3120, !tbaa !1138
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3120
  %67 = load i8*, i8** %66, align 8, !dbg !3120, !tbaa !1138
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3120
  %69 = load i8*, i8** %68, align 8, !dbg !3120, !tbaa !1138
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3120
  %71 = load i8*, i8** %70, align 8, !dbg !3120, !tbaa !1138
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3120
  br label %147, !dbg !3121

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.99, i64 0, i64 0), i32 5) #18, !dbg !3122
  %75 = load i8*, i8** %4, align 8, !dbg !3122, !tbaa !1138
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3122
  %77 = load i8*, i8** %76, align 8, !dbg !3122, !tbaa !1138
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3122
  %79 = load i8*, i8** %78, align 8, !dbg !3122, !tbaa !1138
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3122
  %81 = load i8*, i8** %80, align 8, !dbg !3122, !tbaa !1138
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3122
  %83 = load i8*, i8** %82, align 8, !dbg !3122, !tbaa !1138
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3122
  %85 = load i8*, i8** %84, align 8, !dbg !3122, !tbaa !1138
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3122
  %87 = load i8*, i8** %86, align 8, !dbg !3122, !tbaa !1138
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3122
  br label %147, !dbg !3123

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.100, i64 0, i64 0), i32 5) #18, !dbg !3124
  %91 = load i8*, i8** %4, align 8, !dbg !3124, !tbaa !1138
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3124
  %93 = load i8*, i8** %92, align 8, !dbg !3124, !tbaa !1138
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3124
  %95 = load i8*, i8** %94, align 8, !dbg !3124, !tbaa !1138
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3124
  %97 = load i8*, i8** %96, align 8, !dbg !3124, !tbaa !1138
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3124
  %99 = load i8*, i8** %98, align 8, !dbg !3124, !tbaa !1138
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3124
  %101 = load i8*, i8** %100, align 8, !dbg !3124, !tbaa !1138
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3124
  %103 = load i8*, i8** %102, align 8, !dbg !3124, !tbaa !1138
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3124
  %105 = load i8*, i8** %104, align 8, !dbg !3124, !tbaa !1138
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3124
  br label %147, !dbg !3125

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.101, i64 0, i64 0), i32 5) #18, !dbg !3126
  %109 = load i8*, i8** %4, align 8, !dbg !3126, !tbaa !1138
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3126
  %111 = load i8*, i8** %110, align 8, !dbg !3126, !tbaa !1138
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3126
  %113 = load i8*, i8** %112, align 8, !dbg !3126, !tbaa !1138
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3126
  %115 = load i8*, i8** %114, align 8, !dbg !3126, !tbaa !1138
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3126
  %117 = load i8*, i8** %116, align 8, !dbg !3126, !tbaa !1138
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3126
  %119 = load i8*, i8** %118, align 8, !dbg !3126, !tbaa !1138
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3126
  %121 = load i8*, i8** %120, align 8, !dbg !3126, !tbaa !1138
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3126
  %123 = load i8*, i8** %122, align 8, !dbg !3126, !tbaa !1138
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3126
  %125 = load i8*, i8** %124, align 8, !dbg !3126, !tbaa !1138
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3126
  br label %147, !dbg !3127

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.102, i64 0, i64 0), i32 5) #18, !dbg !3128
  %129 = load i8*, i8** %4, align 8, !dbg !3128, !tbaa !1138
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3128
  %131 = load i8*, i8** %130, align 8, !dbg !3128, !tbaa !1138
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3128
  %133 = load i8*, i8** %132, align 8, !dbg !3128, !tbaa !1138
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3128
  %135 = load i8*, i8** %134, align 8, !dbg !3128, !tbaa !1138
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3128
  %137 = load i8*, i8** %136, align 8, !dbg !3128, !tbaa !1138
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3128
  %139 = load i8*, i8** %138, align 8, !dbg !3128, !tbaa !1138
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3128
  %141 = load i8*, i8** %140, align 8, !dbg !3128, !tbaa !1138
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3128
  %143 = load i8*, i8** %142, align 8, !dbg !3128, !tbaa !1138
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3128
  %145 = load i8*, i8** %144, align 8, !dbg !3128, !tbaa !1138
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3128
  br label %147, !dbg !3129

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3131 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3135, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %2, metadata !3137, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8* %3, metadata !3138, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8** %4, metadata !3139, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 0, metadata !3140, metadata !DIExpression()), !dbg !3141
  br label %6, !dbg !3142

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3144
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3145
  %9 = load i8*, i8** %8, align 8, !dbg !3145, !tbaa !1138
  %10 = icmp eq i8* %9, null, !dbg !3147
  %11 = add i64 %7, 1, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %11, metadata !3140, metadata !DIExpression()), !dbg !3141
  br i1 %10, label %12, label %6, !dbg !3147, !llvm.loop !3149

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %7, metadata !3140, metadata !DIExpression()), !dbg !3141
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3151
  ret void, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3153 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3164, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !3165, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %2, metadata !3166, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %3, metadata !3167, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3168, metadata !DIExpression()), !dbg !3172
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3173
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3173
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3170, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 0, metadata !3169, metadata !DIExpression()), !dbg !3172
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3175
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3175
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3175
  %11 = load i32, i32* %8, align 8, !dbg !3178
  %12 = icmp ult i32 %11, 41, !dbg !3178
  br i1 %12, label %13, label %18, !dbg !3178

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3178
  %15 = zext i32 %11 to i64, !dbg !3178
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3178
  %17 = add nuw nsw i32 %11, 8, !dbg !3178
  store i32 %17, i32* %8, align 8, !dbg !3178
  br label %21, !dbg !3178

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3178
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3178
  store i8* %20, i8** %9, align 8, !dbg !3178
  br label %21, !dbg !3178

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3178
  %25 = load i8*, i8** %24, align 8, !dbg !3178
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3179
  store i8* %25, i8** %26, align 16, !dbg !3180, !tbaa !1138
  %27 = icmp eq i8* %25, null, !dbg !3181
  br i1 %27, label %30, label %28, !dbg !3182

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3169, metadata !DIExpression()), !dbg !3172
  %29 = icmp ult i32 %22, 41, !dbg !3178
  br i1 %29, label %35, label %32, !dbg !3178

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3183
  call void @llvm.dbg.value(metadata i64 %31, metadata !3169, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64 %31, metadata !3169, metadata !DIExpression()), !dbg !3172
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3184
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3185
  ret void, !dbg !3185

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3178
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3178
  store i8* %34, i8** %9, align 8, !dbg !3178
  br label %40, !dbg !3178

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3178
  %37 = zext i32 %22 to i64, !dbg !3178
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3178
  %39 = add nuw nsw i32 %22, 8, !dbg !3178
  store i32 %39, i32* %8, align 8, !dbg !3178
  br label %40, !dbg !3178

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3178
  %44 = load i8*, i8** %43, align 8, !dbg !3178
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3179
  store i8* %44, i8** %45, align 8, !dbg !3180, !tbaa !1138
  %46 = icmp eq i8* %44, null, !dbg !3181
  br i1 %46, label %30, label %47, !dbg !3182

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3169, metadata !DIExpression()), !dbg !3172
  %48 = icmp ult i32 %41, 41, !dbg !3178
  br i1 %48, label %52, label %49, !dbg !3178

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3178
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3178
  store i8* %51, i8** %9, align 8, !dbg !3178
  br label %57, !dbg !3178

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3178
  %54 = zext i32 %41 to i64, !dbg !3178
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3178
  %56 = add nuw nsw i32 %41, 8, !dbg !3178
  store i32 %56, i32* %8, align 8, !dbg !3178
  br label %57, !dbg !3178

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3178
  %61 = load i8*, i8** %60, align 8, !dbg !3178
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3179
  store i8* %61, i8** %62, align 16, !dbg !3180, !tbaa !1138
  %63 = icmp eq i8* %61, null, !dbg !3181
  br i1 %63, label %30, label %64, !dbg !3182

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3169, metadata !DIExpression()), !dbg !3172
  %65 = icmp ult i32 %58, 41, !dbg !3178
  br i1 %65, label %69, label %66, !dbg !3178

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3178
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3178
  store i8* %68, i8** %9, align 8, !dbg !3178
  br label %74, !dbg !3178

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3178
  %71 = zext i32 %58 to i64, !dbg !3178
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3178
  %73 = add nuw nsw i32 %58, 8, !dbg !3178
  store i32 %73, i32* %8, align 8, !dbg !3178
  br label %74, !dbg !3178

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3178
  %78 = load i8*, i8** %77, align 8, !dbg !3178
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3179
  store i8* %78, i8** %79, align 8, !dbg !3180, !tbaa !1138
  %80 = icmp eq i8* %78, null, !dbg !3181
  br i1 %80, label %30, label %81, !dbg !3182

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3169, metadata !DIExpression()), !dbg !3172
  %82 = icmp ult i32 %75, 41, !dbg !3178
  br i1 %82, label %86, label %83, !dbg !3178

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3178
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3178
  store i8* %85, i8** %9, align 8, !dbg !3178
  br label %91, !dbg !3178

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3178
  %88 = zext i32 %75 to i64, !dbg !3178
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3178
  %90 = add nuw nsw i32 %75, 8, !dbg !3178
  store i32 %90, i32* %8, align 8, !dbg !3178
  br label %91, !dbg !3178

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3178
  %95 = load i8*, i8** %94, align 8, !dbg !3178
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3179
  store i8* %95, i8** %96, align 16, !dbg !3180, !tbaa !1138
  %97 = icmp eq i8* %95, null, !dbg !3181
  br i1 %97, label %30, label %98, !dbg !3182

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3169, metadata !DIExpression()), !dbg !3172
  %99 = icmp ult i32 %92, 41, !dbg !3178
  br i1 %99, label %103, label %100, !dbg !3178

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3178
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3178
  store i8* %102, i8** %9, align 8, !dbg !3178
  br label %108, !dbg !3178

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3178
  %105 = zext i32 %92 to i64, !dbg !3178
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3178
  %107 = add nuw nsw i32 %92, 8, !dbg !3178
  store i32 %107, i32* %8, align 8, !dbg !3178
  br label %108, !dbg !3178

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3178
  %111 = load i8*, i8** %110, align 8, !dbg !3178
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3179
  store i8* %111, i8** %112, align 8, !dbg !3180, !tbaa !1138
  %113 = icmp eq i8* %111, null, !dbg !3181
  br i1 %113, label %30, label %114, !dbg !3182

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3169, metadata !DIExpression()), !dbg !3172
  %115 = load i8*, i8** %9, align 8, !dbg !3178
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3178
  store i8* %116, i8** %9, align 8, !dbg !3178
  %117 = bitcast i8* %115 to i8**, !dbg !3178
  %118 = load i8*, i8** %117, align 8, !dbg !3178
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3179
  store i8* %118, i8** %119, align 16, !dbg !3180, !tbaa !1138
  %120 = icmp eq i8* %118, null, !dbg !3181
  br i1 %120, label %30, label %121, !dbg !3182

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3169, metadata !DIExpression()), !dbg !3172
  %122 = load i8*, i8** %9, align 8, !dbg !3178
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3178
  store i8* %123, i8** %9, align 8, !dbg !3178
  %124 = bitcast i8* %122 to i8**, !dbg !3178
  %125 = load i8*, i8** %124, align 8, !dbg !3178
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3179
  store i8* %125, i8** %126, align 8, !dbg !3180, !tbaa !1138
  %127 = icmp eq i8* %125, null, !dbg !3181
  br i1 %127, label %30, label %128, !dbg !3182

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3169, metadata !DIExpression()), !dbg !3172
  %129 = load i8*, i8** %9, align 8, !dbg !3178
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3178
  store i8* %130, i8** %9, align 8, !dbg !3178
  %131 = bitcast i8* %129 to i8**, !dbg !3178
  %132 = load i8*, i8** %131, align 8, !dbg !3178
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3179
  store i8* %132, i8** %133, align 16, !dbg !3180, !tbaa !1138
  %134 = icmp eq i8* %132, null, !dbg !3181
  br i1 %134, label %30, label %135, !dbg !3182

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3169, metadata !DIExpression()), !dbg !3172
  %136 = load i8*, i8** %9, align 8, !dbg !3178
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3178
  store i8* %137, i8** %9, align 8, !dbg !3178
  %138 = bitcast i8* %136 to i8**, !dbg !3178
  %139 = load i8*, i8** %138, align 8, !dbg !3178
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3179
  store i8* %139, i8** %140, align 8, !dbg !3180, !tbaa !1138
  %141 = icmp eq i8* %139, null, !dbg !3181
  %142 = select i1 %141, i64 9, i64 10, !dbg !3182
  br label %30, !dbg !3182
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3186 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3190, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %1, metadata !3191, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %2, metadata !3192, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i8* %3, metadata !3193, metadata !DIExpression()), !dbg !3200
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3201
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3201
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3194, metadata !DIExpression()), !dbg !3202
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3203
  call void @llvm.va_start(i8* nonnull %6), !dbg !3203
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3204
  call void @llvm.va_end(i8* nonnull %6), !dbg !3205
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3206
  ret void, !dbg !3206
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3207 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3208, !tbaa !1138
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.90, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3208
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.105, i64 0, i64 0), i32 5) #18, !dbg !3209
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.106, i64 0, i64 0)) #18, !dbg !3209
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.107, i64 0, i64 0), i32 5) #18, !dbg !3210
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.108, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.109, i64 0, i64 0)) #18, !dbg !3210
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.110, i64 0, i64 0), i32 5) #18, !dbg !3211
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.111, i64 0, i64 0)) #18, !dbg !3211
  ret void, !dbg !3212
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3213 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3217, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3219
  %3 = udiv i64 9223372036854775807, %1, !dbg !3220
  %4 = icmp ult i64 %3, %0, !dbg !3220
  br i1 %4, label %5, label %6, !dbg !3222

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3223
  unreachable, !dbg !3223

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %7, metadata !3225, metadata !DIExpression()) #18, !dbg !3231
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %8, metadata !3230, metadata !DIExpression()) #18, !dbg !3231
  %9 = icmp eq i8* %8, null, !dbg !3234
  %10 = icmp ne i64 %7, 0, !dbg !3236
  %11 = and i1 %10, %9, !dbg !3237
  br i1 %11, label %12, label %13, !dbg !3237

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3238
  unreachable, !dbg !3238

13:                                               ; preds = %6
  ret i8* %8, !dbg !3239
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3226 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()), !dbg !3240
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %2, metadata !3230, metadata !DIExpression()), !dbg !3240
  %3 = icmp eq i8* %2, null, !dbg !3242
  %4 = icmp ne i64 %0, 0, !dbg !3243
  %5 = and i1 %4, %3, !dbg !3244
  br i1 %5, label %6, label %7, !dbg !3244

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3245
  unreachable, !dbg !3245

7:                                                ; preds = %1
  ret i8* %2, !dbg !3246
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3247 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3251, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %2, metadata !3253, metadata !DIExpression()), !dbg !3254
  %4 = udiv i64 9223372036854775807, %2, !dbg !3255
  %5 = icmp ult i64 %4, %1, !dbg !3255
  br i1 %5, label %6, label %7, !dbg !3257

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3258
  unreachable, !dbg !3258

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3259
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #18, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %8, metadata !3265, metadata !DIExpression()) #18, !dbg !3266
  %9 = icmp eq i64 %8, 0, !dbg !3268
  %10 = icmp ne i8* %0, null, !dbg !3270
  %11 = and i1 %10, %9, !dbg !3271
  br i1 %11, label %12, label %13, !dbg !3271

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3272
  br label %19, !dbg !3274

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %14, metadata !3260, metadata !DIExpression()) #18, !dbg !3266
  %15 = icmp eq i8* %14, null, !dbg !3276
  %16 = icmp ne i64 %8, 0, !dbg !3278
  %17 = and i1 %16, %15, !dbg !3279
  br i1 %17, label %18, label %19, !dbg !3279

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3280
  unreachable, !dbg !3280

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3266
  ret i8* %20, !dbg !3281
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3261 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %1, metadata !3265, metadata !DIExpression()), !dbg !3282
  %3 = icmp eq i64 %1, 0, !dbg !3283
  %4 = icmp ne i8* %0, null, !dbg !3284
  %5 = and i1 %4, %3, !dbg !3285
  br i1 %5, label %6, label %7, !dbg !3285

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3286
  br label %13, !dbg !3287

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %8, metadata !3260, metadata !DIExpression()), !dbg !3282
  %9 = icmp eq i8* %8, null, !dbg !3289
  %10 = icmp ne i64 %1, 0, !dbg !3290
  %11 = and i1 %10, %9, !dbg !3291
  br i1 %11, label %12, label %13, !dbg !3291

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3292
  unreachable, !dbg !3292

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3282
  ret i8* %14, !dbg !3293
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !492 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !497, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64* %1, metadata !498, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %2, metadata !499, metadata !DIExpression()), !dbg !3294
  %4 = load i64, i64* %1, align 8, !dbg !3295, !tbaa !2536
  call void @llvm.dbg.value(metadata i64 %4, metadata !500, metadata !DIExpression()), !dbg !3294
  %5 = icmp eq i8* %0, null, !dbg !3296
  br i1 %5, label %6, label %20, !dbg !3298

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3299
  br i1 %7, label %8, label %13, !dbg !3302

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %9, metadata !500, metadata !DIExpression()), !dbg !3294
  %10 = icmp ugt i64 %2, 128, !dbg !3305
  %11 = zext i1 %10 to i64, !dbg !3305
  %12 = add nuw nsw i64 %9, %11, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %12, metadata !500, metadata !DIExpression()), !dbg !3294
  br label %13, !dbg !3307

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3294
  call void @llvm.dbg.value(metadata i64 %14, metadata !500, metadata !DIExpression()), !dbg !3294
  %15 = udiv i64 9223372036854775807, %2, !dbg !3308
  %16 = icmp ult i64 %15, %14, !dbg !3308
  br i1 %16, label %19, label %17, !dbg !3310

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !500, metadata !DIExpression()), !dbg !3294
  store i64 %14, i64* %1, align 8, !dbg !3311, !tbaa !2536
  %18 = mul i64 %14, %2, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #18, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %28, metadata !3265, metadata !DIExpression()) #18, !dbg !3313
  br label %31, !dbg !3315

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3316
  unreachable, !dbg !3316

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3317
  %22 = icmp ugt i64 %21, %4, !dbg !3320
  br i1 %22, label %24, label %23, !dbg !3321

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3322
  unreachable, !dbg !3322

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3323
  %26 = add nuw i64 %4, 1, !dbg !3324
  %27 = add i64 %26, %25, !dbg !3325
  call void @llvm.dbg.value(metadata i64 %27, metadata !500, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %27, metadata !500, metadata !DIExpression()), !dbg !3294
  store i64 %27, i64* %1, align 8, !dbg !3311, !tbaa !2536
  %28 = mul i64 %27, %2, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #18, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %28, metadata !3265, metadata !DIExpression()) #18, !dbg !3313
  %29 = icmp eq i64 %28, 0, !dbg !3326
  br i1 %29, label %30, label %31, !dbg !3315

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3327
  br label %38, !dbg !3328

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3329
  call void @llvm.dbg.value(metadata i8* %33, metadata !3260, metadata !DIExpression()) #18, !dbg !3313
  %34 = icmp eq i8* %33, null, !dbg !3330
  %35 = icmp ne i64 %32, 0, !dbg !3331
  %36 = and i1 %35, %34, !dbg !3332
  br i1 %36, label %37, label %38, !dbg !3332

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3333
  unreachable, !dbg !3333

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3313
  ret i8* %39, !dbg !3334
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3335 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()) #18, !dbg !3339
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3341
  call void @llvm.dbg.value(metadata i8* %2, metadata !3230, metadata !DIExpression()) #18, !dbg !3339
  %3 = icmp eq i8* %2, null, !dbg !3342
  %4 = icmp ne i64 %0, 0, !dbg !3343
  %5 = and i1 %4, %3, !dbg !3344
  br i1 %5, label %6, label %7, !dbg !3344

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3345
  unreachable, !dbg !3345

7:                                                ; preds = %1
  ret i8* %2, !dbg !3346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64* %1, metadata !3352, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i8* %0, metadata !497, metadata !DIExpression()) #18, !dbg !3354
  call void @llvm.dbg.value(metadata i64* %1, metadata !498, metadata !DIExpression()) #18, !dbg !3354
  call void @llvm.dbg.value(metadata i64 1, metadata !499, metadata !DIExpression()) #18, !dbg !3354
  %3 = load i64, i64* %1, align 8, !dbg !3356, !tbaa !2536
  call void @llvm.dbg.value(metadata i64 %3, metadata !500, metadata !DIExpression()) #18, !dbg !3354
  %4 = icmp eq i8* %0, null, !dbg !3357
  br i1 %4, label %5, label %12, !dbg !3358

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3359
  br i1 %6, label %9, label %7, !dbg !3360

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !500, metadata !DIExpression()) #18, !dbg !3354
  %8 = icmp slt i64 %3, 0, !dbg !3361
  br i1 %8, label %11, label %9, !dbg !3362

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !500, metadata !DIExpression()) #18, !dbg !3354
  store i64 %10, i64* %1, align 8, !dbg !3363, !tbaa !2536
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #18, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %18, metadata !3265, metadata !DIExpression()) #18, !dbg !3364
  br label %21, !dbg !3366

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3367
  unreachable, !dbg !3367

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3368
  br i1 %13, label %15, label %14, !dbg !3369

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3370
  unreachable, !dbg !3370

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3371
  %17 = add nuw nsw i64 %3, 1, !dbg !3372
  %18 = add nuw nsw i64 %17, %16, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %18, metadata !500, metadata !DIExpression()) #18, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %18, metadata !500, metadata !DIExpression()) #18, !dbg !3354
  store i64 %18, i64* %1, align 8, !dbg !3363, !tbaa !2536
  call void @llvm.dbg.value(metadata i8* %0, metadata !3260, metadata !DIExpression()) #18, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %18, metadata !3265, metadata !DIExpression()) #18, !dbg !3364
  %19 = icmp eq i64 %18, 0, !dbg !3374
  br i1 %19, label %20, label %21, !dbg !3366

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3375
  br label %28, !dbg !3376

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %23, metadata !3260, metadata !DIExpression()) #18, !dbg !3364
  %24 = icmp eq i8* %23, null, !dbg !3378
  %25 = icmp ne i64 %22, 0, !dbg !3379
  %26 = and i1 %25, %24, !dbg !3380
  br i1 %26, label %27, label %28, !dbg !3380

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3381
  unreachable, !dbg !3381

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3364
  ret i8* %29, !dbg !3382
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3383 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3385, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %0, metadata !3387, metadata !DIExpression()) #18, !dbg !3392
  call void @llvm.dbg.value(metadata i64 1, metadata !3390, metadata !DIExpression()) #18, !dbg !3392
  %2 = icmp slt i64 %0, 0, !dbg !3394
  br i1 %2, label %6, label %3, !dbg !3396

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %4, metadata !3391, metadata !DIExpression()) #18, !dbg !3392
  %5 = icmp eq i8* %4, null, !dbg !3398
  br i1 %5, label %6, label %7, !dbg !3399

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3400
  unreachable, !dbg !3400

7:                                                ; preds = %3
  ret i8* %4, !dbg !3401
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3388 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3387, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %1, metadata !3390, metadata !DIExpression()), !dbg !3402
  %3 = udiv i64 9223372036854775807, %1, !dbg !3403
  %4 = icmp ult i64 %3, %0, !dbg !3403
  br i1 %4, label %8, label %5, !dbg !3404

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %6, metadata !3391, metadata !DIExpression()), !dbg !3402
  %7 = icmp eq i8* %6, null, !dbg !3406
  br i1 %7, label %8, label %9, !dbg !3407

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3408
  unreachable, !dbg !3408

9:                                                ; preds = %5
  ret i8* %6, !dbg !3409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3410 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %1, metadata !3415, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()) #18, !dbg !3417
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3419
  call void @llvm.dbg.value(metadata i8* %3, metadata !3230, metadata !DIExpression()) #18, !dbg !3417
  %4 = icmp eq i8* %3, null, !dbg !3420
  %5 = icmp ne i64 %1, 0, !dbg !3421
  %6 = and i1 %5, %4, !dbg !3422
  br i1 %6, label %7, label %8, !dbg !3422

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3423
  unreachable, !dbg !3423

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3424, metadata !DIExpression()) #18, !dbg !3433
  call void @llvm.dbg.value(metadata i8* %0, metadata !3431, metadata !DIExpression()) #18, !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3432, metadata !DIExpression()) #18, !dbg !3433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3435
  ret i8* %3, !dbg !3436
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3437 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3439, metadata !DIExpression()), !dbg !3440
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3441
  %3 = add i64 %2, 1, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %0, metadata !3414, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %3, metadata !3415, metadata !DIExpression()) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i64 %3, metadata !3225, metadata !DIExpression()) #18, !dbg !3445
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %4, metadata !3230, metadata !DIExpression()) #18, !dbg !3445
  %5 = icmp eq i8* %4, null, !dbg !3448
  %6 = icmp ne i64 %3, 0, !dbg !3449
  %7 = and i1 %6, %5, !dbg !3450
  br i1 %7, label %8, label %9, !dbg !3450

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3451
  unreachable, !dbg !3451

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3424, metadata !DIExpression()) #18, !dbg !3452
  call void @llvm.dbg.value(metadata i8* %0, metadata !3431, metadata !DIExpression()) #18, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %3, metadata !3432, metadata !DIExpression()) #18, !dbg !3452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3454
  ret i8* %4, !dbg !3455
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3456 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3457, !tbaa !1296
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.122, i64 0, i64 0), i32 5) #18, !dbg !3458
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i8* %2) #18, !dbg !3459
  tail call void @abort() #22, !dbg !3460
  unreachable, !dbg !3460
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3461 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3463, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i64 %1, metadata !3464, metadata !DIExpression()), !dbg !3469
  %3 = icmp eq i64 %0, 0, !dbg !3470
  %4 = icmp eq i64 %1, 0, !dbg !3471
  %5 = or i1 %3, %4, !dbg !3472
  br i1 %5, label %11, label %6, !dbg !3472

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3466, metadata !DIExpression()), !dbg !3473
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3474
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3474
  br i1 %8, label %9, label %11, !dbg !3476

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3477
  store i32 12, i32* %10, align 4, !dbg !3479, !tbaa !1296
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3463, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i64 %12, metadata !3464, metadata !DIExpression()), !dbg !3469
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3480
  call void @llvm.dbg.value(metadata i8* %14, metadata !3465, metadata !DIExpression()), !dbg !3469
  br label %15, !dbg !3481

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3469
  ret i8* %16, !dbg !3482
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrlen(i8* %0, i64 %1, %struct.__mbstate_t* %2) local_unnamed_addr #8 !dbg !3483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3488, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i64 %1, metadata !3489, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %2, metadata !3490, metadata !DIExpression()), !dbg !3491
  %4 = icmp eq %struct.__mbstate_t* %2, null, !dbg !3492
  %5 = select i1 %4, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %2, !dbg !3494
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %5, metadata !3490, metadata !DIExpression()), !dbg !3491
  %6 = tail call i64 @rpl_mbrtowc(i32* null, i8* %0, i64 %1, %struct.__mbstate_t* %5) #18, !dbg !3495
  ret i64 %6, !dbg !3496
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3497 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3505, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i8* %1, metadata !3506, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i64 %2, metadata !3507, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3508, metadata !DIExpression()), !dbg !3514
  %6 = bitcast i32* %5 to i8*, !dbg !3515
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3515
  %7 = icmp eq i32* %0, null, !dbg !3516
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3518
  call void @llvm.dbg.value(metadata i32* %8, metadata !3505, metadata !DIExpression()), !dbg !3514
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %9, metadata !3509, metadata !DIExpression()), !dbg !3514
  %10 = icmp ugt i64 %9, -3, !dbg !3520
  %11 = icmp ne i64 %2, 0, !dbg !3521
  %12 = and i1 %11, %10, !dbg !3522
  br i1 %12, label %13, label %18, !dbg !3522

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3523
  br i1 %14, label %18, label %15, !dbg !3524

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3525, !tbaa !1353
  call void @llvm.dbg.value(metadata i8 %16, metadata !3511, metadata !DIExpression()), !dbg !3526
  %17 = zext i8 %16 to i32, !dbg !3527
  store i32 %17, i32* %8, align 4, !dbg !3528, !tbaa !1296
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3514
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3529
  ret i64 %19, !dbg !3529
}

; Function Attrs: nounwind
declare !dbg !518 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3530 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3536, metadata !DIExpression()), !dbg !3541
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3542
  call void @llvm.dbg.value(metadata i1 undef, metadata !3537, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3543, metadata !DIExpression()), !dbg !3547
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3549
  %4 = load i32, i32* %3, align 8, !dbg !3549, !tbaa !3550
  %5 = and i32 %4, 32, !dbg !3549
  %6 = icmp eq i32 %5, 0, !dbg !3552
  call void @llvm.dbg.value(metadata i1 %6, metadata !3539, metadata !DIExpression()), !dbg !3541
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3553
  %8 = icmp ne i32 %7, 0, !dbg !3554
  call void @llvm.dbg.value(metadata i1 %8, metadata !3540, metadata !DIExpression()), !dbg !3541
  br i1 %6, label %9, label %19, !dbg !3555

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3557
  call void @llvm.dbg.value(metadata i1 %10, metadata !3537, metadata !DIExpression()), !dbg !3541
  %11 = xor i1 %8, true, !dbg !3558
  %12 = or i1 %10, %11, !dbg !3558
  %13 = sext i1 %8 to i32, !dbg !3558
  br i1 %12, label %22, label %14, !dbg !3558

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3559
  %16 = load i32, i32* %15, align 4, !dbg !3559, !tbaa !1296
  %17 = icmp ne i32 %16, 9, !dbg !3560
  %18 = sext i1 %17 to i32, !dbg !3561
  br label %22, !dbg !3561

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3562

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3564
  store i32 0, i32* %21, align 4, !dbg !3566, !tbaa !1296
  br label %22, !dbg !3564

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3541
  ret i32 %23, !dbg !3567
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3568 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3570, metadata !DIExpression()), !dbg !3575
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3576
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3576
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3571, metadata !DIExpression()), !dbg !3577
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3578
  %5 = icmp eq i32 %4, 0, !dbg !3578
  br i1 %5, label %6, label %13, !dbg !3580

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3581
  %8 = load i16, i16* %7, align 16, !dbg !3581
  %9 = icmp eq i16 %8, 67, !dbg !3581
  br i1 %9, label %13, label %10, !dbg !3582

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0), i64 6), !dbg !3583
  %12 = icmp ne i32 %11, 0, !dbg !3584
  br label %13, !dbg !3582

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3575
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3585
  ret i1 %14, !dbg !3585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3586 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %1, metadata !3588, metadata !DIExpression()), !dbg !3590
  %2 = icmp eq i8* %1, null, !dbg !3591
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %1, !dbg !3593
  call void @llvm.dbg.value(metadata i8* %3, metadata !3588, metadata !DIExpression()), !dbg !3590
  %4 = load i8, i8* %3, align 1, !dbg !3594, !tbaa !1353
  %5 = icmp eq i8 %4, 0, !dbg !3598
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.138, i64 0, i64 0), i8* %3, !dbg !3599
  call void @llvm.dbg.value(metadata i8* %6, metadata !3588, metadata !DIExpression()), !dbg !3590
  ret i8* %6, !dbg !3600
}

; Function Attrs: nounwind
declare !dbg !970 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3601 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %1, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %2, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i32 %0, metadata !3609, metadata !DIExpression()) #18, !dbg !3618
  call void @llvm.dbg.value(metadata i8* %1, metadata !3612, metadata !DIExpression()) #18, !dbg !3618
  call void @llvm.dbg.value(metadata i64 %2, metadata !3613, metadata !DIExpression()) #18, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %0, metadata !3620, metadata !DIExpression()) #18, !dbg !3626
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %4, metadata !3625, metadata !DIExpression()) #18, !dbg !3626
  call void @llvm.dbg.value(metadata i8* %4, metadata !3614, metadata !DIExpression()) #18, !dbg !3618
  %5 = icmp eq i8* %4, null, !dbg !3629
  br i1 %5, label %6, label %9, !dbg !3630

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3631
  br i1 %7, label %19, label %8, !dbg !3634

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3635, !tbaa !1353
  br label %19, !dbg !3636

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3637
  call void @llvm.dbg.value(metadata i64 %10, metadata !3615, metadata !DIExpression()) #18, !dbg !3638
  %11 = icmp ult i64 %10, %2, !dbg !3639
  br i1 %11, label %12, label %14, !dbg !3641

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3642
  call void @llvm.dbg.value(metadata i8* %1, metadata !3644, metadata !DIExpression()) #18, !dbg !3649
  call void @llvm.dbg.value(metadata i8* %4, metadata !3647, metadata !DIExpression()) #18, !dbg !3649
  call void @llvm.dbg.value(metadata i64 %13, metadata !3648, metadata !DIExpression()) #18, !dbg !3649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3651
  br label %19, !dbg !3652

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3653
  br i1 %15, label %19, label %16, !dbg !3656

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3657
  call void @llvm.dbg.value(metadata i8* %1, metadata !3644, metadata !DIExpression()) #18, !dbg !3659
  call void @llvm.dbg.value(metadata i8* %4, metadata !3647, metadata !DIExpression()) #18, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %17, metadata !3648, metadata !DIExpression()) #18, !dbg !3659
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3661
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3662
  store i8 0, i8* %18, align 1, !dbg !3663, !tbaa !1353
  br label %19, !dbg !3664

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3665
  ret i32 %20, !dbg !3666
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3669, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %0, metadata !3620, metadata !DIExpression()) #18, !dbg !3671
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %2, metadata !3625, metadata !DIExpression()) #18, !dbg !3671
  ret i8* %2, !dbg !3674
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3675 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3681, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 0, metadata !3682, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 0, metadata !3684, metadata !DIExpression()), !dbg !3685
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3686
  call void @llvm.dbg.value(metadata i32 %2, metadata !3683, metadata !DIExpression()), !dbg !3685
  %3 = icmp slt i32 %2, 0, !dbg !3687
  br i1 %3, label %4, label %6, !dbg !3689

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3690
  br label %24, !dbg !3691

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3692
  %8 = icmp eq i32 %7, 0, !dbg !3692
  br i1 %8, label %13, label %9, !dbg !3694

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3695
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3696
  %12 = icmp eq i64 %11, -1, !dbg !3697
  br i1 %12, label %16, label %13, !dbg !3698

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3699
  %15 = icmp eq i32 %14, 0, !dbg !3699
  br i1 %15, label %16, label %18, !dbg !3700

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3682, metadata !DIExpression()), !dbg !3685
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3701
  call void @llvm.dbg.value(metadata i32 %21, metadata !3684, metadata !DIExpression()), !dbg !3685
  br label %24, !dbg !3702

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3703
  %20 = load i32, i32* %19, align 4, !dbg !3703, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %20, metadata !3682, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 %20, metadata !3682, metadata !DIExpression()), !dbg !3685
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3701
  call void @llvm.dbg.value(metadata i32 %21, metadata !3684, metadata !DIExpression()), !dbg !3685
  %22 = icmp eq i32 %20, 0, !dbg !3704
  br i1 %22, label %24, label %23, !dbg !3702

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3706, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 -1, metadata !3684, metadata !DIExpression()), !dbg !3685
  br label %24, !dbg !3708

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3685
  ret i32 %25, !dbg !3709
}

; Function Attrs: nofree nounwind
declare !dbg !979 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1014 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1015 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3710 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3716, metadata !DIExpression()), !dbg !3717
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3718
  br i1 %2, label %6, label %3, !dbg !3720

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3721
  %5 = icmp eq i32 %4, 0, !dbg !3721
  br i1 %5, label %6, label %8, !dbg !3722

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3723
  br label %17, !dbg !3724

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3725, metadata !DIExpression()) #18, !dbg !3730
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3732
  %10 = load i32, i32* %9, align 8, !dbg !3732, !tbaa !3550
  %11 = and i32 %10, 256, !dbg !3734
  %12 = icmp eq i32 %11, 0, !dbg !3734
  br i1 %12, label %15, label %13, !dbg !3735

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3736
  br label %15, !dbg !3736

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3737
  br label %17, !dbg !3738

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3717
  ret i32 %18, !dbg !3739
}

; Function Attrs: nofree nounwind
declare !dbg !1022 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3740 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3747, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i32 %2, metadata !3749, metadata !DIExpression()), !dbg !3753
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3754
  %5 = load i8*, i8** %4, align 8, !dbg !3754, !tbaa !3755
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3756
  %7 = load i8*, i8** %6, align 8, !dbg !3756, !tbaa !3757
  %8 = icmp eq i8* %5, %7, !dbg !3758
  br i1 %8, label %9, label %28, !dbg !3759

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3760
  %11 = load i8*, i8** %10, align 8, !dbg !3760, !tbaa !3761
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3762
  %13 = load i8*, i8** %12, align 8, !dbg !3762, !tbaa !3763
  %14 = icmp eq i8* %11, %13, !dbg !3764
  br i1 %14, label %15, label %28, !dbg !3765

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3766
  %17 = load i8*, i8** %16, align 8, !dbg !3766, !tbaa !3767
  %18 = icmp eq i8* %17, null, !dbg !3768
  br i1 %18, label %19, label %28, !dbg !3769

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3770
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %21, metadata !3750, metadata !DIExpression()), !dbg !3772
  %22 = icmp eq i64 %21, -1, !dbg !3773
  br i1 %22, label %30, label %23, !dbg !3775

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3776
  %25 = load i32, i32* %24, align 8, !dbg !3777, !tbaa !3550
  %26 = and i32 %25, -17, !dbg !3777
  store i32 %26, i32* %24, align 8, !dbg !3777, !tbaa !3550
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3778
  store i64 %21, i64* %27, align 8, !dbg !3779, !tbaa !3780
  br label %30, !dbg !3781

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3782
  br label %30, !dbg !3783

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3753
  ret i32 %31, !dbg !3784
}

; Function Attrs: nofree nounwind
declare !dbg !1098 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

!llvm.dbg.cu = !{!2, !199, !204, !250, !256, !297, !446, !419, !488, !509, !512, !427, !515, !534, !573, !580, !973, !976, !1019, !1060}
!llvm.ident = !{!1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101, !1101}
!llvm.module.flags = !{!1102, !1103, !1104, !1105, !1106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 73, type: !196, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !44, globals: !195, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pathchk.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 24, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/bits/confname.h", directory: "")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!23 = !DIEnumerator(name: "_PC_LINK_MAX", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "_PC_MAX_CANON", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "_PC_MAX_INPUT", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "_PC_NAME_MAX", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "_PC_PATH_MAX", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "_PC_PIPE_BUF", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "_PC_CHOWN_RESTRICTED", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "_PC_NO_TRUNC", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "_PC_VDISABLE", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "_PC_SYNC_IO", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "_PC_ASYNC_IO", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "_PC_PRIO_IO", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "_PC_SOCK_MAXBUF", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "_PC_FILESIZEBITS", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "_PC_REC_INCR_XFER_SIZE", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "_PC_REC_MAX_XFER_SIZE", value: 15, isUnsigned: true)
!39 = !DIEnumerator(name: "_PC_REC_MIN_XFER_SIZE", value: 16, isUnsigned: true)
!40 = !DIEnumerator(name: "_PC_REC_XFER_ALIGN", value: 17, isUnsigned: true)
!41 = !DIEnumerator(name: "_PC_ALLOC_SIZE_MIN", value: 18, isUnsigned: true)
!42 = !DIEnumerator(name: "_PC_SYMLINK_MAX", value: 19, isUnsigned: true)
!43 = !DIEnumerator(name: "_PC_2_SYMLINKS", value: 20, isUnsigned: true)
!44 = !{!45, !55, !116, !120, !124, !127, !130, !137, !49, !106, !152, !156, !160, !163, !167, !170, !174, !191, !194}
!45 = !DISubprogram(name: "dcgettext", scope: !46, file: !46, line: 51, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!46 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !51, !51, !53}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !{}
!55 = !DISubprogram(name: "fputs_unlocked", scope: !56, file: !56, line: 662, type: !57, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!56 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!57 = !DISubroutineType(types: !58)
!58 = !{!53, !51, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !62)
!61 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !78, !79, !80, !81, !85, !87, !89, !93, !96, !98, !101, !104, !105, !107, !111, !112}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !60, file: !61, line: 51, baseType: !53, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !60, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !60, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !60, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !60, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !60, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !60, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !60, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !60, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !60, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !60, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !60, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !60, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !61, line: 36, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !60, file: !61, line: 70, baseType: !59, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !60, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !60, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !60, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !83, line: 152, baseType: !84)
!83 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !60, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !60, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !60, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !60, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !61, line: 43, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !60, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !83, line: 153, baseType: !84)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !60, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !61, line: 37, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !60, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !61, line: 38, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !60, file: !61, line: 93, baseType: !59, size: 64, offset: 1344)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !60, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !60, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !60, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !60, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DISubprogram(name: "set_program_name", scope: !117, file: !117, line: 37, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!117 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !DISubroutineType(types: !119)
!119 = !{null, !51}
!120 = !DISubprogram(name: "setlocale", scope: !121, file: !121, line: 122, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!121 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!122 = !DISubroutineType(types: !123)
!123 = !{!49, !53, !51}
!124 = !DISubprogram(name: "bindtextdomain", scope: !46, file: !46, line: 86, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!125 = !DISubroutineType(types: !126)
!126 = !{!49, !51, !51}
!127 = !DISubprogram(name: "textdomain", scope: !46, file: !46, line: 82, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!128 = !DISubroutineType(types: !129)
!129 = !{!49, !51}
!130 = !DISubprogram(name: "atexit", scope: !131, file: !131, line: 595, type: !132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!131 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!132 = !DISubroutineType(types: !133)
!133 = !{!53, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null}
!137 = !DISubprogram(name: "getopt_long", scope: !138, file: !138, line: 66, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!138 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!139 = !DISubroutineType(types: !140)
!140 = !{!53, !53, !141, !51, !143, !150}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !138, line: 50, size: 256, elements: !146)
!146 = !{!147, !148, !149, !151}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !138, line: 52, baseType: !51, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !145, file: !138, line: 55, baseType: !53, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !145, file: !138, line: 56, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !138, line: 57, baseType: !53, size: 32, offset: 192)
!152 = !DISubprogram(name: "version_etc", scope: !153, file: !153, line: 69, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!153 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!154 = !DISubroutineType(types: !155)
!155 = !{null, !59, !51, !51, !51, null}
!156 = !DISubprogram(name: "error", scope: !157, file: !157, line: 52, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!157 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!158 = !DISubroutineType(types: !159)
!159 = !{null, !53, !53, !51, null}
!160 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!161 = !DISubroutineType(types: !162)
!162 = !{!49, !53, !5, !51}
!163 = !DISubprogram(name: "pathconf", scope: !164, file: !164, line: 612, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!164 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!165 = !DISubroutineType(types: !166)
!166 = !{!84, !51, !53}
!167 = !DISubprogram(name: "quotearg_style", scope: !6, file: !6, line: 377, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!168 = !DISubroutineType(types: !169)
!169 = !{!49, !5, !51}
!170 = !DISubprogram(name: "quote", scope: !171, file: !171, line: 44, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!171 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!172 = !DISubroutineType(types: !173)
!173 = !{!51, !51}
!174 = !DISubprogram(name: "rpl_mbrlen", scope: !175, file: !175, line: 752, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!175 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!176 = !DISubroutineType(types: !177)
!177 = !{!110, !51, !110, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 13, size: 64, elements: !181)
!180 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !179, file: !180, line: 15, baseType: !53, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !179, file: !180, line: 20, baseType: !184, size: 32, offset: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 16, size: 32, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !184, file: !180, line: 18, baseType: !7, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !184, file: !180, line: 19, baseType: !188, size: 32)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 32, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 4)
!191 = !DISubprogram(name: "quotearg_n_style_mem", scope: !6, file: !6, line: 373, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!192 = !DISubroutineType(types: !193)
!193 = !{!49, !53, !5, !51, !110}
!194 = !DISubprogram(name: "quotearg_n_style", scope: !6, file: !6, line: 368, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!195 = !{!0}
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1024, elements: !189)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "Version", scope: !199, file: !200, line: 2, type: !51, isLocal: false, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !201, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = !{!197}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "file_name", scope: !204, file: !205, line: 46, type: !51, isLocal: true, isDefinition: true)
!204 = distinct !DICompileUnit(language: DW_LANG_C99, file: !205, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !206, globals: !244, splitDebugInlining: false, nameTableKind: None)
!205 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!206 = !{!207, !45, !243, !156}
!207 = !DISubprogram(name: "close_stream", scope: !208, file: !208, line: 2, type: !209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!208 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !DISubroutineType(types: !210)
!210 = !{!53, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !212, file: !61, line: 51, baseType: !53, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !212, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !212, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !212, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !212, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !212, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !212, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !212, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !212, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !212, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !212, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !212, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !212, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !212, file: !61, line: 70, baseType: !211, size: 64, offset: 832)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !212, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !212, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !212, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !212, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !212, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !212, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !212, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !212, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !212, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !212, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !212, file: !61, line: 93, baseType: !211, size: 64, offset: 1344)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !212, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !212, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !212, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !212, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!243 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!244 = !{!202, !245}
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !204, file: !205, line: 56, type: !247, isLocal: true, isDefinition: true)
!247 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "exit_failure", scope: !250, file: !251, line: 24, type: !253, isLocal: false, isDefinition: true)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !252, splitDebugInlining: false, nameTableKind: None)
!251 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!252 = !{!248}
!253 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "program_name", scope: !256, file: !257, line: 33, type: !51, isLocal: false, isDefinition: true)
!256 = distinct !DICompileUnit(language: DW_LANG_C99, file: !257, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !258, globals: !294, splitDebugInlining: false, nameTableKind: None)
!257 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!258 = !{!106, !259, !49}
!259 = !DISubprogram(name: "fputs", scope: !56, file: !56, line: 626, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!260 = !DISubroutineType(types: !261)
!261 = !{!53, !51, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !263, file: !61, line: 51, baseType: !53, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !263, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !263, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !263, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !263, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !263, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !263, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !263, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !263, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !263, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !263, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !263, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !263, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !263, file: !61, line: 70, baseType: !262, size: 64, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !263, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !263, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !263, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !263, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !263, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !263, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !263, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !263, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !263, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !263, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !263, file: !61, line: 93, baseType: !262, size: 64, offset: 1344)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !263, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !263, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !263, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !263, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!294 = !{!254}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !297, file: !298, line: 85, type: !413, isLocal: false, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !299, retainedTypes: !320, globals: !386, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!299 = !{!5, !300, !305}
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !301)
!301 = !{!302, !303, !304}
!302 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!303 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!304 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !306, line: 46, baseType: !7, size: 32, elements: !307)
!306 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319}
!308 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!309 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!310 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!311 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!312 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!313 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!314 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!315 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!316 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!317 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!318 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!319 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!320 = !{!321, !327, !343, !346, !53, !86, !349, !108, !361, !365, !45, !371, !375, !49, !379, !382, !383}
!321 = !DISubprogram(name: "xmemdup", scope: !322, file: !322, line: 62, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!322 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!323 = !DISubroutineType(types: !324)
!324 = !{!106, !325, !110}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!327 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!328 = !DISubroutineType(types: !329)
!329 = !{!49, !51, !110, !330, !331}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !298, line: 65, size: 448, elements: !334)
!334 = !{!335, !336, !337, !341, !342}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !333, file: !298, line: 68, baseType: !5, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !298, line: 71, baseType: !53, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !333, file: !298, line: 75, baseType: !338, size: 256, offset: 64)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 8)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !333, file: !298, line: 78, baseType: !51, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !333, file: !298, line: 81, baseType: !51, size: 64, offset: 384)
!343 = !DISubprogram(name: "free", scope: !131, file: !131, line: 565, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !106}
!346 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!347 = !DISubroutineType(types: !348)
!348 = !{!49, !53, !51, !51, !51, !110}
!349 = !DISubprogram(name: "rpl_mbrtowc", scope: !175, file: !175, line: 717, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!350 = !DISubroutineType(types: !351)
!351 = !{!110, !150, !51, !110, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 13, size: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !353, file: !180, line: 15, baseType: !53, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !353, file: !180, line: 20, baseType: !357, size: 32, offset: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !353, file: !180, line: 16, size: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !357, file: !180, line: 18, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !357, file: !180, line: 19, baseType: !188, size: 32)
!361 = !DISubprogram(name: "iswprint", scope: !362, file: !362, line: 120, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!362 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!363 = !DISubroutineType(types: !364)
!364 = !{!53, !7}
!365 = !DISubprogram(name: "mbsinit", scope: !366, file: !366, line: 292, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!366 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!367 = !DISubroutineType(types: !368)
!368 = !{!53, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!371 = !DISubprogram(name: "locale_charset", scope: !372, file: !372, line: 35, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!372 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!373 = !DISubroutineType(types: !374)
!374 = !{!51}
!375 = !DISubprogram(name: "c_strcasecmp", scope: !376, file: !376, line: 42, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!376 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!377 = !DISubroutineType(types: !378)
!378 = !{!53, !51, !51}
!379 = !DISubprogram(name: "xmalloc", scope: !322, file: !322, line: 53, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!380 = !DISubroutineType(types: !381)
!381 = !{!106, !110}
!382 = !DISubprogram(name: "xalloc_die", scope: !322, file: !322, line: 51, type: !135, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !54)
!383 = !DISubprogram(name: "xrealloc", scope: !322, file: !322, line: 59, type: !384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!384 = !DISubroutineType(types: !385)
!385 = !{!106, !106, !110}
!386 = !{!295, !387, !393, !395, !397, !402, !409, !411}
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !297, file: !298, line: 101, type: !389, isLocal: false, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 320, elements: !391)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!391 = !{!392}
!392 = !DISubrange(count: 10)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !297, file: !298, line: 1052, type: !333, isLocal: false, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !297, file: !298, line: 116, type: !333, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(name: "slot0", scope: !297, file: !298, line: 842, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 256)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "slotvec", scope: !297, file: !298, line: 845, type: !404, isLocal: true, isDefinition: true)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !298, line: 834, size: 128, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !405, file: !298, line: 836, baseType: !108, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !298, line: 837, baseType: !49, size: 64, offset: 64)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "nslots", scope: !297, file: !298, line: 843, type: !53, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "slotvec0", scope: !297, file: !298, line: 844, type: !405, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 704, elements: !415)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!415 = !{!416}
!416 = !DISubrange(count: 11)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !419, file: !420, line: 26, type: !422, isLocal: false, isDefinition: true)
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, globals: !421, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!421 = !{!417}
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 376, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 47)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "internal_state", scope: !427, file: !428, line: 24, type: !443, isLocal: true, isDefinition: true)
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !429, globals: !442, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/mbrlen.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!429 = !{!106, !430}
!430 = !DISubprogram(name: "rpl_mbrtowc", scope: !175, file: !175, line: 717, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!431 = !DISubroutineType(types: !432)
!432 = !{!110, !150, !51, !110, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 13, size: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !434, file: !180, line: 15, baseType: !53, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !434, file: !180, line: 20, baseType: !438, size: 32, offset: 32)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !180, line: 16, size: 32, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !438, file: !180, line: 18, baseType: !7, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !438, file: !180, line: 19, baseType: !188, size: 32)
!442 = !{!425}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !445)
!444 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !180, line: 21, baseType: !434)
!446 = distinct !DICompileUnit(language: DW_LANG_C99, file: !447, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !448, retainedTypes: !452, splitDebugInlining: false, nameTableKind: None)
!447 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!448 = !{!449}
!449 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !447, line: 40, baseType: !7, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!452 = !{!45, !453, !106}
!453 = !DISubprogram(name: "fputs_unlocked", scope: !56, file: !56, line: 662, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!454 = !DISubroutineType(types: !455)
!455 = !{!53, !51, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !457, file: !61, line: 51, baseType: !53, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !457, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !457, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !457, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !457, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !457, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !457, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !457, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !457, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !457, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !457, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !457, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !457, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !457, file: !61, line: 70, baseType: !456, size: 64, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !457, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !457, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !457, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !457, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !457, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !457, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !457, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !457, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !457, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !457, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !457, file: !61, line: 93, baseType: !456, size: 64, offset: 1344)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !457, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !457, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !457, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !457, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !490, retainedTypes: !503, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!490 = !{!491}
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !492, file: !322, line: 186, baseType: !7, size: 32, elements: !501)
!492 = distinct !DISubprogram(name: "x2nrealloc", scope: !322, file: !322, line: 174, type: !493, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !496)
!493 = !DISubroutineType(types: !494)
!494 = !{!106, !106, !495, !108}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!496 = !{!497, !498, !499, !500}
!497 = !DILocalVariable(name: "p", arg: 1, scope: !492, file: !322, line: 174, type: !106)
!498 = !DILocalVariable(name: "pn", arg: 2, scope: !492, file: !322, line: 174, type: !495)
!499 = !DILocalVariable(name: "s", arg: 3, scope: !492, file: !322, line: 174, type: !108)
!500 = !DILocalVariable(name: "n", scope: !492, file: !322, line: 176, type: !108)
!501 = !{!502}
!502 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!503 = !{!108, !382, !379, !383, !49, !343, !106, !504, !507}
!504 = !DISubprogram(name: "xcalloc", scope: !322, file: !322, line: 57, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!505 = !DISubroutineType(types: !506)
!506 = !{!106, !110, !110}
!507 = !DISubprogram(name: "rpl_calloc", scope: !508, file: !508, line: 688, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!508 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !511, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!511 = !{!45, !156}
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !514, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!514 = !{!106}
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !517, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!517 = !{!518, !108, !530}
!518 = !DISubprogram(name: "mbrtowc", scope: !366, file: !366, line: 296, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!519 = !DISubroutineType(types: !520)
!520 = !{!110, !150, !51, !110, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 13, size: 64, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !522, file: !180, line: 15, baseType: !53, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !522, file: !180, line: 20, baseType: !526, size: 32, offset: 32)
!526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !522, file: !180, line: 16, size: 32, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !526, file: !180, line: 18, baseType: !7, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !526, file: !180, line: 19, baseType: !188, size: 32)
!530 = !DISubprogram(name: "hard_locale", scope: !531, file: !531, line: 26, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!531 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!532 = !DISubroutineType(types: !533)
!533 = !{!247, !53}
!534 = distinct !DICompileUnit(language: DW_LANG_C99, file: !535, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !536, splitDebugInlining: false, nameTableKind: None)
!535 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!536 = !{!537}
!537 = !DISubprogram(name: "rpl_fclose", scope: !538, file: !538, line: 672, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!538 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!539 = !DISubroutineType(types: !540)
!540 = !{!53, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !542, file: !61, line: 51, baseType: !53, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !542, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !542, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !542, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !542, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !542, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !542, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !542, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !542, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !542, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !542, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !542, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !542, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !542, file: !61, line: 70, baseType: !541, size: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !542, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !542, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !542, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !542, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !542, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !542, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !542, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !542, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !542, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !542, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !542, file: !61, line: 93, baseType: !541, size: 64, offset: 1344)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !542, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !542, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !542, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !542, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !575, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !{!576}
!576 = !DISubprogram(name: "setlocale_null_r", scope: !577, file: !577, line: 64, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!577 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!578 = !DISubroutineType(types: !579)
!579 = !{!53, !53, !49, !110}
!580 = distinct !DICompileUnit(language: DW_LANG_C99, file: !581, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !582, retainedTypes: !969, splitDebugInlining: false, nameTableKind: None)
!581 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!582 = !{!583}
!583 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !584, line: 41, baseType: !7, size: 32, elements: !585)
!584 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968}
!586 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!587 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!588 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!589 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!590 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!591 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!592 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!593 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!594 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!595 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!596 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!597 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!598 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!599 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!600 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!601 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!602 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!603 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!604 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!605 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!606 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!607 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!608 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!609 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!610 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!611 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!612 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!613 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!614 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!615 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!616 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!617 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!618 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!619 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!620 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!621 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!622 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!623 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!624 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!625 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!626 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!627 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!628 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!629 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!630 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!631 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!632 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!633 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!634 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!635 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!694 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!697 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!698 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!699 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!700 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!701 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!702 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!703 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!704 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!705 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!706 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!707 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!708 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!781 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!854 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!855 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!856 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!857 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!858 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!859 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!860 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!861 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!862 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!863 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!864 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!865 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!866 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!867 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!868 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!870 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!871 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!872 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!873 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!874 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!875 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!901 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!902 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!903 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!904 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!905 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!910 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!911 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!912 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!913 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!969 = !{!970, !106}
!970 = !DISubprogram(name: "nl_langinfo", scope: !584, file: !584, line: 661, type: !971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!971 = !DISubroutineType(types: !972)
!972 = !{!49, !53}
!973 = distinct !DICompileUnit(language: DW_LANG_C99, file: !974, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!975 = !{!106, !120}
!976 = distinct !DICompileUnit(language: DW_LANG_C99, file: !977, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !978, splitDebugInlining: false, nameTableKind: None)
!977 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!978 = !{!979, !1014, !1015, !1018}
!979 = !DISubprogram(name: "fileno", scope: !56, file: !56, line: 786, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!980 = !DISubroutineType(types: !981)
!981 = !{!53, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !984)
!984 = !{!985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !983, file: !61, line: 51, baseType: !53, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !983, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !983, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !983, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !983, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !983, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !983, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !983, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !983, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !983, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !983, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !983, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !983, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !983, file: !61, line: 70, baseType: !982, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !983, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !983, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !983, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !983, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !983, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !983, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !983, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !983, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !983, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !983, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !983, file: !61, line: 93, baseType: !982, size: 64, offset: 1344)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !983, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !983, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !983, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !983, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!1014 = !DISubprogram(name: "fclose", scope: !56, file: !56, line: 213, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1015 = !DISubprogram(name: "lseek", scope: !164, file: !164, line: 334, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!84, !53, !84, !53}
!1018 = !DISubprogram(name: "rpl_fflush", scope: !538, file: !538, line: 718, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1019 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1020, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !1021, splitDebugInlining: false, nameTableKind: None)
!1020 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1021 = !{!106, !1022, !1057}
!1022 = !DISubprogram(name: "fflush", scope: !56, file: !56, line: 218, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!53, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1026, file: !61, line: 51, baseType: !53, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1026, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1026, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1026, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1026, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1026, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1026, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1026, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1026, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1026, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1026, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1026, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1026, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1026, file: !61, line: 70, baseType: !1025, size: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1026, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1026, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1026, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1026, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1026, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1026, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1026, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1026, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1026, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1026, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1026, file: !61, line: 93, baseType: !1025, size: 64, offset: 1344)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1026, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1026, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1026, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1026, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!1057 = !DISubprogram(name: "rpl_fseeko", scope: !538, file: !538, line: 1034, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!53, !1025, !84, !53}
!1060 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1061, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !54, retainedTypes: !1062, splitDebugInlining: false, nameTableKind: None)
!1061 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1062 = !{!106, !1063, !1015, !1098}
!1063 = !DISubprogram(name: "fileno", scope: !56, file: !56, line: 786, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!53, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !61, line: 49, size: 1728, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1067, file: !61, line: 51, baseType: !53, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1067, file: !61, line: 54, baseType: !49, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1067, file: !61, line: 55, baseType: !49, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1067, file: !61, line: 56, baseType: !49, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1067, file: !61, line: 57, baseType: !49, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1067, file: !61, line: 58, baseType: !49, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1067, file: !61, line: 59, baseType: !49, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1067, file: !61, line: 60, baseType: !49, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1067, file: !61, line: 61, baseType: !49, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1067, file: !61, line: 64, baseType: !49, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1067, file: !61, line: 65, baseType: !49, size: 64, offset: 640)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1067, file: !61, line: 66, baseType: !49, size: 64, offset: 704)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1067, file: !61, line: 68, baseType: !76, size: 64, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1067, file: !61, line: 70, baseType: !1066, size: 64, offset: 832)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1067, file: !61, line: 72, baseType: !53, size: 32, offset: 896)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1067, file: !61, line: 73, baseType: !53, size: 32, offset: 928)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1067, file: !61, line: 74, baseType: !82, size: 64, offset: 960)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1067, file: !61, line: 77, baseType: !86, size: 16, offset: 1024)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1067, file: !61, line: 78, baseType: !88, size: 8, offset: 1040)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1067, file: !61, line: 79, baseType: !90, size: 8, offset: 1048)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1067, file: !61, line: 81, baseType: !94, size: 64, offset: 1088)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1067, file: !61, line: 89, baseType: !97, size: 64, offset: 1152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1067, file: !61, line: 91, baseType: !99, size: 64, offset: 1216)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1067, file: !61, line: 92, baseType: !102, size: 64, offset: 1280)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1067, file: !61, line: 93, baseType: !1066, size: 64, offset: 1344)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1067, file: !61, line: 94, baseType: !106, size: 64, offset: 1408)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1067, file: !61, line: 95, baseType: !108, size: 64, offset: 1472)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1067, file: !61, line: 96, baseType: !53, size: 32, offset: 1536)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1067, file: !61, line: 98, baseType: !113, size: 160, offset: 1568)
!1098 = !DISubprogram(name: "fseeko", scope: !56, file: !56, line: 707, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !54)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!53, !1066, !84, !53}
!1101 = !{!"clang version 10.0.0 "}
!1102 = !{i32 7, !"Dwarf Version", i32 4}
!1103 = !{i32 2, !"Debug Info Version", i32 3}
!1104 = !{i32 1, !"wchar_size", i32 4}
!1105 = !{i32 7, !"PIC Level", i32 2}
!1106 = !{i32 7, !"PIE Level", i32 2}
!1107 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !1108, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !53}
!1110 = !{!1111}
!1111 = !DILocalVariable(name: "status", arg: 1, scope: !1107, file: !3, line: 82, type: !53)
!1112 = !DILocalVariable(name: "infomap", scope: !1113, file: !1114, line: 636, type: !1126)
!1113 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1114, file: !1114, line: 634, type: !118, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1115)
!1114 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1115 = !{!1116, !1112, !1117, !1118, !1125}
!1116 = !DILocalVariable(name: "program", arg: 1, scope: !1113, file: !1114, line: 634, type: !51)
!1117 = !DILocalVariable(name: "node", scope: !1113, file: !1114, line: 646, type: !51)
!1118 = !DILocalVariable(name: "map_prog", scope: !1113, file: !1114, line: 647, type: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1113, file: !1114, line: 636, size: 128, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1121, file: !1114, line: 636, baseType: !51, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1121, file: !1114, line: 636, baseType: !51, size: 64, offset: 64)
!1125 = !DILocalVariable(name: "lc_messages", scope: !1113, file: !1114, line: 659, type: !51)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1120, size: 896, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 7)
!1129 = !DILocation(line: 636, column: 67, scope: !1113, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 98, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 87, column: 5)
!1132 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 84, column: 7)
!1133 = !DILocation(line: 0, scope: !1107)
!1134 = !DILocation(line: 84, column: 14, scope: !1132)
!1135 = !DILocation(line: 84, column: 7, scope: !1107)
!1136 = !DILocation(line: 85, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 85, column: 5)
!1138 = !{!1139, !1139, i64 0}
!1139 = !{!"any pointer", !1140, i64 0}
!1140 = !{!"omnipotent char", !1141, i64 0}
!1141 = !{!"Simple C/C++ TBAA"}
!1142 = !DILocation(line: 88, column: 7, scope: !1131)
!1143 = !DILocation(line: 89, column: 7, scope: !1131)
!1144 = !DILocation(line: 96, column: 7, scope: !1131)
!1145 = !DILocation(line: 97, column: 7, scope: !1131)
!1146 = !DILocation(line: 0, scope: !1113, inlinedAt: !1130)
!1147 = !DILocation(line: 636, column: 3, scope: !1113, inlinedAt: !1130)
!1148 = !DILocation(line: 647, column: 36, scope: !1113, inlinedAt: !1130)
!1149 = !DILocation(line: 649, column: 3, scope: !1113, inlinedAt: !1130)
!1150 = !DILocation(line: 649, column: 33, scope: !1113, inlinedAt: !1130)
!1151 = !DILocation(line: 650, column: 13, scope: !1113, inlinedAt: !1130)
!1152 = !DILocation(line: 649, column: 20, scope: !1113, inlinedAt: !1130)
!1153 = !{!1154, !1139, i64 0}
!1154 = !{!"infomap", !1139, i64 0, !1139, i64 8}
!1155 = !DILocation(line: 649, column: 10, scope: !1113, inlinedAt: !1130)
!1156 = !DILocation(line: 649, column: 28, scope: !1113, inlinedAt: !1130)
!1157 = distinct !{!1157, !1149, !1151}
!1158 = !DILocation(line: 652, column: 17, scope: !1159, inlinedAt: !1130)
!1159 = distinct !DILexicalBlock(scope: !1113, file: !1114, line: 652, column: 7)
!1160 = !{!1154, !1139, i64 8}
!1161 = !DILocation(line: 652, column: 7, scope: !1159, inlinedAt: !1130)
!1162 = !DILocation(line: 652, column: 7, scope: !1113, inlinedAt: !1130)
!1163 = !DILocation(line: 655, column: 3, scope: !1113, inlinedAt: !1130)
!1164 = !DILocation(line: 659, column: 29, scope: !1113, inlinedAt: !1130)
!1165 = !DILocation(line: 660, column: 7, scope: !1166, inlinedAt: !1130)
!1166 = distinct !DILexicalBlock(scope: !1113, file: !1114, line: 660, column: 7)
!1167 = !DILocation(line: 660, column: 19, scope: !1166, inlinedAt: !1130)
!1168 = !DILocation(line: 660, column: 22, scope: !1166, inlinedAt: !1130)
!1169 = !DILocation(line: 660, column: 7, scope: !1113, inlinedAt: !1130)
!1170 = !DILocation(line: 666, column: 7, scope: !1171, inlinedAt: !1130)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !1114, line: 661, column: 5)
!1172 = !DILocation(line: 668, column: 5, scope: !1171, inlinedAt: !1130)
!1173 = !DILocation(line: 669, column: 3, scope: !1113, inlinedAt: !1130)
!1174 = !DILocation(line: 671, column: 3, scope: !1113, inlinedAt: !1130)
!1175 = !DILocation(line: 673, column: 1, scope: !1113, inlinedAt: !1130)
!1176 = !DILocation(line: 100, column: 3, scope: !1107)
!1177 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 104, type: !1178, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1181)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!53, !53, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187}
!1182 = !DILocalVariable(name: "argc", arg: 1, scope: !1177, file: !3, line: 104, type: !53)
!1183 = !DILocalVariable(name: "argv", arg: 2, scope: !1177, file: !3, line: 104, type: !1180)
!1184 = !DILocalVariable(name: "ok", scope: !1177, file: !3, line: 106, type: !247)
!1185 = !DILocalVariable(name: "check_basic_portability", scope: !1177, file: !3, line: 107, type: !247)
!1186 = !DILocalVariable(name: "check_extra_portability", scope: !1177, file: !3, line: 108, type: !247)
!1187 = !DILocalVariable(name: "optc", scope: !1177, file: !3, line: 109, type: !53)
!1188 = !DILocalVariable(name: "st", scope: !1189, file: !3, line: 287, type: !1237)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 281, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 275, column: 7)
!1191 = distinct !DISubprogram(name: "validate_file_name", scope: !3, file: !3, line: 247, type: !1192, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!247, !49, !247, !247}
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1188, !1202, !1205, !1208, !1209, !1212, !1213, !1219, !1222, !1223, !1227, !1230, !1231, !1232, !1235, !1236}
!1195 = !DILocalVariable(name: "file", arg: 1, scope: !1191, file: !3, line: 247, type: !49)
!1196 = !DILocalVariable(name: "check_basic_portability", arg: 2, scope: !1191, file: !3, line: 247, type: !247)
!1197 = !DILocalVariable(name: "check_extra_portability", arg: 3, scope: !1191, file: !3, line: 248, type: !247)
!1198 = !DILocalVariable(name: "filelen", scope: !1191, file: !3, line: 250, type: !108)
!1199 = !DILocalVariable(name: "start", scope: !1191, file: !3, line: 253, type: !49)
!1200 = !DILocalVariable(name: "check_component_lengths", scope: !1191, file: !3, line: 256, type: !247)
!1201 = !DILocalVariable(name: "file_exists", scope: !1191, file: !3, line: 259, type: !247)
!1202 = !DILocalVariable(name: "maxsize", scope: !1203, file: !3, line: 300, type: !108)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 299, column: 5)
!1204 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 297, column: 7)
!1205 = !DILocalVariable(name: "size", scope: !1206, file: !3, line: 306, type: !84)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 305, column: 9)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 302, column: 11)
!1208 = !DILocalVariable(name: "dir", scope: !1206, file: !3, line: 307, type: !51)
!1209 = !DILocalVariable(name: "len", scope: !1210, file: !3, line: 322, type: !110)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 321, column: 9)
!1211 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 320, column: 11)
!1212 = !DILocalVariable(name: "maxlen", scope: !1210, file: !3, line: 323, type: !110)
!1213 = !DILocalVariable(name: "length", scope: !1214, file: !3, line: 340, type: !108)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 339, column: 9)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 338, column: 7)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 338, column: 7)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 337, column: 5)
!1218 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 336, column: 7)
!1219 = !DILocalVariable(name: "name_max", scope: !1220, file: !3, line: 358, type: !108)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 353, column: 5)
!1221 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 352, column: 7)
!1222 = !DILocalVariable(name: "known_name_max", scope: !1220, file: !3, line: 361, type: !108)
!1223 = !DILocalVariable(name: "length", scope: !1224, file: !3, line: 365, type: !108)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 364, column: 9)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 363, column: 7)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 363, column: 7)
!1227 = !DILocalVariable(name: "len", scope: !1228, file: !3, line: 371, type: !84)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 370, column: 13)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 367, column: 15)
!1230 = !DILocalVariable(name: "dir", scope: !1228, file: !3, line: 372, type: !51)
!1231 = !DILocalVariable(name: "c", scope: !1228, file: !3, line: 373, type: !50)
!1232 = !DILocalVariable(name: "len", scope: !1233, file: !3, line: 405, type: !110)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 404, column: 13)
!1234 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 403, column: 15)
!1235 = !DILocalVariable(name: "maxlen", scope: !1233, file: !3, line: 406, type: !110)
!1236 = !DILocalVariable(name: "c", scope: !1233, file: !3, line: 407, type: !50)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1238, line: 46, size: 1152, elements: !1239)
!1238 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "")
!1239 = !{!1240, !1242, !1244, !1246, !1248, !1250, !1252, !1253, !1254, !1255, !1257, !1259, !1267, !1268, !1269}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1237, file: !1238, line: 48, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !83, line: 145, baseType: !110)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1237, file: !1238, line: 53, baseType: !1243, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !83, line: 148, baseType: !110)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1237, file: !1238, line: 61, baseType: !1245, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !83, line: 151, baseType: !110)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1237, file: !1238, line: 62, baseType: !1247, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !83, line: 150, baseType: !7)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1237, file: !1238, line: 64, baseType: !1249, size: 32, offset: 224)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !83, line: 146, baseType: !7)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1237, file: !1238, line: 65, baseType: !1251, size: 32, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !83, line: 147, baseType: !7)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1237, file: !1238, line: 67, baseType: !53, size: 32, offset: 288)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1237, file: !1238, line: 69, baseType: !1241, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1237, file: !1238, line: 74, baseType: !82, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1237, file: !1238, line: 78, baseType: !1256, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !83, line: 174, baseType: !84)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1237, file: !1238, line: 80, baseType: !1258, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !83, line: 179, baseType: !84)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1237, file: !1238, line: 91, baseType: !1260, size: 128, offset: 576)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1261, line: 10, size: 128, elements: !1262)
!1261 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "")
!1262 = !{!1263, !1265}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1260, file: !1261, line: 12, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !83, line: 160, baseType: !84)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1260, file: !1261, line: 16, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !83, line: 196, baseType: !84)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1237, file: !1238, line: 92, baseType: !1260, size: 128, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1237, file: !1238, line: 93, baseType: !1260, size: 128, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1237, file: !1238, line: 106, baseType: !1270, size: 192, offset: 960)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1266, size: 192, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 3)
!1273 = !DILocation(line: 287, column: 19, scope: !1189, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 152, column: 11, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 151, column: 3)
!1276 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 151, column: 3)
!1277 = !DILocation(line: 0, scope: !1177)
!1278 = !DILocation(line: 112, column: 21, scope: !1177)
!1279 = !DILocation(line: 112, column: 3, scope: !1177)
!1280 = !DILocation(line: 113, column: 3, scope: !1177)
!1281 = !DILocation(line: 114, column: 3, scope: !1177)
!1282 = !DILocation(line: 115, column: 3, scope: !1177)
!1283 = !DILocation(line: 117, column: 3, scope: !1177)
!1284 = !DILocation(line: 119, column: 3, scope: !1177)
!1285 = !DILocation(line: 119, column: 18, scope: !1177)
!1286 = distinct !{!1286, !1284, !1287}
!1287 = !DILocation(line: 143, column: 5, scope: !1177)
!1288 = !DILocation(line: 130, column: 11, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 122, column: 9)
!1290 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 120, column: 5)
!1291 = !DILocation(line: 136, column: 9, scope: !1289)
!1292 = !DILocation(line: 138, column: 9, scope: !1289)
!1293 = !DILocation(line: 141, column: 11, scope: !1289)
!1294 = !DILocation(line: 145, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 145, column: 7)
!1296 = !{!1297, !1297, i64 0}
!1297 = !{!"int", !1140, i64 0}
!1298 = !DILocation(line: 145, column: 14, scope: !1295)
!1299 = !DILocation(line: 145, column: 7, scope: !1177)
!1300 = !DILocation(line: 151, column: 17, scope: !1275)
!1301 = !DILocation(line: 151, column: 3, scope: !1276)
!1302 = !DILocation(line: 0, scope: !1275)
!1303 = !DILocation(line: 0, scope: !1304, inlinedAt: !1274)
!1304 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 264, column: 7)
!1305 = !DILocation(line: 0, scope: !1189, inlinedAt: !1274)
!1306 = !DILocation(line: 0, scope: !1307, inlinedAt: !1321)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 191, column: 5)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 190, column: 7)
!1309 = distinct !DISubprogram(name: "portable_chars_only", scope: !3, file: !3, line: 181, type: !1310, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!247, !51, !108}
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1320}
!1313 = !DILocalVariable(name: "file", arg: 1, scope: !1309, file: !3, line: 181, type: !51)
!1314 = !DILocalVariable(name: "filelen", arg: 2, scope: !1309, file: !3, line: 181, type: !108)
!1315 = !DILocalVariable(name: "validlen", scope: !1309, file: !3, line: 183, type: !108)
!1316 = !DILocalVariable(name: "invalid", scope: !1309, file: !3, line: 188, type: !51)
!1317 = !DILocalVariable(name: "mbstate", scope: !1307, file: !3, line: 192, type: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !180, line: 21, baseType: !179)
!1320 = !DILocalVariable(name: "charlen", scope: !1307, file: !3, line: 193, type: !108)
!1321 = distinct !DILocation(line: 277, column: 13, scope: !1322, inlinedAt: !1274)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 277, column: 11)
!1323 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 276, column: 5)
!1324 = !DILocation(line: 0, scope: !1220, inlinedAt: !1274)
!1325 = !DILocation(line: 147, column: 20, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 146, column: 5)
!1327 = !DILocation(line: 147, column: 7, scope: !1326)
!1328 = !DILocation(line: 148, column: 7, scope: !1326)
!1329 = !DILocation(line: 152, column: 31, scope: !1275)
!1330 = !DILocation(line: 0, scope: !1191, inlinedAt: !1274)
!1331 = !DILocation(line: 250, column: 20, scope: !1191, inlinedAt: !1274)
!1332 = !DILocation(line: 261, column: 31, scope: !1333, inlinedAt: !1274)
!1333 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 261, column: 7)
!1334 = !DILocalVariable(name: "file", arg: 1, scope: !1335, file: !3, line: 162, type: !51)
!1335 = distinct !DISubprogram(name: "no_leading_hyphen", scope: !3, file: !3, line: 162, type: !1336, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!247, !51}
!1338 = !{!1334, !1339}
!1339 = !DILocalVariable(name: "p", scope: !1335, file: !3, line: 164, type: !51)
!1340 = !DILocation(line: 0, scope: !1335, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 261, column: 36, scope: !1333, inlinedAt: !1274)
!1342 = !DILocation(line: 166, column: 24, scope: !1343, inlinedAt: !1341)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 166, column: 3)
!1344 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 166, column: 3)
!1345 = !DILocation(line: 166, column: 3, scope: !1344, inlinedAt: !1341)
!1346 = !DILocation(line: 166, column: 44, scope: !1343, inlinedAt: !1341)
!1347 = distinct !{!1347, !1345, !1348}
!1348 = !DILocation(line: 172, column: 7, scope: !1344, inlinedAt: !1341)
!1349 = !DILocation(line: 167, column: 11, scope: !1350, inlinedAt: !1341)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 167, column: 9)
!1351 = !DILocation(line: 167, column: 19, scope: !1350, inlinedAt: !1341)
!1352 = !DILocation(line: 167, column: 22, scope: !1350, inlinedAt: !1341)
!1353 = !{!1140, !1140, i64 0}
!1354 = !DILocation(line: 167, column: 28, scope: !1350, inlinedAt: !1341)
!1355 = !DILocation(line: 167, column: 9, scope: !1343, inlinedAt: !1341)
!1356 = !DILocation(line: 169, column: 22, scope: !1357, inlinedAt: !1341)
!1357 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 168, column: 7)
!1358 = !DILocation(line: 170, column: 16, scope: !1357, inlinedAt: !1341)
!1359 = !DILocation(line: 169, column: 9, scope: !1357, inlinedAt: !1341)
!1360 = !DILocation(line: 261, column: 7, scope: !1191, inlinedAt: !1274)
!1361 = !DILocation(line: 265, column: 18, scope: !1304, inlinedAt: !1274)
!1362 = !DILocation(line: 264, column: 32, scope: !1304, inlinedAt: !1274)
!1363 = !DILocation(line: 271, column: 20, scope: !1364, inlinedAt: !1274)
!1364 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 266, column: 5)
!1365 = !DILocation(line: 271, column: 7, scope: !1364, inlinedAt: !1274)
!1366 = !DILocation(line: 272, column: 7, scope: !1364, inlinedAt: !1274)
!1367 = !DILocation(line: 275, column: 7, scope: !1191, inlinedAt: !1274)
!1368 = !DILocation(line: 0, scope: !1309, inlinedAt: !1321)
!1369 = !DILocation(line: 183, column: 21, scope: !1309, inlinedAt: !1321)
!1370 = !DILocation(line: 188, column: 30, scope: !1309, inlinedAt: !1321)
!1371 = !DILocation(line: 190, column: 7, scope: !1308, inlinedAt: !1321)
!1372 = !DILocation(line: 190, column: 7, scope: !1309, inlinedAt: !1321)
!1373 = !DILocation(line: 192, column: 7, scope: !1307, inlinedAt: !1321)
!1374 = !DILocation(line: 192, column: 17, scope: !1307, inlinedAt: !1321)
!1375 = !DILocation(line: 193, column: 49, scope: !1307, inlinedAt: !1321)
!1376 = !DILocation(line: 193, column: 24, scope: !1307, inlinedAt: !1321)
!1377 = !DILocation(line: 195, column: 14, scope: !1307, inlinedAt: !1321)
!1378 = !DILocation(line: 197, column: 45, scope: !1307, inlinedAt: !1321)
!1379 = !DILocation(line: 197, column: 37, scope: !1307, inlinedAt: !1321)
!1380 = !DILocation(line: 196, column: 14, scope: !1307, inlinedAt: !1321)
!1381 = !DILocation(line: 198, column: 14, scope: !1307, inlinedAt: !1321)
!1382 = !DILocation(line: 194, column: 7, scope: !1307, inlinedAt: !1321)
!1383 = !DILocation(line: 200, column: 5, scope: !1308, inlinedAt: !1321)
!1384 = !DILocation(line: 277, column: 11, scope: !1323, inlinedAt: !1274)
!1385 = !DILocation(line: 287, column: 7, scope: !1189, inlinedAt: !1274)
!1386 = !DILocalVariable(name: "__path", arg: 1, scope: !1387, file: !1388, line: 460, type: !51)
!1387 = distinct !DISubprogram(name: "lstat", scope: !1388, file: !1388, line: 460, type: !1389, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1392)
!1388 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "")
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!53, !51, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1392 = !{!1386, !1393}
!1393 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1387, file: !1388, line: 460, type: !1391)
!1394 = !DILocation(line: 0, scope: !1387, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 288, column: 11, scope: !1396, inlinedAt: !1274)
!1396 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 288, column: 11)
!1397 = !DILocation(line: 462, column: 10, scope: !1387, inlinedAt: !1395)
!1398 = !DILocation(line: 288, column: 29, scope: !1396, inlinedAt: !1274)
!1399 = !DILocation(line: 288, column: 11, scope: !1189, inlinedAt: !1274)
!1400 = !DILocation(line: 295, column: 5, scope: !1190, inlinedAt: !1274)
!1401 = !DILocation(line: 352, column: 7, scope: !1191, inlinedAt: !1274)
!1402 = !DILocation(line: 290, column: 16, scope: !1403, inlinedAt: !1274)
!1403 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 290, column: 16)
!1404 = !DILocation(line: 290, column: 22, scope: !1403, inlinedAt: !1274)
!1405 = !DILocation(line: 290, column: 32, scope: !1403, inlinedAt: !1274)
!1406 = !DILocation(line: 292, column: 34, scope: !1407, inlinedAt: !1274)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 291, column: 9)
!1408 = !DILocation(line: 292, column: 11, scope: !1407, inlinedAt: !1274)
!1409 = !DILocation(line: 298, column: 45, scope: !1204, inlinedAt: !1274)
!1410 = !DILocation(line: 298, column: 25, scope: !1204, inlinedAt: !1274)
!1411 = !DILocation(line: 307, column: 30, scope: !1206, inlinedAt: !1274)
!1412 = !DILocation(line: 307, column: 36, scope: !1206, inlinedAt: !1274)
!1413 = !DILocation(line: 0, scope: !1206, inlinedAt: !1274)
!1414 = !DILocation(line: 308, column: 17, scope: !1206, inlinedAt: !1274)
!1415 = !DILocation(line: 309, column: 18, scope: !1206, inlinedAt: !1274)
!1416 = !DILocation(line: 310, column: 20, scope: !1417, inlinedAt: !1274)
!1417 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 310, column: 15)
!1418 = !DILocation(line: 310, column: 24, scope: !1417, inlinedAt: !1274)
!1419 = !DILocation(line: 310, column: 27, scope: !1417, inlinedAt: !1274)
!1420 = !DILocation(line: 310, column: 33, scope: !1417, inlinedAt: !1274)
!1421 = !DILocation(line: 310, column: 15, scope: !1206, inlinedAt: !1274)
!1422 = !DILocation(line: 313, column: 22, scope: !1423, inlinedAt: !1274)
!1423 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 311, column: 13)
!1424 = !DILocation(line: 312, column: 15, scope: !1423, inlinedAt: !1274)
!1425 = !DILocation(line: 0, scope: !1203, inlinedAt: !1274)
!1426 = !DILocation(line: 320, column: 19, scope: !1211, inlinedAt: !1274)
!1427 = !DILocation(line: 320, column: 11, scope: !1203, inlinedAt: !1274)
!1428 = !DILocation(line: 0, scope: !1210, inlinedAt: !1274)
!1429 = !DILocation(line: 323, column: 46, scope: !1210, inlinedAt: !1274)
!1430 = !DILocation(line: 324, column: 24, scope: !1210, inlinedAt: !1274)
!1431 = !DILocation(line: 325, column: 31, scope: !1210, inlinedAt: !1274)
!1432 = !DILocation(line: 324, column: 11, scope: !1210, inlinedAt: !1274)
!1433 = !DILocation(line: 336, column: 33, scope: !1218, inlinedAt: !1274)
!1434 = !DILocation(line: 210, column: 3, scope: !1435, inlinedAt: !1440)
!1435 = distinct !DISubprogram(name: "component_start", scope: !3, file: !3, line: 208, type: !1436, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!49, !49}
!1438 = !{!1439}
!1439 = !DILocalVariable(name: "f", arg: 1, scope: !1435, file: !3, line: 208, type: !49)
!1440 = distinct !DILocation(line: 338, column: 36, scope: !1215, inlinedAt: !1274)
!1441 = !DILocation(line: 0, scope: !1435, inlinedAt: !1440)
!1442 = !DILocation(line: 210, column: 10, scope: !1435, inlinedAt: !1440)
!1443 = !DILocation(line: 211, column: 6, scope: !1435, inlinedAt: !1440)
!1444 = distinct !{!1444, !1445, !1446}
!1445 = !DILocation(line: 338, column: 7, scope: !1216, inlinedAt: !1274)
!1446 = !DILocation(line: 349, column: 9, scope: !1216, inlinedAt: !1274)
!1447 = !DILocation(line: 0, scope: !1448, inlinedAt: !1455)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 221, column: 3)
!1449 = distinct !DISubprogram(name: "component_len", scope: !3, file: !3, line: 218, type: !1450, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!108, !51}
!1452 = !{!1453, !1454}
!1453 = !DILocalVariable(name: "f", arg: 1, scope: !1449, file: !3, line: 218, type: !51)
!1454 = !DILocalVariable(name: "len", scope: !1449, file: !3, line: 220, type: !108)
!1455 = distinct !DILocation(line: 340, column: 27, scope: !1214, inlinedAt: !1274)
!1456 = !DILocation(line: 0, scope: !1449, inlinedAt: !1455)
!1457 = !DILocation(line: 221, column: 17, scope: !1458, inlinedAt: !1455)
!1458 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 221, column: 3)
!1459 = !DILocation(line: 221, column: 31, scope: !1458, inlinedAt: !1455)
!1460 = !DILocation(line: 221, column: 45, scope: !1458, inlinedAt: !1455)
!1461 = !DILocation(line: 221, column: 3, scope: !1458, inlinedAt: !1455)
!1462 = distinct !{!1462, !1463, !1464}
!1463 = !DILocation(line: 221, column: 3, scope: !1448, inlinedAt: !1455)
!1464 = !DILocation(line: 222, column: 5, scope: !1448, inlinedAt: !1455)
!1465 = !DILocation(line: 0, scope: !1214, inlinedAt: !1274)
!1466 = !DILocation(line: 342, column: 32, scope: !1467, inlinedAt: !1274)
!1467 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 342, column: 15)
!1468 = !DILocation(line: 210, column: 3, scope: !1435, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 363, column: 36, scope: !1225, inlinedAt: !1274)
!1470 = !DILocation(line: 361, column: 14, scope: !1220, inlinedAt: !1274)
!1471 = !DILocation(line: 0, scope: !1226, inlinedAt: !1274)
!1472 = !DILocation(line: 0, scope: !1435, inlinedAt: !1469)
!1473 = !DILocation(line: 210, column: 10, scope: !1435, inlinedAt: !1469)
!1474 = !DILocation(line: 211, column: 6, scope: !1435, inlinedAt: !1469)
!1475 = !DILocation(line: 367, column: 15, scope: !1229, inlinedAt: !1274)
!1476 = !DILocation(line: 367, column: 15, scope: !1224, inlinedAt: !1274)
!1477 = !DILocation(line: 372, column: 40, scope: !1228, inlinedAt: !1274)
!1478 = !DILocation(line: 372, column: 34, scope: !1228, inlinedAt: !1274)
!1479 = !DILocation(line: 0, scope: !1228, inlinedAt: !1274)
!1480 = !DILocation(line: 374, column: 15, scope: !1228, inlinedAt: !1274)
!1481 = !DILocation(line: 374, column: 21, scope: !1228, inlinedAt: !1274)
!1482 = !DILocation(line: 375, column: 22, scope: !1228, inlinedAt: !1274)
!1483 = !DILocation(line: 376, column: 21, scope: !1228, inlinedAt: !1274)
!1484 = !DILocation(line: 377, column: 22, scope: !1228, inlinedAt: !1274)
!1485 = !DILocation(line: 378, column: 21, scope: !1486, inlinedAt: !1274)
!1486 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 378, column: 19)
!1487 = !DILocation(line: 378, column: 19, scope: !1228, inlinedAt: !1274)
!1488 = !DILocation(line: 381, column: 25, scope: !1486, inlinedAt: !1274)
!1489 = !DILocation(line: 381, column: 17, scope: !1486, inlinedAt: !1274)
!1490 = !DILocation(line: 391, column: 21, scope: !1491, inlinedAt: !1274)
!1491 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 382, column: 19)
!1492 = !DILocation(line: 394, column: 28, scope: !1491, inlinedAt: !1274)
!1493 = !DILocation(line: 395, column: 31, scope: !1491, inlinedAt: !1274)
!1494 = !DILocation(line: 395, column: 44, scope: !1491, inlinedAt: !1274)
!1495 = !DILocation(line: 395, column: 21, scope: !1491, inlinedAt: !1274)
!1496 = !DILocation(line: 396, column: 28, scope: !1491, inlinedAt: !1274)
!1497 = !DILocation(line: 0, scope: !1229, inlinedAt: !1274)
!1498 = !DILocation(line: 0, scope: !1449, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 401, column: 20, scope: !1224, inlinedAt: !1274)
!1500 = !DILocation(line: 221, column: 8, scope: !1448, inlinedAt: !1499)
!1501 = !DILocation(line: 0, scope: !1448, inlinedAt: !1499)
!1502 = !DILocation(line: 221, column: 17, scope: !1458, inlinedAt: !1499)
!1503 = !DILocation(line: 221, column: 31, scope: !1458, inlinedAt: !1499)
!1504 = !DILocation(line: 221, column: 45, scope: !1458, inlinedAt: !1499)
!1505 = !DILocation(line: 221, column: 3, scope: !1458, inlinedAt: !1499)
!1506 = distinct !{!1506, !1507, !1508}
!1507 = !DILocation(line: 221, column: 3, scope: !1448, inlinedAt: !1499)
!1508 = !DILocation(line: 222, column: 5, scope: !1448, inlinedAt: !1499)
!1509 = !DILocation(line: 0, scope: !1224, inlinedAt: !1274)
!1510 = !DILocation(line: 403, column: 24, scope: !1234, inlinedAt: !1274)
!1511 = !DILocation(line: 403, column: 15, scope: !1224, inlinedAt: !1274)
!1512 = !DILocation(line: 0, scope: !1233, inlinedAt: !1274)
!1513 = !DILocation(line: 408, column: 26, scope: !1233, inlinedAt: !1274)
!1514 = !DILocation(line: 410, column: 22, scope: !1233, inlinedAt: !1274)
!1515 = !DILocation(line: 412, column: 35, scope: !1233, inlinedAt: !1274)
!1516 = !DILocation(line: 409, column: 15, scope: !1233, inlinedAt: !1274)
!1517 = !DILocation(line: 413, column: 26, scope: !1233, inlinedAt: !1274)
!1518 = !DILocation(line: 152, column: 8, scope: !1275)
!1519 = !DILocation(line: 151, column: 25, scope: !1275)
!1520 = distinct !{!1520, !1301, !1521}
!1521 = !DILocation(line: 153, column: 79, scope: !1276)
!1522 = !DILocation(line: 155, column: 10, scope: !1177)
!1523 = !DILocation(line: 156, column: 1, scope: !1177)
!1524 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !205, file: !205, line: 51, type: !118, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !1525)
!1525 = !{!1526}
!1526 = !DILocalVariable(name: "file", arg: 1, scope: !1524, file: !205, line: 51, type: !51)
!1527 = !DILocation(line: 0, scope: !1524)
!1528 = !DILocation(line: 53, column: 13, scope: !1524)
!1529 = !DILocation(line: 54, column: 1, scope: !1524)
!1530 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !205, file: !205, line: 88, type: !1531, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !247}
!1533 = !{!1534}
!1534 = !DILocalVariable(name: "ignore", arg: 1, scope: !1530, file: !205, line: 88, type: !247)
!1535 = !DILocation(line: 0, scope: !1530)
!1536 = !DILocation(line: 90, column: 16, scope: !1530)
!1537 = !{!1538, !1538, i64 0}
!1538 = !{!"_Bool", !1140, i64 0}
!1539 = !DILocation(line: 91, column: 1, scope: !1530)
!1540 = distinct !DISubprogram(name: "close_stdout", scope: !205, file: !205, line: 117, type: !135, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !204, retainedNodes: !1541)
!1541 = !{!1542}
!1542 = !DILocalVariable(name: "write_error", scope: !1543, file: !205, line: 122, type: !51)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !205, line: 121, column: 5)
!1544 = distinct !DILexicalBlock(scope: !1540, file: !205, line: 119, column: 7)
!1545 = !DILocation(line: 119, column: 21, scope: !1544)
!1546 = !DILocation(line: 119, column: 7, scope: !1544)
!1547 = !DILocation(line: 119, column: 29, scope: !1544)
!1548 = !DILocation(line: 120, column: 7, scope: !1544)
!1549 = !DILocation(line: 120, column: 12, scope: !1544)
!1550 = !{i8 0, i8 2}
!1551 = !DILocation(line: 120, column: 25, scope: !1544)
!1552 = !DILocation(line: 120, column: 28, scope: !1544)
!1553 = !DILocation(line: 120, column: 34, scope: !1544)
!1554 = !DILocation(line: 119, column: 7, scope: !1540)
!1555 = !DILocation(line: 122, column: 33, scope: !1543)
!1556 = !DILocation(line: 0, scope: !1543)
!1557 = !DILocation(line: 123, column: 11, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1543, file: !205, line: 123, column: 11)
!1559 = !DILocation(line: 0, scope: !1558)
!1560 = !DILocation(line: 123, column: 11, scope: !1543)
!1561 = !DILocation(line: 124, column: 36, scope: !1558)
!1562 = !DILocation(line: 124, column: 9, scope: !1558)
!1563 = !DILocation(line: 127, column: 9, scope: !1558)
!1564 = !DILocation(line: 129, column: 14, scope: !1543)
!1565 = !DILocation(line: 129, column: 7, scope: !1543)
!1566 = !DILocation(line: 134, column: 42, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1540, file: !205, line: 134, column: 7)
!1568 = !DILocation(line: 134, column: 28, scope: !1567)
!1569 = !DILocation(line: 134, column: 50, scope: !1567)
!1570 = !DILocation(line: 134, column: 7, scope: !1540)
!1571 = !DILocation(line: 135, column: 12, scope: !1567)
!1572 = !DILocation(line: 135, column: 5, scope: !1567)
!1573 = !DILocation(line: 136, column: 1, scope: !1540)
!1574 = distinct !DISubprogram(name: "set_program_name", scope: !257, file: !257, line: 39, type: !118, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !256, retainedNodes: !1575)
!1575 = !{!1576, !1577, !1578}
!1576 = !DILocalVariable(name: "argv0", arg: 1, scope: !1574, file: !257, line: 39, type: !51)
!1577 = !DILocalVariable(name: "slash", scope: !1574, file: !257, line: 46, type: !51)
!1578 = !DILocalVariable(name: "base", scope: !1574, file: !257, line: 47, type: !51)
!1579 = !DILocation(line: 0, scope: !1574)
!1580 = !DILocation(line: 51, column: 13, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1574, file: !257, line: 51, column: 7)
!1582 = !DILocation(line: 51, column: 7, scope: !1574)
!1583 = !DILocation(line: 55, column: 14, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1581, file: !257, line: 52, column: 5)
!1585 = !DILocation(line: 54, column: 7, scope: !1584)
!1586 = !DILocation(line: 56, column: 7, scope: !1584)
!1587 = !DILocation(line: 59, column: 11, scope: !1574)
!1588 = !DILocation(line: 60, column: 17, scope: !1574)
!1589 = !DILocation(line: 60, column: 11, scope: !1574)
!1590 = !DILocation(line: 61, column: 12, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1574, file: !257, line: 61, column: 7)
!1592 = !DILocation(line: 61, column: 20, scope: !1591)
!1593 = !DILocation(line: 61, column: 25, scope: !1591)
!1594 = !DILocation(line: 61, column: 42, scope: !1591)
!1595 = !DILocation(line: 61, column: 28, scope: !1591)
!1596 = !DILocation(line: 61, column: 61, scope: !1591)
!1597 = !DILocation(line: 61, column: 7, scope: !1574)
!1598 = !DILocation(line: 64, column: 11, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !257, line: 64, column: 11)
!1600 = distinct !DILexicalBlock(scope: !1591, file: !257, line: 62, column: 5)
!1601 = !DILocation(line: 64, column: 36, scope: !1599)
!1602 = !DILocation(line: 64, column: 11, scope: !1600)
!1603 = !DILocation(line: 66, column: 24, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !257, line: 65, column: 9)
!1605 = !DILocation(line: 70, column: 41, scope: !1604)
!1606 = !DILocation(line: 72, column: 9, scope: !1604)
!1607 = !DILocation(line: 84, column: 16, scope: !1574)
!1608 = !DILocation(line: 90, column: 27, scope: !1574)
!1609 = !DILocation(line: 92, column: 1, scope: !1574)
!1610 = distinct !DISubprogram(name: "clone_quoting_options", scope: !298, file: !298, line: 122, type: !1611, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1614)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1613, !1613}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1614 = !{!1615, !1616, !1617}
!1615 = !DILocalVariable(name: "o", arg: 1, scope: !1610, file: !298, line: 122, type: !1613)
!1616 = !DILocalVariable(name: "e", scope: !1610, file: !298, line: 124, type: !53)
!1617 = !DILocalVariable(name: "p", scope: !1610, file: !298, line: 125, type: !1613)
!1618 = !DILocation(line: 0, scope: !1610)
!1619 = !DILocation(line: 124, column: 11, scope: !1610)
!1620 = !DILocation(line: 125, column: 40, scope: !1610)
!1621 = !DILocation(line: 125, column: 31, scope: !1610)
!1622 = !DILocation(line: 127, column: 9, scope: !1610)
!1623 = !DILocation(line: 128, column: 3, scope: !1610)
!1624 = distinct !DISubprogram(name: "get_quoting_style", scope: !298, file: !298, line: 133, type: !1625, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!5, !331}
!1627 = !{!1628}
!1628 = !DILocalVariable(name: "o", arg: 1, scope: !1624, file: !298, line: 133, type: !331)
!1629 = !DILocation(line: 0, scope: !1624)
!1630 = !DILocation(line: 135, column: 11, scope: !1624)
!1631 = !DILocation(line: 135, column: 46, scope: !1624)
!1632 = !{!1633, !1140, i64 0}
!1633 = !{!"quoting_options", !1140, i64 0, !1297, i64 4, !1140, i64 8, !1139, i64 40, !1139, i64 48}
!1634 = !DILocation(line: 135, column: 3, scope: !1624)
!1635 = distinct !DISubprogram(name: "set_quoting_style", scope: !298, file: !298, line: 141, type: !1636, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1638)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1613, !5}
!1638 = !{!1639, !1640}
!1639 = !DILocalVariable(name: "o", arg: 1, scope: !1635, file: !298, line: 141, type: !1613)
!1640 = !DILocalVariable(name: "s", arg: 2, scope: !1635, file: !298, line: 141, type: !5)
!1641 = !DILocation(line: 0, scope: !1635)
!1642 = !DILocation(line: 143, column: 4, scope: !1635)
!1643 = !DILocation(line: 143, column: 39, scope: !1635)
!1644 = !DILocation(line: 143, column: 45, scope: !1635)
!1645 = !DILocation(line: 144, column: 1, scope: !1635)
!1646 = distinct !DISubprogram(name: "set_char_quoting", scope: !298, file: !298, line: 152, type: !1647, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1649)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!53, !1613, !50, !53}
!1649 = !{!1650, !1651, !1652, !1653, !1655, !1657, !1658}
!1650 = !DILocalVariable(name: "o", arg: 1, scope: !1646, file: !298, line: 152, type: !1613)
!1651 = !DILocalVariable(name: "c", arg: 2, scope: !1646, file: !298, line: 152, type: !50)
!1652 = !DILocalVariable(name: "i", arg: 3, scope: !1646, file: !298, line: 152, type: !53)
!1653 = !DILocalVariable(name: "uc", scope: !1646, file: !298, line: 154, type: !1654)
!1654 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1655 = !DILocalVariable(name: "p", scope: !1646, file: !298, line: 155, type: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1657 = !DILocalVariable(name: "shift", scope: !1646, file: !298, line: 157, type: !53)
!1658 = !DILocalVariable(name: "r", scope: !1646, file: !298, line: 158, type: !53)
!1659 = !DILocation(line: 0, scope: !1646)
!1660 = !DILocation(line: 156, column: 6, scope: !1646)
!1661 = !DILocation(line: 156, column: 62, scope: !1646)
!1662 = !DILocation(line: 156, column: 57, scope: !1646)
!1663 = !DILocation(line: 157, column: 15, scope: !1646)
!1664 = !DILocation(line: 158, column: 12, scope: !1646)
!1665 = !DILocation(line: 158, column: 15, scope: !1646)
!1666 = !DILocation(line: 158, column: 25, scope: !1646)
!1667 = !DILocation(line: 159, column: 13, scope: !1646)
!1668 = !DILocation(line: 159, column: 18, scope: !1646)
!1669 = !DILocation(line: 159, column: 23, scope: !1646)
!1670 = !DILocation(line: 159, column: 6, scope: !1646)
!1671 = !DILocation(line: 160, column: 3, scope: !1646)
!1672 = distinct !DISubprogram(name: "set_quoting_flags", scope: !298, file: !298, line: 168, type: !1673, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!53, !1613, !53}
!1675 = !{!1676, !1677, !1678}
!1676 = !DILocalVariable(name: "o", arg: 1, scope: !1672, file: !298, line: 168, type: !1613)
!1677 = !DILocalVariable(name: "i", arg: 2, scope: !1672, file: !298, line: 168, type: !53)
!1678 = !DILocalVariable(name: "r", scope: !1672, file: !298, line: 170, type: !53)
!1679 = !DILocation(line: 0, scope: !1672)
!1680 = !DILocation(line: 171, column: 8, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1672, file: !298, line: 171, column: 7)
!1682 = !DILocation(line: 171, column: 7, scope: !1672)
!1683 = !DILocation(line: 173, column: 10, scope: !1672)
!1684 = !{!1633, !1297, i64 4}
!1685 = !DILocation(line: 174, column: 12, scope: !1672)
!1686 = !DILocation(line: 175, column: 3, scope: !1672)
!1687 = distinct !DISubprogram(name: "set_custom_quoting", scope: !298, file: !298, line: 179, type: !1688, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1613, !51, !51}
!1690 = !{!1691, !1692, !1693}
!1691 = !DILocalVariable(name: "o", arg: 1, scope: !1687, file: !298, line: 179, type: !1613)
!1692 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1687, file: !298, line: 180, type: !51)
!1693 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1687, file: !298, line: 180, type: !51)
!1694 = !DILocation(line: 0, scope: !1687)
!1695 = !DILocation(line: 182, column: 8, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !298, line: 182, column: 7)
!1697 = !DILocation(line: 182, column: 7, scope: !1687)
!1698 = !DILocation(line: 184, column: 6, scope: !1687)
!1699 = !DILocation(line: 184, column: 12, scope: !1687)
!1700 = !DILocation(line: 185, column: 8, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1687, file: !298, line: 185, column: 7)
!1702 = !DILocation(line: 185, column: 23, scope: !1701)
!1703 = !DILocation(line: 185, column: 19, scope: !1701)
!1704 = !DILocation(line: 186, column: 5, scope: !1701)
!1705 = !DILocation(line: 187, column: 6, scope: !1687)
!1706 = !DILocation(line: 187, column: 17, scope: !1687)
!1707 = !{!1633, !1139, i64 40}
!1708 = !DILocation(line: 188, column: 6, scope: !1687)
!1709 = !DILocation(line: 188, column: 18, scope: !1687)
!1710 = !{!1633, !1139, i64 48}
!1711 = !DILocation(line: 189, column: 1, scope: !1687)
!1712 = distinct !DISubprogram(name: "quotearg_buffer", scope: !298, file: !298, line: 784, type: !1713, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!108, !49, !108, !51, !108, !331}
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723}
!1716 = !DILocalVariable(name: "buffer", arg: 1, scope: !1712, file: !298, line: 784, type: !49)
!1717 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1712, file: !298, line: 784, type: !108)
!1718 = !DILocalVariable(name: "arg", arg: 3, scope: !1712, file: !298, line: 785, type: !51)
!1719 = !DILocalVariable(name: "argsize", arg: 4, scope: !1712, file: !298, line: 785, type: !108)
!1720 = !DILocalVariable(name: "o", arg: 5, scope: !1712, file: !298, line: 786, type: !331)
!1721 = !DILocalVariable(name: "p", scope: !1712, file: !298, line: 788, type: !331)
!1722 = !DILocalVariable(name: "e", scope: !1712, file: !298, line: 789, type: !53)
!1723 = !DILocalVariable(name: "r", scope: !1712, file: !298, line: 790, type: !108)
!1724 = !DILocation(line: 0, scope: !1712)
!1725 = !DILocation(line: 788, column: 37, scope: !1712)
!1726 = !DILocation(line: 789, column: 11, scope: !1712)
!1727 = !DILocation(line: 791, column: 43, scope: !1712)
!1728 = !DILocation(line: 791, column: 53, scope: !1712)
!1729 = !DILocation(line: 791, column: 60, scope: !1712)
!1730 = !DILocation(line: 792, column: 43, scope: !1712)
!1731 = !DILocation(line: 792, column: 58, scope: !1712)
!1732 = !DILocation(line: 790, column: 14, scope: !1712)
!1733 = !DILocation(line: 793, column: 9, scope: !1712)
!1734 = !DILocation(line: 794, column: 3, scope: !1712)
!1735 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !298, file: !298, line: 256, type: !1736, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1740)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!108, !49, !108, !51, !108, !5, !53, !1738, !51, !51}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1765, !1766, !1767, !1768, !1769, !1772, !1773, !1778, !1781, !1782, !1789, !1792, !1793, !1794, !1795, !1796, !1797}
!1741 = !DILocalVariable(name: "buffer", arg: 1, scope: !1735, file: !298, line: 256, type: !49)
!1742 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1735, file: !298, line: 256, type: !108)
!1743 = !DILocalVariable(name: "arg", arg: 3, scope: !1735, file: !298, line: 257, type: !51)
!1744 = !DILocalVariable(name: "argsize", arg: 4, scope: !1735, file: !298, line: 257, type: !108)
!1745 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1735, file: !298, line: 258, type: !5)
!1746 = !DILocalVariable(name: "flags", arg: 6, scope: !1735, file: !298, line: 258, type: !53)
!1747 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1735, file: !298, line: 259, type: !1738)
!1748 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1735, file: !298, line: 260, type: !51)
!1749 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1735, file: !298, line: 261, type: !51)
!1750 = !DILocalVariable(name: "i", scope: !1735, file: !298, line: 263, type: !108)
!1751 = !DILocalVariable(name: "len", scope: !1735, file: !298, line: 264, type: !108)
!1752 = !DILocalVariable(name: "orig_buffersize", scope: !1735, file: !298, line: 265, type: !108)
!1753 = !DILocalVariable(name: "quote_string", scope: !1735, file: !298, line: 266, type: !51)
!1754 = !DILocalVariable(name: "quote_string_len", scope: !1735, file: !298, line: 267, type: !108)
!1755 = !DILocalVariable(name: "backslash_escapes", scope: !1735, file: !298, line: 268, type: !247)
!1756 = !DILocalVariable(name: "unibyte_locale", scope: !1735, file: !298, line: 269, type: !247)
!1757 = !DILocalVariable(name: "elide_outer_quotes", scope: !1735, file: !298, line: 270, type: !247)
!1758 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1735, file: !298, line: 271, type: !247)
!1759 = !DILocalVariable(name: "encountered_single_quote", scope: !1735, file: !298, line: 272, type: !247)
!1760 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1735, file: !298, line: 273, type: !247)
!1761 = !DILocalVariable(name: "c", scope: !1762, file: !298, line: 402, type: !1654)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !298, line: 401, column: 5)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !298, line: 400, column: 3)
!1764 = distinct !DILexicalBlock(scope: !1735, file: !298, line: 400, column: 3)
!1765 = !DILocalVariable(name: "esc", scope: !1762, file: !298, line: 403, type: !1654)
!1766 = !DILocalVariable(name: "is_right_quote", scope: !1762, file: !298, line: 404, type: !247)
!1767 = !DILocalVariable(name: "escaping", scope: !1762, file: !298, line: 405, type: !247)
!1768 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1762, file: !298, line: 406, type: !247)
!1769 = !DILocalVariable(name: "m", scope: !1770, file: !298, line: 610, type: !108)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 608, column: 11)
!1771 = distinct !DILexicalBlock(scope: !1762, file: !298, line: 426, column: 9)
!1772 = !DILocalVariable(name: "printable", scope: !1770, file: !298, line: 612, type: !247)
!1773 = !DILocalVariable(name: "mbstate", scope: !1774, file: !298, line: 621, type: !1776)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !298, line: 620, column: 15)
!1775 = distinct !DILexicalBlock(scope: !1770, file: !298, line: 614, column: 17)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !180, line: 21, baseType: !353)
!1778 = !DILocalVariable(name: "w", scope: !1779, file: !298, line: 631, type: !1780)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !298, line: 630, column: 19)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !109, line: 74, baseType: !53)
!1781 = !DILocalVariable(name: "bytes", scope: !1779, file: !298, line: 632, type: !108)
!1782 = !DILocalVariable(name: "j", scope: !1783, file: !298, line: 657, type: !108)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !298, line: 656, column: 27)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !298, line: 654, column: 29)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !298, line: 649, column: 23)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !298, line: 641, column: 30)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !298, line: 636, column: 30)
!1788 = distinct !DILexicalBlock(scope: !1779, file: !298, line: 634, column: 25)
!1789 = !DILocalVariable(name: "ilim", scope: !1790, file: !298, line: 684, type: !108)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !298, line: 681, column: 15)
!1791 = distinct !DILexicalBlock(scope: !1770, file: !298, line: 680, column: 17)
!1792 = !DILabel(scope: !1735, name: "process_input", file: !298, line: 314)
!1793 = !DILabel(scope: !1771, name: "c_and_shell_escape", file: !298, line: 512)
!1794 = !DILabel(scope: !1771, name: "c_escape", file: !298, line: 517)
!1795 = !DILabel(scope: !1762, name: "store_escape", file: !298, line: 719)
!1796 = !DILabel(scope: !1762, name: "store_c", file: !298, line: 722)
!1797 = !DILabel(scope: !1735, name: "force_outer_quoting_style", file: !298, line: 763)
!1798 = !DILocation(line: 0, scope: !1735)
!1799 = !DILocation(line: 269, column: 25, scope: !1735)
!1800 = !DILocation(line: 269, column: 36, scope: !1735)
!1801 = !DILocation(line: 270, column: 8, scope: !1735)
!1802 = !DILocation(line: 0, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 526, column: 15)
!1804 = !DILocation(line: 0, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !298, line: 462, column: 19)
!1806 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 455, column: 13)
!1807 = !DILocation(line: 0, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !298, line: 449, column: 20)
!1809 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 428, column: 15)
!1810 = !DILocation(line: 0, scope: !1774)
!1811 = !DILocation(line: 0, scope: !1779)
!1812 = !DILocation(line: 0, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1762, file: !298, line: 712, column: 11)
!1814 = !DILocation(line: 273, column: 3, scope: !1735)
!1815 = !DILocation(line: 265, column: 10, scope: !1735)
!1816 = !DILocation(line: 266, column: 15, scope: !1735)
!1817 = !DILocation(line: 267, column: 10, scope: !1735)
!1818 = !DILocation(line: 268, column: 8, scope: !1735)
!1819 = !DILocation(line: 271, column: 8, scope: !1735)
!1820 = !DILocation(line: 272, column: 8, scope: !1735)
!1821 = !DILocation(line: 273, column: 8, scope: !1735)
!1822 = !DILocation(line: 314, column: 2, scope: !1735)
!1823 = !DILocation(line: 316, column: 3, scope: !1735)
!1824 = !DILocation(line: 323, column: 11, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1735, file: !298, line: 317, column: 5)
!1826 = !DILocation(line: 323, column: 12, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !298, line: 323, column: 11)
!1828 = !DILocation(line: 324, column: 9, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !298, line: 324, column: 9)
!1830 = distinct !DILexicalBlock(scope: !1827, file: !298, line: 324, column: 9)
!1831 = !DILocation(line: 324, column: 9, scope: !1830)
!1832 = !DILocation(line: 362, column: 26, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !298, line: 340, column: 11)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !298, line: 339, column: 13)
!1835 = distinct !DILexicalBlock(scope: !1825, file: !298, line: 338, column: 7)
!1836 = !DILocation(line: 363, column: 27, scope: !1833)
!1837 = !DILocation(line: 364, column: 11, scope: !1833)
!1838 = !DILocation(line: 365, column: 14, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1835, file: !298, line: 365, column: 13)
!1840 = !DILocation(line: 365, column: 13, scope: !1835)
!1841 = !DILocation(line: 366, column: 43, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !298, line: 366, column: 11)
!1843 = distinct !DILexicalBlock(scope: !1839, file: !298, line: 366, column: 11)
!1844 = !DILocation(line: 366, column: 11, scope: !1843)
!1845 = !DILocation(line: 367, column: 13, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !298, line: 367, column: 13)
!1847 = distinct !DILexicalBlock(scope: !1842, file: !298, line: 367, column: 13)
!1848 = !DILocation(line: 367, column: 13, scope: !1847)
!1849 = !DILocation(line: 366, column: 70, scope: !1842)
!1850 = distinct !{!1850, !1844, !1851}
!1851 = !DILocation(line: 367, column: 13, scope: !1843)
!1852 = !DILocation(line: 264, column: 10, scope: !1735)
!1853 = !DILocation(line: 370, column: 28, scope: !1835)
!1854 = !DILocation(line: 372, column: 7, scope: !1825)
!1855 = !DILocation(line: 376, column: 7, scope: !1825)
!1856 = !DILocation(line: 379, column: 7, scope: !1825)
!1857 = !DILocation(line: 381, column: 12, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1825, file: !298, line: 381, column: 11)
!1859 = !DILocation(line: 381, column: 11, scope: !1825)
!1860 = !DILocation(line: 386, column: 12, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1825, file: !298, line: 386, column: 11)
!1862 = !DILocation(line: 386, column: 11, scope: !1825)
!1863 = !DILocation(line: 387, column: 9, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !298, line: 387, column: 9)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !298, line: 387, column: 9)
!1866 = !DILocation(line: 387, column: 9, scope: !1865)
!1867 = !DILocation(line: 394, column: 7, scope: !1825)
!1868 = !DILocation(line: 397, column: 7, scope: !1825)
!1869 = !DILocation(line: 0, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1762, file: !298, line: 408, column: 11)
!1871 = !DILocation(line: 0, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !298, line: 419, column: 15)
!1873 = distinct !DILexicalBlock(scope: !1870, file: !298, line: 418, column: 9)
!1874 = !DILocation(line: 0, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 556, column: 15)
!1876 = !DILocation(line: 0, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 548, column: 15)
!1878 = !DILocation(line: 0, scope: !1784)
!1879 = !DILocation(line: 0, scope: !1791)
!1880 = !DILocation(line: 0, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 509, column: 15)
!1882 = !DILocation(line: 400, column: 8, scope: !1764)
!1883 = !DILocation(line: 0, scope: !1764)
!1884 = !DILocation(line: 400, column: 27, scope: !1763)
!1885 = !DILocation(line: 400, column: 19, scope: !1763)
!1886 = !DILocation(line: 400, column: 41, scope: !1763)
!1887 = !DILocation(line: 400, column: 48, scope: !1763)
!1888 = !DILocation(line: 400, column: 3, scope: !1764)
!1889 = !DILocation(line: 400, column: 60, scope: !1763)
!1890 = !DILocation(line: 0, scope: !1762)
!1891 = !DILocation(line: 409, column: 11, scope: !1870)
!1892 = !DILocation(line: 411, column: 17, scope: !1870)
!1893 = !DILocation(line: 412, column: 39, scope: !1870)
!1894 = !DILocation(line: 416, column: 32, scope: !1870)
!1895 = !DILocation(line: 412, column: 19, scope: !1870)
!1896 = !DILocation(line: 412, column: 15, scope: !1870)
!1897 = !DILocation(line: 417, column: 11, scope: !1870)
!1898 = !DILocation(line: 417, column: 26, scope: !1870)
!1899 = !DILocation(line: 417, column: 14, scope: !1870)
!1900 = !DILocation(line: 417, column: 63, scope: !1870)
!1901 = !DILocation(line: 408, column: 11, scope: !1762)
!1902 = !DILocation(line: 424, column: 11, scope: !1762)
!1903 = !DILocation(line: 425, column: 7, scope: !1762)
!1904 = !DILocation(line: 428, column: 15, scope: !1771)
!1905 = !DILocation(line: 430, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !298, line: 430, column: 15)
!1907 = distinct !DILexicalBlock(scope: !1809, file: !298, line: 429, column: 13)
!1908 = !DILocation(line: 430, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !298, line: 430, column: 15)
!1910 = !DILocation(line: 430, column: 15, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !298, line: 430, column: 15)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !298, line: 430, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !298, line: 430, column: 15)
!1914 = !DILocation(line: 430, column: 15, scope: !1912)
!1915 = !DILocation(line: 430, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !298, line: 430, column: 15)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !298, line: 430, column: 15)
!1918 = !DILocation(line: 430, column: 15, scope: !1917)
!1919 = !DILocation(line: 430, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !298, line: 430, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1913, file: !298, line: 430, column: 15)
!1922 = !DILocation(line: 430, column: 15, scope: !1921)
!1923 = !DILocation(line: 430, column: 15, scope: !1913)
!1924 = !DILocation(line: 430, column: 15, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !298, line: 430, column: 15)
!1926 = distinct !DILexicalBlock(scope: !1906, file: !298, line: 430, column: 15)
!1927 = !DILocation(line: 430, column: 15, scope: !1926)
!1928 = !DILocation(line: 438, column: 19, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1907, file: !298, line: 437, column: 19)
!1930 = !DILocation(line: 438, column: 24, scope: !1929)
!1931 = !DILocation(line: 438, column: 28, scope: !1929)
!1932 = !DILocation(line: 438, column: 38, scope: !1929)
!1933 = !DILocation(line: 438, column: 48, scope: !1929)
!1934 = !DILocation(line: 438, column: 59, scope: !1929)
!1935 = !DILocation(line: 440, column: 19, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !298, line: 440, column: 19)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !298, line: 440, column: 19)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !298, line: 439, column: 17)
!1939 = !DILocation(line: 440, column: 19, scope: !1937)
!1940 = !DILocation(line: 441, column: 19, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !298, line: 441, column: 19)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !298, line: 441, column: 19)
!1943 = !DILocation(line: 441, column: 19, scope: !1942)
!1944 = !DILocation(line: 442, column: 17, scope: !1938)
!1945 = !DILocation(line: 449, column: 20, scope: !1809)
!1946 = !DILocation(line: 454, column: 11, scope: !1771)
!1947 = !DILocation(line: 457, column: 19, scope: !1806)
!1948 = !DILocation(line: 463, column: 19, scope: !1805)
!1949 = !DILocation(line: 463, column: 24, scope: !1805)
!1950 = !DILocation(line: 463, column: 28, scope: !1805)
!1951 = !DILocation(line: 463, column: 38, scope: !1805)
!1952 = !DILocation(line: 463, column: 47, scope: !1805)
!1953 = !DILocation(line: 463, column: 41, scope: !1805)
!1954 = !DILocation(line: 463, column: 52, scope: !1805)
!1955 = !DILocation(line: 462, column: 19, scope: !1806)
!1956 = !DILocation(line: 464, column: 25, scope: !1805)
!1957 = !DILocation(line: 464, column: 17, scope: !1805)
!1958 = !DILocation(line: 471, column: 25, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1805, file: !298, line: 465, column: 19)
!1960 = !DILocation(line: 475, column: 21, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !298, line: 475, column: 21)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !298, line: 475, column: 21)
!1963 = !DILocation(line: 475, column: 21, scope: !1962)
!1964 = !DILocation(line: 476, column: 21, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !298, line: 476, column: 21)
!1966 = distinct !DILexicalBlock(scope: !1959, file: !298, line: 476, column: 21)
!1967 = !DILocation(line: 476, column: 21, scope: !1966)
!1968 = !DILocation(line: 477, column: 21, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !298, line: 477, column: 21)
!1970 = distinct !DILexicalBlock(scope: !1959, file: !298, line: 477, column: 21)
!1971 = !DILocation(line: 477, column: 21, scope: !1970)
!1972 = !DILocation(line: 478, column: 21, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !298, line: 478, column: 21)
!1974 = distinct !DILexicalBlock(scope: !1959, file: !298, line: 478, column: 21)
!1975 = !DILocation(line: 478, column: 21, scope: !1974)
!1976 = !DILocation(line: 479, column: 21, scope: !1959)
!1977 = !DILocation(line: 492, column: 31, scope: !1771)
!1978 = !DILocation(line: 493, column: 31, scope: !1771)
!1979 = !DILocation(line: 495, column: 31, scope: !1771)
!1980 = !DILocation(line: 496, column: 31, scope: !1771)
!1981 = !DILocation(line: 497, column: 31, scope: !1771)
!1982 = !DILocation(line: 500, column: 15, scope: !1771)
!1983 = !DILocation(line: 502, column: 19, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !298, line: 501, column: 13)
!1985 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 500, column: 15)
!1986 = !DILocation(line: 509, column: 33, scope: !1881)
!1987 = !DILocation(line: 0, scope: !1771)
!1988 = !DILocation(line: 512, column: 9, scope: !1771)
!1989 = !DILocation(line: 514, column: 15, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 513, column: 15)
!1991 = !DILocation(line: 517, column: 9, scope: !1771)
!1992 = !DILocation(line: 518, column: 15, scope: !1771)
!1993 = !DILocation(line: 526, column: 15, scope: !1771)
!1994 = !DILocation(line: 526, column: 40, scope: !1803)
!1995 = !DILocation(line: 526, column: 47, scope: !1803)
!1996 = !DILocation(line: 526, column: 18, scope: !1803)
!1997 = !DILocation(line: 530, column: 17, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1771, file: !298, line: 530, column: 15)
!1999 = !DILocation(line: 530, column: 15, scope: !1771)
!2000 = !DILocation(line: 535, column: 11, scope: !1771)
!2001 = !DILocation(line: 549, column: 15, scope: !1877)
!2002 = !DILocation(line: 556, column: 15, scope: !1771)
!2003 = !DILocation(line: 558, column: 19, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1875, file: !298, line: 557, column: 13)
!2005 = !DILocation(line: 561, column: 19, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2004, file: !298, line: 561, column: 19)
!2007 = !DILocation(line: 561, column: 35, scope: !2006)
!2008 = !DILocation(line: 561, column: 30, scope: !2006)
!2009 = !DILocation(line: 570, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !298, line: 570, column: 15)
!2011 = distinct !DILexicalBlock(scope: !2004, file: !298, line: 570, column: 15)
!2012 = !DILocation(line: 570, column: 15, scope: !2011)
!2013 = !DILocation(line: 571, column: 15, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !298, line: 571, column: 15)
!2015 = distinct !DILexicalBlock(scope: !2004, file: !298, line: 571, column: 15)
!2016 = !DILocation(line: 571, column: 15, scope: !2015)
!2017 = !DILocation(line: 572, column: 15, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !298, line: 572, column: 15)
!2019 = distinct !DILexicalBlock(scope: !2004, file: !298, line: 572, column: 15)
!2020 = !DILocation(line: 572, column: 15, scope: !2019)
!2021 = !DILocation(line: 574, column: 13, scope: !2004)
!2022 = !DILocation(line: 614, column: 17, scope: !1770)
!2023 = !DILocation(line: 0, scope: !1770)
!2024 = !DILocation(line: 617, column: 29, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1775, file: !298, line: 615, column: 15)
!2026 = !{!2027, !2027, i64 0}
!2027 = !{!"short", !1140, i64 0}
!2028 = !DILocation(line: 617, column: 27, scope: !2025)
!2029 = !DILocation(line: 618, column: 15, scope: !2025)
!2030 = !DILocation(line: 621, column: 17, scope: !1774)
!2031 = !DILocation(line: 621, column: 27, scope: !1774)
!2032 = !DILocalVariable(name: "__dest", arg: 1, scope: !2033, file: !2034, line: 59, type: !106)
!2033 = distinct !DISubprogram(name: "memset", scope: !2034, file: !2034, line: 59, type: !2035, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2037)
!2034 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!106, !106, !53, !108}
!2037 = !{!2032, !2038, !2039}
!2038 = !DILocalVariable(name: "__ch", arg: 2, scope: !2033, file: !2034, line: 59, type: !53)
!2039 = !DILocalVariable(name: "__len", arg: 3, scope: !2033, file: !2034, line: 59, type: !108)
!2040 = !DILocation(line: 0, scope: !2033, inlinedAt: !2041)
!2041 = distinct !DILocation(line: 622, column: 17, scope: !1774)
!2042 = !DILocation(line: 71, column: 10, scope: !2033, inlinedAt: !2041)
!2043 = !DILocation(line: 626, column: 29, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1774, file: !298, line: 626, column: 21)
!2045 = !DILocation(line: 626, column: 21, scope: !1774)
!2046 = !DILocation(line: 627, column: 29, scope: !2044)
!2047 = !DILocation(line: 627, column: 19, scope: !2044)
!2048 = !DILocation(line: 629, column: 17, scope: !1774)
!2049 = !DILocation(line: 624, column: 19, scope: !1774)
!2050 = !DILocation(line: 625, column: 27, scope: !1774)
!2051 = !DILocation(line: 631, column: 21, scope: !1779)
!2052 = !DILocation(line: 632, column: 56, scope: !1779)
!2053 = !DILocation(line: 632, column: 50, scope: !1779)
!2054 = !DILocation(line: 633, column: 53, scope: !1779)
!2055 = !DILocation(line: 632, column: 36, scope: !1779)
!2056 = !DILocation(line: 634, column: 25, scope: !1779)
!2057 = !DILocation(line: 644, column: 38, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1786, file: !298, line: 642, column: 23)
!2059 = !DILocation(line: 644, column: 48, scope: !2058)
!2060 = !DILocation(line: 644, column: 25, scope: !2058)
!2061 = !DILocation(line: 644, column: 51, scope: !2058)
!2062 = !DILocation(line: 645, column: 28, scope: !2058)
!2063 = !DILocation(line: 644, column: 34, scope: !2058)
!2064 = distinct !{!2064, !2060, !2062}
!2065 = !DILocation(line: 658, column: 43, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !298, line: 658, column: 29)
!2067 = distinct !DILexicalBlock(scope: !1783, file: !298, line: 658, column: 29)
!2068 = !DILocation(line: 655, column: 29, scope: !1784)
!2069 = !DILocation(line: 0, scope: !1783)
!2070 = !DILocation(line: 659, column: 49, scope: !2066)
!2071 = !DILocation(line: 659, column: 39, scope: !2066)
!2072 = !DILocation(line: 659, column: 31, scope: !2066)
!2073 = !DILocation(line: 658, column: 53, scope: !2066)
!2074 = !DILocation(line: 658, column: 29, scope: !2067)
!2075 = distinct !{!2075, !2074, !2076}
!2076 = !DILocation(line: 667, column: 33, scope: !2067)
!2077 = !DILocation(line: 674, column: 19, scope: !1774)
!2078 = !DILocation(line: 670, column: 41, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1785, file: !298, line: 670, column: 29)
!2080 = !DILocation(line: 670, column: 31, scope: !2079)
!2081 = !DILocation(line: 670, column: 29, scope: !1785)
!2082 = !DILocation(line: 672, column: 27, scope: !1785)
!2083 = !DILocation(line: 675, column: 26, scope: !1774)
!2084 = !DILocation(line: 675, column: 24, scope: !1774)
!2085 = !DILocation(line: 674, column: 19, scope: !1779)
!2086 = distinct !{!2086, !2048, !2087}
!2087 = !DILocation(line: 675, column: 44, scope: !1774)
!2088 = !DILocation(line: 676, column: 15, scope: !1775)
!2089 = !DILocation(line: 0, scope: !1775)
!2090 = !DILocation(line: 678, column: 40, scope: !1770)
!2091 = !DILocation(line: 680, column: 19, scope: !1791)
!2092 = !DILocation(line: 680, column: 45, scope: !1791)
!2093 = !DILocation(line: 680, column: 23, scope: !1791)
!2094 = !DILocation(line: 684, column: 33, scope: !1790)
!2095 = !DILocation(line: 0, scope: !1790)
!2096 = !DILocation(line: 686, column: 17, scope: !1790)
!2097 = !DILocation(line: 405, column: 12, scope: !1762)
!2098 = !DILocation(line: 688, column: 43, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !298, line: 688, column: 25)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !298, line: 687, column: 19)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !298, line: 686, column: 17)
!2102 = distinct !DILexicalBlock(scope: !1790, file: !298, line: 686, column: 17)
!2103 = !DILocation(line: 690, column: 25, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !298, line: 690, column: 25)
!2105 = distinct !DILexicalBlock(scope: !2099, file: !298, line: 689, column: 23)
!2106 = !DILocation(line: 690, column: 25, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !298, line: 690, column: 25)
!2108 = !DILocation(line: 690, column: 25, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !298, line: 690, column: 25)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !298, line: 690, column: 25)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !298, line: 690, column: 25)
!2112 = !DILocation(line: 690, column: 25, scope: !2110)
!2113 = !DILocation(line: 690, column: 25, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !298, line: 690, column: 25)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !298, line: 690, column: 25)
!2116 = !DILocation(line: 690, column: 25, scope: !2115)
!2117 = !DILocation(line: 690, column: 25, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !298, line: 690, column: 25)
!2119 = distinct !DILexicalBlock(scope: !2111, file: !298, line: 690, column: 25)
!2120 = !DILocation(line: 690, column: 25, scope: !2119)
!2121 = !DILocation(line: 690, column: 25, scope: !2111)
!2122 = !DILocation(line: 690, column: 25, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !298, line: 690, column: 25)
!2124 = distinct !DILexicalBlock(scope: !2104, file: !298, line: 690, column: 25)
!2125 = !DILocation(line: 690, column: 25, scope: !2124)
!2126 = !DILocation(line: 691, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !298, line: 691, column: 25)
!2128 = distinct !DILexicalBlock(scope: !2105, file: !298, line: 691, column: 25)
!2129 = !DILocation(line: 691, column: 25, scope: !2128)
!2130 = !DILocation(line: 692, column: 25, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !298, line: 692, column: 25)
!2132 = distinct !DILexicalBlock(scope: !2105, file: !298, line: 692, column: 25)
!2133 = !DILocation(line: 692, column: 25, scope: !2132)
!2134 = !DILocation(line: 693, column: 38, scope: !2105)
!2135 = !DILocation(line: 693, column: 33, scope: !2105)
!2136 = !DILocation(line: 694, column: 23, scope: !2105)
!2137 = !DILocation(line: 695, column: 30, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2099, file: !298, line: 695, column: 30)
!2139 = !DILocation(line: 695, column: 30, scope: !2099)
!2140 = !DILocation(line: 697, column: 25, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !298, line: 697, column: 25)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !298, line: 697, column: 25)
!2143 = distinct !DILexicalBlock(scope: !2138, file: !298, line: 696, column: 23)
!2144 = !DILocation(line: 697, column: 25, scope: !2142)
!2145 = !DILocation(line: 699, column: 23, scope: !2143)
!2146 = !DILocation(line: 700, column: 35, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2100, file: !298, line: 700, column: 25)
!2148 = !DILocation(line: 700, column: 30, scope: !2147)
!2149 = !DILocation(line: 700, column: 25, scope: !2100)
!2150 = !DILocation(line: 702, column: 21, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !298, line: 702, column: 21)
!2152 = distinct !DILexicalBlock(scope: !2100, file: !298, line: 702, column: 21)
!2153 = !DILocation(line: 702, column: 21, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !298, line: 702, column: 21)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !298, line: 702, column: 21)
!2156 = distinct !DILexicalBlock(scope: !2151, file: !298, line: 702, column: 21)
!2157 = !DILocation(line: 702, column: 21, scope: !2155)
!2158 = !DILocation(line: 702, column: 21, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !298, line: 702, column: 21)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !298, line: 702, column: 21)
!2161 = !DILocation(line: 702, column: 21, scope: !2160)
!2162 = !DILocation(line: 702, column: 21, scope: !2156)
!2163 = !DILocation(line: 0, scope: !2100)
!2164 = !DILocation(line: 703, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !298, line: 703, column: 21)
!2166 = distinct !DILexicalBlock(scope: !2100, file: !298, line: 703, column: 21)
!2167 = !DILocation(line: 703, column: 21, scope: !2166)
!2168 = !DILocation(line: 704, column: 25, scope: !2100)
!2169 = !DILocation(line: 686, column: 17, scope: !2101)
!2170 = distinct !{!2170, !2171, !2172}
!2171 = !DILocation(line: 686, column: 17, scope: !2102)
!2172 = !DILocation(line: 705, column: 19, scope: !2102)
!2173 = !DILocation(line: 416, column: 30, scope: !1870)
!2174 = !DILocation(line: 712, column: 34, scope: !1813)
!2175 = !DILocation(line: 715, column: 35, scope: !1813)
!2176 = !DILocation(line: 715, column: 17, scope: !1813)
!2177 = !DILocation(line: 715, column: 47, scope: !1813)
!2178 = !DILocation(line: 715, column: 65, scope: !1813)
!2179 = !DILocation(line: 716, column: 15, scope: !1813)
!2180 = !DILocation(line: 716, column: 11, scope: !1813)
!2181 = !DILocation(line: 712, column: 11, scope: !1762)
!2182 = !DILocation(line: 400, column: 10, scope: !1764)
!2183 = !DILocation(line: 719, column: 5, scope: !1762)
!2184 = !DILocation(line: 720, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !1762, file: !298, line: 720, column: 7)
!2186 = !DILocation(line: 720, column: 7, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2185, file: !298, line: 720, column: 7)
!2188 = !DILocation(line: 720, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !298, line: 720, column: 7)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !298, line: 720, column: 7)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !298, line: 720, column: 7)
!2192 = !DILocation(line: 720, column: 7, scope: !2190)
!2193 = !DILocation(line: 720, column: 7, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !298, line: 720, column: 7)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !298, line: 720, column: 7)
!2196 = !DILocation(line: 720, column: 7, scope: !2195)
!2197 = !DILocation(line: 720, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !298, line: 720, column: 7)
!2199 = distinct !DILexicalBlock(scope: !2191, file: !298, line: 720, column: 7)
!2200 = !DILocation(line: 720, column: 7, scope: !2199)
!2201 = !DILocation(line: 720, column: 7, scope: !2191)
!2202 = !DILocation(line: 720, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !298, line: 720, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2185, file: !298, line: 720, column: 7)
!2205 = !DILocation(line: 720, column: 7, scope: !2204)
!2206 = !DILocation(line: 722, column: 5, scope: !1762)
!2207 = !DILocation(line: 723, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !298, line: 723, column: 7)
!2209 = distinct !DILexicalBlock(scope: !1762, file: !298, line: 723, column: 7)
!2210 = !DILocation(line: 424, column: 9, scope: !1762)
!2211 = !DILocation(line: 723, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !298, line: 723, column: 7)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !298, line: 723, column: 7)
!2214 = distinct !DILexicalBlock(scope: !2208, file: !298, line: 723, column: 7)
!2215 = !DILocation(line: 723, column: 7, scope: !2213)
!2216 = !DILocation(line: 723, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !298, line: 723, column: 7)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !298, line: 723, column: 7)
!2219 = !DILocation(line: 723, column: 7, scope: !2218)
!2220 = !DILocation(line: 723, column: 7, scope: !2214)
!2221 = !DILocation(line: 724, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !298, line: 724, column: 7)
!2223 = distinct !DILexicalBlock(scope: !1762, file: !298, line: 724, column: 7)
!2224 = !DILocation(line: 724, column: 7, scope: !2223)
!2225 = !DILocation(line: 726, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !1762, file: !298, line: 726, column: 11)
!2227 = !DILocation(line: 726, column: 11, scope: !1762)
!2228 = !DILocation(line: 728, column: 5, scope: !1763)
!2229 = !DILocation(line: 400, column: 75, scope: !1763)
!2230 = !DILocation(line: 400, column: 3, scope: !1763)
!2231 = distinct !{!2231, !1888, !2232}
!2232 = !DILocation(line: 728, column: 5, scope: !1764)
!2233 = !DILocation(line: 730, column: 11, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !1735, file: !298, line: 730, column: 7)
!2235 = !DILocation(line: 730, column: 16, scope: !2234)
!2236 = !DILocation(line: 738, column: 51, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !1735, file: !298, line: 738, column: 7)
!2238 = !DILocation(line: 739, column: 10, scope: !2237)
!2239 = !DILocation(line: 741, column: 11, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !298, line: 741, column: 11)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !298, line: 740, column: 5)
!2242 = !DILocation(line: 741, column: 11, scope: !2241)
!2243 = !DILocation(line: 742, column: 16, scope: !2240)
!2244 = !DILocation(line: 742, column: 9, scope: !2240)
!2245 = !DILocation(line: 746, column: 18, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2240, file: !298, line: 746, column: 16)
!2247 = !DILocation(line: 746, column: 32, scope: !2246)
!2248 = !DILocation(line: 746, column: 29, scope: !2246)
!2249 = !DILocation(line: 755, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !1735, file: !298, line: 755, column: 7)
!2251 = !DILocation(line: 755, column: 20, scope: !2250)
!2252 = !DILocation(line: 756, column: 12, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !298, line: 756, column: 5)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !298, line: 756, column: 5)
!2255 = !DILocation(line: 756, column: 5, scope: !2254)
!2256 = !DILocation(line: 757, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !298, line: 757, column: 7)
!2258 = distinct !DILexicalBlock(scope: !2253, file: !298, line: 757, column: 7)
!2259 = !DILocation(line: 757, column: 7, scope: !2258)
!2260 = !DILocation(line: 756, column: 39, scope: !2253)
!2261 = distinct !{!2261, !2255, !2262}
!2262 = !DILocation(line: 757, column: 7, scope: !2254)
!2263 = !DILocation(line: 759, column: 11, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !1735, file: !298, line: 759, column: 7)
!2265 = !DILocation(line: 759, column: 7, scope: !1735)
!2266 = !DILocation(line: 760, column: 5, scope: !2264)
!2267 = !DILocation(line: 760, column: 17, scope: !2264)
!2268 = !DILocation(line: 763, column: 2, scope: !1735)
!2269 = !DILocation(line: 766, column: 51, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1735, file: !298, line: 766, column: 7)
!2271 = !DILocation(line: 766, column: 21, scope: !2270)
!2272 = !DILocation(line: 770, column: 42, scope: !1735)
!2273 = !DILocation(line: 768, column: 10, scope: !1735)
!2274 = !DILocation(line: 768, column: 3, scope: !1735)
!2275 = !DILocation(line: 772, column: 1, scope: !1735)
!2276 = distinct !DISubprogram(name: "gettext_quote", scope: !298, file: !298, line: 207, type: !2277, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!51, !51, !5}
!2279 = !{!2280, !2281, !2282, !2283}
!2280 = !DILocalVariable(name: "msgid", arg: 1, scope: !2276, file: !298, line: 207, type: !51)
!2281 = !DILocalVariable(name: "s", arg: 2, scope: !2276, file: !298, line: 207, type: !5)
!2282 = !DILocalVariable(name: "translation", scope: !2276, file: !298, line: 209, type: !51)
!2283 = !DILocalVariable(name: "locale_code", scope: !2276, file: !298, line: 210, type: !51)
!2284 = !DILocation(line: 0, scope: !2276)
!2285 = !DILocation(line: 209, column: 29, scope: !2276)
!2286 = !DILocation(line: 212, column: 19, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2276, file: !298, line: 212, column: 7)
!2288 = !DILocation(line: 212, column: 7, scope: !2276)
!2289 = !DILocation(line: 233, column: 17, scope: !2276)
!2290 = !DILocalVariable(name: "s1", arg: 1, scope: !2291, file: !2292, line: 160, type: !51)
!2291 = distinct !DISubprogram(name: "strcaseeq0", scope: !2292, file: !2292, line: 160, type: !2293, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2295)
!2292 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50, !50, !50}
!2295 = !{!2290, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!2296 = !DILocalVariable(name: "s2", arg: 2, scope: !2291, file: !2292, line: 160, type: !51)
!2297 = !DILocalVariable(name: "s20", arg: 3, scope: !2291, file: !2292, line: 160, type: !50)
!2298 = !DILocalVariable(name: "s21", arg: 4, scope: !2291, file: !2292, line: 160, type: !50)
!2299 = !DILocalVariable(name: "s22", arg: 5, scope: !2291, file: !2292, line: 160, type: !50)
!2300 = !DILocalVariable(name: "s23", arg: 6, scope: !2291, file: !2292, line: 160, type: !50)
!2301 = !DILocalVariable(name: "s24", arg: 7, scope: !2291, file: !2292, line: 160, type: !50)
!2302 = !DILocalVariable(name: "s25", arg: 8, scope: !2291, file: !2292, line: 160, type: !50)
!2303 = !DILocalVariable(name: "s26", arg: 9, scope: !2291, file: !2292, line: 160, type: !50)
!2304 = !DILocalVariable(name: "s27", arg: 10, scope: !2291, file: !2292, line: 160, type: !50)
!2305 = !DILocalVariable(name: "s28", arg: 11, scope: !2291, file: !2292, line: 160, type: !50)
!2306 = !DILocation(line: 0, scope: !2291, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 234, column: 7, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2276, file: !298, line: 234, column: 7)
!2309 = !DILocation(line: 162, column: 7, scope: !2310, inlinedAt: !2307)
!2310 = distinct !DILexicalBlock(scope: !2291, file: !2292, line: 162, column: 7)
!2311 = !DILocalVariable(name: "s1", arg: 1, scope: !2312, file: !2292, line: 146, type: !51)
!2312 = distinct !DISubprogram(name: "strcaseeq1", scope: !2292, file: !2292, line: 146, type: !2313, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50, !50}
!2315 = !{!2311, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324}
!2316 = !DILocalVariable(name: "s2", arg: 2, scope: !2312, file: !2292, line: 146, type: !51)
!2317 = !DILocalVariable(name: "s21", arg: 3, scope: !2312, file: !2292, line: 146, type: !50)
!2318 = !DILocalVariable(name: "s22", arg: 4, scope: !2312, file: !2292, line: 146, type: !50)
!2319 = !DILocalVariable(name: "s23", arg: 5, scope: !2312, file: !2292, line: 146, type: !50)
!2320 = !DILocalVariable(name: "s24", arg: 6, scope: !2312, file: !2292, line: 146, type: !50)
!2321 = !DILocalVariable(name: "s25", arg: 7, scope: !2312, file: !2292, line: 146, type: !50)
!2322 = !DILocalVariable(name: "s26", arg: 8, scope: !2312, file: !2292, line: 146, type: !50)
!2323 = !DILocalVariable(name: "s27", arg: 9, scope: !2312, file: !2292, line: 146, type: !50)
!2324 = !DILocalVariable(name: "s28", arg: 10, scope: !2312, file: !2292, line: 146, type: !50)
!2325 = !DILocation(line: 0, scope: !2312, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 167, column: 16, scope: !2327, inlinedAt: !2307)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !2292, line: 164, column: 11)
!2328 = distinct !DILexicalBlock(scope: !2310, file: !2292, line: 163, column: 5)
!2329 = !DILocation(line: 148, column: 7, scope: !2330, inlinedAt: !2326)
!2330 = distinct !DILexicalBlock(scope: !2312, file: !2292, line: 148, column: 7)
!2331 = !DILocalVariable(name: "s1", arg: 1, scope: !2332, file: !2292, line: 132, type: !51)
!2332 = distinct !DISubprogram(name: "strcaseeq2", scope: !2292, file: !2292, line: 132, type: !2333, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50, !50}
!2335 = !{!2331, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343}
!2336 = !DILocalVariable(name: "s2", arg: 2, scope: !2332, file: !2292, line: 132, type: !51)
!2337 = !DILocalVariable(name: "s22", arg: 3, scope: !2332, file: !2292, line: 132, type: !50)
!2338 = !DILocalVariable(name: "s23", arg: 4, scope: !2332, file: !2292, line: 132, type: !50)
!2339 = !DILocalVariable(name: "s24", arg: 5, scope: !2332, file: !2292, line: 132, type: !50)
!2340 = !DILocalVariable(name: "s25", arg: 6, scope: !2332, file: !2292, line: 132, type: !50)
!2341 = !DILocalVariable(name: "s26", arg: 7, scope: !2332, file: !2292, line: 132, type: !50)
!2342 = !DILocalVariable(name: "s27", arg: 8, scope: !2332, file: !2292, line: 132, type: !50)
!2343 = !DILocalVariable(name: "s28", arg: 9, scope: !2332, file: !2292, line: 132, type: !50)
!2344 = !DILocation(line: 0, scope: !2332, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 153, column: 16, scope: !2346, inlinedAt: !2326)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !2292, line: 150, column: 11)
!2347 = distinct !DILexicalBlock(scope: !2330, file: !2292, line: 149, column: 5)
!2348 = !DILocation(line: 134, column: 7, scope: !2349, inlinedAt: !2345)
!2349 = distinct !DILexicalBlock(scope: !2332, file: !2292, line: 134, column: 7)
!2350 = !DILocalVariable(name: "s1", arg: 1, scope: !2351, file: !2292, line: 118, type: !51)
!2351 = distinct !DISubprogram(name: "strcaseeq3", scope: !2292, file: !2292, line: 118, type: !2352, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!53, !51, !51, !50, !50, !50, !50, !50, !50}
!2354 = !{!2350, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2355 = !DILocalVariable(name: "s2", arg: 2, scope: !2351, file: !2292, line: 118, type: !51)
!2356 = !DILocalVariable(name: "s23", arg: 3, scope: !2351, file: !2292, line: 118, type: !50)
!2357 = !DILocalVariable(name: "s24", arg: 4, scope: !2351, file: !2292, line: 118, type: !50)
!2358 = !DILocalVariable(name: "s25", arg: 5, scope: !2351, file: !2292, line: 118, type: !50)
!2359 = !DILocalVariable(name: "s26", arg: 6, scope: !2351, file: !2292, line: 118, type: !50)
!2360 = !DILocalVariable(name: "s27", arg: 7, scope: !2351, file: !2292, line: 118, type: !50)
!2361 = !DILocalVariable(name: "s28", arg: 8, scope: !2351, file: !2292, line: 118, type: !50)
!2362 = !DILocation(line: 0, scope: !2351, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 139, column: 16, scope: !2364, inlinedAt: !2345)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !2292, line: 136, column: 11)
!2365 = distinct !DILexicalBlock(scope: !2349, file: !2292, line: 135, column: 5)
!2366 = !DILocation(line: 120, column: 7, scope: !2367, inlinedAt: !2363)
!2367 = distinct !DILexicalBlock(scope: !2351, file: !2292, line: 120, column: 7)
!2368 = !DILocation(line: 120, column: 7, scope: !2351, inlinedAt: !2363)
!2369 = !DILocalVariable(name: "s1", arg: 1, scope: !2370, file: !2292, line: 104, type: !51)
!2370 = distinct !DISubprogram(name: "strcaseeq4", scope: !2292, file: !2292, line: 104, type: !2371, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!53, !51, !51, !50, !50, !50, !50, !50}
!2373 = !{!2369, !2374, !2375, !2376, !2377, !2378, !2379}
!2374 = !DILocalVariable(name: "s2", arg: 2, scope: !2370, file: !2292, line: 104, type: !51)
!2375 = !DILocalVariable(name: "s24", arg: 3, scope: !2370, file: !2292, line: 104, type: !50)
!2376 = !DILocalVariable(name: "s25", arg: 4, scope: !2370, file: !2292, line: 104, type: !50)
!2377 = !DILocalVariable(name: "s26", arg: 5, scope: !2370, file: !2292, line: 104, type: !50)
!2378 = !DILocalVariable(name: "s27", arg: 6, scope: !2370, file: !2292, line: 104, type: !50)
!2379 = !DILocalVariable(name: "s28", arg: 7, scope: !2370, file: !2292, line: 104, type: !50)
!2380 = !DILocation(line: 0, scope: !2370, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 125, column: 16, scope: !2382, inlinedAt: !2363)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !2292, line: 122, column: 11)
!2383 = distinct !DILexicalBlock(scope: !2367, file: !2292, line: 121, column: 5)
!2384 = !DILocation(line: 106, column: 7, scope: !2385, inlinedAt: !2381)
!2385 = distinct !DILexicalBlock(scope: !2370, file: !2292, line: 106, column: 7)
!2386 = !DILocation(line: 106, column: 7, scope: !2370, inlinedAt: !2381)
!2387 = !DILocalVariable(name: "s1", arg: 1, scope: !2388, file: !2292, line: 90, type: !51)
!2388 = distinct !DISubprogram(name: "strcaseeq5", scope: !2292, file: !2292, line: 90, type: !2389, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!53, !51, !51, !50, !50, !50, !50}
!2391 = !{!2387, !2392, !2393, !2394, !2395, !2396}
!2392 = !DILocalVariable(name: "s2", arg: 2, scope: !2388, file: !2292, line: 90, type: !51)
!2393 = !DILocalVariable(name: "s25", arg: 3, scope: !2388, file: !2292, line: 90, type: !50)
!2394 = !DILocalVariable(name: "s26", arg: 4, scope: !2388, file: !2292, line: 90, type: !50)
!2395 = !DILocalVariable(name: "s27", arg: 5, scope: !2388, file: !2292, line: 90, type: !50)
!2396 = !DILocalVariable(name: "s28", arg: 6, scope: !2388, file: !2292, line: 90, type: !50)
!2397 = !DILocation(line: 0, scope: !2388, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 111, column: 16, scope: !2399, inlinedAt: !2381)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !2292, line: 108, column: 11)
!2400 = distinct !DILexicalBlock(scope: !2385, file: !2292, line: 107, column: 5)
!2401 = !DILocation(line: 92, column: 7, scope: !2402, inlinedAt: !2398)
!2402 = distinct !DILexicalBlock(scope: !2388, file: !2292, line: 92, column: 7)
!2403 = !DILocation(line: 92, column: 7, scope: !2388, inlinedAt: !2398)
!2404 = !DILocation(line: 235, column: 12, scope: !2308)
!2405 = !DILocation(line: 235, column: 21, scope: !2308)
!2406 = !DILocation(line: 235, column: 5, scope: !2308)
!2407 = !DILocation(line: 0, scope: !2312, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 167, column: 16, scope: !2327, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 236, column: 7, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2276, file: !298, line: 236, column: 7)
!2411 = !DILocation(line: 148, column: 7, scope: !2330, inlinedAt: !2408)
!2412 = !DILocation(line: 0, scope: !2332, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 153, column: 16, scope: !2346, inlinedAt: !2408)
!2414 = !DILocation(line: 134, column: 7, scope: !2349, inlinedAt: !2413)
!2415 = !DILocation(line: 134, column: 7, scope: !2332, inlinedAt: !2413)
!2416 = !DILocation(line: 0, scope: !2351, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 139, column: 16, scope: !2364, inlinedAt: !2413)
!2418 = !DILocation(line: 120, column: 7, scope: !2367, inlinedAt: !2417)
!2419 = !DILocation(line: 120, column: 7, scope: !2351, inlinedAt: !2417)
!2420 = !DILocation(line: 0, scope: !2370, inlinedAt: !2421)
!2421 = distinct !DILocation(line: 125, column: 16, scope: !2382, inlinedAt: !2417)
!2422 = !DILocation(line: 106, column: 7, scope: !2385, inlinedAt: !2421)
!2423 = !DILocation(line: 106, column: 7, scope: !2370, inlinedAt: !2421)
!2424 = !DILocation(line: 0, scope: !2388, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 111, column: 16, scope: !2399, inlinedAt: !2421)
!2426 = !DILocation(line: 92, column: 7, scope: !2402, inlinedAt: !2425)
!2427 = !DILocation(line: 92, column: 7, scope: !2388, inlinedAt: !2425)
!2428 = !DILocalVariable(name: "s1", arg: 1, scope: !2429, file: !2292, line: 76, type: !51)
!2429 = distinct !DISubprogram(name: "strcaseeq6", scope: !2292, file: !2292, line: 76, type: !2430, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!53, !51, !51, !50, !50, !50}
!2432 = !{!2428, !2433, !2434, !2435, !2436}
!2433 = !DILocalVariable(name: "s2", arg: 2, scope: !2429, file: !2292, line: 76, type: !51)
!2434 = !DILocalVariable(name: "s26", arg: 3, scope: !2429, file: !2292, line: 76, type: !50)
!2435 = !DILocalVariable(name: "s27", arg: 4, scope: !2429, file: !2292, line: 76, type: !50)
!2436 = !DILocalVariable(name: "s28", arg: 5, scope: !2429, file: !2292, line: 76, type: !50)
!2437 = !DILocation(line: 0, scope: !2429, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 97, column: 16, scope: !2439, inlinedAt: !2425)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !2292, line: 94, column: 11)
!2440 = distinct !DILexicalBlock(scope: !2402, file: !2292, line: 93, column: 5)
!2441 = !DILocation(line: 78, column: 7, scope: !2442, inlinedAt: !2438)
!2442 = distinct !DILexicalBlock(scope: !2429, file: !2292, line: 78, column: 7)
!2443 = !DILocation(line: 78, column: 7, scope: !2429, inlinedAt: !2438)
!2444 = !DILocalVariable(name: "s1", arg: 1, scope: !2445, file: !2292, line: 62, type: !51)
!2445 = distinct !DISubprogram(name: "strcaseeq7", scope: !2292, file: !2292, line: 62, type: !2446, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!53, !51, !51, !50, !50}
!2448 = !{!2444, !2449, !2450, !2451}
!2449 = !DILocalVariable(name: "s2", arg: 2, scope: !2445, file: !2292, line: 62, type: !51)
!2450 = !DILocalVariable(name: "s27", arg: 3, scope: !2445, file: !2292, line: 62, type: !50)
!2451 = !DILocalVariable(name: "s28", arg: 4, scope: !2445, file: !2292, line: 62, type: !50)
!2452 = !DILocation(line: 0, scope: !2445, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 83, column: 16, scope: !2454, inlinedAt: !2438)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !2292, line: 80, column: 11)
!2455 = distinct !DILexicalBlock(scope: !2442, file: !2292, line: 79, column: 5)
!2456 = !DILocation(line: 64, column: 7, scope: !2457, inlinedAt: !2453)
!2457 = distinct !DILexicalBlock(scope: !2445, file: !2292, line: 64, column: 7)
!2458 = !DILocation(line: 236, column: 7, scope: !2276)
!2459 = !DILocation(line: 237, column: 12, scope: !2410)
!2460 = !DILocation(line: 237, column: 21, scope: !2410)
!2461 = !DILocation(line: 237, column: 5, scope: !2410)
!2462 = !DILocation(line: 239, column: 13, scope: !2276)
!2463 = !DILocation(line: 239, column: 11, scope: !2276)
!2464 = !DILocation(line: 239, column: 3, scope: !2276)
!2465 = !DILocation(line: 240, column: 1, scope: !2276)
!2466 = distinct !DISubprogram(name: "quotearg_alloc", scope: !298, file: !298, line: 799, type: !2467, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!49, !51, !108, !331}
!2469 = !{!2470, !2471, !2472}
!2470 = !DILocalVariable(name: "arg", arg: 1, scope: !2466, file: !298, line: 799, type: !51)
!2471 = !DILocalVariable(name: "argsize", arg: 2, scope: !2466, file: !298, line: 799, type: !108)
!2472 = !DILocalVariable(name: "o", arg: 3, scope: !2466, file: !298, line: 800, type: !331)
!2473 = !DILocation(line: 0, scope: !2466)
!2474 = !DILocalVariable(name: "arg", arg: 1, scope: !2475, file: !298, line: 812, type: !51)
!2475 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !298, file: !298, line: 812, type: !2476, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!49, !51, !108, !495, !331}
!2478 = !{!2474, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2479 = !DILocalVariable(name: "argsize", arg: 2, scope: !2475, file: !298, line: 812, type: !108)
!2480 = !DILocalVariable(name: "size", arg: 3, scope: !2475, file: !298, line: 812, type: !495)
!2481 = !DILocalVariable(name: "o", arg: 4, scope: !2475, file: !298, line: 813, type: !331)
!2482 = !DILocalVariable(name: "p", scope: !2475, file: !298, line: 815, type: !331)
!2483 = !DILocalVariable(name: "e", scope: !2475, file: !298, line: 816, type: !53)
!2484 = !DILocalVariable(name: "flags", scope: !2475, file: !298, line: 818, type: !53)
!2485 = !DILocalVariable(name: "bufsize", scope: !2475, file: !298, line: 819, type: !108)
!2486 = !DILocalVariable(name: "buf", scope: !2475, file: !298, line: 823, type: !49)
!2487 = !DILocation(line: 0, scope: !2475, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 802, column: 10, scope: !2466)
!2489 = !DILocation(line: 815, column: 37, scope: !2475, inlinedAt: !2488)
!2490 = !DILocation(line: 816, column: 11, scope: !2475, inlinedAt: !2488)
!2491 = !DILocation(line: 818, column: 18, scope: !2475, inlinedAt: !2488)
!2492 = !DILocation(line: 818, column: 24, scope: !2475, inlinedAt: !2488)
!2493 = !DILocation(line: 819, column: 69, scope: !2475, inlinedAt: !2488)
!2494 = !DILocation(line: 820, column: 53, scope: !2475, inlinedAt: !2488)
!2495 = !DILocation(line: 821, column: 49, scope: !2475, inlinedAt: !2488)
!2496 = !DILocation(line: 822, column: 49, scope: !2475, inlinedAt: !2488)
!2497 = !DILocation(line: 819, column: 20, scope: !2475, inlinedAt: !2488)
!2498 = !DILocation(line: 822, column: 62, scope: !2475, inlinedAt: !2488)
!2499 = !DILocalVariable(name: "n", arg: 1, scope: !2500, file: !322, line: 216, type: !108)
!2500 = distinct !DISubprogram(name: "xcharalloc", scope: !322, file: !322, line: 216, type: !2501, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!49, !108}
!2503 = !{!2499}
!2504 = !DILocation(line: 0, scope: !2500, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 823, column: 15, scope: !2475, inlinedAt: !2488)
!2506 = !DILocation(line: 218, column: 10, scope: !2500, inlinedAt: !2505)
!2507 = !DILocation(line: 824, column: 60, scope: !2475, inlinedAt: !2488)
!2508 = !DILocation(line: 826, column: 32, scope: !2475, inlinedAt: !2488)
!2509 = !DILocation(line: 826, column: 47, scope: !2475, inlinedAt: !2488)
!2510 = !DILocation(line: 824, column: 3, scope: !2475, inlinedAt: !2488)
!2511 = !DILocation(line: 827, column: 9, scope: !2475, inlinedAt: !2488)
!2512 = !DILocation(line: 802, column: 3, scope: !2466)
!2513 = !DILocation(line: 0, scope: !2475)
!2514 = !DILocation(line: 815, column: 37, scope: !2475)
!2515 = !DILocation(line: 816, column: 11, scope: !2475)
!2516 = !DILocation(line: 818, column: 18, scope: !2475)
!2517 = !DILocation(line: 818, column: 27, scope: !2475)
!2518 = !DILocation(line: 818, column: 24, scope: !2475)
!2519 = !DILocation(line: 819, column: 69, scope: !2475)
!2520 = !DILocation(line: 820, column: 53, scope: !2475)
!2521 = !DILocation(line: 821, column: 49, scope: !2475)
!2522 = !DILocation(line: 822, column: 49, scope: !2475)
!2523 = !DILocation(line: 819, column: 20, scope: !2475)
!2524 = !DILocation(line: 822, column: 62, scope: !2475)
!2525 = !DILocation(line: 0, scope: !2500, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 823, column: 15, scope: !2475)
!2527 = !DILocation(line: 218, column: 10, scope: !2500, inlinedAt: !2526)
!2528 = !DILocation(line: 824, column: 60, scope: !2475)
!2529 = !DILocation(line: 826, column: 32, scope: !2475)
!2530 = !DILocation(line: 826, column: 47, scope: !2475)
!2531 = !DILocation(line: 824, column: 3, scope: !2475)
!2532 = !DILocation(line: 827, column: 9, scope: !2475)
!2533 = !DILocation(line: 828, column: 7, scope: !2475)
!2534 = !DILocation(line: 829, column: 11, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2475, file: !298, line: 828, column: 7)
!2536 = !{!2537, !2537, i64 0}
!2537 = !{!"long", !1140, i64 0}
!2538 = !DILocation(line: 829, column: 5, scope: !2535)
!2539 = !DILocation(line: 830, column: 3, scope: !2475)
!2540 = distinct !DISubprogram(name: "quotearg_free", scope: !298, file: !298, line: 848, type: !135, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2541)
!2541 = !{!2542, !2543}
!2542 = !DILocalVariable(name: "sv", scope: !2540, file: !298, line: 850, type: !404)
!2543 = !DILocalVariable(name: "i", scope: !2540, file: !298, line: 851, type: !53)
!2544 = !DILocation(line: 850, column: 24, scope: !2540)
!2545 = !DILocation(line: 0, scope: !2540)
!2546 = !DILocation(line: 852, column: 19, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !298, line: 852, column: 3)
!2548 = distinct !DILexicalBlock(scope: !2540, file: !298, line: 852, column: 3)
!2549 = !DILocation(line: 852, column: 17, scope: !2547)
!2550 = !DILocation(line: 852, column: 3, scope: !2548)
!2551 = !DILocation(line: 853, column: 17, scope: !2547)
!2552 = !{!2553, !1139, i64 8}
!2553 = !{!"slotvec", !2537, i64 0, !1139, i64 8}
!2554 = !DILocation(line: 853, column: 5, scope: !2547)
!2555 = !DILocation(line: 852, column: 28, scope: !2547)
!2556 = distinct !{!2556, !2550, !2557}
!2557 = !DILocation(line: 853, column: 20, scope: !2548)
!2558 = !DILocation(line: 854, column: 13, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2540, file: !298, line: 854, column: 7)
!2560 = !DILocation(line: 854, column: 17, scope: !2559)
!2561 = !DILocation(line: 854, column: 7, scope: !2540)
!2562 = !DILocation(line: 856, column: 7, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !298, line: 855, column: 5)
!2564 = !DILocation(line: 857, column: 21, scope: !2563)
!2565 = !{!2553, !2537, i64 0}
!2566 = !DILocation(line: 858, column: 20, scope: !2563)
!2567 = !DILocation(line: 859, column: 5, scope: !2563)
!2568 = !DILocation(line: 860, column: 10, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2540, file: !298, line: 860, column: 7)
!2570 = !DILocation(line: 860, column: 7, scope: !2540)
!2571 = !DILocation(line: 862, column: 13, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2569, file: !298, line: 861, column: 5)
!2573 = !DILocation(line: 862, column: 7, scope: !2572)
!2574 = !DILocation(line: 863, column: 15, scope: !2572)
!2575 = !DILocation(line: 864, column: 5, scope: !2572)
!2576 = !DILocation(line: 865, column: 10, scope: !2540)
!2577 = !DILocation(line: 866, column: 1, scope: !2540)
!2578 = distinct !DISubprogram(name: "quotearg_n", scope: !298, file: !298, line: 931, type: !122, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2579)
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "n", arg: 1, scope: !2578, file: !298, line: 931, type: !53)
!2581 = !DILocalVariable(name: "arg", arg: 2, scope: !2578, file: !298, line: 931, type: !51)
!2582 = !DILocation(line: 0, scope: !2578)
!2583 = !DILocation(line: 933, column: 10, scope: !2578)
!2584 = !DILocation(line: 933, column: 3, scope: !2578)
!2585 = distinct !DISubprogram(name: "quotearg_n_options", scope: !298, file: !298, line: 877, type: !2586, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!49, !53, !51, !108, !331}
!2588 = !{!2589, !2590, !2591, !2592, !2593, !2594, !2595, !2598, !2599, !2601, !2602, !2603}
!2589 = !DILocalVariable(name: "n", arg: 1, scope: !2585, file: !298, line: 877, type: !53)
!2590 = !DILocalVariable(name: "arg", arg: 2, scope: !2585, file: !298, line: 877, type: !51)
!2591 = !DILocalVariable(name: "argsize", arg: 3, scope: !2585, file: !298, line: 877, type: !108)
!2592 = !DILocalVariable(name: "options", arg: 4, scope: !2585, file: !298, line: 878, type: !331)
!2593 = !DILocalVariable(name: "e", scope: !2585, file: !298, line: 880, type: !53)
!2594 = !DILocalVariable(name: "sv", scope: !2585, file: !298, line: 882, type: !404)
!2595 = !DILocalVariable(name: "preallocated", scope: !2596, file: !298, line: 889, type: !247)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !298, line: 888, column: 5)
!2597 = distinct !DILexicalBlock(scope: !2585, file: !298, line: 887, column: 7)
!2598 = !DILocalVariable(name: "nmax", scope: !2596, file: !298, line: 890, type: !53)
!2599 = !DILocalVariable(name: "size", scope: !2600, file: !298, line: 903, type: !108)
!2600 = distinct !DILexicalBlock(scope: !2585, file: !298, line: 902, column: 3)
!2601 = !DILocalVariable(name: "val", scope: !2600, file: !298, line: 904, type: !49)
!2602 = !DILocalVariable(name: "flags", scope: !2600, file: !298, line: 906, type: !53)
!2603 = !DILocalVariable(name: "qsize", scope: !2600, file: !298, line: 907, type: !108)
!2604 = !DILocation(line: 0, scope: !2585)
!2605 = !DILocation(line: 880, column: 11, scope: !2585)
!2606 = !DILocation(line: 882, column: 24, scope: !2585)
!2607 = !DILocation(line: 884, column: 9, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2585, file: !298, line: 884, column: 7)
!2609 = !DILocation(line: 884, column: 7, scope: !2585)
!2610 = !DILocation(line: 885, column: 5, scope: !2608)
!2611 = !DILocation(line: 887, column: 7, scope: !2597)
!2612 = !DILocation(line: 887, column: 14, scope: !2597)
!2613 = !DILocation(line: 887, column: 7, scope: !2585)
!2614 = !DILocation(line: 889, column: 31, scope: !2596)
!2615 = !DILocation(line: 0, scope: !2596)
!2616 = !DILocation(line: 892, column: 16, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2596, file: !298, line: 892, column: 11)
!2618 = !DILocation(line: 892, column: 11, scope: !2596)
!2619 = !DILocation(line: 893, column: 9, scope: !2617)
!2620 = !DILocation(line: 895, column: 32, scope: !2596)
!2621 = !DILocation(line: 895, column: 61, scope: !2596)
!2622 = !DILocation(line: 895, column: 58, scope: !2596)
!2623 = !DILocation(line: 895, column: 66, scope: !2596)
!2624 = !DILocation(line: 895, column: 22, scope: !2596)
!2625 = !DILocation(line: 895, column: 15, scope: !2596)
!2626 = !DILocation(line: 896, column: 11, scope: !2596)
!2627 = !DILocation(line: 897, column: 15, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2596, file: !298, line: 896, column: 11)
!2629 = !{i64 0, i64 8, !2536, i64 8, i64 8, !1138}
!2630 = !DILocation(line: 897, column: 9, scope: !2628)
!2631 = !DILocation(line: 898, column: 20, scope: !2596)
!2632 = !DILocation(line: 898, column: 18, scope: !2596)
!2633 = !DILocation(line: 898, column: 15, scope: !2596)
!2634 = !DILocation(line: 898, column: 38, scope: !2596)
!2635 = !DILocation(line: 898, column: 31, scope: !2596)
!2636 = !DILocation(line: 898, column: 48, scope: !2596)
!2637 = !DILocation(line: 0, scope: !2033, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 898, column: 7, scope: !2596)
!2639 = !DILocation(line: 71, column: 10, scope: !2033, inlinedAt: !2638)
!2640 = !DILocation(line: 899, column: 14, scope: !2596)
!2641 = !DILocation(line: 900, column: 5, scope: !2596)
!2642 = !DILocation(line: 903, column: 19, scope: !2600)
!2643 = !DILocation(line: 903, column: 25, scope: !2600)
!2644 = !DILocation(line: 0, scope: !2600)
!2645 = !DILocation(line: 904, column: 23, scope: !2600)
!2646 = !DILocation(line: 906, column: 26, scope: !2600)
!2647 = !DILocation(line: 906, column: 32, scope: !2600)
!2648 = !DILocation(line: 908, column: 55, scope: !2600)
!2649 = !DILocation(line: 909, column: 46, scope: !2600)
!2650 = !DILocation(line: 910, column: 55, scope: !2600)
!2651 = !DILocation(line: 911, column: 55, scope: !2600)
!2652 = !DILocation(line: 907, column: 20, scope: !2600)
!2653 = !DILocation(line: 913, column: 14, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2600, file: !298, line: 913, column: 9)
!2655 = !DILocation(line: 913, column: 9, scope: !2600)
!2656 = !DILocation(line: 915, column: 35, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2654, file: !298, line: 914, column: 7)
!2658 = !DILocation(line: 915, column: 20, scope: !2657)
!2659 = !DILocation(line: 916, column: 17, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !298, line: 916, column: 13)
!2661 = !DILocation(line: 916, column: 13, scope: !2657)
!2662 = !DILocation(line: 917, column: 11, scope: !2660)
!2663 = !DILocation(line: 0, scope: !2500, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 918, column: 27, scope: !2657)
!2665 = !DILocation(line: 218, column: 10, scope: !2500, inlinedAt: !2664)
!2666 = !DILocation(line: 918, column: 19, scope: !2657)
!2667 = !DILocation(line: 919, column: 69, scope: !2657)
!2668 = !DILocation(line: 921, column: 44, scope: !2657)
!2669 = !DILocation(line: 922, column: 44, scope: !2657)
!2670 = !DILocation(line: 919, column: 9, scope: !2657)
!2671 = !DILocation(line: 923, column: 7, scope: !2657)
!2672 = !DILocation(line: 925, column: 11, scope: !2600)
!2673 = !DILocation(line: 926, column: 5, scope: !2600)
!2674 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !298, file: !298, line: 937, type: !2675, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!49, !53, !51, !108}
!2677 = !{!2678, !2679, !2680}
!2678 = !DILocalVariable(name: "n", arg: 1, scope: !2674, file: !298, line: 937, type: !53)
!2679 = !DILocalVariable(name: "arg", arg: 2, scope: !2674, file: !298, line: 937, type: !51)
!2680 = !DILocalVariable(name: "argsize", arg: 3, scope: !2674, file: !298, line: 937, type: !108)
!2681 = !DILocation(line: 0, scope: !2674)
!2682 = !DILocation(line: 939, column: 10, scope: !2674)
!2683 = !DILocation(line: 939, column: 3, scope: !2674)
!2684 = distinct !DISubprogram(name: "quotearg", scope: !298, file: !298, line: 943, type: !128, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2685)
!2685 = !{!2686}
!2686 = !DILocalVariable(name: "arg", arg: 1, scope: !2684, file: !298, line: 943, type: !51)
!2687 = !DILocation(line: 0, scope: !2684)
!2688 = !DILocation(line: 0, scope: !2578, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 945, column: 10, scope: !2684)
!2690 = !DILocation(line: 933, column: 10, scope: !2578, inlinedAt: !2689)
!2691 = !DILocation(line: 945, column: 3, scope: !2684)
!2692 = distinct !DISubprogram(name: "quotearg_mem", scope: !298, file: !298, line: 949, type: !2693, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!49, !51, !108}
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "arg", arg: 1, scope: !2692, file: !298, line: 949, type: !51)
!2697 = !DILocalVariable(name: "argsize", arg: 2, scope: !2692, file: !298, line: 949, type: !108)
!2698 = !DILocation(line: 0, scope: !2692)
!2699 = !DILocation(line: 0, scope: !2674, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 951, column: 10, scope: !2692)
!2701 = !DILocation(line: 939, column: 10, scope: !2674, inlinedAt: !2700)
!2702 = !DILocation(line: 951, column: 3, scope: !2692)
!2703 = distinct !DISubprogram(name: "quotearg_n_style", scope: !298, file: !298, line: 955, type: !161, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2704)
!2704 = !{!2705, !2706, !2707, !2708}
!2705 = !DILocalVariable(name: "n", arg: 1, scope: !2703, file: !298, line: 955, type: !53)
!2706 = !DILocalVariable(name: "s", arg: 2, scope: !2703, file: !298, line: 955, type: !5)
!2707 = !DILocalVariable(name: "arg", arg: 3, scope: !2703, file: !298, line: 955, type: !51)
!2708 = !DILocalVariable(name: "o", scope: !2703, file: !298, line: 957, type: !332)
!2709 = !DILocation(line: 0, scope: !2703)
!2710 = !DILocation(line: 957, column: 3, scope: !2703)
!2711 = !DILocation(line: 957, column: 32, scope: !2703)
!2712 = !DILocalVariable(name: "style", arg: 1, scope: !2713, file: !298, line: 193, type: !5)
!2713 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !298, file: !298, line: 193, type: !2714, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!333, !5}
!2716 = !{!2712, !2717}
!2717 = !DILocalVariable(name: "o", scope: !2713, file: !298, line: 195, type: !333)
!2718 = !DILocation(line: 0, scope: !2713, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 957, column: 36, scope: !2703)
!2720 = !DILocation(line: 195, column: 26, scope: !2713, inlinedAt: !2719)
!2721 = !{!2722}
!2722 = distinct !{!2722, !2723, !"quoting_options_from_style: argument 0"}
!2723 = distinct !{!2723, !"quoting_options_from_style"}
!2724 = !DILocation(line: 196, column: 13, scope: !2725, inlinedAt: !2719)
!2725 = distinct !DILexicalBlock(scope: !2713, file: !298, line: 196, column: 7)
!2726 = !DILocation(line: 196, column: 7, scope: !2713, inlinedAt: !2719)
!2727 = !DILocation(line: 197, column: 5, scope: !2725, inlinedAt: !2719)
!2728 = !DILocation(line: 198, column: 5, scope: !2713, inlinedAt: !2719)
!2729 = !DILocation(line: 198, column: 11, scope: !2713, inlinedAt: !2719)
!2730 = !DILocation(line: 958, column: 10, scope: !2703)
!2731 = !DILocation(line: 959, column: 1, scope: !2703)
!2732 = !DILocation(line: 958, column: 3, scope: !2703)
!2733 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !298, file: !298, line: 962, type: !2734, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!49, !53, !5, !51, !108}
!2736 = !{!2737, !2738, !2739, !2740, !2741}
!2737 = !DILocalVariable(name: "n", arg: 1, scope: !2733, file: !298, line: 962, type: !53)
!2738 = !DILocalVariable(name: "s", arg: 2, scope: !2733, file: !298, line: 962, type: !5)
!2739 = !DILocalVariable(name: "arg", arg: 3, scope: !2733, file: !298, line: 963, type: !51)
!2740 = !DILocalVariable(name: "argsize", arg: 4, scope: !2733, file: !298, line: 963, type: !108)
!2741 = !DILocalVariable(name: "o", scope: !2733, file: !298, line: 965, type: !332)
!2742 = !DILocation(line: 0, scope: !2733)
!2743 = !DILocation(line: 965, column: 3, scope: !2733)
!2744 = !DILocation(line: 965, column: 32, scope: !2733)
!2745 = !DILocation(line: 0, scope: !2713, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 965, column: 36, scope: !2733)
!2747 = !DILocation(line: 195, column: 26, scope: !2713, inlinedAt: !2746)
!2748 = !{!2749}
!2749 = distinct !{!2749, !2750, !"quoting_options_from_style: argument 0"}
!2750 = distinct !{!2750, !"quoting_options_from_style"}
!2751 = !DILocation(line: 196, column: 13, scope: !2725, inlinedAt: !2746)
!2752 = !DILocation(line: 196, column: 7, scope: !2713, inlinedAt: !2746)
!2753 = !DILocation(line: 197, column: 5, scope: !2725, inlinedAt: !2746)
!2754 = !DILocation(line: 198, column: 5, scope: !2713, inlinedAt: !2746)
!2755 = !DILocation(line: 198, column: 11, scope: !2713, inlinedAt: !2746)
!2756 = !DILocation(line: 966, column: 10, scope: !2733)
!2757 = !DILocation(line: 967, column: 1, scope: !2733)
!2758 = !DILocation(line: 966, column: 3, scope: !2733)
!2759 = distinct !DISubprogram(name: "quotearg_style", scope: !298, file: !298, line: 970, type: !168, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2760)
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "s", arg: 1, scope: !2759, file: !298, line: 970, type: !5)
!2762 = !DILocalVariable(name: "arg", arg: 2, scope: !2759, file: !298, line: 970, type: !51)
!2763 = !DILocation(line: 195, column: 26, scope: !2713, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 957, column: 36, scope: !2703, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 972, column: 10, scope: !2759)
!2766 = !DILocation(line: 957, column: 32, scope: !2703, inlinedAt: !2765)
!2767 = !DILocation(line: 0, scope: !2759)
!2768 = !DILocation(line: 0, scope: !2703, inlinedAt: !2765)
!2769 = !DILocation(line: 957, column: 3, scope: !2703, inlinedAt: !2765)
!2770 = !DILocation(line: 0, scope: !2713, inlinedAt: !2764)
!2771 = !{!2772}
!2772 = distinct !{!2772, !2773, !"quoting_options_from_style: argument 0"}
!2773 = distinct !{!2773, !"quoting_options_from_style"}
!2774 = !DILocation(line: 196, column: 13, scope: !2725, inlinedAt: !2764)
!2775 = !DILocation(line: 196, column: 7, scope: !2713, inlinedAt: !2764)
!2776 = !DILocation(line: 197, column: 5, scope: !2725, inlinedAt: !2764)
!2777 = !DILocation(line: 198, column: 5, scope: !2713, inlinedAt: !2764)
!2778 = !DILocation(line: 198, column: 11, scope: !2713, inlinedAt: !2764)
!2779 = !DILocation(line: 958, column: 10, scope: !2703, inlinedAt: !2765)
!2780 = !DILocation(line: 959, column: 1, scope: !2703, inlinedAt: !2765)
!2781 = !DILocation(line: 972, column: 3, scope: !2759)
!2782 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !298, file: !298, line: 976, type: !2783, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!49, !5, !51, !108}
!2785 = !{!2786, !2787, !2788}
!2786 = !DILocalVariable(name: "s", arg: 1, scope: !2782, file: !298, line: 976, type: !5)
!2787 = !DILocalVariable(name: "arg", arg: 2, scope: !2782, file: !298, line: 976, type: !51)
!2788 = !DILocalVariable(name: "argsize", arg: 3, scope: !2782, file: !298, line: 976, type: !108)
!2789 = !DILocation(line: 195, column: 26, scope: !2713, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 965, column: 36, scope: !2733, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 978, column: 10, scope: !2782)
!2792 = !DILocation(line: 965, column: 32, scope: !2733, inlinedAt: !2791)
!2793 = !DILocation(line: 0, scope: !2782)
!2794 = !DILocation(line: 0, scope: !2733, inlinedAt: !2791)
!2795 = !DILocation(line: 965, column: 3, scope: !2733, inlinedAt: !2791)
!2796 = !DILocation(line: 0, scope: !2713, inlinedAt: !2790)
!2797 = !{!2798}
!2798 = distinct !{!2798, !2799, !"quoting_options_from_style: argument 0"}
!2799 = distinct !{!2799, !"quoting_options_from_style"}
!2800 = !DILocation(line: 196, column: 13, scope: !2725, inlinedAt: !2790)
!2801 = !DILocation(line: 196, column: 7, scope: !2713, inlinedAt: !2790)
!2802 = !DILocation(line: 197, column: 5, scope: !2725, inlinedAt: !2790)
!2803 = !DILocation(line: 198, column: 5, scope: !2713, inlinedAt: !2790)
!2804 = !DILocation(line: 198, column: 11, scope: !2713, inlinedAt: !2790)
!2805 = !DILocation(line: 966, column: 10, scope: !2733, inlinedAt: !2791)
!2806 = !DILocation(line: 967, column: 1, scope: !2733, inlinedAt: !2791)
!2807 = !DILocation(line: 978, column: 3, scope: !2782)
!2808 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !298, file: !298, line: 982, type: !2809, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!49, !51, !108, !50}
!2811 = !{!2812, !2813, !2814, !2815}
!2812 = !DILocalVariable(name: "arg", arg: 1, scope: !2808, file: !298, line: 982, type: !51)
!2813 = !DILocalVariable(name: "argsize", arg: 2, scope: !2808, file: !298, line: 982, type: !108)
!2814 = !DILocalVariable(name: "ch", arg: 3, scope: !2808, file: !298, line: 982, type: !50)
!2815 = !DILocalVariable(name: "options", scope: !2808, file: !298, line: 984, type: !333)
!2816 = !DILocation(line: 0, scope: !2808)
!2817 = !DILocation(line: 984, column: 3, scope: !2808)
!2818 = !DILocation(line: 984, column: 26, scope: !2808)
!2819 = !DILocation(line: 985, column: 13, scope: !2808)
!2820 = !{i64 0, i64 4, !1353, i64 4, i64 4, !1296, i64 8, i64 32, !1353, i64 40, i64 8, !1138, i64 48, i64 8, !1138}
!2821 = !DILocation(line: 0, scope: !1646, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 986, column: 3, scope: !2808)
!2823 = !DILocation(line: 156, column: 62, scope: !1646, inlinedAt: !2822)
!2824 = !DILocation(line: 156, column: 57, scope: !1646, inlinedAt: !2822)
!2825 = !DILocation(line: 157, column: 15, scope: !1646, inlinedAt: !2822)
!2826 = !DILocation(line: 158, column: 12, scope: !1646, inlinedAt: !2822)
!2827 = !DILocation(line: 158, column: 15, scope: !1646, inlinedAt: !2822)
!2828 = !DILocation(line: 158, column: 25, scope: !1646, inlinedAt: !2822)
!2829 = !DILocation(line: 159, column: 18, scope: !1646, inlinedAt: !2822)
!2830 = !DILocation(line: 159, column: 23, scope: !1646, inlinedAt: !2822)
!2831 = !DILocation(line: 159, column: 6, scope: !1646, inlinedAt: !2822)
!2832 = !DILocation(line: 987, column: 10, scope: !2808)
!2833 = !DILocation(line: 988, column: 1, scope: !2808)
!2834 = !DILocation(line: 987, column: 3, scope: !2808)
!2835 = distinct !DISubprogram(name: "quotearg_char", scope: !298, file: !298, line: 991, type: !2836, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!49, !51, !50}
!2838 = !{!2839, !2840}
!2839 = !DILocalVariable(name: "arg", arg: 1, scope: !2835, file: !298, line: 991, type: !51)
!2840 = !DILocalVariable(name: "ch", arg: 2, scope: !2835, file: !298, line: 991, type: !50)
!2841 = !DILocation(line: 984, column: 26, scope: !2808, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 993, column: 10, scope: !2835)
!2843 = !DILocation(line: 0, scope: !2835)
!2844 = !DILocation(line: 0, scope: !2808, inlinedAt: !2842)
!2845 = !DILocation(line: 984, column: 3, scope: !2808, inlinedAt: !2842)
!2846 = !DILocation(line: 985, column: 13, scope: !2808, inlinedAt: !2842)
!2847 = !DILocation(line: 0, scope: !1646, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 986, column: 3, scope: !2808, inlinedAt: !2842)
!2849 = !DILocation(line: 156, column: 62, scope: !1646, inlinedAt: !2848)
!2850 = !DILocation(line: 156, column: 57, scope: !1646, inlinedAt: !2848)
!2851 = !DILocation(line: 157, column: 15, scope: !1646, inlinedAt: !2848)
!2852 = !DILocation(line: 158, column: 12, scope: !1646, inlinedAt: !2848)
!2853 = !DILocation(line: 158, column: 15, scope: !1646, inlinedAt: !2848)
!2854 = !DILocation(line: 158, column: 25, scope: !1646, inlinedAt: !2848)
!2855 = !DILocation(line: 159, column: 18, scope: !1646, inlinedAt: !2848)
!2856 = !DILocation(line: 159, column: 23, scope: !1646, inlinedAt: !2848)
!2857 = !DILocation(line: 159, column: 6, scope: !1646, inlinedAt: !2848)
!2858 = !DILocation(line: 987, column: 10, scope: !2808, inlinedAt: !2842)
!2859 = !DILocation(line: 988, column: 1, scope: !2808, inlinedAt: !2842)
!2860 = !DILocation(line: 993, column: 3, scope: !2835)
!2861 = distinct !DISubprogram(name: "quotearg_colon", scope: !298, file: !298, line: 997, type: !128, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2862)
!2862 = !{!2863}
!2863 = !DILocalVariable(name: "arg", arg: 1, scope: !2861, file: !298, line: 997, type: !51)
!2864 = !DILocation(line: 984, column: 26, scope: !2808, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 993, column: 10, scope: !2835, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 999, column: 10, scope: !2861)
!2867 = !DILocation(line: 0, scope: !2861)
!2868 = !DILocation(line: 0, scope: !2835, inlinedAt: !2866)
!2869 = !DILocation(line: 0, scope: !2808, inlinedAt: !2865)
!2870 = !DILocation(line: 984, column: 3, scope: !2808, inlinedAt: !2865)
!2871 = !DILocation(line: 985, column: 13, scope: !2808, inlinedAt: !2865)
!2872 = !DILocation(line: 0, scope: !1646, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 986, column: 3, scope: !2808, inlinedAt: !2865)
!2874 = !DILocation(line: 156, column: 57, scope: !1646, inlinedAt: !2873)
!2875 = !DILocation(line: 158, column: 12, scope: !1646, inlinedAt: !2873)
!2876 = !DILocation(line: 159, column: 6, scope: !1646, inlinedAt: !2873)
!2877 = !DILocation(line: 987, column: 10, scope: !2808, inlinedAt: !2865)
!2878 = !DILocation(line: 988, column: 1, scope: !2808, inlinedAt: !2865)
!2879 = !DILocation(line: 999, column: 3, scope: !2861)
!2880 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !298, file: !298, line: 1003, type: !2693, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2881)
!2881 = !{!2882, !2883}
!2882 = !DILocalVariable(name: "arg", arg: 1, scope: !2880, file: !298, line: 1003, type: !51)
!2883 = !DILocalVariable(name: "argsize", arg: 2, scope: !2880, file: !298, line: 1003, type: !108)
!2884 = !DILocation(line: 984, column: 26, scope: !2808, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 1005, column: 10, scope: !2880)
!2886 = !DILocation(line: 0, scope: !2880)
!2887 = !DILocation(line: 0, scope: !2808, inlinedAt: !2885)
!2888 = !DILocation(line: 984, column: 3, scope: !2808, inlinedAt: !2885)
!2889 = !DILocation(line: 985, column: 13, scope: !2808, inlinedAt: !2885)
!2890 = !DILocation(line: 0, scope: !1646, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 986, column: 3, scope: !2808, inlinedAt: !2885)
!2892 = !DILocation(line: 156, column: 57, scope: !1646, inlinedAt: !2891)
!2893 = !DILocation(line: 158, column: 12, scope: !1646, inlinedAt: !2891)
!2894 = !DILocation(line: 159, column: 6, scope: !1646, inlinedAt: !2891)
!2895 = !DILocation(line: 987, column: 10, scope: !2808, inlinedAt: !2885)
!2896 = !DILocation(line: 988, column: 1, scope: !2808, inlinedAt: !2885)
!2897 = !DILocation(line: 1005, column: 3, scope: !2880)
!2898 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !298, file: !298, line: 1009, type: !161, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2899)
!2899 = !{!2900, !2901, !2902, !2903}
!2900 = !DILocalVariable(name: "n", arg: 1, scope: !2898, file: !298, line: 1009, type: !53)
!2901 = !DILocalVariable(name: "s", arg: 2, scope: !2898, file: !298, line: 1009, type: !5)
!2902 = !DILocalVariable(name: "arg", arg: 3, scope: !2898, file: !298, line: 1009, type: !51)
!2903 = !DILocalVariable(name: "options", scope: !2898, file: !298, line: 1011, type: !333)
!2904 = !DILocation(line: 195, column: 26, scope: !2713, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1012, column: 13, scope: !2898)
!2906 = !DILocation(line: 0, scope: !2898)
!2907 = !DILocation(line: 1011, column: 3, scope: !2898)
!2908 = !DILocation(line: 1011, column: 26, scope: !2898)
!2909 = !DILocation(line: 1012, column: 13, scope: !2898)
!2910 = !DILocation(line: 0, scope: !2713, inlinedAt: !2905)
!2911 = !{!2912}
!2912 = distinct !{!2912, !2913, !"quoting_options_from_style: argument 0"}
!2913 = distinct !{!2913, !"quoting_options_from_style"}
!2914 = !DILocation(line: 196, column: 13, scope: !2725, inlinedAt: !2905)
!2915 = !DILocation(line: 196, column: 7, scope: !2713, inlinedAt: !2905)
!2916 = !DILocation(line: 197, column: 5, scope: !2725, inlinedAt: !2905)
!2917 = !DILocation(line: 0, scope: !1646, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 1013, column: 3, scope: !2898)
!2919 = !DILocation(line: 156, column: 57, scope: !1646, inlinedAt: !2918)
!2920 = !DILocation(line: 158, column: 12, scope: !1646, inlinedAt: !2918)
!2921 = !DILocation(line: 159, column: 6, scope: !1646, inlinedAt: !2918)
!2922 = !DILocation(line: 1014, column: 10, scope: !2898)
!2923 = !DILocation(line: 1015, column: 1, scope: !2898)
!2924 = !DILocation(line: 1014, column: 3, scope: !2898)
!2925 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !298, file: !298, line: 1018, type: !2926, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!49, !53, !51, !51, !51}
!2928 = !{!2929, !2930, !2931, !2932}
!2929 = !DILocalVariable(name: "n", arg: 1, scope: !2925, file: !298, line: 1018, type: !53)
!2930 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2925, file: !298, line: 1018, type: !51)
!2931 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2925, file: !298, line: 1019, type: !51)
!2932 = !DILocalVariable(name: "arg", arg: 4, scope: !2925, file: !298, line: 1019, type: !51)
!2933 = !DILocalVariable(name: "o", scope: !2934, file: !298, line: 1030, type: !333)
!2934 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !298, file: !298, line: 1026, type: !2935, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!49, !53, !51, !51, !51, !108}
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2933}
!2938 = !DILocalVariable(name: "n", arg: 1, scope: !2934, file: !298, line: 1026, type: !53)
!2939 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2934, file: !298, line: 1026, type: !51)
!2940 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2934, file: !298, line: 1027, type: !51)
!2941 = !DILocalVariable(name: "arg", arg: 4, scope: !2934, file: !298, line: 1028, type: !51)
!2942 = !DILocalVariable(name: "argsize", arg: 5, scope: !2934, file: !298, line: 1028, type: !108)
!2943 = !DILocation(line: 1030, column: 26, scope: !2934, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1021, column: 10, scope: !2925)
!2945 = !DILocation(line: 0, scope: !2925)
!2946 = !DILocation(line: 0, scope: !2934, inlinedAt: !2944)
!2947 = !DILocation(line: 1030, column: 3, scope: !2934, inlinedAt: !2944)
!2948 = !DILocation(line: 1030, column: 30, scope: !2934, inlinedAt: !2944)
!2949 = !DILocation(line: 0, scope: !1687, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1031, column: 3, scope: !2934, inlinedAt: !2944)
!2951 = !DILocation(line: 184, column: 6, scope: !1687, inlinedAt: !2950)
!2952 = !DILocation(line: 184, column: 12, scope: !1687, inlinedAt: !2950)
!2953 = !DILocation(line: 185, column: 8, scope: !1701, inlinedAt: !2950)
!2954 = !DILocation(line: 185, column: 23, scope: !1701, inlinedAt: !2950)
!2955 = !DILocation(line: 185, column: 19, scope: !1701, inlinedAt: !2950)
!2956 = !DILocation(line: 186, column: 5, scope: !1701, inlinedAt: !2950)
!2957 = !DILocation(line: 187, column: 6, scope: !1687, inlinedAt: !2950)
!2958 = !DILocation(line: 187, column: 17, scope: !1687, inlinedAt: !2950)
!2959 = !DILocation(line: 188, column: 6, scope: !1687, inlinedAt: !2950)
!2960 = !DILocation(line: 188, column: 18, scope: !1687, inlinedAt: !2950)
!2961 = !DILocation(line: 1032, column: 10, scope: !2934, inlinedAt: !2944)
!2962 = !DILocation(line: 1033, column: 1, scope: !2934, inlinedAt: !2944)
!2963 = !DILocation(line: 1021, column: 3, scope: !2925)
!2964 = !DILocation(line: 0, scope: !2934)
!2965 = !DILocation(line: 1030, column: 3, scope: !2934)
!2966 = !DILocation(line: 1030, column: 26, scope: !2934)
!2967 = !DILocation(line: 1030, column: 30, scope: !2934)
!2968 = !DILocation(line: 0, scope: !1687, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1031, column: 3, scope: !2934)
!2970 = !DILocation(line: 184, column: 6, scope: !1687, inlinedAt: !2969)
!2971 = !DILocation(line: 184, column: 12, scope: !1687, inlinedAt: !2969)
!2972 = !DILocation(line: 185, column: 8, scope: !1701, inlinedAt: !2969)
!2973 = !DILocation(line: 185, column: 23, scope: !1701, inlinedAt: !2969)
!2974 = !DILocation(line: 185, column: 19, scope: !1701, inlinedAt: !2969)
!2975 = !DILocation(line: 186, column: 5, scope: !1701, inlinedAt: !2969)
!2976 = !DILocation(line: 187, column: 6, scope: !1687, inlinedAt: !2969)
!2977 = !DILocation(line: 187, column: 17, scope: !1687, inlinedAt: !2969)
!2978 = !DILocation(line: 188, column: 6, scope: !1687, inlinedAt: !2969)
!2979 = !DILocation(line: 188, column: 18, scope: !1687, inlinedAt: !2969)
!2980 = !DILocation(line: 1032, column: 10, scope: !2934)
!2981 = !DILocation(line: 1033, column: 1, scope: !2934)
!2982 = !DILocation(line: 1032, column: 3, scope: !2934)
!2983 = distinct !DISubprogram(name: "quotearg_custom", scope: !298, file: !298, line: 1036, type: !2984, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!49, !51, !51, !51}
!2986 = !{!2987, !2988, !2989}
!2987 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2983, file: !298, line: 1036, type: !51)
!2988 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2983, file: !298, line: 1036, type: !51)
!2989 = !DILocalVariable(name: "arg", arg: 3, scope: !2983, file: !298, line: 1037, type: !51)
!2990 = !DILocation(line: 1030, column: 26, scope: !2934, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 1021, column: 10, scope: !2925, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 1039, column: 10, scope: !2983)
!2993 = !DILocation(line: 0, scope: !2983)
!2994 = !DILocation(line: 0, scope: !2925, inlinedAt: !2992)
!2995 = !DILocation(line: 0, scope: !2934, inlinedAt: !2991)
!2996 = !DILocation(line: 1030, column: 3, scope: !2934, inlinedAt: !2991)
!2997 = !DILocation(line: 1030, column: 30, scope: !2934, inlinedAt: !2991)
!2998 = !DILocation(line: 0, scope: !1687, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 1031, column: 3, scope: !2934, inlinedAt: !2991)
!3000 = !DILocation(line: 184, column: 6, scope: !1687, inlinedAt: !2999)
!3001 = !DILocation(line: 184, column: 12, scope: !1687, inlinedAt: !2999)
!3002 = !DILocation(line: 185, column: 8, scope: !1701, inlinedAt: !2999)
!3003 = !DILocation(line: 185, column: 23, scope: !1701, inlinedAt: !2999)
!3004 = !DILocation(line: 185, column: 19, scope: !1701, inlinedAt: !2999)
!3005 = !DILocation(line: 186, column: 5, scope: !1701, inlinedAt: !2999)
!3006 = !DILocation(line: 187, column: 6, scope: !1687, inlinedAt: !2999)
!3007 = !DILocation(line: 187, column: 17, scope: !1687, inlinedAt: !2999)
!3008 = !DILocation(line: 188, column: 6, scope: !1687, inlinedAt: !2999)
!3009 = !DILocation(line: 188, column: 18, scope: !1687, inlinedAt: !2999)
!3010 = !DILocation(line: 1032, column: 10, scope: !2934, inlinedAt: !2991)
!3011 = !DILocation(line: 1033, column: 1, scope: !2934, inlinedAt: !2991)
!3012 = !DILocation(line: 1039, column: 3, scope: !2983)
!3013 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !298, file: !298, line: 1043, type: !3014, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!49, !51, !51, !51, !108}
!3016 = !{!3017, !3018, !3019, !3020}
!3017 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3013, file: !298, line: 1043, type: !51)
!3018 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3013, file: !298, line: 1043, type: !51)
!3019 = !DILocalVariable(name: "arg", arg: 3, scope: !3013, file: !298, line: 1044, type: !51)
!3020 = !DILocalVariable(name: "argsize", arg: 4, scope: !3013, file: !298, line: 1044, type: !108)
!3021 = !DILocation(line: 1030, column: 26, scope: !2934, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 1046, column: 10, scope: !3013)
!3023 = !DILocation(line: 0, scope: !3013)
!3024 = !DILocation(line: 0, scope: !2934, inlinedAt: !3022)
!3025 = !DILocation(line: 1030, column: 3, scope: !2934, inlinedAt: !3022)
!3026 = !DILocation(line: 1030, column: 30, scope: !2934, inlinedAt: !3022)
!3027 = !DILocation(line: 0, scope: !1687, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 1031, column: 3, scope: !2934, inlinedAt: !3022)
!3029 = !DILocation(line: 184, column: 6, scope: !1687, inlinedAt: !3028)
!3030 = !DILocation(line: 184, column: 12, scope: !1687, inlinedAt: !3028)
!3031 = !DILocation(line: 185, column: 8, scope: !1701, inlinedAt: !3028)
!3032 = !DILocation(line: 185, column: 23, scope: !1701, inlinedAt: !3028)
!3033 = !DILocation(line: 185, column: 19, scope: !1701, inlinedAt: !3028)
!3034 = !DILocation(line: 186, column: 5, scope: !1701, inlinedAt: !3028)
!3035 = !DILocation(line: 187, column: 6, scope: !1687, inlinedAt: !3028)
!3036 = !DILocation(line: 187, column: 17, scope: !1687, inlinedAt: !3028)
!3037 = !DILocation(line: 188, column: 6, scope: !1687, inlinedAt: !3028)
!3038 = !DILocation(line: 188, column: 18, scope: !1687, inlinedAt: !3028)
!3039 = !DILocation(line: 1032, column: 10, scope: !2934, inlinedAt: !3022)
!3040 = !DILocation(line: 1033, column: 1, scope: !2934, inlinedAt: !3022)
!3041 = !DILocation(line: 1046, column: 3, scope: !3013)
!3042 = distinct !DISubprogram(name: "quote_n_mem", scope: !298, file: !298, line: 1061, type: !3043, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!51, !53, !51, !108}
!3045 = !{!3046, !3047, !3048}
!3046 = !DILocalVariable(name: "n", arg: 1, scope: !3042, file: !298, line: 1061, type: !53)
!3047 = !DILocalVariable(name: "arg", arg: 2, scope: !3042, file: !298, line: 1061, type: !51)
!3048 = !DILocalVariable(name: "argsize", arg: 3, scope: !3042, file: !298, line: 1061, type: !108)
!3049 = !DILocation(line: 0, scope: !3042)
!3050 = !DILocation(line: 1063, column: 10, scope: !3042)
!3051 = !DILocation(line: 1063, column: 3, scope: !3042)
!3052 = distinct !DISubprogram(name: "quote_mem", scope: !298, file: !298, line: 1067, type: !3053, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!51, !51, !108}
!3055 = !{!3056, !3057}
!3056 = !DILocalVariable(name: "arg", arg: 1, scope: !3052, file: !298, line: 1067, type: !51)
!3057 = !DILocalVariable(name: "argsize", arg: 2, scope: !3052, file: !298, line: 1067, type: !108)
!3058 = !DILocation(line: 0, scope: !3052)
!3059 = !DILocation(line: 0, scope: !3042, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 1069, column: 10, scope: !3052)
!3061 = !DILocation(line: 1063, column: 10, scope: !3042, inlinedAt: !3060)
!3062 = !DILocation(line: 1069, column: 3, scope: !3052)
!3063 = distinct !DISubprogram(name: "quote_n", scope: !298, file: !298, line: 1073, type: !3064, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!51, !53, !51}
!3066 = !{!3067, !3068}
!3067 = !DILocalVariable(name: "n", arg: 1, scope: !3063, file: !298, line: 1073, type: !53)
!3068 = !DILocalVariable(name: "arg", arg: 2, scope: !3063, file: !298, line: 1073, type: !51)
!3069 = !DILocation(line: 0, scope: !3063)
!3070 = !DILocation(line: 0, scope: !3042, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 1075, column: 10, scope: !3063)
!3072 = !DILocation(line: 1063, column: 10, scope: !3042, inlinedAt: !3071)
!3073 = !DILocation(line: 1075, column: 3, scope: !3063)
!3074 = distinct !DISubprogram(name: "quote", scope: !298, file: !298, line: 1079, type: !172, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3075)
!3075 = !{!3076}
!3076 = !DILocalVariable(name: "arg", arg: 1, scope: !3074, file: !298, line: 1079, type: !51)
!3077 = !DILocation(line: 0, scope: !3074)
!3078 = !DILocation(line: 0, scope: !3063, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1081, column: 10, scope: !3074)
!3080 = !DILocation(line: 0, scope: !3042, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 1075, column: 10, scope: !3063, inlinedAt: !3079)
!3082 = !DILocation(line: 1063, column: 10, scope: !3042, inlinedAt: !3081)
!3083 = !DILocation(line: 1081, column: 3, scope: !3074)
!3084 = distinct !DISubprogram(name: "version_etc_arn", scope: !447, file: !447, line: 61, type: !3085, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3091)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{null, !3087, !51, !51, !51, !3090, !108}
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3089, line: 7, baseType: !457)
!3089 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097}
!3092 = !DILocalVariable(name: "stream", arg: 1, scope: !3084, file: !447, line: 61, type: !3087)
!3093 = !DILocalVariable(name: "command_name", arg: 2, scope: !3084, file: !447, line: 62, type: !51)
!3094 = !DILocalVariable(name: "package", arg: 3, scope: !3084, file: !447, line: 62, type: !51)
!3095 = !DILocalVariable(name: "version", arg: 4, scope: !3084, file: !447, line: 63, type: !51)
!3096 = !DILocalVariable(name: "authors", arg: 5, scope: !3084, file: !447, line: 64, type: !3090)
!3097 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3084, file: !447, line: 64, type: !108)
!3098 = !DILocation(line: 0, scope: !3084)
!3099 = !DILocation(line: 66, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3084, file: !447, line: 66, column: 7)
!3101 = !DILocation(line: 66, column: 7, scope: !3084)
!3102 = !DILocation(line: 67, column: 5, scope: !3100)
!3103 = !DILocation(line: 69, column: 5, scope: !3100)
!3104 = !DILocation(line: 83, column: 3, scope: !3084)
!3105 = !DILocation(line: 85, column: 3, scope: !3084)
!3106 = !DILocation(line: 88, column: 3, scope: !3084)
!3107 = !DILocation(line: 95, column: 3, scope: !3084)
!3108 = !DILocation(line: 97, column: 3, scope: !3084)
!3109 = !DILocation(line: 105, column: 7, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3084, file: !447, line: 98, column: 5)
!3111 = !DILocation(line: 106, column: 7, scope: !3110)
!3112 = !DILocation(line: 109, column: 7, scope: !3110)
!3113 = !DILocation(line: 110, column: 7, scope: !3110)
!3114 = !DILocation(line: 113, column: 7, scope: !3110)
!3115 = !DILocation(line: 115, column: 7, scope: !3110)
!3116 = !DILocation(line: 120, column: 7, scope: !3110)
!3117 = !DILocation(line: 122, column: 7, scope: !3110)
!3118 = !DILocation(line: 127, column: 7, scope: !3110)
!3119 = !DILocation(line: 129, column: 7, scope: !3110)
!3120 = !DILocation(line: 134, column: 7, scope: !3110)
!3121 = !DILocation(line: 137, column: 7, scope: !3110)
!3122 = !DILocation(line: 142, column: 7, scope: !3110)
!3123 = !DILocation(line: 145, column: 7, scope: !3110)
!3124 = !DILocation(line: 150, column: 7, scope: !3110)
!3125 = !DILocation(line: 154, column: 7, scope: !3110)
!3126 = !DILocation(line: 159, column: 7, scope: !3110)
!3127 = !DILocation(line: 163, column: 7, scope: !3110)
!3128 = !DILocation(line: 170, column: 7, scope: !3110)
!3129 = !DILocation(line: 174, column: 7, scope: !3110)
!3130 = !DILocation(line: 176, column: 1, scope: !3084)
!3131 = distinct !DISubprogram(name: "version_etc_ar", scope: !447, file: !447, line: 183, type: !3132, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3087, !51, !51, !51, !3090}
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140}
!3135 = !DILocalVariable(name: "stream", arg: 1, scope: !3131, file: !447, line: 183, type: !3087)
!3136 = !DILocalVariable(name: "command_name", arg: 2, scope: !3131, file: !447, line: 184, type: !51)
!3137 = !DILocalVariable(name: "package", arg: 3, scope: !3131, file: !447, line: 184, type: !51)
!3138 = !DILocalVariable(name: "version", arg: 4, scope: !3131, file: !447, line: 185, type: !51)
!3139 = !DILocalVariable(name: "authors", arg: 5, scope: !3131, file: !447, line: 185, type: !3090)
!3140 = !DILocalVariable(name: "n_authors", scope: !3131, file: !447, line: 187, type: !108)
!3141 = !DILocation(line: 0, scope: !3131)
!3142 = !DILocation(line: 189, column: 8, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3131, file: !447, line: 189, column: 3)
!3144 = !DILocation(line: 0, scope: !3143)
!3145 = !DILocation(line: 189, column: 23, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !447, line: 189, column: 3)
!3147 = !DILocation(line: 189, column: 3, scope: !3143)
!3148 = !DILocation(line: 189, column: 52, scope: !3146)
!3149 = distinct !{!3149, !3147, !3150}
!3150 = !DILocation(line: 190, column: 5, scope: !3143)
!3151 = !DILocation(line: 191, column: 3, scope: !3131)
!3152 = !DILocation(line: 192, column: 1, scope: !3131)
!3153 = distinct !DISubprogram(name: "version_etc_va", scope: !447, file: !447, line: 199, type: !3154, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3163)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3087, !51, !51, !51, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !447, line: 192, size: 192, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3162}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3157, file: !447, line: 192, baseType: !7, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3157, file: !447, line: 192, baseType: !7, size: 32, offset: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3157, file: !447, line: 192, baseType: !106, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3157, file: !447, line: 192, baseType: !106, size: 64, offset: 128)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3164 = !DILocalVariable(name: "stream", arg: 1, scope: !3153, file: !447, line: 199, type: !3087)
!3165 = !DILocalVariable(name: "command_name", arg: 2, scope: !3153, file: !447, line: 200, type: !51)
!3166 = !DILocalVariable(name: "package", arg: 3, scope: !3153, file: !447, line: 200, type: !51)
!3167 = !DILocalVariable(name: "version", arg: 4, scope: !3153, file: !447, line: 201, type: !51)
!3168 = !DILocalVariable(name: "authors", arg: 5, scope: !3153, file: !447, line: 201, type: !3156)
!3169 = !DILocalVariable(name: "n_authors", scope: !3153, file: !447, line: 203, type: !108)
!3170 = !DILocalVariable(name: "authtab", scope: !3153, file: !447, line: 204, type: !3171)
!3171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 640, elements: !391)
!3172 = !DILocation(line: 0, scope: !3153)
!3173 = !DILocation(line: 204, column: 3, scope: !3153)
!3174 = !DILocation(line: 204, column: 15, scope: !3153)
!3175 = !DILocation(line: 0, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !447, line: 206, column: 3)
!3177 = distinct !DILexicalBlock(scope: !3153, file: !447, line: 206, column: 3)
!3178 = !DILocation(line: 208, column: 35, scope: !3176)
!3179 = !DILocation(line: 208, column: 14, scope: !3176)
!3180 = !DILocation(line: 208, column: 33, scope: !3176)
!3181 = !DILocation(line: 208, column: 67, scope: !3176)
!3182 = !DILocation(line: 206, column: 3, scope: !3177)
!3183 = !DILocation(line: 0, scope: !3177)
!3184 = !DILocation(line: 211, column: 3, scope: !3153)
!3185 = !DILocation(line: 213, column: 1, scope: !3153)
!3186 = distinct !DISubprogram(name: "version_etc", scope: !447, file: !447, line: 230, type: !3187, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !3087, !51, !51, !51, null}
!3189 = !{!3190, !3191, !3192, !3193, !3194}
!3190 = !DILocalVariable(name: "stream", arg: 1, scope: !3186, file: !447, line: 230, type: !3087)
!3191 = !DILocalVariable(name: "command_name", arg: 2, scope: !3186, file: !447, line: 231, type: !51)
!3192 = !DILocalVariable(name: "package", arg: 3, scope: !3186, file: !447, line: 231, type: !51)
!3193 = !DILocalVariable(name: "version", arg: 4, scope: !3186, file: !447, line: 232, type: !51)
!3194 = !DILocalVariable(name: "authors", scope: !3186, file: !447, line: 234, type: !3195)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !56, line: 52, baseType: !3196)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3197, line: 32, baseType: !3198)
!3197 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !447, line: 234, baseType: !3199)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3157, size: 192, elements: !91)
!3200 = !DILocation(line: 0, scope: !3186)
!3201 = !DILocation(line: 234, column: 3, scope: !3186)
!3202 = !DILocation(line: 234, column: 11, scope: !3186)
!3203 = !DILocation(line: 236, column: 3, scope: !3186)
!3204 = !DILocation(line: 237, column: 3, scope: !3186)
!3205 = !DILocation(line: 238, column: 3, scope: !3186)
!3206 = !DILocation(line: 239, column: 1, scope: !3186)
!3207 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !447, file: !447, line: 242, type: !135, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !54)
!3208 = !DILocation(line: 244, column: 3, scope: !3207)
!3209 = !DILocation(line: 249, column: 3, scope: !3207)
!3210 = !DILocation(line: 255, column: 3, scope: !3207)
!3211 = !DILocation(line: 260, column: 3, scope: !3207)
!3212 = !DILocation(line: 262, column: 1, scope: !3207)
!3213 = distinct !DISubprogram(name: "xnmalloc", scope: !322, file: !322, line: 99, type: !3214, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!106, !108, !108}
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "n", arg: 1, scope: !3213, file: !322, line: 99, type: !108)
!3218 = !DILocalVariable(name: "s", arg: 2, scope: !3213, file: !322, line: 99, type: !108)
!3219 = !DILocation(line: 0, scope: !3213)
!3220 = !DILocation(line: 101, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3213, file: !322, line: 101, column: 7)
!3222 = !DILocation(line: 101, column: 7, scope: !3213)
!3223 = !DILocation(line: 102, column: 5, scope: !3221)
!3224 = !DILocation(line: 103, column: 21, scope: !3213)
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3226, file: !489, line: 39, type: !108)
!3226 = distinct !DISubprogram(name: "xmalloc", scope: !489, file: !489, line: 39, type: !3227, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!106, !108}
!3229 = !{!3225, !3230}
!3230 = !DILocalVariable(name: "p", scope: !3226, file: !489, line: 41, type: !106)
!3231 = !DILocation(line: 0, scope: !3226, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 103, column: 10, scope: !3213)
!3233 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3232)
!3234 = !DILocation(line: 42, column: 8, scope: !3235, inlinedAt: !3232)
!3235 = distinct !DILexicalBlock(scope: !3226, file: !489, line: 42, column: 7)
!3236 = !DILocation(line: 42, column: 15, scope: !3235, inlinedAt: !3232)
!3237 = !DILocation(line: 42, column: 10, scope: !3235, inlinedAt: !3232)
!3238 = !DILocation(line: 43, column: 5, scope: !3235, inlinedAt: !3232)
!3239 = !DILocation(line: 103, column: 3, scope: !3213)
!3240 = !DILocation(line: 0, scope: !3226)
!3241 = !DILocation(line: 41, column: 13, scope: !3226)
!3242 = !DILocation(line: 42, column: 8, scope: !3235)
!3243 = !DILocation(line: 42, column: 15, scope: !3235)
!3244 = !DILocation(line: 42, column: 10, scope: !3235)
!3245 = !DILocation(line: 43, column: 5, scope: !3235)
!3246 = !DILocation(line: 44, column: 3, scope: !3226)
!3247 = distinct !DISubprogram(name: "xnrealloc", scope: !322, file: !322, line: 112, type: !3248, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!106, !106, !108, !108}
!3250 = !{!3251, !3252, !3253}
!3251 = !DILocalVariable(name: "p", arg: 1, scope: !3247, file: !322, line: 112, type: !106)
!3252 = !DILocalVariable(name: "n", arg: 2, scope: !3247, file: !322, line: 112, type: !108)
!3253 = !DILocalVariable(name: "s", arg: 3, scope: !3247, file: !322, line: 112, type: !108)
!3254 = !DILocation(line: 0, scope: !3247)
!3255 = !DILocation(line: 114, column: 7, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3247, file: !322, line: 114, column: 7)
!3257 = !DILocation(line: 114, column: 7, scope: !3247)
!3258 = !DILocation(line: 115, column: 5, scope: !3256)
!3259 = !DILocation(line: 116, column: 25, scope: !3247)
!3260 = !DILocalVariable(name: "p", arg: 1, scope: !3261, file: !489, line: 51, type: !106)
!3261 = distinct !DISubprogram(name: "xrealloc", scope: !489, file: !489, line: 51, type: !3262, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!106, !106, !108}
!3264 = !{!3260, !3265}
!3265 = !DILocalVariable(name: "n", arg: 2, scope: !3261, file: !489, line: 51, type: !108)
!3266 = !DILocation(line: 0, scope: !3261, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 116, column: 10, scope: !3247)
!3268 = !DILocation(line: 53, column: 8, scope: !3269, inlinedAt: !3267)
!3269 = distinct !DILexicalBlock(scope: !3261, file: !489, line: 53, column: 7)
!3270 = !DILocation(line: 53, column: 13, scope: !3269, inlinedAt: !3267)
!3271 = !DILocation(line: 53, column: 10, scope: !3269, inlinedAt: !3267)
!3272 = !DILocation(line: 57, column: 7, scope: !3273, inlinedAt: !3267)
!3273 = distinct !DILexicalBlock(scope: !3269, file: !489, line: 54, column: 5)
!3274 = !DILocation(line: 58, column: 7, scope: !3273, inlinedAt: !3267)
!3275 = !DILocation(line: 61, column: 7, scope: !3261, inlinedAt: !3267)
!3276 = !DILocation(line: 62, column: 8, scope: !3277, inlinedAt: !3267)
!3277 = distinct !DILexicalBlock(scope: !3261, file: !489, line: 62, column: 7)
!3278 = !DILocation(line: 62, column: 13, scope: !3277, inlinedAt: !3267)
!3279 = !DILocation(line: 62, column: 10, scope: !3277, inlinedAt: !3267)
!3280 = !DILocation(line: 63, column: 5, scope: !3277, inlinedAt: !3267)
!3281 = !DILocation(line: 116, column: 3, scope: !3247)
!3282 = !DILocation(line: 0, scope: !3261)
!3283 = !DILocation(line: 53, column: 8, scope: !3269)
!3284 = !DILocation(line: 53, column: 13, scope: !3269)
!3285 = !DILocation(line: 53, column: 10, scope: !3269)
!3286 = !DILocation(line: 57, column: 7, scope: !3273)
!3287 = !DILocation(line: 58, column: 7, scope: !3273)
!3288 = !DILocation(line: 61, column: 7, scope: !3261)
!3289 = !DILocation(line: 62, column: 8, scope: !3277)
!3290 = !DILocation(line: 62, column: 13, scope: !3277)
!3291 = !DILocation(line: 62, column: 10, scope: !3277)
!3292 = !DILocation(line: 63, column: 5, scope: !3277)
!3293 = !DILocation(line: 65, column: 1, scope: !3261)
!3294 = !DILocation(line: 0, scope: !492)
!3295 = !DILocation(line: 176, column: 14, scope: !492)
!3296 = !DILocation(line: 178, column: 9, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !492, file: !322, line: 178, column: 7)
!3298 = !DILocation(line: 178, column: 7, scope: !492)
!3299 = !DILocation(line: 180, column: 13, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !322, line: 180, column: 11)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !322, line: 179, column: 5)
!3302 = !DILocation(line: 180, column: 11, scope: !3301)
!3303 = !DILocation(line: 188, column: 30, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3300, file: !322, line: 181, column: 9)
!3305 = !DILocation(line: 189, column: 16, scope: !3304)
!3306 = !DILocation(line: 189, column: 13, scope: !3304)
!3307 = !DILocation(line: 190, column: 9, scope: !3304)
!3308 = !DILocation(line: 191, column: 11, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3301, file: !322, line: 191, column: 11)
!3310 = !DILocation(line: 191, column: 11, scope: !3301)
!3311 = !DILocation(line: 206, column: 7, scope: !492)
!3312 = !DILocation(line: 207, column: 25, scope: !492)
!3313 = !DILocation(line: 0, scope: !3261, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 207, column: 10, scope: !492)
!3315 = !DILocation(line: 53, column: 10, scope: !3269, inlinedAt: !3314)
!3316 = !DILocation(line: 192, column: 9, scope: !3309)
!3317 = !DILocation(line: 200, column: 69, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !322, line: 200, column: 11)
!3319 = distinct !DILexicalBlock(scope: !3297, file: !322, line: 195, column: 5)
!3320 = !DILocation(line: 201, column: 11, scope: !3318)
!3321 = !DILocation(line: 200, column: 11, scope: !3319)
!3322 = !DILocation(line: 202, column: 9, scope: !3318)
!3323 = !DILocation(line: 203, column: 14, scope: !3319)
!3324 = !DILocation(line: 203, column: 18, scope: !3319)
!3325 = !DILocation(line: 203, column: 9, scope: !3319)
!3326 = !DILocation(line: 53, column: 8, scope: !3269, inlinedAt: !3314)
!3327 = !DILocation(line: 57, column: 7, scope: !3273, inlinedAt: !3314)
!3328 = !DILocation(line: 58, column: 7, scope: !3273, inlinedAt: !3314)
!3329 = !DILocation(line: 61, column: 7, scope: !3261, inlinedAt: !3314)
!3330 = !DILocation(line: 62, column: 8, scope: !3277, inlinedAt: !3314)
!3331 = !DILocation(line: 62, column: 13, scope: !3277, inlinedAt: !3314)
!3332 = !DILocation(line: 62, column: 10, scope: !3277, inlinedAt: !3314)
!3333 = !DILocation(line: 63, column: 5, scope: !3277, inlinedAt: !3314)
!3334 = !DILocation(line: 207, column: 3, scope: !492)
!3335 = distinct !DISubprogram(name: "xcharalloc", scope: !322, file: !322, line: 216, type: !2501, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3336)
!3336 = !{!3337}
!3337 = !DILocalVariable(name: "n", arg: 1, scope: !3335, file: !322, line: 216, type: !108)
!3338 = !DILocation(line: 0, scope: !3335)
!3339 = !DILocation(line: 0, scope: !3226, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 218, column: 10, scope: !3335)
!3341 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3340)
!3342 = !DILocation(line: 42, column: 8, scope: !3235, inlinedAt: !3340)
!3343 = !DILocation(line: 42, column: 15, scope: !3235, inlinedAt: !3340)
!3344 = !DILocation(line: 42, column: 10, scope: !3235, inlinedAt: !3340)
!3345 = !DILocation(line: 43, column: 5, scope: !3235, inlinedAt: !3340)
!3346 = !DILocation(line: 218, column: 3, scope: !3335)
!3347 = distinct !DISubprogram(name: "x2realloc", scope: !489, file: !489, line: 74, type: !3348, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3350)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!106, !106, !495}
!3350 = !{!3351, !3352}
!3351 = !DILocalVariable(name: "p", arg: 1, scope: !3347, file: !489, line: 74, type: !106)
!3352 = !DILocalVariable(name: "pn", arg: 2, scope: !3347, file: !489, line: 74, type: !495)
!3353 = !DILocation(line: 0, scope: !3347)
!3354 = !DILocation(line: 0, scope: !492, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 76, column: 10, scope: !3347)
!3356 = !DILocation(line: 176, column: 14, scope: !492, inlinedAt: !3355)
!3357 = !DILocation(line: 178, column: 9, scope: !3297, inlinedAt: !3355)
!3358 = !DILocation(line: 178, column: 7, scope: !492, inlinedAt: !3355)
!3359 = !DILocation(line: 180, column: 13, scope: !3300, inlinedAt: !3355)
!3360 = !DILocation(line: 180, column: 11, scope: !3301, inlinedAt: !3355)
!3361 = !DILocation(line: 191, column: 11, scope: !3309, inlinedAt: !3355)
!3362 = !DILocation(line: 191, column: 11, scope: !3301, inlinedAt: !3355)
!3363 = !DILocation(line: 206, column: 7, scope: !492, inlinedAt: !3355)
!3364 = !DILocation(line: 0, scope: !3261, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 207, column: 10, scope: !492, inlinedAt: !3355)
!3366 = !DILocation(line: 53, column: 10, scope: !3269, inlinedAt: !3365)
!3367 = !DILocation(line: 192, column: 9, scope: !3309, inlinedAt: !3355)
!3368 = !DILocation(line: 201, column: 11, scope: !3318, inlinedAt: !3355)
!3369 = !DILocation(line: 200, column: 11, scope: !3319, inlinedAt: !3355)
!3370 = !DILocation(line: 202, column: 9, scope: !3318, inlinedAt: !3355)
!3371 = !DILocation(line: 203, column: 14, scope: !3319, inlinedAt: !3355)
!3372 = !DILocation(line: 203, column: 18, scope: !3319, inlinedAt: !3355)
!3373 = !DILocation(line: 203, column: 9, scope: !3319, inlinedAt: !3355)
!3374 = !DILocation(line: 53, column: 8, scope: !3269, inlinedAt: !3365)
!3375 = !DILocation(line: 57, column: 7, scope: !3273, inlinedAt: !3365)
!3376 = !DILocation(line: 58, column: 7, scope: !3273, inlinedAt: !3365)
!3377 = !DILocation(line: 61, column: 7, scope: !3261, inlinedAt: !3365)
!3378 = !DILocation(line: 62, column: 8, scope: !3277, inlinedAt: !3365)
!3379 = !DILocation(line: 62, column: 13, scope: !3277, inlinedAt: !3365)
!3380 = !DILocation(line: 62, column: 10, scope: !3277, inlinedAt: !3365)
!3381 = !DILocation(line: 63, column: 5, scope: !3277, inlinedAt: !3365)
!3382 = !DILocation(line: 76, column: 3, scope: !3347)
!3383 = distinct !DISubprogram(name: "xzalloc", scope: !489, file: !489, line: 84, type: !3227, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3384)
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "n", arg: 1, scope: !3383, file: !489, line: 84, type: !108)
!3386 = !DILocation(line: 0, scope: !3383)
!3387 = !DILocalVariable(name: "n", arg: 1, scope: !3388, file: !489, line: 93, type: !108)
!3388 = distinct !DISubprogram(name: "xcalloc", scope: !489, file: !489, line: 93, type: !3214, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3389)
!3389 = !{!3387, !3390, !3391}
!3390 = !DILocalVariable(name: "s", arg: 2, scope: !3388, file: !489, line: 93, type: !108)
!3391 = !DILocalVariable(name: "p", scope: !3388, file: !489, line: 95, type: !106)
!3392 = !DILocation(line: 0, scope: !3388, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 86, column: 10, scope: !3383)
!3394 = !DILocation(line: 100, column: 7, scope: !3395, inlinedAt: !3393)
!3395 = distinct !DILexicalBlock(scope: !3388, file: !489, line: 100, column: 7)
!3396 = !DILocation(line: 101, column: 7, scope: !3395, inlinedAt: !3393)
!3397 = !DILocation(line: 101, column: 18, scope: !3395, inlinedAt: !3393)
!3398 = !DILocation(line: 101, column: 16, scope: !3395, inlinedAt: !3393)
!3399 = !DILocation(line: 100, column: 7, scope: !3388, inlinedAt: !3393)
!3400 = !DILocation(line: 102, column: 5, scope: !3395, inlinedAt: !3393)
!3401 = !DILocation(line: 86, column: 3, scope: !3383)
!3402 = !DILocation(line: 0, scope: !3388)
!3403 = !DILocation(line: 100, column: 7, scope: !3395)
!3404 = !DILocation(line: 101, column: 7, scope: !3395)
!3405 = !DILocation(line: 101, column: 18, scope: !3395)
!3406 = !DILocation(line: 101, column: 16, scope: !3395)
!3407 = !DILocation(line: 100, column: 7, scope: !3388)
!3408 = !DILocation(line: 102, column: 5, scope: !3395)
!3409 = !DILocation(line: 103, column: 3, scope: !3388)
!3410 = distinct !DISubprogram(name: "xmemdup", scope: !489, file: !489, line: 111, type: !3411, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!106, !325, !108}
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "p", arg: 1, scope: !3410, file: !489, line: 111, type: !325)
!3415 = !DILocalVariable(name: "s", arg: 2, scope: !3410, file: !489, line: 111, type: !108)
!3416 = !DILocation(line: 0, scope: !3410)
!3417 = !DILocation(line: 0, scope: !3226, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 113, column: 18, scope: !3410)
!3419 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3418)
!3420 = !DILocation(line: 42, column: 8, scope: !3235, inlinedAt: !3418)
!3421 = !DILocation(line: 42, column: 15, scope: !3235, inlinedAt: !3418)
!3422 = !DILocation(line: 42, column: 10, scope: !3235, inlinedAt: !3418)
!3423 = !DILocation(line: 43, column: 5, scope: !3235, inlinedAt: !3418)
!3424 = !DILocalVariable(name: "__dest", arg: 1, scope: !3425, file: !2034, line: 31, type: !3428)
!3425 = distinct !DISubprogram(name: "memcpy", scope: !2034, file: !2034, line: 31, type: !3426, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3430)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!106, !3428, !3429, !108}
!3428 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!3429 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !325)
!3430 = !{!3424, !3431, !3432}
!3431 = !DILocalVariable(name: "__src", arg: 2, scope: !3425, file: !2034, line: 31, type: !3429)
!3432 = !DILocalVariable(name: "__len", arg: 3, scope: !3425, file: !2034, line: 31, type: !108)
!3433 = !DILocation(line: 0, scope: !3425, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 113, column: 10, scope: !3410)
!3435 = !DILocation(line: 34, column: 10, scope: !3425, inlinedAt: !3434)
!3436 = !DILocation(line: 113, column: 3, scope: !3410)
!3437 = distinct !DISubprogram(name: "xstrdup", scope: !489, file: !489, line: 119, type: !128, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !3438)
!3438 = !{!3439}
!3439 = !DILocalVariable(name: "string", arg: 1, scope: !3437, file: !489, line: 119, type: !51)
!3440 = !DILocation(line: 0, scope: !3437)
!3441 = !DILocation(line: 121, column: 27, scope: !3437)
!3442 = !DILocation(line: 121, column: 43, scope: !3437)
!3443 = !DILocation(line: 0, scope: !3410, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 121, column: 10, scope: !3437)
!3445 = !DILocation(line: 0, scope: !3226, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 113, column: 18, scope: !3410, inlinedAt: !3444)
!3447 = !DILocation(line: 41, column: 13, scope: !3226, inlinedAt: !3446)
!3448 = !DILocation(line: 42, column: 8, scope: !3235, inlinedAt: !3446)
!3449 = !DILocation(line: 42, column: 15, scope: !3235, inlinedAt: !3446)
!3450 = !DILocation(line: 42, column: 10, scope: !3235, inlinedAt: !3446)
!3451 = !DILocation(line: 43, column: 5, scope: !3235, inlinedAt: !3446)
!3452 = !DILocation(line: 0, scope: !3425, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 113, column: 10, scope: !3410, inlinedAt: !3444)
!3454 = !DILocation(line: 34, column: 10, scope: !3425, inlinedAt: !3453)
!3455 = !DILocation(line: 121, column: 3, scope: !3437)
!3456 = distinct !DISubprogram(name: "xalloc_die", scope: !510, file: !510, line: 32, type: !135, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !54)
!3457 = !DILocation(line: 34, column: 10, scope: !3456)
!3458 = !DILocation(line: 34, column: 33, scope: !3456)
!3459 = !DILocation(line: 34, column: 3, scope: !3456)
!3460 = !DILocation(line: 40, column: 3, scope: !3456)
!3461 = distinct !DISubprogram(name: "rpl_calloc", scope: !513, file: !513, line: 42, type: !3214, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !3462)
!3462 = !{!3463, !3464, !3465, !3466}
!3463 = !DILocalVariable(name: "n", arg: 1, scope: !3461, file: !513, line: 42, type: !108)
!3464 = !DILocalVariable(name: "s", arg: 2, scope: !3461, file: !513, line: 42, type: !108)
!3465 = !DILocalVariable(name: "result", scope: !3461, file: !513, line: 44, type: !106)
!3466 = !DILocalVariable(name: "bytes", scope: !3467, file: !513, line: 56, type: !108)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !513, line: 53, column: 5)
!3468 = distinct !DILexicalBlock(scope: !3461, file: !513, line: 47, column: 7)
!3469 = !DILocation(line: 0, scope: !3461)
!3470 = !DILocation(line: 47, column: 9, scope: !3468)
!3471 = !DILocation(line: 47, column: 19, scope: !3468)
!3472 = !DILocation(line: 47, column: 14, scope: !3468)
!3473 = !DILocation(line: 0, scope: !3467)
!3474 = !DILocation(line: 57, column: 21, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3467, file: !513, line: 57, column: 11)
!3476 = !DILocation(line: 57, column: 11, scope: !3467)
!3477 = !DILocation(line: 59, column: 11, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !513, line: 58, column: 9)
!3479 = !DILocation(line: 59, column: 17, scope: !3478)
!3480 = !DILocation(line: 65, column: 12, scope: !3461)
!3481 = !DILocation(line: 72, column: 3, scope: !3461)
!3482 = !DILocation(line: 73, column: 1, scope: !3461)
!3483 = distinct !DISubprogram(name: "rpl_mbrlen", scope: !428, file: !428, line: 27, type: !3484, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3487)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!108, !51, !108, !3486}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!3487 = !{!3488, !3489, !3490}
!3488 = !DILocalVariable(name: "s", arg: 1, scope: !3483, file: !428, line: 27, type: !51)
!3489 = !DILocalVariable(name: "n", arg: 2, scope: !3483, file: !428, line: 27, type: !108)
!3490 = !DILocalVariable(name: "ps", arg: 3, scope: !3483, file: !428, line: 27, type: !3486)
!3491 = !DILocation(line: 0, scope: !3483)
!3492 = !DILocation(line: 29, column: 10, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3483, file: !428, line: 29, column: 7)
!3494 = !DILocation(line: 29, column: 7, scope: !3483)
!3495 = !DILocation(line: 31, column: 10, scope: !3483)
!3496 = !DILocation(line: 31, column: 3, scope: !3483)
!3497 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !516, file: !516, line: 86, type: !3498, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3504)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!108, !3500, !51, !108, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !444, line: 6, baseType: !3503)
!3503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !180, line: 21, baseType: !522)
!3504 = !{!3505, !3506, !3507, !3508, !3509, !3510, !3511}
!3505 = !DILocalVariable(name: "pwc", arg: 1, scope: !3497, file: !516, line: 86, type: !3500)
!3506 = !DILocalVariable(name: "s", arg: 2, scope: !3497, file: !516, line: 86, type: !51)
!3507 = !DILocalVariable(name: "n", arg: 3, scope: !3497, file: !516, line: 86, type: !108)
!3508 = !DILocalVariable(name: "ps", arg: 4, scope: !3497, file: !516, line: 86, type: !3501)
!3509 = !DILocalVariable(name: "ret", scope: !3497, file: !516, line: 88, type: !108)
!3510 = !DILocalVariable(name: "wc", scope: !3497, file: !516, line: 89, type: !1780)
!3511 = !DILocalVariable(name: "uc", scope: !3512, file: !516, line: 156, type: !1654)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !516, line: 155, column: 5)
!3513 = distinct !DILexicalBlock(scope: !3497, file: !516, line: 154, column: 7)
!3514 = !DILocation(line: 0, scope: !3497)
!3515 = !DILocation(line: 89, column: 3, scope: !3497)
!3516 = !DILocation(line: 105, column: 9, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3497, file: !516, line: 105, column: 7)
!3518 = !DILocation(line: 105, column: 7, scope: !3497)
!3519 = !DILocation(line: 145, column: 9, scope: !3497)
!3520 = !DILocation(line: 154, column: 19, scope: !3513)
!3521 = !DILocation(line: 154, column: 31, scope: !3513)
!3522 = !DILocation(line: 154, column: 26, scope: !3513)
!3523 = !DILocation(line: 154, column: 41, scope: !3513)
!3524 = !DILocation(line: 154, column: 7, scope: !3497)
!3525 = !DILocation(line: 156, column: 26, scope: !3512)
!3526 = !DILocation(line: 0, scope: !3512)
!3527 = !DILocation(line: 157, column: 14, scope: !3512)
!3528 = !DILocation(line: 157, column: 12, scope: !3512)
!3529 = !DILocation(line: 163, column: 1, scope: !3497)
!3530 = distinct !DISubprogram(name: "close_stream", scope: !535, file: !535, line: 56, type: !3531, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !3535)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!53, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3089, line: 7, baseType: !542)
!3535 = !{!3536, !3537, !3539, !3540}
!3536 = !DILocalVariable(name: "stream", arg: 1, scope: !3530, file: !535, line: 56, type: !3533)
!3537 = !DILocalVariable(name: "some_pending", scope: !3530, file: !535, line: 58, type: !3538)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!3539 = !DILocalVariable(name: "prev_fail", scope: !3530, file: !535, line: 59, type: !3538)
!3540 = !DILocalVariable(name: "fclose_fail", scope: !3530, file: !535, line: 60, type: !3538)
!3541 = !DILocation(line: 0, scope: !3530)
!3542 = !DILocation(line: 58, column: 30, scope: !3530)
!3543 = !DILocalVariable(name: "__stream", arg: 1, scope: !3544, file: !3545, line: 135, type: !3533)
!3544 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3545, file: !3545, line: 135, type: !3531, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !534, retainedNodes: !3546)
!3545 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3546 = !{!3543}
!3547 = !DILocation(line: 0, scope: !3544, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 59, column: 27, scope: !3530)
!3549 = !DILocation(line: 137, column: 10, scope: !3544, inlinedAt: !3548)
!3550 = !{!3551, !1297, i64 0}
!3551 = !{!"_IO_FILE", !1297, i64 0, !1139, i64 8, !1139, i64 16, !1139, i64 24, !1139, i64 32, !1139, i64 40, !1139, i64 48, !1139, i64 56, !1139, i64 64, !1139, i64 72, !1139, i64 80, !1139, i64 88, !1139, i64 96, !1139, i64 104, !1297, i64 112, !1297, i64 116, !2537, i64 120, !2027, i64 128, !1140, i64 130, !1140, i64 131, !1139, i64 136, !2537, i64 144, !1139, i64 152, !1139, i64 160, !1139, i64 168, !1139, i64 176, !2537, i64 184, !1297, i64 192, !1140, i64 196}
!3552 = !DILocation(line: 59, column: 43, scope: !3530)
!3553 = !DILocation(line: 60, column: 29, scope: !3530)
!3554 = !DILocation(line: 60, column: 45, scope: !3530)
!3555 = !DILocation(line: 70, column: 17, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3530, file: !535, line: 70, column: 7)
!3557 = !DILocation(line: 58, column: 50, scope: !3530)
!3558 = !DILocation(line: 70, column: 33, scope: !3556)
!3559 = !DILocation(line: 70, column: 53, scope: !3556)
!3560 = !DILocation(line: 70, column: 59, scope: !3556)
!3561 = !DILocation(line: 70, column: 7, scope: !3530)
!3562 = !DILocation(line: 72, column: 11, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3556, file: !535, line: 71, column: 5)
!3564 = !DILocation(line: 73, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3563, file: !535, line: 72, column: 11)
!3566 = !DILocation(line: 73, column: 15, scope: !3565)
!3567 = !DILocation(line: 78, column: 1, scope: !3530)
!3568 = distinct !DISubprogram(name: "hard_locale", scope: !574, file: !574, line: 27, type: !532, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3569)
!3569 = !{!3570, !3571}
!3570 = !DILocalVariable(name: "category", arg: 1, scope: !3568, file: !574, line: 27, type: !53)
!3571 = !DILocalVariable(name: "locale", scope: !3568, file: !574, line: 29, type: !3572)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2056, elements: !3573)
!3573 = !{!3574}
!3574 = !DISubrange(count: 257)
!3575 = !DILocation(line: 0, scope: !3568)
!3576 = !DILocation(line: 29, column: 3, scope: !3568)
!3577 = !DILocation(line: 29, column: 8, scope: !3568)
!3578 = !DILocation(line: 31, column: 7, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3568, file: !574, line: 31, column: 7)
!3580 = !DILocation(line: 31, column: 7, scope: !3568)
!3581 = !DILocation(line: 34, column: 12, scope: !3568)
!3582 = !DILocation(line: 34, column: 38, scope: !3568)
!3583 = !DILocation(line: 34, column: 41, scope: !3568)
!3584 = !DILocation(line: 34, column: 66, scope: !3568)
!3585 = !DILocation(line: 35, column: 1, scope: !3568)
!3586 = distinct !DISubprogram(name: "locale_charset", scope: !581, file: !581, line: 831, type: !373, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !580, retainedNodes: !3587)
!3587 = !{!3588}
!3588 = !DILocalVariable(name: "codeset", scope: !3586, file: !581, line: 833, type: !51)
!3589 = !DILocation(line: 847, column: 13, scope: !3586)
!3590 = !DILocation(line: 0, scope: !3586)
!3591 = !DILocation(line: 911, column: 15, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3586, file: !581, line: 911, column: 7)
!3593 = !DILocation(line: 911, column: 7, scope: !3586)
!3594 = !DILocation(line: 1070, column: 13, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !581, line: 1070, column: 13)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !581, line: 1060, column: 7)
!3597 = distinct !DILexicalBlock(scope: !3586, file: !581, line: 1019, column: 3)
!3598 = !DILocation(line: 1070, column: 24, scope: !3595)
!3599 = !DILocation(line: 1070, column: 13, scope: !3596)
!3600 = !DILocation(line: 1158, column: 3, scope: !3586)
!3601 = distinct !DISubprogram(name: "setlocale_null_r", scope: !974, file: !974, line: 269, type: !3602, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!53, !53, !49, !108}
!3604 = !{!3605, !3606, !3607}
!3605 = !DILocalVariable(name: "category", arg: 1, scope: !3601, file: !974, line: 269, type: !53)
!3606 = !DILocalVariable(name: "buf", arg: 2, scope: !3601, file: !974, line: 269, type: !49)
!3607 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3601, file: !974, line: 269, type: !108)
!3608 = !DILocation(line: 0, scope: !3601)
!3609 = !DILocalVariable(name: "category", arg: 1, scope: !3610, file: !974, line: 91, type: !53)
!3610 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !974, file: !974, line: 91, type: !3602, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !3611)
!3611 = !{!3609, !3612, !3613, !3614, !3615}
!3612 = !DILocalVariable(name: "buf", arg: 2, scope: !3610, file: !974, line: 91, type: !49)
!3613 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3610, file: !974, line: 91, type: !108)
!3614 = !DILocalVariable(name: "result", scope: !3610, file: !974, line: 140, type: !51)
!3615 = !DILocalVariable(name: "length", scope: !3616, file: !974, line: 154, type: !108)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !974, line: 153, column: 5)
!3617 = distinct !DILexicalBlock(scope: !3610, file: !974, line: 142, column: 7)
!3618 = !DILocation(line: 0, scope: !3610, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 274, column: 10, scope: !3601)
!3620 = !DILocalVariable(name: "category", arg: 1, scope: !3621, file: !974, line: 60, type: !53)
!3621 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !974, file: !974, line: 60, type: !3622, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!51, !53}
!3624 = !{!3620, !3625}
!3625 = !DILocalVariable(name: "result", scope: !3621, file: !974, line: 62, type: !51)
!3626 = !DILocation(line: 0, scope: !3621, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 140, column: 24, scope: !3610, inlinedAt: !3619)
!3628 = !DILocation(line: 62, column: 24, scope: !3621, inlinedAt: !3627)
!3629 = !DILocation(line: 142, column: 14, scope: !3617, inlinedAt: !3619)
!3630 = !DILocation(line: 142, column: 7, scope: !3610, inlinedAt: !3619)
!3631 = !DILocation(line: 145, column: 19, scope: !3632, inlinedAt: !3619)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !974, line: 145, column: 11)
!3633 = distinct !DILexicalBlock(scope: !3617, file: !974, line: 143, column: 5)
!3634 = !DILocation(line: 145, column: 11, scope: !3633, inlinedAt: !3619)
!3635 = !DILocation(line: 149, column: 16, scope: !3632, inlinedAt: !3619)
!3636 = !DILocation(line: 149, column: 9, scope: !3632, inlinedAt: !3619)
!3637 = !DILocation(line: 154, column: 23, scope: !3616, inlinedAt: !3619)
!3638 = !DILocation(line: 0, scope: !3616, inlinedAt: !3619)
!3639 = !DILocation(line: 155, column: 18, scope: !3640, inlinedAt: !3619)
!3640 = distinct !DILexicalBlock(scope: !3616, file: !974, line: 155, column: 11)
!3641 = !DILocation(line: 155, column: 11, scope: !3616, inlinedAt: !3619)
!3642 = !DILocation(line: 157, column: 39, scope: !3643, inlinedAt: !3619)
!3643 = distinct !DILexicalBlock(scope: !3640, file: !974, line: 156, column: 9)
!3644 = !DILocalVariable(name: "__dest", arg: 1, scope: !3645, file: !2034, line: 31, type: !3428)
!3645 = distinct !DISubprogram(name: "memcpy", scope: !2034, file: !2034, line: 31, type: !3426, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !3646)
!3646 = !{!3644, !3647, !3648}
!3647 = !DILocalVariable(name: "__src", arg: 2, scope: !3645, file: !2034, line: 31, type: !3429)
!3648 = !DILocalVariable(name: "__len", arg: 3, scope: !3645, file: !2034, line: 31, type: !108)
!3649 = !DILocation(line: 0, scope: !3645, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 157, column: 11, scope: !3643, inlinedAt: !3619)
!3651 = !DILocation(line: 34, column: 10, scope: !3645, inlinedAt: !3650)
!3652 = !DILocation(line: 158, column: 11, scope: !3643, inlinedAt: !3619)
!3653 = !DILocation(line: 162, column: 23, scope: !3654, inlinedAt: !3619)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !974, line: 162, column: 15)
!3655 = distinct !DILexicalBlock(scope: !3640, file: !974, line: 161, column: 9)
!3656 = !DILocation(line: 162, column: 15, scope: !3655, inlinedAt: !3619)
!3657 = !DILocation(line: 167, column: 44, scope: !3658, inlinedAt: !3619)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !974, line: 163, column: 13)
!3659 = !DILocation(line: 0, scope: !3645, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 167, column: 15, scope: !3658, inlinedAt: !3619)
!3661 = !DILocation(line: 34, column: 10, scope: !3645, inlinedAt: !3660)
!3662 = !DILocation(line: 168, column: 15, scope: !3658, inlinedAt: !3619)
!3663 = !DILocation(line: 168, column: 32, scope: !3658, inlinedAt: !3619)
!3664 = !DILocation(line: 169, column: 13, scope: !3658, inlinedAt: !3619)
!3665 = !DILocation(line: 0, scope: !3617, inlinedAt: !3619)
!3666 = !DILocation(line: 274, column: 3, scope: !3601)
!3667 = distinct !DISubprogram(name: "setlocale_null", scope: !974, file: !974, line: 301, type: !3622, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !973, retainedNodes: !3668)
!3668 = !{!3669}
!3669 = !DILocalVariable(name: "category", arg: 1, scope: !3667, file: !974, line: 301, type: !53)
!3670 = !DILocation(line: 0, scope: !3667)
!3671 = !DILocation(line: 0, scope: !3621, inlinedAt: !3672)
!3672 = distinct !DILocation(line: 304, column: 10, scope: !3667)
!3673 = !DILocation(line: 62, column: 24, scope: !3621, inlinedAt: !3672)
!3674 = !DILocation(line: 304, column: 3, scope: !3667)
!3675 = distinct !DISubprogram(name: "rpl_fclose", scope: !977, file: !977, line: 58, type: !3676, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !3680)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!53, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3089, line: 7, baseType: !983)
!3680 = !{!3681, !3682, !3683, !3684}
!3681 = !DILocalVariable(name: "fp", arg: 1, scope: !3675, file: !977, line: 58, type: !3678)
!3682 = !DILocalVariable(name: "saved_errno", scope: !3675, file: !977, line: 60, type: !53)
!3683 = !DILocalVariable(name: "fd", scope: !3675, file: !977, line: 61, type: !53)
!3684 = !DILocalVariable(name: "result", scope: !3675, file: !977, line: 62, type: !53)
!3685 = !DILocation(line: 0, scope: !3675)
!3686 = !DILocation(line: 65, column: 8, scope: !3675)
!3687 = !DILocation(line: 66, column: 10, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3675, file: !977, line: 66, column: 7)
!3689 = !DILocation(line: 66, column: 7, scope: !3675)
!3690 = !DILocation(line: 67, column: 12, scope: !3688)
!3691 = !DILocation(line: 67, column: 5, scope: !3688)
!3692 = !DILocation(line: 72, column: 9, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3675, file: !977, line: 72, column: 7)
!3694 = !DILocation(line: 72, column: 23, scope: !3693)
!3695 = !DILocation(line: 72, column: 33, scope: !3693)
!3696 = !DILocation(line: 72, column: 26, scope: !3693)
!3697 = !DILocation(line: 72, column: 59, scope: !3693)
!3698 = !DILocation(line: 73, column: 7, scope: !3693)
!3699 = !DILocation(line: 73, column: 10, scope: !3693)
!3700 = !DILocation(line: 72, column: 7, scope: !3675)
!3701 = !DILocation(line: 100, column: 12, scope: !3675)
!3702 = !DILocation(line: 105, column: 7, scope: !3675)
!3703 = !DILocation(line: 74, column: 19, scope: !3693)
!3704 = !DILocation(line: 105, column: 19, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3675, file: !977, line: 105, column: 7)
!3706 = !DILocation(line: 107, column: 13, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3705, file: !977, line: 106, column: 5)
!3708 = !DILocation(line: 109, column: 5, scope: !3707)
!3709 = !DILocation(line: 112, column: 1, scope: !3675)
!3710 = distinct !DISubprogram(name: "rpl_fflush", scope: !1020, file: !1020, line: 129, type: !3711, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !3715)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!53, !3713}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3089, line: 7, baseType: !1026)
!3715 = !{!3716}
!3716 = !DILocalVariable(name: "stream", arg: 1, scope: !3710, file: !1020, line: 129, type: !3713)
!3717 = !DILocation(line: 0, scope: !3710)
!3718 = !DILocation(line: 150, column: 14, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3710, file: !1020, line: 150, column: 7)
!3720 = !DILocation(line: 150, column: 22, scope: !3719)
!3721 = !DILocation(line: 150, column: 27, scope: !3719)
!3722 = !DILocation(line: 150, column: 7, scope: !3710)
!3723 = !DILocation(line: 151, column: 12, scope: !3719)
!3724 = !DILocation(line: 151, column: 5, scope: !3719)
!3725 = !DILocalVariable(name: "fp", arg: 1, scope: !3726, file: !1020, line: 41, type: !3713)
!3726 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1020, file: !1020, line: 41, type: !3727, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3713}
!3729 = !{!3725}
!3730 = !DILocation(line: 0, scope: !3726, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 156, column: 3, scope: !3710)
!3732 = !DILocation(line: 43, column: 11, scope: !3733, inlinedAt: !3731)
!3733 = distinct !DILexicalBlock(scope: !3726, file: !1020, line: 43, column: 7)
!3734 = !DILocation(line: 43, column: 18, scope: !3733, inlinedAt: !3731)
!3735 = !DILocation(line: 43, column: 7, scope: !3726, inlinedAt: !3731)
!3736 = !DILocation(line: 45, column: 5, scope: !3733, inlinedAt: !3731)
!3737 = !DILocation(line: 158, column: 10, scope: !3710)
!3738 = !DILocation(line: 158, column: 3, scope: !3710)
!3739 = !DILocation(line: 235, column: 1, scope: !3710)
!3740 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1061, file: !1061, line: 28, type: !3741, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1060, retainedNodes: !3746)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!53, !3743, !3745, !53}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3089, line: 7, baseType: !1067)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !56, line: 63, baseType: !82)
!3746 = !{!3747, !3748, !3749, !3750}
!3747 = !DILocalVariable(name: "fp", arg: 1, scope: !3740, file: !1061, line: 28, type: !3743)
!3748 = !DILocalVariable(name: "offset", arg: 2, scope: !3740, file: !1061, line: 28, type: !3745)
!3749 = !DILocalVariable(name: "whence", arg: 3, scope: !3740, file: !1061, line: 28, type: !53)
!3750 = !DILocalVariable(name: "pos", scope: !3751, file: !1061, line: 117, type: !3745)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !1061, line: 113, column: 5)
!3752 = distinct !DILexicalBlock(scope: !3740, file: !1061, line: 52, column: 7)
!3753 = !DILocation(line: 0, scope: !3740)
!3754 = !DILocation(line: 52, column: 11, scope: !3752)
!3755 = !{!3551, !1139, i64 16}
!3756 = !DILocation(line: 52, column: 31, scope: !3752)
!3757 = !{!3551, !1139, i64 8}
!3758 = !DILocation(line: 52, column: 24, scope: !3752)
!3759 = !DILocation(line: 53, column: 7, scope: !3752)
!3760 = !DILocation(line: 53, column: 14, scope: !3752)
!3761 = !{!3551, !1139, i64 40}
!3762 = !DILocation(line: 53, column: 35, scope: !3752)
!3763 = !{!3551, !1139, i64 32}
!3764 = !DILocation(line: 53, column: 28, scope: !3752)
!3765 = !DILocation(line: 54, column: 7, scope: !3752)
!3766 = !DILocation(line: 54, column: 14, scope: !3752)
!3767 = !{!3551, !1139, i64 72}
!3768 = !DILocation(line: 54, column: 28, scope: !3752)
!3769 = !DILocation(line: 52, column: 7, scope: !3740)
!3770 = !DILocation(line: 117, column: 26, scope: !3751)
!3771 = !DILocation(line: 117, column: 19, scope: !3751)
!3772 = !DILocation(line: 0, scope: !3751)
!3773 = !DILocation(line: 118, column: 15, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3751, file: !1061, line: 118, column: 11)
!3775 = !DILocation(line: 118, column: 11, scope: !3751)
!3776 = !DILocation(line: 129, column: 11, scope: !3751)
!3777 = !DILocation(line: 129, column: 18, scope: !3751)
!3778 = !DILocation(line: 130, column: 11, scope: !3751)
!3779 = !DILocation(line: 130, column: 19, scope: !3751)
!3780 = !{!3551, !2537, i64 144}
!3781 = !DILocation(line: 161, column: 7, scope: !3751)
!3782 = !DILocation(line: 163, column: 10, scope: !3740)
!3783 = !DILocation(line: 163, column: 3, scope: !3740)
!3784 = !DILocation(line: 164, column: 1, scope: !3740)
