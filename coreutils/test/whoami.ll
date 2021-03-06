; ModuleID = 'coreutils-8.32/src/whoami.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Print the user name associated with the current effective user ID.\0ASame as id -un.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.24 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %lu\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !0
@.str.28 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !93
@opterr = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.37, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.38, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !99
@.str.2.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !167
@.str.46 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.52, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.58, i32 0, i32 0), i8* null], align 16, !dbg !209
@.str.49 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.50 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.51 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.52 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.53 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.54 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.55 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.56 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.57 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.58 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !328
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !330
@.str.11.59 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.60 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.61 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.62 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.63 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.64 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.65 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !337
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !344
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !332
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !346
@.str.70 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.71 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.72 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.74 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.75 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.76 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.77 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.78 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.79 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.80 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.81 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.82 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.83 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.84 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.85 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.88 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.89 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.90 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.91 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.92 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.93 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.94 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !352
@.str.1.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.115 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1110 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1113, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i32 %0, metadata !1112, metadata !DIExpression()), !dbg !1134
  %3 = icmp eq i32 %0, 0, !dbg !1135
  br i1 %3, label %9, label %4, !dbg !1136

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1137, !tbaa !1139
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !1137
  %7 = load i8*, i8** @program_name, align 8, !dbg !1137, !tbaa !1139
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !1137
  br label %58, !dbg !1137

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !1143
  %11 = load i8*, i8** @program_name, align 8, !dbg !1143, !tbaa !1139
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !1143
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !1144
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1144, !tbaa !1139
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1144
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !1145
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1145, !tbaa !1139
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1145
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !1146
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1146, !tbaa !1139
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1146
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !1117, metadata !DIExpression()) #12, !dbg !1147
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1148
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1148
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !1130
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), metadata !1118, metadata !DIExpression()) #12, !dbg !1147
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1119, metadata !DIExpression()) #12, !dbg !1147
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1149
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1119, metadata !DIExpression()) #12, !dbg !1147
  br label %24, !dbg !1150

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1119, metadata !DIExpression()) #12, !dbg !1147
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #21, !dbg !1151
  %28 = icmp eq i32 %27, 0, !dbg !1151
  br i1 %28, label %34, label %29, !dbg !1150

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1152
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1119, metadata !DIExpression()) #12, !dbg !1147
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1153
  %32 = load i8*, i8** %31, align 8, !dbg !1153, !tbaa !1154
  %33 = icmp eq i8* %32, null, !dbg !1156
  br i1 %33, label %34, label %24, !dbg !1157, !llvm.loop !1158

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1119, metadata !DIExpression()) #12, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1119, metadata !DIExpression()) #12, !dbg !1147
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1159
  %37 = load i8*, i8** %36, align 8, !dbg !1159, !tbaa !1161
  %38 = icmp eq i8* %37, null, !dbg !1162
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1163
  call void @llvm.dbg.value(metadata i8* %39, metadata !1118, metadata !DIExpression()) #12, !dbg !1147
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !1164
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #12, !dbg !1164
  %42 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %42, metadata !1126, metadata !DIExpression()) #12, !dbg !1147
  %43 = icmp eq i8* %42, null, !dbg !1166
  br i1 %43, label %51, label %44, !dbg !1168

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3) #21, !dbg !1169
  %46 = icmp eq i32 %45, 0, !dbg !1169
  br i1 %46, label %51, label %47, !dbg !1170

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !1171
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !1139
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12, !dbg !1171
  br label %51, !dbg !1173

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1174
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !1174
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !1175
  %55 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !1175
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1175
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #12, !dbg !1175
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1176
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #22, !dbg !1177
  unreachable, !dbg !1177
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
declare !dbg !363 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !402 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1182, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8** %1, metadata !1183, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i32 -1, metadata !1188, metadata !DIExpression()), !dbg !1189
  %3 = load i8*, i8** %1, align 8, !dbg !1190, !tbaa !1139
  tail call void @set_program_name(i8* %3) #12, !dbg !1191
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !1192
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !1193
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !1194
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !1195
  %8 = load i8*, i8** @Version, align 8, !dbg !1196, !tbaa !1139
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* null) #12, !dbg !1197
  %9 = load i32, i32* @optind, align 4, !dbg !1198, !tbaa !1200
  %10 = icmp eq i32 %9, %0, !dbg !1202
  br i1 %10, label %18, label %11, !dbg !1203

11:                                               ; preds = %2
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !1204
  %13 = load i32, i32* @optind, align 4, !dbg !1206, !tbaa !1200
  %14 = sext i32 %13 to i64, !dbg !1207
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14, !dbg !1207
  %16 = load i8*, i8** %15, align 8, !dbg !1207, !tbaa !1139
  %17 = tail call i8* @quote(i8* %16) #12, !dbg !1208
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %17) #12, !dbg !1209
  tail call void @usage(i32 1) #23, !dbg !1210
  unreachable, !dbg !1210

18:                                               ; preds = %2
  %19 = tail call i32* @__errno_location() #24, !dbg !1211
  store i32 0, i32* %19, align 4, !dbg !1212, !tbaa !1200
  %20 = tail call i32 @geteuid() #12, !dbg !1213
  call void @llvm.dbg.value(metadata i32 %20, metadata !1185, metadata !DIExpression()), !dbg !1189
  %21 = icmp eq i32 %20, -1, !dbg !1214
  br i1 %21, label %22, label %25, !dbg !1215

22:                                               ; preds = %18
  %23 = load i32, i32* %19, align 4, !dbg !1216, !tbaa !1200
  %24 = icmp eq i32 %23, 0, !dbg !1216
  br i1 %24, label %25, label %30, !dbg !1217

25:                                               ; preds = %18, %22
  %26 = tail call %struct.passwd* @getpwuid(i32 %20) #12, !dbg !1218
  call void @llvm.dbg.value(metadata %struct.passwd* %26, metadata !1184, metadata !DIExpression()), !dbg !1189
  %27 = icmp eq %struct.passwd* %26, null, !dbg !1219
  br i1 %27, label %28, label %34, !dbg !1221

28:                                               ; preds = %25
  %29 = load i32, i32* %19, align 4, !dbg !1222, !tbaa !1200
  br label %30, !dbg !1221

30:                                               ; preds = %28, %22
  %31 = phi i32 [ %29, %28 ], [ %23, %22 ], !dbg !1222
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !1222
  %33 = zext i32 %20 to i64, !dbg !1222
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %31, i8* %32, i64 %33) #12, !dbg !1222
  unreachable, !dbg !1222

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.passwd, %struct.passwd* %26, i64 0, i32 0, !dbg !1223
  %36 = load i8*, i8** %35, align 8, !dbg !1223, !tbaa !1224
  %37 = tail call i32 @puts(i8* nonnull dereferenceable(1) %36), !dbg !1226
  ret i32 0, !dbg !1227
}

; Function Attrs: nounwind
declare !dbg !406 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !409 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !410 i32 @atexit(void ()*) local_unnamed_addr #2

declare !dbg !85 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !426 i32 @geteuid() local_unnamed_addr #2

declare !dbg !430 %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !446 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1228 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1230, metadata !DIExpression()), !dbg !1231
  store i8* %0, i8** @file_name, align 8, !dbg !1232, !tbaa !1139
  ret void, !dbg !1233
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1234 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1240, !tbaa !1241
  ret void, !dbg !1243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1244 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1249, !tbaa !1139
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1250
  %3 = icmp eq i32 %2, 0, !dbg !1251
  br i1 %3, label %22, label %4, !dbg !1252

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1253, !tbaa !1241, !range !1254
  %6 = icmp eq i8 %5, 0, !dbg !1253
  br i1 %6, label %11, label %7, !dbg !1255

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #24, !dbg !1256
  %9 = load i32, i32* %8, align 4, !dbg !1256, !tbaa !1200
  %10 = icmp eq i32 %9, 32, !dbg !1257
  br i1 %10, label %22, label %11, !dbg !1258

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !1259
  call void @llvm.dbg.value(metadata i8* %12, metadata !1246, metadata !DIExpression()), !dbg !1260
  %13 = load i8*, i8** @file_name, align 8, !dbg !1261, !tbaa !1139
  %14 = icmp eq i8* %13, null, !dbg !1261
  %15 = tail call i32* @__errno_location() #24, !dbg !1263
  %16 = load i32, i32* %15, align 4, !dbg !1263, !tbaa !1200
  br i1 %14, label %19, label %17, !dbg !1264

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1265
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1266
  br label %20, !dbg !1266

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #12, !dbg !1267
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1268, !tbaa !1200
  tail call void @_exit(i32 %21) #22, !dbg !1269
  unreachable, !dbg !1269

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1270, !tbaa !1139
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1272
  %25 = icmp eq i32 %24, 0, !dbg !1273
  br i1 %25, label %28, label %26, !dbg !1274

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1275, !tbaa !1200
  tail call void @_exit(i32 %27) #22, !dbg !1276
  unreachable, !dbg !1276

28:                                               ; preds = %22
  ret void, !dbg !1277
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1278 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1282, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8** %1, metadata !1283, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8* %2, metadata !1284, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8* %3, metadata !1285, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i8* %4, metadata !1286, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1287, metadata !DIExpression()), !dbg !1300
  %8 = load i32, i32* @opterr, align 4, !dbg !1301, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %8, metadata !1289, metadata !DIExpression()), !dbg !1300
  store i32 0, i32* @opterr, align 4, !dbg !1302, !tbaa !1200
  %9 = icmp eq i32 %0, 2, !dbg !1303
  br i1 %9, label %10, label %17, !dbg !1304

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %11, metadata !1288, metadata !DIExpression()), !dbg !1300
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1306

12:                                               ; preds = %10
  tail call void %5(i32 0) #12, !dbg !1307
  br label %17, !dbg !1308

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #12, !dbg !1309
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1290, metadata !DIExpression()), !dbg !1310
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1311
  call void @llvm.va_start(i8* nonnull %14), !dbg !1311
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1312, !tbaa !1139
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #12, !dbg !1313
  call void @exit(i32 0) #22, !dbg !1314
  unreachable, !dbg !1314

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1315, !tbaa !1200
  store i32 0, i32* @optind, align 4, !dbg !1316, !tbaa !1200
  ret void, !dbg !1317
}

; Function Attrs: nounwind
declare !dbg !104 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1318 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1320, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8** %1, metadata !1321, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %2, metadata !1322, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %3, metadata !1323, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %4, metadata !1324, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i1 %5, metadata !1325, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1326, metadata !DIExpression()), !dbg !1335
  %9 = load i32, i32* @opterr, align 4, !dbg !1336, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %9, metadata !1328, metadata !DIExpression()), !dbg !1335
  store i32 1, i32* @opterr, align 4, !dbg !1337, !tbaa !1200
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.41, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), !dbg !1338
  call void @llvm.dbg.value(metadata i8* %10, metadata !1329, metadata !DIExpression()), !dbg !1335
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1339
  call void @llvm.dbg.value(metadata i32 %11, metadata !1327, metadata !DIExpression()), !dbg !1335
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1340

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1341
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1341
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1330, metadata !DIExpression()), !dbg !1342
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1343
  call void @llvm.va_start(i8* nonnull %13), !dbg !1343
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1344, !tbaa !1139
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #12, !dbg !1345
  call void @exit(i32 0) #22, !dbg !1346
  unreachable, !dbg !1346

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1347, !tbaa !1200
  br label %18, !dbg !1348

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #12, !dbg !1349
  br label %20, !dbg !1350

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1350, !tbaa !1200
  ret void, !dbg !1351
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1352 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1354, metadata !DIExpression()), !dbg !1357
  %2 = icmp eq i8* %0, null, !dbg !1358
  br i1 %2, label %3, label %6, !dbg !1360

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1361, !tbaa !1139
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #25, !dbg !1363
  tail call void @abort() #22, !dbg !1364
  unreachable, !dbg !1364

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1365
  call void @llvm.dbg.value(metadata i8* %7, metadata !1355, metadata !DIExpression()), !dbg !1357
  %8 = icmp eq i8* %7, null, !dbg !1366
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1367
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %10, metadata !1356, metadata !DIExpression()), !dbg !1357
  %11 = ptrtoint i8* %10 to i64, !dbg !1368
  %12 = ptrtoint i8* %0 to i64, !dbg !1368
  %13 = sub i64 %11, %12, !dbg !1368
  %14 = icmp sgt i64 %13, 6, !dbg !1370
  br i1 %14, label %15, label %24, !dbg !1371

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1372
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.47, i64 0, i64 0), i64 7) #21, !dbg !1373
  %18 = icmp eq i32 %17, 0, !dbg !1374
  br i1 %18, label %19, label %24, !dbg !1375

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1354, metadata !DIExpression()), !dbg !1357
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i64 0, i64 0), i64 3) #21, !dbg !1376
  %21 = icmp eq i32 %20, 0, !dbg !1379
  br i1 %21, label %22, label %24, !dbg !1380

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1381
  call void @llvm.dbg.value(metadata i8* %23, metadata !1354, metadata !DIExpression()), !dbg !1357
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1383, !tbaa !1139
  br label %24, !dbg !1384

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1354, metadata !DIExpression()), !dbg !1357
  store i8* %25, i8** @program_name, align 8, !dbg !1385, !tbaa !1139
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1386, !tbaa !1139
  ret void, !dbg !1387
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1388 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1393, metadata !DIExpression()), !dbg !1396
  %2 = tail call i32* @__errno_location() #24, !dbg !1397
  %3 = load i32, i32* %2, align 4, !dbg !1397, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %3, metadata !1394, metadata !DIExpression()), !dbg !1396
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1398
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1398
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1398
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1399
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1395, metadata !DIExpression()), !dbg !1396
  store i32 %3, i32* %2, align 4, !dbg !1400, !tbaa !1200
  ret %struct.quoting_options* %8, !dbg !1401
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1402 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1406, metadata !DIExpression()), !dbg !1407
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1408
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1408
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1409
  %5 = load i32, i32* %4, align 8, !dbg !1409, !tbaa !1410
  ret i32 %5, !dbg !1412
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1413 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1417, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i32 %1, metadata !1418, metadata !DIExpression()), !dbg !1419
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1420
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1420
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1421
  store i32 %1, i32* %5, align 8, !dbg !1422, !tbaa !1410
  ret void, !dbg !1423
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1424 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1428, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %1, metadata !1429, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %2, metadata !1430, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %1, metadata !1431, metadata !DIExpression()), !dbg !1437
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1438
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1438
  %6 = lshr i8 %1, 5, !dbg !1439
  %7 = zext i8 %6 to i64, !dbg !1439
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1440
  call void @llvm.dbg.value(metadata i32* %8, metadata !1433, metadata !DIExpression()), !dbg !1437
  %9 = and i8 %1, 31, !dbg !1441
  %10 = zext i8 %9 to i32, !dbg !1441
  call void @llvm.dbg.value(metadata i32 %10, metadata !1435, metadata !DIExpression()), !dbg !1437
  %11 = load i32, i32* %8, align 4, !dbg !1442, !tbaa !1200
  %12 = lshr i32 %11, %10, !dbg !1443
  %13 = and i32 %12, 1, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %13, metadata !1436, metadata !DIExpression()), !dbg !1437
  %14 = and i32 %2, 1, !dbg !1445
  %15 = xor i32 %13, %14, !dbg !1446
  %16 = shl i32 %15, %10, !dbg !1447
  %17 = xor i32 %16, %11, !dbg !1448
  store i32 %17, i32* %8, align 4, !dbg !1448, !tbaa !1200
  ret i32 %13, !dbg !1449
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1450 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1454, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i32 %1, metadata !1455, metadata !DIExpression()), !dbg !1457
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1458
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1460
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1454, metadata !DIExpression()), !dbg !1457
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1461
  %6 = load i32, i32* %5, align 4, !dbg !1461, !tbaa !1462
  call void @llvm.dbg.value(metadata i32 %6, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i32 %1, i32* %5, align 4, !dbg !1463, !tbaa !1462
  ret i32 %6, !dbg !1464
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1465 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1469, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8* %1, metadata !1470, metadata !DIExpression()), !dbg !1472
  call void @llvm.dbg.value(metadata i8* %2, metadata !1471, metadata !DIExpression()), !dbg !1472
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1473
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1469, metadata !DIExpression()), !dbg !1472
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1476
  store i32 10, i32* %6, align 8, !dbg !1477, !tbaa !1410
  %7 = icmp ne i8* %1, null, !dbg !1478
  %8 = icmp ne i8* %2, null, !dbg !1480
  %9 = and i1 %7, %8, !dbg !1481
  br i1 %9, label %11, label %10, !dbg !1481

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1482
  unreachable, !dbg !1482

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1483
  store i8* %1, i8** %12, align 8, !dbg !1484, !tbaa !1485
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1486
  store i8* %2, i8** %13, align 8, !dbg !1487, !tbaa !1488
  ret void, !dbg !1489
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1490 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1494, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %1, metadata !1495, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8* %2, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %3, metadata !1497, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1498, metadata !DIExpression()), !dbg !1502
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1503
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1503
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1499, metadata !DIExpression()), !dbg !1502
  %8 = tail call i32* @__errno_location() #24, !dbg !1504
  %9 = load i32, i32* %8, align 4, !dbg !1504, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %9, metadata !1500, metadata !DIExpression()), !dbg !1502
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1505
  %11 = load i32, i32* %10, align 8, !dbg !1505, !tbaa !1410
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1506
  %13 = load i32, i32* %12, align 4, !dbg !1506, !tbaa !1462
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1507
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1508
  %16 = load i8*, i8** %15, align 8, !dbg !1508, !tbaa !1485
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1509
  %18 = load i8*, i8** %17, align 8, !dbg !1509, !tbaa !1488
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1510
  call void @llvm.dbg.value(metadata i64 %19, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i32 %9, i32* %8, align 4, !dbg !1511, !tbaa !1200
  ret i64 %19, !dbg !1512
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1513 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1519, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %1, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %2, metadata !1521, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %3, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %4, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %5, metadata !1524, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32* %6, metadata !1525, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %7, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %8, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* null, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, metadata !1532, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 0, metadata !1533, metadata !DIExpression()), !dbg !1577
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1578
  %14 = icmp eq i64 %13, 1, !dbg !1579
  call void @llvm.dbg.value(metadata i1 %14, metadata !1534, metadata !DIExpression()), !dbg !1577
  %15 = lshr i32 %5, 1, !dbg !1580
  %16 = trunc i32 %15 to i8, !dbg !1580
  %17 = and i8 %16, 1, !dbg !1580
  call void @llvm.dbg.value(metadata i8 %17, metadata !1535, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 0, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 0, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 1, metadata !1538, metadata !DIExpression()), !dbg !1577
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1581
  %19 = and i32 %5, 4, !dbg !1583
  %20 = icmp eq i32 %19, 0, !dbg !1583
  %21 = and i32 %5, 1, !dbg !1586
  %22 = icmp eq i32 %21, 0, !dbg !1586
  %23 = bitcast i64* %10 to i8*, !dbg !1589
  %24 = bitcast i32* %12 to i8*, !dbg !1590
  %25 = icmp eq i32* %6, null, !dbg !1591
  br label %26, !dbg !1593

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1594
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1595
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1596
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1597
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1577
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1598
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1599
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1600
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %38, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %37, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %36, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %35, metadata !1535, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %34, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %33, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %32, metadata !1532, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %31, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %30, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %29, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %28, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %27, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.label(metadata !1571), !dbg !1601
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
  ], !dbg !1602

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 1, metadata !1535, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %35, metadata !1535, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 5, metadata !1523, metadata !DIExpression()), !dbg !1577
  br label %92, !dbg !1603

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1535, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 5, metadata !1523, metadata !DIExpression()), !dbg !1577
  %42 = and i8 %35, 1, !dbg !1605
  %43 = icmp eq i8 %42, 0, !dbg !1605
  br i1 %43, label %44, label %92, !dbg !1603

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1607
  br i1 %45, label %92, label %46, !dbg !1610

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1607, !tbaa !1611
  br label %92, !dbg !1607

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.59, i64 0, i64 0), i32 %27), !dbg !1612
  call void @llvm.dbg.value(metadata i8* %48, metadata !1526, metadata !DIExpression()), !dbg !1577
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), i32 %27), !dbg !1616
  call void @llvm.dbg.value(metadata i8* %49, metadata !1527, metadata !DIExpression()), !dbg !1577
  br label %50, !dbg !1617

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %51, metadata !1526, metadata !DIExpression()), !dbg !1577
  %53 = and i8 %35, 1, !dbg !1618
  %54 = icmp eq i8 %53, 0, !dbg !1618
  br i1 %54, label %55, label %70, !dbg !1620

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, metadata !1529, metadata !DIExpression()), !dbg !1577
  %56 = load i8, i8* %51, align 1, !dbg !1621, !tbaa !1611
  %57 = icmp eq i8 %56, 0, !dbg !1624
  br i1 %57, label %70, label %58, !dbg !1624

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %61, metadata !1529, metadata !DIExpression()), !dbg !1577
  %62 = icmp ult i64 %61, %39, !dbg !1625
  br i1 %62, label %63, label %65, !dbg !1628

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1625
  store i8 %59, i8* %64, align 1, !dbg !1625, !tbaa !1611
  br label %65, !dbg !1625

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %66, metadata !1529, metadata !DIExpression()), !dbg !1577
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1629
  call void @llvm.dbg.value(metadata i8* %67, metadata !1531, metadata !DIExpression()), !dbg !1577
  %68 = load i8, i8* %67, align 1, !dbg !1621, !tbaa !1611
  %69 = icmp eq i8 %68, 0, !dbg !1624
  br i1 %69, label %70, label %58, !dbg !1624, !llvm.loop !1630

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1632
  call void @llvm.dbg.value(metadata i64 %71, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 1, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %52, metadata !1531, metadata !DIExpression()), !dbg !1577
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %72, metadata !1532, metadata !DIExpression()), !dbg !1577
  br label %92, !dbg !1634

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1533, metadata !DIExpression()), !dbg !1577
  br label %74, !dbg !1635

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %75, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 1, metadata !1535, metadata !DIExpression()), !dbg !1577
  br label %76, !dbg !1636

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1597
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %78, metadata !1535, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %77, metadata !1533, metadata !DIExpression()), !dbg !1577
  %79 = and i8 %78, 1, !dbg !1637
  %80 = icmp eq i8 %79, 0, !dbg !1637
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1639
  br label %82, !dbg !1639

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1577
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1580
  call void @llvm.dbg.value(metadata i8 %84, metadata !1535, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %83, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  %85 = and i8 %84, 1, !dbg !1640
  %86 = icmp eq i8 %85, 0, !dbg !1640
  br i1 %86, label %87, label %92, !dbg !1642

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1643
  br i1 %88, label %92, label %89, !dbg !1646

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1643, !tbaa !1611
  br label %92, !dbg !1643

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1535, metadata !DIExpression()), !dbg !1577
  br label %92, !dbg !1647

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1648
  unreachable, !dbg !1648

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1632
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %40 ], !dbg !1577
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1577
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1577
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %100, metadata !1535, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %98, metadata !1532, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %96, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %93, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 0, metadata !1528, metadata !DIExpression()), !dbg !1577
  %101 = and i8 %99, 1, !dbg !1649
  %102 = icmp ne i8 %101, 0, !dbg !1649
  %103 = icmp ne i32 %93, 2, !dbg !1649
  %104 = and i1 %103, %102, !dbg !1649
  %105 = icmp ne i64 %98, 0, !dbg !1649
  %106 = and i1 %105, %104, !dbg !1649
  %107 = icmp ugt i64 %98, 1, !dbg !1649
  %108 = and i8 %100, 1, !dbg !1651
  %109 = icmp eq i8 %108, 0, !dbg !1651
  %110 = icmp eq i32 %93, 2, !dbg !1654
  %111 = or i1 %103, %109, !dbg !1656
  %112 = icmp ne i8 %108, 0, !dbg !1658
  %113 = and i1 %110, %112, !dbg !1658
  %114 = xor i1 %102, true, !dbg !1659
  %115 = xor i1 %104, true, !dbg !1591
  %116 = and i1 %109, %115, !dbg !1591
  %117 = or i1 %25, %116, !dbg !1591
  %118 = and i8 %99, %100, !dbg !1660
  %119 = and i8 %118, 1, !dbg !1660
  %120 = icmp ne i8 %119, 0, !dbg !1660
  %121 = and i1 %120, %105, !dbg !1660
  br label %122, !dbg !1662

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1663
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1632
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1594
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1598
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1599
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1600
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %126, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %123, metadata !1528, metadata !DIExpression()), !dbg !1577
  %131 = icmp eq i64 %126, -1, !dbg !1664
  br i1 %131, label %132, label %136, !dbg !1665

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1666
  %134 = load i8, i8* %133, align 1, !dbg !1666, !tbaa !1611
  %135 = icmp eq i8 %134, 0, !dbg !1667
  br i1 %135, label %581, label %138, !dbg !1668

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1669
  br i1 %137, label %581, label %138, !dbg !1668

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1544, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1545, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1546, metadata !DIExpression()), !dbg !1670
  br i1 %106, label %139, label %154, !dbg !1671

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1672
  %141 = and i1 %107, %131, !dbg !1673
  br i1 %141, label %142, label %144, !dbg !1673

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %143, metadata !1522, metadata !DIExpression()), !dbg !1577
  br label %144, !dbg !1675

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1522, metadata !DIExpression()), !dbg !1577
  %146 = icmp ugt i64 %140, %145, !dbg !1676
  br i1 %146, label %154, label %147, !dbg !1677

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1678
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1679
  %150 = icmp ne i32 %149, 0, !dbg !1680
  %151 = or i1 %150, %109, !dbg !1681
  %152 = xor i1 %150, true, !dbg !1681
  %153 = zext i1 %152 to i8, !dbg !1681
  br i1 %151, label %154, label %639, !dbg !1681

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1670
  call void @llvm.dbg.value(metadata i8 %156, metadata !1544, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i64 %155, metadata !1522, metadata !DIExpression()), !dbg !1577
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1682
  %158 = load i8, i8* %157, align 1, !dbg !1682, !tbaa !1611
  call void @llvm.dbg.value(metadata i8 %158, metadata !1539, metadata !DIExpression()), !dbg !1670
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
  ], !dbg !1683

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1684

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1685

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1545, metadata !DIExpression()), !dbg !1670
  %162 = and i8 %127, 1, !dbg !1688
  %163 = icmp eq i8 %162, 0, !dbg !1688
  %164 = and i1 %110, %163, !dbg !1688
  br i1 %164, label %165, label %181, !dbg !1688

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1690
  br i1 %166, label %167, label %169, !dbg !1694

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1690
  store i8 39, i8* %168, align 1, !dbg !1690, !tbaa !1611
  br label %169, !dbg !1690

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %170, metadata !1529, metadata !DIExpression()), !dbg !1577
  %171 = icmp ult i64 %170, %130, !dbg !1695
  br i1 %171, label %172, label %174, !dbg !1698

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1695
  store i8 36, i8* %173, align 1, !dbg !1695, !tbaa !1611
  br label %174, !dbg !1695

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %175, metadata !1529, metadata !DIExpression()), !dbg !1577
  %176 = icmp ult i64 %175, %130, !dbg !1699
  br i1 %176, label %177, label %179, !dbg !1702

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1699
  store i8 39, i8* %178, align 1, !dbg !1699, !tbaa !1611
  br label %179, !dbg !1699

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %180, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 1, metadata !1536, metadata !DIExpression()), !dbg !1577
  br label %181, !dbg !1703

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1577
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %183, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %182, metadata !1529, metadata !DIExpression()), !dbg !1577
  %184 = icmp ult i64 %182, %130, !dbg !1704
  br i1 %184, label %185, label %187, !dbg !1707

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1704
  store i8 92, i8* %186, align 1, !dbg !1704, !tbaa !1611
  br label %187, !dbg !1704

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1707
  call void @llvm.dbg.value(metadata i64 %188, metadata !1529, metadata !DIExpression()), !dbg !1577
  br i1 %103, label %189, label %463, !dbg !1708

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1710
  %191 = icmp ult i64 %190, %155, !dbg !1711
  br i1 %191, label %192, label %463, !dbg !1712

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1713
  %194 = load i8, i8* %193, align 1, !dbg !1713, !tbaa !1611
  %195 = add i8 %194, -48, !dbg !1714
  %196 = icmp ult i8 %195, 10, !dbg !1714
  br i1 %196, label %197, label %463, !dbg !1714

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1715
  br i1 %198, label %199, label %201, !dbg !1719

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1715
  store i8 48, i8* %200, align 1, !dbg !1715, !tbaa !1611
  br label %201, !dbg !1715

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1719
  call void @llvm.dbg.value(metadata i64 %202, metadata !1529, metadata !DIExpression()), !dbg !1577
  %203 = icmp ult i64 %202, %130, !dbg !1720
  br i1 %203, label %204, label %206, !dbg !1723

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1720
  store i8 48, i8* %205, align 1, !dbg !1720, !tbaa !1611
  br label %206, !dbg !1720

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1723
  call void @llvm.dbg.value(metadata i64 %207, metadata !1529, metadata !DIExpression()), !dbg !1577
  br label %463, !dbg !1724

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1725

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1726

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1727

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1728

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1729
  %214 = icmp ult i64 %213, %155, !dbg !1730
  br i1 %214, label %215, label %463, !dbg !1731

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1732
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1733
  %218 = load i8, i8* %217, align 1, !dbg !1733, !tbaa !1611
  %219 = icmp eq i8 %218, 63, !dbg !1734
  br i1 %219, label %220, label %463, !dbg !1735

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1736
  %222 = load i8, i8* %221, align 1, !dbg !1736, !tbaa !1611
  %223 = sext i8 %222 to i32, !dbg !1736
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
  ], !dbg !1737

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1738

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1539, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i64 %213, metadata !1528, metadata !DIExpression()), !dbg !1577
  %226 = icmp ult i64 %124, %130, !dbg !1740
  br i1 %226, label %227, label %229, !dbg !1743

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1740
  store i8 63, i8* %228, align 1, !dbg !1740, !tbaa !1611
  br label %229, !dbg !1740

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %230, metadata !1529, metadata !DIExpression()), !dbg !1577
  %231 = icmp ult i64 %230, %130, !dbg !1744
  br i1 %231, label %232, label %234, !dbg !1747

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1744
  store i8 34, i8* %233, align 1, !dbg !1744, !tbaa !1611
  br label %234, !dbg !1744

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %235, metadata !1529, metadata !DIExpression()), !dbg !1577
  %236 = icmp ult i64 %235, %130, !dbg !1748
  br i1 %236, label %237, label %239, !dbg !1751

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1748
  store i8 34, i8* %238, align 1, !dbg !1748, !tbaa !1611
  br label %239, !dbg !1748

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %240, metadata !1529, metadata !DIExpression()), !dbg !1577
  %241 = icmp ult i64 %240, %130, !dbg !1752
  br i1 %241, label %242, label %244, !dbg !1755

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1752
  store i8 63, i8* %243, align 1, !dbg !1752, !tbaa !1611
  br label %244, !dbg !1752

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %245, metadata !1529, metadata !DIExpression()), !dbg !1577
  br label %463, !dbg !1756

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1543, metadata !DIExpression()), !dbg !1670
  br label %256, !dbg !1757

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1543, metadata !DIExpression()), !dbg !1670
  br label %256, !dbg !1758

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1543, metadata !DIExpression()), !dbg !1670
  br label %254, !dbg !1759

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1543, metadata !DIExpression()), !dbg !1670
  br label %254, !dbg !1760

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1543, metadata !DIExpression()), !dbg !1670
  br label %256, !dbg !1761

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1543, metadata !DIExpression()), !dbg !1670
  br i1 %110, label %252, label %253, !dbg !1762

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !1763

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !1766

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !1767
  call void @llvm.dbg.value(metadata i8 %255, metadata !1543, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.label(metadata !1572), !dbg !1768
  br i1 %111, label %256, label %625, !dbg !1769

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !1767
  call void @llvm.dbg.value(metadata i8 %257, metadata !1543, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.label(metadata !1573), !dbg !1771
  br i1 %102, label %488, label %463, !dbg !1772

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1773

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1774, !tbaa !1611
  %261 = icmp eq i8 %260, 0, !dbg !1775
  br i1 %261, label %262, label %463, !dbg !1776

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !1777
  br i1 %263, label %264, label %463, !dbg !1779

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1546, metadata !DIExpression()), !dbg !1670
  br label %265, !dbg !1780

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1670
  call void @llvm.dbg.value(metadata i8 %266, metadata !1546, metadata !DIExpression()), !dbg !1670
  br i1 %111, label %463, label %625, !dbg !1781

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 1, metadata !1546, metadata !DIExpression()), !dbg !1670
  br i1 %110, label %268, label %463, !dbg !1782

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !1783

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !1785
  %271 = icmp ne i64 %125, 0, !dbg !1787
  %272 = or i1 %271, %270, !dbg !1788
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !1788
  %274 = select i1 %272, i64 %130, i64 0, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %274, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %273, metadata !1530, metadata !DIExpression()), !dbg !1577
  %275 = icmp ult i64 %124, %274, !dbg !1789
  br i1 %275, label %276, label %278, !dbg !1792

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1789
  store i8 39, i8* %277, align 1, !dbg !1789, !tbaa !1611
  br label %278, !dbg !1789

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %279, metadata !1529, metadata !DIExpression()), !dbg !1577
  %280 = icmp ult i64 %279, %274, !dbg !1793
  br i1 %280, label %281, label %283, !dbg !1796

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1793
  store i8 92, i8* %282, align 1, !dbg !1793, !tbaa !1611
  br label %283, !dbg !1793

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %284, metadata !1529, metadata !DIExpression()), !dbg !1577
  %285 = icmp ult i64 %284, %274, !dbg !1797
  br i1 %285, label %286, label %288, !dbg !1800

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1797
  store i8 39, i8* %287, align 1, !dbg !1797, !tbaa !1611
  br label %288, !dbg !1797

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %289, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 0, metadata !1536, metadata !DIExpression()), !dbg !1577
  br label %463, !dbg !1801

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !1802

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1547, metadata !DIExpression()), !dbg !1803
  %292 = tail call i16** @__ctype_b_loc() #24, !dbg !1804
  %293 = load i16*, i16** %292, align 8, !dbg !1804, !tbaa !1139
  %294 = zext i8 %158 to i64, !dbg !1804
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1804
  %296 = load i16, i16* %295, align 2, !dbg !1804, !tbaa !1806
  %297 = lshr i16 %296, 14, !dbg !1808
  %298 = trunc i16 %297 to i8, !dbg !1808
  %299 = and i8 %298, 1, !dbg !1808
  call void @llvm.dbg.value(metadata i8 %299, metadata !1550, metadata !DIExpression()), !dbg !1803
  br label %355, !dbg !1809

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1810
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1551, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8* %23, metadata !1812, metadata !DIExpression()) #12, !dbg !1820
  call void @llvm.dbg.value(metadata i32 0, metadata !1818, metadata !DIExpression()) #12, !dbg !1820
  call void @llvm.dbg.value(metadata i64 8, metadata !1819, metadata !DIExpression()) #12, !dbg !1820
  store i64 0, i64* %10, align 8, !dbg !1822
  call void @llvm.dbg.value(metadata i64 0, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 1, metadata !1550, metadata !DIExpression()), !dbg !1803
  %301 = icmp eq i64 %155, -1, !dbg !1823
  br i1 %301, label %302, label %304, !dbg !1825

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %303, metadata !1522, metadata !DIExpression()), !dbg !1577
  br label %304, !dbg !1827

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1670
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  br label %306, !dbg !1828

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !1829
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !1830
  call void @llvm.dbg.value(metadata i8 %308, metadata !1550, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1831
  %309 = add i64 %307, %123, !dbg !1832
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !1833
  %311 = sub i64 %305, %309, !dbg !1834
  call void @llvm.dbg.value(metadata i32* %12, metadata !1557, metadata !DIExpression(DW_OP_deref)), !dbg !1590
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #12, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %312, metadata !1560, metadata !DIExpression()), !dbg !1590
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !1836

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  %314 = icmp ugt i64 %305, %309, !dbg !1837
  br i1 %314, label %315, label %340, !dbg !1839

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !1840
  br label %317, !dbg !1840

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1547, metadata !DIExpression()), !dbg !1803
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !1841
  %321 = load i8, i8* %320, align 1, !dbg !1841, !tbaa !1611
  %322 = icmp eq i8 %321, 0, !dbg !1839
  br i1 %322, label %340, label %323, !dbg !1840

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %324, metadata !1547, metadata !DIExpression()), !dbg !1803
  %325 = add i64 %324, %123, !dbg !1843
  %326 = icmp ult i64 %325, %305, !dbg !1837
  br i1 %326, label %317, label %340, !dbg !1839, !llvm.loop !1844

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !1845
  %329 = and i1 %113, %328, !dbg !1848
  call void @llvm.dbg.value(metadata i64 1, metadata !1561, metadata !DIExpression()), !dbg !1849
  br i1 %329, label %330, label %343, !dbg !1848

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1561, metadata !DIExpression()), !dbg !1849
  %332 = add i64 %331, %309, !dbg !1850
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !1851
  %334 = load i8, i8* %333, align 1, !dbg !1851, !tbaa !1611
  %335 = sext i8 %334 to i32, !dbg !1851
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !1852

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %337, metadata !1561, metadata !DIExpression()), !dbg !1849
  %338 = icmp eq i64 %337, %312, !dbg !1845
  br i1 %338, label %343, label %330, !dbg !1854, !llvm.loop !1855

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %308, metadata !1550, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %307, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %308, metadata !1550, metadata !DIExpression()), !dbg !1803
  br label %340, !dbg !1857

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1857
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !1858, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %344, metadata !1557, metadata !DIExpression()), !dbg !1590
  %345 = call i32 @iswprint(i32 %344) #12, !dbg !1860
  %346 = icmp eq i32 %345, 0, !dbg !1860
  %347 = select i1 %346, i8 0, i8 %308, !dbg !1861
  call void @llvm.dbg.value(metadata i8 %347, metadata !1550, metadata !DIExpression()), !dbg !1803
  %348 = add i64 %312, %307, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %348, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8 %347, metadata !1550, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %348, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1857
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !1863
  %350 = icmp eq i32 %349, 0, !dbg !1864
  br i1 %350, label %306, label %351, !dbg !1865, !llvm.loop !1866

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1868
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 2, metadata !1523, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %99, metadata !1533, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %305, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !1857
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !1868
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1670
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !1869
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !1869
  call void @llvm.dbg.value(metadata i8 %358, metadata !1550, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %357, metadata !1547, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i64 %356, metadata !1522, metadata !DIExpression()), !dbg !1577
  %359 = and i8 %358, 1, !dbg !1870
  %360 = icmp ne i8 %359, 0, !dbg !1870
  call void @llvm.dbg.value(metadata i8 %359, metadata !1546, metadata !DIExpression()), !dbg !1670
  %361 = icmp ult i64 %357, 2, !dbg !1871
  %362 = or i1 %360, %114, !dbg !1872
  %363 = and i1 %361, %362, !dbg !1873
  br i1 %363, label %463, label %364, !dbg !1873

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %365, metadata !1568, metadata !DIExpression()), !dbg !1875
  br label %366, !dbg !1876

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1663
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1577
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1598
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1670
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1670
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !1877
  call void @llvm.dbg.value(metadata i8 %372, metadata !1545, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %371, metadata !1544, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %370, metadata !1539, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %369, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %368, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %367, metadata !1528, metadata !DIExpression()), !dbg !1577
  br i1 %362, label %419, label %373, !dbg !1878

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !1883

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1545, metadata !DIExpression()), !dbg !1670
  %375 = and i8 %369, 1, !dbg !1886
  %376 = icmp eq i8 %375, 0, !dbg !1886
  %377 = and i1 %110, %376, !dbg !1886
  br i1 %377, label %378, label %394, !dbg !1886

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !1888
  br i1 %379, label %380, label %382, !dbg !1892

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1888
  store i8 39, i8* %381, align 1, !dbg !1888, !tbaa !1611
  br label %382, !dbg !1888

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %383, metadata !1529, metadata !DIExpression()), !dbg !1577
  %384 = icmp ult i64 %383, %130, !dbg !1893
  br i1 %384, label %385, label %387, !dbg !1896

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1893
  store i8 36, i8* %386, align 1, !dbg !1893, !tbaa !1611
  br label %387, !dbg !1893

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %388, metadata !1529, metadata !DIExpression()), !dbg !1577
  %389 = icmp ult i64 %388, %130, !dbg !1897
  br i1 %389, label %390, label %392, !dbg !1900

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !1897
  store i8 39, i8* %391, align 1, !dbg !1897, !tbaa !1611
  br label %392, !dbg !1897

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %393, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 1, metadata !1536, metadata !DIExpression()), !dbg !1577
  br label %394, !dbg !1901

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1577
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %396, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %395, metadata !1529, metadata !DIExpression()), !dbg !1577
  %397 = icmp ult i64 %395, %130, !dbg !1902
  br i1 %397, label %398, label %400, !dbg !1905

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !1902
  store i8 92, i8* %399, align 1, !dbg !1902, !tbaa !1611
  br label %400, !dbg !1902

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %401, metadata !1529, metadata !DIExpression()), !dbg !1577
  %402 = icmp ult i64 %401, %130, !dbg !1906
  br i1 %402, label %403, label %407, !dbg !1909

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !1906
  %405 = or i8 %404, 48, !dbg !1906
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !1906
  store i8 %405, i8* %406, align 1, !dbg !1906, !tbaa !1611
  br label %407, !dbg !1906

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %408, metadata !1529, metadata !DIExpression()), !dbg !1577
  %409 = icmp ult i64 %408, %130, !dbg !1910
  br i1 %409, label %410, label %415, !dbg !1913

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !1910
  %412 = and i8 %411, 7, !dbg !1910
  %413 = or i8 %412, 48, !dbg !1910
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !1910
  store i8 %413, i8* %414, align 1, !dbg !1910, !tbaa !1611
  br label %415, !dbg !1910

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %416, metadata !1529, metadata !DIExpression()), !dbg !1577
  %417 = and i8 %370, 7, !dbg !1914
  %418 = or i8 %417, 48, !dbg !1915
  call void @llvm.dbg.value(metadata i8 %418, metadata !1539, metadata !DIExpression()), !dbg !1670
  br label %428, !dbg !1916

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !1917
  %421 = icmp eq i8 %420, 0, !dbg !1917
  br i1 %421, label %428, label %422, !dbg !1919

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !1920
  br i1 %423, label %424, label %426, !dbg !1924

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !1920
  store i8 92, i8* %425, align 1, !dbg !1920, !tbaa !1611
  br label %426, !dbg !1920

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !1924
  call void @llvm.dbg.value(metadata i64 %427, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 0, metadata !1544, metadata !DIExpression()), !dbg !1670
  br label %428, !dbg !1925

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1577
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1598
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1670
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1670
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1670
  call void @llvm.dbg.value(metadata i8 %433, metadata !1545, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %432, metadata !1544, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %431, metadata !1539, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %430, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %429, metadata !1529, metadata !DIExpression()), !dbg !1577
  %434 = add i64 %367, 1, !dbg !1926
  %435 = icmp ugt i64 %365, %434, !dbg !1928
  br i1 %435, label %436, label %526, !dbg !1929

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !1930
  %438 = icmp ne i8 %437, 0, !dbg !1930
  %439 = and i8 %433, 1, !dbg !1930
  %440 = icmp eq i8 %439, 0, !dbg !1930
  %441 = and i1 %438, %440, !dbg !1930
  br i1 %441, label %442, label %453, !dbg !1930

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !1933
  br i1 %443, label %444, label %446, !dbg !1937

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !1933
  store i8 39, i8* %445, align 1, !dbg !1933, !tbaa !1611
  br label %446, !dbg !1933

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %447, metadata !1529, metadata !DIExpression()), !dbg !1577
  %448 = icmp ult i64 %447, %130, !dbg !1938
  br i1 %448, label %449, label %451, !dbg !1941

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !1938
  store i8 39, i8* %450, align 1, !dbg !1938, !tbaa !1611
  br label %451, !dbg !1938

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %452, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 0, metadata !1536, metadata !DIExpression()), !dbg !1577
  br label %453, !dbg !1942

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !1943
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %455, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %454, metadata !1529, metadata !DIExpression()), !dbg !1577
  %456 = icmp ult i64 %454, %130, !dbg !1944
  br i1 %456, label %457, label %459, !dbg !1947

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !1944
  store i8 %431, i8* %458, align 1, !dbg !1944, !tbaa !1611
  br label %459, !dbg !1944

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %460, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %434, metadata !1528, metadata !DIExpression()), !dbg !1577
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !1948
  %462 = load i8, i8* %461, align 1, !dbg !1948, !tbaa !1611
  call void @llvm.dbg.value(metadata i8 %462, metadata !1539, metadata !DIExpression()), !dbg !1670
  br label %366, !dbg !1949, !llvm.loop !1950

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1663
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1577
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1594
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !1953
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1577
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1577
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1670
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1670
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1670
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %472, metadata !1546, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %471, metadata !1545, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %156, metadata !1544, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %470, metadata !1539, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %469, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %468, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %467, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %466, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %465, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %464, metadata !1528, metadata !DIExpression()), !dbg !1577
  br i1 %117, label %486, label %474, !dbg !1954

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !1955
  %476 = zext i8 %475 to i64, !dbg !1955
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !1956
  %478 = load i32, i32* %477, align 4, !dbg !1956, !tbaa !1200
  %479 = and i8 %470, 31, !dbg !1957
  %480 = zext i8 %479 to i32, !dbg !1957
  %481 = shl nuw i32 1, %480, !dbg !1958
  %482 = and i32 %478, %481, !dbg !1958
  %483 = icmp eq i32 %482, 0, !dbg !1958
  %484 = icmp eq i8 %156, 0, !dbg !1959
  %485 = and i1 %484, %483, !dbg !1960
  br i1 %485, label %526, label %488, !dbg !1960

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !1959
  br i1 %487, label %526, label %488, !dbg !1961

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !1962
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1577
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1594
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !1953
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1598
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1599
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1670
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1670
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %496, metadata !1546, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %495, metadata !1539, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %494, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %493, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %492, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %491, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %490, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %489, metadata !1528, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.label(metadata !1574), !dbg !1963
  br i1 %109, label %498, label %629, !dbg !1964

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1545, metadata !DIExpression()), !dbg !1670
  %499 = and i8 %493, 1, !dbg !1966
  %500 = icmp eq i8 %499, 0, !dbg !1966
  %501 = and i1 %110, %500, !dbg !1966
  br i1 %501, label %502, label %518, !dbg !1966

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !1968
  br i1 %503, label %504, label %506, !dbg !1972

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !1968
  store i8 39, i8* %505, align 1, !dbg !1968, !tbaa !1611
  br label %506, !dbg !1968

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %507, metadata !1529, metadata !DIExpression()), !dbg !1577
  %508 = icmp ult i64 %507, %497, !dbg !1973
  br i1 %508, label %509, label %511, !dbg !1976

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !1973
  store i8 36, i8* %510, align 1, !dbg !1973, !tbaa !1611
  br label %511, !dbg !1973

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %512, metadata !1529, metadata !DIExpression()), !dbg !1577
  %513 = icmp ult i64 %512, %497, !dbg !1977
  br i1 %513, label %514, label %516, !dbg !1980

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1977
  store i8 39, i8* %515, align 1, !dbg !1977, !tbaa !1611
  br label %516, !dbg !1977

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %517, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 1, metadata !1536, metadata !DIExpression()), !dbg !1577
  br label %518, !dbg !1981

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1670
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %520, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %519, metadata !1529, metadata !DIExpression()), !dbg !1577
  %521 = icmp ult i64 %519, %497, !dbg !1982
  br i1 %521, label %522, label %524, !dbg !1985

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1982
  store i8 92, i8* %523, align 1, !dbg !1982, !tbaa !1611
  br label %524, !dbg !1982

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %525, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %536, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %535, metadata !1546, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %534, metadata !1545, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %533, metadata !1539, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %532, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %531, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %530, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %529, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %528, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %527, metadata !1528, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.label(metadata !1575), !dbg !1986
  br label %553, !dbg !1987

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !1962
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1577
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1594
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !1953
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1598
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1599
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !1990
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1670
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1670
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %535, metadata !1546, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %534, metadata !1545, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %533, metadata !1539, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 %532, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %531, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %530, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %529, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %528, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %527, metadata !1528, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.label(metadata !1575), !dbg !1986
  %537 = and i8 %531, 1, !dbg !1987
  %538 = icmp ne i8 %537, 0, !dbg !1987
  %539 = and i8 %534, 1, !dbg !1987
  %540 = icmp eq i8 %539, 0, !dbg !1987
  %541 = and i1 %538, %540, !dbg !1987
  br i1 %541, label %542, label %553, !dbg !1987

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !1991
  br i1 %543, label %544, label %546, !dbg !1995

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !1991
  store i8 39, i8* %545, align 1, !dbg !1991, !tbaa !1611
  br label %546, !dbg !1991

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %547, metadata !1529, metadata !DIExpression()), !dbg !1577
  %548 = icmp ult i64 %547, %536, !dbg !1996
  br i1 %548, label %549, label %551, !dbg !1999

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !1996
  store i8 39, i8* %550, align 1, !dbg !1996, !tbaa !1611
  br label %551, !dbg !1996

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %552, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 0, metadata !1536, metadata !DIExpression()), !dbg !1577
  br label %553, !dbg !2000

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1670
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1577
  call void @llvm.dbg.value(metadata i8 %562, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %561, metadata !1529, metadata !DIExpression()), !dbg !1577
  %563 = icmp ult i64 %561, %554, !dbg !2001
  br i1 %563, label %564, label %566, !dbg !2004

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2001
  store i8 %556, i8* %565, align 1, !dbg !2001, !tbaa !1611
  br label %566, !dbg !2001

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %567, metadata !1529, metadata !DIExpression()), !dbg !1577
  %568 = and i8 %555, 1, !dbg !2005
  %569 = icmp eq i8 %568, 0, !dbg !2005
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2007
  call void @llvm.dbg.value(metadata i8 %570, metadata !1538, metadata !DIExpression()), !dbg !1577
  br label %571, !dbg !2008

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !1962
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1577
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1594
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !1953
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1598
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1577
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1600
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %578, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %577, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %576, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %575, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %574, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %573, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %572, metadata !1528, metadata !DIExpression()), !dbg !1577
  %580 = add i64 %572, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %580, metadata !1528, metadata !DIExpression()), !dbg !1577
  br label %122, !dbg !2010, !llvm.loop !2011

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %127, metadata !1536, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %128, metadata !1537, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8 %129, metadata !1538, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  %583 = icmp eq i64 %124, 0, !dbg !2013
  %584 = and i1 %110, %583, !dbg !2015
  %585 = xor i1 %584, true, !dbg !2015
  %586 = or i1 %109, %585, !dbg !2015
  br i1 %586, label %587, label %629, !dbg !2015

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2016
  %589 = xor i1 %588, true, !dbg !2016
  %590 = and i8 %128, 1, !dbg !2018
  %591 = icmp eq i8 %590, 0, !dbg !2018
  %592 = or i1 %591, %589, !dbg !2016
  br i1 %592, label %602, label %593, !dbg !2016

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2019
  %595 = icmp eq i8 %594, 0, !dbg !2019
  br i1 %595, label %598, label %596, !dbg !2022

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %94, metadata !1526, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %95, metadata !1527, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %125, metadata !1530, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %582, metadata !1522, metadata !DIExpression()), !dbg !1577
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2023
  br label %645, !dbg !2024

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2025
  %600 = icmp ne i64 %125, 0, !dbg !2027
  %601 = and i1 %600, %599, !dbg !2028
  br i1 %601, label %26, label %602, !dbg !2028

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %130, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  %603 = icmp ne i8* %97, null, !dbg !2029
  %604 = and i1 %603, %109, !dbg !2031
  br i1 %604, label %605, label %620, !dbg !2031

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %124, metadata !1529, metadata !DIExpression()), !dbg !1577
  %606 = load i8, i8* %97, align 1, !dbg !2032, !tbaa !1611
  %607 = icmp eq i8 %606, 0, !dbg !2035
  br i1 %607, label %620, label %608, !dbg !2035

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1531, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %611, metadata !1529, metadata !DIExpression()), !dbg !1577
  %612 = icmp ult i64 %611, %130, !dbg !2036
  br i1 %612, label %613, label %615, !dbg !2039

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2036
  store i8 %609, i8* %614, align 1, !dbg !2036, !tbaa !1611
  br label %615, !dbg !2036

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %616, metadata !1529, metadata !DIExpression()), !dbg !1577
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2040
  call void @llvm.dbg.value(metadata i8* %617, metadata !1531, metadata !DIExpression()), !dbg !1577
  %618 = load i8, i8* %617, align 1, !dbg !2032, !tbaa !1611
  %619 = icmp eq i8 %618, 0, !dbg !2035
  br i1 %619, label %620, label %608, !dbg !2035, !llvm.loop !2041

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1632
  call void @llvm.dbg.value(metadata i64 %621, metadata !1529, metadata !DIExpression()), !dbg !1577
  %622 = icmp ult i64 %621, %130, !dbg !2043
  br i1 %622, label %623, label %645, !dbg !2045

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2046
  store i8 0, i8* %624, align 1, !dbg !2047, !tbaa !1611
  br label %645, !dbg !2046

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %630, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.label(metadata !1576), !dbg !2048
  %627 = icmp eq i8 %101, 0, !dbg !2049
  %628 = select i1 %627, i32 2, i32 4, !dbg !2049
  br label %635, !dbg !2049

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1520, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %630, metadata !1522, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.label(metadata !1576), !dbg !2048
  %632 = icmp eq i32 %93, 2, !dbg !2051
  %633 = icmp eq i8 %101, 0, !dbg !2049
  %634 = select i1 %633, i32 2, i32 4, !dbg !2049
  br i1 %632, label %635, label %639, !dbg !2049

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2049

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1523, metadata !DIExpression()), !dbg !1577
  %643 = and i32 %5, -3, !dbg !2052
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2053
  br label %645, !dbg !2054

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2055
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2056 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2060, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i32 %1, metadata !2061, metadata !DIExpression()), !dbg !2064
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2065
  call void @llvm.dbg.value(metadata i8* %3, metadata !2062, metadata !DIExpression()), !dbg !2064
  %4 = icmp eq i8* %3, %0, !dbg !2066
  br i1 %4, label %5, label %71, !dbg !2068

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2069
  call void @llvm.dbg.value(metadata i8* %6, metadata !2063, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* %6, metadata !2070, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* undef, metadata !2076, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 85, metadata !2077, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 84, metadata !2078, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 70, metadata !2079, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 45, metadata !2080, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 56, metadata !2081, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2082, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2083, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 0, metadata !2085, metadata !DIExpression()), !dbg !2086
  %7 = load i8, i8* %6, align 1, !dbg !2089, !tbaa !1611
  %8 = and i8 %7, -33, !dbg !2089
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2089

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2091, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* undef, metadata !2096, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 84, metadata !2097, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 70, metadata !2098, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 45, metadata !2099, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 56, metadata !2100, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !2102, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 0, metadata !2104, metadata !DIExpression()), !dbg !2105
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2109
  %11 = load i8, i8* %10, align 1, !dbg !2109, !tbaa !1611
  %12 = and i8 %11, -33, !dbg !2109
  %13 = icmp eq i8 %12, 84, !dbg !2109
  br i1 %13, label %14, label %68, !dbg !2109

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2111, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8* undef, metadata !2116, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 70, metadata !2117, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 45, metadata !2118, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 56, metadata !2119, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2120, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2121, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2122, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i8 0, metadata !2123, metadata !DIExpression()), !dbg !2124
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2128
  %16 = load i8, i8* %15, align 1, !dbg !2128, !tbaa !1611
  %17 = and i8 %16, -33, !dbg !2128
  %18 = icmp eq i8 %17, 70, !dbg !2128
  br i1 %18, label %19, label %68, !dbg !2128

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2130, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8* undef, metadata !2135, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 45, metadata !2136, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 56, metadata !2137, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 0, metadata !2138, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 0, metadata !2139, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 0, metadata !2140, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 0, metadata !2141, metadata !DIExpression()), !dbg !2142
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2146
  %21 = load i8, i8* %20, align 1, !dbg !2146, !tbaa !1611
  %22 = icmp eq i8 %21, 45, !dbg !2146
  br i1 %22, label %23, label %68, !dbg !2148

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2149, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* undef, metadata !2154, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 56, metadata !2155, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2159, metadata !DIExpression()), !dbg !2160
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2164
  %25 = load i8, i8* %24, align 1, !dbg !2164, !tbaa !1611
  %26 = icmp eq i8 %25, 56, !dbg !2164
  br i1 %26, label %27, label %68, !dbg !2166

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2167, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8* undef, metadata !2172, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2173, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2177
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2181
  %29 = load i8, i8* %28, align 1, !dbg !2181, !tbaa !1611
  %30 = icmp eq i8 %29, 0, !dbg !2181
  br i1 %30, label %31, label %68, !dbg !2183

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2184, !tbaa !1611
  %33 = icmp eq i8 %32, 96, !dbg !2185
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.62, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.63, i64 0, i64 0), !dbg !2184
  br label %71, !dbg !2186

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2091, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* undef, metadata !2096, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 66, metadata !2097, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 49, metadata !2098, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 56, metadata !2099, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 48, metadata !2100, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 51, metadata !2101, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 48, metadata !2102, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2103, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2104, metadata !DIExpression()), !dbg !2187
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2191
  %37 = load i8, i8* %36, align 1, !dbg !2191, !tbaa !1611
  %38 = and i8 %37, -33, !dbg !2191
  %39 = icmp eq i8 %38, 66, !dbg !2191
  br i1 %39, label %40, label %68, !dbg !2191

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2111, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* undef, metadata !2116, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 49, metadata !2117, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 56, metadata !2118, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 48, metadata !2119, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 51, metadata !2120, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 48, metadata !2121, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2122, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2123, metadata !DIExpression()), !dbg !2192
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2194
  %42 = load i8, i8* %41, align 1, !dbg !2194, !tbaa !1611
  %43 = icmp eq i8 %42, 49, !dbg !2194
  br i1 %43, label %44, label %68, !dbg !2195

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2130, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8* undef, metadata !2135, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 56, metadata !2136, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 48, metadata !2137, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 51, metadata !2138, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 48, metadata !2139, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2140, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i8 0, metadata !2141, metadata !DIExpression()), !dbg !2196
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2198
  %46 = load i8, i8* %45, align 1, !dbg !2198, !tbaa !1611
  %47 = icmp eq i8 %46, 56, !dbg !2198
  br i1 %47, label %48, label %68, !dbg !2199

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2149, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8* undef, metadata !2154, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 48, metadata !2155, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 51, metadata !2156, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 48, metadata !2157, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 0, metadata !2159, metadata !DIExpression()), !dbg !2200
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2202
  %50 = load i8, i8* %49, align 1, !dbg !2202, !tbaa !1611
  %51 = icmp eq i8 %50, 48, !dbg !2202
  br i1 %51, label %52, label %68, !dbg !2203

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2167, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8* undef, metadata !2172, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 51, metadata !2173, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 48, metadata !2174, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2175, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2204
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2206
  %54 = load i8, i8* %53, align 1, !dbg !2206, !tbaa !1611
  %55 = icmp eq i8 %54, 51, !dbg !2206
  br i1 %55, label %56, label %68, !dbg !2207

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2208, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8* undef, metadata !2213, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 48, metadata !2214, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 0, metadata !2215, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2217
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2221
  %58 = load i8, i8* %57, align 1, !dbg !2221, !tbaa !1611
  %59 = icmp eq i8 %58, 48, !dbg !2221
  br i1 %59, label %60, label %68, !dbg !2223

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2224, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8* undef, metadata !2229, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8 0, metadata !2230, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i8 0, metadata !2231, metadata !DIExpression()), !dbg !2232
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2236
  %62 = load i8, i8* %61, align 1, !dbg !2236, !tbaa !1611
  %63 = icmp eq i8 %62, 0, !dbg !2236
  br i1 %63, label %64, label %68, !dbg !2238

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2239, !tbaa !1611
  %66 = icmp eq i8 %65, 96, !dbg !2240
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.64, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.65, i64 0, i64 0), !dbg !2239
  br label %71, !dbg !2241

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2242
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), !dbg !2243
  br label %71, !dbg !2244

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2064
  ret i8* %72, !dbg !2245
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !294 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !298 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2246 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2250, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i64 %1, metadata !2251, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2252, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8* %0, metadata !2254, metadata !DIExpression()) #12, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %1, metadata !2259, metadata !DIExpression()) #12, !dbg !2267
  call void @llvm.dbg.value(metadata i64* null, metadata !2260, metadata !DIExpression()) #12, !dbg !2267
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2261, metadata !DIExpression()) #12, !dbg !2267
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2269
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2262, metadata !DIExpression()) #12, !dbg !2267
  %6 = tail call i32* @__errno_location() #24, !dbg !2270
  %7 = load i32, i32* %6, align 4, !dbg !2270, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %7, metadata !2263, metadata !DIExpression()) #12, !dbg !2267
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2271
  %9 = load i32, i32* %8, align 4, !dbg !2271, !tbaa !1462
  %10 = or i32 %9, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i32 %10, metadata !2264, metadata !DIExpression()) #12, !dbg !2267
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2273
  %12 = load i32, i32* %11, align 8, !dbg !2273, !tbaa !1410
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2274
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2275
  %15 = load i8*, i8** %14, align 8, !dbg !2275, !tbaa !1485
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2276
  %17 = load i8*, i8** %16, align 8, !dbg !2276, !tbaa !1488
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2277
  %19 = add i64 %18, 1, !dbg !2278
  call void @llvm.dbg.value(metadata i64 %19, metadata !2265, metadata !DIExpression()) #12, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %19, metadata !2279, metadata !DIExpression()) #12, !dbg !2284
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %20, metadata !2266, metadata !DIExpression()) #12, !dbg !2267
  %21 = load i32, i32* %11, align 8, !dbg !2287, !tbaa !1410
  %22 = load i8*, i8** %14, align 8, !dbg !2288, !tbaa !1485
  %23 = load i8*, i8** %16, align 8, !dbg !2289, !tbaa !1488
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2290
  store i32 %7, i32* %6, align 4, !dbg !2291, !tbaa !1200
  ret i8* %20, !dbg !2292
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2255 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2254, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %1, metadata !2259, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64* %2, metadata !2260, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2261, metadata !DIExpression()), !dbg !2293
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2294
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2262, metadata !DIExpression()), !dbg !2293
  %7 = tail call i32* @__errno_location() #24, !dbg !2295
  %8 = load i32, i32* %7, align 4, !dbg !2295, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %8, metadata !2263, metadata !DIExpression()), !dbg !2293
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2296
  %10 = load i32, i32* %9, align 4, !dbg !2296, !tbaa !1462
  %11 = icmp ne i64* %2, null, !dbg !2297
  %12 = xor i1 %11, true, !dbg !2297
  %13 = zext i1 %12 to i32, !dbg !2297
  %14 = or i32 %10, %13, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %14, metadata !2264, metadata !DIExpression()), !dbg !2293
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2299
  %16 = load i32, i32* %15, align 8, !dbg !2299, !tbaa !1410
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2300
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2301
  %19 = load i8*, i8** %18, align 8, !dbg !2301, !tbaa !1485
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2302
  %21 = load i8*, i8** %20, align 8, !dbg !2302, !tbaa !1488
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2303
  %23 = add i64 %22, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %23, metadata !2265, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %23, metadata !2279, metadata !DIExpression()) #12, !dbg !2305
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %24, metadata !2266, metadata !DIExpression()), !dbg !2293
  %25 = load i32, i32* %15, align 8, !dbg !2308, !tbaa !1410
  %26 = load i8*, i8** %18, align 8, !dbg !2309, !tbaa !1485
  %27 = load i8*, i8** %20, align 8, !dbg !2310, !tbaa !1488
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2311
  store i32 %8, i32* %7, align 4, !dbg !2312, !tbaa !1200
  br i1 %11, label %29, label %30, !dbg !2313

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2314, !tbaa !2316
  br label %30, !dbg !2318

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2319
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2320 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2324, !tbaa !1139
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2322, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 1, metadata !2323, metadata !DIExpression()), !dbg !2325
  %2 = load i32, i32* @nslots, align 4, !dbg !2326, !tbaa !1200
  %3 = icmp sgt i32 %2, 1, !dbg !2329
  br i1 %3, label %4, label %12, !dbg !2330

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2323, metadata !DIExpression()), !dbg !2325
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2331
  %7 = load i8*, i8** %6, align 8, !dbg !2331, !tbaa !2332
  tail call void @free(i8* %7) #12, !dbg !2334
  %8 = add nuw nsw i64 %5, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %8, metadata !2323, metadata !DIExpression()), !dbg !2325
  %9 = load i32, i32* @nslots, align 4, !dbg !2326, !tbaa !1200
  %10 = sext i32 %9 to i64, !dbg !2329
  %11 = icmp slt i64 %8, %10, !dbg !2329
  br i1 %11, label %4, label %12, !dbg !2330, !llvm.loop !2336

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2338
  %14 = load i8*, i8** %13, align 8, !dbg !2338, !tbaa !2332
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2340
  br i1 %15, label %17, label %16, !dbg !2341

16:                                               ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2342
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2344, !tbaa !2345
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2346, !tbaa !2332
  br label %17, !dbg !2347

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2348
  br i1 %18, label %21, label %19, !dbg !2350

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2351
  tail call void @free(i8* %20) #12, !dbg !2353
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2354, !tbaa !1139
  br label %21, !dbg !2355

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2356, !tbaa !1200
  ret void, !dbg !2357
}

; Function Attrs: nounwind
declare !dbg !270 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2358 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %1, metadata !2361, metadata !DIExpression()), !dbg !2362
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2363
  ret i8* %3, !dbg !2364
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2365 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2369, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8* %1, metadata !2370, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %2, metadata !2371, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2372, metadata !DIExpression()), !dbg !2384
  %5 = tail call i32* @__errno_location() #24, !dbg !2385
  %6 = load i32, i32* %5, align 4, !dbg !2385, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %6, metadata !2373, metadata !DIExpression()), !dbg !2384
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2386, !tbaa !1139
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2374, metadata !DIExpression()), !dbg !2384
  %8 = icmp slt i32 %0, 0, !dbg !2387
  br i1 %8, label %9, label %10, !dbg !2389

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2390
  unreachable, !dbg !2390

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2391, !tbaa !1200
  %12 = icmp sgt i32 %11, %0, !dbg !2392
  br i1 %12, label %34, label %13, !dbg !2393

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2394
  call void @llvm.dbg.value(metadata i1 %14, metadata !2375, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2378, metadata !DIExpression()), !dbg !2395
  %15 = icmp eq i32 %0, 2147483647, !dbg !2396
  br i1 %15, label %16, label %17, !dbg !2398

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2399
  unreachable, !dbg !2399

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2400
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2400
  %20 = add nuw nsw i32 %0, 1, !dbg !2401
  %21 = sext i32 %20 to i64, !dbg !2402
  %22 = shl nuw nsw i64 %21, 4, !dbg !2403
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2404
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2404
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2374, metadata !DIExpression()), !dbg !2384
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2405, !tbaa !1139
  br i1 %14, label %25, label %26, !dbg !2406

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2407, !tbaa.struct !2409
  br label %26, !dbg !2410

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2411, !tbaa !1200
  %28 = sext i32 %27 to i64, !dbg !2412
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2412
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2413
  %31 = sub nsw i32 %20, %27, !dbg !2414
  %32 = sext i32 %31 to i64, !dbg !2415
  %33 = shl nsw i64 %32, 4, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %30, metadata !1812, metadata !DIExpression()) #12, !dbg !2417
  call void @llvm.dbg.value(metadata i32 0, metadata !1818, metadata !DIExpression()) #12, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %33, metadata !1819, metadata !DIExpression()) #12, !dbg !2417
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #12, !dbg !2419
  store i32 %20, i32* @nslots, align 4, !dbg !2420, !tbaa !1200
  br label %34, !dbg !2421

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2384
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2374, metadata !DIExpression()), !dbg !2384
  %36 = zext i32 %0 to i64, !dbg !2422
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2423
  %38 = load i64, i64* %37, align 8, !dbg !2423, !tbaa !2345
  call void @llvm.dbg.value(metadata i64 %38, metadata !2379, metadata !DIExpression()), !dbg !2424
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2425
  %40 = load i8*, i8** %39, align 8, !dbg !2425, !tbaa !2332
  call void @llvm.dbg.value(metadata i8* %40, metadata !2381, metadata !DIExpression()), !dbg !2424
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2426
  %42 = load i32, i32* %41, align 4, !dbg !2426, !tbaa !1462
  %43 = or i32 %42, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %43, metadata !2382, metadata !DIExpression()), !dbg !2424
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2428
  %45 = load i32, i32* %44, align 8, !dbg !2428, !tbaa !1410
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2429
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2430
  %48 = load i8*, i8** %47, align 8, !dbg !2430, !tbaa !1485
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2431
  %50 = load i8*, i8** %49, align 8, !dbg !2431, !tbaa !1488
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2432
  call void @llvm.dbg.value(metadata i64 %51, metadata !2383, metadata !DIExpression()), !dbg !2424
  %52 = icmp ugt i64 %38, %51, !dbg !2433
  br i1 %52, label %63, label %53, !dbg !2435

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %54, metadata !2379, metadata !DIExpression()), !dbg !2424
  store i64 %54, i64* %37, align 8, !dbg !2438, !tbaa !2345
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2439
  br i1 %55, label %57, label %56, !dbg !2441

56:                                               ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2442
  br label %57, !dbg !2442

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2279, metadata !DIExpression()) #12, !dbg !2443
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %58, metadata !2381, metadata !DIExpression()), !dbg !2424
  store i8* %58, i8** %39, align 8, !dbg !2446, !tbaa !2332
  %59 = load i32, i32* %44, align 8, !dbg !2447, !tbaa !1410
  %60 = load i8*, i8** %47, align 8, !dbg !2448, !tbaa !1485
  %61 = load i8*, i8** %49, align 8, !dbg !2449, !tbaa !1488
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2450
  br label %63, !dbg !2451

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2424
  call void @llvm.dbg.value(metadata i8* %64, metadata !2381, metadata !DIExpression()), !dbg !2424
  store i32 %6, i32* %5, align 4, !dbg !2452, !tbaa !1200
  ret i8* %64, !dbg !2453
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2454 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2458, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %1, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %2, metadata !2460, metadata !DIExpression()), !dbg !2461
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2462
  ret i8* %4, !dbg !2463
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2464 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2466, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !2360, metadata !DIExpression()) #12, !dbg !2468
  call void @llvm.dbg.value(metadata i8* %0, metadata !2361, metadata !DIExpression()) #12, !dbg !2468
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2470
  ret i8* %2, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2472 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2476, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i64 %1, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2458, metadata !DIExpression()) #12, !dbg !2479
  call void @llvm.dbg.value(metadata i8* %0, metadata !2459, metadata !DIExpression()) #12, !dbg !2479
  call void @llvm.dbg.value(metadata i64 %1, metadata !2460, metadata !DIExpression()) #12, !dbg !2479
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2481
  ret i8* %3, !dbg !2482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2483 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2487, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 %1, metadata !2488, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8* %2, metadata !2489, metadata !DIExpression()), !dbg !2491
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2492
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2492
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()) #12, !dbg !2500
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2499, metadata !DIExpression()) #12, !dbg !2502
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2502, !alias.scope !2503
  %6 = icmp eq i32 %1, 10, !dbg !2506
  br i1 %6, label %7, label %8, !dbg !2508

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2509, !noalias !2503
  unreachable, !dbg !2509

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2510
  store i32 %1, i32* %9, align 8, !dbg !2511, !tbaa !1410, !alias.scope !2503
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2512
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2513
  ret i8* %10, !dbg !2514
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2515 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2519, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 %1, metadata !2520, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* %2, metadata !2521, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i64 %3, metadata !2522, metadata !DIExpression()), !dbg !2524
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2525
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2525
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()) #12, !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2499, metadata !DIExpression()) #12, !dbg !2529
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #12, !dbg !2529, !alias.scope !2530
  %7 = icmp eq i32 %1, 10, !dbg !2533
  br i1 %7, label %8, label %9, !dbg !2534

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2535, !noalias !2530
  unreachable, !dbg !2535

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2536
  store i32 %1, i32* %10, align 8, !dbg !2537, !tbaa !1410, !alias.scope !2530
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2538
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2539
  ret i8* %11, !dbg !2540
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2541 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2499, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2490, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %1, metadata !2546, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i32 0, metadata !2487, metadata !DIExpression()) #12, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %0, metadata !2488, metadata !DIExpression()) #12, !dbg !2552
  call void @llvm.dbg.value(metadata i8* %1, metadata !2489, metadata !DIExpression()) #12, !dbg !2552
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2553
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()) #12, !dbg !2554
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #12, !dbg !2547, !alias.scope !2555
  %5 = icmp eq i32 %0, 10, !dbg !2558
  br i1 %5, label %6, label %7, !dbg !2559

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2560, !noalias !2555
  unreachable, !dbg !2560

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2561
  store i32 %0, i32* %8, align 8, !dbg !2562, !tbaa !1410, !alias.scope !2555
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2563
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2564
  ret i8* %9, !dbg !2565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2566 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2499, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2523, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %0, metadata !2570, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %1, metadata !2571, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %2, metadata !2572, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2519, metadata !DIExpression()) #12, !dbg !2578
  call void @llvm.dbg.value(metadata i32 %0, metadata !2520, metadata !DIExpression()) #12, !dbg !2578
  call void @llvm.dbg.value(metadata i8* %1, metadata !2521, metadata !DIExpression()) #12, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %2, metadata !2522, metadata !DIExpression()) #12, !dbg !2578
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2579
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()) #12, !dbg !2580
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2573, !alias.scope !2581
  %6 = icmp eq i32 %0, 10, !dbg !2584
  br i1 %6, label %7, label %8, !dbg !2585

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2586, !noalias !2581
  unreachable, !dbg !2586

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2587
  store i32 %0, i32* %9, align 8, !dbg !2588, !tbaa !1410, !alias.scope !2581
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2590
  ret i8* %10, !dbg !2591
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2592 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2596, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 %2, metadata !2598, metadata !DIExpression()), !dbg !2600
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2601
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2601
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2603, !tbaa.struct !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1428, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 %2, metadata !1429, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 1, metadata !1430, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 %2, metadata !1431, metadata !DIExpression()), !dbg !2605
  %6 = lshr i8 %2, 5, !dbg !2607
  %7 = zext i8 %6 to i64, !dbg !2607
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2608
  call void @llvm.dbg.value(metadata i32* %8, metadata !1433, metadata !DIExpression()), !dbg !2605
  %9 = and i8 %2, 31, !dbg !2609
  %10 = zext i8 %9 to i32, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %10, metadata !1435, metadata !DIExpression()), !dbg !2605
  %11 = load i32, i32* %8, align 4, !dbg !2610, !tbaa !1200
  %12 = lshr i32 %11, %10, !dbg !2611
  %13 = and i32 %12, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %13, metadata !1436, metadata !DIExpression()), !dbg !2605
  %14 = xor i32 %13, 1, !dbg !2613
  %15 = shl i32 %14, %10, !dbg !2614
  %16 = xor i32 %15, %11, !dbg !2615
  store i32 %16, i32* %8, align 4, !dbg !2615, !tbaa !1200
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2616
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2617
  ret i8* %17, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2619 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2599, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %0, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 %1, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8* %0, metadata !2596, metadata !DIExpression()) #12, !dbg !2628
  call void @llvm.dbg.value(metadata i64 -1, metadata !2597, metadata !DIExpression()) #12, !dbg !2628
  call void @llvm.dbg.value(metadata i8 %1, metadata !2598, metadata !DIExpression()) #12, !dbg !2628
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2629
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2629
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2630, !tbaa.struct !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1428, metadata !DIExpression()) #12, !dbg !2631
  call void @llvm.dbg.value(metadata i8 %1, metadata !1429, metadata !DIExpression()) #12, !dbg !2631
  call void @llvm.dbg.value(metadata i32 1, metadata !1430, metadata !DIExpression()) #12, !dbg !2631
  call void @llvm.dbg.value(metadata i8 %1, metadata !1431, metadata !DIExpression()) #12, !dbg !2631
  %5 = lshr i8 %1, 5, !dbg !2633
  %6 = zext i8 %5 to i64, !dbg !2633
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2634
  call void @llvm.dbg.value(metadata i32* %7, metadata !1433, metadata !DIExpression()) #12, !dbg !2631
  %8 = and i8 %1, 31, !dbg !2635
  %9 = zext i8 %8 to i32, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %9, metadata !1435, metadata !DIExpression()) #12, !dbg !2631
  %10 = load i32, i32* %7, align 4, !dbg !2636, !tbaa !1200
  %11 = lshr i32 %10, %9, !dbg !2637
  %12 = and i32 %11, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %12, metadata !1436, metadata !DIExpression()) #12, !dbg !2631
  %13 = xor i32 %12, 1, !dbg !2639
  %14 = shl i32 %13, %9, !dbg !2640
  %15 = xor i32 %14, %10, !dbg !2641
  store i32 %15, i32* %7, align 4, !dbg !2641, !tbaa !1200
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2642
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2643
  ret i8* %16, !dbg !2644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2645 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2599, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %0, metadata !2647, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8* %0, metadata !2623, metadata !DIExpression()) #12, !dbg !2652
  call void @llvm.dbg.value(metadata i8 58, metadata !2624, metadata !DIExpression()) #12, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %0, metadata !2596, metadata !DIExpression()) #12, !dbg !2653
  call void @llvm.dbg.value(metadata i64 -1, metadata !2597, metadata !DIExpression()) #12, !dbg !2653
  call void @llvm.dbg.value(metadata i8 58, metadata !2598, metadata !DIExpression()) #12, !dbg !2653
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2654
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2654
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2655, !tbaa.struct !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1428, metadata !DIExpression()) #12, !dbg !2656
  call void @llvm.dbg.value(metadata i8 58, metadata !1429, metadata !DIExpression()) #12, !dbg !2656
  call void @llvm.dbg.value(metadata i32 1, metadata !1430, metadata !DIExpression()) #12, !dbg !2656
  call void @llvm.dbg.value(metadata i8 58, metadata !1431, metadata !DIExpression()) #12, !dbg !2656
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2658
  call void @llvm.dbg.value(metadata i32* %4, metadata !1433, metadata !DIExpression()) #12, !dbg !2656
  call void @llvm.dbg.value(metadata i32 26, metadata !1435, metadata !DIExpression()) #12, !dbg !2656
  %5 = load i32, i32* %4, align 4, !dbg !2659, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %5, metadata !1436, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2656
  %6 = or i32 %5, 67108864, !dbg !2660
  store i32 %6, i32* %4, align 4, !dbg !2660, !tbaa !1200
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2661
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2662
  ret i8* %7, !dbg !2663
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2664 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2599, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i64 %1, metadata !2667, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %0, metadata !2596, metadata !DIExpression()) #12, !dbg !2671
  call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()) #12, !dbg !2671
  call void @llvm.dbg.value(metadata i8 58, metadata !2598, metadata !DIExpression()) #12, !dbg !2671
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2672
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2672
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2673, !tbaa.struct !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1428, metadata !DIExpression()) #12, !dbg !2674
  call void @llvm.dbg.value(metadata i8 58, metadata !1429, metadata !DIExpression()) #12, !dbg !2674
  call void @llvm.dbg.value(metadata i32 1, metadata !1430, metadata !DIExpression()) #12, !dbg !2674
  call void @llvm.dbg.value(metadata i8 58, metadata !1431, metadata !DIExpression()) #12, !dbg !2674
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2676
  call void @llvm.dbg.value(metadata i32* %5, metadata !1433, metadata !DIExpression()) #12, !dbg !2674
  call void @llvm.dbg.value(metadata i32 26, metadata !1435, metadata !DIExpression()) #12, !dbg !2674
  %6 = load i32, i32* %5, align 4, !dbg !2677, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %6, metadata !1436, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2674
  %7 = or i32 %6, 67108864, !dbg !2678
  store i32 %7, i32* %5, align 4, !dbg !2678, !tbaa !1200
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2679
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2680
  ret i8* %8, !dbg !2681
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2682 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2688
  call void @llvm.dbg.value(metadata i32 %0, metadata !2684, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 %1, metadata !2685, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i8* %2, metadata !2686, metadata !DIExpression()), !dbg !2690
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2691
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2691
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2687, metadata !DIExpression()), !dbg !2692
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2693
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %1, metadata !2494, metadata !DIExpression()) #12, !dbg !2694
  call void @llvm.dbg.value(metadata i32 0, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2694
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2688, !alias.scope !2695
  %8 = icmp eq i32 %1, 10, !dbg !2698
  br i1 %8, label %9, label %10, !dbg !2699

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2700, !noalias !2695
  unreachable, !dbg !2700

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2694
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2693
  store i32 %1, i32* %11, align 8, !dbg !2693, !tbaa.struct !2604
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2693
  %13 = bitcast i32* %12 to i8*, !dbg !2693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2693, !tbaa.struct !2604
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2693
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1428, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 58, metadata !1429, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 1, metadata !1430, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 58, metadata !1431, metadata !DIExpression()), !dbg !2701
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2703
  call void @llvm.dbg.value(metadata i32* %14, metadata !1433, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 26, metadata !1435, metadata !DIExpression()), !dbg !2701
  %15 = load i32, i32* %14, align 4, !dbg !2704, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %15, metadata !1436, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2701
  %16 = or i32 %15, 67108864, !dbg !2705
  store i32 %16, i32* %14, align 4, !dbg !2705, !tbaa !1200
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2706
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2707
  ret i8* %17, !dbg !2708
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2709 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2717, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %0, metadata !2713, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %1, metadata !2714, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %2, metadata !2715, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8* %3, metadata !2716, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()) #12, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %1, metadata !2723, metadata !DIExpression()) #12, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %2, metadata !2724, metadata !DIExpression()) #12, !dbg !2730
  call void @llvm.dbg.value(metadata i8* %3, metadata !2725, metadata !DIExpression()) #12, !dbg !2730
  call void @llvm.dbg.value(metadata i64 -1, metadata !2726, metadata !DIExpression()) #12, !dbg !2730
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2731
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2732, !tbaa.struct !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1469, metadata !DIExpression()) #12, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %1, metadata !1470, metadata !DIExpression()) #12, !dbg !2733
  call void @llvm.dbg.value(metadata i8* %2, metadata !1471, metadata !DIExpression()) #12, !dbg !2733
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1469, metadata !DIExpression()) #12, !dbg !2733
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2735
  store i32 10, i32* %7, align 8, !dbg !2736, !tbaa !1410
  %8 = icmp ne i8* %1, null, !dbg !2737
  %9 = icmp ne i8* %2, null, !dbg !2738
  %10 = and i1 %8, %9, !dbg !2739
  br i1 %10, label %12, label %11, !dbg !2739

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2740
  unreachable, !dbg !2740

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2741
  store i8* %1, i8** %13, align 8, !dbg !2742, !tbaa !1485
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2743
  store i8* %2, i8** %14, align 8, !dbg !2744, !tbaa !1488
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !2745
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2746
  ret i8* %15, !dbg !2747
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2718 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2722, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %1, metadata !2723, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %2, metadata !2724, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %3, metadata !2725, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %4, metadata !2726, metadata !DIExpression()), !dbg !2748
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2749
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2749
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2717, metadata !DIExpression()), !dbg !2750
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2751, !tbaa.struct !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1469, metadata !DIExpression()) #12, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %1, metadata !1470, metadata !DIExpression()) #12, !dbg !2752
  call void @llvm.dbg.value(metadata i8* %2, metadata !1471, metadata !DIExpression()) #12, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1469, metadata !DIExpression()) #12, !dbg !2752
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2754
  store i32 10, i32* %8, align 8, !dbg !2755, !tbaa !1410
  %9 = icmp ne i8* %1, null, !dbg !2756
  %10 = icmp ne i8* %2, null, !dbg !2757
  %11 = and i1 %9, %10, !dbg !2758
  br i1 %11, label %13, label %12, !dbg !2758

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !2759
  unreachable, !dbg !2759

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2760
  store i8* %1, i8** %14, align 8, !dbg !2761, !tbaa !1485
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2762
  store i8* %2, i8** %15, align 8, !dbg !2763, !tbaa !1488
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2764
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !2765
  ret i8* %16, !dbg !2766
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2767 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2717, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i8* %0, metadata !2771, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %1, metadata !2772, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %2, metadata !2773, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2713, metadata !DIExpression()) #12, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()) #12, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %1, metadata !2715, metadata !DIExpression()) #12, !dbg !2778
  call void @llvm.dbg.value(metadata i8* %2, metadata !2716, metadata !DIExpression()) #12, !dbg !2778
  call void @llvm.dbg.value(metadata i32 0, metadata !2722, metadata !DIExpression()) #12, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %0, metadata !2723, metadata !DIExpression()) #12, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %1, metadata !2724, metadata !DIExpression()) #12, !dbg !2779
  call void @llvm.dbg.value(metadata i8* %2, metadata !2725, metadata !DIExpression()) #12, !dbg !2779
  call void @llvm.dbg.value(metadata i64 -1, metadata !2726, metadata !DIExpression()) #12, !dbg !2779
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2780
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2781, !tbaa.struct !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1469, metadata !DIExpression()) #12, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %0, metadata !1470, metadata !DIExpression()) #12, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %1, metadata !1471, metadata !DIExpression()) #12, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1469, metadata !DIExpression()) #12, !dbg !2782
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2784
  store i32 10, i32* %6, align 8, !dbg !2785, !tbaa !1410
  %7 = icmp ne i8* %0, null, !dbg !2786
  %8 = icmp ne i8* %1, null, !dbg !2787
  %9 = and i1 %7, %8, !dbg !2788
  br i1 %9, label %11, label %10, !dbg !2788

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !2789
  unreachable, !dbg !2789

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2790
  store i8* %0, i8** %12, align 8, !dbg !2791, !tbaa !1485
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2792
  store i8* %1, i8** %13, align 8, !dbg !2793, !tbaa !1488
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !2794
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2795
  ret i8* %14, !dbg !2796
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2797 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2717, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8* %0, metadata !2801, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8* %1, metadata !2802, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8* %2, metadata !2803, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 %3, metadata !2804, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 0, metadata !2722, metadata !DIExpression()) #12, !dbg !2808
  call void @llvm.dbg.value(metadata i8* %0, metadata !2723, metadata !DIExpression()) #12, !dbg !2808
  call void @llvm.dbg.value(metadata i8* %1, metadata !2724, metadata !DIExpression()) #12, !dbg !2808
  call void @llvm.dbg.value(metadata i8* %2, metadata !2725, metadata !DIExpression()) #12, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %3, metadata !2726, metadata !DIExpression()) #12, !dbg !2808
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2809
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2809
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2810, !tbaa.struct !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1469, metadata !DIExpression()) #12, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %0, metadata !1470, metadata !DIExpression()) #12, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %1, metadata !1471, metadata !DIExpression()) #12, !dbg !2811
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1469, metadata !DIExpression()) #12, !dbg !2811
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2813
  store i32 10, i32* %7, align 8, !dbg !2814, !tbaa !1410
  %8 = icmp ne i8* %0, null, !dbg !2815
  %9 = icmp ne i8* %1, null, !dbg !2816
  %10 = and i1 %8, %9, !dbg !2817
  br i1 %10, label %12, label %11, !dbg !2817

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2818
  unreachable, !dbg !2818

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2819
  store i8* %0, i8** %13, align 8, !dbg !2820, !tbaa !1485
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2821
  store i8* %1, i8** %14, align 8, !dbg !2822, !tbaa !1488
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !2823
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2824
  ret i8* %15, !dbg !2825
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2826 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %1, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %2, metadata !2832, metadata !DIExpression()), !dbg !2833
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2834
  ret i8* %4, !dbg !2835
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2840, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i64 %1, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i32 0, metadata !2830, metadata !DIExpression()) #12, !dbg !2843
  call void @llvm.dbg.value(metadata i8* %0, metadata !2831, metadata !DIExpression()) #12, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %1, metadata !2832, metadata !DIExpression()) #12, !dbg !2843
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2845
  ret i8* %3, !dbg !2846
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2847 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2851, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i8* %1, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 %0, metadata !2830, metadata !DIExpression()) #12, !dbg !2854
  call void @llvm.dbg.value(metadata i8* %1, metadata !2831, metadata !DIExpression()) #12, !dbg !2854
  call void @llvm.dbg.value(metadata i64 -1, metadata !2832, metadata !DIExpression()) #12, !dbg !2854
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2856
  ret i8* %3, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.value(metadata i32 0, metadata !2851, metadata !DIExpression()) #12, !dbg !2862
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #12, !dbg !2862
  call void @llvm.dbg.value(metadata i32 0, metadata !2830, metadata !DIExpression()) #12, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %0, metadata !2831, metadata !DIExpression()) #12, !dbg !2864
  call void @llvm.dbg.value(metadata i64 -1, metadata !2832, metadata !DIExpression()) #12, !dbg !2864
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !2866
  ret i8* %2, !dbg !2867
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2868 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2876, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %1, metadata !2877, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %2, metadata !2878, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %3, metadata !2879, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8** %4, metadata !2880, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %5, metadata !2881, metadata !DIExpression()), !dbg !2882
  %7 = icmp eq i8* %1, null, !dbg !2883
  br i1 %7, label %10, label %8, !dbg !2885

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !2886
  br label %12, !dbg !2886

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !2887
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.72, i64 0, i64 0), i32 5) #12, !dbg !2888
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #12, !dbg !2888
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2889
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.74, i64 0, i64 0), i32 5) #12, !dbg !2890
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.75, i64 0, i64 0)) #12, !dbg !2890
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2891
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
  ], !dbg !2892

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.76, i64 0, i64 0), i32 5) #12, !dbg !2893
  %21 = load i8*, i8** %4, align 8, !dbg !2893, !tbaa !1139
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #12, !dbg !2893
  br label %147, !dbg !2895

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.77, i64 0, i64 0), i32 5) #12, !dbg !2896
  %25 = load i8*, i8** %4, align 8, !dbg !2896, !tbaa !1139
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2896
  %27 = load i8*, i8** %26, align 8, !dbg !2896, !tbaa !1139
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #12, !dbg !2896
  br label %147, !dbg !2897

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.78, i64 0, i64 0), i32 5) #12, !dbg !2898
  %31 = load i8*, i8** %4, align 8, !dbg !2898, !tbaa !1139
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2898
  %33 = load i8*, i8** %32, align 8, !dbg !2898, !tbaa !1139
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2898
  %35 = load i8*, i8** %34, align 8, !dbg !2898, !tbaa !1139
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #12, !dbg !2898
  br label %147, !dbg !2899

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.79, i64 0, i64 0), i32 5) #12, !dbg !2900
  %39 = load i8*, i8** %4, align 8, !dbg !2900, !tbaa !1139
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2900
  %41 = load i8*, i8** %40, align 8, !dbg !2900, !tbaa !1139
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2900
  %43 = load i8*, i8** %42, align 8, !dbg !2900, !tbaa !1139
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2900
  %45 = load i8*, i8** %44, align 8, !dbg !2900, !tbaa !1139
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #12, !dbg !2900
  br label %147, !dbg !2901

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.80, i64 0, i64 0), i32 5) #12, !dbg !2902
  %49 = load i8*, i8** %4, align 8, !dbg !2902, !tbaa !1139
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2902
  %51 = load i8*, i8** %50, align 8, !dbg !2902, !tbaa !1139
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2902
  %53 = load i8*, i8** %52, align 8, !dbg !2902, !tbaa !1139
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2902
  %55 = load i8*, i8** %54, align 8, !dbg !2902, !tbaa !1139
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2902
  %57 = load i8*, i8** %56, align 8, !dbg !2902, !tbaa !1139
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #12, !dbg !2902
  br label %147, !dbg !2903

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.81, i64 0, i64 0), i32 5) #12, !dbg !2904
  %61 = load i8*, i8** %4, align 8, !dbg !2904, !tbaa !1139
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2904
  %63 = load i8*, i8** %62, align 8, !dbg !2904, !tbaa !1139
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2904
  %65 = load i8*, i8** %64, align 8, !dbg !2904, !tbaa !1139
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2904
  %67 = load i8*, i8** %66, align 8, !dbg !2904, !tbaa !1139
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2904
  %69 = load i8*, i8** %68, align 8, !dbg !2904, !tbaa !1139
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2904
  %71 = load i8*, i8** %70, align 8, !dbg !2904, !tbaa !1139
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #12, !dbg !2904
  br label %147, !dbg !2905

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.82, i64 0, i64 0), i32 5) #12, !dbg !2906
  %75 = load i8*, i8** %4, align 8, !dbg !2906, !tbaa !1139
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2906
  %77 = load i8*, i8** %76, align 8, !dbg !2906, !tbaa !1139
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2906
  %79 = load i8*, i8** %78, align 8, !dbg !2906, !tbaa !1139
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2906
  %81 = load i8*, i8** %80, align 8, !dbg !2906, !tbaa !1139
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2906
  %83 = load i8*, i8** %82, align 8, !dbg !2906, !tbaa !1139
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2906
  %85 = load i8*, i8** %84, align 8, !dbg !2906, !tbaa !1139
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2906
  %87 = load i8*, i8** %86, align 8, !dbg !2906, !tbaa !1139
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #12, !dbg !2906
  br label %147, !dbg !2907

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.83, i64 0, i64 0), i32 5) #12, !dbg !2908
  %91 = load i8*, i8** %4, align 8, !dbg !2908, !tbaa !1139
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2908
  %93 = load i8*, i8** %92, align 8, !dbg !2908, !tbaa !1139
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2908
  %95 = load i8*, i8** %94, align 8, !dbg !2908, !tbaa !1139
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2908
  %97 = load i8*, i8** %96, align 8, !dbg !2908, !tbaa !1139
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2908
  %99 = load i8*, i8** %98, align 8, !dbg !2908, !tbaa !1139
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2908
  %101 = load i8*, i8** %100, align 8, !dbg !2908, !tbaa !1139
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2908
  %103 = load i8*, i8** %102, align 8, !dbg !2908, !tbaa !1139
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2908
  %105 = load i8*, i8** %104, align 8, !dbg !2908, !tbaa !1139
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #12, !dbg !2908
  br label %147, !dbg !2909

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.84, i64 0, i64 0), i32 5) #12, !dbg !2910
  %109 = load i8*, i8** %4, align 8, !dbg !2910, !tbaa !1139
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2910
  %111 = load i8*, i8** %110, align 8, !dbg !2910, !tbaa !1139
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2910
  %113 = load i8*, i8** %112, align 8, !dbg !2910, !tbaa !1139
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2910
  %115 = load i8*, i8** %114, align 8, !dbg !2910, !tbaa !1139
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2910
  %117 = load i8*, i8** %116, align 8, !dbg !2910, !tbaa !1139
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2910
  %119 = load i8*, i8** %118, align 8, !dbg !2910, !tbaa !1139
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2910
  %121 = load i8*, i8** %120, align 8, !dbg !2910, !tbaa !1139
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2910
  %123 = load i8*, i8** %122, align 8, !dbg !2910, !tbaa !1139
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2910
  %125 = load i8*, i8** %124, align 8, !dbg !2910, !tbaa !1139
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #12, !dbg !2910
  br label %147, !dbg !2911

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.85, i64 0, i64 0), i32 5) #12, !dbg !2912
  %129 = load i8*, i8** %4, align 8, !dbg !2912, !tbaa !1139
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2912
  %131 = load i8*, i8** %130, align 8, !dbg !2912, !tbaa !1139
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2912
  %133 = load i8*, i8** %132, align 8, !dbg !2912, !tbaa !1139
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2912
  %135 = load i8*, i8** %134, align 8, !dbg !2912, !tbaa !1139
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2912
  %137 = load i8*, i8** %136, align 8, !dbg !2912, !tbaa !1139
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2912
  %139 = load i8*, i8** %138, align 8, !dbg !2912, !tbaa !1139
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2912
  %141 = load i8*, i8** %140, align 8, !dbg !2912, !tbaa !1139
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2912
  %143 = load i8*, i8** %142, align 8, !dbg !2912, !tbaa !1139
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2912
  %145 = load i8*, i8** %144, align 8, !dbg !2912, !tbaa !1139
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #12, !dbg !2912
  br label %147, !dbg !2913

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2915 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2919, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %1, metadata !2920, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %2, metadata !2921, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %3, metadata !2922, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8** %4, metadata !2923, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 0, metadata !2924, metadata !DIExpression()), !dbg !2925
  br label %6, !dbg !2926

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2928
  call void @llvm.dbg.value(metadata i64 %7, metadata !2924, metadata !DIExpression()), !dbg !2925
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2929
  %9 = load i8*, i8** %8, align 8, !dbg !2929, !tbaa !1139
  %10 = icmp eq i8* %9, null, !dbg !2931
  %11 = add i64 %7, 1, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %11, metadata !2924, metadata !DIExpression()), !dbg !2925
  br i1 %10, label %12, label %6, !dbg !2931, !llvm.loop !2933

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %7, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %7, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %7, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %7, metadata !2924, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %7, metadata !2924, metadata !DIExpression()), !dbg !2925
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2935
  ret void, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2937 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2948, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* %1, metadata !2949, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* %2, metadata !2950, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2952, metadata !DIExpression()), !dbg !2956
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2957
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2954, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 0, metadata !2953, metadata !DIExpression()), !dbg !2956
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !2959
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !2959
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !2959
  %11 = load i32, i32* %8, align 8, !dbg !2962
  %12 = icmp ult i32 %11, 41, !dbg !2962
  br i1 %12, label %13, label %18, !dbg !2962

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2962
  %15 = zext i32 %11 to i64, !dbg !2962
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2962
  %17 = add nuw nsw i32 %11, 8, !dbg !2962
  store i32 %17, i32* %8, align 8, !dbg !2962
  br label %21, !dbg !2962

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2962
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2962
  store i8* %20, i8** %9, align 8, !dbg !2962
  br label %21, !dbg !2962

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2962
  %25 = load i8*, i8** %24, align 8, !dbg !2962
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2963
  store i8* %25, i8** %26, align 16, !dbg !2964, !tbaa !1139
  %27 = icmp eq i8* %25, null, !dbg !2965
  br i1 %27, label %30, label %28, !dbg !2966

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2953, metadata !DIExpression()), !dbg !2956
  %29 = icmp ult i32 %22, 41, !dbg !2962
  br i1 %29, label %35, label %32, !dbg !2962

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2967
  call void @llvm.dbg.value(metadata i64 %31, metadata !2953, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %31, metadata !2953, metadata !DIExpression()), !dbg !2956
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2968
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !2969
  ret void, !dbg !2969

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2962
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2962
  store i8* %34, i8** %9, align 8, !dbg !2962
  br label %40, !dbg !2962

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2962
  %37 = zext i32 %22 to i64, !dbg !2962
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2962
  %39 = add nuw nsw i32 %22, 8, !dbg !2962
  store i32 %39, i32* %8, align 8, !dbg !2962
  br label %40, !dbg !2962

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2962
  %44 = load i8*, i8** %43, align 8, !dbg !2962
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2963
  store i8* %44, i8** %45, align 8, !dbg !2964, !tbaa !1139
  %46 = icmp eq i8* %44, null, !dbg !2965
  br i1 %46, label %30, label %47, !dbg !2966

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2953, metadata !DIExpression()), !dbg !2956
  %48 = icmp ult i32 %41, 41, !dbg !2962
  br i1 %48, label %52, label %49, !dbg !2962

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2962
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2962
  store i8* %51, i8** %9, align 8, !dbg !2962
  br label %57, !dbg !2962

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2962
  %54 = zext i32 %41 to i64, !dbg !2962
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2962
  %56 = add nuw nsw i32 %41, 8, !dbg !2962
  store i32 %56, i32* %8, align 8, !dbg !2962
  br label %57, !dbg !2962

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2962
  %61 = load i8*, i8** %60, align 8, !dbg !2962
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2963
  store i8* %61, i8** %62, align 16, !dbg !2964, !tbaa !1139
  %63 = icmp eq i8* %61, null, !dbg !2965
  br i1 %63, label %30, label %64, !dbg !2966

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2953, metadata !DIExpression()), !dbg !2956
  %65 = icmp ult i32 %58, 41, !dbg !2962
  br i1 %65, label %69, label %66, !dbg !2962

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2962
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2962
  store i8* %68, i8** %9, align 8, !dbg !2962
  br label %74, !dbg !2962

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2962
  %71 = zext i32 %58 to i64, !dbg !2962
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2962
  %73 = add nuw nsw i32 %58, 8, !dbg !2962
  store i32 %73, i32* %8, align 8, !dbg !2962
  br label %74, !dbg !2962

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2962
  %78 = load i8*, i8** %77, align 8, !dbg !2962
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2963
  store i8* %78, i8** %79, align 8, !dbg !2964, !tbaa !1139
  %80 = icmp eq i8* %78, null, !dbg !2965
  br i1 %80, label %30, label %81, !dbg !2966

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2953, metadata !DIExpression()), !dbg !2956
  %82 = icmp ult i32 %75, 41, !dbg !2962
  br i1 %82, label %86, label %83, !dbg !2962

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2962
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2962
  store i8* %85, i8** %9, align 8, !dbg !2962
  br label %91, !dbg !2962

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2962
  %88 = zext i32 %75 to i64, !dbg !2962
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2962
  %90 = add nuw nsw i32 %75, 8, !dbg !2962
  store i32 %90, i32* %8, align 8, !dbg !2962
  br label %91, !dbg !2962

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2962
  %95 = load i8*, i8** %94, align 8, !dbg !2962
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2963
  store i8* %95, i8** %96, align 16, !dbg !2964, !tbaa !1139
  %97 = icmp eq i8* %95, null, !dbg !2965
  br i1 %97, label %30, label %98, !dbg !2966

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2953, metadata !DIExpression()), !dbg !2956
  %99 = icmp ult i32 %92, 41, !dbg !2962
  br i1 %99, label %103, label %100, !dbg !2962

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2962
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2962
  store i8* %102, i8** %9, align 8, !dbg !2962
  br label %108, !dbg !2962

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2962
  %105 = zext i32 %92 to i64, !dbg !2962
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2962
  %107 = add nuw nsw i32 %92, 8, !dbg !2962
  store i32 %107, i32* %8, align 8, !dbg !2962
  br label %108, !dbg !2962

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2962
  %111 = load i8*, i8** %110, align 8, !dbg !2962
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2963
  store i8* %111, i8** %112, align 8, !dbg !2964, !tbaa !1139
  %113 = icmp eq i8* %111, null, !dbg !2965
  br i1 %113, label %30, label %114, !dbg !2966

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2953, metadata !DIExpression()), !dbg !2956
  %115 = load i8*, i8** %9, align 8, !dbg !2962
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2962
  store i8* %116, i8** %9, align 8, !dbg !2962
  %117 = bitcast i8* %115 to i8**, !dbg !2962
  %118 = load i8*, i8** %117, align 8, !dbg !2962
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2963
  store i8* %118, i8** %119, align 16, !dbg !2964, !tbaa !1139
  %120 = icmp eq i8* %118, null, !dbg !2965
  br i1 %120, label %30, label %121, !dbg !2966

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2953, metadata !DIExpression()), !dbg !2956
  %122 = load i8*, i8** %9, align 8, !dbg !2962
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2962
  store i8* %123, i8** %9, align 8, !dbg !2962
  %124 = bitcast i8* %122 to i8**, !dbg !2962
  %125 = load i8*, i8** %124, align 8, !dbg !2962
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2963
  store i8* %125, i8** %126, align 8, !dbg !2964, !tbaa !1139
  %127 = icmp eq i8* %125, null, !dbg !2965
  br i1 %127, label %30, label %128, !dbg !2966

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2953, metadata !DIExpression()), !dbg !2956
  %129 = load i8*, i8** %9, align 8, !dbg !2962
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2962
  store i8* %130, i8** %9, align 8, !dbg !2962
  %131 = bitcast i8* %129 to i8**, !dbg !2962
  %132 = load i8*, i8** %131, align 8, !dbg !2962
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2963
  store i8* %132, i8** %133, align 16, !dbg !2964, !tbaa !1139
  %134 = icmp eq i8* %132, null, !dbg !2965
  br i1 %134, label %30, label %135, !dbg !2966

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2953, metadata !DIExpression()), !dbg !2956
  %136 = load i8*, i8** %9, align 8, !dbg !2962
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2962
  store i8* %137, i8** %9, align 8, !dbg !2962
  %138 = bitcast i8* %136 to i8**, !dbg !2962
  %139 = load i8*, i8** %138, align 8, !dbg !2962
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2963
  store i8* %139, i8** %140, align 8, !dbg !2964, !tbaa !1139
  %141 = icmp eq i8* %139, null, !dbg !2965
  %142 = select i1 %141, i64 9, i64 10, !dbg !2966
  br label %30, !dbg !2966
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2970 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2974, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %1, metadata !2975, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %2, metadata !2976, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i8* %3, metadata !2977, metadata !DIExpression()), !dbg !2983
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2984
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2984
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2978, metadata !DIExpression()), !dbg !2985
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2986
  call void @llvm.va_start(i8* nonnull %6), !dbg !2986
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2987
  call void @llvm.va_end(i8* nonnull %6), !dbg !2988
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !2989
  ret void, !dbg !2989
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2990 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2991, !tbaa !1139
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.73, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2991
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.88, i64 0, i64 0), i32 5) #12, !dbg !2992
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.89, i64 0, i64 0)) #12, !dbg !2992
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.90, i64 0, i64 0), i32 5) #12, !dbg !2993
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.91, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.92, i64 0, i64 0)) #12, !dbg !2993
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.93, i64 0, i64 0), i32 5) #12, !dbg !2994
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.94, i64 0, i64 0)) #12, !dbg !2994
  ret void, !dbg !2995
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !2996 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()), !dbg !3002
  %3 = udiv i64 9223372036854775807, %1, !dbg !3003
  %4 = icmp ult i64 %3, %0, !dbg !3003
  br i1 %4, label %5, label %6, !dbg !3005

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3006
  unreachable, !dbg !3006

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %7, metadata !3008, metadata !DIExpression()) #12, !dbg !3014
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %8, metadata !3013, metadata !DIExpression()) #12, !dbg !3014
  %9 = icmp eq i8* %8, null, !dbg !3017
  %10 = icmp ne i64 %7, 0, !dbg !3019
  %11 = and i1 %10, %9, !dbg !3020
  br i1 %11, label %12, label %13, !dbg !3020

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3021
  unreachable, !dbg !3021

13:                                               ; preds = %6
  ret i8* %8, !dbg !3022
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3009 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3008, metadata !DIExpression()), !dbg !3023
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3024
  call void @llvm.dbg.value(metadata i8* %2, metadata !3013, metadata !DIExpression()), !dbg !3023
  %3 = icmp eq i8* %2, null, !dbg !3025
  %4 = icmp ne i64 %0, 0, !dbg !3026
  %5 = and i1 %4, %3, !dbg !3027
  br i1 %5, label %6, label %7, !dbg !3027

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3028
  unreachable, !dbg !3028

7:                                                ; preds = %1
  ret i8* %2, !dbg !3029
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3030 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3034, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %2, metadata !3036, metadata !DIExpression()), !dbg !3037
  %4 = udiv i64 9223372036854775807, %2, !dbg !3038
  %5 = icmp ult i64 %4, %1, !dbg !3038
  br i1 %5, label %6, label %7, !dbg !3040

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3041
  unreachable, !dbg !3041

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()) #12, !dbg !3049
  call void @llvm.dbg.value(metadata i64 %8, metadata !3048, metadata !DIExpression()) #12, !dbg !3049
  %9 = icmp eq i64 %8, 0, !dbg !3051
  %10 = icmp ne i8* %0, null, !dbg !3053
  %11 = and i1 %10, %9, !dbg !3054
  br i1 %11, label %12, label %13, !dbg !3054

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3055
  br label %19, !dbg !3057

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %14, metadata !3043, metadata !DIExpression()) #12, !dbg !3049
  %15 = icmp eq i8* %14, null, !dbg !3059
  %16 = icmp ne i64 %8, 0, !dbg !3061
  %17 = and i1 %16, %15, !dbg !3062
  br i1 %17, label %18, label %19, !dbg !3062

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3063
  unreachable, !dbg !3063

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3049
  ret i8* %20, !dbg !3064
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3044 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3065
  %3 = icmp eq i64 %1, 0, !dbg !3066
  %4 = icmp ne i8* %0, null, !dbg !3067
  %5 = and i1 %4, %3, !dbg !3068
  br i1 %5, label %6, label %7, !dbg !3068

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3069
  br label %13, !dbg !3070

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3071
  call void @llvm.dbg.value(metadata i8* %8, metadata !3043, metadata !DIExpression()), !dbg !3065
  %9 = icmp eq i8* %8, null, !dbg !3072
  %10 = icmp ne i64 %1, 0, !dbg !3073
  %11 = and i1 %10, %9, !dbg !3074
  br i1 %11, label %12, label %13, !dbg !3074

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3075
  unreachable, !dbg !3075

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3065
  ret i8* %14, !dbg !3076
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !495 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !500, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64* %1, metadata !501, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %2, metadata !502, metadata !DIExpression()), !dbg !3077
  %4 = load i64, i64* %1, align 8, !dbg !3078, !tbaa !2316
  call void @llvm.dbg.value(metadata i64 %4, metadata !503, metadata !DIExpression()), !dbg !3077
  %5 = icmp eq i8* %0, null, !dbg !3079
  br i1 %5, label %6, label %20, !dbg !3081

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3082
  br i1 %7, label %8, label %13, !dbg !3085

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %9, metadata !503, metadata !DIExpression()), !dbg !3077
  %10 = icmp ugt i64 %2, 128, !dbg !3088
  %11 = zext i1 %10 to i64, !dbg !3088
  %12 = add nuw nsw i64 %9, %11, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %12, metadata !503, metadata !DIExpression()), !dbg !3077
  br label %13, !dbg !3090

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3077
  call void @llvm.dbg.value(metadata i64 %14, metadata !503, metadata !DIExpression()), !dbg !3077
  %15 = udiv i64 9223372036854775807, %2, !dbg !3091
  %16 = icmp ult i64 %15, %14, !dbg !3091
  br i1 %16, label %19, label %17, !dbg !3093

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !503, metadata !DIExpression()), !dbg !3077
  store i64 %14, i64* %1, align 8, !dbg !3094, !tbaa !2316
  %18 = mul i64 %14, %2, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()) #12, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %28, metadata !3048, metadata !DIExpression()) #12, !dbg !3096
  br label %31, !dbg !3098

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3099
  unreachable, !dbg !3099

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3100
  %22 = icmp ugt i64 %21, %4, !dbg !3103
  br i1 %22, label %24, label %23, !dbg !3104

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3105
  unreachable, !dbg !3105

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3106
  %26 = add nuw i64 %4, 1, !dbg !3107
  %27 = add i64 %26, %25, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %27, metadata !503, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i64 %27, metadata !503, metadata !DIExpression()), !dbg !3077
  store i64 %27, i64* %1, align 8, !dbg !3094, !tbaa !2316
  %28 = mul i64 %27, %2, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()) #12, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %28, metadata !3048, metadata !DIExpression()) #12, !dbg !3096
  %29 = icmp eq i64 %28, 0, !dbg !3109
  br i1 %29, label %30, label %31, !dbg !3098

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3110
  br label %38, !dbg !3111

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %33, metadata !3043, metadata !DIExpression()) #12, !dbg !3096
  %34 = icmp eq i8* %33, null, !dbg !3113
  %35 = icmp ne i64 %32, 0, !dbg !3114
  %36 = and i1 %35, %34, !dbg !3115
  br i1 %36, label %37, label %38, !dbg !3115

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3116
  unreachable, !dbg !3116

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3096
  ret i8* %39, !dbg !3117
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3118 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %0, metadata !3008, metadata !DIExpression()) #12, !dbg !3122
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %2, metadata !3013, metadata !DIExpression()) #12, !dbg !3122
  %3 = icmp eq i8* %2, null, !dbg !3125
  %4 = icmp ne i64 %0, 0, !dbg !3126
  %5 = and i1 %4, %3, !dbg !3127
  br i1 %5, label %6, label %7, !dbg !3127

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3128
  unreachable, !dbg !3128

7:                                                ; preds = %1
  ret i8* %2, !dbg !3129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3134, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64* %1, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8* %0, metadata !500, metadata !DIExpression()) #12, !dbg !3137
  call void @llvm.dbg.value(metadata i64* %1, metadata !501, metadata !DIExpression()) #12, !dbg !3137
  call void @llvm.dbg.value(metadata i64 1, metadata !502, metadata !DIExpression()) #12, !dbg !3137
  %3 = load i64, i64* %1, align 8, !dbg !3139, !tbaa !2316
  call void @llvm.dbg.value(metadata i64 %3, metadata !503, metadata !DIExpression()) #12, !dbg !3137
  %4 = icmp eq i8* %0, null, !dbg !3140
  br i1 %4, label %5, label %12, !dbg !3141

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3142
  br i1 %6, label %9, label %7, !dbg !3143

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !503, metadata !DIExpression()) #12, !dbg !3137
  %8 = icmp slt i64 %3, 0, !dbg !3144
  br i1 %8, label %11, label %9, !dbg !3145

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !503, metadata !DIExpression()) #12, !dbg !3137
  store i64 %10, i64* %1, align 8, !dbg !3146, !tbaa !2316
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()) #12, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %18, metadata !3048, metadata !DIExpression()) #12, !dbg !3147
  br label %21, !dbg !3149

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3150
  unreachable, !dbg !3150

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3151
  br i1 %13, label %15, label %14, !dbg !3152

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3153
  unreachable, !dbg !3153

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3154
  %17 = add nuw nsw i64 %3, 1, !dbg !3155
  %18 = add nuw nsw i64 %17, %16, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %18, metadata !503, metadata !DIExpression()) #12, !dbg !3137
  call void @llvm.dbg.value(metadata i64 %18, metadata !503, metadata !DIExpression()) #12, !dbg !3137
  store i64 %18, i64* %1, align 8, !dbg !3146, !tbaa !2316
  call void @llvm.dbg.value(metadata i8* %0, metadata !3043, metadata !DIExpression()) #12, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %18, metadata !3048, metadata !DIExpression()) #12, !dbg !3147
  %19 = icmp eq i64 %18, 0, !dbg !3157
  br i1 %19, label %20, label %21, !dbg !3149

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3158
  br label %28, !dbg !3159

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %23, metadata !3043, metadata !DIExpression()) #12, !dbg !3147
  %24 = icmp eq i8* %23, null, !dbg !3161
  %25 = icmp ne i64 %22, 0, !dbg !3162
  %26 = and i1 %25, %24, !dbg !3163
  br i1 %26, label %27, label %28, !dbg !3163

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3164
  unreachable, !dbg !3164

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3147
  ret i8* %29, !dbg !3165
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3166 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %0, metadata !3170, metadata !DIExpression()) #12, !dbg !3175
  call void @llvm.dbg.value(metadata i64 1, metadata !3173, metadata !DIExpression()) #12, !dbg !3175
  %2 = icmp slt i64 %0, 0, !dbg !3177
  br i1 %2, label %6, label %3, !dbg !3179

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #12, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %4, metadata !3174, metadata !DIExpression()) #12, !dbg !3175
  %5 = icmp eq i8* %4, null, !dbg !3181
  br i1 %5, label %6, label %7, !dbg !3182

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3183
  unreachable, !dbg !3183

7:                                                ; preds = %3
  ret i8* %4, !dbg !3184
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3171 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3170, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %1, metadata !3173, metadata !DIExpression()), !dbg !3185
  %3 = udiv i64 9223372036854775807, %1, !dbg !3186
  %4 = icmp ult i64 %3, %0, !dbg !3186
  br i1 %4, label %8, label %5, !dbg !3187

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %6, metadata !3174, metadata !DIExpression()), !dbg !3185
  %7 = icmp eq i8* %6, null, !dbg !3189
  br i1 %7, label %8, label %9, !dbg !3190

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3191
  unreachable, !dbg !3191

9:                                                ; preds = %5
  ret i8* %6, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3193 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3197, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %1, metadata !3198, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %1, metadata !3008, metadata !DIExpression()) #12, !dbg !3200
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %3, metadata !3013, metadata !DIExpression()) #12, !dbg !3200
  %4 = icmp eq i8* %3, null, !dbg !3203
  %5 = icmp ne i64 %1, 0, !dbg !3204
  %6 = and i1 %5, %4, !dbg !3205
  br i1 %6, label %7, label %8, !dbg !3205

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3206
  unreachable, !dbg !3206

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3207, metadata !DIExpression()) #12, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %0, metadata !3214, metadata !DIExpression()) #12, !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()) #12, !dbg !3216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #12, !dbg !3218
  ret i8* %3, !dbg !3219
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3220 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3222, metadata !DIExpression()), !dbg !3223
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3224
  %3 = add i64 %2, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i8* %0, metadata !3197, metadata !DIExpression()) #12, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %3, metadata !3198, metadata !DIExpression()) #12, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %3, metadata !3008, metadata !DIExpression()) #12, !dbg !3228
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3230
  call void @llvm.dbg.value(metadata i8* %4, metadata !3013, metadata !DIExpression()) #12, !dbg !3228
  %5 = icmp eq i8* %4, null, !dbg !3231
  %6 = icmp ne i64 %3, 0, !dbg !3232
  %7 = and i1 %6, %5, !dbg !3233
  br i1 %7, label %8, label %9, !dbg !3233

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3234
  unreachable, !dbg !3234

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3207, metadata !DIExpression()) #12, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %0, metadata !3214, metadata !DIExpression()) #12, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %3, metadata !3215, metadata !DIExpression()) #12, !dbg !3235
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #12, !dbg !3237
  ret i8* %4, !dbg !3238
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3239 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3240, !tbaa !1200
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.105, i64 0, i64 0), i32 5) #12, !dbg !3241
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0), i8* %2) #12, !dbg !3242
  tail call void @abort() #22, !dbg !3243
  unreachable, !dbg !3243
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3244 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3252
  %3 = icmp eq i64 %0, 0, !dbg !3253
  %4 = icmp eq i64 %1, 0, !dbg !3254
  %5 = or i1 %3, %4, !dbg !3255
  br i1 %5, label %11, label %6, !dbg !3255

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3249, metadata !DIExpression()), !dbg !3256
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3257
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3257
  br i1 %8, label %9, label %11, !dbg !3259

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #24, !dbg !3260
  store i32 12, i32* %10, align 4, !dbg !3262, !tbaa !1200
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3246, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i64 %12, metadata !3247, metadata !DIExpression()), !dbg !3252
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #12, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %14, metadata !3248, metadata !DIExpression()), !dbg !3252
  br label %15, !dbg !3264

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3252
  ret i8* %16, !dbg !3265
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3266 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3274, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8* %1, metadata !3275, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %2, metadata !3276, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3277, metadata !DIExpression()), !dbg !3283
  %6 = bitcast i32* %5 to i8*, !dbg !3284
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3284
  %7 = icmp eq i32* %0, null, !dbg !3285
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3287
  call void @llvm.dbg.value(metadata i32* %8, metadata !3274, metadata !DIExpression()), !dbg !3283
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %9, metadata !3278, metadata !DIExpression()), !dbg !3283
  %10 = icmp ugt i64 %9, -3, !dbg !3289
  %11 = icmp ne i64 %2, 0, !dbg !3290
  %12 = and i1 %11, %10, !dbg !3291
  br i1 %12, label %13, label %18, !dbg !3291

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3292
  br i1 %14, label %18, label %15, !dbg !3293

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3294, !tbaa !1611
  call void @llvm.dbg.value(metadata i8 %16, metadata !3280, metadata !DIExpression()), !dbg !3295
  %17 = zext i8 %16 to i32, !dbg !3296
  store i32 %17, i32* %8, align 4, !dbg !3297, !tbaa !1200
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3283
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3298
  ret i64 %19, !dbg !3298
}

; Function Attrs: nounwind
declare !dbg !521 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3299 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3305, metadata !DIExpression()), !dbg !3310
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3311
  call void @llvm.dbg.value(metadata i1 undef, metadata !3306, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3312, metadata !DIExpression()), !dbg !3316
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3318
  %4 = load i32, i32* %3, align 8, !dbg !3318, !tbaa !3319
  %5 = and i32 %4, 32, !dbg !3318
  %6 = icmp eq i32 %5, 0, !dbg !3321
  call void @llvm.dbg.value(metadata i1 %6, metadata !3308, metadata !DIExpression()), !dbg !3310
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3322
  %8 = icmp ne i32 %7, 0, !dbg !3323
  call void @llvm.dbg.value(metadata i1 %8, metadata !3309, metadata !DIExpression()), !dbg !3310
  br i1 %6, label %9, label %19, !dbg !3324

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3326
  call void @llvm.dbg.value(metadata i1 %10, metadata !3306, metadata !DIExpression()), !dbg !3310
  %11 = xor i1 %8, true, !dbg !3327
  %12 = or i1 %10, %11, !dbg !3327
  %13 = sext i1 %8 to i32, !dbg !3327
  br i1 %12, label %22, label %14, !dbg !3327

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #24, !dbg !3328
  %16 = load i32, i32* %15, align 4, !dbg !3328, !tbaa !1200
  %17 = icmp ne i32 %16, 9, !dbg !3329
  %18 = sext i1 %17 to i32, !dbg !3330
  br label %22, !dbg !3330

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3331

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #24, !dbg !3333
  store i32 0, i32* %21, align 4, !dbg !3335, !tbaa !1200
  br label %22, !dbg !3333

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3310
  ret i32 %23, !dbg !3336
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3337 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3339, metadata !DIExpression()), !dbg !3344
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3345
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3345
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3340, metadata !DIExpression()), !dbg !3346
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #12, !dbg !3347
  %5 = icmp eq i32 %4, 0, !dbg !3347
  br i1 %5, label %6, label %13, !dbg !3349

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3350
  %8 = load i16, i16* %7, align 16, !dbg !3350
  %9 = icmp eq i16 %8, 67, !dbg !3350
  br i1 %9, label %13, label %10, !dbg !3351

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i64 0, i64 0), i64 6), !dbg !3352
  %12 = icmp ne i32 %11, 0, !dbg !3353
  br label %13, !dbg !3351

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3344
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3354
  ret i1 %14, !dbg !3354
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3355 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %1, metadata !3357, metadata !DIExpression()), !dbg !3359
  %2 = icmp eq i8* %1, null, !dbg !3360
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.118, i64 0, i64 0), i8* %1, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %3, metadata !3357, metadata !DIExpression()), !dbg !3359
  %4 = load i8, i8* %3, align 1, !dbg !3363, !tbaa !1611
  %5 = icmp eq i8 %4, 0, !dbg !3367
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0), i8* %3, !dbg !3368
  call void @llvm.dbg.value(metadata i8* %6, metadata !3357, metadata !DIExpression()), !dbg !3359
  ret i8* %6, !dbg !3369
}

; Function Attrs: nounwind
declare !dbg !973 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3370 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3374, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %1, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %2, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i32 %0, metadata !3378, metadata !DIExpression()) #12, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %1, metadata !3381, metadata !DIExpression()) #12, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %2, metadata !3382, metadata !DIExpression()) #12, !dbg !3387
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()) #12, !dbg !3395
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %4, metadata !3394, metadata !DIExpression()) #12, !dbg !3395
  call void @llvm.dbg.value(metadata i8* %4, metadata !3383, metadata !DIExpression()) #12, !dbg !3387
  %5 = icmp eq i8* %4, null, !dbg !3398
  br i1 %5, label %6, label %9, !dbg !3399

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3400
  br i1 %7, label %19, label %8, !dbg !3403

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3404, !tbaa !1611
  br label %19, !dbg !3405

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3406
  call void @llvm.dbg.value(metadata i64 %10, metadata !3384, metadata !DIExpression()) #12, !dbg !3407
  %11 = icmp ult i64 %10, %2, !dbg !3408
  br i1 %11, label %12, label %14, !dbg !3410

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3411
  call void @llvm.dbg.value(metadata i8* %1, metadata !3413, metadata !DIExpression()) #12, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %4, metadata !3416, metadata !DIExpression()) #12, !dbg !3418
  call void @llvm.dbg.value(metadata i64 %13, metadata !3417, metadata !DIExpression()) #12, !dbg !3418
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #12, !dbg !3420
  br label %19, !dbg !3421

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3422
  br i1 %15, label %19, label %16, !dbg !3425

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3426
  call void @llvm.dbg.value(metadata i8* %1, metadata !3413, metadata !DIExpression()) #12, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %4, metadata !3416, metadata !DIExpression()) #12, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %17, metadata !3417, metadata !DIExpression()) #12, !dbg !3428
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #12, !dbg !3430
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3431
  store i8 0, i8* %18, align 1, !dbg !3432, !tbaa !1611
  br label %19, !dbg !3433

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3434
  ret i32 %20, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3438, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()) #12, !dbg !3440
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %2, metadata !3394, metadata !DIExpression()) #12, !dbg !3440
  ret i8* %2, !dbg !3443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3444 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3450, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3451, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3453, metadata !DIExpression()), !dbg !3454
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %2, metadata !3452, metadata !DIExpression()), !dbg !3454
  %3 = icmp slt i32 %2, 0, !dbg !3456
  br i1 %3, label %4, label %6, !dbg !3458

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3459
  br label %24, !dbg !3460

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3461
  %8 = icmp eq i32 %7, 0, !dbg !3461
  br i1 %8, label %13, label %9, !dbg !3463

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3464
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3465
  %12 = icmp eq i64 %11, -1, !dbg !3466
  br i1 %12, label %16, label %13, !dbg !3467

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3468
  %15 = icmp eq i32 %14, 0, !dbg !3468
  br i1 %15, label %16, label %18, !dbg !3469

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3451, metadata !DIExpression()), !dbg !3454
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %21, metadata !3453, metadata !DIExpression()), !dbg !3454
  br label %24, !dbg !3471

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #24, !dbg !3472
  %20 = load i32, i32* %19, align 4, !dbg !3472, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 %20, metadata !3451, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 %20, metadata !3451, metadata !DIExpression()), !dbg !3454
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %21, metadata !3453, metadata !DIExpression()), !dbg !3454
  %22 = icmp eq i32 %20, 0, !dbg !3473
  br i1 %22, label %24, label %23, !dbg !3471

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3475, !tbaa !1200
  call void @llvm.dbg.value(metadata i32 -1, metadata !3453, metadata !DIExpression()), !dbg !3454
  br label %24, !dbg !3477

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3454
  ret i32 %25, !dbg !3478
}

; Function Attrs: nofree nounwind
declare !dbg !982 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1017 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1018 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3479 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3485, metadata !DIExpression()), !dbg !3486
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3487
  br i1 %2, label %6, label %3, !dbg !3489

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3490
  %5 = icmp eq i32 %4, 0, !dbg !3490
  br i1 %5, label %6, label %8, !dbg !3491

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3492
  br label %17, !dbg !3493

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3494, metadata !DIExpression()) #12, !dbg !3499
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3501
  %10 = load i32, i32* %9, align 8, !dbg !3501, !tbaa !3319
  %11 = and i32 %10, 256, !dbg !3503
  %12 = icmp eq i32 %11, 0, !dbg !3503
  br i1 %12, label %15, label %13, !dbg !3504

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3505
  br label %15, !dbg !3505

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3506
  br label %17, !dbg !3507

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3486
  ret i32 %18, !dbg !3508
}

; Function Attrs: nofree nounwind
declare !dbg !1025 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3509 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3516, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i64 %1, metadata !3517, metadata !DIExpression()), !dbg !3522
  call void @llvm.dbg.value(metadata i32 %2, metadata !3518, metadata !DIExpression()), !dbg !3522
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3523
  %5 = load i8*, i8** %4, align 8, !dbg !3523, !tbaa !3524
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3525
  %7 = load i8*, i8** %6, align 8, !dbg !3525, !tbaa !3526
  %8 = icmp eq i8* %5, %7, !dbg !3527
  br i1 %8, label %9, label %28, !dbg !3528

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3529
  %11 = load i8*, i8** %10, align 8, !dbg !3529, !tbaa !3530
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3531
  %13 = load i8*, i8** %12, align 8, !dbg !3531, !tbaa !3532
  %14 = icmp eq i8* %11, %13, !dbg !3533
  br i1 %14, label %15, label %28, !dbg !3534

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3535
  %17 = load i8*, i8** %16, align 8, !dbg !3535, !tbaa !3536
  %18 = icmp eq i8* %17, null, !dbg !3537
  br i1 %18, label %19, label %28, !dbg !3538

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3539
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %21, metadata !3519, metadata !DIExpression()), !dbg !3541
  %22 = icmp eq i64 %21, -1, !dbg !3542
  br i1 %22, label %30, label %23, !dbg !3544

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3545
  %25 = load i32, i32* %24, align 8, !dbg !3546, !tbaa !3319
  %26 = and i32 %25, -17, !dbg !3546
  store i32 %26, i32* %24, align 8, !dbg !3546, !tbaa !3319
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3547
  store i64 %21, i64* %27, align 8, !dbg !3548, !tbaa !3549
  br label %30, !dbg !3550

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3551
  br label %30, !dbg !3552

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3522
  ret i32 %31, !dbg !3553
}

; Function Attrs: nofree nounwind
declare !dbg !1101 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #12 = { nounwind }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold }

!llvm.dbg.cu = !{!360, !2, !11, !95, !101, !169, !211, !449, !354, !491, !512, !515, !518, !537, !576, !583, !976, !979, !1022, !1063}
!llvm.ident = !{!1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104, !1104}
!llvm.module.flags = !{!1105, !1106, !1107, !1108, !1109}

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
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !362, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "src/whoami.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!362 = !{!77, !363, !398, !402, !406, !409, !410, !6, !67, !414, !422, !85, !426, !430, !71, !446}
!363 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!364 = !DISubroutineType(types: !365)
!365 = !{!18, !6, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !367, file: !21, line: 51, baseType: !18, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !367, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !367, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !367, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !367, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !367, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !367, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !367, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !367, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !367, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !367, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !367, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !367, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !367, file: !21, line: 70, baseType: !366, size: 64, offset: 832)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !367, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !367, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !367, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !367, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !367, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !367, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !367, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !367, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !367, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !367, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !367, file: !21, line: 93, baseType: !366, size: 64, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !367, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !367, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !367, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !367, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!398 = !DISubprogram(name: "set_program_name", scope: !399, file: !399, line: 37, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!399 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!400 = !DISubroutineType(types: !401)
!401 = !{null, !6}
!402 = !DISubprogram(name: "setlocale", scope: !403, file: !403, line: 122, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!403 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!404 = !DISubroutineType(types: !405)
!405 = !{!25, !18, !6}
!406 = !DISubprogram(name: "bindtextdomain", scope: !78, file: !78, line: 86, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!407 = !DISubroutineType(types: !408)
!408 = !{!25, !6, !6}
!409 = !DISubprogram(name: "textdomain", scope: !78, file: !78, line: 82, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!410 = !DISubprogram(name: "atexit", scope: !271, file: !271, line: 595, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!411 = !DISubroutineType(types: !412)
!412 = !{!18, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!414 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !415, file: !415, line: 33, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!415 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!416 = !DISubroutineType(types: !417)
!417 = !{null, !18, !418, !6, !6, !6, !92, !419, null}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !18}
!422 = !DISubprogram(name: "quote", scope: !423, file: !423, line: 44, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!423 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!424 = !DISubroutineType(types: !425)
!425 = !{!6, !6}
!426 = !DISubprogram(name: "geteuid", scope: !427, file: !427, line: 678, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!427 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!428 = !DISubroutineType(types: !429)
!429 = !{!159}
!430 = !DISubprogram(name: "getpwuid", scope: !431, file: !431, line: 110, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!431 = !DIFile(filename: "/usr/include/pwd.h", directory: "")
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !159}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !431, line: 49, size: 384, elements: !436)
!436 = !{!437, !438, !439, !441, !443, !444, !445}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !435, file: !431, line: 51, baseType: !25, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !435, file: !431, line: 52, baseType: !25, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !435, file: !431, line: 54, baseType: !440, size: 32, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !44, line: 146, baseType: !159)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !435, file: !431, line: 55, baseType: !442, size: 32, offset: 160)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !44, line: 147, baseType: !159)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !435, file: !431, line: 56, baseType: !25, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !435, file: !431, line: 57, baseType: !25, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !435, file: !431, line: 58, baseType: !25, size: 64, offset: 320)
!446 = !DISubprogram(name: "puts", scope: !173, file: !173, line: 632, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!447 = !DISubroutineType(types: !448)
!448 = !{!18, !6}
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !451, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!451 = !{!452}
!452 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !450, line: 40, baseType: !159, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!455 = !{!77, !456, !67}
!456 = !DISubprogram(name: "fputs_unlocked", scope: !173, file: !173, line: 662, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!457 = !DISubroutineType(types: !458)
!458 = !{!18, !6, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !460, file: !21, line: 51, baseType: !18, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !460, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !460, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !460, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !460, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !460, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !460, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !460, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !460, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !460, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !460, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !460, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !460, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !460, file: !21, line: 70, baseType: !459, size: 64, offset: 832)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !460, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !460, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !460, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !460, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !460, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !460, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !460, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !460, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !460, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !460, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !460, file: !21, line: 93, baseType: !459, size: 64, offset: 1344)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !460, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !460, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !460, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !460, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!491 = distinct !DICompileUnit(language: DW_LANG_C99, file: !492, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !493, retainedTypes: !506, splitDebugInlining: false, nameTableKind: None)
!492 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!493 = !{!494}
!494 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !495, file: !249, line: 186, baseType: !159, size: 32, elements: !504)
!495 = distinct !DISubprogram(name: "x2nrealloc", scope: !249, file: !249, line: 174, type: !496, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !499)
!496 = !DISubroutineType(types: !497)
!497 = !{!67, !67, !498, !69}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!499 = !{!500, !501, !502, !503}
!500 = !DILocalVariable(name: "p", arg: 1, scope: !495, file: !249, line: 174, type: !67)
!501 = !DILocalVariable(name: "pn", arg: 2, scope: !495, file: !249, line: 174, type: !498)
!502 = !DILocalVariable(name: "s", arg: 3, scope: !495, file: !249, line: 174, type: !69)
!503 = !DILocalVariable(name: "n", scope: !495, file: !249, line: 176, type: !69)
!504 = !{!505}
!505 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!506 = !{!69, !315, !312, !318, !25, !270, !67, !507, !510}
!507 = !DISubprogram(name: "xcalloc", scope: !249, file: !249, line: 57, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!508 = !DISubroutineType(types: !509)
!509 = !{!67, !71, !71}
!510 = !DISubprogram(name: "rpl_calloc", scope: !511, file: !511, line: 688, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!511 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!512 = distinct !DICompileUnit(language: DW_LANG_C99, file: !513, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !514, splitDebugInlining: false, nameTableKind: None)
!513 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!514 = !{!77, !85}
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !517, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!517 = !{!67}
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !520, splitDebugInlining: false, nameTableKind: None)
!519 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!520 = !{!521, !69, !533}
!521 = !DISubprogram(name: "mbrtowc", scope: !299, file: !299, line: 296, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!522 = !DISubroutineType(types: !523)
!523 = !{!71, !117, !6, !71, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !283, line: 13, size: 64, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !525, file: !283, line: 15, baseType: !18, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !525, file: !283, line: 20, baseType: !529, size: 32, offset: 32)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !525, file: !283, line: 16, size: 32, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !529, file: !283, line: 18, baseType: !159, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !529, file: !283, line: 19, baseType: !291, size: 32)
!533 = !DISubprogram(name: "hard_locale", scope: !534, file: !534, line: 26, type: !535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!534 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!535 = !DISubroutineType(types: !536)
!536 = !{!92, !18}
!537 = distinct !DICompileUnit(language: DW_LANG_C99, file: !538, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !539, splitDebugInlining: false, nameTableKind: None)
!538 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!539 = !{!540}
!540 = !DISubprogram(name: "rpl_fclose", scope: !541, file: !541, line: 672, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!541 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!542 = !DISubroutineType(types: !543)
!543 = !{!18, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !545, file: !21, line: 51, baseType: !18, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !545, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !545, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !545, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !545, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !545, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !545, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !545, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !545, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !545, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !545, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !545, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !545, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !545, file: !21, line: 70, baseType: !544, size: 64, offset: 832)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !545, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !545, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !545, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !545, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !545, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !545, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !545, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !545, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !545, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !545, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !545, file: !21, line: 93, baseType: !544, size: 64, offset: 1344)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !545, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !545, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !545, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !545, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !578, splitDebugInlining: false, nameTableKind: None)
!577 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!578 = !{!579}
!579 = !DISubprogram(name: "setlocale_null_r", scope: !580, file: !580, line: 64, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!580 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!581 = !DISubroutineType(types: !582)
!582 = !{!18, !18, !25, !71}
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !585, retainedTypes: !972, splitDebugInlining: false, nameTableKind: None)
!584 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!585 = !{!586}
!586 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !587, line: 41, baseType: !159, size: 32, elements: !588)
!587 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971}
!589 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!590 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!591 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!592 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!593 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!594 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!595 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!596 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!597 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!598 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!599 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!600 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!601 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!602 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!603 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!604 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!605 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!606 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!607 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!608 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!609 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!610 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!611 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!612 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!613 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!614 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!615 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!616 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!617 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!618 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!619 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!620 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!621 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!622 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!623 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!624 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!625 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!626 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!627 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!628 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!629 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!630 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!631 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!632 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!633 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!634 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!635 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!636 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!637 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!638 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!697 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!700 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!701 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!702 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!703 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!704 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!705 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!706 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!707 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!708 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!709 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!710 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!711 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!784 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!857 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!858 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!859 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!860 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!861 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!862 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!863 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!864 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!865 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!866 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!867 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!868 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!869 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!870 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!871 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!873 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!874 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!875 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!876 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!877 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!878 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!880 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!885 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!886 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!887 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!888 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!904 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!905 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!906 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!907 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!908 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!913 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!914 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!915 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!916 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!972 = !{!973, !67}
!973 = !DISubprogram(name: "nl_langinfo", scope: !587, file: !587, line: 661, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!974 = !DISubroutineType(types: !975)
!975 = !{!25, !18}
!976 = distinct !DICompileUnit(language: DW_LANG_C99, file: !977, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !978, splitDebugInlining: false, nameTableKind: None)
!977 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!978 = !{!67, !402}
!979 = distinct !DICompileUnit(language: DW_LANG_C99, file: !980, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !981, splitDebugInlining: false, nameTableKind: None)
!980 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!981 = !{!982, !1017, !1018, !1021}
!982 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!983 = !DISubroutineType(types: !984)
!984 = !{!18, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !986, file: !21, line: 51, baseType: !18, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !986, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !986, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !986, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !986, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !986, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !986, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !986, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !986, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !986, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !986, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !986, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !986, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !986, file: !21, line: 70, baseType: !985, size: 64, offset: 832)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !986, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !986, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !986, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !986, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !986, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !986, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !986, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !986, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !986, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !986, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !986, file: !21, line: 93, baseType: !985, size: 64, offset: 1344)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !986, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !986, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !986, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !986, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1017 = !DISubprogram(name: "fclose", scope: !173, file: !173, line: 213, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1018 = !DISubprogram(name: "lseek", scope: !427, file: !427, line: 334, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!45, !18, !45, !18}
!1021 = !DISubprogram(name: "rpl_fflush", scope: !541, file: !541, line: 718, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1022 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1023, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1024, splitDebugInlining: false, nameTableKind: None)
!1023 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1024 = !{!67, !1025, !1060}
!1025 = !DISubprogram(name: "fflush", scope: !173, file: !173, line: 218, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!18, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1029, file: !21, line: 51, baseType: !18, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1029, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1029, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1029, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1029, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1029, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1029, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1029, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1029, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1029, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1029, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1029, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1029, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1029, file: !21, line: 70, baseType: !1028, size: 64, offset: 832)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1029, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1029, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1029, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1029, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1029, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1029, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1029, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1029, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1029, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1029, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1029, file: !21, line: 93, baseType: !1028, size: 64, offset: 1344)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1029, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1029, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1029, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1029, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1060 = !DISubprogram(name: "rpl_fseeko", scope: !541, file: !541, line: 1034, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!18, !1028, !45, !18}
!1063 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1064, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1065, splitDebugInlining: false, nameTableKind: None)
!1064 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1065 = !{!67, !1066, !1018, !1101}
!1066 = !DISubprogram(name: "fileno", scope: !173, file: !173, line: 786, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!18, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1070, file: !21, line: 51, baseType: !18, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1070, file: !21, line: 54, baseType: !25, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1070, file: !21, line: 55, baseType: !25, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1070, file: !21, line: 56, baseType: !25, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1070, file: !21, line: 57, baseType: !25, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1070, file: !21, line: 58, baseType: !25, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1070, file: !21, line: 59, baseType: !25, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1070, file: !21, line: 60, baseType: !25, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1070, file: !21, line: 61, baseType: !25, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1070, file: !21, line: 64, baseType: !25, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1070, file: !21, line: 65, baseType: !25, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1070, file: !21, line: 66, baseType: !25, size: 64, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1070, file: !21, line: 68, baseType: !37, size: 64, offset: 768)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1070, file: !21, line: 70, baseType: !1069, size: 64, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1070, file: !21, line: 72, baseType: !18, size: 32, offset: 896)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1070, file: !21, line: 73, baseType: !18, size: 32, offset: 928)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1070, file: !21, line: 74, baseType: !43, size: 64, offset: 960)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1070, file: !21, line: 77, baseType: !47, size: 16, offset: 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1070, file: !21, line: 78, baseType: !49, size: 8, offset: 1040)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1070, file: !21, line: 79, baseType: !51, size: 8, offset: 1048)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1070, file: !21, line: 81, baseType: !55, size: 64, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1070, file: !21, line: 89, baseType: !58, size: 64, offset: 1152)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1070, file: !21, line: 91, baseType: !60, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1070, file: !21, line: 92, baseType: !63, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1070, file: !21, line: 93, baseType: !1069, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1070, file: !21, line: 94, baseType: !67, size: 64, offset: 1408)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1070, file: !21, line: 95, baseType: !69, size: 64, offset: 1472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1070, file: !21, line: 96, baseType: !18, size: 32, offset: 1536)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1070, file: !21, line: 98, baseType: !74, size: 160, offset: 1568)
!1101 = !DISubprogram(name: "fseeko", scope: !173, file: !173, line: 707, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!18, !1069, !45, !18}
!1104 = !{!"clang version 10.0.0 "}
!1105 = !{i32 7, !"Dwarf Version", i32 4}
!1106 = !{i32 2, !"Debug Info Version", i32 3}
!1107 = !{i32 1, !"wchar_size", i32 4}
!1108 = !{i32 7, !"PIC Level", i32 2}
!1109 = !{i32 7, !"PIE Level", i32 2}
!1110 = distinct !DISubprogram(name: "usage", scope: !361, file: !361, line: 38, type: !420, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1111)
!1111 = !{!1112}
!1112 = !DILocalVariable(name: "status", arg: 1, scope: !1110, file: !361, line: 38, type: !18)
!1113 = !DILocalVariable(name: "infomap", scope: !1114, file: !1115, line: 636, type: !1127)
!1114 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1115, file: !1115, line: 634, type: !400, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1116)
!1115 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1116 = !{!1117, !1113, !1118, !1119, !1126}
!1117 = !DILocalVariable(name: "program", arg: 1, scope: !1114, file: !1115, line: 634, type: !6)
!1118 = !DILocalVariable(name: "node", scope: !1114, file: !1115, line: 646, type: !6)
!1119 = !DILocalVariable(name: "map_prog", scope: !1114, file: !1115, line: 647, type: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1114, file: !1115, line: 636, size: 128, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1122, file: !1115, line: 636, baseType: !6, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1122, file: !1115, line: 636, baseType: !6, size: 64, offset: 64)
!1126 = !DILocalVariable(name: "lc_messages", scope: !1114, file: !1115, line: 659, type: !6)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1121, size: 896, elements: !1128)
!1128 = !{!1129}
!1129 = !DISubrange(count: 7)
!1130 = !DILocation(line: 636, column: 67, scope: !1114, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 52, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !361, line: 43, column: 5)
!1133 = distinct !DILexicalBlock(scope: !1110, file: !361, line: 40, column: 7)
!1134 = !DILocation(line: 0, scope: !1110)
!1135 = !DILocation(line: 40, column: 14, scope: !1133)
!1136 = !DILocation(line: 40, column: 7, scope: !1110)
!1137 = !DILocation(line: 41, column: 5, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !361, line: 41, column: 5)
!1139 = !{!1140, !1140, i64 0}
!1140 = !{!"any pointer", !1141, i64 0}
!1141 = !{!"omnipotent char", !1142, i64 0}
!1142 = !{!"Simple C/C++ TBAA"}
!1143 = !DILocation(line: 44, column: 7, scope: !1132)
!1144 = !DILocation(line: 45, column: 7, scope: !1132)
!1145 = !DILocation(line: 50, column: 7, scope: !1132)
!1146 = !DILocation(line: 51, column: 7, scope: !1132)
!1147 = !DILocation(line: 0, scope: !1114, inlinedAt: !1131)
!1148 = !DILocation(line: 636, column: 3, scope: !1114, inlinedAt: !1131)
!1149 = !DILocation(line: 647, column: 36, scope: !1114, inlinedAt: !1131)
!1150 = !DILocation(line: 649, column: 3, scope: !1114, inlinedAt: !1131)
!1151 = !DILocation(line: 649, column: 33, scope: !1114, inlinedAt: !1131)
!1152 = !DILocation(line: 650, column: 13, scope: !1114, inlinedAt: !1131)
!1153 = !DILocation(line: 649, column: 20, scope: !1114, inlinedAt: !1131)
!1154 = !{!1155, !1140, i64 0}
!1155 = !{!"infomap", !1140, i64 0, !1140, i64 8}
!1156 = !DILocation(line: 649, column: 10, scope: !1114, inlinedAt: !1131)
!1157 = !DILocation(line: 649, column: 28, scope: !1114, inlinedAt: !1131)
!1158 = distinct !{!1158, !1150, !1152}
!1159 = !DILocation(line: 652, column: 17, scope: !1160, inlinedAt: !1131)
!1160 = distinct !DILexicalBlock(scope: !1114, file: !1115, line: 652, column: 7)
!1161 = !{!1155, !1140, i64 8}
!1162 = !DILocation(line: 652, column: 7, scope: !1160, inlinedAt: !1131)
!1163 = !DILocation(line: 652, column: 7, scope: !1114, inlinedAt: !1131)
!1164 = !DILocation(line: 655, column: 3, scope: !1114, inlinedAt: !1131)
!1165 = !DILocation(line: 659, column: 29, scope: !1114, inlinedAt: !1131)
!1166 = !DILocation(line: 660, column: 7, scope: !1167, inlinedAt: !1131)
!1167 = distinct !DILexicalBlock(scope: !1114, file: !1115, line: 660, column: 7)
!1168 = !DILocation(line: 660, column: 19, scope: !1167, inlinedAt: !1131)
!1169 = !DILocation(line: 660, column: 22, scope: !1167, inlinedAt: !1131)
!1170 = !DILocation(line: 660, column: 7, scope: !1114, inlinedAt: !1131)
!1171 = !DILocation(line: 666, column: 7, scope: !1172, inlinedAt: !1131)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !1115, line: 661, column: 5)
!1173 = !DILocation(line: 668, column: 5, scope: !1172, inlinedAt: !1131)
!1174 = !DILocation(line: 669, column: 3, scope: !1114, inlinedAt: !1131)
!1175 = !DILocation(line: 671, column: 3, scope: !1114, inlinedAt: !1131)
!1176 = !DILocation(line: 673, column: 1, scope: !1114, inlinedAt: !1131)
!1177 = !DILocation(line: 54, column: 3, scope: !1110)
!1178 = distinct !DISubprogram(name: "main", scope: !361, file: !361, line: 58, type: !1179, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1181)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!18, !18, !418}
!1181 = !{!1182, !1183, !1184, !1185, !1188}
!1182 = !DILocalVariable(name: "argc", arg: 1, scope: !1178, file: !361, line: 58, type: !18)
!1183 = !DILocalVariable(name: "argv", arg: 2, scope: !1178, file: !361, line: 58, type: !418)
!1184 = !DILocalVariable(name: "pw", scope: !1178, file: !361, line: 60, type: !434)
!1185 = !DILocalVariable(name: "uid", scope: !1178, file: !361, line: 61, type: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1187, line: 79, baseType: !440)
!1187 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1188 = !DILocalVariable(name: "NO_UID", scope: !1178, file: !361, line: 62, type: !1186)
!1189 = !DILocation(line: 0, scope: !1178)
!1190 = !DILocation(line: 65, column: 21, scope: !1178)
!1191 = !DILocation(line: 65, column: 3, scope: !1178)
!1192 = !DILocation(line: 66, column: 3, scope: !1178)
!1193 = !DILocation(line: 67, column: 3, scope: !1178)
!1194 = !DILocation(line: 68, column: 3, scope: !1178)
!1195 = !DILocation(line: 70, column: 3, scope: !1178)
!1196 = !DILocation(line: 73, column: 36, scope: !1178)
!1197 = !DILocation(line: 72, column: 3, scope: !1178)
!1198 = !DILocation(line: 76, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1178, file: !361, line: 76, column: 7)
!1200 = !{!1201, !1201, i64 0}
!1201 = !{!"int", !1141, i64 0}
!1202 = !DILocation(line: 76, column: 14, scope: !1199)
!1203 = !DILocation(line: 76, column: 7, scope: !1178)
!1204 = !DILocation(line: 78, column: 20, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1199, file: !361, line: 77, column: 5)
!1206 = !DILocation(line: 78, column: 55, scope: !1205)
!1207 = !DILocation(line: 78, column: 50, scope: !1205)
!1208 = !DILocation(line: 78, column: 43, scope: !1205)
!1209 = !DILocation(line: 78, column: 7, scope: !1205)
!1210 = !DILocation(line: 79, column: 7, scope: !1205)
!1211 = !DILocation(line: 82, column: 3, scope: !1178)
!1212 = !DILocation(line: 82, column: 9, scope: !1178)
!1213 = !DILocation(line: 83, column: 9, scope: !1178)
!1214 = !DILocation(line: 84, column: 13, scope: !1178)
!1215 = !DILocation(line: 84, column: 23, scope: !1178)
!1216 = !DILocation(line: 84, column: 26, scope: !1178)
!1217 = !DILocation(line: 84, column: 9, scope: !1178)
!1218 = !DILocation(line: 84, column: 41, scope: !1178)
!1219 = !DILocation(line: 85, column: 8, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1178, file: !361, line: 85, column: 7)
!1221 = !DILocation(line: 85, column: 7, scope: !1178)
!1222 = !DILocation(line: 86, column: 5, scope: !1220)
!1223 = !DILocation(line: 88, column: 13, scope: !1178)
!1224 = !{!1225, !1140, i64 0}
!1225 = !{!"passwd", !1140, i64 0, !1140, i64 8, !1201, i64 16, !1201, i64 20, !1140, i64 24, !1140, i64 32, !1140, i64 40}
!1226 = !DILocation(line: 88, column: 3, scope: !1178)
!1227 = !DILocation(line: 89, column: 3, scope: !1178)
!1228 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !12, file: !12, line: 51, type: !400, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1229)
!1229 = !{!1230}
!1230 = !DILocalVariable(name: "file", arg: 1, scope: !1228, file: !12, line: 51, type: !6)
!1231 = !DILocation(line: 0, scope: !1228)
!1232 = !DILocation(line: 53, column: 13, scope: !1228)
!1233 = !DILocation(line: 54, column: 1, scope: !1228)
!1234 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !12, file: !12, line: 88, type: !1235, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !92}
!1237 = !{!1238}
!1238 = !DILocalVariable(name: "ignore", arg: 1, scope: !1234, file: !12, line: 88, type: !92)
!1239 = !DILocation(line: 0, scope: !1234)
!1240 = !DILocation(line: 90, column: 16, scope: !1234)
!1241 = !{!1242, !1242, i64 0}
!1242 = !{!"_Bool", !1141, i64 0}
!1243 = !DILocation(line: 91, column: 1, scope: !1234)
!1244 = distinct !DISubprogram(name: "close_stdout", scope: !12, file: !12, line: 117, type: !316, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1245)
!1245 = !{!1246}
!1246 = !DILocalVariable(name: "write_error", scope: !1247, file: !12, line: 122, type: !6)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !12, line: 121, column: 5)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !12, line: 119, column: 7)
!1249 = !DILocation(line: 119, column: 21, scope: !1248)
!1250 = !DILocation(line: 119, column: 7, scope: !1248)
!1251 = !DILocation(line: 119, column: 29, scope: !1248)
!1252 = !DILocation(line: 120, column: 7, scope: !1248)
!1253 = !DILocation(line: 120, column: 12, scope: !1248)
!1254 = !{i8 0, i8 2}
!1255 = !DILocation(line: 120, column: 25, scope: !1248)
!1256 = !DILocation(line: 120, column: 28, scope: !1248)
!1257 = !DILocation(line: 120, column: 34, scope: !1248)
!1258 = !DILocation(line: 119, column: 7, scope: !1244)
!1259 = !DILocation(line: 122, column: 33, scope: !1247)
!1260 = !DILocation(line: 0, scope: !1247)
!1261 = !DILocation(line: 123, column: 11, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1247, file: !12, line: 123, column: 11)
!1263 = !DILocation(line: 0, scope: !1262)
!1264 = !DILocation(line: 123, column: 11, scope: !1247)
!1265 = !DILocation(line: 124, column: 36, scope: !1262)
!1266 = !DILocation(line: 124, column: 9, scope: !1262)
!1267 = !DILocation(line: 127, column: 9, scope: !1262)
!1268 = !DILocation(line: 129, column: 14, scope: !1247)
!1269 = !DILocation(line: 129, column: 7, scope: !1247)
!1270 = !DILocation(line: 134, column: 42, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1244, file: !12, line: 134, column: 7)
!1272 = !DILocation(line: 134, column: 28, scope: !1271)
!1273 = !DILocation(line: 134, column: 50, scope: !1271)
!1274 = !DILocation(line: 134, column: 7, scope: !1244)
!1275 = !DILocation(line: 135, column: 12, scope: !1271)
!1276 = !DILocation(line: 135, column: 5, scope: !1271)
!1277 = !DILocation(line: 136, column: 1, scope: !1244)
!1278 = distinct !DISubprogram(name: "parse_long_options", scope: !102, file: !102, line: 45, type: !1279, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !18, !418, !6, !6, !6, !419, null}
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290}
!1282 = !DILocalVariable(name: "argc", arg: 1, scope: !1278, file: !102, line: 45, type: !18)
!1283 = !DILocalVariable(name: "argv", arg: 2, scope: !1278, file: !102, line: 46, type: !418)
!1284 = !DILocalVariable(name: "command_name", arg: 3, scope: !1278, file: !102, line: 47, type: !6)
!1285 = !DILocalVariable(name: "package", arg: 4, scope: !1278, file: !102, line: 48, type: !6)
!1286 = !DILocalVariable(name: "version", arg: 5, scope: !1278, file: !102, line: 49, type: !6)
!1287 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1278, file: !102, line: 50, type: !419)
!1288 = !DILocalVariable(name: "c", scope: !1278, file: !102, line: 53, type: !18)
!1289 = !DILocalVariable(name: "saved_opterr", scope: !1278, file: !102, line: 54, type: !18)
!1290 = !DILocalVariable(name: "authors", scope: !1291, file: !102, line: 72, type: !1295)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !102, line: 71, column: 11)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 65, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !102, line: 63, column: 5)
!1294 = distinct !DILexicalBlock(scope: !1278, file: !102, line: 61, column: 7)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1297, line: 32, baseType: !1298)
!1297 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !102, line: 72, baseType: !1299)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 192, elements: !52)
!1300 = !DILocation(line: 0, scope: !1278)
!1301 = !DILocation(line: 56, column: 18, scope: !1278)
!1302 = !DILocation(line: 59, column: 10, scope: !1278)
!1303 = !DILocation(line: 61, column: 12, scope: !1294)
!1304 = !DILocation(line: 62, column: 7, scope: !1294)
!1305 = !DILocation(line: 62, column: 15, scope: !1294)
!1306 = !DILocation(line: 61, column: 7, scope: !1278)
!1307 = !DILocation(line: 67, column: 11, scope: !1292)
!1308 = !DILocation(line: 68, column: 11, scope: !1292)
!1309 = !DILocation(line: 72, column: 13, scope: !1291)
!1310 = !DILocation(line: 72, column: 21, scope: !1291)
!1311 = !DILocation(line: 73, column: 13, scope: !1291)
!1312 = !DILocation(line: 74, column: 29, scope: !1291)
!1313 = !DILocation(line: 74, column: 13, scope: !1291)
!1314 = !DILocation(line: 75, column: 13, scope: !1291)
!1315 = !DILocation(line: 85, column: 10, scope: !1278)
!1316 = !DILocation(line: 89, column: 10, scope: !1278)
!1317 = !DILocation(line: 90, column: 1, scope: !1278)
!1318 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !102, file: !102, line: 98, type: !416, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !101, retainedNodes: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1320 = !DILocalVariable(name: "argc", arg: 1, scope: !1318, file: !102, line: 98, type: !18)
!1321 = !DILocalVariable(name: "argv", arg: 2, scope: !1318, file: !102, line: 99, type: !418)
!1322 = !DILocalVariable(name: "command_name", arg: 3, scope: !1318, file: !102, line: 100, type: !6)
!1323 = !DILocalVariable(name: "package", arg: 4, scope: !1318, file: !102, line: 101, type: !6)
!1324 = !DILocalVariable(name: "version", arg: 5, scope: !1318, file: !102, line: 102, type: !6)
!1325 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1318, file: !102, line: 103, type: !92)
!1326 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1318, file: !102, line: 104, type: !419)
!1327 = !DILocalVariable(name: "c", scope: !1318, file: !102, line: 107, type: !18)
!1328 = !DILocalVariable(name: "saved_opterr", scope: !1318, file: !102, line: 108, type: !18)
!1329 = !DILocalVariable(name: "optstring", scope: !1318, file: !102, line: 113, type: !6)
!1330 = !DILocalVariable(name: "authors", scope: !1331, file: !102, line: 125, type: !1295)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !102, line: 124, column: 11)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !102, line: 118, column: 9)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !102, line: 116, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1318, file: !102, line: 115, column: 7)
!1335 = !DILocation(line: 0, scope: !1318)
!1336 = !DILocation(line: 108, column: 22, scope: !1318)
!1337 = !DILocation(line: 111, column: 10, scope: !1318)
!1338 = !DILocation(line: 113, column: 27, scope: !1318)
!1339 = !DILocation(line: 115, column: 12, scope: !1334)
!1340 = !DILocation(line: 115, column: 7, scope: !1318)
!1341 = !DILocation(line: 125, column: 13, scope: !1331)
!1342 = !DILocation(line: 125, column: 21, scope: !1331)
!1343 = !DILocation(line: 126, column: 13, scope: !1331)
!1344 = !DILocation(line: 127, column: 29, scope: !1331)
!1345 = !DILocation(line: 127, column: 13, scope: !1331)
!1346 = !DILocation(line: 128, column: 13, scope: !1331)
!1347 = !DILocation(line: 132, column: 26, scope: !1332)
!1348 = !DILocation(line: 133, column: 11, scope: !1332)
!1349 = !DILocation(line: 0, scope: !1332)
!1350 = !DILocation(line: 138, column: 10, scope: !1318)
!1351 = !DILocation(line: 139, column: 1, scope: !1318)
!1352 = distinct !DISubprogram(name: "set_program_name", scope: !170, file: !170, line: 39, type: !400, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1353)
!1353 = !{!1354, !1355, !1356}
!1354 = !DILocalVariable(name: "argv0", arg: 1, scope: !1352, file: !170, line: 39, type: !6)
!1355 = !DILocalVariable(name: "slash", scope: !1352, file: !170, line: 46, type: !6)
!1356 = !DILocalVariable(name: "base", scope: !1352, file: !170, line: 47, type: !6)
!1357 = !DILocation(line: 0, scope: !1352)
!1358 = !DILocation(line: 51, column: 13, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1352, file: !170, line: 51, column: 7)
!1360 = !DILocation(line: 51, column: 7, scope: !1352)
!1361 = !DILocation(line: 55, column: 14, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !170, line: 52, column: 5)
!1363 = !DILocation(line: 54, column: 7, scope: !1362)
!1364 = !DILocation(line: 56, column: 7, scope: !1362)
!1365 = !DILocation(line: 59, column: 11, scope: !1352)
!1366 = !DILocation(line: 60, column: 17, scope: !1352)
!1367 = !DILocation(line: 60, column: 11, scope: !1352)
!1368 = !DILocation(line: 61, column: 12, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1352, file: !170, line: 61, column: 7)
!1370 = !DILocation(line: 61, column: 20, scope: !1369)
!1371 = !DILocation(line: 61, column: 25, scope: !1369)
!1372 = !DILocation(line: 61, column: 42, scope: !1369)
!1373 = !DILocation(line: 61, column: 28, scope: !1369)
!1374 = !DILocation(line: 61, column: 61, scope: !1369)
!1375 = !DILocation(line: 61, column: 7, scope: !1352)
!1376 = !DILocation(line: 64, column: 11, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !170, line: 64, column: 11)
!1378 = distinct !DILexicalBlock(scope: !1369, file: !170, line: 62, column: 5)
!1379 = !DILocation(line: 64, column: 36, scope: !1377)
!1380 = !DILocation(line: 64, column: 11, scope: !1378)
!1381 = !DILocation(line: 66, column: 24, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !170, line: 65, column: 9)
!1383 = !DILocation(line: 70, column: 41, scope: !1382)
!1384 = !DILocation(line: 72, column: 9, scope: !1382)
!1385 = !DILocation(line: 84, column: 16, scope: !1352)
!1386 = !DILocation(line: 90, column: 27, scope: !1352)
!1387 = !DILocation(line: 92, column: 1, scope: !1352)
!1388 = distinct !DISubprogram(name: "clone_quoting_options", scope: !212, file: !212, line: 122, type: !1389, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1392)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!1391, !1391}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!1392 = !{!1393, !1394, !1395}
!1393 = !DILocalVariable(name: "o", arg: 1, scope: !1388, file: !212, line: 122, type: !1391)
!1394 = !DILocalVariable(name: "e", scope: !1388, file: !212, line: 124, type: !18)
!1395 = !DILocalVariable(name: "p", scope: !1388, file: !212, line: 125, type: !1391)
!1396 = !DILocation(line: 0, scope: !1388)
!1397 = !DILocation(line: 124, column: 11, scope: !1388)
!1398 = !DILocation(line: 125, column: 40, scope: !1388)
!1399 = !DILocation(line: 125, column: 31, scope: !1388)
!1400 = !DILocation(line: 127, column: 9, scope: !1388)
!1401 = !DILocation(line: 128, column: 3, scope: !1388)
!1402 = distinct !DISubprogram(name: "get_quoting_style", scope: !212, file: !212, line: 133, type: !1403, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!214, !258}
!1405 = !{!1406}
!1406 = !DILocalVariable(name: "o", arg: 1, scope: !1402, file: !212, line: 133, type: !258)
!1407 = !DILocation(line: 0, scope: !1402)
!1408 = !DILocation(line: 135, column: 11, scope: !1402)
!1409 = !DILocation(line: 135, column: 46, scope: !1402)
!1410 = !{!1411, !1141, i64 0}
!1411 = !{!"quoting_options", !1141, i64 0, !1201, i64 4, !1141, i64 8, !1140, i64 40, !1140, i64 48}
!1412 = !DILocation(line: 135, column: 3, scope: !1402)
!1413 = distinct !DISubprogram(name: "set_quoting_style", scope: !212, file: !212, line: 141, type: !1414, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1416)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !1391, !214}
!1416 = !{!1417, !1418}
!1417 = !DILocalVariable(name: "o", arg: 1, scope: !1413, file: !212, line: 141, type: !1391)
!1418 = !DILocalVariable(name: "s", arg: 2, scope: !1413, file: !212, line: 141, type: !214)
!1419 = !DILocation(line: 0, scope: !1413)
!1420 = !DILocation(line: 143, column: 4, scope: !1413)
!1421 = !DILocation(line: 143, column: 39, scope: !1413)
!1422 = !DILocation(line: 143, column: 45, scope: !1413)
!1423 = !DILocation(line: 144, column: 1, scope: !1413)
!1424 = distinct !DISubprogram(name: "set_char_quoting", scope: !212, file: !212, line: 152, type: !1425, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!18, !1391, !8, !18}
!1427 = !{!1428, !1429, !1430, !1431, !1433, !1435, !1436}
!1428 = !DILocalVariable(name: "o", arg: 1, scope: !1424, file: !212, line: 152, type: !1391)
!1429 = !DILocalVariable(name: "c", arg: 2, scope: !1424, file: !212, line: 152, type: !8)
!1430 = !DILocalVariable(name: "i", arg: 3, scope: !1424, file: !212, line: 152, type: !18)
!1431 = !DILocalVariable(name: "uc", scope: !1424, file: !212, line: 154, type: !1432)
!1432 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1433 = !DILocalVariable(name: "p", scope: !1424, file: !212, line: 155, type: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1435 = !DILocalVariable(name: "shift", scope: !1424, file: !212, line: 157, type: !18)
!1436 = !DILocalVariable(name: "r", scope: !1424, file: !212, line: 158, type: !18)
!1437 = !DILocation(line: 0, scope: !1424)
!1438 = !DILocation(line: 156, column: 6, scope: !1424)
!1439 = !DILocation(line: 156, column: 62, scope: !1424)
!1440 = !DILocation(line: 156, column: 57, scope: !1424)
!1441 = !DILocation(line: 157, column: 15, scope: !1424)
!1442 = !DILocation(line: 158, column: 12, scope: !1424)
!1443 = !DILocation(line: 158, column: 15, scope: !1424)
!1444 = !DILocation(line: 158, column: 25, scope: !1424)
!1445 = !DILocation(line: 159, column: 13, scope: !1424)
!1446 = !DILocation(line: 159, column: 18, scope: !1424)
!1447 = !DILocation(line: 159, column: 23, scope: !1424)
!1448 = !DILocation(line: 159, column: 6, scope: !1424)
!1449 = !DILocation(line: 160, column: 3, scope: !1424)
!1450 = distinct !DISubprogram(name: "set_quoting_flags", scope: !212, file: !212, line: 168, type: !1451, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1453)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!18, !1391, !18}
!1453 = !{!1454, !1455, !1456}
!1454 = !DILocalVariable(name: "o", arg: 1, scope: !1450, file: !212, line: 168, type: !1391)
!1455 = !DILocalVariable(name: "i", arg: 2, scope: !1450, file: !212, line: 168, type: !18)
!1456 = !DILocalVariable(name: "r", scope: !1450, file: !212, line: 170, type: !18)
!1457 = !DILocation(line: 0, scope: !1450)
!1458 = !DILocation(line: 171, column: 8, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1450, file: !212, line: 171, column: 7)
!1460 = !DILocation(line: 171, column: 7, scope: !1450)
!1461 = !DILocation(line: 173, column: 10, scope: !1450)
!1462 = !{!1411, !1201, i64 4}
!1463 = !DILocation(line: 174, column: 12, scope: !1450)
!1464 = !DILocation(line: 175, column: 3, scope: !1450)
!1465 = distinct !DISubprogram(name: "set_custom_quoting", scope: !212, file: !212, line: 179, type: !1466, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !1391, !6, !6}
!1468 = !{!1469, !1470, !1471}
!1469 = !DILocalVariable(name: "o", arg: 1, scope: !1465, file: !212, line: 179, type: !1391)
!1470 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1465, file: !212, line: 180, type: !6)
!1471 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1465, file: !212, line: 180, type: !6)
!1472 = !DILocation(line: 0, scope: !1465)
!1473 = !DILocation(line: 182, column: 8, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1465, file: !212, line: 182, column: 7)
!1475 = !DILocation(line: 182, column: 7, scope: !1465)
!1476 = !DILocation(line: 184, column: 6, scope: !1465)
!1477 = !DILocation(line: 184, column: 12, scope: !1465)
!1478 = !DILocation(line: 185, column: 8, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1465, file: !212, line: 185, column: 7)
!1480 = !DILocation(line: 185, column: 23, scope: !1479)
!1481 = !DILocation(line: 185, column: 19, scope: !1479)
!1482 = !DILocation(line: 186, column: 5, scope: !1479)
!1483 = !DILocation(line: 187, column: 6, scope: !1465)
!1484 = !DILocation(line: 187, column: 17, scope: !1465)
!1485 = !{!1411, !1140, i64 40}
!1486 = !DILocation(line: 188, column: 6, scope: !1465)
!1487 = !DILocation(line: 188, column: 18, scope: !1465)
!1488 = !{!1411, !1140, i64 48}
!1489 = !DILocation(line: 189, column: 1, scope: !1465)
!1490 = distinct !DISubprogram(name: "quotearg_buffer", scope: !212, file: !212, line: 784, type: !1491, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!69, !25, !69, !6, !69, !258}
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1494 = !DILocalVariable(name: "buffer", arg: 1, scope: !1490, file: !212, line: 784, type: !25)
!1495 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1490, file: !212, line: 784, type: !69)
!1496 = !DILocalVariable(name: "arg", arg: 3, scope: !1490, file: !212, line: 785, type: !6)
!1497 = !DILocalVariable(name: "argsize", arg: 4, scope: !1490, file: !212, line: 785, type: !69)
!1498 = !DILocalVariable(name: "o", arg: 5, scope: !1490, file: !212, line: 786, type: !258)
!1499 = !DILocalVariable(name: "p", scope: !1490, file: !212, line: 788, type: !258)
!1500 = !DILocalVariable(name: "e", scope: !1490, file: !212, line: 789, type: !18)
!1501 = !DILocalVariable(name: "r", scope: !1490, file: !212, line: 790, type: !69)
!1502 = !DILocation(line: 0, scope: !1490)
!1503 = !DILocation(line: 788, column: 37, scope: !1490)
!1504 = !DILocation(line: 789, column: 11, scope: !1490)
!1505 = !DILocation(line: 791, column: 43, scope: !1490)
!1506 = !DILocation(line: 791, column: 53, scope: !1490)
!1507 = !DILocation(line: 791, column: 60, scope: !1490)
!1508 = !DILocation(line: 792, column: 43, scope: !1490)
!1509 = !DILocation(line: 792, column: 58, scope: !1490)
!1510 = !DILocation(line: 790, column: 14, scope: !1490)
!1511 = !DILocation(line: 793, column: 9, scope: !1490)
!1512 = !DILocation(line: 794, column: 3, scope: !1490)
!1513 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !212, file: !212, line: 256, type: !1514, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1518)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!69, !25, !69, !6, !69, !214, !18, !1516, !6, !6}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1543, !1544, !1545, !1546, !1547, !1550, !1551, !1557, !1560, !1561, !1568, !1571, !1572, !1573, !1574, !1575, !1576}
!1519 = !DILocalVariable(name: "buffer", arg: 1, scope: !1513, file: !212, line: 256, type: !25)
!1520 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1513, file: !212, line: 256, type: !69)
!1521 = !DILocalVariable(name: "arg", arg: 3, scope: !1513, file: !212, line: 257, type: !6)
!1522 = !DILocalVariable(name: "argsize", arg: 4, scope: !1513, file: !212, line: 257, type: !69)
!1523 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1513, file: !212, line: 258, type: !214)
!1524 = !DILocalVariable(name: "flags", arg: 6, scope: !1513, file: !212, line: 258, type: !18)
!1525 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1513, file: !212, line: 259, type: !1516)
!1526 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1513, file: !212, line: 260, type: !6)
!1527 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1513, file: !212, line: 261, type: !6)
!1528 = !DILocalVariable(name: "i", scope: !1513, file: !212, line: 263, type: !69)
!1529 = !DILocalVariable(name: "len", scope: !1513, file: !212, line: 264, type: !69)
!1530 = !DILocalVariable(name: "orig_buffersize", scope: !1513, file: !212, line: 265, type: !69)
!1531 = !DILocalVariable(name: "quote_string", scope: !1513, file: !212, line: 266, type: !6)
!1532 = !DILocalVariable(name: "quote_string_len", scope: !1513, file: !212, line: 267, type: !69)
!1533 = !DILocalVariable(name: "backslash_escapes", scope: !1513, file: !212, line: 268, type: !92)
!1534 = !DILocalVariable(name: "unibyte_locale", scope: !1513, file: !212, line: 269, type: !92)
!1535 = !DILocalVariable(name: "elide_outer_quotes", scope: !1513, file: !212, line: 270, type: !92)
!1536 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1513, file: !212, line: 271, type: !92)
!1537 = !DILocalVariable(name: "encountered_single_quote", scope: !1513, file: !212, line: 272, type: !92)
!1538 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1513, file: !212, line: 273, type: !92)
!1539 = !DILocalVariable(name: "c", scope: !1540, file: !212, line: 402, type: !1432)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !212, line: 401, column: 5)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !212, line: 400, column: 3)
!1542 = distinct !DILexicalBlock(scope: !1513, file: !212, line: 400, column: 3)
!1543 = !DILocalVariable(name: "esc", scope: !1540, file: !212, line: 403, type: !1432)
!1544 = !DILocalVariable(name: "is_right_quote", scope: !1540, file: !212, line: 404, type: !92)
!1545 = !DILocalVariable(name: "escaping", scope: !1540, file: !212, line: 405, type: !92)
!1546 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1540, file: !212, line: 406, type: !92)
!1547 = !DILocalVariable(name: "m", scope: !1548, file: !212, line: 610, type: !69)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 608, column: 11)
!1549 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 426, column: 9)
!1550 = !DILocalVariable(name: "printable", scope: !1548, file: !212, line: 612, type: !92)
!1551 = !DILocalVariable(name: "mbstate", scope: !1552, file: !212, line: 621, type: !1554)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !212, line: 620, column: 15)
!1553 = distinct !DILexicalBlock(scope: !1548, file: !212, line: 614, column: 17)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1555, line: 6, baseType: !1556)
!1555 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !282)
!1557 = !DILocalVariable(name: "w", scope: !1558, file: !212, line: 631, type: !1559)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !212, line: 630, column: 19)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !18)
!1560 = !DILocalVariable(name: "bytes", scope: !1558, file: !212, line: 632, type: !69)
!1561 = !DILocalVariable(name: "j", scope: !1562, file: !212, line: 657, type: !69)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !212, line: 656, column: 27)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !212, line: 654, column: 29)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !212, line: 649, column: 23)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !212, line: 641, column: 30)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !212, line: 636, column: 30)
!1567 = distinct !DILexicalBlock(scope: !1558, file: !212, line: 634, column: 25)
!1568 = !DILocalVariable(name: "ilim", scope: !1569, file: !212, line: 684, type: !69)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !212, line: 681, column: 15)
!1570 = distinct !DILexicalBlock(scope: !1548, file: !212, line: 680, column: 17)
!1571 = !DILabel(scope: !1513, name: "process_input", file: !212, line: 314)
!1572 = !DILabel(scope: !1549, name: "c_and_shell_escape", file: !212, line: 512)
!1573 = !DILabel(scope: !1549, name: "c_escape", file: !212, line: 517)
!1574 = !DILabel(scope: !1540, name: "store_escape", file: !212, line: 719)
!1575 = !DILabel(scope: !1540, name: "store_c", file: !212, line: 722)
!1576 = !DILabel(scope: !1513, name: "force_outer_quoting_style", file: !212, line: 763)
!1577 = !DILocation(line: 0, scope: !1513)
!1578 = !DILocation(line: 269, column: 25, scope: !1513)
!1579 = !DILocation(line: 269, column: 36, scope: !1513)
!1580 = !DILocation(line: 270, column: 8, scope: !1513)
!1581 = !DILocation(line: 0, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 526, column: 15)
!1583 = !DILocation(line: 0, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !212, line: 462, column: 19)
!1585 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 455, column: 13)
!1586 = !DILocation(line: 0, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !212, line: 449, column: 20)
!1588 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 428, column: 15)
!1589 = !DILocation(line: 0, scope: !1552)
!1590 = !DILocation(line: 0, scope: !1558)
!1591 = !DILocation(line: 0, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 712, column: 11)
!1593 = !DILocation(line: 273, column: 3, scope: !1513)
!1594 = !DILocation(line: 265, column: 10, scope: !1513)
!1595 = !DILocation(line: 266, column: 15, scope: !1513)
!1596 = !DILocation(line: 267, column: 10, scope: !1513)
!1597 = !DILocation(line: 268, column: 8, scope: !1513)
!1598 = !DILocation(line: 271, column: 8, scope: !1513)
!1599 = !DILocation(line: 272, column: 8, scope: !1513)
!1600 = !DILocation(line: 273, column: 8, scope: !1513)
!1601 = !DILocation(line: 314, column: 2, scope: !1513)
!1602 = !DILocation(line: 316, column: 3, scope: !1513)
!1603 = !DILocation(line: 323, column: 11, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1513, file: !212, line: 317, column: 5)
!1605 = !DILocation(line: 323, column: 12, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1604, file: !212, line: 323, column: 11)
!1607 = !DILocation(line: 324, column: 9, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !212, line: 324, column: 9)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !212, line: 324, column: 9)
!1610 = !DILocation(line: 324, column: 9, scope: !1609)
!1611 = !{!1141, !1141, i64 0}
!1612 = !DILocation(line: 362, column: 26, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !212, line: 340, column: 11)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !212, line: 339, column: 13)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !212, line: 338, column: 7)
!1616 = !DILocation(line: 363, column: 27, scope: !1613)
!1617 = !DILocation(line: 364, column: 11, scope: !1613)
!1618 = !DILocation(line: 365, column: 14, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !212, line: 365, column: 13)
!1620 = !DILocation(line: 365, column: 13, scope: !1615)
!1621 = !DILocation(line: 366, column: 43, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !212, line: 366, column: 11)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !212, line: 366, column: 11)
!1624 = !DILocation(line: 366, column: 11, scope: !1623)
!1625 = !DILocation(line: 367, column: 13, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !212, line: 367, column: 13)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !212, line: 367, column: 13)
!1628 = !DILocation(line: 367, column: 13, scope: !1627)
!1629 = !DILocation(line: 366, column: 70, scope: !1622)
!1630 = distinct !{!1630, !1624, !1631}
!1631 = !DILocation(line: 367, column: 13, scope: !1623)
!1632 = !DILocation(line: 264, column: 10, scope: !1513)
!1633 = !DILocation(line: 370, column: 28, scope: !1615)
!1634 = !DILocation(line: 372, column: 7, scope: !1604)
!1635 = !DILocation(line: 376, column: 7, scope: !1604)
!1636 = !DILocation(line: 379, column: 7, scope: !1604)
!1637 = !DILocation(line: 381, column: 12, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1604, file: !212, line: 381, column: 11)
!1639 = !DILocation(line: 381, column: 11, scope: !1604)
!1640 = !DILocation(line: 386, column: 12, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1604, file: !212, line: 386, column: 11)
!1642 = !DILocation(line: 386, column: 11, scope: !1604)
!1643 = !DILocation(line: 387, column: 9, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !212, line: 387, column: 9)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !212, line: 387, column: 9)
!1646 = !DILocation(line: 387, column: 9, scope: !1645)
!1647 = !DILocation(line: 394, column: 7, scope: !1604)
!1648 = !DILocation(line: 397, column: 7, scope: !1604)
!1649 = !DILocation(line: 0, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 408, column: 11)
!1651 = !DILocation(line: 0, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !212, line: 419, column: 15)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !212, line: 418, column: 9)
!1654 = !DILocation(line: 0, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 556, column: 15)
!1656 = !DILocation(line: 0, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 548, column: 15)
!1658 = !DILocation(line: 0, scope: !1563)
!1659 = !DILocation(line: 0, scope: !1570)
!1660 = !DILocation(line: 0, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 509, column: 15)
!1662 = !DILocation(line: 400, column: 8, scope: !1542)
!1663 = !DILocation(line: 0, scope: !1542)
!1664 = !DILocation(line: 400, column: 27, scope: !1541)
!1665 = !DILocation(line: 400, column: 19, scope: !1541)
!1666 = !DILocation(line: 400, column: 41, scope: !1541)
!1667 = !DILocation(line: 400, column: 48, scope: !1541)
!1668 = !DILocation(line: 400, column: 3, scope: !1542)
!1669 = !DILocation(line: 400, column: 60, scope: !1541)
!1670 = !DILocation(line: 0, scope: !1540)
!1671 = !DILocation(line: 409, column: 11, scope: !1650)
!1672 = !DILocation(line: 411, column: 17, scope: !1650)
!1673 = !DILocation(line: 412, column: 39, scope: !1650)
!1674 = !DILocation(line: 416, column: 32, scope: !1650)
!1675 = !DILocation(line: 412, column: 19, scope: !1650)
!1676 = !DILocation(line: 412, column: 15, scope: !1650)
!1677 = !DILocation(line: 417, column: 11, scope: !1650)
!1678 = !DILocation(line: 417, column: 26, scope: !1650)
!1679 = !DILocation(line: 417, column: 14, scope: !1650)
!1680 = !DILocation(line: 417, column: 63, scope: !1650)
!1681 = !DILocation(line: 408, column: 11, scope: !1540)
!1682 = !DILocation(line: 424, column: 11, scope: !1540)
!1683 = !DILocation(line: 425, column: 7, scope: !1540)
!1684 = !DILocation(line: 428, column: 15, scope: !1549)
!1685 = !DILocation(line: 430, column: 15, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !212, line: 430, column: 15)
!1687 = distinct !DILexicalBlock(scope: !1588, file: !212, line: 429, column: 13)
!1688 = !DILocation(line: 430, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !212, line: 430, column: 15)
!1690 = !DILocation(line: 430, column: 15, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !212, line: 430, column: 15)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !212, line: 430, column: 15)
!1693 = distinct !DILexicalBlock(scope: !1689, file: !212, line: 430, column: 15)
!1694 = !DILocation(line: 430, column: 15, scope: !1692)
!1695 = !DILocation(line: 430, column: 15, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !212, line: 430, column: 15)
!1697 = distinct !DILexicalBlock(scope: !1693, file: !212, line: 430, column: 15)
!1698 = !DILocation(line: 430, column: 15, scope: !1697)
!1699 = !DILocation(line: 430, column: 15, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !212, line: 430, column: 15)
!1701 = distinct !DILexicalBlock(scope: !1693, file: !212, line: 430, column: 15)
!1702 = !DILocation(line: 430, column: 15, scope: !1701)
!1703 = !DILocation(line: 430, column: 15, scope: !1693)
!1704 = !DILocation(line: 430, column: 15, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !212, line: 430, column: 15)
!1706 = distinct !DILexicalBlock(scope: !1686, file: !212, line: 430, column: 15)
!1707 = !DILocation(line: 430, column: 15, scope: !1706)
!1708 = !DILocation(line: 438, column: 19, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1687, file: !212, line: 437, column: 19)
!1710 = !DILocation(line: 438, column: 24, scope: !1709)
!1711 = !DILocation(line: 438, column: 28, scope: !1709)
!1712 = !DILocation(line: 438, column: 38, scope: !1709)
!1713 = !DILocation(line: 438, column: 48, scope: !1709)
!1714 = !DILocation(line: 438, column: 59, scope: !1709)
!1715 = !DILocation(line: 440, column: 19, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !212, line: 440, column: 19)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !212, line: 440, column: 19)
!1718 = distinct !DILexicalBlock(scope: !1709, file: !212, line: 439, column: 17)
!1719 = !DILocation(line: 440, column: 19, scope: !1717)
!1720 = !DILocation(line: 441, column: 19, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !212, line: 441, column: 19)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !212, line: 441, column: 19)
!1723 = !DILocation(line: 441, column: 19, scope: !1722)
!1724 = !DILocation(line: 442, column: 17, scope: !1718)
!1725 = !DILocation(line: 449, column: 20, scope: !1588)
!1726 = !DILocation(line: 454, column: 11, scope: !1549)
!1727 = !DILocation(line: 457, column: 19, scope: !1585)
!1728 = !DILocation(line: 463, column: 19, scope: !1584)
!1729 = !DILocation(line: 463, column: 24, scope: !1584)
!1730 = !DILocation(line: 463, column: 28, scope: !1584)
!1731 = !DILocation(line: 463, column: 38, scope: !1584)
!1732 = !DILocation(line: 463, column: 47, scope: !1584)
!1733 = !DILocation(line: 463, column: 41, scope: !1584)
!1734 = !DILocation(line: 463, column: 52, scope: !1584)
!1735 = !DILocation(line: 462, column: 19, scope: !1585)
!1736 = !DILocation(line: 464, column: 25, scope: !1584)
!1737 = !DILocation(line: 464, column: 17, scope: !1584)
!1738 = !DILocation(line: 471, column: 25, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1584, file: !212, line: 465, column: 19)
!1740 = !DILocation(line: 475, column: 21, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !212, line: 475, column: 21)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !212, line: 475, column: 21)
!1743 = !DILocation(line: 475, column: 21, scope: !1742)
!1744 = !DILocation(line: 476, column: 21, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !212, line: 476, column: 21)
!1746 = distinct !DILexicalBlock(scope: !1739, file: !212, line: 476, column: 21)
!1747 = !DILocation(line: 476, column: 21, scope: !1746)
!1748 = !DILocation(line: 477, column: 21, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !212, line: 477, column: 21)
!1750 = distinct !DILexicalBlock(scope: !1739, file: !212, line: 477, column: 21)
!1751 = !DILocation(line: 477, column: 21, scope: !1750)
!1752 = !DILocation(line: 478, column: 21, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !212, line: 478, column: 21)
!1754 = distinct !DILexicalBlock(scope: !1739, file: !212, line: 478, column: 21)
!1755 = !DILocation(line: 478, column: 21, scope: !1754)
!1756 = !DILocation(line: 479, column: 21, scope: !1739)
!1757 = !DILocation(line: 492, column: 31, scope: !1549)
!1758 = !DILocation(line: 493, column: 31, scope: !1549)
!1759 = !DILocation(line: 495, column: 31, scope: !1549)
!1760 = !DILocation(line: 496, column: 31, scope: !1549)
!1761 = !DILocation(line: 497, column: 31, scope: !1549)
!1762 = !DILocation(line: 500, column: 15, scope: !1549)
!1763 = !DILocation(line: 502, column: 19, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !212, line: 501, column: 13)
!1765 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 500, column: 15)
!1766 = !DILocation(line: 509, column: 33, scope: !1661)
!1767 = !DILocation(line: 0, scope: !1549)
!1768 = !DILocation(line: 512, column: 9, scope: !1549)
!1769 = !DILocation(line: 514, column: 15, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 513, column: 15)
!1771 = !DILocation(line: 517, column: 9, scope: !1549)
!1772 = !DILocation(line: 518, column: 15, scope: !1549)
!1773 = !DILocation(line: 526, column: 15, scope: !1549)
!1774 = !DILocation(line: 526, column: 40, scope: !1582)
!1775 = !DILocation(line: 526, column: 47, scope: !1582)
!1776 = !DILocation(line: 526, column: 18, scope: !1582)
!1777 = !DILocation(line: 530, column: 17, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1549, file: !212, line: 530, column: 15)
!1779 = !DILocation(line: 530, column: 15, scope: !1549)
!1780 = !DILocation(line: 535, column: 11, scope: !1549)
!1781 = !DILocation(line: 549, column: 15, scope: !1657)
!1782 = !DILocation(line: 556, column: 15, scope: !1549)
!1783 = !DILocation(line: 558, column: 19, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1655, file: !212, line: 557, column: 13)
!1785 = !DILocation(line: 561, column: 19, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1784, file: !212, line: 561, column: 19)
!1787 = !DILocation(line: 561, column: 35, scope: !1786)
!1788 = !DILocation(line: 561, column: 30, scope: !1786)
!1789 = !DILocation(line: 570, column: 15, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !212, line: 570, column: 15)
!1791 = distinct !DILexicalBlock(scope: !1784, file: !212, line: 570, column: 15)
!1792 = !DILocation(line: 570, column: 15, scope: !1791)
!1793 = !DILocation(line: 571, column: 15, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !212, line: 571, column: 15)
!1795 = distinct !DILexicalBlock(scope: !1784, file: !212, line: 571, column: 15)
!1796 = !DILocation(line: 571, column: 15, scope: !1795)
!1797 = !DILocation(line: 572, column: 15, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !212, line: 572, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1784, file: !212, line: 572, column: 15)
!1800 = !DILocation(line: 572, column: 15, scope: !1799)
!1801 = !DILocation(line: 574, column: 13, scope: !1784)
!1802 = !DILocation(line: 614, column: 17, scope: !1548)
!1803 = !DILocation(line: 0, scope: !1548)
!1804 = !DILocation(line: 617, column: 29, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1553, file: !212, line: 615, column: 15)
!1806 = !{!1807, !1807, i64 0}
!1807 = !{!"short", !1141, i64 0}
!1808 = !DILocation(line: 617, column: 27, scope: !1805)
!1809 = !DILocation(line: 618, column: 15, scope: !1805)
!1810 = !DILocation(line: 621, column: 17, scope: !1552)
!1811 = !DILocation(line: 621, column: 27, scope: !1552)
!1812 = !DILocalVariable(name: "__dest", arg: 1, scope: !1813, file: !1814, line: 59, type: !67)
!1813 = distinct !DISubprogram(name: "memset", scope: !1814, file: !1814, line: 59, type: !1815, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !1817)
!1814 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!67, !67, !18, !69}
!1817 = !{!1812, !1818, !1819}
!1818 = !DILocalVariable(name: "__ch", arg: 2, scope: !1813, file: !1814, line: 59, type: !18)
!1819 = !DILocalVariable(name: "__len", arg: 3, scope: !1813, file: !1814, line: 59, type: !69)
!1820 = !DILocation(line: 0, scope: !1813, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 622, column: 17, scope: !1552)
!1822 = !DILocation(line: 71, column: 10, scope: !1813, inlinedAt: !1821)
!1823 = !DILocation(line: 626, column: 29, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1552, file: !212, line: 626, column: 21)
!1825 = !DILocation(line: 626, column: 21, scope: !1552)
!1826 = !DILocation(line: 627, column: 29, scope: !1824)
!1827 = !DILocation(line: 627, column: 19, scope: !1824)
!1828 = !DILocation(line: 629, column: 17, scope: !1552)
!1829 = !DILocation(line: 624, column: 19, scope: !1552)
!1830 = !DILocation(line: 625, column: 27, scope: !1552)
!1831 = !DILocation(line: 631, column: 21, scope: !1558)
!1832 = !DILocation(line: 632, column: 56, scope: !1558)
!1833 = !DILocation(line: 632, column: 50, scope: !1558)
!1834 = !DILocation(line: 633, column: 53, scope: !1558)
!1835 = !DILocation(line: 632, column: 36, scope: !1558)
!1836 = !DILocation(line: 634, column: 25, scope: !1558)
!1837 = !DILocation(line: 644, column: 38, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1565, file: !212, line: 642, column: 23)
!1839 = !DILocation(line: 644, column: 48, scope: !1838)
!1840 = !DILocation(line: 644, column: 25, scope: !1838)
!1841 = !DILocation(line: 644, column: 51, scope: !1838)
!1842 = !DILocation(line: 645, column: 28, scope: !1838)
!1843 = !DILocation(line: 644, column: 34, scope: !1838)
!1844 = distinct !{!1844, !1840, !1842}
!1845 = !DILocation(line: 658, column: 43, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !212, line: 658, column: 29)
!1847 = distinct !DILexicalBlock(scope: !1562, file: !212, line: 658, column: 29)
!1848 = !DILocation(line: 655, column: 29, scope: !1563)
!1849 = !DILocation(line: 0, scope: !1562)
!1850 = !DILocation(line: 659, column: 49, scope: !1846)
!1851 = !DILocation(line: 659, column: 39, scope: !1846)
!1852 = !DILocation(line: 659, column: 31, scope: !1846)
!1853 = !DILocation(line: 658, column: 53, scope: !1846)
!1854 = !DILocation(line: 658, column: 29, scope: !1847)
!1855 = distinct !{!1855, !1854, !1856}
!1856 = !DILocation(line: 667, column: 33, scope: !1847)
!1857 = !DILocation(line: 674, column: 19, scope: !1552)
!1858 = !DILocation(line: 670, column: 41, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1564, file: !212, line: 670, column: 29)
!1860 = !DILocation(line: 670, column: 31, scope: !1859)
!1861 = !DILocation(line: 670, column: 29, scope: !1564)
!1862 = !DILocation(line: 672, column: 27, scope: !1564)
!1863 = !DILocation(line: 675, column: 26, scope: !1552)
!1864 = !DILocation(line: 675, column: 24, scope: !1552)
!1865 = !DILocation(line: 674, column: 19, scope: !1558)
!1866 = distinct !{!1866, !1828, !1867}
!1867 = !DILocation(line: 675, column: 44, scope: !1552)
!1868 = !DILocation(line: 676, column: 15, scope: !1553)
!1869 = !DILocation(line: 0, scope: !1553)
!1870 = !DILocation(line: 678, column: 40, scope: !1548)
!1871 = !DILocation(line: 680, column: 19, scope: !1570)
!1872 = !DILocation(line: 680, column: 45, scope: !1570)
!1873 = !DILocation(line: 680, column: 23, scope: !1570)
!1874 = !DILocation(line: 684, column: 33, scope: !1569)
!1875 = !DILocation(line: 0, scope: !1569)
!1876 = !DILocation(line: 686, column: 17, scope: !1569)
!1877 = !DILocation(line: 405, column: 12, scope: !1540)
!1878 = !DILocation(line: 688, column: 43, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !212, line: 688, column: 25)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !212, line: 687, column: 19)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !212, line: 686, column: 17)
!1882 = distinct !DILexicalBlock(scope: !1569, file: !212, line: 686, column: 17)
!1883 = !DILocation(line: 690, column: 25, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !212, line: 690, column: 25)
!1885 = distinct !DILexicalBlock(scope: !1879, file: !212, line: 689, column: 23)
!1886 = !DILocation(line: 690, column: 25, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !212, line: 690, column: 25)
!1888 = !DILocation(line: 690, column: 25, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !212, line: 690, column: 25)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !212, line: 690, column: 25)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !212, line: 690, column: 25)
!1892 = !DILocation(line: 690, column: 25, scope: !1890)
!1893 = !DILocation(line: 690, column: 25, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !212, line: 690, column: 25)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !212, line: 690, column: 25)
!1896 = !DILocation(line: 690, column: 25, scope: !1895)
!1897 = !DILocation(line: 690, column: 25, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !212, line: 690, column: 25)
!1899 = distinct !DILexicalBlock(scope: !1891, file: !212, line: 690, column: 25)
!1900 = !DILocation(line: 690, column: 25, scope: !1899)
!1901 = !DILocation(line: 690, column: 25, scope: !1891)
!1902 = !DILocation(line: 690, column: 25, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !212, line: 690, column: 25)
!1904 = distinct !DILexicalBlock(scope: !1884, file: !212, line: 690, column: 25)
!1905 = !DILocation(line: 690, column: 25, scope: !1904)
!1906 = !DILocation(line: 691, column: 25, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !212, line: 691, column: 25)
!1908 = distinct !DILexicalBlock(scope: !1885, file: !212, line: 691, column: 25)
!1909 = !DILocation(line: 691, column: 25, scope: !1908)
!1910 = !DILocation(line: 692, column: 25, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !212, line: 692, column: 25)
!1912 = distinct !DILexicalBlock(scope: !1885, file: !212, line: 692, column: 25)
!1913 = !DILocation(line: 692, column: 25, scope: !1912)
!1914 = !DILocation(line: 693, column: 38, scope: !1885)
!1915 = !DILocation(line: 693, column: 33, scope: !1885)
!1916 = !DILocation(line: 694, column: 23, scope: !1885)
!1917 = !DILocation(line: 695, column: 30, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1879, file: !212, line: 695, column: 30)
!1919 = !DILocation(line: 695, column: 30, scope: !1879)
!1920 = !DILocation(line: 697, column: 25, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !212, line: 697, column: 25)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !212, line: 697, column: 25)
!1923 = distinct !DILexicalBlock(scope: !1918, file: !212, line: 696, column: 23)
!1924 = !DILocation(line: 697, column: 25, scope: !1922)
!1925 = !DILocation(line: 699, column: 23, scope: !1923)
!1926 = !DILocation(line: 700, column: 35, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1880, file: !212, line: 700, column: 25)
!1928 = !DILocation(line: 700, column: 30, scope: !1927)
!1929 = !DILocation(line: 700, column: 25, scope: !1880)
!1930 = !DILocation(line: 702, column: 21, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !212, line: 702, column: 21)
!1932 = distinct !DILexicalBlock(scope: !1880, file: !212, line: 702, column: 21)
!1933 = !DILocation(line: 702, column: 21, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !212, line: 702, column: 21)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !212, line: 702, column: 21)
!1936 = distinct !DILexicalBlock(scope: !1931, file: !212, line: 702, column: 21)
!1937 = !DILocation(line: 702, column: 21, scope: !1935)
!1938 = !DILocation(line: 702, column: 21, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !212, line: 702, column: 21)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !212, line: 702, column: 21)
!1941 = !DILocation(line: 702, column: 21, scope: !1940)
!1942 = !DILocation(line: 702, column: 21, scope: !1936)
!1943 = !DILocation(line: 0, scope: !1880)
!1944 = !DILocation(line: 703, column: 21, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !212, line: 703, column: 21)
!1946 = distinct !DILexicalBlock(scope: !1880, file: !212, line: 703, column: 21)
!1947 = !DILocation(line: 703, column: 21, scope: !1946)
!1948 = !DILocation(line: 704, column: 25, scope: !1880)
!1949 = !DILocation(line: 686, column: 17, scope: !1881)
!1950 = distinct !{!1950, !1951, !1952}
!1951 = !DILocation(line: 686, column: 17, scope: !1882)
!1952 = !DILocation(line: 705, column: 19, scope: !1882)
!1953 = !DILocation(line: 416, column: 30, scope: !1650)
!1954 = !DILocation(line: 712, column: 34, scope: !1592)
!1955 = !DILocation(line: 715, column: 35, scope: !1592)
!1956 = !DILocation(line: 715, column: 17, scope: !1592)
!1957 = !DILocation(line: 715, column: 47, scope: !1592)
!1958 = !DILocation(line: 715, column: 65, scope: !1592)
!1959 = !DILocation(line: 716, column: 15, scope: !1592)
!1960 = !DILocation(line: 716, column: 11, scope: !1592)
!1961 = !DILocation(line: 712, column: 11, scope: !1540)
!1962 = !DILocation(line: 400, column: 10, scope: !1542)
!1963 = !DILocation(line: 719, column: 5, scope: !1540)
!1964 = !DILocation(line: 720, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 720, column: 7)
!1966 = !DILocation(line: 720, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1965, file: !212, line: 720, column: 7)
!1968 = !DILocation(line: 720, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !212, line: 720, column: 7)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !212, line: 720, column: 7)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !212, line: 720, column: 7)
!1972 = !DILocation(line: 720, column: 7, scope: !1970)
!1973 = !DILocation(line: 720, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !212, line: 720, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !212, line: 720, column: 7)
!1976 = !DILocation(line: 720, column: 7, scope: !1975)
!1977 = !DILocation(line: 720, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !212, line: 720, column: 7)
!1979 = distinct !DILexicalBlock(scope: !1971, file: !212, line: 720, column: 7)
!1980 = !DILocation(line: 720, column: 7, scope: !1979)
!1981 = !DILocation(line: 720, column: 7, scope: !1971)
!1982 = !DILocation(line: 720, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !212, line: 720, column: 7)
!1984 = distinct !DILexicalBlock(scope: !1965, file: !212, line: 720, column: 7)
!1985 = !DILocation(line: 720, column: 7, scope: !1984)
!1986 = !DILocation(line: 722, column: 5, scope: !1540)
!1987 = !DILocation(line: 723, column: 7, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !212, line: 723, column: 7)
!1989 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 723, column: 7)
!1990 = !DILocation(line: 424, column: 9, scope: !1540)
!1991 = !DILocation(line: 723, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !212, line: 723, column: 7)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !212, line: 723, column: 7)
!1994 = distinct !DILexicalBlock(scope: !1988, file: !212, line: 723, column: 7)
!1995 = !DILocation(line: 723, column: 7, scope: !1993)
!1996 = !DILocation(line: 723, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !212, line: 723, column: 7)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !212, line: 723, column: 7)
!1999 = !DILocation(line: 723, column: 7, scope: !1998)
!2000 = !DILocation(line: 723, column: 7, scope: !1994)
!2001 = !DILocation(line: 724, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !212, line: 724, column: 7)
!2003 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 724, column: 7)
!2004 = !DILocation(line: 724, column: 7, scope: !2003)
!2005 = !DILocation(line: 726, column: 13, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1540, file: !212, line: 726, column: 11)
!2007 = !DILocation(line: 726, column: 11, scope: !1540)
!2008 = !DILocation(line: 728, column: 5, scope: !1541)
!2009 = !DILocation(line: 400, column: 75, scope: !1541)
!2010 = !DILocation(line: 400, column: 3, scope: !1541)
!2011 = distinct !{!2011, !1668, !2012}
!2012 = !DILocation(line: 728, column: 5, scope: !1542)
!2013 = !DILocation(line: 730, column: 11, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1513, file: !212, line: 730, column: 7)
!2015 = !DILocation(line: 730, column: 16, scope: !2014)
!2016 = !DILocation(line: 738, column: 51, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1513, file: !212, line: 738, column: 7)
!2018 = !DILocation(line: 739, column: 10, scope: !2017)
!2019 = !DILocation(line: 741, column: 11, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !212, line: 741, column: 11)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !212, line: 740, column: 5)
!2022 = !DILocation(line: 741, column: 11, scope: !2021)
!2023 = !DILocation(line: 742, column: 16, scope: !2020)
!2024 = !DILocation(line: 742, column: 9, scope: !2020)
!2025 = !DILocation(line: 746, column: 18, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2020, file: !212, line: 746, column: 16)
!2027 = !DILocation(line: 746, column: 32, scope: !2026)
!2028 = !DILocation(line: 746, column: 29, scope: !2026)
!2029 = !DILocation(line: 755, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1513, file: !212, line: 755, column: 7)
!2031 = !DILocation(line: 755, column: 20, scope: !2030)
!2032 = !DILocation(line: 756, column: 12, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !212, line: 756, column: 5)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !212, line: 756, column: 5)
!2035 = !DILocation(line: 756, column: 5, scope: !2034)
!2036 = !DILocation(line: 757, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !212, line: 757, column: 7)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !212, line: 757, column: 7)
!2039 = !DILocation(line: 757, column: 7, scope: !2038)
!2040 = !DILocation(line: 756, column: 39, scope: !2033)
!2041 = distinct !{!2041, !2035, !2042}
!2042 = !DILocation(line: 757, column: 7, scope: !2034)
!2043 = !DILocation(line: 759, column: 11, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1513, file: !212, line: 759, column: 7)
!2045 = !DILocation(line: 759, column: 7, scope: !1513)
!2046 = !DILocation(line: 760, column: 5, scope: !2044)
!2047 = !DILocation(line: 760, column: 17, scope: !2044)
!2048 = !DILocation(line: 763, column: 2, scope: !1513)
!2049 = !DILocation(line: 766, column: 51, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1513, file: !212, line: 766, column: 7)
!2051 = !DILocation(line: 766, column: 21, scope: !2050)
!2052 = !DILocation(line: 770, column: 42, scope: !1513)
!2053 = !DILocation(line: 768, column: 10, scope: !1513)
!2054 = !DILocation(line: 768, column: 3, scope: !1513)
!2055 = !DILocation(line: 772, column: 1, scope: !1513)
!2056 = distinct !DISubprogram(name: "gettext_quote", scope: !212, file: !212, line: 207, type: !2057, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!6, !6, !214}
!2059 = !{!2060, !2061, !2062, !2063}
!2060 = !DILocalVariable(name: "msgid", arg: 1, scope: !2056, file: !212, line: 207, type: !6)
!2061 = !DILocalVariable(name: "s", arg: 2, scope: !2056, file: !212, line: 207, type: !214)
!2062 = !DILocalVariable(name: "translation", scope: !2056, file: !212, line: 209, type: !6)
!2063 = !DILocalVariable(name: "locale_code", scope: !2056, file: !212, line: 210, type: !6)
!2064 = !DILocation(line: 0, scope: !2056)
!2065 = !DILocation(line: 209, column: 29, scope: !2056)
!2066 = !DILocation(line: 212, column: 19, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2056, file: !212, line: 212, column: 7)
!2068 = !DILocation(line: 212, column: 7, scope: !2056)
!2069 = !DILocation(line: 233, column: 17, scope: !2056)
!2070 = !DILocalVariable(name: "s1", arg: 1, scope: !2071, file: !2072, line: 160, type: !6)
!2071 = distinct !DISubprogram(name: "strcaseeq0", scope: !2072, file: !2072, line: 160, type: !2073, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2075)
!2072 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!2075 = !{!2070, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085}
!2076 = !DILocalVariable(name: "s2", arg: 2, scope: !2071, file: !2072, line: 160, type: !6)
!2077 = !DILocalVariable(name: "s20", arg: 3, scope: !2071, file: !2072, line: 160, type: !8)
!2078 = !DILocalVariable(name: "s21", arg: 4, scope: !2071, file: !2072, line: 160, type: !8)
!2079 = !DILocalVariable(name: "s22", arg: 5, scope: !2071, file: !2072, line: 160, type: !8)
!2080 = !DILocalVariable(name: "s23", arg: 6, scope: !2071, file: !2072, line: 160, type: !8)
!2081 = !DILocalVariable(name: "s24", arg: 7, scope: !2071, file: !2072, line: 160, type: !8)
!2082 = !DILocalVariable(name: "s25", arg: 8, scope: !2071, file: !2072, line: 160, type: !8)
!2083 = !DILocalVariable(name: "s26", arg: 9, scope: !2071, file: !2072, line: 160, type: !8)
!2084 = !DILocalVariable(name: "s27", arg: 10, scope: !2071, file: !2072, line: 160, type: !8)
!2085 = !DILocalVariable(name: "s28", arg: 11, scope: !2071, file: !2072, line: 160, type: !8)
!2086 = !DILocation(line: 0, scope: !2071, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 234, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2056, file: !212, line: 234, column: 7)
!2089 = !DILocation(line: 162, column: 7, scope: !2090, inlinedAt: !2087)
!2090 = distinct !DILexicalBlock(scope: !2071, file: !2072, line: 162, column: 7)
!2091 = !DILocalVariable(name: "s1", arg: 1, scope: !2092, file: !2072, line: 146, type: !6)
!2092 = distinct !DISubprogram(name: "strcaseeq1", scope: !2072, file: !2072, line: 146, type: !2093, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!2095 = !{!2091, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2096 = !DILocalVariable(name: "s2", arg: 2, scope: !2092, file: !2072, line: 146, type: !6)
!2097 = !DILocalVariable(name: "s21", arg: 3, scope: !2092, file: !2072, line: 146, type: !8)
!2098 = !DILocalVariable(name: "s22", arg: 4, scope: !2092, file: !2072, line: 146, type: !8)
!2099 = !DILocalVariable(name: "s23", arg: 5, scope: !2092, file: !2072, line: 146, type: !8)
!2100 = !DILocalVariable(name: "s24", arg: 6, scope: !2092, file: !2072, line: 146, type: !8)
!2101 = !DILocalVariable(name: "s25", arg: 7, scope: !2092, file: !2072, line: 146, type: !8)
!2102 = !DILocalVariable(name: "s26", arg: 8, scope: !2092, file: !2072, line: 146, type: !8)
!2103 = !DILocalVariable(name: "s27", arg: 9, scope: !2092, file: !2072, line: 146, type: !8)
!2104 = !DILocalVariable(name: "s28", arg: 10, scope: !2092, file: !2072, line: 146, type: !8)
!2105 = !DILocation(line: 0, scope: !2092, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 167, column: 16, scope: !2107, inlinedAt: !2087)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !2072, line: 164, column: 11)
!2108 = distinct !DILexicalBlock(scope: !2090, file: !2072, line: 163, column: 5)
!2109 = !DILocation(line: 148, column: 7, scope: !2110, inlinedAt: !2106)
!2110 = distinct !DILexicalBlock(scope: !2092, file: !2072, line: 148, column: 7)
!2111 = !DILocalVariable(name: "s1", arg: 1, scope: !2112, file: !2072, line: 132, type: !6)
!2112 = distinct !DISubprogram(name: "strcaseeq2", scope: !2072, file: !2072, line: 132, type: !2113, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!2115 = !{!2111, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123}
!2116 = !DILocalVariable(name: "s2", arg: 2, scope: !2112, file: !2072, line: 132, type: !6)
!2117 = !DILocalVariable(name: "s22", arg: 3, scope: !2112, file: !2072, line: 132, type: !8)
!2118 = !DILocalVariable(name: "s23", arg: 4, scope: !2112, file: !2072, line: 132, type: !8)
!2119 = !DILocalVariable(name: "s24", arg: 5, scope: !2112, file: !2072, line: 132, type: !8)
!2120 = !DILocalVariable(name: "s25", arg: 6, scope: !2112, file: !2072, line: 132, type: !8)
!2121 = !DILocalVariable(name: "s26", arg: 7, scope: !2112, file: !2072, line: 132, type: !8)
!2122 = !DILocalVariable(name: "s27", arg: 8, scope: !2112, file: !2072, line: 132, type: !8)
!2123 = !DILocalVariable(name: "s28", arg: 9, scope: !2112, file: !2072, line: 132, type: !8)
!2124 = !DILocation(line: 0, scope: !2112, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 153, column: 16, scope: !2126, inlinedAt: !2106)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !2072, line: 150, column: 11)
!2127 = distinct !DILexicalBlock(scope: !2110, file: !2072, line: 149, column: 5)
!2128 = !DILocation(line: 134, column: 7, scope: !2129, inlinedAt: !2125)
!2129 = distinct !DILexicalBlock(scope: !2112, file: !2072, line: 134, column: 7)
!2130 = !DILocalVariable(name: "s1", arg: 1, scope: !2131, file: !2072, line: 118, type: !6)
!2131 = distinct !DISubprogram(name: "strcaseeq3", scope: !2072, file: !2072, line: 118, type: !2132, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!2134 = !{!2130, !2135, !2136, !2137, !2138, !2139, !2140, !2141}
!2135 = !DILocalVariable(name: "s2", arg: 2, scope: !2131, file: !2072, line: 118, type: !6)
!2136 = !DILocalVariable(name: "s23", arg: 3, scope: !2131, file: !2072, line: 118, type: !8)
!2137 = !DILocalVariable(name: "s24", arg: 4, scope: !2131, file: !2072, line: 118, type: !8)
!2138 = !DILocalVariable(name: "s25", arg: 5, scope: !2131, file: !2072, line: 118, type: !8)
!2139 = !DILocalVariable(name: "s26", arg: 6, scope: !2131, file: !2072, line: 118, type: !8)
!2140 = !DILocalVariable(name: "s27", arg: 7, scope: !2131, file: !2072, line: 118, type: !8)
!2141 = !DILocalVariable(name: "s28", arg: 8, scope: !2131, file: !2072, line: 118, type: !8)
!2142 = !DILocation(line: 0, scope: !2131, inlinedAt: !2143)
!2143 = distinct !DILocation(line: 139, column: 16, scope: !2144, inlinedAt: !2125)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !2072, line: 136, column: 11)
!2145 = distinct !DILexicalBlock(scope: !2129, file: !2072, line: 135, column: 5)
!2146 = !DILocation(line: 120, column: 7, scope: !2147, inlinedAt: !2143)
!2147 = distinct !DILexicalBlock(scope: !2131, file: !2072, line: 120, column: 7)
!2148 = !DILocation(line: 120, column: 7, scope: !2131, inlinedAt: !2143)
!2149 = !DILocalVariable(name: "s1", arg: 1, scope: !2150, file: !2072, line: 104, type: !6)
!2150 = distinct !DISubprogram(name: "strcaseeq4", scope: !2072, file: !2072, line: 104, type: !2151, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!2153 = !{!2149, !2154, !2155, !2156, !2157, !2158, !2159}
!2154 = !DILocalVariable(name: "s2", arg: 2, scope: !2150, file: !2072, line: 104, type: !6)
!2155 = !DILocalVariable(name: "s24", arg: 3, scope: !2150, file: !2072, line: 104, type: !8)
!2156 = !DILocalVariable(name: "s25", arg: 4, scope: !2150, file: !2072, line: 104, type: !8)
!2157 = !DILocalVariable(name: "s26", arg: 5, scope: !2150, file: !2072, line: 104, type: !8)
!2158 = !DILocalVariable(name: "s27", arg: 6, scope: !2150, file: !2072, line: 104, type: !8)
!2159 = !DILocalVariable(name: "s28", arg: 7, scope: !2150, file: !2072, line: 104, type: !8)
!2160 = !DILocation(line: 0, scope: !2150, inlinedAt: !2161)
!2161 = distinct !DILocation(line: 125, column: 16, scope: !2162, inlinedAt: !2143)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !2072, line: 122, column: 11)
!2163 = distinct !DILexicalBlock(scope: !2147, file: !2072, line: 121, column: 5)
!2164 = !DILocation(line: 106, column: 7, scope: !2165, inlinedAt: !2161)
!2165 = distinct !DILexicalBlock(scope: !2150, file: !2072, line: 106, column: 7)
!2166 = !DILocation(line: 106, column: 7, scope: !2150, inlinedAt: !2161)
!2167 = !DILocalVariable(name: "s1", arg: 1, scope: !2168, file: !2072, line: 90, type: !6)
!2168 = distinct !DISubprogram(name: "strcaseeq5", scope: !2072, file: !2072, line: 90, type: !2169, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!18, !6, !6, !8, !8, !8, !8}
!2171 = !{!2167, !2172, !2173, !2174, !2175, !2176}
!2172 = !DILocalVariable(name: "s2", arg: 2, scope: !2168, file: !2072, line: 90, type: !6)
!2173 = !DILocalVariable(name: "s25", arg: 3, scope: !2168, file: !2072, line: 90, type: !8)
!2174 = !DILocalVariable(name: "s26", arg: 4, scope: !2168, file: !2072, line: 90, type: !8)
!2175 = !DILocalVariable(name: "s27", arg: 5, scope: !2168, file: !2072, line: 90, type: !8)
!2176 = !DILocalVariable(name: "s28", arg: 6, scope: !2168, file: !2072, line: 90, type: !8)
!2177 = !DILocation(line: 0, scope: !2168, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 111, column: 16, scope: !2179, inlinedAt: !2161)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !2072, line: 108, column: 11)
!2180 = distinct !DILexicalBlock(scope: !2165, file: !2072, line: 107, column: 5)
!2181 = !DILocation(line: 92, column: 7, scope: !2182, inlinedAt: !2178)
!2182 = distinct !DILexicalBlock(scope: !2168, file: !2072, line: 92, column: 7)
!2183 = !DILocation(line: 92, column: 7, scope: !2168, inlinedAt: !2178)
!2184 = !DILocation(line: 235, column: 12, scope: !2088)
!2185 = !DILocation(line: 235, column: 21, scope: !2088)
!2186 = !DILocation(line: 235, column: 5, scope: !2088)
!2187 = !DILocation(line: 0, scope: !2092, inlinedAt: !2188)
!2188 = distinct !DILocation(line: 167, column: 16, scope: !2107, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 236, column: 7, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2056, file: !212, line: 236, column: 7)
!2191 = !DILocation(line: 148, column: 7, scope: !2110, inlinedAt: !2188)
!2192 = !DILocation(line: 0, scope: !2112, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 153, column: 16, scope: !2126, inlinedAt: !2188)
!2194 = !DILocation(line: 134, column: 7, scope: !2129, inlinedAt: !2193)
!2195 = !DILocation(line: 134, column: 7, scope: !2112, inlinedAt: !2193)
!2196 = !DILocation(line: 0, scope: !2131, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 139, column: 16, scope: !2144, inlinedAt: !2193)
!2198 = !DILocation(line: 120, column: 7, scope: !2147, inlinedAt: !2197)
!2199 = !DILocation(line: 120, column: 7, scope: !2131, inlinedAt: !2197)
!2200 = !DILocation(line: 0, scope: !2150, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 125, column: 16, scope: !2162, inlinedAt: !2197)
!2202 = !DILocation(line: 106, column: 7, scope: !2165, inlinedAt: !2201)
!2203 = !DILocation(line: 106, column: 7, scope: !2150, inlinedAt: !2201)
!2204 = !DILocation(line: 0, scope: !2168, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 111, column: 16, scope: !2179, inlinedAt: !2201)
!2206 = !DILocation(line: 92, column: 7, scope: !2182, inlinedAt: !2205)
!2207 = !DILocation(line: 92, column: 7, scope: !2168, inlinedAt: !2205)
!2208 = !DILocalVariable(name: "s1", arg: 1, scope: !2209, file: !2072, line: 76, type: !6)
!2209 = distinct !DISubprogram(name: "strcaseeq6", scope: !2072, file: !2072, line: 76, type: !2210, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!18, !6, !6, !8, !8, !8}
!2212 = !{!2208, !2213, !2214, !2215, !2216}
!2213 = !DILocalVariable(name: "s2", arg: 2, scope: !2209, file: !2072, line: 76, type: !6)
!2214 = !DILocalVariable(name: "s26", arg: 3, scope: !2209, file: !2072, line: 76, type: !8)
!2215 = !DILocalVariable(name: "s27", arg: 4, scope: !2209, file: !2072, line: 76, type: !8)
!2216 = !DILocalVariable(name: "s28", arg: 5, scope: !2209, file: !2072, line: 76, type: !8)
!2217 = !DILocation(line: 0, scope: !2209, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 97, column: 16, scope: !2219, inlinedAt: !2205)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !2072, line: 94, column: 11)
!2220 = distinct !DILexicalBlock(scope: !2182, file: !2072, line: 93, column: 5)
!2221 = !DILocation(line: 78, column: 7, scope: !2222, inlinedAt: !2218)
!2222 = distinct !DILexicalBlock(scope: !2209, file: !2072, line: 78, column: 7)
!2223 = !DILocation(line: 78, column: 7, scope: !2209, inlinedAt: !2218)
!2224 = !DILocalVariable(name: "s1", arg: 1, scope: !2225, file: !2072, line: 62, type: !6)
!2225 = distinct !DISubprogram(name: "strcaseeq7", scope: !2072, file: !2072, line: 62, type: !2226, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2228)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!18, !6, !6, !8, !8}
!2228 = !{!2224, !2229, !2230, !2231}
!2229 = !DILocalVariable(name: "s2", arg: 2, scope: !2225, file: !2072, line: 62, type: !6)
!2230 = !DILocalVariable(name: "s27", arg: 3, scope: !2225, file: !2072, line: 62, type: !8)
!2231 = !DILocalVariable(name: "s28", arg: 4, scope: !2225, file: !2072, line: 62, type: !8)
!2232 = !DILocation(line: 0, scope: !2225, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 83, column: 16, scope: !2234, inlinedAt: !2218)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !2072, line: 80, column: 11)
!2235 = distinct !DILexicalBlock(scope: !2222, file: !2072, line: 79, column: 5)
!2236 = !DILocation(line: 64, column: 7, scope: !2237, inlinedAt: !2233)
!2237 = distinct !DILexicalBlock(scope: !2225, file: !2072, line: 64, column: 7)
!2238 = !DILocation(line: 236, column: 7, scope: !2056)
!2239 = !DILocation(line: 237, column: 12, scope: !2190)
!2240 = !DILocation(line: 237, column: 21, scope: !2190)
!2241 = !DILocation(line: 237, column: 5, scope: !2190)
!2242 = !DILocation(line: 239, column: 13, scope: !2056)
!2243 = !DILocation(line: 239, column: 11, scope: !2056)
!2244 = !DILocation(line: 239, column: 3, scope: !2056)
!2245 = !DILocation(line: 240, column: 1, scope: !2056)
!2246 = distinct !DISubprogram(name: "quotearg_alloc", scope: !212, file: !212, line: 799, type: !2247, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2249)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!25, !6, !69, !258}
!2249 = !{!2250, !2251, !2252}
!2250 = !DILocalVariable(name: "arg", arg: 1, scope: !2246, file: !212, line: 799, type: !6)
!2251 = !DILocalVariable(name: "argsize", arg: 2, scope: !2246, file: !212, line: 799, type: !69)
!2252 = !DILocalVariable(name: "o", arg: 3, scope: !2246, file: !212, line: 800, type: !258)
!2253 = !DILocation(line: 0, scope: !2246)
!2254 = !DILocalVariable(name: "arg", arg: 1, scope: !2255, file: !212, line: 812, type: !6)
!2255 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !212, file: !212, line: 812, type: !2256, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!25, !6, !69, !498, !258}
!2258 = !{!2254, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266}
!2259 = !DILocalVariable(name: "argsize", arg: 2, scope: !2255, file: !212, line: 812, type: !69)
!2260 = !DILocalVariable(name: "size", arg: 3, scope: !2255, file: !212, line: 812, type: !498)
!2261 = !DILocalVariable(name: "o", arg: 4, scope: !2255, file: !212, line: 813, type: !258)
!2262 = !DILocalVariable(name: "p", scope: !2255, file: !212, line: 815, type: !258)
!2263 = !DILocalVariable(name: "e", scope: !2255, file: !212, line: 816, type: !18)
!2264 = !DILocalVariable(name: "flags", scope: !2255, file: !212, line: 818, type: !18)
!2265 = !DILocalVariable(name: "bufsize", scope: !2255, file: !212, line: 819, type: !69)
!2266 = !DILocalVariable(name: "buf", scope: !2255, file: !212, line: 823, type: !25)
!2267 = !DILocation(line: 0, scope: !2255, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 802, column: 10, scope: !2246)
!2269 = !DILocation(line: 815, column: 37, scope: !2255, inlinedAt: !2268)
!2270 = !DILocation(line: 816, column: 11, scope: !2255, inlinedAt: !2268)
!2271 = !DILocation(line: 818, column: 18, scope: !2255, inlinedAt: !2268)
!2272 = !DILocation(line: 818, column: 24, scope: !2255, inlinedAt: !2268)
!2273 = !DILocation(line: 819, column: 69, scope: !2255, inlinedAt: !2268)
!2274 = !DILocation(line: 820, column: 53, scope: !2255, inlinedAt: !2268)
!2275 = !DILocation(line: 821, column: 49, scope: !2255, inlinedAt: !2268)
!2276 = !DILocation(line: 822, column: 49, scope: !2255, inlinedAt: !2268)
!2277 = !DILocation(line: 819, column: 20, scope: !2255, inlinedAt: !2268)
!2278 = !DILocation(line: 822, column: 62, scope: !2255, inlinedAt: !2268)
!2279 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !249, line: 216, type: !69)
!2280 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2281, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!25, !69}
!2283 = !{!2279}
!2284 = !DILocation(line: 0, scope: !2280, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 823, column: 15, scope: !2255, inlinedAt: !2268)
!2286 = !DILocation(line: 218, column: 10, scope: !2280, inlinedAt: !2285)
!2287 = !DILocation(line: 824, column: 60, scope: !2255, inlinedAt: !2268)
!2288 = !DILocation(line: 826, column: 32, scope: !2255, inlinedAt: !2268)
!2289 = !DILocation(line: 826, column: 47, scope: !2255, inlinedAt: !2268)
!2290 = !DILocation(line: 824, column: 3, scope: !2255, inlinedAt: !2268)
!2291 = !DILocation(line: 827, column: 9, scope: !2255, inlinedAt: !2268)
!2292 = !DILocation(line: 802, column: 3, scope: !2246)
!2293 = !DILocation(line: 0, scope: !2255)
!2294 = !DILocation(line: 815, column: 37, scope: !2255)
!2295 = !DILocation(line: 816, column: 11, scope: !2255)
!2296 = !DILocation(line: 818, column: 18, scope: !2255)
!2297 = !DILocation(line: 818, column: 27, scope: !2255)
!2298 = !DILocation(line: 818, column: 24, scope: !2255)
!2299 = !DILocation(line: 819, column: 69, scope: !2255)
!2300 = !DILocation(line: 820, column: 53, scope: !2255)
!2301 = !DILocation(line: 821, column: 49, scope: !2255)
!2302 = !DILocation(line: 822, column: 49, scope: !2255)
!2303 = !DILocation(line: 819, column: 20, scope: !2255)
!2304 = !DILocation(line: 822, column: 62, scope: !2255)
!2305 = !DILocation(line: 0, scope: !2280, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 823, column: 15, scope: !2255)
!2307 = !DILocation(line: 218, column: 10, scope: !2280, inlinedAt: !2306)
!2308 = !DILocation(line: 824, column: 60, scope: !2255)
!2309 = !DILocation(line: 826, column: 32, scope: !2255)
!2310 = !DILocation(line: 826, column: 47, scope: !2255)
!2311 = !DILocation(line: 824, column: 3, scope: !2255)
!2312 = !DILocation(line: 827, column: 9, scope: !2255)
!2313 = !DILocation(line: 828, column: 7, scope: !2255)
!2314 = !DILocation(line: 829, column: 11, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2255, file: !212, line: 828, column: 7)
!2316 = !{!2317, !2317, i64 0}
!2317 = !{!"long", !1141, i64 0}
!2318 = !DILocation(line: 829, column: 5, scope: !2315)
!2319 = !DILocation(line: 830, column: 3, scope: !2255)
!2320 = distinct !DISubprogram(name: "quotearg_free", scope: !212, file: !212, line: 848, type: !316, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2321)
!2321 = !{!2322, !2323}
!2322 = !DILocalVariable(name: "sv", scope: !2320, file: !212, line: 850, type: !339)
!2323 = !DILocalVariable(name: "i", scope: !2320, file: !212, line: 851, type: !18)
!2324 = !DILocation(line: 850, column: 24, scope: !2320)
!2325 = !DILocation(line: 0, scope: !2320)
!2326 = !DILocation(line: 852, column: 19, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !212, line: 852, column: 3)
!2328 = distinct !DILexicalBlock(scope: !2320, file: !212, line: 852, column: 3)
!2329 = !DILocation(line: 852, column: 17, scope: !2327)
!2330 = !DILocation(line: 852, column: 3, scope: !2328)
!2331 = !DILocation(line: 853, column: 17, scope: !2327)
!2332 = !{!2333, !1140, i64 8}
!2333 = !{!"slotvec", !2317, i64 0, !1140, i64 8}
!2334 = !DILocation(line: 853, column: 5, scope: !2327)
!2335 = !DILocation(line: 852, column: 28, scope: !2327)
!2336 = distinct !{!2336, !2330, !2337}
!2337 = !DILocation(line: 853, column: 20, scope: !2328)
!2338 = !DILocation(line: 854, column: 13, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2320, file: !212, line: 854, column: 7)
!2340 = !DILocation(line: 854, column: 17, scope: !2339)
!2341 = !DILocation(line: 854, column: 7, scope: !2320)
!2342 = !DILocation(line: 856, column: 7, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2339, file: !212, line: 855, column: 5)
!2344 = !DILocation(line: 857, column: 21, scope: !2343)
!2345 = !{!2333, !2317, i64 0}
!2346 = !DILocation(line: 858, column: 20, scope: !2343)
!2347 = !DILocation(line: 859, column: 5, scope: !2343)
!2348 = !DILocation(line: 860, column: 10, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2320, file: !212, line: 860, column: 7)
!2350 = !DILocation(line: 860, column: 7, scope: !2320)
!2351 = !DILocation(line: 862, column: 13, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !212, line: 861, column: 5)
!2353 = !DILocation(line: 862, column: 7, scope: !2352)
!2354 = !DILocation(line: 863, column: 15, scope: !2352)
!2355 = !DILocation(line: 864, column: 5, scope: !2352)
!2356 = !DILocation(line: 865, column: 10, scope: !2320)
!2357 = !DILocation(line: 866, column: 1, scope: !2320)
!2358 = distinct !DISubprogram(name: "quotearg_n", scope: !212, file: !212, line: 931, type: !404, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2359)
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "n", arg: 1, scope: !2358, file: !212, line: 931, type: !18)
!2361 = !DILocalVariable(name: "arg", arg: 2, scope: !2358, file: !212, line: 931, type: !6)
!2362 = !DILocation(line: 0, scope: !2358)
!2363 = !DILocation(line: 933, column: 10, scope: !2358)
!2364 = !DILocation(line: 933, column: 3, scope: !2358)
!2365 = distinct !DISubprogram(name: "quotearg_n_options", scope: !212, file: !212, line: 877, type: !2366, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!25, !18, !6, !69, !258}
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2378, !2379, !2381, !2382, !2383}
!2369 = !DILocalVariable(name: "n", arg: 1, scope: !2365, file: !212, line: 877, type: !18)
!2370 = !DILocalVariable(name: "arg", arg: 2, scope: !2365, file: !212, line: 877, type: !6)
!2371 = !DILocalVariable(name: "argsize", arg: 3, scope: !2365, file: !212, line: 877, type: !69)
!2372 = !DILocalVariable(name: "options", arg: 4, scope: !2365, file: !212, line: 878, type: !258)
!2373 = !DILocalVariable(name: "e", scope: !2365, file: !212, line: 880, type: !18)
!2374 = !DILocalVariable(name: "sv", scope: !2365, file: !212, line: 882, type: !339)
!2375 = !DILocalVariable(name: "preallocated", scope: !2376, file: !212, line: 889, type: !92)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !212, line: 888, column: 5)
!2377 = distinct !DILexicalBlock(scope: !2365, file: !212, line: 887, column: 7)
!2378 = !DILocalVariable(name: "nmax", scope: !2376, file: !212, line: 890, type: !18)
!2379 = !DILocalVariable(name: "size", scope: !2380, file: !212, line: 903, type: !69)
!2380 = distinct !DILexicalBlock(scope: !2365, file: !212, line: 902, column: 3)
!2381 = !DILocalVariable(name: "val", scope: !2380, file: !212, line: 904, type: !25)
!2382 = !DILocalVariable(name: "flags", scope: !2380, file: !212, line: 906, type: !18)
!2383 = !DILocalVariable(name: "qsize", scope: !2380, file: !212, line: 907, type: !69)
!2384 = !DILocation(line: 0, scope: !2365)
!2385 = !DILocation(line: 880, column: 11, scope: !2365)
!2386 = !DILocation(line: 882, column: 24, scope: !2365)
!2387 = !DILocation(line: 884, column: 9, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2365, file: !212, line: 884, column: 7)
!2389 = !DILocation(line: 884, column: 7, scope: !2365)
!2390 = !DILocation(line: 885, column: 5, scope: !2388)
!2391 = !DILocation(line: 887, column: 7, scope: !2377)
!2392 = !DILocation(line: 887, column: 14, scope: !2377)
!2393 = !DILocation(line: 887, column: 7, scope: !2365)
!2394 = !DILocation(line: 889, column: 31, scope: !2376)
!2395 = !DILocation(line: 0, scope: !2376)
!2396 = !DILocation(line: 892, column: 16, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2376, file: !212, line: 892, column: 11)
!2398 = !DILocation(line: 892, column: 11, scope: !2376)
!2399 = !DILocation(line: 893, column: 9, scope: !2397)
!2400 = !DILocation(line: 895, column: 32, scope: !2376)
!2401 = !DILocation(line: 895, column: 61, scope: !2376)
!2402 = !DILocation(line: 895, column: 58, scope: !2376)
!2403 = !DILocation(line: 895, column: 66, scope: !2376)
!2404 = !DILocation(line: 895, column: 22, scope: !2376)
!2405 = !DILocation(line: 895, column: 15, scope: !2376)
!2406 = !DILocation(line: 896, column: 11, scope: !2376)
!2407 = !DILocation(line: 897, column: 15, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2376, file: !212, line: 896, column: 11)
!2409 = !{i64 0, i64 8, !2316, i64 8, i64 8, !1139}
!2410 = !DILocation(line: 897, column: 9, scope: !2408)
!2411 = !DILocation(line: 898, column: 20, scope: !2376)
!2412 = !DILocation(line: 898, column: 18, scope: !2376)
!2413 = !DILocation(line: 898, column: 15, scope: !2376)
!2414 = !DILocation(line: 898, column: 38, scope: !2376)
!2415 = !DILocation(line: 898, column: 31, scope: !2376)
!2416 = !DILocation(line: 898, column: 48, scope: !2376)
!2417 = !DILocation(line: 0, scope: !1813, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 898, column: 7, scope: !2376)
!2419 = !DILocation(line: 71, column: 10, scope: !1813, inlinedAt: !2418)
!2420 = !DILocation(line: 899, column: 14, scope: !2376)
!2421 = !DILocation(line: 900, column: 5, scope: !2376)
!2422 = !DILocation(line: 903, column: 19, scope: !2380)
!2423 = !DILocation(line: 903, column: 25, scope: !2380)
!2424 = !DILocation(line: 0, scope: !2380)
!2425 = !DILocation(line: 904, column: 23, scope: !2380)
!2426 = !DILocation(line: 906, column: 26, scope: !2380)
!2427 = !DILocation(line: 906, column: 32, scope: !2380)
!2428 = !DILocation(line: 908, column: 55, scope: !2380)
!2429 = !DILocation(line: 909, column: 46, scope: !2380)
!2430 = !DILocation(line: 910, column: 55, scope: !2380)
!2431 = !DILocation(line: 911, column: 55, scope: !2380)
!2432 = !DILocation(line: 907, column: 20, scope: !2380)
!2433 = !DILocation(line: 913, column: 14, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2380, file: !212, line: 913, column: 9)
!2435 = !DILocation(line: 913, column: 9, scope: !2380)
!2436 = !DILocation(line: 915, column: 35, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !212, line: 914, column: 7)
!2438 = !DILocation(line: 915, column: 20, scope: !2437)
!2439 = !DILocation(line: 916, column: 17, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2437, file: !212, line: 916, column: 13)
!2441 = !DILocation(line: 916, column: 13, scope: !2437)
!2442 = !DILocation(line: 917, column: 11, scope: !2440)
!2443 = !DILocation(line: 0, scope: !2280, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 918, column: 27, scope: !2437)
!2445 = !DILocation(line: 218, column: 10, scope: !2280, inlinedAt: !2444)
!2446 = !DILocation(line: 918, column: 19, scope: !2437)
!2447 = !DILocation(line: 919, column: 69, scope: !2437)
!2448 = !DILocation(line: 921, column: 44, scope: !2437)
!2449 = !DILocation(line: 922, column: 44, scope: !2437)
!2450 = !DILocation(line: 919, column: 9, scope: !2437)
!2451 = !DILocation(line: 923, column: 7, scope: !2437)
!2452 = !DILocation(line: 925, column: 11, scope: !2380)
!2453 = !DILocation(line: 926, column: 5, scope: !2380)
!2454 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !212, file: !212, line: 937, type: !2455, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!25, !18, !6, !69}
!2457 = !{!2458, !2459, !2460}
!2458 = !DILocalVariable(name: "n", arg: 1, scope: !2454, file: !212, line: 937, type: !18)
!2459 = !DILocalVariable(name: "arg", arg: 2, scope: !2454, file: !212, line: 937, type: !6)
!2460 = !DILocalVariable(name: "argsize", arg: 3, scope: !2454, file: !212, line: 937, type: !69)
!2461 = !DILocation(line: 0, scope: !2454)
!2462 = !DILocation(line: 939, column: 10, scope: !2454)
!2463 = !DILocation(line: 939, column: 3, scope: !2454)
!2464 = distinct !DISubprogram(name: "quotearg", scope: !212, file: !212, line: 943, type: !83, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2465)
!2465 = !{!2466}
!2466 = !DILocalVariable(name: "arg", arg: 1, scope: !2464, file: !212, line: 943, type: !6)
!2467 = !DILocation(line: 0, scope: !2464)
!2468 = !DILocation(line: 0, scope: !2358, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 945, column: 10, scope: !2464)
!2470 = !DILocation(line: 933, column: 10, scope: !2358, inlinedAt: !2469)
!2471 = !DILocation(line: 945, column: 3, scope: !2464)
!2472 = distinct !DISubprogram(name: "quotearg_mem", scope: !212, file: !212, line: 949, type: !2473, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!25, !6, !69}
!2475 = !{!2476, !2477}
!2476 = !DILocalVariable(name: "arg", arg: 1, scope: !2472, file: !212, line: 949, type: !6)
!2477 = !DILocalVariable(name: "argsize", arg: 2, scope: !2472, file: !212, line: 949, type: !69)
!2478 = !DILocation(line: 0, scope: !2472)
!2479 = !DILocation(line: 0, scope: !2454, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 951, column: 10, scope: !2472)
!2481 = !DILocation(line: 939, column: 10, scope: !2454, inlinedAt: !2480)
!2482 = !DILocation(line: 951, column: 3, scope: !2472)
!2483 = distinct !DISubprogram(name: "quotearg_n_style", scope: !212, file: !212, line: 955, type: !2484, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2486)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!25, !18, !214, !6}
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DILocalVariable(name: "n", arg: 1, scope: !2483, file: !212, line: 955, type: !18)
!2488 = !DILocalVariable(name: "s", arg: 2, scope: !2483, file: !212, line: 955, type: !214)
!2489 = !DILocalVariable(name: "arg", arg: 3, scope: !2483, file: !212, line: 955, type: !6)
!2490 = !DILocalVariable(name: "o", scope: !2483, file: !212, line: 957, type: !259)
!2491 = !DILocation(line: 0, scope: !2483)
!2492 = !DILocation(line: 957, column: 3, scope: !2483)
!2493 = !DILocation(line: 957, column: 32, scope: !2483)
!2494 = !DILocalVariable(name: "style", arg: 1, scope: !2495, file: !212, line: 193, type: !214)
!2495 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !212, file: !212, line: 193, type: !2496, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!260, !214}
!2498 = !{!2494, !2499}
!2499 = !DILocalVariable(name: "o", scope: !2495, file: !212, line: 195, type: !260)
!2500 = !DILocation(line: 0, scope: !2495, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 957, column: 36, scope: !2483)
!2502 = !DILocation(line: 195, column: 26, scope: !2495, inlinedAt: !2501)
!2503 = !{!2504}
!2504 = distinct !{!2504, !2505, !"quoting_options_from_style: argument 0"}
!2505 = distinct !{!2505, !"quoting_options_from_style"}
!2506 = !DILocation(line: 196, column: 13, scope: !2507, inlinedAt: !2501)
!2507 = distinct !DILexicalBlock(scope: !2495, file: !212, line: 196, column: 7)
!2508 = !DILocation(line: 196, column: 7, scope: !2495, inlinedAt: !2501)
!2509 = !DILocation(line: 197, column: 5, scope: !2507, inlinedAt: !2501)
!2510 = !DILocation(line: 198, column: 5, scope: !2495, inlinedAt: !2501)
!2511 = !DILocation(line: 198, column: 11, scope: !2495, inlinedAt: !2501)
!2512 = !DILocation(line: 958, column: 10, scope: !2483)
!2513 = !DILocation(line: 959, column: 1, scope: !2483)
!2514 = !DILocation(line: 958, column: 3, scope: !2483)
!2515 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !212, file: !212, line: 962, type: !2516, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!25, !18, !214, !6, !69}
!2518 = !{!2519, !2520, !2521, !2522, !2523}
!2519 = !DILocalVariable(name: "n", arg: 1, scope: !2515, file: !212, line: 962, type: !18)
!2520 = !DILocalVariable(name: "s", arg: 2, scope: !2515, file: !212, line: 962, type: !214)
!2521 = !DILocalVariable(name: "arg", arg: 3, scope: !2515, file: !212, line: 963, type: !6)
!2522 = !DILocalVariable(name: "argsize", arg: 4, scope: !2515, file: !212, line: 963, type: !69)
!2523 = !DILocalVariable(name: "o", scope: !2515, file: !212, line: 965, type: !259)
!2524 = !DILocation(line: 0, scope: !2515)
!2525 = !DILocation(line: 965, column: 3, scope: !2515)
!2526 = !DILocation(line: 965, column: 32, scope: !2515)
!2527 = !DILocation(line: 0, scope: !2495, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 965, column: 36, scope: !2515)
!2529 = !DILocation(line: 195, column: 26, scope: !2495, inlinedAt: !2528)
!2530 = !{!2531}
!2531 = distinct !{!2531, !2532, !"quoting_options_from_style: argument 0"}
!2532 = distinct !{!2532, !"quoting_options_from_style"}
!2533 = !DILocation(line: 196, column: 13, scope: !2507, inlinedAt: !2528)
!2534 = !DILocation(line: 196, column: 7, scope: !2495, inlinedAt: !2528)
!2535 = !DILocation(line: 197, column: 5, scope: !2507, inlinedAt: !2528)
!2536 = !DILocation(line: 198, column: 5, scope: !2495, inlinedAt: !2528)
!2537 = !DILocation(line: 198, column: 11, scope: !2495, inlinedAt: !2528)
!2538 = !DILocation(line: 966, column: 10, scope: !2515)
!2539 = !DILocation(line: 967, column: 1, scope: !2515)
!2540 = !DILocation(line: 966, column: 3, scope: !2515)
!2541 = distinct !DISubprogram(name: "quotearg_style", scope: !212, file: !212, line: 970, type: !2542, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!25, !214, !6}
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "s", arg: 1, scope: !2541, file: !212, line: 970, type: !214)
!2546 = !DILocalVariable(name: "arg", arg: 2, scope: !2541, file: !212, line: 970, type: !6)
!2547 = !DILocation(line: 195, column: 26, scope: !2495, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 957, column: 36, scope: !2483, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 972, column: 10, scope: !2541)
!2550 = !DILocation(line: 957, column: 32, scope: !2483, inlinedAt: !2549)
!2551 = !DILocation(line: 0, scope: !2541)
!2552 = !DILocation(line: 0, scope: !2483, inlinedAt: !2549)
!2553 = !DILocation(line: 957, column: 3, scope: !2483, inlinedAt: !2549)
!2554 = !DILocation(line: 0, scope: !2495, inlinedAt: !2548)
!2555 = !{!2556}
!2556 = distinct !{!2556, !2557, !"quoting_options_from_style: argument 0"}
!2557 = distinct !{!2557, !"quoting_options_from_style"}
!2558 = !DILocation(line: 196, column: 13, scope: !2507, inlinedAt: !2548)
!2559 = !DILocation(line: 196, column: 7, scope: !2495, inlinedAt: !2548)
!2560 = !DILocation(line: 197, column: 5, scope: !2507, inlinedAt: !2548)
!2561 = !DILocation(line: 198, column: 5, scope: !2495, inlinedAt: !2548)
!2562 = !DILocation(line: 198, column: 11, scope: !2495, inlinedAt: !2548)
!2563 = !DILocation(line: 958, column: 10, scope: !2483, inlinedAt: !2549)
!2564 = !DILocation(line: 959, column: 1, scope: !2483, inlinedAt: !2549)
!2565 = !DILocation(line: 972, column: 3, scope: !2541)
!2566 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !212, file: !212, line: 976, type: !2567, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2569)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!25, !214, !6, !69}
!2569 = !{!2570, !2571, !2572}
!2570 = !DILocalVariable(name: "s", arg: 1, scope: !2566, file: !212, line: 976, type: !214)
!2571 = !DILocalVariable(name: "arg", arg: 2, scope: !2566, file: !212, line: 976, type: !6)
!2572 = !DILocalVariable(name: "argsize", arg: 3, scope: !2566, file: !212, line: 976, type: !69)
!2573 = !DILocation(line: 195, column: 26, scope: !2495, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 965, column: 36, scope: !2515, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 978, column: 10, scope: !2566)
!2576 = !DILocation(line: 965, column: 32, scope: !2515, inlinedAt: !2575)
!2577 = !DILocation(line: 0, scope: !2566)
!2578 = !DILocation(line: 0, scope: !2515, inlinedAt: !2575)
!2579 = !DILocation(line: 965, column: 3, scope: !2515, inlinedAt: !2575)
!2580 = !DILocation(line: 0, scope: !2495, inlinedAt: !2574)
!2581 = !{!2582}
!2582 = distinct !{!2582, !2583, !"quoting_options_from_style: argument 0"}
!2583 = distinct !{!2583, !"quoting_options_from_style"}
!2584 = !DILocation(line: 196, column: 13, scope: !2507, inlinedAt: !2574)
!2585 = !DILocation(line: 196, column: 7, scope: !2495, inlinedAt: !2574)
!2586 = !DILocation(line: 197, column: 5, scope: !2507, inlinedAt: !2574)
!2587 = !DILocation(line: 198, column: 5, scope: !2495, inlinedAt: !2574)
!2588 = !DILocation(line: 198, column: 11, scope: !2495, inlinedAt: !2574)
!2589 = !DILocation(line: 966, column: 10, scope: !2515, inlinedAt: !2575)
!2590 = !DILocation(line: 967, column: 1, scope: !2515, inlinedAt: !2575)
!2591 = !DILocation(line: 978, column: 3, scope: !2566)
!2592 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !212, file: !212, line: 982, type: !2593, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!25, !6, !69, !8}
!2595 = !{!2596, !2597, !2598, !2599}
!2596 = !DILocalVariable(name: "arg", arg: 1, scope: !2592, file: !212, line: 982, type: !6)
!2597 = !DILocalVariable(name: "argsize", arg: 2, scope: !2592, file: !212, line: 982, type: !69)
!2598 = !DILocalVariable(name: "ch", arg: 3, scope: !2592, file: !212, line: 982, type: !8)
!2599 = !DILocalVariable(name: "options", scope: !2592, file: !212, line: 984, type: !260)
!2600 = !DILocation(line: 0, scope: !2592)
!2601 = !DILocation(line: 984, column: 3, scope: !2592)
!2602 = !DILocation(line: 984, column: 26, scope: !2592)
!2603 = !DILocation(line: 985, column: 13, scope: !2592)
!2604 = !{i64 0, i64 4, !1611, i64 4, i64 4, !1200, i64 8, i64 32, !1611, i64 40, i64 8, !1139, i64 48, i64 8, !1139}
!2605 = !DILocation(line: 0, scope: !1424, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 986, column: 3, scope: !2592)
!2607 = !DILocation(line: 156, column: 62, scope: !1424, inlinedAt: !2606)
!2608 = !DILocation(line: 156, column: 57, scope: !1424, inlinedAt: !2606)
!2609 = !DILocation(line: 157, column: 15, scope: !1424, inlinedAt: !2606)
!2610 = !DILocation(line: 158, column: 12, scope: !1424, inlinedAt: !2606)
!2611 = !DILocation(line: 158, column: 15, scope: !1424, inlinedAt: !2606)
!2612 = !DILocation(line: 158, column: 25, scope: !1424, inlinedAt: !2606)
!2613 = !DILocation(line: 159, column: 18, scope: !1424, inlinedAt: !2606)
!2614 = !DILocation(line: 159, column: 23, scope: !1424, inlinedAt: !2606)
!2615 = !DILocation(line: 159, column: 6, scope: !1424, inlinedAt: !2606)
!2616 = !DILocation(line: 987, column: 10, scope: !2592)
!2617 = !DILocation(line: 988, column: 1, scope: !2592)
!2618 = !DILocation(line: 987, column: 3, scope: !2592)
!2619 = distinct !DISubprogram(name: "quotearg_char", scope: !212, file: !212, line: 991, type: !2620, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2622)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!25, !6, !8}
!2622 = !{!2623, !2624}
!2623 = !DILocalVariable(name: "arg", arg: 1, scope: !2619, file: !212, line: 991, type: !6)
!2624 = !DILocalVariable(name: "ch", arg: 2, scope: !2619, file: !212, line: 991, type: !8)
!2625 = !DILocation(line: 984, column: 26, scope: !2592, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 993, column: 10, scope: !2619)
!2627 = !DILocation(line: 0, scope: !2619)
!2628 = !DILocation(line: 0, scope: !2592, inlinedAt: !2626)
!2629 = !DILocation(line: 984, column: 3, scope: !2592, inlinedAt: !2626)
!2630 = !DILocation(line: 985, column: 13, scope: !2592, inlinedAt: !2626)
!2631 = !DILocation(line: 0, scope: !1424, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 986, column: 3, scope: !2592, inlinedAt: !2626)
!2633 = !DILocation(line: 156, column: 62, scope: !1424, inlinedAt: !2632)
!2634 = !DILocation(line: 156, column: 57, scope: !1424, inlinedAt: !2632)
!2635 = !DILocation(line: 157, column: 15, scope: !1424, inlinedAt: !2632)
!2636 = !DILocation(line: 158, column: 12, scope: !1424, inlinedAt: !2632)
!2637 = !DILocation(line: 158, column: 15, scope: !1424, inlinedAt: !2632)
!2638 = !DILocation(line: 158, column: 25, scope: !1424, inlinedAt: !2632)
!2639 = !DILocation(line: 159, column: 18, scope: !1424, inlinedAt: !2632)
!2640 = !DILocation(line: 159, column: 23, scope: !1424, inlinedAt: !2632)
!2641 = !DILocation(line: 159, column: 6, scope: !1424, inlinedAt: !2632)
!2642 = !DILocation(line: 987, column: 10, scope: !2592, inlinedAt: !2626)
!2643 = !DILocation(line: 988, column: 1, scope: !2592, inlinedAt: !2626)
!2644 = !DILocation(line: 993, column: 3, scope: !2619)
!2645 = distinct !DISubprogram(name: "quotearg_colon", scope: !212, file: !212, line: 997, type: !83, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2646)
!2646 = !{!2647}
!2647 = !DILocalVariable(name: "arg", arg: 1, scope: !2645, file: !212, line: 997, type: !6)
!2648 = !DILocation(line: 984, column: 26, scope: !2592, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 993, column: 10, scope: !2619, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 999, column: 10, scope: !2645)
!2651 = !DILocation(line: 0, scope: !2645)
!2652 = !DILocation(line: 0, scope: !2619, inlinedAt: !2650)
!2653 = !DILocation(line: 0, scope: !2592, inlinedAt: !2649)
!2654 = !DILocation(line: 984, column: 3, scope: !2592, inlinedAt: !2649)
!2655 = !DILocation(line: 985, column: 13, scope: !2592, inlinedAt: !2649)
!2656 = !DILocation(line: 0, scope: !1424, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 986, column: 3, scope: !2592, inlinedAt: !2649)
!2658 = !DILocation(line: 156, column: 57, scope: !1424, inlinedAt: !2657)
!2659 = !DILocation(line: 158, column: 12, scope: !1424, inlinedAt: !2657)
!2660 = !DILocation(line: 159, column: 6, scope: !1424, inlinedAt: !2657)
!2661 = !DILocation(line: 987, column: 10, scope: !2592, inlinedAt: !2649)
!2662 = !DILocation(line: 988, column: 1, scope: !2592, inlinedAt: !2649)
!2663 = !DILocation(line: 999, column: 3, scope: !2645)
!2664 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !212, file: !212, line: 1003, type: !2473, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2665)
!2665 = !{!2666, !2667}
!2666 = !DILocalVariable(name: "arg", arg: 1, scope: !2664, file: !212, line: 1003, type: !6)
!2667 = !DILocalVariable(name: "argsize", arg: 2, scope: !2664, file: !212, line: 1003, type: !69)
!2668 = !DILocation(line: 984, column: 26, scope: !2592, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 1005, column: 10, scope: !2664)
!2670 = !DILocation(line: 0, scope: !2664)
!2671 = !DILocation(line: 0, scope: !2592, inlinedAt: !2669)
!2672 = !DILocation(line: 984, column: 3, scope: !2592, inlinedAt: !2669)
!2673 = !DILocation(line: 985, column: 13, scope: !2592, inlinedAt: !2669)
!2674 = !DILocation(line: 0, scope: !1424, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 986, column: 3, scope: !2592, inlinedAt: !2669)
!2676 = !DILocation(line: 156, column: 57, scope: !1424, inlinedAt: !2675)
!2677 = !DILocation(line: 158, column: 12, scope: !1424, inlinedAt: !2675)
!2678 = !DILocation(line: 159, column: 6, scope: !1424, inlinedAt: !2675)
!2679 = !DILocation(line: 987, column: 10, scope: !2592, inlinedAt: !2669)
!2680 = !DILocation(line: 988, column: 1, scope: !2592, inlinedAt: !2669)
!2681 = !DILocation(line: 1005, column: 3, scope: !2664)
!2682 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !212, file: !212, line: 1009, type: !2484, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2683)
!2683 = !{!2684, !2685, !2686, !2687}
!2684 = !DILocalVariable(name: "n", arg: 1, scope: !2682, file: !212, line: 1009, type: !18)
!2685 = !DILocalVariable(name: "s", arg: 2, scope: !2682, file: !212, line: 1009, type: !214)
!2686 = !DILocalVariable(name: "arg", arg: 3, scope: !2682, file: !212, line: 1009, type: !6)
!2687 = !DILocalVariable(name: "options", scope: !2682, file: !212, line: 1011, type: !260)
!2688 = !DILocation(line: 195, column: 26, scope: !2495, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1012, column: 13, scope: !2682)
!2690 = !DILocation(line: 0, scope: !2682)
!2691 = !DILocation(line: 1011, column: 3, scope: !2682)
!2692 = !DILocation(line: 1011, column: 26, scope: !2682)
!2693 = !DILocation(line: 1012, column: 13, scope: !2682)
!2694 = !DILocation(line: 0, scope: !2495, inlinedAt: !2689)
!2695 = !{!2696}
!2696 = distinct !{!2696, !2697, !"quoting_options_from_style: argument 0"}
!2697 = distinct !{!2697, !"quoting_options_from_style"}
!2698 = !DILocation(line: 196, column: 13, scope: !2507, inlinedAt: !2689)
!2699 = !DILocation(line: 196, column: 7, scope: !2495, inlinedAt: !2689)
!2700 = !DILocation(line: 197, column: 5, scope: !2507, inlinedAt: !2689)
!2701 = !DILocation(line: 0, scope: !1424, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 1013, column: 3, scope: !2682)
!2703 = !DILocation(line: 156, column: 57, scope: !1424, inlinedAt: !2702)
!2704 = !DILocation(line: 158, column: 12, scope: !1424, inlinedAt: !2702)
!2705 = !DILocation(line: 159, column: 6, scope: !1424, inlinedAt: !2702)
!2706 = !DILocation(line: 1014, column: 10, scope: !2682)
!2707 = !DILocation(line: 1015, column: 1, scope: !2682)
!2708 = !DILocation(line: 1014, column: 3, scope: !2682)
!2709 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !212, file: !212, line: 1018, type: !2710, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!25, !18, !6, !6, !6}
!2712 = !{!2713, !2714, !2715, !2716}
!2713 = !DILocalVariable(name: "n", arg: 1, scope: !2709, file: !212, line: 1018, type: !18)
!2714 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2709, file: !212, line: 1018, type: !6)
!2715 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2709, file: !212, line: 1019, type: !6)
!2716 = !DILocalVariable(name: "arg", arg: 4, scope: !2709, file: !212, line: 1019, type: !6)
!2717 = !DILocalVariable(name: "o", scope: !2718, file: !212, line: 1030, type: !260)
!2718 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !212, file: !212, line: 1026, type: !2719, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!25, !18, !6, !6, !6, !69}
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2717}
!2722 = !DILocalVariable(name: "n", arg: 1, scope: !2718, file: !212, line: 1026, type: !18)
!2723 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2718, file: !212, line: 1026, type: !6)
!2724 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2718, file: !212, line: 1027, type: !6)
!2725 = !DILocalVariable(name: "arg", arg: 4, scope: !2718, file: !212, line: 1028, type: !6)
!2726 = !DILocalVariable(name: "argsize", arg: 5, scope: !2718, file: !212, line: 1028, type: !69)
!2727 = !DILocation(line: 1030, column: 26, scope: !2718, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1021, column: 10, scope: !2709)
!2729 = !DILocation(line: 0, scope: !2709)
!2730 = !DILocation(line: 0, scope: !2718, inlinedAt: !2728)
!2731 = !DILocation(line: 1030, column: 3, scope: !2718, inlinedAt: !2728)
!2732 = !DILocation(line: 1030, column: 30, scope: !2718, inlinedAt: !2728)
!2733 = !DILocation(line: 0, scope: !1465, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1031, column: 3, scope: !2718, inlinedAt: !2728)
!2735 = !DILocation(line: 184, column: 6, scope: !1465, inlinedAt: !2734)
!2736 = !DILocation(line: 184, column: 12, scope: !1465, inlinedAt: !2734)
!2737 = !DILocation(line: 185, column: 8, scope: !1479, inlinedAt: !2734)
!2738 = !DILocation(line: 185, column: 23, scope: !1479, inlinedAt: !2734)
!2739 = !DILocation(line: 185, column: 19, scope: !1479, inlinedAt: !2734)
!2740 = !DILocation(line: 186, column: 5, scope: !1479, inlinedAt: !2734)
!2741 = !DILocation(line: 187, column: 6, scope: !1465, inlinedAt: !2734)
!2742 = !DILocation(line: 187, column: 17, scope: !1465, inlinedAt: !2734)
!2743 = !DILocation(line: 188, column: 6, scope: !1465, inlinedAt: !2734)
!2744 = !DILocation(line: 188, column: 18, scope: !1465, inlinedAt: !2734)
!2745 = !DILocation(line: 1032, column: 10, scope: !2718, inlinedAt: !2728)
!2746 = !DILocation(line: 1033, column: 1, scope: !2718, inlinedAt: !2728)
!2747 = !DILocation(line: 1021, column: 3, scope: !2709)
!2748 = !DILocation(line: 0, scope: !2718)
!2749 = !DILocation(line: 1030, column: 3, scope: !2718)
!2750 = !DILocation(line: 1030, column: 26, scope: !2718)
!2751 = !DILocation(line: 1030, column: 30, scope: !2718)
!2752 = !DILocation(line: 0, scope: !1465, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1031, column: 3, scope: !2718)
!2754 = !DILocation(line: 184, column: 6, scope: !1465, inlinedAt: !2753)
!2755 = !DILocation(line: 184, column: 12, scope: !1465, inlinedAt: !2753)
!2756 = !DILocation(line: 185, column: 8, scope: !1479, inlinedAt: !2753)
!2757 = !DILocation(line: 185, column: 23, scope: !1479, inlinedAt: !2753)
!2758 = !DILocation(line: 185, column: 19, scope: !1479, inlinedAt: !2753)
!2759 = !DILocation(line: 186, column: 5, scope: !1479, inlinedAt: !2753)
!2760 = !DILocation(line: 187, column: 6, scope: !1465, inlinedAt: !2753)
!2761 = !DILocation(line: 187, column: 17, scope: !1465, inlinedAt: !2753)
!2762 = !DILocation(line: 188, column: 6, scope: !1465, inlinedAt: !2753)
!2763 = !DILocation(line: 188, column: 18, scope: !1465, inlinedAt: !2753)
!2764 = !DILocation(line: 1032, column: 10, scope: !2718)
!2765 = !DILocation(line: 1033, column: 1, scope: !2718)
!2766 = !DILocation(line: 1032, column: 3, scope: !2718)
!2767 = distinct !DISubprogram(name: "quotearg_custom", scope: !212, file: !212, line: 1036, type: !2768, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!25, !6, !6, !6}
!2770 = !{!2771, !2772, !2773}
!2771 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2767, file: !212, line: 1036, type: !6)
!2772 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2767, file: !212, line: 1036, type: !6)
!2773 = !DILocalVariable(name: "arg", arg: 3, scope: !2767, file: !212, line: 1037, type: !6)
!2774 = !DILocation(line: 1030, column: 26, scope: !2718, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1021, column: 10, scope: !2709, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 1039, column: 10, scope: !2767)
!2777 = !DILocation(line: 0, scope: !2767)
!2778 = !DILocation(line: 0, scope: !2709, inlinedAt: !2776)
!2779 = !DILocation(line: 0, scope: !2718, inlinedAt: !2775)
!2780 = !DILocation(line: 1030, column: 3, scope: !2718, inlinedAt: !2775)
!2781 = !DILocation(line: 1030, column: 30, scope: !2718, inlinedAt: !2775)
!2782 = !DILocation(line: 0, scope: !1465, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1031, column: 3, scope: !2718, inlinedAt: !2775)
!2784 = !DILocation(line: 184, column: 6, scope: !1465, inlinedAt: !2783)
!2785 = !DILocation(line: 184, column: 12, scope: !1465, inlinedAt: !2783)
!2786 = !DILocation(line: 185, column: 8, scope: !1479, inlinedAt: !2783)
!2787 = !DILocation(line: 185, column: 23, scope: !1479, inlinedAt: !2783)
!2788 = !DILocation(line: 185, column: 19, scope: !1479, inlinedAt: !2783)
!2789 = !DILocation(line: 186, column: 5, scope: !1479, inlinedAt: !2783)
!2790 = !DILocation(line: 187, column: 6, scope: !1465, inlinedAt: !2783)
!2791 = !DILocation(line: 187, column: 17, scope: !1465, inlinedAt: !2783)
!2792 = !DILocation(line: 188, column: 6, scope: !1465, inlinedAt: !2783)
!2793 = !DILocation(line: 188, column: 18, scope: !1465, inlinedAt: !2783)
!2794 = !DILocation(line: 1032, column: 10, scope: !2718, inlinedAt: !2775)
!2795 = !DILocation(line: 1033, column: 1, scope: !2718, inlinedAt: !2775)
!2796 = !DILocation(line: 1039, column: 3, scope: !2767)
!2797 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !212, file: !212, line: 1043, type: !2798, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!25, !6, !6, !6, !69}
!2800 = !{!2801, !2802, !2803, !2804}
!2801 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2797, file: !212, line: 1043, type: !6)
!2802 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2797, file: !212, line: 1043, type: !6)
!2803 = !DILocalVariable(name: "arg", arg: 3, scope: !2797, file: !212, line: 1044, type: !6)
!2804 = !DILocalVariable(name: "argsize", arg: 4, scope: !2797, file: !212, line: 1044, type: !69)
!2805 = !DILocation(line: 1030, column: 26, scope: !2718, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1046, column: 10, scope: !2797)
!2807 = !DILocation(line: 0, scope: !2797)
!2808 = !DILocation(line: 0, scope: !2718, inlinedAt: !2806)
!2809 = !DILocation(line: 1030, column: 3, scope: !2718, inlinedAt: !2806)
!2810 = !DILocation(line: 1030, column: 30, scope: !2718, inlinedAt: !2806)
!2811 = !DILocation(line: 0, scope: !1465, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1031, column: 3, scope: !2718, inlinedAt: !2806)
!2813 = !DILocation(line: 184, column: 6, scope: !1465, inlinedAt: !2812)
!2814 = !DILocation(line: 184, column: 12, scope: !1465, inlinedAt: !2812)
!2815 = !DILocation(line: 185, column: 8, scope: !1479, inlinedAt: !2812)
!2816 = !DILocation(line: 185, column: 23, scope: !1479, inlinedAt: !2812)
!2817 = !DILocation(line: 185, column: 19, scope: !1479, inlinedAt: !2812)
!2818 = !DILocation(line: 186, column: 5, scope: !1479, inlinedAt: !2812)
!2819 = !DILocation(line: 187, column: 6, scope: !1465, inlinedAt: !2812)
!2820 = !DILocation(line: 187, column: 17, scope: !1465, inlinedAt: !2812)
!2821 = !DILocation(line: 188, column: 6, scope: !1465, inlinedAt: !2812)
!2822 = !DILocation(line: 188, column: 18, scope: !1465, inlinedAt: !2812)
!2823 = !DILocation(line: 1032, column: 10, scope: !2718, inlinedAt: !2806)
!2824 = !DILocation(line: 1033, column: 1, scope: !2718, inlinedAt: !2806)
!2825 = !DILocation(line: 1046, column: 3, scope: !2797)
!2826 = distinct !DISubprogram(name: "quote_n_mem", scope: !212, file: !212, line: 1061, type: !2827, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!6, !18, !6, !69}
!2829 = !{!2830, !2831, !2832}
!2830 = !DILocalVariable(name: "n", arg: 1, scope: !2826, file: !212, line: 1061, type: !18)
!2831 = !DILocalVariable(name: "arg", arg: 2, scope: !2826, file: !212, line: 1061, type: !6)
!2832 = !DILocalVariable(name: "argsize", arg: 3, scope: !2826, file: !212, line: 1061, type: !69)
!2833 = !DILocation(line: 0, scope: !2826)
!2834 = !DILocation(line: 1063, column: 10, scope: !2826)
!2835 = !DILocation(line: 1063, column: 3, scope: !2826)
!2836 = distinct !DISubprogram(name: "quote_mem", scope: !212, file: !212, line: 1067, type: !2837, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!6, !6, !69}
!2839 = !{!2840, !2841}
!2840 = !DILocalVariable(name: "arg", arg: 1, scope: !2836, file: !212, line: 1067, type: !6)
!2841 = !DILocalVariable(name: "argsize", arg: 2, scope: !2836, file: !212, line: 1067, type: !69)
!2842 = !DILocation(line: 0, scope: !2836)
!2843 = !DILocation(line: 0, scope: !2826, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 1069, column: 10, scope: !2836)
!2845 = !DILocation(line: 1063, column: 10, scope: !2826, inlinedAt: !2844)
!2846 = !DILocation(line: 1069, column: 3, scope: !2836)
!2847 = distinct !DISubprogram(name: "quote_n", scope: !212, file: !212, line: 1073, type: !2848, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!6, !18, !6}
!2850 = !{!2851, !2852}
!2851 = !DILocalVariable(name: "n", arg: 1, scope: !2847, file: !212, line: 1073, type: !18)
!2852 = !DILocalVariable(name: "arg", arg: 2, scope: !2847, file: !212, line: 1073, type: !6)
!2853 = !DILocation(line: 0, scope: !2847)
!2854 = !DILocation(line: 0, scope: !2826, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1075, column: 10, scope: !2847)
!2856 = !DILocation(line: 1063, column: 10, scope: !2826, inlinedAt: !2855)
!2857 = !DILocation(line: 1075, column: 3, scope: !2847)
!2858 = distinct !DISubprogram(name: "quote", scope: !212, file: !212, line: 1079, type: !424, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !211, retainedNodes: !2859)
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "arg", arg: 1, scope: !2858, file: !212, line: 1079, type: !6)
!2861 = !DILocation(line: 0, scope: !2858)
!2862 = !DILocation(line: 0, scope: !2847, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1081, column: 10, scope: !2858)
!2864 = !DILocation(line: 0, scope: !2826, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1075, column: 10, scope: !2847, inlinedAt: !2863)
!2866 = !DILocation(line: 1063, column: 10, scope: !2826, inlinedAt: !2865)
!2867 = !DILocation(line: 1081, column: 3, scope: !2858)
!2868 = distinct !DISubprogram(name: "version_etc_arn", scope: !450, file: !450, line: 61, type: !2869, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2875)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !2871, !6, !6, !6, !2874, !69}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2873, line: 7, baseType: !460)
!2873 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881}
!2876 = !DILocalVariable(name: "stream", arg: 1, scope: !2868, file: !450, line: 61, type: !2871)
!2877 = !DILocalVariable(name: "command_name", arg: 2, scope: !2868, file: !450, line: 62, type: !6)
!2878 = !DILocalVariable(name: "package", arg: 3, scope: !2868, file: !450, line: 62, type: !6)
!2879 = !DILocalVariable(name: "version", arg: 4, scope: !2868, file: !450, line: 63, type: !6)
!2880 = !DILocalVariable(name: "authors", arg: 5, scope: !2868, file: !450, line: 64, type: !2874)
!2881 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2868, file: !450, line: 64, type: !69)
!2882 = !DILocation(line: 0, scope: !2868)
!2883 = !DILocation(line: 66, column: 7, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2868, file: !450, line: 66, column: 7)
!2885 = !DILocation(line: 66, column: 7, scope: !2868)
!2886 = !DILocation(line: 67, column: 5, scope: !2884)
!2887 = !DILocation(line: 69, column: 5, scope: !2884)
!2888 = !DILocation(line: 83, column: 3, scope: !2868)
!2889 = !DILocation(line: 85, column: 3, scope: !2868)
!2890 = !DILocation(line: 88, column: 3, scope: !2868)
!2891 = !DILocation(line: 95, column: 3, scope: !2868)
!2892 = !DILocation(line: 97, column: 3, scope: !2868)
!2893 = !DILocation(line: 105, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2868, file: !450, line: 98, column: 5)
!2895 = !DILocation(line: 106, column: 7, scope: !2894)
!2896 = !DILocation(line: 109, column: 7, scope: !2894)
!2897 = !DILocation(line: 110, column: 7, scope: !2894)
!2898 = !DILocation(line: 113, column: 7, scope: !2894)
!2899 = !DILocation(line: 115, column: 7, scope: !2894)
!2900 = !DILocation(line: 120, column: 7, scope: !2894)
!2901 = !DILocation(line: 122, column: 7, scope: !2894)
!2902 = !DILocation(line: 127, column: 7, scope: !2894)
!2903 = !DILocation(line: 129, column: 7, scope: !2894)
!2904 = !DILocation(line: 134, column: 7, scope: !2894)
!2905 = !DILocation(line: 137, column: 7, scope: !2894)
!2906 = !DILocation(line: 142, column: 7, scope: !2894)
!2907 = !DILocation(line: 145, column: 7, scope: !2894)
!2908 = !DILocation(line: 150, column: 7, scope: !2894)
!2909 = !DILocation(line: 154, column: 7, scope: !2894)
!2910 = !DILocation(line: 159, column: 7, scope: !2894)
!2911 = !DILocation(line: 163, column: 7, scope: !2894)
!2912 = !DILocation(line: 170, column: 7, scope: !2894)
!2913 = !DILocation(line: 174, column: 7, scope: !2894)
!2914 = !DILocation(line: 176, column: 1, scope: !2868)
!2915 = distinct !DISubprogram(name: "version_etc_ar", scope: !450, file: !450, line: 183, type: !2916, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{null, !2871, !6, !6, !6, !2874}
!2918 = !{!2919, !2920, !2921, !2922, !2923, !2924}
!2919 = !DILocalVariable(name: "stream", arg: 1, scope: !2915, file: !450, line: 183, type: !2871)
!2920 = !DILocalVariable(name: "command_name", arg: 2, scope: !2915, file: !450, line: 184, type: !6)
!2921 = !DILocalVariable(name: "package", arg: 3, scope: !2915, file: !450, line: 184, type: !6)
!2922 = !DILocalVariable(name: "version", arg: 4, scope: !2915, file: !450, line: 185, type: !6)
!2923 = !DILocalVariable(name: "authors", arg: 5, scope: !2915, file: !450, line: 185, type: !2874)
!2924 = !DILocalVariable(name: "n_authors", scope: !2915, file: !450, line: 187, type: !69)
!2925 = !DILocation(line: 0, scope: !2915)
!2926 = !DILocation(line: 189, column: 8, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2915, file: !450, line: 189, column: 3)
!2928 = !DILocation(line: 0, scope: !2927)
!2929 = !DILocation(line: 189, column: 23, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !450, line: 189, column: 3)
!2931 = !DILocation(line: 189, column: 3, scope: !2927)
!2932 = !DILocation(line: 189, column: 52, scope: !2930)
!2933 = distinct !{!2933, !2931, !2934}
!2934 = !DILocation(line: 190, column: 5, scope: !2927)
!2935 = !DILocation(line: 191, column: 3, scope: !2915)
!2936 = !DILocation(line: 192, column: 1, scope: !2915)
!2937 = distinct !DISubprogram(name: "version_etc_va", scope: !450, file: !450, line: 199, type: !2938, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2947)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2871, !6, !6, !6, !2940}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !450, line: 192, size: 192, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2941, file: !450, line: 192, baseType: !159, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2941, file: !450, line: 192, baseType: !159, size: 32, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2941, file: !450, line: 192, baseType: !67, size: 64, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2941, file: !450, line: 192, baseType: !67, size: 64, offset: 128)
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953, !2954}
!2948 = !DILocalVariable(name: "stream", arg: 1, scope: !2937, file: !450, line: 199, type: !2871)
!2949 = !DILocalVariable(name: "command_name", arg: 2, scope: !2937, file: !450, line: 200, type: !6)
!2950 = !DILocalVariable(name: "package", arg: 3, scope: !2937, file: !450, line: 200, type: !6)
!2951 = !DILocalVariable(name: "version", arg: 4, scope: !2937, file: !450, line: 201, type: !6)
!2952 = !DILocalVariable(name: "authors", arg: 5, scope: !2937, file: !450, line: 201, type: !2940)
!2953 = !DILocalVariable(name: "n_authors", scope: !2937, file: !450, line: 203, type: !69)
!2954 = !DILocalVariable(name: "authtab", scope: !2937, file: !450, line: 204, type: !2955)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !326)
!2956 = !DILocation(line: 0, scope: !2937)
!2957 = !DILocation(line: 204, column: 3, scope: !2937)
!2958 = !DILocation(line: 204, column: 15, scope: !2937)
!2959 = !DILocation(line: 0, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !450, line: 206, column: 3)
!2961 = distinct !DILexicalBlock(scope: !2937, file: !450, line: 206, column: 3)
!2962 = !DILocation(line: 208, column: 35, scope: !2960)
!2963 = !DILocation(line: 208, column: 14, scope: !2960)
!2964 = !DILocation(line: 208, column: 33, scope: !2960)
!2965 = !DILocation(line: 208, column: 67, scope: !2960)
!2966 = !DILocation(line: 206, column: 3, scope: !2961)
!2967 = !DILocation(line: 0, scope: !2961)
!2968 = !DILocation(line: 211, column: 3, scope: !2937)
!2969 = !DILocation(line: 213, column: 1, scope: !2937)
!2970 = distinct !DISubprogram(name: "version_etc", scope: !450, file: !450, line: 230, type: !2971, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2871, !6, !6, !6, null}
!2973 = !{!2974, !2975, !2976, !2977, !2978}
!2974 = !DILocalVariable(name: "stream", arg: 1, scope: !2970, file: !450, line: 230, type: !2871)
!2975 = !DILocalVariable(name: "command_name", arg: 2, scope: !2970, file: !450, line: 231, type: !6)
!2976 = !DILocalVariable(name: "package", arg: 3, scope: !2970, file: !450, line: 231, type: !6)
!2977 = !DILocalVariable(name: "version", arg: 4, scope: !2970, file: !450, line: 232, type: !6)
!2978 = !DILocalVariable(name: "authors", scope: !2970, file: !450, line: 234, type: !2979)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 52, baseType: !2980)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1297, line: 32, baseType: !2981)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !450, line: 234, baseType: !2982)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2941, size: 192, elements: !52)
!2983 = !DILocation(line: 0, scope: !2970)
!2984 = !DILocation(line: 234, column: 3, scope: !2970)
!2985 = !DILocation(line: 234, column: 11, scope: !2970)
!2986 = !DILocation(line: 236, column: 3, scope: !2970)
!2987 = !DILocation(line: 237, column: 3, scope: !2970)
!2988 = !DILocation(line: 238, column: 3, scope: !2970)
!2989 = !DILocation(line: 239, column: 1, scope: !2970)
!2990 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !450, file: !450, line: 242, type: !316, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4)
!2991 = !DILocation(line: 244, column: 3, scope: !2990)
!2992 = !DILocation(line: 249, column: 3, scope: !2990)
!2993 = !DILocation(line: 255, column: 3, scope: !2990)
!2994 = !DILocation(line: 260, column: 3, scope: !2990)
!2995 = !DILocation(line: 262, column: 1, scope: !2990)
!2996 = distinct !DISubprogram(name: "xnmalloc", scope: !249, file: !249, line: 99, type: !2997, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!67, !69, !69}
!2999 = !{!3000, !3001}
!3000 = !DILocalVariable(name: "n", arg: 1, scope: !2996, file: !249, line: 99, type: !69)
!3001 = !DILocalVariable(name: "s", arg: 2, scope: !2996, file: !249, line: 99, type: !69)
!3002 = !DILocation(line: 0, scope: !2996)
!3003 = !DILocation(line: 101, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2996, file: !249, line: 101, column: 7)
!3005 = !DILocation(line: 101, column: 7, scope: !2996)
!3006 = !DILocation(line: 102, column: 5, scope: !3004)
!3007 = !DILocation(line: 103, column: 21, scope: !2996)
!3008 = !DILocalVariable(name: "n", arg: 1, scope: !3009, file: !492, line: 39, type: !69)
!3009 = distinct !DISubprogram(name: "xmalloc", scope: !492, file: !492, line: 39, type: !3010, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!67, !69}
!3012 = !{!3008, !3013}
!3013 = !DILocalVariable(name: "p", scope: !3009, file: !492, line: 41, type: !67)
!3014 = !DILocation(line: 0, scope: !3009, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 103, column: 10, scope: !2996)
!3016 = !DILocation(line: 41, column: 13, scope: !3009, inlinedAt: !3015)
!3017 = !DILocation(line: 42, column: 8, scope: !3018, inlinedAt: !3015)
!3018 = distinct !DILexicalBlock(scope: !3009, file: !492, line: 42, column: 7)
!3019 = !DILocation(line: 42, column: 15, scope: !3018, inlinedAt: !3015)
!3020 = !DILocation(line: 42, column: 10, scope: !3018, inlinedAt: !3015)
!3021 = !DILocation(line: 43, column: 5, scope: !3018, inlinedAt: !3015)
!3022 = !DILocation(line: 103, column: 3, scope: !2996)
!3023 = !DILocation(line: 0, scope: !3009)
!3024 = !DILocation(line: 41, column: 13, scope: !3009)
!3025 = !DILocation(line: 42, column: 8, scope: !3018)
!3026 = !DILocation(line: 42, column: 15, scope: !3018)
!3027 = !DILocation(line: 42, column: 10, scope: !3018)
!3028 = !DILocation(line: 43, column: 5, scope: !3018)
!3029 = !DILocation(line: 44, column: 3, scope: !3009)
!3030 = distinct !DISubprogram(name: "xnrealloc", scope: !249, file: !249, line: 112, type: !3031, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!67, !67, !69, !69}
!3033 = !{!3034, !3035, !3036}
!3034 = !DILocalVariable(name: "p", arg: 1, scope: !3030, file: !249, line: 112, type: !67)
!3035 = !DILocalVariable(name: "n", arg: 2, scope: !3030, file: !249, line: 112, type: !69)
!3036 = !DILocalVariable(name: "s", arg: 3, scope: !3030, file: !249, line: 112, type: !69)
!3037 = !DILocation(line: 0, scope: !3030)
!3038 = !DILocation(line: 114, column: 7, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3030, file: !249, line: 114, column: 7)
!3040 = !DILocation(line: 114, column: 7, scope: !3030)
!3041 = !DILocation(line: 115, column: 5, scope: !3039)
!3042 = !DILocation(line: 116, column: 25, scope: !3030)
!3043 = !DILocalVariable(name: "p", arg: 1, scope: !3044, file: !492, line: 51, type: !67)
!3044 = distinct !DISubprogram(name: "xrealloc", scope: !492, file: !492, line: 51, type: !3045, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!67, !67, !69}
!3047 = !{!3043, !3048}
!3048 = !DILocalVariable(name: "n", arg: 2, scope: !3044, file: !492, line: 51, type: !69)
!3049 = !DILocation(line: 0, scope: !3044, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 116, column: 10, scope: !3030)
!3051 = !DILocation(line: 53, column: 8, scope: !3052, inlinedAt: !3050)
!3052 = distinct !DILexicalBlock(scope: !3044, file: !492, line: 53, column: 7)
!3053 = !DILocation(line: 53, column: 13, scope: !3052, inlinedAt: !3050)
!3054 = !DILocation(line: 53, column: 10, scope: !3052, inlinedAt: !3050)
!3055 = !DILocation(line: 57, column: 7, scope: !3056, inlinedAt: !3050)
!3056 = distinct !DILexicalBlock(scope: !3052, file: !492, line: 54, column: 5)
!3057 = !DILocation(line: 58, column: 7, scope: !3056, inlinedAt: !3050)
!3058 = !DILocation(line: 61, column: 7, scope: !3044, inlinedAt: !3050)
!3059 = !DILocation(line: 62, column: 8, scope: !3060, inlinedAt: !3050)
!3060 = distinct !DILexicalBlock(scope: !3044, file: !492, line: 62, column: 7)
!3061 = !DILocation(line: 62, column: 13, scope: !3060, inlinedAt: !3050)
!3062 = !DILocation(line: 62, column: 10, scope: !3060, inlinedAt: !3050)
!3063 = !DILocation(line: 63, column: 5, scope: !3060, inlinedAt: !3050)
!3064 = !DILocation(line: 116, column: 3, scope: !3030)
!3065 = !DILocation(line: 0, scope: !3044)
!3066 = !DILocation(line: 53, column: 8, scope: !3052)
!3067 = !DILocation(line: 53, column: 13, scope: !3052)
!3068 = !DILocation(line: 53, column: 10, scope: !3052)
!3069 = !DILocation(line: 57, column: 7, scope: !3056)
!3070 = !DILocation(line: 58, column: 7, scope: !3056)
!3071 = !DILocation(line: 61, column: 7, scope: !3044)
!3072 = !DILocation(line: 62, column: 8, scope: !3060)
!3073 = !DILocation(line: 62, column: 13, scope: !3060)
!3074 = !DILocation(line: 62, column: 10, scope: !3060)
!3075 = !DILocation(line: 63, column: 5, scope: !3060)
!3076 = !DILocation(line: 65, column: 1, scope: !3044)
!3077 = !DILocation(line: 0, scope: !495)
!3078 = !DILocation(line: 176, column: 14, scope: !495)
!3079 = !DILocation(line: 178, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !495, file: !249, line: 178, column: 7)
!3081 = !DILocation(line: 178, column: 7, scope: !495)
!3082 = !DILocation(line: 180, column: 13, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !249, line: 180, column: 11)
!3084 = distinct !DILexicalBlock(scope: !3080, file: !249, line: 179, column: 5)
!3085 = !DILocation(line: 180, column: 11, scope: !3084)
!3086 = !DILocation(line: 188, column: 30, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3083, file: !249, line: 181, column: 9)
!3088 = !DILocation(line: 189, column: 16, scope: !3087)
!3089 = !DILocation(line: 189, column: 13, scope: !3087)
!3090 = !DILocation(line: 190, column: 9, scope: !3087)
!3091 = !DILocation(line: 191, column: 11, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3084, file: !249, line: 191, column: 11)
!3093 = !DILocation(line: 191, column: 11, scope: !3084)
!3094 = !DILocation(line: 206, column: 7, scope: !495)
!3095 = !DILocation(line: 207, column: 25, scope: !495)
!3096 = !DILocation(line: 0, scope: !3044, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 207, column: 10, scope: !495)
!3098 = !DILocation(line: 53, column: 10, scope: !3052, inlinedAt: !3097)
!3099 = !DILocation(line: 192, column: 9, scope: !3092)
!3100 = !DILocation(line: 200, column: 69, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !249, line: 200, column: 11)
!3102 = distinct !DILexicalBlock(scope: !3080, file: !249, line: 195, column: 5)
!3103 = !DILocation(line: 201, column: 11, scope: !3101)
!3104 = !DILocation(line: 200, column: 11, scope: !3102)
!3105 = !DILocation(line: 202, column: 9, scope: !3101)
!3106 = !DILocation(line: 203, column: 14, scope: !3102)
!3107 = !DILocation(line: 203, column: 18, scope: !3102)
!3108 = !DILocation(line: 203, column: 9, scope: !3102)
!3109 = !DILocation(line: 53, column: 8, scope: !3052, inlinedAt: !3097)
!3110 = !DILocation(line: 57, column: 7, scope: !3056, inlinedAt: !3097)
!3111 = !DILocation(line: 58, column: 7, scope: !3056, inlinedAt: !3097)
!3112 = !DILocation(line: 61, column: 7, scope: !3044, inlinedAt: !3097)
!3113 = !DILocation(line: 62, column: 8, scope: !3060, inlinedAt: !3097)
!3114 = !DILocation(line: 62, column: 13, scope: !3060, inlinedAt: !3097)
!3115 = !DILocation(line: 62, column: 10, scope: !3060, inlinedAt: !3097)
!3116 = !DILocation(line: 63, column: 5, scope: !3060, inlinedAt: !3097)
!3117 = !DILocation(line: 207, column: 3, scope: !495)
!3118 = distinct !DISubprogram(name: "xcharalloc", scope: !249, file: !249, line: 216, type: !2281, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3119)
!3119 = !{!3120}
!3120 = !DILocalVariable(name: "n", arg: 1, scope: !3118, file: !249, line: 216, type: !69)
!3121 = !DILocation(line: 0, scope: !3118)
!3122 = !DILocation(line: 0, scope: !3009, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 218, column: 10, scope: !3118)
!3124 = !DILocation(line: 41, column: 13, scope: !3009, inlinedAt: !3123)
!3125 = !DILocation(line: 42, column: 8, scope: !3018, inlinedAt: !3123)
!3126 = !DILocation(line: 42, column: 15, scope: !3018, inlinedAt: !3123)
!3127 = !DILocation(line: 42, column: 10, scope: !3018, inlinedAt: !3123)
!3128 = !DILocation(line: 43, column: 5, scope: !3018, inlinedAt: !3123)
!3129 = !DILocation(line: 218, column: 3, scope: !3118)
!3130 = distinct !DISubprogram(name: "x2realloc", scope: !492, file: !492, line: 74, type: !3131, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!67, !67, !498}
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "p", arg: 1, scope: !3130, file: !492, line: 74, type: !67)
!3135 = !DILocalVariable(name: "pn", arg: 2, scope: !3130, file: !492, line: 74, type: !498)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 0, scope: !495, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 76, column: 10, scope: !3130)
!3139 = !DILocation(line: 176, column: 14, scope: !495, inlinedAt: !3138)
!3140 = !DILocation(line: 178, column: 9, scope: !3080, inlinedAt: !3138)
!3141 = !DILocation(line: 178, column: 7, scope: !495, inlinedAt: !3138)
!3142 = !DILocation(line: 180, column: 13, scope: !3083, inlinedAt: !3138)
!3143 = !DILocation(line: 180, column: 11, scope: !3084, inlinedAt: !3138)
!3144 = !DILocation(line: 191, column: 11, scope: !3092, inlinedAt: !3138)
!3145 = !DILocation(line: 191, column: 11, scope: !3084, inlinedAt: !3138)
!3146 = !DILocation(line: 206, column: 7, scope: !495, inlinedAt: !3138)
!3147 = !DILocation(line: 0, scope: !3044, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 207, column: 10, scope: !495, inlinedAt: !3138)
!3149 = !DILocation(line: 53, column: 10, scope: !3052, inlinedAt: !3148)
!3150 = !DILocation(line: 192, column: 9, scope: !3092, inlinedAt: !3138)
!3151 = !DILocation(line: 201, column: 11, scope: !3101, inlinedAt: !3138)
!3152 = !DILocation(line: 200, column: 11, scope: !3102, inlinedAt: !3138)
!3153 = !DILocation(line: 202, column: 9, scope: !3101, inlinedAt: !3138)
!3154 = !DILocation(line: 203, column: 14, scope: !3102, inlinedAt: !3138)
!3155 = !DILocation(line: 203, column: 18, scope: !3102, inlinedAt: !3138)
!3156 = !DILocation(line: 203, column: 9, scope: !3102, inlinedAt: !3138)
!3157 = !DILocation(line: 53, column: 8, scope: !3052, inlinedAt: !3148)
!3158 = !DILocation(line: 57, column: 7, scope: !3056, inlinedAt: !3148)
!3159 = !DILocation(line: 58, column: 7, scope: !3056, inlinedAt: !3148)
!3160 = !DILocation(line: 61, column: 7, scope: !3044, inlinedAt: !3148)
!3161 = !DILocation(line: 62, column: 8, scope: !3060, inlinedAt: !3148)
!3162 = !DILocation(line: 62, column: 13, scope: !3060, inlinedAt: !3148)
!3163 = !DILocation(line: 62, column: 10, scope: !3060, inlinedAt: !3148)
!3164 = !DILocation(line: 63, column: 5, scope: !3060, inlinedAt: !3148)
!3165 = !DILocation(line: 76, column: 3, scope: !3130)
!3166 = distinct !DISubprogram(name: "xzalloc", scope: !492, file: !492, line: 84, type: !3010, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3167)
!3167 = !{!3168}
!3168 = !DILocalVariable(name: "n", arg: 1, scope: !3166, file: !492, line: 84, type: !69)
!3169 = !DILocation(line: 0, scope: !3166)
!3170 = !DILocalVariable(name: "n", arg: 1, scope: !3171, file: !492, line: 93, type: !69)
!3171 = distinct !DISubprogram(name: "xcalloc", scope: !492, file: !492, line: 93, type: !2997, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3172)
!3172 = !{!3170, !3173, !3174}
!3173 = !DILocalVariable(name: "s", arg: 2, scope: !3171, file: !492, line: 93, type: !69)
!3174 = !DILocalVariable(name: "p", scope: !3171, file: !492, line: 95, type: !67)
!3175 = !DILocation(line: 0, scope: !3171, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 86, column: 10, scope: !3166)
!3177 = !DILocation(line: 100, column: 7, scope: !3178, inlinedAt: !3176)
!3178 = distinct !DILexicalBlock(scope: !3171, file: !492, line: 100, column: 7)
!3179 = !DILocation(line: 101, column: 7, scope: !3178, inlinedAt: !3176)
!3180 = !DILocation(line: 101, column: 18, scope: !3178, inlinedAt: !3176)
!3181 = !DILocation(line: 101, column: 16, scope: !3178, inlinedAt: !3176)
!3182 = !DILocation(line: 100, column: 7, scope: !3171, inlinedAt: !3176)
!3183 = !DILocation(line: 102, column: 5, scope: !3178, inlinedAt: !3176)
!3184 = !DILocation(line: 86, column: 3, scope: !3166)
!3185 = !DILocation(line: 0, scope: !3171)
!3186 = !DILocation(line: 100, column: 7, scope: !3178)
!3187 = !DILocation(line: 101, column: 7, scope: !3178)
!3188 = !DILocation(line: 101, column: 18, scope: !3178)
!3189 = !DILocation(line: 101, column: 16, scope: !3178)
!3190 = !DILocation(line: 100, column: 7, scope: !3171)
!3191 = !DILocation(line: 102, column: 5, scope: !3178)
!3192 = !DILocation(line: 103, column: 3, scope: !3171)
!3193 = distinct !DISubprogram(name: "xmemdup", scope: !492, file: !492, line: 111, type: !3194, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3196)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!67, !252, !69}
!3196 = !{!3197, !3198}
!3197 = !DILocalVariable(name: "p", arg: 1, scope: !3193, file: !492, line: 111, type: !252)
!3198 = !DILocalVariable(name: "s", arg: 2, scope: !3193, file: !492, line: 111, type: !69)
!3199 = !DILocation(line: 0, scope: !3193)
!3200 = !DILocation(line: 0, scope: !3009, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 113, column: 18, scope: !3193)
!3202 = !DILocation(line: 41, column: 13, scope: !3009, inlinedAt: !3201)
!3203 = !DILocation(line: 42, column: 8, scope: !3018, inlinedAt: !3201)
!3204 = !DILocation(line: 42, column: 15, scope: !3018, inlinedAt: !3201)
!3205 = !DILocation(line: 42, column: 10, scope: !3018, inlinedAt: !3201)
!3206 = !DILocation(line: 43, column: 5, scope: !3018, inlinedAt: !3201)
!3207 = !DILocalVariable(name: "__dest", arg: 1, scope: !3208, file: !1814, line: 31, type: !3211)
!3208 = distinct !DISubprogram(name: "memcpy", scope: !1814, file: !1814, line: 31, type: !3209, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3213)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!67, !3211, !3212, !69}
!3211 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!3212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!3213 = !{!3207, !3214, !3215}
!3214 = !DILocalVariable(name: "__src", arg: 2, scope: !3208, file: !1814, line: 31, type: !3212)
!3215 = !DILocalVariable(name: "__len", arg: 3, scope: !3208, file: !1814, line: 31, type: !69)
!3216 = !DILocation(line: 0, scope: !3208, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 113, column: 10, scope: !3193)
!3218 = !DILocation(line: 34, column: 10, scope: !3208, inlinedAt: !3217)
!3219 = !DILocation(line: 113, column: 3, scope: !3193)
!3220 = distinct !DISubprogram(name: "xstrdup", scope: !492, file: !492, line: 119, type: !83, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !491, retainedNodes: !3221)
!3221 = !{!3222}
!3222 = !DILocalVariable(name: "string", arg: 1, scope: !3220, file: !492, line: 119, type: !6)
!3223 = !DILocation(line: 0, scope: !3220)
!3224 = !DILocation(line: 121, column: 27, scope: !3220)
!3225 = !DILocation(line: 121, column: 43, scope: !3220)
!3226 = !DILocation(line: 0, scope: !3193, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 121, column: 10, scope: !3220)
!3228 = !DILocation(line: 0, scope: !3009, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 113, column: 18, scope: !3193, inlinedAt: !3227)
!3230 = !DILocation(line: 41, column: 13, scope: !3009, inlinedAt: !3229)
!3231 = !DILocation(line: 42, column: 8, scope: !3018, inlinedAt: !3229)
!3232 = !DILocation(line: 42, column: 15, scope: !3018, inlinedAt: !3229)
!3233 = !DILocation(line: 42, column: 10, scope: !3018, inlinedAt: !3229)
!3234 = !DILocation(line: 43, column: 5, scope: !3018, inlinedAt: !3229)
!3235 = !DILocation(line: 0, scope: !3208, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 113, column: 10, scope: !3193, inlinedAt: !3227)
!3237 = !DILocation(line: 34, column: 10, scope: !3208, inlinedAt: !3236)
!3238 = !DILocation(line: 121, column: 3, scope: !3220)
!3239 = distinct !DISubprogram(name: "xalloc_die", scope: !513, file: !513, line: 32, type: !316, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !512, retainedNodes: !4)
!3240 = !DILocation(line: 34, column: 10, scope: !3239)
!3241 = !DILocation(line: 34, column: 33, scope: !3239)
!3242 = !DILocation(line: 34, column: 3, scope: !3239)
!3243 = !DILocation(line: 40, column: 3, scope: !3239)
!3244 = distinct !DISubprogram(name: "rpl_calloc", scope: !516, file: !516, line: 42, type: !2997, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !3245)
!3245 = !{!3246, !3247, !3248, !3249}
!3246 = !DILocalVariable(name: "n", arg: 1, scope: !3244, file: !516, line: 42, type: !69)
!3247 = !DILocalVariable(name: "s", arg: 2, scope: !3244, file: !516, line: 42, type: !69)
!3248 = !DILocalVariable(name: "result", scope: !3244, file: !516, line: 44, type: !67)
!3249 = !DILocalVariable(name: "bytes", scope: !3250, file: !516, line: 56, type: !69)
!3250 = distinct !DILexicalBlock(scope: !3251, file: !516, line: 53, column: 5)
!3251 = distinct !DILexicalBlock(scope: !3244, file: !516, line: 47, column: 7)
!3252 = !DILocation(line: 0, scope: !3244)
!3253 = !DILocation(line: 47, column: 9, scope: !3251)
!3254 = !DILocation(line: 47, column: 19, scope: !3251)
!3255 = !DILocation(line: 47, column: 14, scope: !3251)
!3256 = !DILocation(line: 0, scope: !3250)
!3257 = !DILocation(line: 57, column: 21, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3250, file: !516, line: 57, column: 11)
!3259 = !DILocation(line: 57, column: 11, scope: !3250)
!3260 = !DILocation(line: 59, column: 11, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !516, line: 58, column: 9)
!3262 = !DILocation(line: 59, column: 17, scope: !3261)
!3263 = !DILocation(line: 65, column: 12, scope: !3244)
!3264 = !DILocation(line: 72, column: 3, scope: !3244)
!3265 = !DILocation(line: 73, column: 1, scope: !3244)
!3266 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !519, file: !519, line: 86, type: !3267, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !3273)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!69, !3269, !6, !69, !3270}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1555, line: 6, baseType: !3272)
!3272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !283, line: 21, baseType: !525)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279, !3280}
!3274 = !DILocalVariable(name: "pwc", arg: 1, scope: !3266, file: !519, line: 86, type: !3269)
!3275 = !DILocalVariable(name: "s", arg: 2, scope: !3266, file: !519, line: 86, type: !6)
!3276 = !DILocalVariable(name: "n", arg: 3, scope: !3266, file: !519, line: 86, type: !69)
!3277 = !DILocalVariable(name: "ps", arg: 4, scope: !3266, file: !519, line: 86, type: !3270)
!3278 = !DILocalVariable(name: "ret", scope: !3266, file: !519, line: 88, type: !69)
!3279 = !DILocalVariable(name: "wc", scope: !3266, file: !519, line: 89, type: !1559)
!3280 = !DILocalVariable(name: "uc", scope: !3281, file: !519, line: 156, type: !1432)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !519, line: 155, column: 5)
!3282 = distinct !DILexicalBlock(scope: !3266, file: !519, line: 154, column: 7)
!3283 = !DILocation(line: 0, scope: !3266)
!3284 = !DILocation(line: 89, column: 3, scope: !3266)
!3285 = !DILocation(line: 105, column: 9, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3266, file: !519, line: 105, column: 7)
!3287 = !DILocation(line: 105, column: 7, scope: !3266)
!3288 = !DILocation(line: 145, column: 9, scope: !3266)
!3289 = !DILocation(line: 154, column: 19, scope: !3282)
!3290 = !DILocation(line: 154, column: 31, scope: !3282)
!3291 = !DILocation(line: 154, column: 26, scope: !3282)
!3292 = !DILocation(line: 154, column: 41, scope: !3282)
!3293 = !DILocation(line: 154, column: 7, scope: !3266)
!3294 = !DILocation(line: 156, column: 26, scope: !3281)
!3295 = !DILocation(line: 0, scope: !3281)
!3296 = !DILocation(line: 157, column: 14, scope: !3281)
!3297 = !DILocation(line: 157, column: 12, scope: !3281)
!3298 = !DILocation(line: 163, column: 1, scope: !3266)
!3299 = distinct !DISubprogram(name: "close_stream", scope: !538, file: !538, line: 56, type: !3300, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !537, retainedNodes: !3304)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!18, !3302}
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2873, line: 7, baseType: !545)
!3304 = !{!3305, !3306, !3308, !3309}
!3305 = !DILocalVariable(name: "stream", arg: 1, scope: !3299, file: !538, line: 56, type: !3302)
!3306 = !DILocalVariable(name: "some_pending", scope: !3299, file: !538, line: 58, type: !3307)
!3307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3308 = !DILocalVariable(name: "prev_fail", scope: !3299, file: !538, line: 59, type: !3307)
!3309 = !DILocalVariable(name: "fclose_fail", scope: !3299, file: !538, line: 60, type: !3307)
!3310 = !DILocation(line: 0, scope: !3299)
!3311 = !DILocation(line: 58, column: 30, scope: !3299)
!3312 = !DILocalVariable(name: "__stream", arg: 1, scope: !3313, file: !3314, line: 135, type: !3302)
!3313 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3314, file: !3314, line: 135, type: !3300, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !537, retainedNodes: !3315)
!3314 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3315 = !{!3312}
!3316 = !DILocation(line: 0, scope: !3313, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 59, column: 27, scope: !3299)
!3318 = !DILocation(line: 137, column: 10, scope: !3313, inlinedAt: !3317)
!3319 = !{!3320, !1201, i64 0}
!3320 = !{!"_IO_FILE", !1201, i64 0, !1140, i64 8, !1140, i64 16, !1140, i64 24, !1140, i64 32, !1140, i64 40, !1140, i64 48, !1140, i64 56, !1140, i64 64, !1140, i64 72, !1140, i64 80, !1140, i64 88, !1140, i64 96, !1140, i64 104, !1201, i64 112, !1201, i64 116, !2317, i64 120, !1807, i64 128, !1141, i64 130, !1141, i64 131, !1140, i64 136, !2317, i64 144, !1140, i64 152, !1140, i64 160, !1140, i64 168, !1140, i64 176, !2317, i64 184, !1201, i64 192, !1141, i64 196}
!3321 = !DILocation(line: 59, column: 43, scope: !3299)
!3322 = !DILocation(line: 60, column: 29, scope: !3299)
!3323 = !DILocation(line: 60, column: 45, scope: !3299)
!3324 = !DILocation(line: 70, column: 17, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3299, file: !538, line: 70, column: 7)
!3326 = !DILocation(line: 58, column: 50, scope: !3299)
!3327 = !DILocation(line: 70, column: 33, scope: !3325)
!3328 = !DILocation(line: 70, column: 53, scope: !3325)
!3329 = !DILocation(line: 70, column: 59, scope: !3325)
!3330 = !DILocation(line: 70, column: 7, scope: !3299)
!3331 = !DILocation(line: 72, column: 11, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3325, file: !538, line: 71, column: 5)
!3333 = !DILocation(line: 73, column: 9, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3332, file: !538, line: 72, column: 11)
!3335 = !DILocation(line: 73, column: 15, scope: !3334)
!3336 = !DILocation(line: 78, column: 1, scope: !3299)
!3337 = distinct !DISubprogram(name: "hard_locale", scope: !577, file: !577, line: 27, type: !535, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !3338)
!3338 = !{!3339, !3340}
!3339 = !DILocalVariable(name: "category", arg: 1, scope: !3337, file: !577, line: 27, type: !18)
!3340 = !DILocalVariable(name: "locale", scope: !3337, file: !577, line: 29, type: !3341)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3342)
!3342 = !{!3343}
!3343 = !DISubrange(count: 257)
!3344 = !DILocation(line: 0, scope: !3337)
!3345 = !DILocation(line: 29, column: 3, scope: !3337)
!3346 = !DILocation(line: 29, column: 8, scope: !3337)
!3347 = !DILocation(line: 31, column: 7, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3337, file: !577, line: 31, column: 7)
!3349 = !DILocation(line: 31, column: 7, scope: !3337)
!3350 = !DILocation(line: 34, column: 12, scope: !3337)
!3351 = !DILocation(line: 34, column: 38, scope: !3337)
!3352 = !DILocation(line: 34, column: 41, scope: !3337)
!3353 = !DILocation(line: 34, column: 66, scope: !3337)
!3354 = !DILocation(line: 35, column: 1, scope: !3337)
!3355 = distinct !DISubprogram(name: "locale_charset", scope: !584, file: !584, line: 831, type: !306, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !583, retainedNodes: !3356)
!3356 = !{!3357}
!3357 = !DILocalVariable(name: "codeset", scope: !3355, file: !584, line: 833, type: !6)
!3358 = !DILocation(line: 847, column: 13, scope: !3355)
!3359 = !DILocation(line: 0, scope: !3355)
!3360 = !DILocation(line: 911, column: 15, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3355, file: !584, line: 911, column: 7)
!3362 = !DILocation(line: 911, column: 7, scope: !3355)
!3363 = !DILocation(line: 1070, column: 13, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !584, line: 1070, column: 13)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !584, line: 1060, column: 7)
!3366 = distinct !DILexicalBlock(scope: !3355, file: !584, line: 1019, column: 3)
!3367 = !DILocation(line: 1070, column: 24, scope: !3364)
!3368 = !DILocation(line: 1070, column: 13, scope: !3365)
!3369 = !DILocation(line: 1158, column: 3, scope: !3355)
!3370 = distinct !DISubprogram(name: "setlocale_null_r", scope: !977, file: !977, line: 269, type: !3371, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!18, !18, !25, !69}
!3373 = !{!3374, !3375, !3376}
!3374 = !DILocalVariable(name: "category", arg: 1, scope: !3370, file: !977, line: 269, type: !18)
!3375 = !DILocalVariable(name: "buf", arg: 2, scope: !3370, file: !977, line: 269, type: !25)
!3376 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3370, file: !977, line: 269, type: !69)
!3377 = !DILocation(line: 0, scope: !3370)
!3378 = !DILocalVariable(name: "category", arg: 1, scope: !3379, file: !977, line: 91, type: !18)
!3379 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !977, file: !977, line: 91, type: !3371, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !3380)
!3380 = !{!3378, !3381, !3382, !3383, !3384}
!3381 = !DILocalVariable(name: "buf", arg: 2, scope: !3379, file: !977, line: 91, type: !25)
!3382 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3379, file: !977, line: 91, type: !69)
!3383 = !DILocalVariable(name: "result", scope: !3379, file: !977, line: 140, type: !6)
!3384 = !DILocalVariable(name: "length", scope: !3385, file: !977, line: 154, type: !69)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !977, line: 153, column: 5)
!3386 = distinct !DILexicalBlock(scope: !3379, file: !977, line: 142, column: 7)
!3387 = !DILocation(line: 0, scope: !3379, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 274, column: 10, scope: !3370)
!3389 = !DILocalVariable(name: "category", arg: 1, scope: !3390, file: !977, line: 60, type: !18)
!3390 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !977, file: !977, line: 60, type: !3391, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !3393)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!6, !18}
!3393 = !{!3389, !3394}
!3394 = !DILocalVariable(name: "result", scope: !3390, file: !977, line: 62, type: !6)
!3395 = !DILocation(line: 0, scope: !3390, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 140, column: 24, scope: !3379, inlinedAt: !3388)
!3397 = !DILocation(line: 62, column: 24, scope: !3390, inlinedAt: !3396)
!3398 = !DILocation(line: 142, column: 14, scope: !3386, inlinedAt: !3388)
!3399 = !DILocation(line: 142, column: 7, scope: !3379, inlinedAt: !3388)
!3400 = !DILocation(line: 145, column: 19, scope: !3401, inlinedAt: !3388)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !977, line: 145, column: 11)
!3402 = distinct !DILexicalBlock(scope: !3386, file: !977, line: 143, column: 5)
!3403 = !DILocation(line: 145, column: 11, scope: !3402, inlinedAt: !3388)
!3404 = !DILocation(line: 149, column: 16, scope: !3401, inlinedAt: !3388)
!3405 = !DILocation(line: 149, column: 9, scope: !3401, inlinedAt: !3388)
!3406 = !DILocation(line: 154, column: 23, scope: !3385, inlinedAt: !3388)
!3407 = !DILocation(line: 0, scope: !3385, inlinedAt: !3388)
!3408 = !DILocation(line: 155, column: 18, scope: !3409, inlinedAt: !3388)
!3409 = distinct !DILexicalBlock(scope: !3385, file: !977, line: 155, column: 11)
!3410 = !DILocation(line: 155, column: 11, scope: !3385, inlinedAt: !3388)
!3411 = !DILocation(line: 157, column: 39, scope: !3412, inlinedAt: !3388)
!3412 = distinct !DILexicalBlock(scope: !3409, file: !977, line: 156, column: 9)
!3413 = !DILocalVariable(name: "__dest", arg: 1, scope: !3414, file: !1814, line: 31, type: !3211)
!3414 = distinct !DISubprogram(name: "memcpy", scope: !1814, file: !1814, line: 31, type: !3209, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !3415)
!3415 = !{!3413, !3416, !3417}
!3416 = !DILocalVariable(name: "__src", arg: 2, scope: !3414, file: !1814, line: 31, type: !3212)
!3417 = !DILocalVariable(name: "__len", arg: 3, scope: !3414, file: !1814, line: 31, type: !69)
!3418 = !DILocation(line: 0, scope: !3414, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 157, column: 11, scope: !3412, inlinedAt: !3388)
!3420 = !DILocation(line: 34, column: 10, scope: !3414, inlinedAt: !3419)
!3421 = !DILocation(line: 158, column: 11, scope: !3412, inlinedAt: !3388)
!3422 = !DILocation(line: 162, column: 23, scope: !3423, inlinedAt: !3388)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !977, line: 162, column: 15)
!3424 = distinct !DILexicalBlock(scope: !3409, file: !977, line: 161, column: 9)
!3425 = !DILocation(line: 162, column: 15, scope: !3424, inlinedAt: !3388)
!3426 = !DILocation(line: 167, column: 44, scope: !3427, inlinedAt: !3388)
!3427 = distinct !DILexicalBlock(scope: !3423, file: !977, line: 163, column: 13)
!3428 = !DILocation(line: 0, scope: !3414, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 167, column: 15, scope: !3427, inlinedAt: !3388)
!3430 = !DILocation(line: 34, column: 10, scope: !3414, inlinedAt: !3429)
!3431 = !DILocation(line: 168, column: 15, scope: !3427, inlinedAt: !3388)
!3432 = !DILocation(line: 168, column: 32, scope: !3427, inlinedAt: !3388)
!3433 = !DILocation(line: 169, column: 13, scope: !3427, inlinedAt: !3388)
!3434 = !DILocation(line: 0, scope: !3386, inlinedAt: !3388)
!3435 = !DILocation(line: 274, column: 3, scope: !3370)
!3436 = distinct !DISubprogram(name: "setlocale_null", scope: !977, file: !977, line: 301, type: !3391, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !976, retainedNodes: !3437)
!3437 = !{!3438}
!3438 = !DILocalVariable(name: "category", arg: 1, scope: !3436, file: !977, line: 301, type: !18)
!3439 = !DILocation(line: 0, scope: !3436)
!3440 = !DILocation(line: 0, scope: !3390, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 304, column: 10, scope: !3436)
!3442 = !DILocation(line: 62, column: 24, scope: !3390, inlinedAt: !3441)
!3443 = !DILocation(line: 304, column: 3, scope: !3436)
!3444 = distinct !DISubprogram(name: "rpl_fclose", scope: !980, file: !980, line: 58, type: !3445, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !979, retainedNodes: !3449)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!18, !3447}
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2873, line: 7, baseType: !986)
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DILocalVariable(name: "fp", arg: 1, scope: !3444, file: !980, line: 58, type: !3447)
!3451 = !DILocalVariable(name: "saved_errno", scope: !3444, file: !980, line: 60, type: !18)
!3452 = !DILocalVariable(name: "fd", scope: !3444, file: !980, line: 61, type: !18)
!3453 = !DILocalVariable(name: "result", scope: !3444, file: !980, line: 62, type: !18)
!3454 = !DILocation(line: 0, scope: !3444)
!3455 = !DILocation(line: 65, column: 8, scope: !3444)
!3456 = !DILocation(line: 66, column: 10, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3444, file: !980, line: 66, column: 7)
!3458 = !DILocation(line: 66, column: 7, scope: !3444)
!3459 = !DILocation(line: 67, column: 12, scope: !3457)
!3460 = !DILocation(line: 67, column: 5, scope: !3457)
!3461 = !DILocation(line: 72, column: 9, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3444, file: !980, line: 72, column: 7)
!3463 = !DILocation(line: 72, column: 23, scope: !3462)
!3464 = !DILocation(line: 72, column: 33, scope: !3462)
!3465 = !DILocation(line: 72, column: 26, scope: !3462)
!3466 = !DILocation(line: 72, column: 59, scope: !3462)
!3467 = !DILocation(line: 73, column: 7, scope: !3462)
!3468 = !DILocation(line: 73, column: 10, scope: !3462)
!3469 = !DILocation(line: 72, column: 7, scope: !3444)
!3470 = !DILocation(line: 100, column: 12, scope: !3444)
!3471 = !DILocation(line: 105, column: 7, scope: !3444)
!3472 = !DILocation(line: 74, column: 19, scope: !3462)
!3473 = !DILocation(line: 105, column: 19, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3444, file: !980, line: 105, column: 7)
!3475 = !DILocation(line: 107, column: 13, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3474, file: !980, line: 106, column: 5)
!3477 = !DILocation(line: 109, column: 5, scope: !3476)
!3478 = !DILocation(line: 112, column: 1, scope: !3444)
!3479 = distinct !DISubprogram(name: "rpl_fflush", scope: !1023, file: !1023, line: 129, type: !3480, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !3484)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!18, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2873, line: 7, baseType: !1029)
!3484 = !{!3485}
!3485 = !DILocalVariable(name: "stream", arg: 1, scope: !3479, file: !1023, line: 129, type: !3482)
!3486 = !DILocation(line: 0, scope: !3479)
!3487 = !DILocation(line: 150, column: 14, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3479, file: !1023, line: 150, column: 7)
!3489 = !DILocation(line: 150, column: 22, scope: !3488)
!3490 = !DILocation(line: 150, column: 27, scope: !3488)
!3491 = !DILocation(line: 150, column: 7, scope: !3479)
!3492 = !DILocation(line: 151, column: 12, scope: !3488)
!3493 = !DILocation(line: 151, column: 5, scope: !3488)
!3494 = !DILocalVariable(name: "fp", arg: 1, scope: !3495, file: !1023, line: 41, type: !3482)
!3495 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1023, file: !1023, line: 41, type: !3496, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !3482}
!3498 = !{!3494}
!3499 = !DILocation(line: 0, scope: !3495, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 156, column: 3, scope: !3479)
!3501 = !DILocation(line: 43, column: 11, scope: !3502, inlinedAt: !3500)
!3502 = distinct !DILexicalBlock(scope: !3495, file: !1023, line: 43, column: 7)
!3503 = !DILocation(line: 43, column: 18, scope: !3502, inlinedAt: !3500)
!3504 = !DILocation(line: 43, column: 7, scope: !3495, inlinedAt: !3500)
!3505 = !DILocation(line: 45, column: 5, scope: !3502, inlinedAt: !3500)
!3506 = !DILocation(line: 158, column: 10, scope: !3479)
!3507 = !DILocation(line: 158, column: 3, scope: !3479)
!3508 = !DILocation(line: 235, column: 1, scope: !3479)
!3509 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1064, file: !1064, line: 28, type: !3510, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !3515)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!18, !3512, !3514, !18}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2873, line: 7, baseType: !1070)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !173, line: 63, baseType: !43)
!3515 = !{!3516, !3517, !3518, !3519}
!3516 = !DILocalVariable(name: "fp", arg: 1, scope: !3509, file: !1064, line: 28, type: !3512)
!3517 = !DILocalVariable(name: "offset", arg: 2, scope: !3509, file: !1064, line: 28, type: !3514)
!3518 = !DILocalVariable(name: "whence", arg: 3, scope: !3509, file: !1064, line: 28, type: !18)
!3519 = !DILocalVariable(name: "pos", scope: !3520, file: !1064, line: 117, type: !3514)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !1064, line: 113, column: 5)
!3521 = distinct !DILexicalBlock(scope: !3509, file: !1064, line: 52, column: 7)
!3522 = !DILocation(line: 0, scope: !3509)
!3523 = !DILocation(line: 52, column: 11, scope: !3521)
!3524 = !{!3320, !1140, i64 16}
!3525 = !DILocation(line: 52, column: 31, scope: !3521)
!3526 = !{!3320, !1140, i64 8}
!3527 = !DILocation(line: 52, column: 24, scope: !3521)
!3528 = !DILocation(line: 53, column: 7, scope: !3521)
!3529 = !DILocation(line: 53, column: 14, scope: !3521)
!3530 = !{!3320, !1140, i64 40}
!3531 = !DILocation(line: 53, column: 35, scope: !3521)
!3532 = !{!3320, !1140, i64 32}
!3533 = !DILocation(line: 53, column: 28, scope: !3521)
!3534 = !DILocation(line: 54, column: 7, scope: !3521)
!3535 = !DILocation(line: 54, column: 14, scope: !3521)
!3536 = !{!3320, !1140, i64 72}
!3537 = !DILocation(line: 54, column: 28, scope: !3521)
!3538 = !DILocation(line: 52, column: 7, scope: !3509)
!3539 = !DILocation(line: 117, column: 26, scope: !3520)
!3540 = !DILocation(line: 117, column: 19, scope: !3520)
!3541 = !DILocation(line: 0, scope: !3520)
!3542 = !DILocation(line: 118, column: 15, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3520, file: !1064, line: 118, column: 11)
!3544 = !DILocation(line: 118, column: 11, scope: !3520)
!3545 = !DILocation(line: 129, column: 11, scope: !3520)
!3546 = !DILocation(line: 129, column: 18, scope: !3520)
!3547 = !DILocation(line: 130, column: 11, scope: !3520)
!3548 = !DILocation(line: 130, column: 19, scope: !3520)
!3549 = !{!3320, !2317, i64 144}
!3550 = !DILocation(line: 161, column: 7, scope: !3520)
!3551 = !DILocation(line: 163, column: 10, scope: !3509)
!3552 = !DILocation(line: 163, column: 3, scope: !3509)
!3553 = !DILocation(line: 164, column: 1, scope: !3509)
